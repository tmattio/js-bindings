module Rpc = Vscode_jsonrpc

let stdout = Node.Process.stdout

let stdin = Node.Process.stdin

let connection =
  Rpc.create_message_connection' ~input_stream:stdout ~output_stream:stdin ()

let notification_type =
  Rpc.NotificationType.create ~method_:"testNotification" ()

let (_ : Rpc.Disposable.t) =
  Rpc.MessageConnection.on_notification'
    connection
    ~type_:notification_type
    ~handler:(fun param -> Node.Console.log param ~params:[] ())

let () = Rpc.MessageConnection.listen connection
