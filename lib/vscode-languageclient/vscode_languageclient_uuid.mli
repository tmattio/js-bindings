[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module UUID : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val as_hex : t -> string [@@js.call "asHex"]

  val equals : t -> other:t -> bool [@@js.call "equals"]
end
[@@js.scope "UUID"]

val empty : UUID.t [@@js.global "empty"]

val v4 : unit -> UUID.t [@@js.global "v4"]

val is_uuid : value:string -> bool [@@js.global "isUUID"]

val parse : value:string -> UUID.t [@@js.global "parse"]

val generate_uuid : unit -> string [@@js.global "generateUuid"]
