[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals
open Node_http
open Node_tls

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_rejectUnauthorized : t -> bool [@@js.get "rejectUnauthorized"]

  val set_rejectUnauthorized : t -> bool -> unit [@@js.set "rejectUnauthorized"]

  val get_servername : t -> string [@@js.get "servername"]

  val set_servername : t -> string -> unit [@@js.set "servername"]
end

module Https : sig
  open Node_tls
  open Node_http

  module ServerOptions : sig
    type t =
      ( Tls.SecureContextOptions.t
      , Tls.TlsOptions.t
      , Http.ServerOptions.t )
      intersection3

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module RequestOptions : sig
    type t =
      ( Http.RequestOptions.t
      , Tls.SecureContextOptions.t
      , AnonymousInterface0.t )
      intersection3

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module AgentOptions : sig
    type t = https_AgentOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_rejectUnauthorized : t -> bool [@@js.get "rejectUnauthorized"]

    val set_rejectUnauthorized : t -> bool -> unit
      [@@js.set "rejectUnauthorized"]

    val get_maxCachedSessions : t -> int [@@js.get "maxCachedSessions"]

    val set_maxCachedSessions : t -> int -> unit [@@js.set "maxCachedSessions"]

    val cast : t -> Http.AgentOptions.t [@@js.cast]

    val cast' : t -> Tls.ConnectionOptions.t [@@js.cast]
  end
  [@@js.scope "AgentOptions"]

  module Agent : sig
    type t = https_Agent

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : ?options:https_AgentOptions -> unit -> t [@@js.create]

    val get_options : t -> https_AgentOptions [@@js.get "options"]

    val set_options : t -> https_AgentOptions -> unit [@@js.set "options"]

    val cast : t -> Http.Agent.t [@@js.cast]
  end
  [@@js.scope "Agent"]

  module Server : sig
    type t = https_Server

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> Http.HttpBase.t [@@js.cast]

    val create : ?requestListener:Http.RequestListener.t -> unit -> t
      [@@js.create]

    val create'
      :  options:https_ServerOptions
      -> ?requestListener:Http.RequestListener.t
      -> unit
      -> t
      [@@js.create]

    val cast : t -> Tls.Server.t [@@js.cast]
  end
  [@@js.scope "Server"]

  val createServer
    :  options:https_ServerOptions
    -> ?requestListener:Http.RequestListener.t
    -> unit
    -> https_Server
    [@@js.global "createServer"]

  val request
    :  url:Node_url.Url.Url.t or_string
    -> ?options:https_RequestOptions
    -> ?callback:(res:Http.IncomingMessage.t -> unit)
    -> unit
    -> Http.ClientRequest.t
    [@@js.global "request"]

  val get
    :  url:Node_url.Url.Url.t or_string
    -> ?options:https_RequestOptions
    -> ?callback:(res:Http.IncomingMessage.t -> unit)
    -> unit
    -> Http.ClientRequest.t
    [@@js.global "get"]

  val globalAgent : https_Agent [@@js.global "globalAgent"]
end
[@@js.scope Import.https]
