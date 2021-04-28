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

  val get_reject_unauthorized : t -> bool [@@js.get "rejectUnauthorized"]

  val set_reject_unauthorized : t -> bool -> unit
    [@@js.set "rejectUnauthorized"]

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
    include module type of struct
      include Http.AgentOptions
    end

    val get_reject_unauthorized : t -> bool [@@js.get "rejectUnauthorized"]

    val set_reject_unauthorized : t -> bool -> unit
      [@@js.set "rejectUnauthorized"]

    val get_max_cached_sessions : t -> int [@@js.get "maxCachedSessions"]

    val set_max_cached_sessions : t -> int -> unit
      [@@js.set "maxCachedSessions"]

    val cast' : t -> Tls.ConnectionOptions.t [@@js.cast]
  end
  [@@js.scope "AgentOptions"]

  module Agent : sig
    include module type of struct
      include Http.Agent
    end

    val create : ?options:AgentOptions.t -> unit -> t [@@js.create]

    val get_options : t -> AgentOptions.t [@@js.get "options"]

    val set_options : t -> AgentOptions.t -> unit [@@js.set "options"]
  end
  [@@js.scope "Agent"]

  module Server : sig
    include module type of struct
      include Http.HttpBase
    end

    include module type of struct
      include Tls.Server
    end

    val create : ?request_listener:Http.RequestListener.t -> unit -> t
      [@@js.create]

    val create'
      :  options:ServerOptions.t
      -> ?request_listener:Http.RequestListener.t
      -> unit
      -> t
      [@@js.create]
  end
  [@@js.scope "Server"]

  val create_server
    :  options:ServerOptions.t
    -> ?request_listener:Http.RequestListener.t
    -> unit
    -> Server.t
    [@@js.global "createServer"]

  val request
    :  url:Node_url.Url.Url.t or_string
    -> ?options:RequestOptions.t
    -> ?callback:(res:Http.IncomingMessage.t -> unit)
    -> unit
    -> Http.ClientRequest.t
    [@@js.global "request"]

  val get
    :  url:Node_url.Url.Url.t or_string
    -> ?options:RequestOptions.t
    -> ?callback:(res:Http.IncomingMessage.t -> unit)
    -> unit
    -> Http.ClientRequest.t
    [@@js.global "get"]

  val global_agent : Agent.t [@@js.global "globalAgent"]
end
[@@js.scope Import.https]
