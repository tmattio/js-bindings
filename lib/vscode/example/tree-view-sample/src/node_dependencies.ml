module Dependency = struct
  include Vscode.TreeItem

  let create ~label ~version ~collapsible_state ?command () =
    let t = Vscode.TreeItem.create (`String label) ~collapsible_state () in
    set_tooltip t (Printf.sprintf "%s-%s" label version);
    set_description t version

  let icon_path =
    Vscode.IconPath.
      { light =
          `String
            (Node.join
               [ Node.__filename ()
               ; ".."
               ; ".."
               ; "resources"
               ; "light"
               ; "dependency.svg"
               ])
      ; dark =
          `String
            (Node.join
               [ Node.__filename ()
               ; ".."
               ; ".."
               ; "resources"
               ; "dark"
               ; "dependency.svg"
               ])
      }

  let context_value = "dependency"
end

module Provider = struct
  let refresh t = failwith "TODO"

  let path_exists p =
    try
      let _ = Node.Fs.accessSync p in
      true
    with
    | _ ->
      false

  let get_tree_item dependency = dependency

  let get_children ?workspace_root ?element =
    match workspace_root, element with
    | None, _ ->
      Vscode.Window.show_information_message
        "No dependency in empty workspace"
        Promise.resolve
        []
    | Some workspace_root, Some element ->
      Promise.resolve
      @@ get_deps_in_package_json
           (Node.path.join
              [ workspace_root
              ; "node_modules"
              ; Dependency.label element
              ; "package.json"
              ])
    | Some workspace_root, None ->
      let package_json_path =
        Node.Path.join [ workspace_root; "package.json" ]
      in
      if path_exists package_json_path then
        Promise.resolve @@ get_deps_in_package_json package_json_path
      else
        Vscode.Window.show_information_message
          "Workspace has no package.json"
          Promise.resolve
          []

  let create workspace_root =
    let get_children = get_children ?workspace_root in
    Vscode.TreeDataProvider.create ~get_tree_item ~get_children ()
end
