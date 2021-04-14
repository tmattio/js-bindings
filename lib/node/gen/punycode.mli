[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type punycode_ucs2 = [ `Punycode_ucs2 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module Punycode : sig
  val decode : string:string -> string [@@js.global "decode"]

  val encode : string:string -> string [@@js.global "encode"]

  val toUnicode : domain:string -> string [@@js.global "toUnicode"]

  val toASCII : domain:string -> string [@@js.global "toASCII"]

  val ucs2 : punycode_ucs2 [@@js.global "ucs2"]

  module Ucs2 : sig
    type t = punycode_ucs2

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val decode : t -> string:string -> float list [@@js.call "decode"]

    val encode : t -> codePoints:float list -> string [@@js.call "encode"]
  end
  [@@js.scope "ucs2"]

  val version : string [@@js.global "version"]
end
[@@js.scope Import.punycode]
