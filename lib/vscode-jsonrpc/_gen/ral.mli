[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - ContentTypeDecoder
  - ContentTypeEncoder
  - Disposable
  - Map<T1, T2>
  - Promise<T1>
  - Uint8Array
 *)
[@@@js.stop]
module type Missing = sig
  module ContentTypeDecoder : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ContentTypeEncoder : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Disposable : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Map : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
  end
  module Promise : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module Uint8Array : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module ContentTypeDecoder : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ContentTypeEncoder : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Disposable : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Map : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    end
    module Promise : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module Uint8Array : sig
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
      type anonymous_interface_0 = [`anonymous_interface_0] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_1 = [`anonymous_interface_1] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_2 = [`anonymous_interface_2] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_3 = [`anonymous_interface_3] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
    module Types : sig
      open AnonymousInterfaces
      type _RAL = [`RAL] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _RAL_DuplexStream = _DuplexStream
      and _RAL_ImmediateHandle = _ImmediateHandle
      and _RAL_MessageBuffer = _MessageBuffer
      and _RAL_MessageBufferEncoding = _MessageBufferEncoding
      and _RAL_ReadableStream = _ReadableStream
      and _RAL_TimeoutHandle = _TimeoutHandle
      and _RAL_WritableStream = _WritableStream
      and _DuplexStream = [`_DuplexStream | `_ReadableStream | `_WritableStream] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ImmediateHandle = [`_ImmediateHandle] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _MessageBuffer = [`_MessageBuffer] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _MessageBufferEncoding = ([`L_s0_ascii[@js "ascii"] | `L_s1_utf_8[@js "utf-8"]] [@js.enum])
      and _ReadableStream = [`_ReadableStream] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _TimeoutHandle = [`_TimeoutHandle] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WritableStream = [`_WritableStream] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  module AnonymousInterface0 : sig
    type t = anonymous_interface_0
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_encoder: t -> ContentTypeEncoder.t_0 [@@js.get "encoder"]
    val get_decoder: t -> ContentTypeDecoder.t_0 [@@js.get "decoder"]
  end
  module AnonymousInterface1 : sig
    type t = anonymous_interface_1
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create_: t -> encoding:_RAL_MessageBufferEncoding -> _RAL_MessageBuffer [@@js.call "create"]
  end
  module AnonymousInterface2 : sig
    type t = anonymous_interface_2
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val info: t -> ?message:any -> optionalParams:(any list [@js.variadic]) -> unit [@@js.call "info"]
    val log: t -> ?message:any -> optionalParams:(any list [@js.variadic]) -> unit [@@js.call "log"]
    val warn: t -> ?message:any -> optionalParams:(any list [@js.variadic]) -> unit [@@js.call "warn"]
    val error: t -> ?message:any -> optionalParams:(any list [@js.variadic]) -> unit [@@js.call "error"]
  end
  module AnonymousInterface3 : sig
    type t = anonymous_interface_3
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val setTimeout: t -> callback:(args:(any list [@js.variadic]) -> unit) -> ms:float -> args:(any list [@js.variadic]) -> _RAL_TimeoutHandle [@@js.call "setTimeout"]
    val clearTimeout: t -> handle:_RAL_TimeoutHandle -> unit [@@js.call "clearTimeout"]
    val setImmediate: t -> callback:(args:(any list [@js.variadic]) -> unit) -> args:(any list [@js.variadic]) -> _RAL_ImmediateHandle [@@js.call "setImmediate"]
    val clearImmediate: t -> handle:_RAL_ImmediateHandle -> unit [@@js.call "clearImmediate"]
  end
  (* import type { Disposable } from './disposable'; *)
  (* import type { ContentTypeEncoder, ContentTypeDecoder } from './encoding'; *)
  module[@js.scope "_MessageBuffer"] M_MessageBuffer : sig
    type t = _MessageBuffer
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_encoding: t -> _RAL_MessageBufferEncoding [@@js.get "encoding"]
    val append: t -> chunk:Uint8Array.t_0 or_string -> unit [@@js.call "append"]
    val tryReadHeaders: t -> (string, string) Map.t_2 or_undefined [@@js.call "tryReadHeaders"]
    val tryReadBody: t -> length:float -> Uint8Array.t_0 or_undefined [@@js.call "tryReadBody"]
  end
  module M_MessageBufferEncoding : sig
    type t = _MessageBufferEncoding
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "_ReadableStream"] M_ReadableStream : sig
    type t = _ReadableStream
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val onData: t -> listener:(data:Uint8Array.t_0 -> unit) -> Disposable.t_0 [@@js.call "onData"]
    val onClose: t -> listener:(unit -> unit) -> Disposable.t_0 [@@js.call "onClose"]
    val onError: t -> listener:(error:any -> unit) -> Disposable.t_0 [@@js.call "onError"]
    val onEnd: t -> listener:(unit -> unit) -> Disposable.t_0 [@@js.call "onEnd"]
  end
  module[@js.scope "_WritableStream"] M_WritableStream : sig
    type t = _WritableStream
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val onClose: t -> listener:(unit -> unit) -> Disposable.t_0 [@@js.call "onClose"]
    val onError: t -> listener:(error:any -> unit) -> Disposable.t_0 [@@js.call "onError"]
    val onEnd: t -> listener:(unit -> unit) -> Disposable.t_0 [@@js.call "onEnd"]
    val write: t -> data:Uint8Array.t_0 -> unit Promise.t_1 [@@js.call "write"]
    val write': t -> data:string -> encoding:_MessageBufferEncoding -> unit Promise.t_1 [@@js.call "write"]
    val end_: t -> unit [@@js.call "end"]
  end
  module[@js.scope "_DuplexStream"] M_DuplexStream : sig
    type t = _DuplexStream
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast: t -> _ReadableStream [@@js.cast]
    val cast': t -> _WritableStream [@@js.cast]
  end
  module[@js.scope "_TimeoutHandle"] M_TimeoutHandle : sig
    type t = _TimeoutHandle
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__timerBrand: t -> never or_undefined [@@js.get "_timerBrand"]
    val set__timerBrand: t -> never or_undefined -> unit [@@js.set "_timerBrand"]
  end
  module[@js.scope "_ImmediateHandle"] M_ImmediateHandle : sig
    type t = _ImmediateHandle
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__immediateBrand: t -> never or_undefined [@@js.get "_immediateBrand"]
    val set__immediateBrand: t -> never or_undefined -> unit [@@js.set "_immediateBrand"]
  end
  module[@js.scope "RAL"] RAL : sig
    type t = _RAL
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_applicationJson: t -> anonymous_interface_0 [@@js.get "applicationJson"]
    val get_messageBuffer: t -> anonymous_interface_1 [@@js.get "messageBuffer"]
    val get_console: t -> anonymous_interface_2 [@@js.get "console"]
    val get_timer: t -> anonymous_interface_3 [@@js.get "timer"]
  end
  val rAL: unit -> _RAL [@@js.global "RAL"]
  module[@js.scope "RAL"] RAL : sig
    module MessageBuffer : sig
      type t = _RAL_MessageBuffer
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module MessageBufferEncoding : sig
      type t = _RAL_MessageBufferEncoding
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ReadableStream : sig
      type t = _RAL_ReadableStream
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WritableStream : sig
      type t = _RAL_WritableStream
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DuplexStream : sig
      type t = _RAL_DuplexStream
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TimeoutHandle : sig
      type t = _RAL_TimeoutHandle
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ImmediateHandle : sig
      type t = _RAL_ImmediateHandle
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    val install: ral:_RAL -> unit [@@js.global "install"]
  end
  
end
