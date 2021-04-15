[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - AbstractMessageReader
  - AbstractMessageWriter
  - ChildProcess
  - ConnectionOptions
  - ConnectionStrategy
  - DataCallback
  - Disposable
  - Logger
  - Message
  - MessageConnection
  - MessageReader
  - MessageReaderOptions
  - MessageWriter
  - MessageWriterOptions
  - NodeJS.Process
  - NodeJS.ReadableStream
  - NodeJS.WritableStream
  - Promise<T1>
  - RAL.MessageBufferEncoding
  - ReadableStreamMessageReader
  - Socket
  - WriteableStreamMessageWriter
 *)
[@@@js.stop]
module type Missing = sig
  module AbstractMessageReader : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module AbstractMessageWriter : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ChildProcess : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ConnectionOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ConnectionStrategy : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module DataCallback : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Disposable : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Logger : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Message : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module MessageConnection : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module MessageReader : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module MessageReaderOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module MessageWriter : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module MessageWriterOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module NodeJS : sig
    module Process : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ReadableStream : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WritableStream : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module Promise : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module RAL : sig
    module MessageBufferEncoding : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module ReadableStreamMessageReader : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Socket : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module WriteableStreamMessageWriter : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module AbstractMessageReader : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module AbstractMessageWriter : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ChildProcess : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ConnectionOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ConnectionStrategy : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DataCallback : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Disposable : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Logger : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Message : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module MessageConnection : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module MessageReader : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module MessageReaderOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module MessageWriter : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module MessageWriterOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module NodeJS : sig
      module Process : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module ReadableStream : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module WritableStream : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
    end
    module Promise : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module RAL : sig
      module MessageBufferEncoding : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
    end
    module ReadableStreamMessageReader : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Socket : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WriteableStreamMessageWriter : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
]
module Make (M: Missing) : sig
  open M
  module Internal : sig
    module AnonymousInterfaces : sig
      
    end
    module Types : sig
      open AnonymousInterfaces
      type _IPCMessageReader = [`IPCMessageReader] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _IPCMessageWriter = [`IPCMessageWriter] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _PipeTransport = [`PipeTransport] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SocketMessageReader = [`SocketMessageReader] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SocketMessageWriter = [`SocketMessageWriter] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SocketTransport = [`SocketTransport] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _StreamMessageReader = [`StreamMessageReader] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _StreamMessageWriter = [`StreamMessageWriter] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import RAL from '../common/ral'; *)
  (* import { AbstractMessageReader, DataCallback, AbstractMessageWriter, Message, ReadableStreamMessageReader, WriteableStreamMessageWriter, MessageWriterOptions, MessageReaderOptions, MessageReader, MessageWriter, ConnectionStrategy, ConnectionOptions, MessageConnection, Logger, Disposable } from '../common/api'; *)
  (* import { ChildProcess } from 'child_process'; *)
  (* import { Socket } from 'net'; *)
  (* export * from '../common/api'; *)
  module[@js.scope "IPCMessageReader"] IPCMessageReader : sig
    type t = _IPCMessageReader
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_process: t -> (* FIXME: unknown type *)any [@@js.get "process"]
    val set_process: t -> (* FIXME: unknown type *)any -> unit [@@js.set "process"]
    val create: process:(ChildProcess.t_0, NodeJS.Process.t_0) union2 -> t [@@js.create]
    val listen: t -> callback:DataCallback.t_0 -> Disposable.t_0 [@@js.call "listen"]
    val cast: t -> AbstractMessageReader.t_0 [@@js.cast]
  end
  module[@js.scope "IPCMessageWriter"] IPCMessageWriter : sig
    type t = _IPCMessageWriter
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_process: t -> (* FIXME: unknown type *)any [@@js.get "process"]
    val set_process: t -> (* FIXME: unknown type *)any -> unit [@@js.set "process"]
    val get_errorCount: t -> (* FIXME: unknown type *)any [@@js.get "errorCount"]
    val set_errorCount: t -> (* FIXME: unknown type *)any -> unit [@@js.set "errorCount"]
    val create: process:(ChildProcess.t_0, NodeJS.Process.t_0) union2 -> t [@@js.create]
    val write: t -> msg:Message.t_0 -> unit Promise.t_1 [@@js.call "write"]
    val get_handleError: t -> (* FIXME: unknown type *)any [@@js.get "handleError"]
    val set_handleError: t -> (* FIXME: unknown type *)any -> unit [@@js.set "handleError"]
    val end_: t -> unit [@@js.call "end"]
    val cast: t -> AbstractMessageWriter.t_0 [@@js.cast]
    val cast': t -> MessageWriter.t_0 [@@js.cast]
  end
  module[@js.scope "SocketMessageReader"] SocketMessageReader : sig
    type t = _SocketMessageReader
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: socket:Socket.t_0 -> ?encoding:RAL.MessageBufferEncoding.t_0 -> unit -> t [@@js.create]
    val cast: t -> ReadableStreamMessageReader.t_0 [@@js.cast]
  end
  module[@js.scope "SocketMessageWriter"] SocketMessageWriter : sig
    type t = _SocketMessageWriter
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_socket: t -> (* FIXME: unknown type *)any [@@js.get "socket"]
    val set_socket: t -> (* FIXME: unknown type *)any -> unit [@@js.set "socket"]
    val create: socket:Socket.t_0 -> ?options:(MessageWriterOptions.t_0, RAL.MessageBufferEncoding.t_0) union2 -> unit -> t [@@js.create]
    val dispose: t -> unit [@@js.call "dispose"]
    val cast: t -> WriteableStreamMessageWriter.t_0 [@@js.cast]
  end
  module[@js.scope "StreamMessageReader"] StreamMessageReader : sig
    type t = _StreamMessageReader
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: readble:NodeJS.ReadableStream.t_0 -> ?encoding:(MessageReaderOptions.t_0, RAL.MessageBufferEncoding.t_0) union2 -> unit -> t [@@js.create]
    val cast: t -> ReadableStreamMessageReader.t_0 [@@js.cast]
  end
  module[@js.scope "StreamMessageWriter"] StreamMessageWriter : sig
    type t = _StreamMessageWriter
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: writable:NodeJS.WritableStream.t_0 -> ?options:(MessageWriterOptions.t_0, RAL.MessageBufferEncoding.t_0) union2 -> unit -> t [@@js.create]
    val cast: t -> WriteableStreamMessageWriter.t_0 [@@js.cast]
  end
  val generateRandomPipeName: unit -> string [@@js.global "generateRandomPipeName"]
  module[@js.scope "PipeTransport"] PipeTransport : sig
    type t = _PipeTransport
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val onConnected: t -> (MessageReader.t_0 * MessageWriter.t_0) Promise.t_1 [@@js.call "onConnected"]
  end
  val createClientPipeTransport: pipeName:string -> ?encoding:RAL.MessageBufferEncoding.t_0 -> unit -> _PipeTransport Promise.t_1 [@@js.global "createClientPipeTransport"]
  val createServerPipeTransport: pipeName:string -> ?encoding:RAL.MessageBufferEncoding.t_0 -> unit -> (MessageReader.t_0 * MessageWriter.t_0) [@@js.global "createServerPipeTransport"]
  module[@js.scope "SocketTransport"] SocketTransport : sig
    type t = _SocketTransport
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val onConnected: t -> (MessageReader.t_0 * MessageWriter.t_0) Promise.t_1 [@@js.call "onConnected"]
  end
  val createClientSocketTransport: port:float -> ?encoding:RAL.MessageBufferEncoding.t_0 -> unit -> _SocketTransport Promise.t_1 [@@js.global "createClientSocketTransport"]
  val createServerSocketTransport: port:float -> ?encoding:RAL.MessageBufferEncoding.t_0 -> unit -> (MessageReader.t_0 * MessageWriter.t_0) [@@js.global "createServerSocketTransport"]
  val createMessageConnection: reader:MessageReader.t_0 -> writer:MessageWriter.t_0 -> ?logger:Logger.t_0 -> ?options:(ConnectionOptions.t_0, ConnectionStrategy.t_0) union2 -> unit -> MessageConnection.t_0 [@@js.global "createMessageConnection"]
  val createMessageConnection: inputStream:NodeJS.ReadableStream.t_0 -> outputStream:NodeJS.WritableStream.t_0 -> ?logger:Logger.t_0 -> ?options:(ConnectionOptions.t_0, ConnectionStrategy.t_0) union2 -> unit -> MessageConnection.t_0 [@@js.global "createMessageConnection"]
end
