[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Url : sig
  module UrlObject : sig
    type t

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
    type t

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
    include module type of struct
      include Url
    end

    val get_query : t -> Node_querystring.Querystring.ParsedUrlQuery.t
      [@@js.get "query"]

    val set_query : t -> Node_querystring.Querystring.ParsedUrlQuery.t -> unit
      [@@js.set "query"]
  end
  [@@js.scope "UrlWithParsedQuery"]

  module UrlWithStringQuery : sig
    include module type of struct
      include Url
    end

    val get_query : t -> string or_null [@@js.get "query"]

    val set_query : t -> string or_null -> unit [@@js.set "query"]
  end
  [@@js.scope "UrlWithStringQuery"]

  module URLFormatOptions : sig
    type t

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

  module URLSearchParams : sig
    type t = (string * string) Iterable.t

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

    val for_each
      :  t
      -> callback:(value:string -> name:string -> search_params:t -> unit)
      -> unit
      [@@js.call "forEach"]

    val get_ : t -> name:string -> string or_null [@@js.call "get"]

    val get_all : t -> name:string -> string list [@@js.call "getAll"]

    val has : t -> name:string -> bool [@@js.call "has"]

    val keys : t -> string IterableIterator.t [@@js.call "keys"]

    val set_ : t -> name:string -> value:string -> unit [@@js.call "set"]

    val sort : t -> unit [@@js.call "sort"]

    val to_string : t -> string [@@js.call "toString"]

    val values : t -> string IterableIterator.t [@@js.call "values"]
  end
  [@@js.scope "URLSearchParams"]

  module URL : sig
    type t

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

    val get_search_params : t -> URLSearchParams.t [@@js.get "searchParams"]

    val get_username : t -> string [@@js.get "username"]

    val set_username : t -> string -> unit [@@js.set "username"]

    val to_string : t -> string [@@js.call "toString"]

    val to_json : t -> string [@@js.call "toJSON"]
  end
  [@@js.scope "URL"]

  val parse : string -> UrlWithStringQuery.t [@@js.global "parse"]

  val parse
    :  url_str:string
    -> parse_query_string:([ `L_b_false ][@js.enum]) or_undefined
    -> ?slashes_denote_host:bool
    -> unit
    -> UrlWithStringQuery.t
    [@@js.global "parse"]

  val parse
    :  url_str:string
    -> parse_query_string:([ `L_b_true ][@js.enum])
    -> ?slashes_denote_host:bool
    -> unit
    -> UrlWithParsedQuery.t
    [@@js.global "parse"]

  val parse
    :  url_str:string
    -> parse_query_string:bool
    -> ?slashes_denote_host:bool
    -> unit
    -> Url.t
    [@@js.global "parse"]

  val format : url:Url.t -> ?options:URLFormatOptions.t -> unit -> string
    [@@js.global "format"]

  val format : url_object:UrlObject.t or_string -> string [@@js.global "format"]

  val resolve : from:string -> to_:string -> string [@@js.global "resolve"]

  val domain_to_ascii : domain:string -> string [@@js.global "domainToASCII"]

  val domain_to_unicode : domain:string -> string
    [@@js.global "domainToUnicode"]

  val file_url_to_path : url:Url.t or_string -> string
    [@@js.global "fileURLToPath"]

  val path_to_file_url : url:string -> Url.t [@@js.global "pathToFileURL"]
end
[@@js.scope Import.url]
