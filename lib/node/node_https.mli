[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals
open Node_http
open Node_tls

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type https_Agent = [ `Https_Agent ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and https_AgentOptions = [ `Https_AgentOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and https_RequestOptions =
      ( Http.RequestOptions.t
      , Tls.SecureContextOptions.t
      , anonymous_interface_0 )
      intersection3

    and https_Server = [ `Https_Server ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and https_ServerOptions =
      ( Tls.SecureContextOptions.t
      , Tls.TlsOptions.t
      , Http.ServerOptions.t )
      intersection3
  end
end

open Internal
open AnonymousInterfaces
open Types

module AnonymousInterface0 : sig
  type t = anonymous_interface_0

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
    type t = https_ServerOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module RequestOptions : sig
    type t = https_RequestOptions

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

    val set_maxCachedSessions : t -> int -> unit
      [@@js.set "maxCachedSessions"]

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
