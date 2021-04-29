module Dependency = struct
  include Vscode.TreeItem

  let create () =
    Vscode.TreeItem.create
      ~label:(`String "Hello World")
      ~collapsible_state:`None
      ()
end

module Provider = struct
  let get_tree_item dependency = `Value dependency

  let get_children ?element:_ () =
    `Value (Some [ Dependency.create (); Dependency.create () ])

  let create () = Vscode.TreeDataProvider.create ~get_tree_item ~get_children ()
end
