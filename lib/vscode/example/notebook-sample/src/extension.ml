let activate (context : Vscode.ExtensionContext.t) =
  let disposable =
    Vscode_proposed.Notebook.register_notebook_serializer
      ~notebook_type:"mdx-notebook"
      ~provider:(Notebook.Provider.create ())
      ~options:Notebook.Provider.options
      ()
  in
  Vscode.ExtensionContext.subscribe context disposable

let () =
  let open Js_of_ocaml.Js in
  export "activate" (wrap_callback activate)
