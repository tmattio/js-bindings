[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type _RIL = [ `RIL ] intf
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

  val asReadableStream
    :  t
    -> stream:NodeJS.ReadableStream.t
    -> RAL.ReadableStream.t
    [@@js.call "asReadableStream"]

  val asWritableStream
    :  t
    -> stream:NodeJS.WritableStream.t
    -> RAL.WritableStream.t
    [@@js.call "asWritableStream"]
end

(* import RAL from '../common/ral'; *)
module RIL : sig
  type t = _RIL

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_stream : t -> anonymous_interface_0 [@@js.get "stream"]

  val cast : t -> RAL.t [@@js.cast]
end
[@@js.scope "RIL"]

val rIL : unit -> _RIL [@@js.global "RIL"]

module RIL : sig
  val install : unit -> unit [@@js.global "install"]
end
[@@js.scope "RIL"]
(* export = RIL *)
