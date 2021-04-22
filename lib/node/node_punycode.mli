[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020



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

    val decode : t -> string:string -> int list [@@js.call "decode"]

    val encode : t -> codePoints:int list -> string [@@js.call "encode"]
  end
  [@@js.scope "ucs2"]

  val version : string [@@js.global "version"]
end
[@@js.scope Import.punycode]
