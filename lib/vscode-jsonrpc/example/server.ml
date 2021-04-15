module Rpc = Vscode_jsonrpc

let stdout = Node.Child_process.ChildProcess.get_stdout child_process

let stdin = Node.Child_process.ChildProcess.get_stdin child_process

let connection =
  Rpc.createMessageConnection
    (Rpc.StreamMessageReader.create stdout)
    (Rpc.StreamMessageWriter.create stdin)

let notification = Rpc.NotificationType.create "testNotification"

let () =
  Rpc.MessageConnection.onNotification notification (fun param ->
      Node.Console.Console.log param)
