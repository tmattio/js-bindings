[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - Map<T1, T2>
  - RAL.MessageBuffer
  - RAL.MessageBufferEncoding
  - Uint8Array
 *)
[@@@js.stop]
module type Missing = sig
  module Map : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
  end
  module RAL : sig
    module MessageBuffer : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module MessageBufferEncoding : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
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
    module Map : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    end
    module RAL : sig
      module MessageBuffer : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module MessageBufferEncoding : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
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
      
    end
    module Types : sig
      open AnonymousInterfaces
      type _AbstractMessageBuffer = [`AbstractMessageBuffer] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import RAL from './ral'; *)
  module[@js.scope "AbstractMessageBuffer"] AbstractMessageBuffer : sig
    type t = _AbstractMessageBuffer
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__encoding: t -> (* FIXME: unknown type *)any [@@js.get "_encoding"]
    val set__encoding: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_encoding"]
    val get__chunks: t -> (* FIXME: unknown type *)any [@@js.get "_chunks"]
    val set__chunks: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_chunks"]
    val get__totalLength: t -> (* FIXME: unknown type *)any [@@js.get "_totalLength"]
    val set__totalLength: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_totalLength"]
    val create: ?encoding:RAL.MessageBufferEncoding.t_0 -> unit -> t [@@js.create]
    val emptyBuffer: t -> Uint8Array.t_0 [@@js.call "emptyBuffer"]
    val fromString: t -> value:string -> encoding:RAL.MessageBufferEncoding.t_0 -> Uint8Array.t_0 [@@js.call "fromString"]
    val toString: t -> value:Uint8Array.t_0 -> encoding:RAL.MessageBufferEncoding.t_0 -> string [@@js.call "toString"]
    val asNative: t -> buffer:Uint8Array.t_0 -> ?length:float -> unit -> Uint8Array.t_0 [@@js.call "asNative"]
    val allocNative: t -> length:float -> Uint8Array.t_0 [@@js.call "allocNative"]
    val get_encoding: t -> RAL.MessageBufferEncoding.t_0 [@@js.get "encoding"]
    val append: t -> chunk:Uint8Array.t_0 or_string -> unit [@@js.call "append"]
    val tryReadHeaders: t -> (string, string) Map.t_2 or_undefined [@@js.call "tryReadHeaders"]
    val tryReadBody: t -> length:float -> Uint8Array.t_0 or_undefined [@@js.call "tryReadBody"]
    val get_numberOfBytes: t -> float [@@js.get "numberOfBytes"]
    val get__read: t -> (* FIXME: unknown type *)any [@@js.get "_read"]
    val set__read: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_read"]
    val cast: t -> RAL.MessageBuffer.t_0 [@@js.cast]
  end
end
