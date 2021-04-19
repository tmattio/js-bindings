[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_1 = [ `anonymous_interface_1 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type http2_AlternativeServiceOptions =
      [ `Http2_AlternativeServiceOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_ClientHttp2Session =
      [ `Http2_ClientHttp2Session | `Http2_Http2Session ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_ClientHttp2Stream =
      [ `Http2_ClientHttp2Stream | `Http2_Http2Stream ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_ClientSessionOptions =
      [ `Http2_ClientSessionOptions | `Http2_SessionOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_ClientSessionRequestOptions =
      [ `Http2_ClientSessionRequestOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_Http2SecureServer = [ `Http2_Http2SecureServer ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_Http2Server = [ `Http2_Http2Server ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_Http2ServerRequest = [ `Http2_Http2ServerRequest ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_Http2ServerResponse = [ `Http2_Http2ServerResponse ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_Http2Session = [ `Http2_Http2Session ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_Http2Stream = [ `Http2_Http2Stream ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_IncomingHttpHeaders = [ `Http2_IncomingHttpHeaders ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_IncomingHttpStatusHeader =
      [ `Http2_IncomingHttpStatusHeader ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_SecureClientSessionOptions =
      [ `Http2_SecureClientSessionOptions
      | `Http2_ClientSessionOptions
      | `Http2_SessionOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_SecureServerOptions =
      [ `Http2_SecureServerOptions
      | `Http2_SecureServerSessionOptions
      | `Http2_ServerSessionOptions
      | `Http2_SessionOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_SecureServerSessionOptions =
      [ `Http2_SecureServerSessionOptions
      | `Http2_ServerSessionOptions
      | `Http2_SessionOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_ServerHttp2Session =
      [ `Http2_ServerHttp2Session | `Http2_Http2Session ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_ServerHttp2Stream =
      [ `Http2_ServerHttp2Stream | `Http2_Http2Stream ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_ServerOptions =
      [ `Http2_ServerOptions
      | `Http2_ServerSessionOptions
      | `Http2_SessionOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_ServerSessionOptions =
      [ `Http2_ServerSessionOptions | `Http2_SessionOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_ServerStreamFileResponseOptions =
      [ `Http2_ServerStreamFileResponseOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_ServerStreamFileResponseOptionsWithError =
      [ `Http2_ServerStreamFileResponseOptionsWithError
      | `Http2_ServerStreamFileResponseOptions
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_ServerStreamResponseOptions =
      [ `Http2_ServerStreamResponseOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_SessionOptions = [ `Http2_SessionOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_SessionState = [ `Http2_SessionState ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_Settings = [ `Http2_Settings ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_StatOptions = [ `Http2_StatOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_StreamPriorityOptions = [ `Http2_StreamPriorityOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and http2_StreamState = [ `Http2_StreamState ] intf
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
end

module AnonymousInterface1 : sig
  type t = anonymous_interface_1

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_origin : t -> string [@@js.get "origin"]

  val set_origin : t -> string -> unit [@@js.set "origin"]
end

module Http2 : sig
  open Node_fs
  open Node_fs_promises
  open Node_net
  open Node_stream
  open Node_tls
  open Node_url

  module IncomingHttpStatusHeader : sig
    type t = http2_IncomingHttpStatusHeader

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get__status : t -> int [@@js.get ":status"]

    val set__status : t -> int -> unit [@@js.set ":status"]
  end
  [@@js.scope "IncomingHttpStatusHeader"]

  module IncomingHttpHeaders : sig
    type t = http2_IncomingHttpHeaders

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get__path : t -> string [@@js.get ":path"]

    val set__path : t -> string -> unit [@@js.set ":path"]

    val get__method : t -> string [@@js.get ":method"]

    val set__method : t -> string -> unit [@@js.set ":method"]

    val get__authority : t -> string [@@js.get ":authority"]

    val set__authority : t -> string -> unit [@@js.set ":authority"]

    val get__scheme : t -> string [@@js.get ":scheme"]

    val set__scheme : t -> string -> unit [@@js.set ":scheme"]

    val cast : t -> Node_http.Http.IncomingHttpHeaders.t [@@js.cast]
  end
  [@@js.scope "IncomingHttpHeaders"]

  module StreamPriorityOptions : sig
    type t = http2_StreamPriorityOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_exclusive : t -> bool [@@js.get "exclusive"]

    val set_exclusive : t -> bool -> unit [@@js.set "exclusive"]

    val get_parent : t -> int [@@js.get "parent"]

    val set_parent : t -> int -> unit [@@js.set "parent"]

    val get_weight : t -> int [@@js.get "weight"]

    val set_weight : t -> int -> unit [@@js.set "weight"]

    val get_silent : t -> bool [@@js.get "silent"]

    val set_silent : t -> bool -> unit [@@js.set "silent"]
  end
  [@@js.scope "StreamPriorityOptions"]

  module StreamState : sig
    type t = http2_StreamState

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_localWindowSize : t -> int [@@js.get "localWindowSize"]

    val set_localWindowSize : t -> int -> unit [@@js.set "localWindowSize"]

    val get_state : t -> int [@@js.get "state"]

    val set_state : t -> int -> unit [@@js.set "state"]

    val get_localClose : t -> int [@@js.get "localClose"]

    val set_localClose : t -> int -> unit [@@js.set "localClose"]

    val get_remoteClose : t -> int [@@js.get "remoteClose"]

    val set_remoteClose : t -> int -> unit [@@js.set "remoteClose"]

    val get_sumDependencyWeight : t -> int [@@js.get "sumDependencyWeight"]

    val set_sumDependencyWeight : t -> int -> unit
      [@@js.set "sumDependencyWeight"]

    val get_weight : t -> int [@@js.get "weight"]

    val set_weight : t -> int -> unit [@@js.set "weight"]
  end
  [@@js.scope "StreamState"]

  module ServerStreamResponseOptions : sig
    type t = http2_ServerStreamResponseOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_endStream : t -> bool [@@js.get "endStream"]

    val set_endStream : t -> bool -> unit [@@js.set "endStream"]

    val get_waitForTrailers : t -> bool [@@js.get "waitForTrailers"]

    val set_waitForTrailers : t -> bool -> unit [@@js.set "waitForTrailers"]
  end
  [@@js.scope "ServerStreamResponseOptions"]

  module StatOptions : sig
    type t = http2_StatOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_offset : t -> int [@@js.get "offset"]

    val set_offset : t -> int -> unit [@@js.set "offset"]

    val get_length : t -> int [@@js.get "length"]

    val set_length : t -> int -> unit [@@js.set "length"]
  end
  [@@js.scope "StatOptions"]

  module ServerStreamFileResponseOptions : sig
    type t = http2_ServerStreamFileResponseOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val statCheck
      :  t
      -> stats:Fs.Stats.t
      -> headers:Node_http.Http.OutgoingHttpHeaders.t
      -> statOptions:http2_StatOptions
      -> unit or_boolean
      [@@js.call "statCheck"]

    val get_waitForTrailers : t -> bool [@@js.get "waitForTrailers"]

    val set_waitForTrailers : t -> bool -> unit [@@js.set "waitForTrailers"]

    val get_offset : t -> int [@@js.get "offset"]

    val set_offset : t -> int -> unit [@@js.set "offset"]

    val get_length : t -> int [@@js.get "length"]

    val set_length : t -> int -> unit [@@js.set "length"]
  end
  [@@js.scope "ServerStreamFileResponseOptions"]

  module ServerStreamFileResponseOptionsWithError : sig
    type t = http2_ServerStreamFileResponseOptionsWithError

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val onError : t -> err:ErrnoException.t -> unit [@@js.call "onError"]

    val cast : t -> http2_ServerStreamFileResponseOptions [@@js.cast]
  end
  [@@js.scope "ServerStreamFileResponseOptionsWithError"]

  module Http2Stream : sig
    type t = http2_Http2Stream

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_aborted : t -> bool [@@js.get "aborted"]

    val get_bufferSize : t -> int [@@js.get "bufferSize"]

    val get_closed : t -> bool [@@js.get "closed"]

    val get_destroyed : t -> bool [@@js.get "destroyed"]

    val get_endAfterHeaders : t -> bool [@@js.get "endAfterHeaders"]

    val get_id : t -> int [@@js.get "id"]

    val get_pending : t -> bool [@@js.get "pending"]

    val get_rstCode : t -> int [@@js.get "rstCode"]

    val get_sentHeaders : t -> Node_http.Http.OutgoingHttpHeaders.t
      [@@js.get "sentHeaders"]

    val get_sentInfoHeaders : t -> Node_http.Http.OutgoingHttpHeaders.t list
      [@@js.get "sentInfoHeaders"]

    val get_sentTrailers : t -> Node_http.Http.OutgoingHttpHeaders.t
      [@@js.get "sentTrailers"]

    val get_session : t -> http2_Http2Session [@@js.get "session"]

    val get_state : t -> http2_StreamState [@@js.get "state"]

    val close : t -> ?code:int -> ?callback:(unit -> unit) -> unit -> unit
      [@@js.call "close"]

    val priority : t -> options:http2_StreamPriorityOptions -> unit
      [@@js.call "priority"]

    val setTimeout
      :  t
      -> msecs:int
      -> ?callback:(unit -> unit)
      -> unit
      -> unit
      [@@js.call "setTimeout"]

    val sendTrailers : t -> headers:Node_http.Http.OutgoingHttpHeaders.t -> unit
      [@@js.call "sendTrailers"]

    val addListener
      :  t
      -> event:([ `aborted ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(chunk:Buffer.t or_string -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''
      :  t
      -> event:([ `frameError ][@js.enum])
      -> listener:(frameType:int -> errorCode:int -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''''
      :  t
      -> event:([ `streamClosed ][@js.enum])
      -> listener:(code:int -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''''''
      :  t
      -> event:([ `trailers ][@js.enum])
      -> listener:(trailers:http2_IncomingHttpHeaders -> flags:int -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''''''''
      :  t
      -> event:([ `wantTrailers ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val emit : t -> event:([ `aborted ][@js.enum]) -> bool [@@js.call "emit"]

    val emit' : t -> event:([ `close ][@js.enum]) -> bool [@@js.call "emit"]

    val emit''
      :  t
      -> event:([ `data ][@js.enum])
      -> chunk:Buffer.t or_string
      -> bool
      [@@js.call "emit"]

    val emit''' : t -> event:([ `drain ][@js.enum]) -> bool [@@js.call "emit"]

    val emit'''' : t -> event:([ `end_ ][@js.enum]) -> bool [@@js.call "emit"]

    val emit''''' : t -> event:([ `error ][@js.enum]) -> err:Error.t -> bool
      [@@js.call "emit"]

    val emit'''''' : t -> event:([ `finish ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit'''''''
      :  t
      -> event:([ `frameError ][@js.enum])
      -> frameType:int
      -> errorCode:int
      -> bool
      [@@js.call "emit"]

    val emit''''''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> src:Stream.Readable.t
      -> bool
      [@@js.call "emit"]

    val emit'''''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> src:Stream.Readable.t
      -> bool
      [@@js.call "emit"]

    val emit''''''''''
      :  t
      -> event:([ `streamClosed ][@js.enum])
      -> code:int
      -> bool
      [@@js.call "emit"]

    val emit''''''''''' : t -> event:([ `timeout ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit''''''''''''
      :  t
      -> event:([ `trailers ][@js.enum])
      -> trailers:http2_IncomingHttpHeaders
      -> flags:int
      -> bool
      [@@js.call "emit"]

    val emit''''''''''''' : t -> event:([ `wantTrailers ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit''''''''''''''
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val on : t -> event:([ `aborted ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "on"]

    val on' : t -> event:([ `close ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(chunk:Buffer.t or_string -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "on"]

    val on''''''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''
      :  t
      -> event:([ `frameError ][@js.enum])
      -> listener:(frameType:int -> errorCode:int -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''
      :  t
      -> event:([ `streamClosed ][@js.enum])
      -> listener:(code:int -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''''
      :  t
      -> event:([ `trailers ][@js.enum])
      -> listener:(trailers:http2_IncomingHttpHeaders -> flags:int -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''''
      :  t
      -> event:([ `wantTrailers ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val once
      :  t
      -> event:([ `aborted ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(chunk:Buffer.t or_string -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "once"]

    val once''''''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''
      :  t
      -> event:([ `frameError ][@js.enum])
      -> listener:(frameType:int -> errorCode:int -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''
      :  t
      -> event:([ `streamClosed ][@js.enum])
      -> listener:(code:int -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''''
      :  t
      -> event:([ `trailers ][@js.enum])
      -> listener:(trailers:http2_IncomingHttpHeaders -> flags:int -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''''
      :  t
      -> event:([ `wantTrailers ][@js.enum])
      -> listener:(unit -> unit)
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
      -> event:([ `aborted ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(chunk:Buffer.t or_string -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''
      :  t
      -> event:([ `frameError ][@js.enum])
      -> listener:(frameType:int -> errorCode:int -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''''
      :  t
      -> event:([ `streamClosed ][@js.enum])
      -> listener:(code:int -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''''''
      :  t
      -> event:([ `trailers ][@js.enum])
      -> listener:(trailers:http2_IncomingHttpHeaders -> flags:int -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''''''''
      :  t
      -> event:([ `wantTrailers ][@js.enum])
      -> listener:(unit -> unit)
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
      -> event:([ `aborted ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(chunk:Buffer.t or_string -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''
      :  t
      -> event:([ `frameError ][@js.enum])
      -> listener:(frameType:int -> errorCode:int -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''''
      :  t
      -> event:([ `streamClosed ][@js.enum])
      -> listener:(code:int -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''''''
      :  t
      -> event:([ `trailers ][@js.enum])
      -> listener:(trailers:http2_IncomingHttpHeaders -> flags:int -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''''''''
      :  t
      -> event:([ `wantTrailers ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> Stream.Duplex.t [@@js.cast]
  end
  [@@js.scope "Http2Stream"]

  module ClientHttp2Stream : sig
    type t = http2_ClientHttp2Stream

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val addListener
      :  t
      -> event:([ `continue ][@js.enum])
      -> listener:(unit -> anonymous_interface_0)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `headers ][@js.enum])
      -> listener:
           (headers:
              ( http2_IncomingHttpHeaders
              , http2_IncomingHttpStatusHeader )
              intersection2
            -> flags:int
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:([ `push ][@js.enum])
      -> listener:(headers:http2_IncomingHttpHeaders -> flags:int -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:([ `response ][@js.enum])
      -> listener:
           (headers:
              ( http2_IncomingHttpHeaders
              , http2_IncomingHttpStatusHeader )
              intersection2
            -> flags:int
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val emit : t -> event:([ `continue ][@js.enum]) -> bool [@@js.call "emit"]

    val emit'
      :  t
      -> event:([ `headers ][@js.enum])
      -> headers:
           ( http2_IncomingHttpHeaders
           , http2_IncomingHttpStatusHeader )
           intersection2
      -> flags:int
      -> bool
      [@@js.call "emit"]

    val emit''
      :  t
      -> event:([ `push ][@js.enum])
      -> headers:http2_IncomingHttpHeaders
      -> flags:int
      -> bool
      [@@js.call "emit"]

    val emit'''
      :  t
      -> event:([ `response ][@js.enum])
      -> headers:
           ( http2_IncomingHttpHeaders
           , http2_IncomingHttpStatusHeader )
           intersection2
      -> flags:int
      -> bool
      [@@js.call "emit"]

    val emit''''
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val on
      :  t
      -> event:([ `continue ][@js.enum])
      -> listener:(unit -> anonymous_interface_0)
      -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `headers ][@js.enum])
      -> listener:
           (headers:
              ( http2_IncomingHttpHeaders
              , http2_IncomingHttpStatusHeader )
              intersection2
            -> flags:int
            -> unit)
      -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `push ][@js.enum])
      -> listener:(headers:http2_IncomingHttpHeaders -> flags:int -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `response ][@js.enum])
      -> listener:
           (headers:
              ( http2_IncomingHttpHeaders
              , http2_IncomingHttpStatusHeader )
              intersection2
            -> flags:int
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val once
      :  t
      -> event:([ `continue ][@js.enum])
      -> listener:(unit -> anonymous_interface_0)
      -> t
      [@@js.call "once"]

    val once'
      :  t
      -> event:([ `headers ][@js.enum])
      -> listener:
           (headers:
              ( http2_IncomingHttpHeaders
              , http2_IncomingHttpStatusHeader )
              intersection2
            -> flags:int
            -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `push ][@js.enum])
      -> listener:(headers:http2_IncomingHttpHeaders -> flags:int -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `response ][@js.enum])
      -> listener:
           (headers:
              ( http2_IncomingHttpHeaders
              , http2_IncomingHttpStatusHeader )
              intersection2
            -> flags:int
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "once"]

    val prependListener
      :  t
      -> event:([ `continue ][@js.enum])
      -> listener:(unit -> anonymous_interface_0)
      -> t
      [@@js.call "prependListener"]

    val prependListener'
      :  t
      -> event:([ `headers ][@js.enum])
      -> listener:
           (headers:
              ( http2_IncomingHttpHeaders
              , http2_IncomingHttpStatusHeader )
              intersection2
            -> flags:int
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:([ `push ][@js.enum])
      -> listener:(headers:http2_IncomingHttpHeaders -> flags:int -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
      :  t
      -> event:([ `response ][@js.enum])
      -> listener:
           (headers:
              ( http2_IncomingHttpHeaders
              , http2_IncomingHttpStatusHeader )
              intersection2
            -> flags:int
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependOnceListener
      :  t
      -> event:([ `continue ][@js.enum])
      -> listener:(unit -> anonymous_interface_0)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'
      :  t
      -> event:([ `headers ][@js.enum])
      -> listener:
           (headers:
              ( http2_IncomingHttpHeaders
              , http2_IncomingHttpStatusHeader )
              intersection2
            -> flags:int
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:([ `push ][@js.enum])
      -> listener:(headers:http2_IncomingHttpHeaders -> flags:int -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:([ `response ][@js.enum])
      -> listener:
           (headers:
              ( http2_IncomingHttpHeaders
              , http2_IncomingHttpStatusHeader )
              intersection2
            -> flags:int
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> http2_Http2Stream [@@js.cast]
  end
  [@@js.scope "ClientHttp2Stream"]

  module ServerHttp2Stream : sig
    type t = http2_ServerHttp2Stream

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_headersSent : t -> bool [@@js.get "headersSent"]

    val get_pushAllowed : t -> bool [@@js.get "pushAllowed"]

    val additionalHeaders
      :  t
      -> headers:Node_http.Http.OutgoingHttpHeaders.t
      -> unit
      [@@js.call "additionalHeaders"]

    val pushStream
      :  t
      -> headers:Node_http.Http.OutgoingHttpHeaders.t
      -> ?callback:
           (err:Error.t or_null
            -> pushStream:t
            -> headers:Node_http.Http.OutgoingHttpHeaders.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "pushStream"]

    val pushStream'
      :  t
      -> headers:Node_http.Http.OutgoingHttpHeaders.t
      -> ?options:http2_StreamPriorityOptions
      -> ?callback:
           (err:Error.t or_null
            -> pushStream:t
            -> headers:Node_http.Http.OutgoingHttpHeaders.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "pushStream"]

    val respond
      :  t
      -> ?headers:Node_http.Http.OutgoingHttpHeaders.t
      -> ?options:http2_ServerStreamResponseOptions
      -> unit
      -> unit
      [@@js.call "respond"]

    val respondWithFD
      :  t
      -> fd:Fs_promises.FileHandle.t or_number
      -> ?headers:Node_http.Http.OutgoingHttpHeaders.t
      -> ?options:http2_ServerStreamFileResponseOptions
      -> unit
      -> unit
      [@@js.call "respondWithFD"]

    val respondWithFile
      :  t
      -> path:string
      -> ?headers:Node_http.Http.OutgoingHttpHeaders.t
      -> ?options:http2_ServerStreamFileResponseOptionsWithError
      -> unit
      -> unit
      [@@js.call "respondWithFile"]

    val cast : t -> http2_Http2Stream [@@js.cast]
  end
  [@@js.scope "ServerHttp2Stream"]

  module Settings : sig
    type t = http2_Settings

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_headerTableSize : t -> int [@@js.get "headerTableSize"]

    val set_headerTableSize : t -> int -> unit [@@js.set "headerTableSize"]

    val get_enablePush : t -> bool [@@js.get "enablePush"]

    val set_enablePush : t -> bool -> unit [@@js.set "enablePush"]

    val get_initialWindowSize : t -> int [@@js.get "initialWindowSize"]

    val set_initialWindowSize : t -> int -> unit
      [@@js.set "initialWindowSize"]

    val get_maxFrameSize : t -> int [@@js.get "maxFrameSize"]

    val set_maxFrameSize : t -> int -> unit [@@js.set "maxFrameSize"]

    val get_maxConcurrentStreams : t -> int [@@js.get "maxConcurrentStreams"]

    val set_maxConcurrentStreams : t -> int -> unit
      [@@js.set "maxConcurrentStreams"]

    val get_maxHeaderListSize : t -> int [@@js.get "maxHeaderListSize"]

    val set_maxHeaderListSize : t -> int -> unit
      [@@js.set "maxHeaderListSize"]

    val get_enableConnectProtocol : t -> bool [@@js.get "enableConnectProtocol"]

    val set_enableConnectProtocol : t -> bool -> unit
      [@@js.set "enableConnectProtocol"]
  end
  [@@js.scope "Settings"]

  module ClientSessionRequestOptions : sig
    type t = http2_ClientSessionRequestOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_endStream : t -> bool [@@js.get "endStream"]

    val set_endStream : t -> bool -> unit [@@js.set "endStream"]

    val get_exclusive : t -> bool [@@js.get "exclusive"]

    val set_exclusive : t -> bool -> unit [@@js.set "exclusive"]

    val get_parent : t -> int [@@js.get "parent"]

    val set_parent : t -> int -> unit [@@js.set "parent"]

    val get_weight : t -> int [@@js.get "weight"]

    val set_weight : t -> int -> unit [@@js.set "weight"]

    val get_waitForTrailers : t -> bool [@@js.get "waitForTrailers"]

    val set_waitForTrailers : t -> bool -> unit [@@js.set "waitForTrailers"]
  end
  [@@js.scope "ClientSessionRequestOptions"]

  module SessionState : sig
    type t = http2_SessionState

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_effectiveLocalWindowSize : t -> int
      [@@js.get "effectiveLocalWindowSize"]

    val set_effectiveLocalWindowSize : t -> int -> unit
      [@@js.set "effectiveLocalWindowSize"]

    val get_effectiveRecvDataLength : t -> int
      [@@js.get "effectiveRecvDataLength"]

    val set_effectiveRecvDataLength : t -> int -> unit
      [@@js.set "effectiveRecvDataLength"]

    val get_nextStreamID : t -> int [@@js.get "nextStreamID"]

    val set_nextStreamID : t -> int -> unit [@@js.set "nextStreamID"]

    val get_localWindowSize : t -> int [@@js.get "localWindowSize"]

    val set_localWindowSize : t -> int -> unit [@@js.set "localWindowSize"]

    val get_lastProcStreamID : t -> int [@@js.get "lastProcStreamID"]

    val set_lastProcStreamID : t -> int -> unit [@@js.set "lastProcStreamID"]

    val get_remoteWindowSize : t -> int [@@js.get "remoteWindowSize"]

    val set_remoteWindowSize : t -> int -> unit [@@js.set "remoteWindowSize"]

    val get_outboundQueueSize : t -> int [@@js.get "outboundQueueSize"]

    val set_outboundQueueSize : t -> int -> unit
      [@@js.set "outboundQueueSize"]

    val get_deflateDynamicTableSize : t -> int
      [@@js.get "deflateDynamicTableSize"]

    val set_deflateDynamicTableSize : t -> int -> unit
      [@@js.set "deflateDynamicTableSize"]

    val get_inflateDynamicTableSize : t -> int
      [@@js.get "inflateDynamicTableSize"]

    val set_inflateDynamicTableSize : t -> int -> unit
      [@@js.set "inflateDynamicTableSize"]
  end
  [@@js.scope "SessionState"]

  module Http2Session : sig
    type t = http2_Http2Session

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_alpnProtocol : t -> string [@@js.get "alpnProtocol"]

    val get_closed : t -> bool [@@js.get "closed"]

    val get_connecting : t -> bool [@@js.get "connecting"]

    val get_destroyed : t -> bool [@@js.get "destroyed"]

    val get_encrypted : t -> bool [@@js.get "encrypted"]

    val get_localSettings : t -> http2_Settings [@@js.get "localSettings"]

    val get_originSet : t -> string list [@@js.get "originSet"]

    val get_pendingSettingsAck : t -> bool [@@js.get "pendingSettingsAck"]

    val get_remoteSettings : t -> http2_Settings [@@js.get "remoteSettings"]

    val get_socket : t -> (Net.Socket.t, Tls.TLSSocket.t) union2
      [@@js.get "socket"]

    val get_state : t -> http2_SessionState [@@js.get "state"]

    val get_type : t -> int [@@js.get "type"]

    val close : t -> ?callback:(unit -> unit) -> unit -> unit
      [@@js.call "close"]

    val destroy : t -> ?error:Error.t -> ?code:int -> unit -> unit
      [@@js.call "destroy"]

    val goaway
      :  t
      -> ?code:int
      -> ?lastStreamID:int
      -> ?opaqueData:ArrayBufferView.t
      -> unit
      -> unit
      [@@js.call "goaway"]

    val ping
      :  t
      -> callback:
           (err:Error.t or_null -> duration:int -> payload:Buffer.t -> unit)
      -> bool
      [@@js.call "ping"]

    val ping'
      :  t
      -> payload:ArrayBufferView.t
      -> callback:
           (err:Error.t or_null -> duration:int -> payload:Buffer.t -> unit)
      -> bool
      [@@js.call "ping"]

    val ref : t -> unit [@@js.call "ref"]

    val setLocalWindowSize : t -> windowSize:int -> unit
      [@@js.call "setLocalWindowSize"]

    val setTimeout
      :  t
      -> msecs:int
      -> ?callback:(unit -> unit)
      -> unit
      -> unit
      [@@js.call "setTimeout"]

    val settings : t -> settings:http2_Settings -> unit [@@js.call "settings"]

    val unref : t -> unit [@@js.call "unref"]

    val addListener
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:([ `frameError ][@js.enum])
      -> listener:(frameType:int -> errorCode:int -> streamID:int -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:([ `goaway ][@js.enum])
      -> listener:
           (errorCode:int
            -> lastStreamID:int
            -> opaqueData:Buffer.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''
      :  t
      -> event:([ `localSettings ][@js.enum])
      -> listener:(settings:http2_Settings -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''
      :  t
      -> event:([ `ping ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''
      :  t
      -> event:([ `remoteSettings ][@js.enum])
      -> listener:(settings:http2_Settings -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val emit : t -> event:([ `close ][@js.enum]) -> bool [@@js.call "emit"]

    val emit' : t -> event:([ `error ][@js.enum]) -> err:Error.t -> bool
      [@@js.call "emit"]

    val emit''
      :  t
      -> event:([ `frameError ][@js.enum])
      -> frameType:int
      -> errorCode:int
      -> streamID:int
      -> bool
      [@@js.call "emit"]

    val emit'''
      :  t
      -> event:([ `goaway ][@js.enum])
      -> errorCode:int
      -> lastStreamID:int
      -> opaqueData:Buffer.t
      -> bool
      [@@js.call "emit"]

    val emit''''
      :  t
      -> event:([ `localSettings ][@js.enum])
      -> settings:http2_Settings
      -> bool
      [@@js.call "emit"]

    val emit''''' : t -> event:([ `ping ][@js.enum]) -> bool [@@js.call "emit"]

    val emit''''''
      :  t
      -> event:([ `remoteSettings ][@js.enum])
      -> settings:http2_Settings
      -> bool
      [@@js.call "emit"]

    val emit''''''' : t -> event:([ `timeout ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit''''''''
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val on : t -> event:([ `close ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `frameError ][@js.enum])
      -> listener:(frameType:int -> errorCode:int -> streamID:int -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `goaway ][@js.enum])
      -> listener:
           (errorCode:int
            -> lastStreamID:int
            -> opaqueData:Buffer.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `localSettings ][@js.enum])
      -> listener:(settings:http2_Settings -> unit)
      -> t
      [@@js.call "on"]

    val on'''''
      :  t
      -> event:([ `ping ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''''''
      :  t
      -> event:([ `remoteSettings ][@js.enum])
      -> listener:(settings:http2_Settings -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val once : t -> event:([ `close ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "once"]

    val once'
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `frameError ][@js.enum])
      -> listener:(frameType:int -> errorCode:int -> streamID:int -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `goaway ][@js.enum])
      -> listener:
           (errorCode:int
            -> lastStreamID:int
            -> opaqueData:Buffer.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `localSettings ][@js.enum])
      -> listener:(settings:http2_Settings -> unit)
      -> t
      [@@js.call "once"]

    val once'''''
      :  t
      -> event:([ `ping ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''''''
      :  t
      -> event:([ `remoteSettings ][@js.enum])
      -> listener:(settings:http2_Settings -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "once"]

    val prependListener
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:([ `frameError ][@js.enum])
      -> listener:(frameType:int -> errorCode:int -> streamID:int -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
      :  t
      -> event:([ `goaway ][@js.enum])
      -> listener:
           (errorCode:int
            -> lastStreamID:int
            -> opaqueData:Buffer.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''
      :  t
      -> event:([ `localSettings ][@js.enum])
      -> listener:(settings:http2_Settings -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''
      :  t
      -> event:([ `ping ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''
      :  t
      -> event:([ `remoteSettings ][@js.enum])
      -> listener:(settings:http2_Settings -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependOnceListener
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:([ `frameError ][@js.enum])
      -> listener:(frameType:int -> errorCode:int -> streamID:int -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:([ `goaway ][@js.enum])
      -> listener:
           (errorCode:int
            -> lastStreamID:int
            -> opaqueData:Buffer.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''
      :  t
      -> event:([ `localSettings ][@js.enum])
      -> listener:(settings:http2_Settings -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''
      :  t
      -> event:([ `ping ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''
      :  t
      -> event:([ `remoteSettings ][@js.enum])
      -> listener:(settings:http2_Settings -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> Node_events.Events.EventEmitter.t [@@js.cast]
  end
  [@@js.scope "Http2Session"]

  module ClientHttp2Session : sig
    type t = http2_ClientHttp2Session

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val request
      :  t
      -> ?headers:Node_http.Http.OutgoingHttpHeaders.t
      -> ?options:http2_ClientSessionRequestOptions
      -> unit
      -> http2_ClientHttp2Stream
      [@@js.call "request"]

    val addListener
      :  t
      -> event:([ `altsvc ][@js.enum])
      -> listener:(alt:string -> origin:string -> stream:int -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `origin ][@js.enum])
      -> listener:(origins:string list -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (session:t -> socket:(Net.Socket.t, Tls.TLSSocket.t) union2 -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ClientHttp2Stream
            -> headers:
                 ( http2_IncomingHttpHeaders
                 , http2_IncomingHttpStatusHeader )
                 intersection2
            -> flags:int
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val emit
      :  t
      -> event:([ `altsvc ][@js.enum])
      -> alt:string
      -> origin:string
      -> stream:int
      -> bool
      [@@js.call "emit"]

    val emit'
      :  t
      -> event:([ `origin ][@js.enum])
      -> origins:string list
      -> bool
      [@@js.call "emit"]

    val emit''
      :  t
      -> event:([ `connect ][@js.enum])
      -> session:t
      -> socket:(Net.Socket.t, Tls.TLSSocket.t) union2
      -> bool
      [@@js.call "emit"]

    val emit'''
      :  t
      -> event:([ `stream ][@js.enum])
      -> stream:http2_ClientHttp2Stream
      -> headers:
           ( http2_IncomingHttpHeaders
           , http2_IncomingHttpStatusHeader )
           intersection2
      -> flags:int
      -> bool
      [@@js.call "emit"]

    val emit''''
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val on
      :  t
      -> event:([ `altsvc ][@js.enum])
      -> listener:(alt:string -> origin:string -> stream:int -> unit)
      -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `origin ][@js.enum])
      -> listener:(origins:string list -> unit)
      -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (session:t -> socket:(Net.Socket.t, Tls.TLSSocket.t) union2 -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ClientHttp2Stream
            -> headers:
                 ( http2_IncomingHttpHeaders
                 , http2_IncomingHttpStatusHeader )
                 intersection2
            -> flags:int
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val once
      :  t
      -> event:([ `altsvc ][@js.enum])
      -> listener:(alt:string -> origin:string -> stream:int -> unit)
      -> t
      [@@js.call "once"]

    val once'
      :  t
      -> event:([ `origin ][@js.enum])
      -> listener:(origins:string list -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (session:t -> socket:(Net.Socket.t, Tls.TLSSocket.t) union2 -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ClientHttp2Stream
            -> headers:
                 ( http2_IncomingHttpHeaders
                 , http2_IncomingHttpStatusHeader )
                 intersection2
            -> flags:int
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "once"]

    val prependListener
      :  t
      -> event:([ `altsvc ][@js.enum])
      -> listener:(alt:string -> origin:string -> stream:int -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'
      :  t
      -> event:([ `origin ][@js.enum])
      -> listener:(origins:string list -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (session:t -> socket:(Net.Socket.t, Tls.TLSSocket.t) union2 -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ClientHttp2Stream
            -> headers:
                 ( http2_IncomingHttpHeaders
                 , http2_IncomingHttpStatusHeader )
                 intersection2
            -> flags:int
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependOnceListener
      :  t
      -> event:([ `altsvc ][@js.enum])
      -> listener:(alt:string -> origin:string -> stream:int -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'
      :  t
      -> event:([ `origin ][@js.enum])
      -> listener:(origins:string list -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (session:t -> socket:(Net.Socket.t, Tls.TLSSocket.t) union2 -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ClientHttp2Stream
            -> headers:
                 ( http2_IncomingHttpHeaders
                 , http2_IncomingHttpStatusHeader )
                 intersection2
            -> flags:int
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> http2_Http2Session [@@js.cast]
  end
  [@@js.scope "ClientHttp2Session"]

  module AlternativeServiceOptions : sig
    type t = http2_AlternativeServiceOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_origin : t -> Url.URL.t or_string or_number [@@js.get "origin"]

    val set_origin : t -> Url.URL.t or_string or_number -> unit
      [@@js.set "origin"]
  end
  [@@js.scope "AlternativeServiceOptions"]

  module ServerHttp2Session : sig
    type t = http2_ServerHttp2Session

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_server : t -> (http2_Http2SecureServer, http2_Http2Server) union2
      [@@js.get "server"]

    val altsvc
      :  t
      -> alt:string
      -> originOrStream:
           (http2_AlternativeServiceOptions, Url.URL.t) union2 or_string
           or_number
      -> unit
      [@@js.call "altsvc"]

    val origin
      :  t
      -> args:
           (* FIXME: type 'Array<union<String | ?url.URL | {..}>>' cannot be
              used for variadic argument *) (any list[@js.variadic])
      -> unit
      [@@js.call "origin"]

    val addListener
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (session:t -> socket:(Net.Socket.t, Tls.TLSSocket.t) union2 -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val emit
      :  t
      -> event:([ `connect ][@js.enum])
      -> session:t
      -> socket:(Net.Socket.t, Tls.TLSSocket.t) union2
      -> bool
      [@@js.call "emit"]

    val emit'
      :  t
      -> event:([ `stream ][@js.enum])
      -> stream:http2_ServerHttp2Stream
      -> headers:http2_IncomingHttpHeaders
      -> flags:int
      -> bool
      [@@js.call "emit"]

    val emit''
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val on
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (session:t -> socket:(Net.Socket.t, Tls.TLSSocket.t) union2 -> unit)
      -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val once
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (session:t -> socket:(Net.Socket.t, Tls.TLSSocket.t) union2 -> unit)
      -> t
      [@@js.call "once"]

    val once'
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "once"]

    val prependListener
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (session:t -> socket:(Net.Socket.t, Tls.TLSSocket.t) union2 -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependOnceListener
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (session:t -> socket:(Net.Socket.t, Tls.TLSSocket.t) union2 -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> http2_Http2Session [@@js.cast]
  end
  [@@js.scope "ServerHttp2Session"]

  module SessionOptions : sig
    type t = http2_SessionOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_maxDeflateDynamicTableSize : t -> int
      [@@js.get "maxDeflateDynamicTableSize"]

    val set_maxDeflateDynamicTableSize : t -> int -> unit
      [@@js.set "maxDeflateDynamicTableSize"]

    val get_maxSessionMemory : t -> int [@@js.get "maxSessionMemory"]

    val set_maxSessionMemory : t -> int -> unit [@@js.set "maxSessionMemory"]

    val get_maxHeaderListPairs : t -> int [@@js.get "maxHeaderListPairs"]

    val set_maxHeaderListPairs : t -> int -> unit
      [@@js.set "maxHeaderListPairs"]

    val get_maxOutstandingPings : t -> int [@@js.get "maxOutstandingPings"]

    val set_maxOutstandingPings : t -> int -> unit
      [@@js.set "maxOutstandingPings"]

    val get_maxSendHeaderBlockLength : t -> int
      [@@js.get "maxSendHeaderBlockLength"]

    val set_maxSendHeaderBlockLength : t -> int -> unit
      [@@js.set "maxSendHeaderBlockLength"]

    val get_paddingStrategy : t -> int [@@js.get "paddingStrategy"]

    val set_paddingStrategy : t -> int -> unit [@@js.set "paddingStrategy"]

    val get_peerMaxConcurrentStreams : t -> int
      [@@js.get "peerMaxConcurrentStreams"]

    val set_peerMaxConcurrentStreams : t -> int -> unit
      [@@js.set "peerMaxConcurrentStreams"]

    val get_settings : t -> http2_Settings [@@js.get "settings"]

    val set_settings : t -> http2_Settings -> unit [@@js.set "settings"]

    val selectPadding : t -> frameLen:int -> maxFrameLen:int -> int
      [@@js.call "selectPadding"]

    val createConnection
      :  t
      -> authority:Url.URL.t
      -> option:t
      -> Stream.Duplex.t
      [@@js.call "createConnection"]
  end
  [@@js.scope "SessionOptions"]

  module ClientSessionOptions : sig
    type t = http2_ClientSessionOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_maxReservedRemoteStreams : t -> int
      [@@js.get "maxReservedRemoteStreams"]

    val set_maxReservedRemoteStreams : t -> int -> unit
      [@@js.set "maxReservedRemoteStreams"]

    val createConnection
      :  t
      -> authority:Url.URL.t
      -> option:http2_SessionOptions
      -> Stream.Duplex.t
      [@@js.call "createConnection"]

    val get_protocol
      :  t
      -> ([ `http_ [@js "http:"] | `https_ [@js "https:"] ][@js.enum])
      [@@js.get "protocol"]

    val set_protocol : t -> ([ `http_ | `https_ ][@js.enum]) -> unit
      [@@js.set "protocol"]

    val cast : t -> http2_SessionOptions [@@js.cast]
  end
  [@@js.scope "ClientSessionOptions"]

  module ServerSessionOptions : sig
    type t = http2_ServerSessionOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_Http1IncomingMessage
      :  t
      -> (* FIXME: unknown type 'typeof IncomingMessage' *) any
      [@@js.get "Http1IncomingMessage"]

    val set_Http1IncomingMessage
      :  t
      -> (* FIXME: unknown type 'typeof IncomingMessage' *) any
      -> unit
      [@@js.set "Http1IncomingMessage"]

    val get_Http1ServerResponse
      :  t
      -> (* FIXME: unknown type 'typeof ServerResponse' *) any
      [@@js.get "Http1ServerResponse"]

    val set_Http1ServerResponse
      :  t
      -> (* FIXME: unknown type 'typeof ServerResponse' *) any
      -> unit
      [@@js.set "Http1ServerResponse"]

    val get_Http2ServerRequest
      :  t
      -> (* FIXME: unknown type 'typeof Http2ServerRequest' *) any
      [@@js.get "Http2ServerRequest"]

    val set_Http2ServerRequest
      :  t
      -> (* FIXME: unknown type 'typeof Http2ServerRequest' *) any
      -> unit
      [@@js.set "Http2ServerRequest"]

    val get_Http2ServerResponse
      :  t
      -> (* FIXME: unknown type 'typeof Http2ServerResponse' *) any
      [@@js.get "Http2ServerResponse"]

    val set_Http2ServerResponse
      :  t
      -> (* FIXME: unknown type 'typeof Http2ServerResponse' *) any
      -> unit
      [@@js.set "Http2ServerResponse"]

    val cast : t -> http2_SessionOptions [@@js.cast]
  end
  [@@js.scope "ServerSessionOptions"]

  module SecureClientSessionOptions : sig
    type t = http2_SecureClientSessionOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> http2_ClientSessionOptions [@@js.cast]

    val cast' : t -> Tls.ConnectionOptions.t [@@js.cast]
  end
  [@@js.scope "SecureClientSessionOptions"]

  module SecureServerSessionOptions : sig
    type t = http2_SecureServerSessionOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> http2_ServerSessionOptions [@@js.cast]

    val cast' : t -> Tls.TlsOptions.t [@@js.cast]
  end
  [@@js.scope "SecureServerSessionOptions"]

  module ServerOptions : sig
    type t = http2_ServerOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> http2_ServerSessionOptions [@@js.cast]
  end
  [@@js.scope "ServerOptions"]

  module SecureServerOptions : sig
    type t = http2_SecureServerOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_allowHTTP1 : t -> bool [@@js.get "allowHTTP1"]

    val set_allowHTTP1 : t -> bool -> unit [@@js.set "allowHTTP1"]

    val get_origins : t -> string list [@@js.get "origins"]

    val set_origins : t -> string list -> unit [@@js.set "origins"]

    val cast : t -> http2_SecureServerSessionOptions [@@js.cast]
  end
  [@@js.scope "SecureServerOptions"]

  module Http2Server : sig
    type t = http2_Http2Server

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val addListener
      :  t
      -> event:([ `checkContinue ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `request ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:http2_ServerHttp2Session -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:([ `sessionError ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val emit
      :  t
      -> event:([ `checkContinue ][@js.enum])
      -> request:http2_Http2ServerRequest
      -> response:http2_Http2ServerResponse
      -> bool
      [@@js.call "emit"]

    val emit'
      :  t
      -> event:([ `request ][@js.enum])
      -> request:http2_Http2ServerRequest
      -> response:http2_Http2ServerResponse
      -> bool
      [@@js.call "emit"]

    val emit''
      :  t
      -> event:([ `session ][@js.enum])
      -> session:http2_ServerHttp2Session
      -> bool
      [@@js.call "emit"]

    val emit'''
      :  t
      -> event:([ `sessionError ][@js.enum])
      -> err:Error.t
      -> bool
      [@@js.call "emit"]

    val emit''''
      :  t
      -> event:([ `stream ][@js.enum])
      -> stream:http2_ServerHttp2Stream
      -> headers:http2_IncomingHttpHeaders
      -> flags:int
      -> bool
      [@@js.call "emit"]

    val emit''''' : t -> event:([ `timeout ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit''''''
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val on
      :  t
      -> event:([ `checkContinue ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `request ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:http2_ServerHttp2Session -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `sessionError ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val once
      :  t
      -> event:([ `checkContinue ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "once"]

    val once'
      :  t
      -> event:([ `request ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:http2_ServerHttp2Session -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `sessionError ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "once"]

    val prependListener
      :  t
      -> event:([ `checkContinue ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'
      :  t
      -> event:([ `request ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:http2_ServerHttp2Session -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
      :  t
      -> event:([ `sessionError ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependOnceListener
      :  t
      -> event:([ `checkContinue ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'
      :  t
      -> event:([ `request ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:http2_ServerHttp2Session -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:([ `sessionError ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val setTimeout : t -> ?msec:int -> ?callback:(unit -> unit) -> unit -> t
      [@@js.call "setTimeout"]

    val cast : t -> Net.Server.t [@@js.cast]
  end
  [@@js.scope "Http2Server"]

  module Http2SecureServer : sig
    type t = http2_Http2SecureServer

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val addListener
      :  t
      -> event:([ `checkContinue ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `request ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:http2_ServerHttp2Session -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:([ `sessionError ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''
      :  t
      -> event:([ `unknownProtocol ][@js.enum])
      -> listener:(socket:Tls.TLSSocket.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val emit
      :  t
      -> event:([ `checkContinue ][@js.enum])
      -> request:http2_Http2ServerRequest
      -> response:http2_Http2ServerResponse
      -> bool
      [@@js.call "emit"]

    val emit'
      :  t
      -> event:([ `request ][@js.enum])
      -> request:http2_Http2ServerRequest
      -> response:http2_Http2ServerResponse
      -> bool
      [@@js.call "emit"]

    val emit''
      :  t
      -> event:([ `session ][@js.enum])
      -> session:http2_ServerHttp2Session
      -> bool
      [@@js.call "emit"]

    val emit'''
      :  t
      -> event:([ `sessionError ][@js.enum])
      -> err:Error.t
      -> bool
      [@@js.call "emit"]

    val emit''''
      :  t
      -> event:([ `stream ][@js.enum])
      -> stream:http2_ServerHttp2Stream
      -> headers:http2_IncomingHttpHeaders
      -> flags:int
      -> bool
      [@@js.call "emit"]

    val emit''''' : t -> event:([ `timeout ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit''''''
      :  t
      -> event:([ `unknownProtocol ][@js.enum])
      -> socket:Tls.TLSSocket.t
      -> bool
      [@@js.call "emit"]

    val emit'''''''
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val on
      :  t
      -> event:([ `checkContinue ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `request ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:http2_ServerHttp2Session -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `sessionError ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''''''
      :  t
      -> event:([ `unknownProtocol ][@js.enum])
      -> listener:(socket:Tls.TLSSocket.t -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val once
      :  t
      -> event:([ `checkContinue ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "once"]

    val once'
      :  t
      -> event:([ `request ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:http2_ServerHttp2Session -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `sessionError ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''''''
      :  t
      -> event:([ `unknownProtocol ][@js.enum])
      -> listener:(socket:Tls.TLSSocket.t -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "once"]

    val prependListener
      :  t
      -> event:([ `checkContinue ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'
      :  t
      -> event:([ `request ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:http2_ServerHttp2Session -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
      :  t
      -> event:([ `sessionError ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''
      :  t
      -> event:([ `unknownProtocol ][@js.enum])
      -> listener:(socket:Tls.TLSSocket.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependOnceListener
      :  t
      -> event:([ `checkContinue ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'
      :  t
      -> event:([ `request ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:http2_ServerHttp2Session -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:([ `sessionError ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''
      :  t
      -> event:([ `unknownProtocol ][@js.enum])
      -> listener:(socket:Tls.TLSSocket.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val setTimeout : t -> ?msec:int -> ?callback:(unit -> unit) -> unit -> t
      [@@js.call "setTimeout"]

    val cast : t -> Tls.Server.t [@@js.cast]
  end
  [@@js.scope "Http2SecureServer"]

  module Http2ServerRequest : sig
    type t = http2_Http2ServerRequest

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create
      :  stream:http2_ServerHttp2Stream
      -> headers:http2_IncomingHttpHeaders
      -> options:Stream.ReadableOptions.t
      -> rawHeaders:string list
      -> t
      [@@js.create]

    val get_aborted : t -> bool [@@js.get "aborted"]

    val get_authority : t -> string [@@js.get "authority"]

    val get_connection : t -> (Net.Socket.t, Tls.TLSSocket.t) union2
      [@@js.get "connection"]

    val get_complete : t -> bool [@@js.get "complete"]

    val get_headers : t -> http2_IncomingHttpHeaders [@@js.get "headers"]

    val get_httpVersion : t -> string [@@js.get "httpVersion"]

    val get_httpVersionMinor : t -> int [@@js.get "httpVersionMinor"]

    val get_httpVersionMajor : t -> int [@@js.get "httpVersionMajor"]

    val get_method : t -> string [@@js.get "method"]

    val get_rawHeaders : t -> string list [@@js.get "rawHeaders"]

    val get_rawTrailers : t -> string list [@@js.get "rawTrailers"]

    val get_scheme : t -> string [@@js.get "scheme"]

    val get_socket : t -> (Net.Socket.t, Tls.TLSSocket.t) union2
      [@@js.get "socket"]

    val get_stream : t -> http2_ServerHttp2Stream [@@js.get "stream"]

    val get_trailers : t -> http2_IncomingHttpHeaders [@@js.get "trailers"]

    val get_url : t -> string [@@js.get "url"]

    val setTimeout
      :  t
      -> msecs:int
      -> ?callback:(unit -> unit)
      -> unit
      -> unit
      [@@js.call "setTimeout"]

    val read : t -> ?size:int -> unit -> Buffer.t or_string or_null
      [@@js.call "read"]

    val addListener
      :  t
      -> event:([ `aborted ][@js.enum])
      -> listener:(hadError:bool -> code:int -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(chunk:Buffer.t or_string -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''
      :  t
      -> event:([ `readable ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val emit
      :  t
      -> event:([ `aborted ][@js.enum])
      -> hadError:bool
      -> code:int
      -> bool
      [@@js.call "emit"]

    val emit' : t -> event:([ `close ][@js.enum]) -> bool [@@js.call "emit"]

    val emit''
      :  t
      -> event:([ `data ][@js.enum])
      -> chunk:Buffer.t or_string
      -> bool
      [@@js.call "emit"]

    val emit''' : t -> event:([ `end_ ][@js.enum]) -> bool [@@js.call "emit"]

    val emit'''' : t -> event:([ `readable ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit''''' : t -> event:([ `error ][@js.enum]) -> err:Error.t -> bool
      [@@js.call "emit"]

    val emit''''''
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val on
      :  t
      -> event:([ `aborted ][@js.enum])
      -> listener:(hadError:bool -> code:int -> unit)
      -> t
      [@@js.call "on"]

    val on' : t -> event:([ `close ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(chunk:Buffer.t or_string -> unit)
      -> t
      [@@js.call "on"]

    val on''' : t -> event:([ `end_ ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `readable ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "on"]

    val on''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val once
      :  t
      -> event:([ `aborted ][@js.enum])
      -> listener:(hadError:bool -> code:int -> unit)
      -> t
      [@@js.call "once"]

    val once'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(chunk:Buffer.t or_string -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `readable ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "once"]

    val once''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "once"]

    val prependListener
      :  t
      -> event:([ `aborted ][@js.enum])
      -> listener:(hadError:bool -> code:int -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(chunk:Buffer.t or_string -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''
      :  t
      -> event:([ `readable ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependOnceListener
      :  t
      -> event:([ `aborted ][@js.enum])
      -> listener:(hadError:bool -> code:int -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(chunk:Buffer.t or_string -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''
      :  t
      -> event:([ `readable ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> Stream.Readable.t [@@js.cast]
  end
  [@@js.scope "Http2ServerRequest"]

  module Http2ServerResponse : sig
    type t = http2_Http2ServerResponse

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : stream:http2_ServerHttp2Stream -> t [@@js.create]

    val get_connection : t -> (Net.Socket.t, Tls.TLSSocket.t) union2
      [@@js.get "connection"]

    val get_finished : t -> bool [@@js.get "finished"]

    val get_headersSent : t -> bool [@@js.get "headersSent"]

    val get_socket : t -> (Net.Socket.t, Tls.TLSSocket.t) union2
      [@@js.get "socket"]

    val get_stream : t -> http2_ServerHttp2Stream [@@js.get "stream"]

    val get_sendDate : t -> bool [@@js.get "sendDate"]

    val set_sendDate : t -> bool -> unit [@@js.set "sendDate"]

    val get_statusCode : t -> int [@@js.get "statusCode"]

    val set_statusCode : t -> int -> unit [@@js.set "statusCode"]

    val get_statusMessage : t -> ([ `L_s0 [@js ""] ][@js.enum])
      [@@js.get "statusMessage"]

    val set_statusMessage : t -> ([ `L_s0 ][@js.enum]) -> unit
      [@@js.set "statusMessage"]

    val addTrailers : t -> trailers:Node_http.Http.OutgoingHttpHeaders.t -> unit
      [@@js.call "addTrailers"]

    val end_ : t -> ?callback:(unit -> unit) -> unit -> unit [@@js.call "end"]

    val end_'
      :  t
      -> data:Uint8Array.t or_string
      -> ?callback:(unit -> unit)
      -> unit
      -> unit
      [@@js.call "end"]

    val end_''
      :  t
      -> data:Uint8Array.t or_string
      -> encoding:BufferEncoding.t
      -> ?callback:(unit -> unit)
      -> unit
      -> unit
      [@@js.call "end"]

    val getHeader : t -> name:string -> string [@@js.call "getHeader"]

    val getHeaderNames : t -> string list [@@js.call "getHeaderNames"]

    val getHeaders : t -> Node_http.Http.OutgoingHttpHeaders.t
      [@@js.call "getHeaders"]

    val hasHeader : t -> name:string -> bool [@@js.call "hasHeader"]

    val removeHeader : t -> name:string -> unit [@@js.call "removeHeader"]

    val setHeader
      :  t
      -> name:string
      -> value:string list or_string or_number
      -> unit
      [@@js.call "setHeader"]

    val setTimeout
      :  t
      -> msecs:int
      -> ?callback:(unit -> unit)
      -> unit
      -> unit
      [@@js.call "setTimeout"]

    val write
      :  t
      -> chunk:Uint8Array.t or_string
      -> ?callback:(err:Error.t -> unit)
      -> unit
      -> bool
      [@@js.call "write"]

    val write'
      :  t
      -> chunk:Uint8Array.t or_string
      -> encoding:BufferEncoding.t
      -> ?callback:(err:Error.t -> unit)
      -> unit
      -> bool
      [@@js.call "write"]

    val writeContinue : t -> unit [@@js.call "writeContinue"]

    val writeHead
      :  t
      -> statusCode:int
      -> ?headers:Node_http.Http.OutgoingHttpHeaders.t
      -> unit
      -> t
      [@@js.call "writeHead"]

    val writeHead'
      :  t
      -> statusCode:int
      -> statusMessage:string
      -> ?headers:Node_http.Http.OutgoingHttpHeaders.t
      -> unit
      -> t
      [@@js.call "writeHead"]

    val createPushResponse
      :  t
      -> headers:Node_http.Http.OutgoingHttpHeaders.t
      -> callback:(err:Error.t or_null -> res:t -> unit)
      -> unit
      [@@js.call "createPushResponse"]

    val addListener
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val emit : t -> event:([ `close ][@js.enum]) -> bool [@@js.call "emit"]

    val emit' : t -> event:([ `drain ][@js.enum]) -> bool [@@js.call "emit"]

    val emit'' : t -> event:([ `error ][@js.enum]) -> error:Error.t -> bool
      [@@js.call "emit"]

    val emit''' : t -> event:([ `finish ][@js.enum]) -> bool [@@js.call "emit"]

    val emit''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> src:Stream.Readable.t
      -> bool
      [@@js.call "emit"]

    val emit'''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> src:Stream.Readable.t
      -> bool
      [@@js.call "emit"]

    val emit''''''
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val on : t -> event:([ `close ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "on"]

    val on' : t -> event:([ `drain ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "on"]

    val on'''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "on"]

    val on''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val once : t -> event:([ `close ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "once"]

    val once'
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "once"]

    val once'''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "once"]

    val once''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "once"]

    val prependListener
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependOnceListener
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> Stream.Writable.t [@@js.cast]
  end
  [@@js.scope "Http2ServerResponse"]

  module Constants : sig
    val nGHTTP2_SESSION_SERVER : int [@@js.global "NGHTTP2_SESSION_SERVER"]

    val nGHTTP2_SESSION_CLIENT : int [@@js.global "NGHTTP2_SESSION_CLIENT"]

    val nGHTTP2_STREAM_STATE_IDLE : int
      [@@js.global "NGHTTP2_STREAM_STATE_IDLE"]

    val nGHTTP2_STREAM_STATE_OPEN : int
      [@@js.global "NGHTTP2_STREAM_STATE_OPEN"]

    val nGHTTP2_STREAM_STATE_RESERVED_LOCAL : int
      [@@js.global "NGHTTP2_STREAM_STATE_RESERVED_LOCAL"]

    val nGHTTP2_STREAM_STATE_RESERVED_REMOTE : int
      [@@js.global "NGHTTP2_STREAM_STATE_RESERVED_REMOTE"]

    val nGHTTP2_STREAM_STATE_HALF_CLOSED_LOCAL : int
      [@@js.global "NGHTTP2_STREAM_STATE_HALF_CLOSED_LOCAL"]

    val nGHTTP2_STREAM_STATE_HALF_CLOSED_REMOTE : int
      [@@js.global "NGHTTP2_STREAM_STATE_HALF_CLOSED_REMOTE"]

    val nGHTTP2_STREAM_STATE_CLOSED : int
      [@@js.global "NGHTTP2_STREAM_STATE_CLOSED"]

    val nGHTTP2_NO_ERROR : int [@@js.global "NGHTTP2_NO_ERROR"]

    val nGHTTP2_PROTOCOL_ERROR : int [@@js.global "NGHTTP2_PROTOCOL_ERROR"]

    val nGHTTP2_INTERNAL_ERROR : int [@@js.global "NGHTTP2_INTERNAL_ERROR"]

    val nGHTTP2_FLOW_CONTROL_ERROR : int
      [@@js.global "NGHTTP2_FLOW_CONTROL_ERROR"]

    val nGHTTP2_SETTINGS_TIMEOUT : int
      [@@js.global "NGHTTP2_SETTINGS_TIMEOUT"]

    val nGHTTP2_STREAM_CLOSED : int [@@js.global "NGHTTP2_STREAM_CLOSED"]

    val nGHTTP2_FRAME_SIZE_ERROR : int
      [@@js.global "NGHTTP2_FRAME_SIZE_ERROR"]

    val nGHTTP2_REFUSED_STREAM : int [@@js.global "NGHTTP2_REFUSED_STREAM"]

    val nGHTTP2_CANCEL : int [@@js.global "NGHTTP2_CANCEL"]

    val nGHTTP2_COMPRESSION_ERROR : int
      [@@js.global "NGHTTP2_COMPRESSION_ERROR"]

    val nGHTTP2_CONNECT_ERROR : int [@@js.global "NGHTTP2_CONNECT_ERROR"]

    val nGHTTP2_ENHANCE_YOUR_CALM : int
      [@@js.global "NGHTTP2_ENHANCE_YOUR_CALM"]

    val nGHTTP2_INADEQUATE_SECURITY : int
      [@@js.global "NGHTTP2_INADEQUATE_SECURITY"]

    val nGHTTP2_HTTP_1_1_REQUIRED : int
      [@@js.global "NGHTTP2_HTTP_1_1_REQUIRED"]

    val nGHTTP2_ERR_FRAME_SIZE_ERROR : int
      [@@js.global "NGHTTP2_ERR_FRAME_SIZE_ERROR"]

    val nGHTTP2_FLAG_NONE : int [@@js.global "NGHTTP2_FLAG_NONE"]

    val nGHTTP2_FLAG_END_STREAM : int [@@js.global "NGHTTP2_FLAG_END_STREAM"]

    val nGHTTP2_FLAG_END_HEADERS : int
      [@@js.global "NGHTTP2_FLAG_END_HEADERS"]

    val nGHTTP2_FLAG_ACK : int [@@js.global "NGHTTP2_FLAG_ACK"]

    val nGHTTP2_FLAG_PADDED : int [@@js.global "NGHTTP2_FLAG_PADDED"]

    val nGHTTP2_FLAG_PRIORITY : int [@@js.global "NGHTTP2_FLAG_PRIORITY"]

    val dEFAULT_SETTINGS_HEADER_TABLE_SIZE : int
      [@@js.global "DEFAULT_SETTINGS_HEADER_TABLE_SIZE"]

    val dEFAULT_SETTINGS_ENABLE_PUSH : int
      [@@js.global "DEFAULT_SETTINGS_ENABLE_PUSH"]

    val dEFAULT_SETTINGS_INITIAL_WINDOW_SIZE : int
      [@@js.global "DEFAULT_SETTINGS_INITIAL_WINDOW_SIZE"]

    val dEFAULT_SETTINGS_MAX_FRAME_SIZE : int
      [@@js.global "DEFAULT_SETTINGS_MAX_FRAME_SIZE"]

    val mAX_MAX_FRAME_SIZE : int [@@js.global "MAX_MAX_FRAME_SIZE"]

    val mIN_MAX_FRAME_SIZE : int [@@js.global "MIN_MAX_FRAME_SIZE"]

    val mAX_INITIAL_WINDOW_SIZE : int [@@js.global "MAX_INITIAL_WINDOW_SIZE"]

    val nGHTTP2_DEFAULT_WEIGHT : int [@@js.global "NGHTTP2_DEFAULT_WEIGHT"]

    val nGHTTP2_SETTINGS_HEADER_TABLE_SIZE : int
      [@@js.global "NGHTTP2_SETTINGS_HEADER_TABLE_SIZE"]

    val nGHTTP2_SETTINGS_ENABLE_PUSH : int
      [@@js.global "NGHTTP2_SETTINGS_ENABLE_PUSH"]

    val nGHTTP2_SETTINGS_MAX_CONCURRENT_STREAMS : int
      [@@js.global "NGHTTP2_SETTINGS_MAX_CONCURRENT_STREAMS"]

    val nGHTTP2_SETTINGS_INITIAL_WINDOW_SIZE : int
      [@@js.global "NGHTTP2_SETTINGS_INITIAL_WINDOW_SIZE"]

    val nGHTTP2_SETTINGS_MAX_FRAME_SIZE : int
      [@@js.global "NGHTTP2_SETTINGS_MAX_FRAME_SIZE"]

    val nGHTTP2_SETTINGS_MAX_HEADER_LIST_SIZE : int
      [@@js.global "NGHTTP2_SETTINGS_MAX_HEADER_LIST_SIZE"]

    val pADDING_STRATEGY_NONE : int [@@js.global "PADDING_STRATEGY_NONE"]

    val pADDING_STRATEGY_MAX : int [@@js.global "PADDING_STRATEGY_MAX"]

    val pADDING_STRATEGY_CALLBACK : int
      [@@js.global "PADDING_STRATEGY_CALLBACK"]

    val hTTP2_HEADER_STATUS : string [@@js.global "HTTP2_HEADER_STATUS"]

    val hTTP2_HEADER_METHOD : string [@@js.global "HTTP2_HEADER_METHOD"]

    val hTTP2_HEADER_AUTHORITY : string [@@js.global "HTTP2_HEADER_AUTHORITY"]

    val hTTP2_HEADER_SCHEME : string [@@js.global "HTTP2_HEADER_SCHEME"]

    val hTTP2_HEADER_PATH : string [@@js.global "HTTP2_HEADER_PATH"]

    val hTTP2_HEADER_ACCEPT_CHARSET : string
      [@@js.global "HTTP2_HEADER_ACCEPT_CHARSET"]

    val hTTP2_HEADER_ACCEPT_ENCODING : string
      [@@js.global "HTTP2_HEADER_ACCEPT_ENCODING"]

    val hTTP2_HEADER_ACCEPT_LANGUAGE : string
      [@@js.global "HTTP2_HEADER_ACCEPT_LANGUAGE"]

    val hTTP2_HEADER_ACCEPT_RANGES : string
      [@@js.global "HTTP2_HEADER_ACCEPT_RANGES"]

    val hTTP2_HEADER_ACCEPT : string [@@js.global "HTTP2_HEADER_ACCEPT"]

    val hTTP2_HEADER_ACCESS_CONTROL_ALLOW_ORIGIN : string
      [@@js.global "HTTP2_HEADER_ACCESS_CONTROL_ALLOW_ORIGIN"]

    val hTTP2_HEADER_AGE : string [@@js.global "HTTP2_HEADER_AGE"]

    val hTTP2_HEADER_ALLOW : string [@@js.global "HTTP2_HEADER_ALLOW"]

    val hTTP2_HEADER_AUTHORIZATION : string
      [@@js.global "HTTP2_HEADER_AUTHORIZATION"]

    val hTTP2_HEADER_CACHE_CONTROL : string
      [@@js.global "HTTP2_HEADER_CACHE_CONTROL"]

    val hTTP2_HEADER_CONNECTION : string [@@js.global "HTTP2_HEADER_CONNECTION"]

    val hTTP2_HEADER_CONTENT_DISPOSITION : string
      [@@js.global "HTTP2_HEADER_CONTENT_DISPOSITION"]

    val hTTP2_HEADER_CONTENT_ENCODING : string
      [@@js.global "HTTP2_HEADER_CONTENT_ENCODING"]

    val hTTP2_HEADER_CONTENT_LANGUAGE : string
      [@@js.global "HTTP2_HEADER_CONTENT_LANGUAGE"]

    val hTTP2_HEADER_CONTENT_LENGTH : string
      [@@js.global "HTTP2_HEADER_CONTENT_LENGTH"]

    val hTTP2_HEADER_CONTENT_LOCATION : string
      [@@js.global "HTTP2_HEADER_CONTENT_LOCATION"]

    val hTTP2_HEADER_CONTENT_MD5 : string
      [@@js.global "HTTP2_HEADER_CONTENT_MD5"]

    val hTTP2_HEADER_CONTENT_RANGE : string
      [@@js.global "HTTP2_HEADER_CONTENT_RANGE"]

    val hTTP2_HEADER_CONTENT_TYPE : string
      [@@js.global "HTTP2_HEADER_CONTENT_TYPE"]

    val hTTP2_HEADER_COOKIE : string [@@js.global "HTTP2_HEADER_COOKIE"]

    val hTTP2_HEADER_DATE : string [@@js.global "HTTP2_HEADER_DATE"]

    val hTTP2_HEADER_ETAG : string [@@js.global "HTTP2_HEADER_ETAG"]

    val hTTP2_HEADER_EXPECT : string [@@js.global "HTTP2_HEADER_EXPECT"]

    val hTTP2_HEADER_EXPIRES : string [@@js.global "HTTP2_HEADER_EXPIRES"]

    val hTTP2_HEADER_FROM : string [@@js.global "HTTP2_HEADER_FROM"]

    val hTTP2_HEADER_HOST : string [@@js.global "HTTP2_HEADER_HOST"]

    val hTTP2_HEADER_IF_MATCH : string [@@js.global "HTTP2_HEADER_IF_MATCH"]

    val hTTP2_HEADER_IF_MODIFIED_SINCE : string
      [@@js.global "HTTP2_HEADER_IF_MODIFIED_SINCE"]

    val hTTP2_HEADER_IF_NONE_MATCH : string
      [@@js.global "HTTP2_HEADER_IF_NONE_MATCH"]

    val hTTP2_HEADER_IF_RANGE : string [@@js.global "HTTP2_HEADER_IF_RANGE"]

    val hTTP2_HEADER_IF_UNMODIFIED_SINCE : string
      [@@js.global "HTTP2_HEADER_IF_UNMODIFIED_SINCE"]

    val hTTP2_HEADER_LAST_MODIFIED : string
      [@@js.global "HTTP2_HEADER_LAST_MODIFIED"]

    val hTTP2_HEADER_LINK : string [@@js.global "HTTP2_HEADER_LINK"]

    val hTTP2_HEADER_LOCATION : string [@@js.global "HTTP2_HEADER_LOCATION"]

    val hTTP2_HEADER_MAX_FORWARDS : string
      [@@js.global "HTTP2_HEADER_MAX_FORWARDS"]

    val hTTP2_HEADER_PREFER : string [@@js.global "HTTP2_HEADER_PREFER"]

    val hTTP2_HEADER_PROXY_AUTHENTICATE : string
      [@@js.global "HTTP2_HEADER_PROXY_AUTHENTICATE"]

    val hTTP2_HEADER_PROXY_AUTHORIZATION : string
      [@@js.global "HTTP2_HEADER_PROXY_AUTHORIZATION"]

    val hTTP2_HEADER_RANGE : string [@@js.global "HTTP2_HEADER_RANGE"]

    val hTTP2_HEADER_REFERER : string [@@js.global "HTTP2_HEADER_REFERER"]

    val hTTP2_HEADER_REFRESH : string [@@js.global "HTTP2_HEADER_REFRESH"]

    val hTTP2_HEADER_RETRY_AFTER : string
      [@@js.global "HTTP2_HEADER_RETRY_AFTER"]

    val hTTP2_HEADER_SERVER : string [@@js.global "HTTP2_HEADER_SERVER"]

    val hTTP2_HEADER_SET_COOKIE : string [@@js.global "HTTP2_HEADER_SET_COOKIE"]

    val hTTP2_HEADER_STRICT_TRANSPORT_SECURITY : string
      [@@js.global "HTTP2_HEADER_STRICT_TRANSPORT_SECURITY"]

    val hTTP2_HEADER_TRANSFER_ENCODING : string
      [@@js.global "HTTP2_HEADER_TRANSFER_ENCODING"]

    val hTTP2_HEADER_TE : string [@@js.global "HTTP2_HEADER_TE"]

    val hTTP2_HEADER_UPGRADE : string [@@js.global "HTTP2_HEADER_UPGRADE"]

    val hTTP2_HEADER_USER_AGENT : string [@@js.global "HTTP2_HEADER_USER_AGENT"]

    val hTTP2_HEADER_VARY : string [@@js.global "HTTP2_HEADER_VARY"]

    val hTTP2_HEADER_VIA : string [@@js.global "HTTP2_HEADER_VIA"]

    val hTTP2_HEADER_WWW_AUTHENTICATE : string
      [@@js.global "HTTP2_HEADER_WWW_AUTHENTICATE"]

    val hTTP2_HEADER_HTTP2_SETTINGS : string
      [@@js.global "HTTP2_HEADER_HTTP2_SETTINGS"]

    val hTTP2_HEADER_KEEP_ALIVE : string [@@js.global "HTTP2_HEADER_KEEP_ALIVE"]

    val hTTP2_HEADER_PROXY_CONNECTION : string
      [@@js.global "HTTP2_HEADER_PROXY_CONNECTION"]

    val hTTP2_METHOD_ACL : string [@@js.global "HTTP2_METHOD_ACL"]

    val hTTP2_METHOD_BASELINE_CONTROL : string
      [@@js.global "HTTP2_METHOD_BASELINE_CONTROL"]

    val hTTP2_METHOD_BIND : string [@@js.global "HTTP2_METHOD_BIND"]

    val hTTP2_METHOD_CHECKIN : string [@@js.global "HTTP2_METHOD_CHECKIN"]

    val hTTP2_METHOD_CHECKOUT : string [@@js.global "HTTP2_METHOD_CHECKOUT"]

    val hTTP2_METHOD_CONNECT : string [@@js.global "HTTP2_METHOD_CONNECT"]

    val hTTP2_METHOD_COPY : string [@@js.global "HTTP2_METHOD_COPY"]

    val hTTP2_METHOD_DELETE : string [@@js.global "HTTP2_METHOD_DELETE"]

    val hTTP2_METHOD_GET : string [@@js.global "HTTP2_METHOD_GET"]

    val hTTP2_METHOD_HEAD : string [@@js.global "HTTP2_METHOD_HEAD"]

    val hTTP2_METHOD_LABEL : string [@@js.global "HTTP2_METHOD_LABEL"]

    val hTTP2_METHOD_LINK : string [@@js.global "HTTP2_METHOD_LINK"]

    val hTTP2_METHOD_LOCK : string [@@js.global "HTTP2_METHOD_LOCK"]

    val hTTP2_METHOD_MERGE : string [@@js.global "HTTP2_METHOD_MERGE"]

    val hTTP2_METHOD_MKACTIVITY : string [@@js.global "HTTP2_METHOD_MKACTIVITY"]

    val hTTP2_METHOD_MKCALENDAR : string [@@js.global "HTTP2_METHOD_MKCALENDAR"]

    val hTTP2_METHOD_MKCOL : string [@@js.global "HTTP2_METHOD_MKCOL"]

    val hTTP2_METHOD_MKREDIRECTREF : string
      [@@js.global "HTTP2_METHOD_MKREDIRECTREF"]

    val hTTP2_METHOD_MKWORKSPACE : string
      [@@js.global "HTTP2_METHOD_MKWORKSPACE"]

    val hTTP2_METHOD_MOVE : string [@@js.global "HTTP2_METHOD_MOVE"]

    val hTTP2_METHOD_OPTIONS : string [@@js.global "HTTP2_METHOD_OPTIONS"]

    val hTTP2_METHOD_ORDERPATCH : string [@@js.global "HTTP2_METHOD_ORDERPATCH"]

    val hTTP2_METHOD_PATCH : string [@@js.global "HTTP2_METHOD_PATCH"]

    val hTTP2_METHOD_POST : string [@@js.global "HTTP2_METHOD_POST"]

    val hTTP2_METHOD_PRI : string [@@js.global "HTTP2_METHOD_PRI"]

    val hTTP2_METHOD_PROPFIND : string [@@js.global "HTTP2_METHOD_PROPFIND"]

    val hTTP2_METHOD_PROPPATCH : string [@@js.global "HTTP2_METHOD_PROPPATCH"]

    val hTTP2_METHOD_PUT : string [@@js.global "HTTP2_METHOD_PUT"]

    val hTTP2_METHOD_REBIND : string [@@js.global "HTTP2_METHOD_REBIND"]

    val hTTP2_METHOD_REPORT : string [@@js.global "HTTP2_METHOD_REPORT"]

    val hTTP2_METHOD_SEARCH : string [@@js.global "HTTP2_METHOD_SEARCH"]

    val hTTP2_METHOD_TRACE : string [@@js.global "HTTP2_METHOD_TRACE"]

    val hTTP2_METHOD_UNBIND : string [@@js.global "HTTP2_METHOD_UNBIND"]

    val hTTP2_METHOD_UNCHECKOUT : string [@@js.global "HTTP2_METHOD_UNCHECKOUT"]

    val hTTP2_METHOD_UNLINK : string [@@js.global "HTTP2_METHOD_UNLINK"]

    val hTTP2_METHOD_UNLOCK : string [@@js.global "HTTP2_METHOD_UNLOCK"]

    val hTTP2_METHOD_UPDATE : string [@@js.global "HTTP2_METHOD_UPDATE"]

    val hTTP2_METHOD_UPDATEREDIRECTREF : string
      [@@js.global "HTTP2_METHOD_UPDATEREDIRECTREF"]

    val hTTP2_METHOD_VERSION_CONTROL : string
      [@@js.global "HTTP2_METHOD_VERSION_CONTROL"]

    val hTTP_STATUS_CONTINUE : int [@@js.global "HTTP_STATUS_CONTINUE"]

    val hTTP_STATUS_SWITCHING_PROTOCOLS : int
      [@@js.global "HTTP_STATUS_SWITCHING_PROTOCOLS"]

    val hTTP_STATUS_PROCESSING : int [@@js.global "HTTP_STATUS_PROCESSING"]

    val hTTP_STATUS_OK : int [@@js.global "HTTP_STATUS_OK"]

    val hTTP_STATUS_CREATED : int [@@js.global "HTTP_STATUS_CREATED"]

    val hTTP_STATUS_ACCEPTED : int [@@js.global "HTTP_STATUS_ACCEPTED"]

    val hTTP_STATUS_NON_AUTHORITATIVE_INFORMATION : int
      [@@js.global "HTTP_STATUS_NON_AUTHORITATIVE_INFORMATION"]

    val hTTP_STATUS_NO_CONTENT : int [@@js.global "HTTP_STATUS_NO_CONTENT"]

    val hTTP_STATUS_RESET_CONTENT : int
      [@@js.global "HTTP_STATUS_RESET_CONTENT"]

    val hTTP_STATUS_PARTIAL_CONTENT : int
      [@@js.global "HTTP_STATUS_PARTIAL_CONTENT"]

    val hTTP_STATUS_MULTI_STATUS : int
      [@@js.global "HTTP_STATUS_MULTI_STATUS"]

    val hTTP_STATUS_ALREADY_REPORTED : int
      [@@js.global "HTTP_STATUS_ALREADY_REPORTED"]

    val hTTP_STATUS_IM_USED : int [@@js.global "HTTP_STATUS_IM_USED"]

    val hTTP_STATUS_MULTIPLE_CHOICES : int
      [@@js.global "HTTP_STATUS_MULTIPLE_CHOICES"]

    val hTTP_STATUS_MOVED_PERMANENTLY : int
      [@@js.global "HTTP_STATUS_MOVED_PERMANENTLY"]

    val hTTP_STATUS_FOUND : int [@@js.global "HTTP_STATUS_FOUND"]

    val hTTP_STATUS_SEE_OTHER : int [@@js.global "HTTP_STATUS_SEE_OTHER"]

    val hTTP_STATUS_NOT_MODIFIED : int
      [@@js.global "HTTP_STATUS_NOT_MODIFIED"]

    val hTTP_STATUS_USE_PROXY : int [@@js.global "HTTP_STATUS_USE_PROXY"]

    val hTTP_STATUS_TEMPORARY_REDIRECT : int
      [@@js.global "HTTP_STATUS_TEMPORARY_REDIRECT"]

    val hTTP_STATUS_PERMANENT_REDIRECT : int
      [@@js.global "HTTP_STATUS_PERMANENT_REDIRECT"]

    val hTTP_STATUS_BAD_REQUEST : int [@@js.global "HTTP_STATUS_BAD_REQUEST"]

    val hTTP_STATUS_UNAUTHORIZED : int
      [@@js.global "HTTP_STATUS_UNAUTHORIZED"]

    val hTTP_STATUS_PAYMENT_REQUIRED : int
      [@@js.global "HTTP_STATUS_PAYMENT_REQUIRED"]

    val hTTP_STATUS_FORBIDDEN : int [@@js.global "HTTP_STATUS_FORBIDDEN"]

    val hTTP_STATUS_NOT_FOUND : int [@@js.global "HTTP_STATUS_NOT_FOUND"]

    val hTTP_STATUS_METHOD_NOT_ALLOWED : int
      [@@js.global "HTTP_STATUS_METHOD_NOT_ALLOWED"]

    val hTTP_STATUS_NOT_ACCEPTABLE : int
      [@@js.global "HTTP_STATUS_NOT_ACCEPTABLE"]

    val hTTP_STATUS_PROXY_AUTHENTICATION_REQUIRED : int
      [@@js.global "HTTP_STATUS_PROXY_AUTHENTICATION_REQUIRED"]

    val hTTP_STATUS_REQUEST_TIMEOUT : int
      [@@js.global "HTTP_STATUS_REQUEST_TIMEOUT"]

    val hTTP_STATUS_CONFLICT : int [@@js.global "HTTP_STATUS_CONFLICT"]

    val hTTP_STATUS_GONE : int [@@js.global "HTTP_STATUS_GONE"]

    val hTTP_STATUS_LENGTH_REQUIRED : int
      [@@js.global "HTTP_STATUS_LENGTH_REQUIRED"]

    val hTTP_STATUS_PRECONDITION_FAILED : int
      [@@js.global "HTTP_STATUS_PRECONDITION_FAILED"]

    val hTTP_STATUS_PAYLOAD_TOO_LARGE : int
      [@@js.global "HTTP_STATUS_PAYLOAD_TOO_LARGE"]

    val hTTP_STATUS_URI_TOO_LONG : int
      [@@js.global "HTTP_STATUS_URI_TOO_LONG"]

    val hTTP_STATUS_UNSUPPORTED_MEDIA_TYPE : int
      [@@js.global "HTTP_STATUS_UNSUPPORTED_MEDIA_TYPE"]

    val hTTP_STATUS_RANGE_NOT_SATISFIABLE : int
      [@@js.global "HTTP_STATUS_RANGE_NOT_SATISFIABLE"]

    val hTTP_STATUS_EXPECTATION_FAILED : int
      [@@js.global "HTTP_STATUS_EXPECTATION_FAILED"]

    val hTTP_STATUS_TEAPOT : int [@@js.global "HTTP_STATUS_TEAPOT"]

    val hTTP_STATUS_MISDIRECTED_REQUEST : int
      [@@js.global "HTTP_STATUS_MISDIRECTED_REQUEST"]

    val hTTP_STATUS_UNPROCESSABLE_ENTITY : int
      [@@js.global "HTTP_STATUS_UNPROCESSABLE_ENTITY"]

    val hTTP_STATUS_LOCKED : int [@@js.global "HTTP_STATUS_LOCKED"]

    val hTTP_STATUS_FAILED_DEPENDENCY : int
      [@@js.global "HTTP_STATUS_FAILED_DEPENDENCY"]

    val hTTP_STATUS_UNORDERED_COLLECTION : int
      [@@js.global "HTTP_STATUS_UNORDERED_COLLECTION"]

    val hTTP_STATUS_UPGRADE_REQUIRED : int
      [@@js.global "HTTP_STATUS_UPGRADE_REQUIRED"]

    val hTTP_STATUS_PRECONDITION_REQUIRED : int
      [@@js.global "HTTP_STATUS_PRECONDITION_REQUIRED"]

    val hTTP_STATUS_TOO_MANY_REQUESTS : int
      [@@js.global "HTTP_STATUS_TOO_MANY_REQUESTS"]

    val hTTP_STATUS_REQUEST_HEADER_FIELDS_TOO_LARGE : int
      [@@js.global "HTTP_STATUS_REQUEST_HEADER_FIELDS_TOO_LARGE"]

    val hTTP_STATUS_UNAVAILABLE_FOR_LEGAL_REASONS : int
      [@@js.global "HTTP_STATUS_UNAVAILABLE_FOR_LEGAL_REASONS"]

    val hTTP_STATUS_INTERNAL_SERVER_ERROR : int
      [@@js.global "HTTP_STATUS_INTERNAL_SERVER_ERROR"]

    val hTTP_STATUS_NOT_IMPLEMENTED : int
      [@@js.global "HTTP_STATUS_NOT_IMPLEMENTED"]

    val hTTP_STATUS_BAD_GATEWAY : int [@@js.global "HTTP_STATUS_BAD_GATEWAY"]

    val hTTP_STATUS_SERVICE_UNAVAILABLE : int
      [@@js.global "HTTP_STATUS_SERVICE_UNAVAILABLE"]

    val hTTP_STATUS_GATEWAY_TIMEOUT : int
      [@@js.global "HTTP_STATUS_GATEWAY_TIMEOUT"]

    val hTTP_STATUS_HTTP_VERSION_NOT_SUPPORTED : int
      [@@js.global "HTTP_STATUS_HTTP_VERSION_NOT_SUPPORTED"]

    val hTTP_STATUS_VARIANT_ALSO_NEGOTIATES : int
      [@@js.global "HTTP_STATUS_VARIANT_ALSO_NEGOTIATES"]

    val hTTP_STATUS_INSUFFICIENT_STORAGE : int
      [@@js.global "HTTP_STATUS_INSUFFICIENT_STORAGE"]

    val hTTP_STATUS_LOOP_DETECTED : int
      [@@js.global "HTTP_STATUS_LOOP_DETECTED"]

    val hTTP_STATUS_BANDWIDTH_LIMIT_EXCEEDED : int
      [@@js.global "HTTP_STATUS_BANDWIDTH_LIMIT_EXCEEDED"]

    val hTTP_STATUS_NOT_EXTENDED : int
      [@@js.global "HTTP_STATUS_NOT_EXTENDED"]

    val hTTP_STATUS_NETWORK_AUTHENTICATION_REQUIRED : int
      [@@js.global "HTTP_STATUS_NETWORK_AUTHENTICATION_REQUIRED"]
  end
  [@@js.scope "constants"]

  val getDefaultSettings : unit -> http2_Settings
    [@@js.global "getDefaultSettings"]

  val getPackedSettings : settings:http2_Settings -> Buffer.t
    [@@js.global "getPackedSettings"]

  val getUnpackedSettings : buf:Uint8Array.t -> http2_Settings
    [@@js.global "getUnpackedSettings"]

  val createServer
    :  ?onRequestHandler:
         (request:http2_Http2ServerRequest
          -> response:http2_Http2ServerResponse
          -> unit)
    -> unit
    -> http2_Http2Server
    [@@js.global "createServer"]

  val createServer
    :  options:http2_ServerOptions
    -> ?onRequestHandler:
         (request:http2_Http2ServerRequest
          -> response:http2_Http2ServerResponse
          -> unit)
    -> unit
    -> http2_Http2Server
    [@@js.global "createServer"]

  val createSecureServer
    :  ?onRequestHandler:
         (request:http2_Http2ServerRequest
          -> response:http2_Http2ServerResponse
          -> unit)
    -> unit
    -> http2_Http2SecureServer
    [@@js.global "createSecureServer"]

  val createSecureServer
    :  options:http2_SecureServerOptions
    -> ?onRequestHandler:
         (request:http2_Http2ServerRequest
          -> response:http2_Http2ServerResponse
          -> unit)
    -> unit
    -> http2_Http2SecureServer
    [@@js.global "createSecureServer"]

  val connect
    :  authority:Url.URL.t or_string
    -> listener:
         (session:http2_ClientHttp2Session
          -> socket:(Net.Socket.t, Tls.TLSSocket.t) union2
          -> unit)
    -> http2_ClientHttp2Session
    [@@js.global "connect"]

  val connect
    :  authority:Url.URL.t or_string
    -> ?options:
         ([ `U_s15_http_ of
            ( http2_ClientSessionOptions
            , http2_SecureClientSessionOptions )
            union2
          | `U_s16_https_ of
            ( http2_ClientSessionOptions
            , http2_SecureClientSessionOptions )
            union2
          ]
         [@js.union on_field "protocol"])
    -> ?listener:
         (session:http2_ClientHttp2Session
          -> socket:(Net.Socket.t, Tls.TLSSocket.t) union2
          -> unit)
    -> unit
    -> http2_ClientHttp2Session
    [@@js.global "connect"]
end
[@@js.scope Import.http2]
