[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Querystring : sig
  module StringifyOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val encode_uri_component : t -> str:string -> string
      [@@js.call "encodeURIComponent"]
  end
  [@@js.scope "StringifyOptions"]

  module ParseOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_max_keys : t -> int [@@js.get "maxKeys"]

    val set_max_keys : t -> int -> unit [@@js.set "maxKeys"]

    val decode_uri_component : t -> str:string -> string
      [@@js.call "decodeURIComponent"]
  end
  [@@js.scope "ParseOptions"]

  module ParsedUrlQuery : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> string list or_string Dict.t [@@js.cast]
  end

  module ParsedUrlQueryInput : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast
      :  t
      -> (string list, bool list, int list) union3 or_boolean or_string
         or_number
         or_null
         Dict.t
      [@@js.cast]
  end
  [@@js.scope "ParsedUrlQueryInput"]

  val stringify
    :  ?obj:ParsedUrlQueryInput.t
    -> ?sep:string
    -> ?eq:string
    -> ?options:StringifyOptions.t
    -> unit
    -> string
    [@@js.global "stringify"]

  val parse
    :  str:string
    -> ?sep:string
    -> ?eq:string
    -> ?options:ParseOptions.t
    -> unit
    -> ParsedUrlQuery.t
    [@@js.global "parse"]

  val encode
    :  ?obj:ParsedUrlQueryInput.t
    -> ?sep:string
    -> ?eq:string
    -> ?options:StringifyOptions.t
    -> unit
    -> string
    [@@js.global "encode"]

  val decode
    :  str:string
    -> ?sep:string
    -> ?eq:string
    -> ?options:ParseOptions.t
    -> unit
    -> ParsedUrlQuery.t
    [@@js.global "decode"]

  val escape : str:string -> string [@@js.global "escape"]

  val unescape : str:string -> string [@@js.global "unescape"]
end
[@@js.scope Import.querystring]
