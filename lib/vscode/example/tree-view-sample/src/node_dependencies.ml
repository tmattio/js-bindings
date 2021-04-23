open Es2020

module Dependency = struct
  include Vscode.TreeItem

  let icon_path =
    Vscode.IconPath.
      { light =
          `String
            (Node.Path.join
               [ Node.__filename ()
               ; ".."
               ; ".."
               ; "resources"
               ; "light"
               ; "dependency.svg"
               ])
      ; dark =
          `String
            (Node.Path.join
               [ Node.__filename ()
               ; ".."
               ; ".."
               ; "resources"
               ; "dark"
               ; "dependency.svg"
               ])
      }

  let label_str t =
    match label t with
    | `String s ->
      s
    | `Other label ->
      Vscode.TreeItemLabel.label label

  let create ~label ~version ~collapsible_state ?command () =
    let t = Vscode.TreeItem.create (`String label) ~collapsible_state () in
    set_tooltip t (Some (`String (Printf.sprintf "%s-%s" label version)));
    set_context_value t "dependency";
    set_description t (`String version);
    set_icon_path t (`IconPath icon_path);
    let () =
      match command with Some command -> set_command t command | None -> ()
    in
    t
end

module Provider = struct
  let (event_emitter : Dependency.t option Vscode.EventEmitter.t) =
    Vscode.EventEmitter.create ()

  let refresh () = Vscode.EventEmitter.fire event_emitter None

  let path_exists p =
    try
      let _ = Node.Fs.access_sync p () in
      true
    with
    | _ ->
      false

  let get_deps_in_package_json ~workspace_root path =
    if not (path_exists path) then
      []
    else
      let package_json =
        JSON.parse (Node.Fs.read_file_sync path ~options:`utf8 ()) ()
      in
      let to_dep module_name version =
        if
          path_exists
            (Node.Path.join [ workspace_root; "node_modules"; module_name ])
        then
          Dependency.create
            ~label:module_name
            ~version
            ~collapsible_state:`Collapsed
            ()
        else
          let command =
            Vscode.Command.create
              ~title:""
              ~command:"extension.openPackageOnNpm"
              ~arguments:[ module_name |> Ojs.string_to_js |> any_of_js ]
              ()
          in
          Dependency.create
            ~label:module_name
            ~version
            ~collapsible_state:`None
            ~command
            ()
      in
      let package_json_js = any_to_js package_json in
      let deps =
        if Ojs.has_property package_json_js "dependencies" then
          let dependencies =
            Ojs.get_prop_ascii package_json_js "dependencies"
          in
          Object.keys (untyped_object_of_js dependencies)
          |> List.map (fun dep ->
                 to_dep
                   dep
                   (Ojs.string_of_js @@ Ojs.get_prop_ascii dependencies dep))
        else
          []
      in
      let dev_deps =
        if Ojs.has_property package_json_js "devDependencies" then
          let dependencies =
            Ojs.get_prop_ascii package_json_js "devDependencies"
          in
          Object.keys (untyped_object_of_js dependencies)
          |> List.map (fun dep ->
                 to_dep
                   dep
                   (Ojs.string_of_js @@ Ojs.get_prop_ascii dependencies dep))
        else
          []
      in
      List.concat [ deps; dev_deps ]

  let get_tree_item dependency = `Value dependency

  let get_children ?workspace_root ?element () =
    let promise =
      match workspace_root, element with
      | None, _ ->
        let _ =
          Vscode.Window.show_information_message
            "No dependency in empty workspace"
            ()
        in
        Promise.resolve (Some [])
      | Some workspace_root, Some element ->
        Promise.resolve
          (Some
             (get_deps_in_package_json
                ~workspace_root
                (Node.Path.join
                   [ workspace_root
                   ; "node_modules"
                   ; Dependency.label_str element
                   ; "package.json"
                   ])))
      | Some workspace_root, None ->
        let package_json_path =
          Node.Path.join [ workspace_root; "package.json" ]
        in
        if path_exists package_json_path then
          Promise.resolve
            (Some (get_deps_in_package_json ~workspace_root package_json_path))
        else
          let _ =
            Vscode.Window.show_information_message
              "Workspace has no package.json"
              ()
          in
          Promise.resolve (Some [])
    in
    `Promise promise

  let create workspace_root =
    let get_children = get_children ?workspace_root in
    let event = Vscode.EventEmitter.event event_emitter in
    Vscode.TreeDataProvider.create
      ~get_tree_item
      ~get_children
      ~on_did_change_tree_data:event
      ()
end
