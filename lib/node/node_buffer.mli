[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_MAX_LENGTH : t -> int [@@js.get "MAX_LENGTH"]

  val set_MAX_LENGTH : t -> int -> unit [@@js.set "MAX_LENGTH"]

  val get_MAX_STRING_LENGTH : t -> int [@@js.get "MAX_STRING_LENGTH"]

  val set_MAX_STRING_LENGTH : t -> int -> unit [@@js.set "MAX_STRING_LENGTH"]
end

module AnonymousInterface1 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> size:int -> Buffer.t [@@js.apply_newable]

  val get_prototype : t -> Buffer.t [@@js.get "prototype"]

  val set_prototype : t -> Buffer.t -> unit [@@js.set "prototype"]
end

module Buffer : sig
  val inspect_max_bytes : int [@@js.global "INSPECT_MAX_BYTES"]

  val kMaxLength : int [@@js.global "kMaxLength"]

  val kStringMaxLength : int [@@js.global "kStringMaxLength"]

  val constants : AnonymousInterface0.t [@@js.global "constants"]

  val buffType : (* FIXME: unknown type 'typeof Buffer' *) any
    [@@js.global "BuffType"]

  module TranscodeEncoding : sig
    type t =
      ([ `ascii [@js "ascii"]
       | `binary [@js "binary"]
       | `latin1 [@js "latin1"]
       | `ucs2 [@js "ucs2"]
       | `utf16le [@js "utf16le"]
       | `utf8 [@js "utf8"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val transcode
    :  source:Uint8Array.t
    -> fromEnc:TranscodeEncoding.t
    -> toEnc:TranscodeEncoding.t
    -> Buffer.t
    [@@js.global "transcode"]

  val slowBuffer : AnonymousInterface1.t [@@js.global "SlowBuffer"]
  (* export { BuffType as Buffer }; *)
end
[@@js.scope Import.buffer]
