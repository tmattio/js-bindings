[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _AbstractMessageBuffer = [ `AbstractMessageBuffer ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import RAL from './ral'; *)
module AbstractMessageBuffer : sig
  type t = _AbstractMessageBuffer

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__encoding : t -> (* FIXME: unknown type *) any [@@js.get "_encoding"]

  val set__encoding : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_encoding"]

  val get__chunks : t -> (* FIXME: unknown type *) any [@@js.get "_chunks"]

  val set__chunks : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_chunks"]

  val get__totalLength : t -> (* FIXME: unknown type *) any
    [@@js.get "_totalLength"]

  val set__totalLength : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_totalLength"]

  val create : ?encoding:RAL.MessageBufferEncoding.t -> unit -> t [@@js.create]

  val emptyBuffer : t -> Uint8Array.t [@@js.call "emptyBuffer"]

  val fromString
    :  t
    -> value:string
    -> encoding:RAL.MessageBufferEncoding.t
    -> Uint8Array.t
    [@@js.call "fromString"]

  val toString
    :  t
    -> value:Uint8Array.t
    -> encoding:RAL.MessageBufferEncoding.t
    -> string
    [@@js.call "toString"]

  val asNative
    :  t
    -> buffer:Uint8Array.t
    -> ?length:float
    -> unit
    -> Uint8Array.t
    [@@js.call "asNative"]

  val allocNative : t -> length:float -> Uint8Array.t [@@js.call "allocNative"]

  val get_encoding : t -> RAL.MessageBufferEncoding.t [@@js.get "encoding"]

  val append : t -> chunk:Uint8Array.t or_string -> unit [@@js.call "append"]

  val tryReadHeaders : t -> (string, string) Map.t_2 or_undefined
    [@@js.call "tryReadHeaders"]

  val tryReadBody : t -> length:float -> Uint8Array.t or_undefined
    [@@js.call "tryReadBody"]

  val get_numberOfBytes : t -> float [@@js.get "numberOfBytes"]

  val get__read : t -> (* FIXME: unknown type *) any [@@js.get "_read"]

  val set__read : t -> (* FIXME: unknown type *) any -> unit [@@js.set "_read"]

  val cast : t -> RAL.MessageBuffer.t [@@js.cast]
end
[@@js.scope "AbstractMessageBuffer"]
