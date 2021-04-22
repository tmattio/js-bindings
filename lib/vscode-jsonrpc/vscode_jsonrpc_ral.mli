[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_encoder : t -> any [@@js.get "encoder"]

  val get_decoder : t -> any [@@js.get "decoder"]
end

module AnonymousInterface1 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create_ : t -> encoding:_RAL_MessageBufferEncoding -> _RAL_MessageBuffer
    [@@js.call "create"]
end

module AnonymousInterface2 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val info
    :  t
    -> ?message:any
    -> optionalParams:(any list[@js.variadic])
    -> unit
    [@@js.call "info"]

  val log : t -> ?message:any -> optionalParams:(any list[@js.variadic]) -> unit
    [@@js.call "log"]

  val warn
    :  t
    -> ?message:any
    -> optionalParams:(any list[@js.variadic])
    -> unit
    [@@js.call "warn"]

  val error
    :  t
    -> ?message:any
    -> optionalParams:(any list[@js.variadic])
    -> unit
    [@@js.call "error"]
end

module AnonymousInterface3 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val setTimeout
    :  t
    -> callback:(args:(any list[@js.variadic]) -> unit)
    -> ms:int
    -> args:(any list[@js.variadic])
    -> _RAL_TimeoutHandle
    [@@js.call "setTimeout"]

  val clearTimeout : t -> handle:_RAL_TimeoutHandle -> unit
    [@@js.call "clearTimeout"]

  val setImmediate
    :  t
    -> callback:(args:(any list[@js.variadic]) -> unit)
    -> args:(any list[@js.variadic])
    -> _RAL_ImmediateHandle
    [@@js.call "setImmediate"]

  val clearImmediate : t -> handle:_RAL_ImmediateHandle -> unit
    [@@js.call "clearImmediate"]
end

module MessageBuffer : sig
  type t = _MessageBuffer

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_encoding : t -> _RAL_MessageBufferEncoding [@@js.get "encoding"]

  val append : t -> chunk:Uint8Array.t or_string -> unit [@@js.call "append"]

  val tryReadHeaders : t -> (string, string) Map.t or_undefined
    [@@js.call "tryReadHeaders"]

  val tryReadBody : t -> length:int -> Uint8Array.t or_undefined
    [@@js.call "tryReadBody"]
end
[@@js.scope "_MessageBuffer"]

module MessageBufferEncoding : sig
  type t =
    ([ `L_s0_ascii [@js "ascii"]
     | `L_s1_utf_8 [@js "utf-8"]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module ReadableStream : sig
  type t = _ReadableStream

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val onData
    :  t
    -> listener:(data:Uint8Array.t -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onData"]

  val onClose
    :  t
    -> listener:(unit -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onClose"]

  val onError
    :  t
    -> listener:(error:any -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onError"]

  val onEnd
    :  t
    -> listener:(unit -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onEnd"]
end
[@@js.scope "_ReadableStream"]

module WritableStream : sig
  type t = _WritableStream

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val onClose
    :  t
    -> listener:(unit -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onClose"]

  val onError
    :  t
    -> listener:(error:any -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onError"]

  val onEnd
    :  t
    -> listener:(unit -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onEnd"]

  val write : t -> data:Uint8Array.t -> unit Promise.t [@@js.call "write"]

  val write'
    :  t
    -> data:string
    -> encoding:_MessageBufferEncoding
    -> unit Promise.t
    [@@js.call "write"]

  val end_ : t -> unit [@@js.call "end"]
end
[@@js.scope "_WritableStream"]

module DuplexStream : sig
  type t = _DuplexStream

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _ReadableStream [@@js.cast]

  val cast' : t -> _WritableStream [@@js.cast]
end
[@@js.scope "_DuplexStream"]

module TimeoutHandle : sig
  type t = _TimeoutHandle

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__timerBrand : t -> never or_undefined [@@js.get "_timerBrand"]

  val set__timerBrand : t -> never or_undefined -> unit [@@js.set "_timerBrand"]
end
[@@js.scope "_TimeoutHandle"]

module ImmediateHandle : sig
  type t = _ImmediateHandle

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__immediateBrand : t -> never or_undefined [@@js.get "_immediateBrand"]

  val set__immediateBrand : t -> never or_undefined -> unit
    [@@js.set "_immediateBrand"]
end
[@@js.scope "_ImmediateHandle"]

module RAL : sig
  type t = _RAL

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_applicationJson : t -> AnonymousInterface0.t
    [@@js.get "applicationJson"]

  val get_messageBuffer : t -> AnonymousInterface1.t [@@js.get "messageBuffer"]

  val get_console : t -> AnonymousInterface2.t [@@js.get "console"]

  val get_timer : t -> AnonymousInterface3.t [@@js.get "timer"]

  module MessageBuffer : sig
    type t = MessageBuffer.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module MessageBufferEncoding : sig
    type t = MessageBufferEncoding.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module ReadableStream : sig
    type t = ReadableStream.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module WritableStream : sig
    type t = WritableStream.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DuplexStream : sig
    type t = DuplexStream.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module TimeoutHandle : sig
    type t = TimeoutHandle.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module ImmediateHandle : sig
    type t = ImmediateHandle.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val install : ral:_RAL -> unit [@@js.global "install"]
end
[@@js.scope "RAL"]

val ral : unit -> _RAL [@@js.global "RAL"]
