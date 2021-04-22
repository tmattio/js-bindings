[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module UUID : sig
  type t = _UUID

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val asHex : t -> string [@@js.call "asHex"]

  val equals : t -> other:t -> bool [@@js.call "equals"]
end
[@@js.scope "UUID"]

val empty : _UUID [@@js.global "empty"]

val v4 : unit -> _UUID [@@js.global "v4"]

val isUUID : value:string -> bool [@@js.global "isUUID"]

val parse : value:string -> _UUID [@@js.global "parse"]

val generateUuid : unit -> string [@@js.global "generateUuid"]
