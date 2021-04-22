[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get : t -> int -> string or_undefined [@@js.index_get]

  val set : t -> int -> string or_undefined -> unit [@@js.index_set]

  val get' : t -> string -> string or_undefined [@@js.index_get]

  val set' : t -> string -> string or_undefined -> unit [@@js.index_set]
end

module Http : sig
  open Node_stream

  module IncomingHttpHeaders : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_accept : t -> string [@@js.get "accept"]

    val set_accept : t -> string -> unit [@@js.set "accept"]

    val get_accept_language : t -> string [@@js.get "accept-language"]

    val set_accept_language : t -> string -> unit [@@js.set "accept-language"]

    val get_accept_patch : t -> string [@@js.get "accept-patch"]

    val set_accept_patch : t -> string -> unit [@@js.set "accept-patch"]

    val get_accept_ranges : t -> string [@@js.get "accept-ranges"]

    val set_accept_ranges : t -> string -> unit [@@js.set "accept-ranges"]

    val get_access_control_allow_credentials : t -> string
      [@@js.get "access-control-allow-credentials"]

    val set_access_control_allow_credentials : t -> string -> unit
      [@@js.set "access-control-allow-credentials"]

    val get_access_control_allow_headers : t -> string
      [@@js.get "access-control-allow-headers"]

    val set_access_control_allow_headers : t -> string -> unit
      [@@js.set "access-control-allow-headers"]

    val get_access_control_allow_methods : t -> string
      [@@js.get "access-control-allow-methods"]

    val set_access_control_allow_methods : t -> string -> unit
      [@@js.set "access-control-allow-methods"]

    val get_access_control_allow_origin : t -> string
      [@@js.get "access-control-allow-origin"]

    val set_access_control_allow_origin : t -> string -> unit
      [@@js.set "access-control-allow-origin"]

    val get_access_control_expose_headers : t -> string
      [@@js.get "access-control-expose-headers"]

    val set_access_control_expose_headers : t -> string -> unit
      [@@js.set "access-control-expose-headers"]

    val get_access_control_max_age : t -> string
      [@@js.get "access-control-max-age"]

    val set_access_control_max_age : t -> string -> unit
      [@@js.set "access-control-max-age"]

    val get_access_control_request_headers : t -> string
      [@@js.get "access-control-request-headers"]

    val set_access_control_request_headers : t -> string -> unit
      [@@js.set "access-control-request-headers"]

    val get_access_control_request_method : t -> string
      [@@js.get "access-control-request-method"]

    val set_access_control_request_method : t -> string -> unit
      [@@js.set "access-control-request-method"]

    val get_age : t -> string [@@js.get "age"]

    val set_age : t -> string -> unit [@@js.set "age"]

    val get_allow : t -> string [@@js.get "allow"]

    val set_allow : t -> string -> unit [@@js.set "allow"]

    val get_alt_svc : t -> string [@@js.get "alt-svc"]

    val set_alt_svc : t -> string -> unit [@@js.set "alt-svc"]

    val get_authorization : t -> string [@@js.get "authorization"]

    val set_authorization : t -> string -> unit [@@js.set "authorization"]

    val get_cache_control : t -> string [@@js.get "cache-control"]

    val set_cache_control : t -> string -> unit [@@js.set "cache-control"]

    val get_connection : t -> string [@@js.get "connection"]

    val set_connection : t -> string -> unit [@@js.set "connection"]

    val get_content_disposition : t -> string [@@js.get "content-disposition"]

    val set_content_disposition : t -> string -> unit
      [@@js.set "content-disposition"]

    val get_content_encoding : t -> string [@@js.get "content-encoding"]

    val set_content_encoding : t -> string -> unit [@@js.set "content-encoding"]

    val get_content_language : t -> string [@@js.get "content-language"]

    val set_content_language : t -> string -> unit [@@js.set "content-language"]

    val get_content_length : t -> string [@@js.get "content-length"]

    val set_content_length : t -> string -> unit [@@js.set "content-length"]

    val get_content_location : t -> string [@@js.get "content-location"]

    val set_content_location : t -> string -> unit [@@js.set "content-location"]

    val get_content_range : t -> string [@@js.get "content-range"]

    val set_content_range : t -> string -> unit [@@js.set "content-range"]

    val get_content_type : t -> string [@@js.get "content-type"]

    val set_content_type : t -> string -> unit [@@js.set "content-type"]

    val get_cookie : t -> string [@@js.get "cookie"]

    val set_cookie : t -> string -> unit [@@js.set "cookie"]

    val get_date : t -> string [@@js.get "date"]

    val set_date : t -> string -> unit [@@js.set "date"]

    val get_expect : t -> string [@@js.get "expect"]

    val set_expect : t -> string -> unit [@@js.set "expect"]

    val get_expires : t -> string [@@js.get "expires"]

    val set_expires : t -> string -> unit [@@js.set "expires"]

    val get_forwarded : t -> string [@@js.get "forwarded"]

    val set_forwarded : t -> string -> unit [@@js.set "forwarded"]

    val get_from : t -> string [@@js.get "from"]

    val set_from : t -> string -> unit [@@js.set "from"]

    val get_host : t -> string [@@js.get "host"]

    val set_host : t -> string -> unit [@@js.set "host"]

    val get_if_match : t -> string [@@js.get "if-match"]

    val set_if_match : t -> string -> unit [@@js.set "if-match"]

    val get_if_modified_since : t -> string [@@js.get "if-modified-since"]

    val set_if_modified_since : t -> string -> unit
      [@@js.set "if-modified-since"]

    val get_if_none_match : t -> string [@@js.get "if-none-match"]

    val set_if_none_match : t -> string -> unit [@@js.set "if-none-match"]

    val get_if_unmodified_since : t -> string [@@js.get "if-unmodified-since"]

    val set_if_unmodified_since : t -> string -> unit
      [@@js.set "if-unmodified-since"]

    val get_last_modified : t -> string [@@js.get "last-modified"]

    val set_last_modified : t -> string -> unit [@@js.set "last-modified"]

    val get_location : t -> string [@@js.get "location"]

    val set_location : t -> string -> unit [@@js.set "location"]

    val get_origin : t -> string [@@js.get "origin"]

    val set_origin : t -> string -> unit [@@js.set "origin"]

    val get_pragma : t -> string [@@js.get "pragma"]

    val set_pragma : t -> string -> unit [@@js.set "pragma"]

    val get_proxy_authenticate : t -> string [@@js.get "proxy-authenticate"]

    val set_proxy_authenticate : t -> string -> unit
      [@@js.set "proxy-authenticate"]

    val get_proxy_authorization : t -> string [@@js.get "proxy-authorization"]

    val set_proxy_authorization : t -> string -> unit
      [@@js.set "proxy-authorization"]

    val get_public_key_pins : t -> string [@@js.get "public-key-pins"]

    val set_public_key_pins : t -> string -> unit [@@js.set "public-key-pins"]

    val get_range : t -> string [@@js.get "range"]

    val set_range : t -> string -> unit [@@js.set "range"]

    val get_referer : t -> string [@@js.get "referer"]

    val set_referer : t -> string -> unit [@@js.set "referer"]

    val get_retry_after : t -> string [@@js.get "retry-after"]

    val set_retry_after : t -> string -> unit [@@js.set "retry-after"]

    val get_sec_websocket_accept : t -> string [@@js.get "sec-websocket-accept"]

    val set_sec_websocket_accept : t -> string -> unit
      [@@js.set "sec-websocket-accept"]

    val get_sec_websocket_extensions : t -> string
      [@@js.get "sec-websocket-extensions"]

    val set_sec_websocket_extensions : t -> string -> unit
      [@@js.set "sec-websocket-extensions"]

    val get_sec_websocket_key : t -> string [@@js.get "sec-websocket-key"]

    val set_sec_websocket_key : t -> string -> unit
      [@@js.set "sec-websocket-key"]

    val get_sec_websocket_protocol : t -> string
      [@@js.get "sec-websocket-protocol"]

    val set_sec_websocket_protocol : t -> string -> unit
      [@@js.set "sec-websocket-protocol"]

    val get_sec_websocket_version : t -> string
      [@@js.get "sec-websocket-version"]

    val set_sec_websocket_version : t -> string -> unit
      [@@js.set "sec-websocket-version"]

    val get_set_cookie : t -> string list [@@js.get "set-cookie"]

    val set_set_cookie : t -> string list -> unit [@@js.set "set-cookie"]

    val get_strict_transport_security : t -> string
      [@@js.get "strict-transport-security"]

    val set_strict_transport_security : t -> string -> unit
      [@@js.set "strict-transport-security"]

    val get_tk : t -> string [@@js.get "tk"]

    val set_tk : t -> string -> unit [@@js.set "tk"]

    val get_trailer : t -> string [@@js.get "trailer"]

    val set_trailer : t -> string -> unit [@@js.set "trailer"]

    val get_transfer_encoding : t -> string [@@js.get "transfer-encoding"]

    val set_transfer_encoding : t -> string -> unit
      [@@js.set "transfer-encoding"]

    val get_upgrade : t -> string [@@js.get "upgrade"]

    val set_upgrade : t -> string -> unit [@@js.set "upgrade"]

    val get_user_agent : t -> string [@@js.get "user-agent"]

    val set_user_agent : t -> string -> unit [@@js.set "user-agent"]

    val get_vary : t -> string [@@js.get "vary"]

    val set_vary : t -> string -> unit [@@js.set "vary"]

    val get_via : t -> string [@@js.get "via"]

    val set_via : t -> string -> unit [@@js.set "via"]

    val get_warning : t -> string [@@js.get "warning"]

    val set_warning : t -> string -> unit [@@js.set "warning"]

    val get_www_authenticate : t -> string [@@js.get "www-authenticate"]

    val set_www_authenticate : t -> string -> unit [@@js.set "www-authenticate"]

    val cast : t -> string list or_string Dict.t [@@js.cast]
  end
  [@@js.scope "IncomingHttpHeaders"]

  module OutgoingHttpHeader : sig
    type t = string list or_string or_number

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module OutgoingHttpHeaders : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> OutgoingHttpHeader.t Dict.t [@@js.cast]
  end
  [@@js.scope "OutgoingHttpHeaders"]

  module ClientRequestArgs : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_protocol : t -> string or_null [@@js.get "protocol"]

    val set_protocol : t -> string or_null -> unit [@@js.set "protocol"]

    val get_host : t -> string or_null [@@js.get "host"]

    val set_host : t -> string or_null -> unit [@@js.set "host"]

    val get_hostname : t -> string or_null [@@js.get "hostname"]

    val set_hostname : t -> string or_null -> unit [@@js.set "hostname"]

    val get_family : t -> int [@@js.get "family"]

    val set_family : t -> int -> unit [@@js.set "family"]

    val get_port : t -> string or_number or_null [@@js.get "port"]

    val set_port : t -> string or_number or_null -> unit [@@js.set "port"]

    val get_default_port : t -> string or_number [@@js.get "defaultPort"]

    val set_default_port : t -> string or_number -> unit
      [@@js.set "defaultPort"]

    val get_local_address : t -> string [@@js.get "localAddress"]

    val set_local_address : t -> string -> unit [@@js.set "localAddress"]

    val get_socket_path : t -> string [@@js.get "socketPath"]

    val set_socket_path : t -> string -> unit [@@js.set "socketPath"]

    val get_max_header_size : t -> int [@@js.get "maxHeaderSize"]

    val set_max_header_size : t -> int -> unit [@@js.set "maxHeaderSize"]

    val get_method : t -> string [@@js.get "method"]

    val set_method : t -> string -> unit [@@js.set "method"]

    val get_path : t -> string or_null [@@js.get "path"]

    val set_path : t -> string or_null -> unit [@@js.set "path"]

    val get_headers : t -> OutgoingHttpHeaders.t [@@js.get "headers"]

    val set_headers : t -> OutgoingHttpHeaders.t -> unit [@@js.set "headers"]

    val get_auth : t -> string or_null [@@js.get "auth"]

    val set_auth : t -> string or_null -> unit [@@js.set "auth"]

    val get_agent : t -> Agent.t or_boolean [@@js.get "agent"]

    val set_agent : t -> Agent.t or_boolean -> unit [@@js.set "agent"]

    val get_default_agent : t -> Agent.t [@@js.get "_defaultAgent"]

    val set_default_agent : t -> Agent.t -> unit [@@js.set "_defaultAgent"]

    val get_timeout : t -> int [@@js.get "timeout"]

    val set_timeout : t -> int -> unit [@@js.set "timeout"]

    val get_set_host : t -> bool [@@js.get "setHost"]

    val set_set_host : t -> bool -> unit [@@js.set "setHost"]

    val create_connection
      :  t
      -> options:t
      -> oncreate:(err:Error.t -> socket:Node_net.Net.Socket.t -> unit)
      -> Node_net.Net.Socket.t
      [@@js.call "createConnection"]
  end
  [@@js.scope "ClientRequestArgs"]

  module ServerOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_incoming_message
      :  t
      -> (* FIXME: unknown type 'typeof IncomingMessage' *) any
      [@@js.get "IncomingMessage"]

    val set_incoming_message
      :  t
      -> (* FIXME: unknown type 'typeof IncomingMessage' *) any
      -> unit
      [@@js.set "IncomingMessage"]

    val get_server_response
      :  t
      -> (* FIXME: unknown type 'typeof ServerResponse' *) any
      [@@js.get "ServerResponse"]

    val set_server_response
      :  t
      -> (* FIXME: unknown type 'typeof ServerResponse' *) any
      -> unit
      [@@js.set "ServerResponse"]

    val get_max_header_size : t -> int [@@js.get "maxHeaderSize"]

    val set_max_header_size : t -> int -> unit [@@js.set "maxHeaderSize"]

    val get_insecure_http_parser : t -> bool [@@js.get "insecureHTTPParser"]

    val set_insecure_http_parser : t -> bool -> unit
      [@@js.set "insecureHTTPParser"]
  end
  [@@js.scope "ServerOptions"]

  module RequestListener : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply : t -> req:IncomingMessage.t -> res:ServerResponse.t -> unit
      [@@js.apply]
  end
  [@@js.scope "RequestListener"]

  module HttpBase : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val set_timeout : t -> ?msecs:int -> ?callback:(unit -> unit) -> unit -> t
      [@@js.call "setTimeout"]

    val set_timeout' : t -> callback:(unit -> unit) -> t
      [@@js.call "setTimeout"]

    val get_max_headers_count : t -> int or_null [@@js.get "maxHeadersCount"]

    val set_max_headers_count : t -> int or_null -> unit
      [@@js.set "maxHeadersCount"]

    val get_timeout : t -> int [@@js.get "timeout"]

    val set_timeout : t -> int -> unit [@@js.set "timeout"]

    val get_headers_timeout : t -> int [@@js.get "headersTimeout"]

    val set_headers_timeout : t -> int -> unit [@@js.set "headersTimeout"]

    val get_keep_alive_timeout : t -> int [@@js.get "keepAliveTimeout"]

    val set_keep_alive_timeout : t -> int -> unit [@@js.set "keepAliveTimeout"]

    val get_request_timeout : t -> int [@@js.get "requestTimeout"]

    val set_request_timeout : t -> int -> unit [@@js.set "requestTimeout"]
  end
  [@@js.scope "HttpBase"]

  module Server : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> HttpBase.t [@@js.cast]

    val create : ?request_listener:RequestListener.t -> unit -> t [@@js.create]

    val create'
      :  options:ServerOptions.t
      -> ?request_listener:RequestListener.t
      -> unit
      -> t
      [@@js.create]

    val cast : t -> Node_net.Net.Server.t [@@js.cast]
  end
  [@@js.scope "Server"]

  module OutgoingMessage : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_upgrading : t -> bool [@@js.get "upgrading"]

    val set_upgrading : t -> bool -> unit [@@js.set "upgrading"]

    val get_chunked_encoding : t -> bool [@@js.get "chunkedEncoding"]

    val set_chunked_encoding : t -> bool -> unit [@@js.set "chunkedEncoding"]

    val get_should_keep_alive : t -> bool [@@js.get "shouldKeepAlive"]

    val set_should_keep_alive : t -> bool -> unit [@@js.set "shouldKeepAlive"]

    val get_use_chunked_encoding_by_default : t -> bool
      [@@js.get "useChunkedEncodingByDefault"]

    val set_use_chunked_encoding_by_default : t -> bool -> unit
      [@@js.set "useChunkedEncodingByDefault"]

    val get_send_date : t -> bool [@@js.get "sendDate"]

    val set_send_date : t -> bool -> unit [@@js.set "sendDate"]

    val get_finished : t -> bool [@@js.get "finished"]

    val set_finished : t -> bool -> unit [@@js.set "finished"]

    val get_headers_sent : t -> bool [@@js.get "headersSent"]

    val set_headers_sent : t -> bool -> unit [@@js.set "headersSent"]

    val get_connection : t -> Node_net.Net.Socket.t or_null
      [@@js.get "connection"]

    val set_connection : t -> Node_net.Net.Socket.t or_null -> unit
      [@@js.set "connection"]

    val get_socket : t -> Node_net.Net.Socket.t or_null [@@js.get "socket"]

    val set_socket : t -> Node_net.Net.Socket.t or_null -> unit
      [@@js.set "socket"]

    val create : unit -> t [@@js.create]

    val set_timeout : t -> msecs:int -> ?callback:(unit -> unit) -> unit -> t
      [@@js.call "setTimeout"]

    val set_header
      :  t
      -> name:string
      -> value:string list or_string or_number
      -> unit
      [@@js.call "setHeader"]

    val get_header
      :  t
      -> name:string
      -> string list or_string or_number or_undefined
      [@@js.call "getHeader"]

    val get_headers : t -> OutgoingHttpHeaders.t [@@js.call "getHeaders"]

    val get_header_names : t -> string list [@@js.call "getHeaderNames"]

    val has_header : t -> name:string -> bool [@@js.call "hasHeader"]

    val remove_header : t -> name:string -> unit [@@js.call "removeHeader"]

    val add_trailers
      :  t
      -> headers:(OutgoingHttpHeaders.t, (string * string) list) union2
      -> unit
      [@@js.call "addTrailers"]

    val flush_headers : t -> unit [@@js.call "flushHeaders"]

    val cast : t -> Stream.Writable.t [@@js.cast]
  end
  [@@js.scope "OutgoingMessage"]

  module ServerResponse : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_status_code : t -> int [@@js.get "statusCode"]

    val set_status_code : t -> int -> unit [@@js.set "statusCode"]

    val get_status_message : t -> string [@@js.get "statusMessage"]

    val set_status_message : t -> string -> unit [@@js.set "statusMessage"]

    val create : req:IncomingMessage.t -> t [@@js.create]

    val assign_socket : t -> socket:Node_net.Net.Socket.t -> unit
      [@@js.call "assignSocket"]

    val detach_socket : t -> socket:Node_net.Net.Socket.t -> unit
      [@@js.call "detachSocket"]

    val write_continue : t -> ?callback:(unit -> unit) -> unit -> unit
      [@@js.call "writeContinue"]

    val write_head
      :  t
      -> status_code:int
      -> ?reason_phrase:string
      -> ?headers:(OutgoingHttpHeaders.t, OutgoingHttpHeader.t) or_array
      -> unit
      -> t
      [@@js.call "writeHead"]

    val write_head'
      :  t
      -> status_code:int
      -> ?headers:(OutgoingHttpHeaders.t, OutgoingHttpHeader.t) or_array
      -> unit
      -> t
      [@@js.call "writeHead"]

    val write_processing : t -> unit [@@js.call "writeProcessing"]

    val cast : t -> OutgoingMessage.t [@@js.cast]
  end
  [@@js.scope "ServerResponse"]

  module InformationEvent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_status_code : t -> int [@@js.get "statusCode"]

    val set_status_code : t -> int -> unit [@@js.set "statusCode"]

    val get_status_message : t -> string [@@js.get "statusMessage"]

    val set_status_message : t -> string -> unit [@@js.set "statusMessage"]

    val get_http_version : t -> string [@@js.get "httpVersion"]

    val set_http_version : t -> string -> unit [@@js.set "httpVersion"]

    val get_http_version_major : t -> int [@@js.get "httpVersionMajor"]

    val set_http_version_major : t -> int -> unit [@@js.set "httpVersionMajor"]

    val get_http_version_minor : t -> int [@@js.get "httpVersionMinor"]

    val set_http_version_minor : t -> int -> unit [@@js.set "httpVersionMinor"]

    val get_headers : t -> IncomingHttpHeaders.t [@@js.get "headers"]

    val set_headers : t -> IncomingHttpHeaders.t -> unit [@@js.set "headers"]

    val get_raw_headers : t -> string list [@@js.get "rawHeaders"]

    val set_raw_headers : t -> string list -> unit [@@js.set "rawHeaders"]
  end
  [@@js.scope "InformationEvent"]

  module ClientRequest : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_aborted : t -> bool [@@js.get "aborted"]

    val set_aborted : t -> bool -> unit [@@js.set "aborted"]

    val get_host : t -> string [@@js.get "host"]

    val set_host : t -> string -> unit [@@js.set "host"]

    val get_protocol : t -> string [@@js.get "protocol"]

    val set_protocol : t -> string -> unit [@@js.set "protocol"]

    val create
      :  url:(ClientRequestArgs.t, Node_url.Url.Url.t) union2 or_string
      -> ?cb:(res:IncomingMessage.t -> unit)
      -> unit
      -> t
      [@@js.create]

    val get_method : t -> string [@@js.get "method"]

    val set_method : t -> string -> unit [@@js.set "method"]

    val get_path : t -> string [@@js.get "path"]

    val set_path : t -> string -> unit [@@js.set "path"]

    val abort : t -> unit [@@js.call "abort"]

    val on_socket : t -> socket:Node_net.Net.Socket.t -> unit
      [@@js.call "onSocket"]

    val set_timeout : t -> timeout:int -> ?callback:(unit -> unit) -> unit -> t
      [@@js.call "setTimeout"]

    val set_no_delay : t -> ?no_delay:bool -> unit -> unit
      [@@js.call "setNoDelay"]

    val set_socket_keep_alive
      :  t
      -> ?enable:bool
      -> ?initial_delay:int
      -> unit
      -> unit
      [@@js.call "setSocketKeepAlive"]

    val add_listener
      :  t
      -> event:([ `abort ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (response:IncomingMessage.t
            -> socket:Node_net.Net.Socket.t
            -> head:Buffer.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''
      :  t
      -> event:([ `continue ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''
      :  t
      -> event:([ `information ][@js.enum])
      -> listener:(info:InformationEvent.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''
      :  t
      -> event:([ `response ][@js.enum])
      -> listener:(response:IncomingMessage.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''
      :  t
      -> event:([ `socket ][@js.enum])
      -> listener:(socket:Node_net.Net.Socket.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''
      :  t
      -> event:([ `upgrade ][@js.enum])
      -> listener:
           (response:IncomingMessage.t
            -> socket:Node_net.Net.Socket.t
            -> head:Buffer.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''''''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val on : t -> event:([ `abort ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (response:IncomingMessage.t
            -> socket:Node_net.Net.Socket.t
            -> head:Buffer.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `continue ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `information ][@js.enum])
      -> listener:(info:InformationEvent.t -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `response ][@js.enum])
      -> listener:(response:IncomingMessage.t -> unit)
      -> t
      [@@js.call "on"]

    val on'''''
      :  t
      -> event:([ `socket ][@js.enum])
      -> listener:(socket:Node_net.Net.Socket.t -> unit)
      -> t
      [@@js.call "on"]

    val on''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''
      :  t
      -> event:([ `upgrade ][@js.enum])
      -> listener:
           (response:IncomingMessage.t
            -> socket:Node_net.Net.Socket.t
            -> head:Buffer.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val once : t -> event:([ `abort ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "once"]

    val once'
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (response:IncomingMessage.t
            -> socket:Node_net.Net.Socket.t
            -> head:Buffer.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `continue ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `information ][@js.enum])
      -> listener:(info:InformationEvent.t -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `response ][@js.enum])
      -> listener:(response:IncomingMessage.t -> unit)
      -> t
      [@@js.call "once"]

    val once'''''
      :  t
      -> event:([ `socket ][@js.enum])
      -> listener:(socket:Node_net.Net.Socket.t -> unit)
      -> t
      [@@js.call "once"]

    val once''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''
      :  t
      -> event:([ `upgrade ][@js.enum])
      -> listener:
           (response:IncomingMessage.t
            -> socket:Node_net.Net.Socket.t
            -> head:Buffer.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "once"]

    val prepend_listener
      :  t
      -> event:([ `abort ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (response:IncomingMessage.t
            -> socket:Node_net.Net.Socket.t
            -> head:Buffer.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''
      :  t
      -> event:([ `continue ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''
      :  t
      -> event:([ `information ][@js.enum])
      -> listener:(info:InformationEvent.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''
      :  t
      -> event:([ `response ][@js.enum])
      -> listener:(response:IncomingMessage.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''
      :  t
      -> event:([ `socket ][@js.enum])
      -> listener:(socket:Node_net.Net.Socket.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''
      :  t
      -> event:([ `upgrade ][@js.enum])
      -> listener:
           (response:IncomingMessage.t
            -> socket:Node_net.Net.Socket.t
            -> head:Buffer.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''''''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_once_listener
      :  t
      -> event:([ `abort ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (response:IncomingMessage.t
            -> socket:Node_net.Net.Socket.t
            -> head:Buffer.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''
      :  t
      -> event:([ `continue ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''
      :  t
      -> event:([ `information ][@js.enum])
      -> listener:(info:InformationEvent.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''
      :  t
      -> event:([ `response ][@js.enum])
      -> listener:(response:IncomingMessage.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''
      :  t
      -> event:([ `socket ][@js.enum])
      -> listener:(socket:Node_net.Net.Socket.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''
      :  t
      -> event:([ `upgrade ][@js.enum])
      -> listener:
           (response:IncomingMessage.t
            -> socket:Node_net.Net.Socket.t
            -> head:Buffer.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''''''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> OutgoingMessage.t [@@js.cast]
  end
  [@@js.scope "ClientRequest"]

  module IncomingMessage : sig
    include module type of struct
      include Stream.Readable
    end

    val create : socket:Node_net.Net.Socket.t -> t [@@js.create]

    val get_aborted : t -> bool [@@js.get "aborted"]

    val set_aborted : t -> bool -> unit [@@js.set "aborted"]

    val get_http_version : t -> string [@@js.get "httpVersion"]

    val set_http_version : t -> string -> unit [@@js.set "httpVersion"]

    val get_http_version_major : t -> int [@@js.get "httpVersionMajor"]

    val set_http_version_major : t -> int -> unit [@@js.set "httpVersionMajor"]

    val get_http_version_minor : t -> int [@@js.get "httpVersionMinor"]

    val set_http_version_minor : t -> int -> unit [@@js.set "httpVersionMinor"]

    val get_complete : t -> bool [@@js.get "complete"]

    val set_complete : t -> bool -> unit [@@js.set "complete"]

    val get_connection : t -> Node_net.Net.Socket.t [@@js.get "connection"]

    val set_connection : t -> Node_net.Net.Socket.t -> unit
      [@@js.set "connection"]

    val get_socket : t -> Node_net.Net.Socket.t [@@js.get "socket"]

    val set_socket : t -> Node_net.Net.Socket.t -> unit [@@js.set "socket"]

    val get_headers : t -> IncomingHttpHeaders.t [@@js.get "headers"]

    val set_headers : t -> IncomingHttpHeaders.t -> unit [@@js.set "headers"]

    val get_raw_headers : t -> string list [@@js.get "rawHeaders"]

    val set_raw_headers : t -> string list -> unit [@@js.set "rawHeaders"]

    val get_trailers : t -> string Dict.t [@@js.get "trailers"]

    val set_trailers : t -> string Dict.t -> unit [@@js.set "trailers"]

    val get_raw_trailers : t -> string list [@@js.get "rawTrailers"]

    val set_raw_trailers : t -> string list -> unit [@@js.set "rawTrailers"]

    val set_timeout : t -> msecs:int -> ?callback:(unit -> unit) -> unit -> t
      [@@js.call "setTimeout"]

    val get_method : t -> string [@@js.get "method"]

    val set_method : t -> string -> unit [@@js.set "method"]

    val get_url : t -> string [@@js.get "url"]

    val set_url : t -> string -> unit [@@js.set "url"]

    val get_status_code : t -> int [@@js.get "statusCode"]

    val set_status_code : t -> int -> unit [@@js.set "statusCode"]

    val get_status_message : t -> string [@@js.get "statusMessage"]

    val set_status_message : t -> string -> unit [@@js.set "statusMessage"]

    val destroy : t -> ?error:Error.t -> unit -> unit [@@js.call "destroy"]
  end
  [@@js.scope "IncomingMessage"]

  module AgentOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_keep_alive : t -> bool [@@js.get "keepAlive"]

    val set_keep_alive : t -> bool -> unit [@@js.set "keepAlive"]

    val get_keep_alive_msecs : t -> int [@@js.get "keepAliveMsecs"]

    val set_keep_alive_msecs : t -> int -> unit [@@js.set "keepAliveMsecs"]

    val get_max_sockets : t -> int [@@js.get "maxSockets"]

    val set_max_sockets : t -> int -> unit [@@js.set "maxSockets"]

    val get_max_total_sockets : t -> int [@@js.get "maxTotalSockets"]

    val set_max_total_sockets : t -> int -> unit [@@js.set "maxTotalSockets"]

    val get_max_free_sockets : t -> int [@@js.get "maxFreeSockets"]

    val set_max_free_sockets : t -> int -> unit [@@js.set "maxFreeSockets"]

    val get_timeout : t -> int [@@js.get "timeout"]

    val set_timeout : t -> int -> unit [@@js.set "timeout"]

    val get_scheduling
      :  t
      -> ([ `fifo [@js "fifo"] | `lifo [@js "lifo"] ][@js.enum])
      [@@js.get "scheduling"]

    val set_scheduling : t -> ([ `fifo | `lifo ][@js.enum]) -> unit
      [@@js.set "scheduling"]
  end
  [@@js.scope "AgentOptions"]

  module Agent : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_max_free_sockets : t -> int [@@js.get "maxFreeSockets"]

    val set_max_free_sockets : t -> int -> unit [@@js.set "maxFreeSockets"]

    val get_max_sockets : t -> int [@@js.get "maxSockets"]

    val set_max_sockets : t -> int -> unit [@@js.set "maxSockets"]

    val get_max_total_sockets : t -> int [@@js.get "maxTotalSockets"]

    val set_max_total_sockets : t -> int -> unit [@@js.set "maxTotalSockets"]

    val get_free_sockets : t -> Node_net.Net.Socket.t list ReadOnlyDict.t
      [@@js.get "freeSockets"]

    val get_sockets : t -> Node_net.Net.Socket.t list ReadOnlyDict.t
      [@@js.get "sockets"]

    val get_requests : t -> IncomingMessage.t list ReadOnlyDict.t
      [@@js.get "requests"]

    val create : ?opts:AgentOptions.t -> unit -> t [@@js.create]

    val destroy : t -> unit [@@js.call "destroy"]
  end
  [@@js.scope "Agent"]

  val m_ethods : string list [@@js.global "METHODS"]

  val s_tatus_codes : AnonymousInterface0.t [@@js.global "STATUS_CODES"]

  val create_server : ?request_listener:RequestListener.t -> unit -> Server.t
    [@@js.global "createServer"]

  val create_server
    :  options:ServerOptions.t
    -> ?request_listener:RequestListener.t
    -> unit
    -> Server.t
    [@@js.global "createServer"]

  module RequestOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> ClientRequestArgs.t [@@js.cast]
  end
  [@@js.scope "RequestOptions"]

  val request
    :  options:(RequestOptions.t, Node_url.Url.Url.t) union2 or_string
    -> ?callback:(res:IncomingMessage.t -> unit)
    -> unit
    -> ClientRequest.t
    [@@js.global "request"]

  val request
    :  url:Node_url.Url.Url.t or_string
    -> options:RequestOptions.t
    -> ?callback:(res:IncomingMessage.t -> unit)
    -> unit
    -> ClientRequest.t
    [@@js.global "request"]

  val get_
    :  options:(RequestOptions.t, Node_url.Url.Url.t) union2 or_string
    -> ?callback:(res:IncomingMessage.t -> unit)
    -> unit
    -> ClientRequest.t
    [@@js.global "get"]

  val get_
    :  url:Node_url.Url.Url.t or_string
    -> options:RequestOptions.t
    -> ?callback:(res:IncomingMessage.t -> unit)
    -> unit
    -> ClientRequest.t
    [@@js.global "get"]

  val global_agent : http_Agent [@@js.global "globalAgent"]

  val max_header_size : int [@@js.global "maxHeaderSize"]
end
[@@js.scope Import.http]
