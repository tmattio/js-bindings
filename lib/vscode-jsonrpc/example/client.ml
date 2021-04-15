module Rpc = Vscode_jsonrpc

let child_process =
  Node.Child_process.spawn
    ~command:"dune"
    ~args:[ "exec"; "lib/vscode-jsonrpc/example/server.exe" ]
    ()

let stdout = Node.Child_process.ChildProcess.get_stdout child_process

let stdin = Node.Child_process.ChildProcess.get_stdin child_process

let connection =
  Rpc.createMessageConnection
    (Rpc.StreamMessageReader.create stdout)
    (Rpc.StreamMessageWriter.create stdin)

let notification = Rpc.NotificationType.create "testNotification"

let () =
  Rpc.MessageConnection.listen connection;
  Rpc.MessageConnection.sendNotification notification "Hello World"
