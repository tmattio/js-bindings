[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020

include module type of struct
  include Vscode_jsonrpc_api
end

module IPCMessageReader : sig
  type t = _IPCMessageReader

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_process : t -> (* FIXME: unknown type *) any [@@js.get "process"]

  val set_process : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "process"]

  val create
    :  process:(Node.Child_process.ChildProcess.t, Node.Process.Process.t) union2
    -> t
    [@@js.create]

  val listen : t -> callback:DataCallback.t -> Disposable.t [@@js.call "listen"]

  val cast : t -> AbstractMessageReader.t [@@js.cast]
end
[@@js.scope "IPCMessageReader"]

module IPCMessageWriter : sig
  type t = _IPCMessageWriter

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_process : t -> (* FIXME: unknown type *) any [@@js.get "process"]

  val set_process : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "process"]

  val get_errorCount : t -> (* FIXME: unknown type *) any
    [@@js.get "errorCount"]

  val set_errorCount : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "errorCount"]

  val create
    :  process:(Node.Child_process.ChildProcess.t, Node.Process.Process.t) union2
    -> t
    [@@js.create]

  val write : t -> msg:Message.t -> unit Promise.t [@@js.call "write"]

  val get_handleError : t -> (* FIXME: unknown type *) any
    [@@js.get "handleError"]

  val set_handleError : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "handleError"]

  val end_ : t -> unit [@@js.call "end"]

  val cast : t -> AbstractMessageWriter.t [@@js.cast]

  val cast' : t -> MessageWriter.t [@@js.cast]
end
[@@js.scope "IPCMessageWriter"]

module SocketMessageReader : sig
  type t = _SocketMessageReader

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create
    :  socket:Node.Net.Socket.t
    -> ?encoding:Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t
    -> unit
    -> t
    [@@js.create]

  val cast : t -> ReadableStreamMessageReader.t [@@js.cast]
end
[@@js.scope "SocketMessageReader"]

module SocketMessageWriter : sig
  type t = _SocketMessageWriter

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_socket : t -> (* FIXME: unknown type *) any [@@js.get "socket"]

  val set_socket : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "socket"]

  val create
    :  socket:Node.Net.Socket.t
    -> ?options:
         ( MessageWriterOptions.t
         , Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t )
         union2
    -> unit
    -> t
    [@@js.create]

  val dispose : t -> unit [@@js.call "dispose"]

  val cast : t -> WriteableStreamMessageWriter.t [@@js.cast]
end
[@@js.scope "SocketMessageWriter"]

module StreamMessageReader : sig
  type t = _StreamMessageReader

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create
    :  readble:Node.ReadableStream.t
    -> ?encoding:
         ( MessageReaderOptions.t
         , Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t )
         union2
    -> unit
    -> t
    [@@js.create]

  val cast : t -> ReadableStreamMessageReader.t [@@js.cast]
end
[@@js.scope "StreamMessageReader"]

module StreamMessageWriter : sig
  type t = _StreamMessageWriter

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create
    :  writable:Node.WritableStream.t
    -> ?options:
         ( MessageWriterOptions.t
         , Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t )
         union2
    -> unit
    -> t
    [@@js.create]

  val cast : t -> WriteableStreamMessageWriter.t [@@js.cast]
end
[@@js.scope "StreamMessageWriter"]

val generateRandomPipeName : unit -> string
  [@@js.global "generateRandomPipeName"]

module PipeTransport : sig
  type t = _PipeTransport

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val onConnected : t -> (MessageReader.t * MessageWriter.t) Promise.t
    [@@js.call "onConnected"]
end
[@@js.scope "PipeTransport"]

val createClientPipeTransport
  :  pipeName:string
  -> ?encoding:Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t
  -> unit
  -> _PipeTransport Promise.t
  [@@js.global "createClientPipeTransport"]

val createServerPipeTransport
  :  pipeName:string
  -> ?encoding:Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t
  -> unit
  -> MessageReader.t * MessageWriter.t
  [@@js.global "createServerPipeTransport"]

module SocketTransport : sig
  type t = _SocketTransport

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val onConnected : t -> (MessageReader.t * MessageWriter.t) Promise.t
    [@@js.call "onConnected"]
end
[@@js.scope "SocketTransport"]

val createClientSocketTransport
  :  port:int
  -> ?encoding:Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t
  -> unit
  -> _SocketTransport Promise.t
  [@@js.global "createClientSocketTransport"]

val createServerSocketTransport
  :  port:int
  -> ?encoding:Vscode_jsonrpc_ral.RAL.MessageBufferEncoding.t
  -> unit
  -> MessageReader.t * MessageWriter.t
  [@@js.global "createServerSocketTransport"]

val createMessageConnection
  :  reader:MessageReader.t
  -> writer:MessageWriter.t
  -> ?logger:Logger.t
  -> ?options:(ConnectionOptions.t, ConnectionStrategy.t) union2
  -> unit
  -> MessageConnection.t
  [@@js.global "createMessageConnection"]

val createMessageConnection
  :  inputStream:Node.ReadableStream.t
  -> outputStream:Node.WritableStream.t
  -> ?logger:Logger.t
  -> ?options:(ConnectionOptions.t, ConnectionStrategy.t) union2
  -> unit
  -> MessageConnection.t
  [@@js.global "createMessageConnection"]
