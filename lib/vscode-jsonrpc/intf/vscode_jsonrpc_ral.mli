[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_1 = [ `anonymous_interface_1 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_2 = [ `anonymous_interface_2 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_3 = [ `anonymous_interface_3 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type _RAL = [ `RAL ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _RAL_DuplexStream = _DuplexStream

    and _RAL_ImmediateHandle = _ImmediateHandle

    and _RAL_MessageBuffer = _MessageBuffer

    and _RAL_MessageBufferEncoding = _MessageBufferEncoding

    and _RAL_ReadableStream = _ReadableStream

    and _RAL_TimeoutHandle = _TimeoutHandle

    and _RAL_WritableStream = _WritableStream

    and _DuplexStream =
      [ `_DuplexStream | `_ReadableStream | `_WritableStream ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ImmediateHandle = [ `_ImmediateHandle ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _MessageBuffer = [ `_MessageBuffer ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _MessageBufferEncoding =
      ([ `L_s0_ascii [@js "ascii"]
       | `L_s1_utf_8 [@js "utf-8"]
       ]
      [@js.enum])

    and _ReadableStream = [ `_ReadableStream ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _TimeoutHandle = [ `_TimeoutHandle ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WritableStream = [ `_WritableStream ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module AnonymousInterface0 : sig
  type t = anonymous_interface_0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_encoder : t -> ContentTypeEncoder.t [@@js.get "encoder"]

  val get_decoder : t -> ContentTypeDecoder.t [@@js.get "decoder"]
end

module AnonymousInterface1 : sig
  type t = anonymous_interface_1

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create_ : t -> encoding:_RAL_MessageBufferEncoding -> _RAL_MessageBuffer
    [@@js.call "create"]
end

module AnonymousInterface2 : sig
  type t = anonymous_interface_2

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
  type t = anonymous_interface_3

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val setTimeout
    :  t
    -> callback:(args:(any list[@js.variadic]) -> unit)
    -> ms:float
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

(* import type { Disposable } from './disposable'; *)
(* import type { ContentTypeEncoder, ContentTypeDecoder } from './encoding'; *)
module M_MessageBuffer : sig
  type t = _MessageBuffer

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_encoding : t -> _RAL_MessageBufferEncoding [@@js.get "encoding"]

  val append : t -> chunk:Uint8Array.t or_string -> unit [@@js.call "append"]

  val tryReadHeaders : t -> (string, string) Map.t_2 or_undefined
    [@@js.call "tryReadHeaders"]

  val tryReadBody : t -> length:float -> Uint8Array.t or_undefined
    [@@js.call "tryReadBody"]
end
[@@js.scope "_MessageBuffer"]

module M_MessageBufferEncoding : sig
  type t = _MessageBufferEncoding

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module M_ReadableStream : sig
  type t = _ReadableStream

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val onData : t -> listener:(data:Uint8Array.t -> unit) -> Disposable.t
    [@@js.call "onData"]

  val onClose : t -> listener:(unit -> unit) -> Disposable.t
    [@@js.call "onClose"]

  val onError : t -> listener:(error:any -> unit) -> Disposable.t
    [@@js.call "onError"]

  val onEnd : t -> listener:(unit -> unit) -> Disposable.t [@@js.call "onEnd"]
end
[@@js.scope "_ReadableStream"]

module M_WritableStream : sig
  type t = _WritableStream

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val onClose : t -> listener:(unit -> unit) -> Disposable.t
    [@@js.call "onClose"]

  val onError : t -> listener:(error:any -> unit) -> Disposable.t
    [@@js.call "onError"]

  val onEnd : t -> listener:(unit -> unit) -> Disposable.t [@@js.call "onEnd"]

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

module M_DuplexStream : sig
  type t = _DuplexStream

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _ReadableStream [@@js.cast]

  val cast' : t -> _WritableStream [@@js.cast]
end
[@@js.scope "_DuplexStream"]

module M_TimeoutHandle : sig
  type t = _TimeoutHandle

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__timerBrand : t -> never or_undefined [@@js.get "_timerBrand"]

  val set__timerBrand : t -> never or_undefined -> unit [@@js.set "_timerBrand"]
end
[@@js.scope "_TimeoutHandle"]

module M_ImmediateHandle : sig
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

  val get_applicationJson : t -> anonymous_interface_0
    [@@js.get "applicationJson"]

  val get_messageBuffer : t -> anonymous_interface_1 [@@js.get "messageBuffer"]

  val get_console : t -> anonymous_interface_2 [@@js.get "console"]

  val get_timer : t -> anonymous_interface_3 [@@js.get "timer"]
end
[@@js.scope "RAL"]

val rAL : unit -> _RAL [@@js.global "RAL"]

module RAL : sig
  module MessageBuffer : sig
    type t = _RAL_MessageBuffer

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module MessageBufferEncoding : sig
    type t = _RAL_MessageBufferEncoding

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module ReadableStream : sig
    type t = _RAL_ReadableStream

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module WritableStream : sig
    type t = _RAL_WritableStream

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DuplexStream : sig
    type t = _RAL_DuplexStream

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module TimeoutHandle : sig
    type t = _RAL_TimeoutHandle

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module ImmediateHandle : sig
    type t = _RAL_ImmediateHandle

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val install : ral:_RAL -> unit [@@js.global "install"]
end
[@@js.scope "RAL"]
(* export = RAL *)
