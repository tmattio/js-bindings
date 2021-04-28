module Rpc = Vscode_jsonrpc

let child_process =
  Node.Child_process.spawn
    ~command:"node"
    ~args:[ "_build/default/lib/vscode-jsonrpc/example/server.bc.js" ]
    ()

let stdout =
  Node.Child_process.ChildProcess.get_stdout child_process |> Option.get

let stdin =
  Node.Child_process.ChildProcess.get_stdin child_process |> Option.get

let connection =
  Rpc.create_message_connection' ~input_stream:stdout ~output_stream:stdin ()

let notification_type =
  Rpc.NotificationType1.create ~method_:"testNotification" ()

let () =
  Rpc.MessageConnection.listen connection;
  Rpc.MessageConnection.send_notification''
    connection
    ~type_:notification_type
    ~p1:"Hello World"
