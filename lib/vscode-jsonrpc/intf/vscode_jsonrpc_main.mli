[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _IPCMessageReader = [ `IPCMessageReader ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _IPCMessageWriter = [ `IPCMessageWriter ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _PipeTransport = [ `PipeTransport ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SocketMessageReader = [ `SocketMessageReader ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SocketMessageWriter = [ `SocketMessageWriter ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SocketTransport = [ `SocketTransport ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _StreamMessageReader = [ `StreamMessageReader ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _StreamMessageWriter = [ `StreamMessageWriter ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import RAL from '../common/ral'; *)
(* import { AbstractMessageReader, DataCallback, AbstractMessageWriter, Message,
   ReadableStreamMessageReader, WriteableStreamMessageWriter,
   MessageWriterOptions, MessageReaderOptions, MessageReader, MessageWriter,
   ConnectionStrategy, ConnectionOptions, MessageConnection, Logger, Disposable
   } from '../common/api'; *)
(* import { ChildProcess } from 'child_process'; *)
(* import { Socket } from 'net'; *)
(* export * from '../common/api'; *)
module IPCMessageReader : sig
  type t = _IPCMessageReader

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_process : t -> (* FIXME: unknown type *) any [@@js.get "process"]

  val set_process : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "process"]

  val create : process:(ChildProcess.t, NodeJS.Process.t) union2 -> t
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

  val create : process:(ChildProcess.t, NodeJS.Process.t) union2 -> t
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
    :  socket:Socket.t
    -> ?encoding:RAL.MessageBufferEncoding.t
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
    :  socket:Socket.t
    -> ?options:(MessageWriterOptions.t, RAL.MessageBufferEncoding.t) union2
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
    :  readble:NodeJS.ReadableStream.t
    -> ?encoding:(MessageReaderOptions.t, RAL.MessageBufferEncoding.t) union2
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
    :  writable:NodeJS.WritableStream.t
    -> ?options:(MessageWriterOptions.t, RAL.MessageBufferEncoding.t) union2
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
  -> ?encoding:RAL.MessageBufferEncoding.t
  -> unit
  -> _PipeTransport Promise.t
  [@@js.global "createClientPipeTransport"]

val createServerPipeTransport
  :  pipeName:string
  -> ?encoding:RAL.MessageBufferEncoding.t
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
  :  port:float
  -> ?encoding:RAL.MessageBufferEncoding.t
  -> unit
  -> _SocketTransport Promise.t
  [@@js.global "createClientSocketTransport"]

val createServerSocketTransport
  :  port:float
  -> ?encoding:RAL.MessageBufferEncoding.t
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
  :  inputStream:NodeJS.ReadableStream.t
  -> outputStream:NodeJS.WritableStream.t
  -> ?logger:Logger.t
  -> ?options:(ConnectionOptions.t, ConnectionStrategy.t) union2
  -> unit
  -> MessageConnection.t
  [@@js.global "createMessageConnection"]
