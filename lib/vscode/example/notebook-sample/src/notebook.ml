open Es2015
open Node
open Vscode_proposed

module Provider = struct
  let deserialize_notebook ~content:_ ~token:_ =
    let notebook_data =
      NotebookData.create
        ~cells:
          [ NotebookCellData.create
              ~kind:`Code
              ~source:"print_endline \"Hello World!\""
              ~language:"ocaml"
              ()
          ]
        ()
    in
    Promise.resolve notebook_data

  let serialize_notebook ~data:_ ~token:_ =
    let string_output = "" in
    Promise.resolve (Buffer.create string_output ())

  let create () =
    NotebookSerializer.create ~deserialize_notebook ~serialize_notebook

  let options =
    let transient_metadata =
      NotebookDocumentContentOptions.TransientMetadata.create
        ~editable:true
        ~custom:true
        ~runnable:true
        ()
    in
    NotebookDocumentContentOptions.create
      ~transient_outputs:true
      ~transient_metadata
      ()
end
