[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_1 = [ `anonymous_interface_1 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type buffer_TranscodeEncoding =
      ([ `ascii [@js "ascii"]
       | `binary [@js "binary"]
       | `latin1 [@js "latin1"]
       | `ucs2 [@js "ucs2"]
       | `utf16le [@js "utf16le"]
       | `utf8 [@js "utf8"]
       ]
      [@js.enum])
  end
end

open Internal
open AnonymousInterfaces
open Types

module AnonymousInterface0 : sig
  type t = anonymous_interface_0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_MAX_LENGTH : t -> float [@@js.get "MAX_LENGTH"]

  val set_MAX_LENGTH : t -> float -> unit [@@js.set "MAX_LENGTH"]

  val get_MAX_STRING_LENGTH : t -> float [@@js.get "MAX_STRING_LENGTH"]

  val set_MAX_STRING_LENGTH : t -> float -> unit [@@js.set "MAX_STRING_LENGTH"]
end

module AnonymousInterface1 : sig
  type t = anonymous_interface_1

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> size:float -> Buffer.t_0 [@@js.apply_newable]

  val get_prototype : t -> Buffer.t_0 [@@js.get "prototype"]

  val set_prototype : t -> Buffer.t_0 -> unit [@@js.set "prototype"]
end

module Node_buffer : sig
  (* export * from 'buffer'; *)
end

module Buffer : sig
  val iNSPECT_MAX_BYTES : float [@@js.global "INSPECT_MAX_BYTES"]

  val kMaxLength : float [@@js.global "kMaxLength"]

  val kStringMaxLength : float [@@js.global "kStringMaxLength"]

  val constants : anonymous_interface_0 [@@js.global "constants"]

  val buffType : (* FIXME: unknown type 'typeof Buffer' *) any
    [@@js.global "BuffType"]

  module TranscodeEncoding : sig
    type t = buffer_TranscodeEncoding

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val transcode
    :  source:Uint8Array.t
    -> fromEnc:buffer_TranscodeEncoding
    -> toEnc:buffer_TranscodeEncoding
    -> Buffer.t_0
    [@@js.global "transcode"]

  val slowBuffer : anonymous_interface_1 [@@js.global "SlowBuffer"]
  (* export { BuffType as Buffer }; *)
end
[@@js.scope "buffer"]
