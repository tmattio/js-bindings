[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type http_Agent = [ `Http_Agent ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http_AgentOptions = [ `Http_AgentOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http_ClientRequest =
      [ `Http_ClientRequest | `Http_OutgoingMessage ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http_ClientRequestArgs = [ `Http_ClientRequestArgs ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http_HttpBase = [ `Http_HttpBase ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http_IncomingHttpHeaders = [ `Http_IncomingHttpHeaders ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http_IncomingMessage = [ `Http_IncomingMessage ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http_InformationEvent = [ `Http_InformationEvent ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http_OutgoingHttpHeader = string list or_string or_number

    and http_OutgoingHttpHeaders = [ `Http_OutgoingHttpHeaders ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http_OutgoingMessage = [ `Http_OutgoingMessage ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http_RequestListener = [ `Http_RequestListener ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http_RequestOptions =
      [ `Http_RequestOptions | `Http_ClientRequestArgs ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http_Server = [ `Http_Server | `Http_HttpBase ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http_ServerOptions = [ `Http_ServerOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http_ServerResponse =
      [ `Http_ServerResponse | `Http_OutgoingMessage ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module AnonymousInterface0 : sig
  type t = anonymous_interface_0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get : t -> float -> string or_undefined [@@js.index_get]

  val set : t -> float -> string or_undefined -> unit [@@js.index_set]

  val get' : t -> string -> string or_undefined [@@js.index_get]

  val set' : t -> string -> string or_undefined -> unit [@@js.index_set]
end

module Http : sig
  open Node_stream

  module IncomingHttpHeaders : sig
    type t = http_IncomingHttpHeaders

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
    type t = http_OutgoingHttpHeader

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module OutgoingHttpHeaders : sig
    type t = http_OutgoingHttpHeaders

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> http_OutgoingHttpHeader Dict.t [@@js.cast]
  end
  [@@js.scope "OutgoingHttpHeaders"]

  module ClientRequestArgs : sig
    type t = http_ClientRequestArgs

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_protocol : t -> string or_null [@@js.get "protocol"]

    val set_protocol : t -> string or_null -> unit [@@js.set "protocol"]

    val get_host : t -> string or_null [@@js.get "host"]

    val set_host : t -> string or_null -> unit [@@js.set "host"]

    val get_hostname : t -> string or_null [@@js.get "hostname"]

    val set_hostname : t -> string or_null -> unit [@@js.set "hostname"]

    val get_family : t -> float [@@js.get "family"]

    val set_family : t -> float -> unit [@@js.set "family"]

    val get_port : t -> string or_number or_null [@@js.get "port"]

    val set_port : t -> string or_number or_null -> unit [@@js.set "port"]

    val get_defaultPort : t -> string or_number [@@js.get "defaultPort"]

    val set_defaultPort : t -> string or_number -> unit [@@js.set "defaultPort"]

    val get_localAddress : t -> string [@@js.get "localAddress"]

    val set_localAddress : t -> string -> unit [@@js.set "localAddress"]

    val get_socketPath : t -> string [@@js.get "socketPath"]

    val set_socketPath : t -> string -> unit [@@js.set "socketPath"]

    val get_maxHeaderSize : t -> float [@@js.get "maxHeaderSize"]

    val set_maxHeaderSize : t -> float -> unit [@@js.set "maxHeaderSize"]

    val get_method : t -> string [@@js.get "method"]

    val set_method : t -> string -> unit [@@js.set "method"]

    val get_path : t -> string or_null [@@js.get "path"]

    val set_path : t -> string or_null -> unit [@@js.set "path"]

    val get_headers : t -> http_OutgoingHttpHeaders [@@js.get "headers"]

    val set_headers : t -> http_OutgoingHttpHeaders -> unit [@@js.set "headers"]

    val get_auth : t -> string or_null [@@js.get "auth"]

    val set_auth : t -> string or_null -> unit [@@js.set "auth"]

    val get_agent : t -> http_Agent or_boolean [@@js.get "agent"]

    val set_agent : t -> http_Agent or_boolean -> unit [@@js.set "agent"]

    val get__defaultAgent : t -> http_Agent [@@js.get "_defaultAgent"]

    val set__defaultAgent : t -> http_Agent -> unit [@@js.set "_defaultAgent"]

    val get_timeout : t -> float [@@js.get "timeout"]

    val set_timeout : t -> float -> unit [@@js.set "timeout"]

    val get_setHost : t -> bool [@@js.get "setHost"]

    val set_setHost : t -> bool -> unit [@@js.set "setHost"]

    val createConnection
      :  t
      -> options:t
      -> oncreate:(err:Error.t -> socket:Node_net.Net.Socket.t -> unit)
      -> Node_net.Net.Socket.t
      [@@js.call "createConnection"]
  end
  [@@js.scope "ClientRequestArgs"]

  module ServerOptions : sig
    type t = http_ServerOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_IncomingMessage
      :  t
      -> (* FIXME: unknown type 'typeof IncomingMessage' *) any
      [@@js.get "IncomingMessage"]

    val set_IncomingMessage
      :  t
      -> (* FIXME: unknown type 'typeof IncomingMessage' *) any
      -> unit
      [@@js.set "IncomingMessage"]

    val get_ServerResponse
      :  t
      -> (* FIXME: unknown type 'typeof ServerResponse' *) any
      [@@js.get "ServerResponse"]

    val set_ServerResponse
      :  t
      -> (* FIXME: unknown type 'typeof ServerResponse' *) any
      -> unit
      [@@js.set "ServerResponse"]

    val get_maxHeaderSize : t -> float [@@js.get "maxHeaderSize"]

    val set_maxHeaderSize : t -> float -> unit [@@js.set "maxHeaderSize"]

    val get_insecureHTTPParser : t -> bool [@@js.get "insecureHTTPParser"]

    val set_insecureHTTPParser : t -> bool -> unit
      [@@js.set "insecureHTTPParser"]
  end
  [@@js.scope "ServerOptions"]

  module RequestListener : sig
    type t = http_RequestListener

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply : t -> req:http_IncomingMessage -> res:http_ServerResponse -> unit
      [@@js.apply]
  end
  [@@js.scope "RequestListener"]

  module HttpBase : sig
    type t = http_HttpBase

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val setTimeout : t -> ?msecs:float -> ?callback:(unit -> unit) -> unit -> t
      [@@js.call "setTimeout"]

    val setTimeout' : t -> callback:(unit -> unit) -> t [@@js.call "setTimeout"]

    val get_maxHeadersCount : t -> float or_null [@@js.get "maxHeadersCount"]

    val set_maxHeadersCount : t -> float or_null -> unit
      [@@js.set "maxHeadersCount"]

    val get_timeout : t -> float [@@js.get "timeout"]

    val set_timeout : t -> float -> unit [@@js.set "timeout"]

    val get_headersTimeout : t -> float [@@js.get "headersTimeout"]

    val set_headersTimeout : t -> float -> unit [@@js.set "headersTimeout"]

    val get_keepAliveTimeout : t -> float [@@js.get "keepAliveTimeout"]

    val set_keepAliveTimeout : t -> float -> unit [@@js.set "keepAliveTimeout"]

    val get_requestTimeout : t -> float [@@js.get "requestTimeout"]

    val set_requestTimeout : t -> float -> unit [@@js.set "requestTimeout"]
  end
  [@@js.scope "HttpBase"]

  module Server : sig
    type t = http_Server

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> http_HttpBase [@@js.cast]

    val create : ?requestListener:http_RequestListener -> unit -> t
      [@@js.create]

    val create'
      :  options:http_ServerOptions
      -> ?requestListener:http_RequestListener
      -> unit
      -> t
      [@@js.create]

    val cast : t -> Node_net.Net.Server.t [@@js.cast]
  end
  [@@js.scope "Server"]

  module OutgoingMessage : sig
    type t = http_OutgoingMessage

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_upgrading : t -> bool [@@js.get "upgrading"]

    val set_upgrading : t -> bool -> unit [@@js.set "upgrading"]

    val get_chunkedEncoding : t -> bool [@@js.get "chunkedEncoding"]

    val set_chunkedEncoding : t -> bool -> unit [@@js.set "chunkedEncoding"]

    val get_shouldKeepAlive : t -> bool [@@js.get "shouldKeepAlive"]

    val set_shouldKeepAlive : t -> bool -> unit [@@js.set "shouldKeepAlive"]

    val get_useChunkedEncodingByDefault : t -> bool
      [@@js.get "useChunkedEncodingByDefault"]

    val set_useChunkedEncodingByDefault : t -> bool -> unit
      [@@js.set "useChunkedEncodingByDefault"]

    val get_sendDate : t -> bool [@@js.get "sendDate"]

    val set_sendDate : t -> bool -> unit [@@js.set "sendDate"]

    val get_finished : t -> bool [@@js.get "finished"]

    val set_finished : t -> bool -> unit [@@js.set "finished"]

    val get_headersSent : t -> bool [@@js.get "headersSent"]

    val set_headersSent : t -> bool -> unit [@@js.set "headersSent"]

    val get_connection : t -> Node_net.Net.Socket.t or_null
      [@@js.get "connection"]

    val set_connection : t -> Node_net.Net.Socket.t or_null -> unit
      [@@js.set "connection"]

    val get_socket : t -> Node_net.Net.Socket.t or_null [@@js.get "socket"]

    val set_socket : t -> Node_net.Net.Socket.t or_null -> unit
      [@@js.set "socket"]

    val create : unit -> t [@@js.create]

    val setTimeout : t -> msecs:float -> ?callback:(unit -> unit) -> unit -> t
      [@@js.call "setTimeout"]

    val setHeader
      :  t
      -> name:string
      -> value:string list or_string or_number
      -> unit
      [@@js.call "setHeader"]

    val getHeader
      :  t
      -> name:string
      -> string list or_string or_number or_undefined
      [@@js.call "getHeader"]

    val getHeaders : t -> http_OutgoingHttpHeaders [@@js.call "getHeaders"]

    val getHeaderNames : t -> string list [@@js.call "getHeaderNames"]

    val hasHeader : t -> name:string -> bool [@@js.call "hasHeader"]

    val removeHeader : t -> name:string -> unit [@@js.call "removeHeader"]

    val addTrailers
      :  t
      -> headers:(http_OutgoingHttpHeaders, (string * string) list) union2
      -> unit
      [@@js.call "addTrailers"]

    val flushHeaders : t -> unit [@@js.call "flushHeaders"]

    val cast : t -> Stream.Writable.t [@@js.cast]
  end
  [@@js.scope "OutgoingMessage"]

  module ServerResponse : sig
    type t = http_ServerResponse

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_statusCode : t -> float [@@js.get "statusCode"]

    val set_statusCode : t -> float -> unit [@@js.set "statusCode"]

    val get_statusMessage : t -> string [@@js.get "statusMessage"]

    val set_statusMessage : t -> string -> unit [@@js.set "statusMessage"]

    val create : req:http_IncomingMessage -> t [@@js.create]

    val assignSocket : t -> socket:Node_net.Net.Socket.t -> unit
      [@@js.call "assignSocket"]

    val detachSocket : t -> socket:Node_net.Net.Socket.t -> unit
      [@@js.call "detachSocket"]

    val writeContinue : t -> ?callback:(unit -> unit) -> unit -> unit
      [@@js.call "writeContinue"]

    val writeHead
      :  t
      -> statusCode:float
      -> ?reasonPhrase:string
      -> ?headers:(http_OutgoingHttpHeaders, http_OutgoingHttpHeader) or_array
      -> unit
      -> t
      [@@js.call "writeHead"]

    val writeHead'
      :  t
      -> statusCode:float
      -> ?headers:(http_OutgoingHttpHeaders, http_OutgoingHttpHeader) or_array
      -> unit
      -> t
      [@@js.call "writeHead"]

    val writeProcessing : t -> unit [@@js.call "writeProcessing"]

    val cast : t -> http_OutgoingMessage [@@js.cast]
  end
  [@@js.scope "ServerResponse"]

  module InformationEvent : sig
    type t = http_InformationEvent

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_statusCode : t -> float [@@js.get "statusCode"]

    val set_statusCode : t -> float -> unit [@@js.set "statusCode"]

    val get_statusMessage : t -> string [@@js.get "statusMessage"]

    val set_statusMessage : t -> string -> unit [@@js.set "statusMessage"]

    val get_httpVersion : t -> string [@@js.get "httpVersion"]

    val set_httpVersion : t -> string -> unit [@@js.set "httpVersion"]

    val get_httpVersionMajor : t -> float [@@js.get "httpVersionMajor"]

    val set_httpVersionMajor : t -> float -> unit [@@js.set "httpVersionMajor"]

    val get_httpVersionMinor : t -> float [@@js.get "httpVersionMinor"]

    val set_httpVersionMinor : t -> float -> unit [@@js.set "httpVersionMinor"]

    val get_headers : t -> http_IncomingHttpHeaders [@@js.get "headers"]

    val set_headers : t -> http_IncomingHttpHeaders -> unit [@@js.set "headers"]

    val get_rawHeaders : t -> string list [@@js.get "rawHeaders"]

    val set_rawHeaders : t -> string list -> unit [@@js.set "rawHeaders"]
  end
  [@@js.scope "InformationEvent"]

  module ClientRequest : sig
    type t = http_ClientRequest

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_aborted : t -> bool [@@js.get "aborted"]

    val set_aborted : t -> bool -> unit [@@js.set "aborted"]

    val get_host : t -> string [@@js.get "host"]

    val set_host : t -> string -> unit [@@js.set "host"]

    val get_protocol : t -> string [@@js.get "protocol"]

    val set_protocol : t -> string -> unit [@@js.set "protocol"]

    val create
      :  url:(http_ClientRequestArgs, Node_url.Url.Url.t) union2 or_string
      -> ?cb:(res:http_IncomingMessage -> unit)
      -> unit
      -> t
      [@@js.create]

    val get_method : t -> string [@@js.get "method"]

    val set_method : t -> string -> unit [@@js.set "method"]

    val get_path : t -> string [@@js.get "path"]

    val set_path : t -> string -> unit [@@js.set "path"]

    val abort : t -> unit [@@js.call "abort"]

    val onSocket : t -> socket:Node_net.Net.Socket.t -> unit
      [@@js.call "onSocket"]

    val setTimeout : t -> timeout:float -> ?callback:(unit -> unit) -> unit -> t
      [@@js.call "setTimeout"]

    val setNoDelay : t -> ?noDelay:bool -> unit -> unit [@@js.call "setNoDelay"]

    val setSocketKeepAlive
      :  t
      -> ?enable:bool
      -> ?initialDelay:float
      -> unit
      -> unit
      [@@js.call "setSocketKeepAlive"]

    val addListener
      :  t
      -> event:([ `abort ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (response:http_IncomingMessage
            -> socket:Node_net.Net.Socket.t
            -> head:Buffer.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:([ `continue ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:([ `information ][@js.enum])
      -> listener:(info:http_InformationEvent -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''
      :  t
      -> event:([ `response ][@js.enum])
      -> listener:(response:http_IncomingMessage -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''
      :  t
      -> event:([ `socket ][@js.enum])
      -> listener:(socket:Node_net.Net.Socket.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''
      :  t
      -> event:([ `upgrade ][@js.enum])
      -> listener:
           (response:http_IncomingMessage
            -> socket:Node_net.Net.Socket.t
            -> head:Buffer.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''''''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''''''''
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
           (response:http_IncomingMessage
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
      -> listener:(info:http_InformationEvent -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `response ][@js.enum])
      -> listener:(response:http_IncomingMessage -> unit)
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
           (response:http_IncomingMessage
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
           (response:http_IncomingMessage
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
      -> listener:(info:http_InformationEvent -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `response ][@js.enum])
      -> listener:(response:http_IncomingMessage -> unit)
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
           (response:http_IncomingMessage
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

    val prependListener
      :  t
      -> event:([ `abort ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (response:http_IncomingMessage
            -> socket:Node_net.Net.Socket.t
            -> head:Buffer.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:([ `continue ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
      :  t
      -> event:([ `information ][@js.enum])
      -> listener:(info:http_InformationEvent -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''
      :  t
      -> event:([ `response ][@js.enum])
      -> listener:(response:http_IncomingMessage -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''
      :  t
      -> event:([ `socket ][@js.enum])
      -> listener:(socket:Node_net.Net.Socket.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''
      :  t
      -> event:([ `upgrade ][@js.enum])
      -> listener:
           (response:http_IncomingMessage
            -> socket:Node_net.Net.Socket.t
            -> head:Buffer.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''''''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependOnceListener
      :  t
      -> event:([ `abort ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (response:http_IncomingMessage
            -> socket:Node_net.Net.Socket.t
            -> head:Buffer.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:([ `continue ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:([ `information ][@js.enum])
      -> listener:(info:http_InformationEvent -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''
      :  t
      -> event:([ `response ][@js.enum])
      -> listener:(response:http_IncomingMessage -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''
      :  t
      -> event:([ `socket ][@js.enum])
      -> listener:(socket:Node_net.Net.Socket.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''
      :  t
      -> event:([ `upgrade ][@js.enum])
      -> listener:
           (response:http_IncomingMessage
            -> socket:Node_net.Net.Socket.t
            -> head:Buffer.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''''''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> http_OutgoingMessage [@@js.cast]
  end
  [@@js.scope "ClientRequest"]

  module IncomingMessage : sig
    include module type of struct
      include Stream.Readable
    end

    val create : socket:Node_net.Net.Socket.t -> t [@@js.create]

    val get_aborted : t -> bool [@@js.get "aborted"]

    val set_aborted : t -> bool -> unit [@@js.set "aborted"]

    val get_httpVersion : t -> string [@@js.get "httpVersion"]

    val set_httpVersion : t -> string -> unit [@@js.set "httpVersion"]

    val get_httpVersionMajor : t -> float [@@js.get "httpVersionMajor"]

    val set_httpVersionMajor : t -> float -> unit [@@js.set "httpVersionMajor"]

    val get_httpVersionMinor : t -> float [@@js.get "httpVersionMinor"]

    val set_httpVersionMinor : t -> float -> unit [@@js.set "httpVersionMinor"]

    val get_complete : t -> bool [@@js.get "complete"]

    val set_complete : t -> bool -> unit [@@js.set "complete"]

    val get_connection : t -> Node_net.Net.Socket.t [@@js.get "connection"]

    val set_connection : t -> Node_net.Net.Socket.t -> unit
      [@@js.set "connection"]

    val get_socket : t -> Node_net.Net.Socket.t [@@js.get "socket"]

    val set_socket : t -> Node_net.Net.Socket.t -> unit [@@js.set "socket"]

    val get_headers : t -> http_IncomingHttpHeaders [@@js.get "headers"]

    val set_headers : t -> http_IncomingHttpHeaders -> unit [@@js.set "headers"]

    val get_rawHeaders : t -> string list [@@js.get "rawHeaders"]

    val set_rawHeaders : t -> string list -> unit [@@js.set "rawHeaders"]

    val get_trailers : t -> string Dict.t [@@js.get "trailers"]

    val set_trailers : t -> string Dict.t -> unit [@@js.set "trailers"]

    val get_rawTrailers : t -> string list [@@js.get "rawTrailers"]

    val set_rawTrailers : t -> string list -> unit [@@js.set "rawTrailers"]

    val setTimeout : t -> msecs:float -> ?callback:(unit -> unit) -> unit -> t
      [@@js.call "setTimeout"]

    val get_method : t -> string [@@js.get "method"]

    val set_method : t -> string -> unit [@@js.set "method"]

    val get_url : t -> string [@@js.get "url"]

    val set_url : t -> string -> unit [@@js.set "url"]

    val get_statusCode : t -> float [@@js.get "statusCode"]

    val set_statusCode : t -> float -> unit [@@js.set "statusCode"]

    val get_statusMessage : t -> string [@@js.get "statusMessage"]

    val set_statusMessage : t -> string -> unit [@@js.set "statusMessage"]

    val destroy : t -> ?error:Error.t -> unit -> unit [@@js.call "destroy"]
  end
  [@@js.scope "IncomingMessage"]

  module AgentOptions : sig
    type t = http_AgentOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_keepAlive : t -> bool [@@js.get "keepAlive"]

    val set_keepAlive : t -> bool -> unit [@@js.set "keepAlive"]

    val get_keepAliveMsecs : t -> float [@@js.get "keepAliveMsecs"]

    val set_keepAliveMsecs : t -> float -> unit [@@js.set "keepAliveMsecs"]

    val get_maxSockets : t -> float [@@js.get "maxSockets"]

    val set_maxSockets : t -> float -> unit [@@js.set "maxSockets"]

    val get_maxTotalSockets : t -> float [@@js.get "maxTotalSockets"]

    val set_maxTotalSockets : t -> float -> unit [@@js.set "maxTotalSockets"]

    val get_maxFreeSockets : t -> float [@@js.get "maxFreeSockets"]

    val set_maxFreeSockets : t -> float -> unit [@@js.set "maxFreeSockets"]

    val get_timeout : t -> float [@@js.get "timeout"]

    val set_timeout : t -> float -> unit [@@js.set "timeout"]

    val get_scheduling
      :  t
      -> ([ `fifo [@js "fifo"] | `lifo [@js "lifo"] ][@js.enum])
      [@@js.get "scheduling"]

    val set_scheduling : t -> ([ `fifo | `lifo ][@js.enum]) -> unit
      [@@js.set "scheduling"]
  end
  [@@js.scope "AgentOptions"]

  module Agent : sig
    type t = http_Agent

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_maxFreeSockets : t -> float [@@js.get "maxFreeSockets"]

    val set_maxFreeSockets : t -> float -> unit [@@js.set "maxFreeSockets"]

    val get_maxSockets : t -> float [@@js.get "maxSockets"]

    val set_maxSockets : t -> float -> unit [@@js.set "maxSockets"]

    val get_maxTotalSockets : t -> float [@@js.get "maxTotalSockets"]

    val set_maxTotalSockets : t -> float -> unit [@@js.set "maxTotalSockets"]

    val get_freeSockets : t -> Node_net.Net.Socket.t list ReadOnlyDict.t
      [@@js.get "freeSockets"]

    val get_sockets : t -> Node_net.Net.Socket.t list ReadOnlyDict.t
      [@@js.get "sockets"]

    val get_requests : t -> http_IncomingMessage list ReadOnlyDict.t
      [@@js.get "requests"]

    val create : ?opts:http_AgentOptions -> unit -> t [@@js.create]

    val destroy : t -> unit [@@js.call "destroy"]
  end
  [@@js.scope "Agent"]

  val mETHODS : string list [@@js.global "METHODS"]

  val sTATUS_CODES : anonymous_interface_0 [@@js.global "STATUS_CODES"]

  val createServer
    :  ?requestListener:http_RequestListener
    -> unit
    -> http_Server
    [@@js.global "createServer"]

  val createServer
    :  options:http_ServerOptions
    -> ?requestListener:http_RequestListener
    -> unit
    -> http_Server
    [@@js.global "createServer"]

  module RequestOptions : sig
    type t = http_RequestOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> http_ClientRequestArgs [@@js.cast]
  end
  [@@js.scope "RequestOptions"]

  val request
    :  options:(http_RequestOptions, Node_url.Url.Url.t) union2 or_string
    -> ?callback:(res:http_IncomingMessage -> unit)
    -> unit
    -> http_ClientRequest
    [@@js.global "request"]

  val request
    :  url:Node_url.Url.Url.t or_string
    -> options:http_RequestOptions
    -> ?callback:(res:http_IncomingMessage -> unit)
    -> unit
    -> http_ClientRequest
    [@@js.global "request"]

  val get_
    :  options:(http_RequestOptions, Node_url.Url.Url.t) union2 or_string
    -> ?callback:(res:http_IncomingMessage -> unit)
    -> unit
    -> http_ClientRequest
    [@@js.global "get"]

  val get_
    :  url:Node_url.Url.Url.t or_string
    -> options:http_RequestOptions
    -> ?callback:(res:http_IncomingMessage -> unit)
    -> unit
    -> http_ClientRequest
    [@@js.global "get"]

  val globalAgent : http_Agent [@@js.global "globalAgent"]

  val maxHeaderSize : float [@@js.global "maxHeaderSize"]
end
[@@js.scope Import.http]
