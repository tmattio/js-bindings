(* this method is called when your extension is activated *)
(* your extension is activated the very first time the command is executed *)
let activate (context : Vscode.ExtensionContext.t) =
  (* Use the console to output diagnostic information (console.log) and errors
     (console.error) *)
  (* This line of code will only be executed once when your extension is
     activated *)
  (* Node.Console.Console.log "Congratulations, your extension
     \"helloworld-sample\" is now active!"; *)

  (* The command has been defined in the package.json file *)
  (* Now provide the implementation of the command with registerCommand *)
  (* The commandId parameter must match the command field in package.json *)
  let disposable =
    Vscode.Commands.register_command "extension.helloWorld" (fun _ ->
        (* The code you place here will be executed every time your command is
           executed *)
        (* ... *)
        (* Display a message box to the user *)
        Vscode.Window.show_information_message "Hello World!" ())
  in
  Vscode.ExtensionContext.subscribe context disposable

(* see {{:https://code.visualstudio.com/api/references/vscode-api#Extension}
   activate() *)
let () =
  let open Js_of_ocaml.Js in
  export "activate" (wrap_callback activate)
