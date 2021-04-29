open Es2020

let activate (context : Vscode.ExtensionContext.t) =
  (* DEBUG *)
  let tree_provider = Tree.Provider.create () in
  let disposable =
    Vscode.Window.register_tree_data_provider "tree" tree_provider
  in
  Vscode.ExtensionContext.subscribe context disposable;
  (* / *)
  let node_dependencies_provider =
    Node_dependencies.Provider.create Vscode.Workspace.root_path
  in
  let disposable =
    Vscode.Window.register_tree_data_provider
      "nodeDependencies"
      node_dependencies_provider
  in
  Vscode.ExtensionContext.subscribe context disposable;
  let disposable =
    Vscode.Commands.register_command "nodeDependencies.refreshEntry" (fun _ ->
        Node_dependencies.Provider.refresh ())
  in
  Vscode.ExtensionContext.subscribe context disposable;
  let disposable =
    Vscode.Commands.register_command "extension.openPackageOnNpm" (fun args ->
        let module_name = List.hd args in
        Vscode.Commands.execute_command
          "vscde.open"
          [ Vscode.Uri.parse
              (Printf.sprintf
                 "https://www.npmjs.com/package/%s"
                 (module_name |> any_to_js |> Ojs.string_of_js))
              ()
            |> Vscode.Uri.t_to_js
            |> any_of_js
          ])
  in
  Vscode.ExtensionContext.subscribe context disposable;
  let disposable =
    Vscode.Commands.register_command "nodeDependencies.addEntry" (fun _ ->
        Vscode.Window.show_information_message
          "Successfully called add entry."
          ())
  in
  Vscode.ExtensionContext.subscribe context disposable;
  let disposable =
    Vscode.Commands.register_command "nodeDependencies.editEntry" (fun args ->
        let dependency =
          List.hd args |> any_to_js |> Node_dependencies.Dependency.t_of_js
        in
        let label = Node_dependencies.Dependency.label_str dependency in
        Vscode.Window.show_information_message
          (Printf.sprintf "Successfully called edit entry on %s." label)
          ())
  in
  Vscode.ExtensionContext.subscribe context disposable;
  let disposable =
    Vscode.Commands.register_command "nodeDependencies.deleteEntry" (fun args ->
        let dependency =
          List.hd args |> any_to_js |> Node_dependencies.Dependency.t_of_js
        in
        let label = Node_dependencies.Dependency.label_str dependency in
        Vscode.Window.show_information_message
          (Printf.sprintf "Successfully called delete entry on %s." label)
          ())
  in
  Vscode.ExtensionContext.subscribe context disposable

(* see {{:https://code.visualstudio.com/api/references/vscode-api#Extension}
   activate() *)
let () =
  let open Js_of_ocaml.Js in
  export "activate" (wrap_callback activate)
