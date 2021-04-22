[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Url : sig
  module UrlObject : sig
    type t = url_UrlObject

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_auth : t -> string or_null [@@js.get "auth"]

    val set_auth : t -> string or_null -> unit [@@js.set "auth"]

    val get_hash : t -> string or_null [@@js.get "hash"]

    val set_hash : t -> string or_null -> unit [@@js.set "hash"]

    val get_host : t -> string or_null [@@js.get "host"]

    val set_host : t -> string or_null -> unit [@@js.set "host"]

    val get_hostname : t -> string or_null [@@js.get "hostname"]

    val set_hostname : t -> string or_null -> unit [@@js.set "hostname"]

    val get_href : t -> string or_null [@@js.get "href"]

    val set_href : t -> string or_null -> unit [@@js.set "href"]

    val get_pathname : t -> string or_null [@@js.get "pathname"]

    val set_pathname : t -> string or_null -> unit [@@js.set "pathname"]

    val get_protocol : t -> string or_null [@@js.get "protocol"]

    val set_protocol : t -> string or_null -> unit [@@js.set "protocol"]

    val get_search : t -> string or_null [@@js.get "search"]

    val set_search : t -> string or_null -> unit [@@js.set "search"]

    val get_slashes : t -> bool or_null [@@js.get "slashes"]

    val set_slashes : t -> bool or_null -> unit [@@js.set "slashes"]

    val get_port : t -> string or_number or_null [@@js.get "port"]

    val set_port : t -> string or_number or_null -> unit [@@js.set "port"]

    val get_query
      :  t
      -> Node_querystring.Querystring.ParsedUrlQueryInput.t or_string or_null
      [@@js.get "query"]

    val set_query
      :  t
      -> Node_querystring.Querystring.ParsedUrlQueryInput.t or_string or_null
      -> unit
      [@@js.set "query"]
  end
  [@@js.scope "UrlObject"]

  module Url : sig
    type t = url_Url

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_auth : t -> string or_null [@@js.get "auth"]

    val set_auth : t -> string or_null -> unit [@@js.set "auth"]

    val get_hash : t -> string or_null [@@js.get "hash"]

    val set_hash : t -> string or_null -> unit [@@js.set "hash"]

    val get_host : t -> string or_null [@@js.get "host"]

    val set_host : t -> string or_null -> unit [@@js.set "host"]

    val get_hostname : t -> string or_null [@@js.get "hostname"]

    val set_hostname : t -> string or_null -> unit [@@js.set "hostname"]

    val get_href : t -> string [@@js.get "href"]

    val set_href : t -> string -> unit [@@js.set "href"]

    val get_path : t -> string or_null [@@js.get "path"]

    val set_path : t -> string or_null -> unit [@@js.set "path"]

    val get_pathname : t -> string or_null [@@js.get "pathname"]

    val set_pathname : t -> string or_null -> unit [@@js.set "pathname"]

    val get_protocol : t -> string or_null [@@js.get "protocol"]

    val set_protocol : t -> string or_null -> unit [@@js.set "protocol"]

    val get_search : t -> string or_null [@@js.get "search"]

    val set_search : t -> string or_null -> unit [@@js.set "search"]

    val get_slashes : t -> bool or_null [@@js.get "slashes"]

    val set_slashes : t -> bool or_null -> unit [@@js.set "slashes"]

    val get_port : t -> string or_null [@@js.get "port"]

    val set_port : t -> string or_null -> unit [@@js.set "port"]

    val get_query
      :  t
      -> Node_querystring.Querystring.ParsedUrlQuery.t or_string or_null
      [@@js.get "query"]

    val set_query
      :  t
      -> Node_querystring.Querystring.ParsedUrlQuery.t or_string or_null
      -> unit
      [@@js.set "query"]
  end
  [@@js.scope "Url"]

  module UrlWithParsedQuery : sig
    type t = url_UrlWithParsedQuery

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_query : t -> Node_querystring.Querystring.ParsedUrlQuery.t
      [@@js.get "query"]

    val set_query : t -> Node_querystring.Querystring.ParsedUrlQuery.t -> unit
      [@@js.set "query"]

    val cast : t -> url_Url [@@js.cast]
  end
  [@@js.scope "UrlWithParsedQuery"]

  module UrlWithStringQuery : sig
    type t = url_UrlWithStringQuery

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_query : t -> string or_null [@@js.get "query"]

    val set_query : t -> string or_null -> unit [@@js.set "query"]

    val cast : t -> url_Url [@@js.cast]
  end
  [@@js.scope "UrlWithStringQuery"]

  val parse : urlStr:string -> url_UrlWithStringQuery [@@js.global "parse"]

  val parse
    :  urlStr:string
    -> parseQueryString:([ `L_b_false ][@js.enum]) or_undefined
    -> ?slashesDenoteHost:bool
    -> unit
    -> url_UrlWithStringQuery
    [@@js.global "parse"]

  val parse
    :  urlStr:string
    -> parseQueryString:([ `L_b_true ][@js.enum])
    -> ?slashesDenoteHost:bool
    -> unit
    -> url_UrlWithParsedQuery
    [@@js.global "parse"]

  val parse
    :  urlStr:string
    -> parseQueryString:bool
    -> ?slashesDenoteHost:bool
    -> unit
    -> url_Url
    [@@js.global "parse"]

  val format : uRL:url_URL -> ?options:url_URLFormatOptions -> unit -> string
    [@@js.global "format"]

  val format : urlObject:url_UrlObject or_string -> string
    [@@js.global "format"]

  val resolve : from:string -> to_:string -> string [@@js.global "resolve"]

  val domainToASCII : domain:string -> string [@@js.global "domainToASCII"]

  val domainToUnicode : domain:string -> string [@@js.global "domainToUnicode"]

  val fileURLToPath : url:url_URL or_string -> string
    [@@js.global "fileURLToPath"]

  val pathToFileURL : url:string -> url_URL [@@js.global "pathToFileURL"]

  module URLFormatOptions : sig
    type t = url_URLFormatOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_auth : t -> bool [@@js.get "auth"]

    val set_auth : t -> bool -> unit [@@js.set "auth"]

    val get_fragment : t -> bool [@@js.get "fragment"]

    val set_fragment : t -> bool -> unit [@@js.set "fragment"]

    val get_search : t -> bool [@@js.get "search"]

    val set_search : t -> bool -> unit [@@js.set "search"]

    val get_unicode : t -> bool [@@js.get "unicode"]

    val set_unicode : t -> bool -> unit [@@js.set "unicode"]
  end
  [@@js.scope "URLFormatOptions"]

  module URL : sig
    type t = url_URL

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : input:string -> ?base:t or_string -> unit -> t [@@js.create]

    val get_hash : t -> string [@@js.get "hash"]

    val set_hash : t -> string -> unit [@@js.set "hash"]

    val get_host : t -> string [@@js.get "host"]

    val set_host : t -> string -> unit [@@js.set "host"]

    val get_hostname : t -> string [@@js.get "hostname"]

    val set_hostname : t -> string -> unit [@@js.set "hostname"]

    val get_href : t -> string [@@js.get "href"]

    val set_href : t -> string -> unit [@@js.set "href"]

    val get_origin : t -> string [@@js.get "origin"]

    val get_password : t -> string [@@js.get "password"]

    val set_password : t -> string -> unit [@@js.set "password"]

    val get_pathname : t -> string [@@js.get "pathname"]

    val set_pathname : t -> string -> unit [@@js.set "pathname"]

    val get_port : t -> string [@@js.get "port"]

    val set_port : t -> string -> unit [@@js.set "port"]

    val get_protocol : t -> string [@@js.get "protocol"]

    val set_protocol : t -> string -> unit [@@js.set "protocol"]

    val get_search : t -> string [@@js.get "search"]

    val set_search : t -> string -> unit [@@js.set "search"]

    val get_searchParams : t -> url_URLSearchParams [@@js.get "searchParams"]

    val get_username : t -> string [@@js.get "username"]

    val set_username : t -> string -> unit [@@js.set "username"]

    val toString : t -> string [@@js.call "toString"]

    val toJSON : t -> string [@@js.call "toJSON"]
  end
  [@@js.scope "URL"]

  module URLSearchParams : sig
    type t = url_URLSearchParams

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create
      :  ?init:
           ( t
           , (string * string) Iterable.t
           , string list or_string Dict.t
           , (string * string) list )
           union4
           or_string
      -> unit
      -> t
      [@@js.create]

    val append : t -> name:string -> value:string -> unit [@@js.call "append"]

    val delete : t -> name:string -> unit [@@js.call "delete"]

    val entries : t -> (string * string) IterableIterator.t
      [@@js.call "entries"]

    val forEach
      :  t
      -> callback:(value:string -> name:string -> searchParams:t -> unit)
      -> unit
      [@@js.call "forEach"]

    val get_ : t -> name:string -> string or_null [@@js.call "get"]

    val getAll : t -> name:string -> string list [@@js.call "getAll"]

    val has : t -> name:string -> bool [@@js.call "has"]

    val keys : t -> string IterableIterator.t [@@js.call "keys"]

    val set_ : t -> name:string -> value:string -> unit [@@js.call "set"]

    val sort : t -> unit [@@js.call "sort"]

    val toString : t -> string [@@js.call "toString"]

    val values : t -> string IterableIterator.t [@@js.call "values"]

    val cast : t -> (string * string) Iterable.t [@@js.cast]
  end
  [@@js.scope "URLSearchParams"]
end
[@@js.scope Import.url]
