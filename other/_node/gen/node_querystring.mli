[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type querystring_ParseOptions = [ `Querystring_ParseOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and querystring_ParsedUrlQuery = [ `Querystring_ParsedUrlQuery ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and querystring_ParsedUrlQueryInput =
      [ `Querystring_ParsedUrlQueryInput ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and querystring_StringifyOptions = [ `Querystring_StringifyOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module Node_querystring : sig
  (* export * from 'querystring'; *)
end

module Querystring : sig
  module StringifyOptions : sig
    type t = querystring_StringifyOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val encodeURIComponent : t -> str:string -> string
      [@@js.call "encodeURIComponent"]
  end
  [@@js.scope "StringifyOptions"]

  module ParseOptions : sig
    type t = querystring_ParseOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_maxKeys : t -> float [@@js.get "maxKeys"]

    val set_maxKeys : t -> float -> unit [@@js.set "maxKeys"]

    val decodeURIComponent : t -> str:string -> string
      [@@js.call "decodeURIComponent"]
  end
  [@@js.scope "ParseOptions"]

  module ParsedUrlQuery : sig
    type t = querystring_ParsedUrlQuery

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> string list or_string NodeJS.Dict.t_1 [@@js.cast]
  end
  [@@js.scope "ParsedUrlQuery"]

  module ParsedUrlQueryInput : sig
    type t = querystring_ParsedUrlQueryInput

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast
      :  t
      -> (string list, bool list, float list) union3 or_boolean or_string
         or_number
         or_null
         NodeJS.Dict.t_1
      [@@js.cast]
  end
  [@@js.scope "ParsedUrlQueryInput"]

  val stringify
    :  ?obj:querystring_ParsedUrlQueryInput
    -> ?sep:string
    -> ?eq:string
    -> ?options:querystring_StringifyOptions
    -> unit
    -> string
    [@@js.global "stringify"]

  val parse
    :  str:string
    -> ?sep:string
    -> ?eq:string
    -> ?options:querystring_ParseOptions
    -> unit
    -> querystring_ParsedUrlQuery
    [@@js.global "parse"]

  val encode
    :  ?obj:querystring_ParsedUrlQueryInput
    -> ?sep:string
    -> ?eq:string
    -> ?options:querystring_StringifyOptions
    -> unit
    -> string
    [@@js.global "encode"]

  val decode
    :  str:string
    -> ?sep:string
    -> ?eq:string
    -> ?options:querystring_ParseOptions
    -> unit
    -> querystring_ParsedUrlQuery
    [@@js.global "decode"]

  val escape : str:string -> string [@@js.global "escape"]

  val unescape : str:string -> string [@@js.global "unescape"]
end
[@@js.scope "querystring"]
