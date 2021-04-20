let activate (context : Vscode.ExtensionContext.t) =
  let node_dependencies_provider =
    Node_dependencies.Provider.create Vscode.Workspace.root_path
  in
  let disposable =
    Vscode.Window.register_tree_data_provider
      "nodeDependencies"
      tree_data_provider
  in
  Vscode.ExtensionContext.subscribe extension ~disposable;
  Vscode.Commands.register_command "nodeDependencies.refreshEntries" (fun _ ->
      Node_dependencies.Provider.refresh node_dependencies_provider);
  Vscode.Commands.register_command
    "extension.openPackageOnNpm"
    (fun [ moduleName ] ->
      Vscode.Commands.execute_command
        "vscde.open"
        [ Vscode.Uri.parse
            (Printf.sprintf "https://www.npmjs.com/package/%s" moduleName)
        ]);
  Vscode.Commands.register_command "nodeDependencies.addEntry" (fun _ ->
      Vscode.Window.show_information_message "Successfully called add entry.");
  Vscode.Commands.register_command
    "nodeDependencies.editEntry"
    (fun [ dependency ] ->
      let label = Node_dependencies.Dependency.label dependency in
      Vscode.Window.show_information_message
        (Printf.sprintf "Successfully called edit entry on %s." label));
  Vscode.Commands.register_command
    "nodeDependencies.deleteEntry"
    (fun [ dependency ] ->
      let label = Node_dependencies.Dependency.label dependency in
      Vscode.Window.show_information_message
        (Printf.sprintf "Successfully called delete entry on %s." label))

(* see {{:https://code.visualstudio.com/api/references/vscode-api#Extension}
   activate() *)
let () =
  let open Js_of_ocaml.Js in
  export "activate" (wrap_callback activate)
