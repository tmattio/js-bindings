[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module AnonymousInterface1 : sig
  type t

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

    val get_local_window_size : t -> int [@@js.get "localWindowSize"]

    val set_local_window_size : t -> int -> unit [@@js.set "localWindowSize"]

    val get_state : t -> int [@@js.get "state"]

    val set_state : t -> int -> unit [@@js.set "state"]

    val get_local_close : t -> int [@@js.get "localClose"]

    val set_local_close : t -> int -> unit [@@js.set "localClose"]

    val get_remote_close : t -> int [@@js.get "remoteClose"]

    val set_remote_close : t -> int -> unit [@@js.set "remoteClose"]

    val get_sum_dependency_weight : t -> int [@@js.get "sumDependencyWeight"]

    val set_sum_dependency_weight : t -> int -> unit
      [@@js.set "sumDependencyWeight"]

    val get_weight : t -> int [@@js.get "weight"]

    val set_weight : t -> int -> unit [@@js.set "weight"]
  end
  [@@js.scope "StreamState"]

  module ServerStreamResponseOptions : sig
    type t = http2_ServerStreamResponseOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_end_stream : t -> bool [@@js.get "endStream"]

    val set_end_stream : t -> bool -> unit [@@js.set "endStream"]

    val get_wait_for_trailers : t -> bool [@@js.get "waitForTrailers"]

    val set_wait_for_trailers : t -> bool -> unit [@@js.set "waitForTrailers"]
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

    val stat_check
      :  t
      -> stats:Fs.Stats.t
      -> headers:Node_http.Http.OutgoingHttpHeaders.t
      -> stat_options:http2_StatOptions
      -> unit or_boolean
      [@@js.call "statCheck"]

    val get_wait_for_trailers : t -> bool [@@js.get "waitForTrailers"]

    val set_wait_for_trailers : t -> bool -> unit [@@js.set "waitForTrailers"]

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

    val on_error : t -> err:ErrnoException.t -> unit [@@js.call "onError"]

    val cast : t -> http2_ServerStreamFileResponseOptions [@@js.cast]
  end
  [@@js.scope "ServerStreamFileResponseOptionsWithError"]

  module Http2Stream : sig
    type t = http2_Http2Stream

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_aborted : t -> bool [@@js.get "aborted"]

    val get_buffer_size : t -> int [@@js.get "bufferSize"]

    val get_closed : t -> bool [@@js.get "closed"]

    val get_destroyed : t -> bool [@@js.get "destroyed"]

    val get_end_after_headers : t -> bool [@@js.get "endAfterHeaders"]

    val get_id : t -> int [@@js.get "id"]

    val get_pending : t -> bool [@@js.get "pending"]

    val get_rst_code : t -> int [@@js.get "rstCode"]

    val get_sent_headers : t -> Node_http.Http.OutgoingHttpHeaders.t
      [@@js.get "sentHeaders"]

    val get_sent_info_headers : t -> Node_http.Http.OutgoingHttpHeaders.t list
      [@@js.get "sentInfoHeaders"]

    val get_sent_trailers : t -> Node_http.Http.OutgoingHttpHeaders.t
      [@@js.get "sentTrailers"]

    val get_session : t -> http2_Http2Session [@@js.get "session"]

    val get_state : t -> http2_StreamState [@@js.get "state"]

    val close : t -> ?code:int -> ?callback:(unit -> unit) -> unit -> unit
      [@@js.call "close"]

    val priority : t -> options:http2_StreamPriorityOptions -> unit
      [@@js.call "priority"]

    val set_timeout : t -> msecs:int -> ?callback:(unit -> unit) -> unit -> unit
      [@@js.call "setTimeout"]

    val send_trailers
      :  t
      -> headers:Node_http.Http.OutgoingHttpHeaders.t
      -> unit
      [@@js.call "sendTrailers"]

    val add_listener
      :  t
      -> event:([ `aborted ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(chunk:Buffer.t or_string -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''
      :  t
      -> event:([ `frameError ][@js.enum])
      -> listener:(frameType:int -> error_code:int -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''''
      :  t
      -> event:([ `streamClosed ][@js.enum])
      -> listener:(code:int -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''''''
      :  t
      -> event:([ `trailers ][@js.enum])
      -> listener:(trailers:http2_IncomingHttpHeaders -> flags:int -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''''''''
      :  t
      -> event:([ `wantTrailers ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''''''''
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
      -> frame_type:int
      -> error_code:int
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
      -> listener:(frameType:int -> error_code:int -> unit)
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
      -> listener:(frameType:int -> error_code:int -> unit)
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

    val prepend_listener
      :  t
      -> event:([ `aborted ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(chunk:Buffer.t or_string -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''
      :  t
      -> event:([ `frameError ][@js.enum])
      -> listener:(frameType:int -> error_code:int -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''''
      :  t
      -> event:([ `streamClosed ][@js.enum])
      -> listener:(code:int -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''''''
      :  t
      -> event:([ `trailers ][@js.enum])
      -> listener:(trailers:http2_IncomingHttpHeaders -> flags:int -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''''''''
      :  t
      -> event:([ `wantTrailers ][@js.enum])
      -> listener:(unit -> unit)
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
      -> event:([ `aborted ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(chunk:Buffer.t or_string -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''
      :  t
      -> event:([ `frameError ][@js.enum])
      -> listener:(frameType:int -> error_code:int -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''''
      :  t
      -> event:([ `streamClosed ][@js.enum])
      -> listener:(code:int -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''''''
      :  t
      -> event:([ `trailers ][@js.enum])
      -> listener:(trailers:http2_IncomingHttpHeaders -> flags:int -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''''''''
      :  t
      -> event:([ `wantTrailers ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''''''''
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

    val add_listener
      :  t
      -> event:([ `continue ][@js.enum])
      -> listener:(unit -> AnonymousInterface0.t)
      -> t
      [@@js.call "addListener"]

    val add_listener'
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

    val add_listener''
      :  t
      -> event:([ `push ][@js.enum])
      -> listener:(headers:http2_IncomingHttpHeaders -> flags:int -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''
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

    val add_listener''''
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
      -> listener:(unit -> AnonymousInterface0.t)
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
      -> listener:(unit -> AnonymousInterface0.t)
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

    val prepend_listener
      :  t
      -> event:([ `continue ][@js.enum])
      -> listener:(unit -> AnonymousInterface0.t)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'
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

    val prepend_listener''
      :  t
      -> event:([ `push ][@js.enum])
      -> listener:(headers:http2_IncomingHttpHeaders -> flags:int -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''
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

    val prepend_listener''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_once_listener
      :  t
      -> event:([ `continue ][@js.enum])
      -> listener:(unit -> AnonymousInterface0.t)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'
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

    val prepend_once_listener''
      :  t
      -> event:([ `push ][@js.enum])
      -> listener:(headers:http2_IncomingHttpHeaders -> flags:int -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''
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

    val prepend_once_listener''''
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

    val get_headers_sent : t -> bool [@@js.get "headersSent"]

    val get_push_allowed : t -> bool [@@js.get "pushAllowed"]

    val additional_headers
      :  t
      -> headers:Node_http.Http.OutgoingHttpHeaders.t
      -> unit
      [@@js.call "additionalHeaders"]

    val push_stream
      :  t
      -> headers:Node_http.Http.OutgoingHttpHeaders.t
      -> ?callback:
           (err:Error.t or_null
            -> push_stream:t
            -> headers:Node_http.Http.OutgoingHttpHeaders.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "pushStream"]

    val push_stream'
      :  t
      -> headers:Node_http.Http.OutgoingHttpHeaders.t
      -> ?options:http2_StreamPriorityOptions
      -> ?callback:
           (err:Error.t or_null
            -> push_stream:t
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

    val respond_with_fd
      :  t
      -> fd:Fs_promises.FileHandle.t or_number
      -> ?headers:Node_http.Http.OutgoingHttpHeaders.t
      -> ?options:http2_ServerStreamFileResponseOptions
      -> unit
      -> unit
      [@@js.call "respondWithFD"]

    val respond_with_file
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

    val get_header_table_size : t -> int [@@js.get "headerTableSize"]

    val set_header_table_size : t -> int -> unit [@@js.set "headerTableSize"]

    val get_enable_push : t -> bool [@@js.get "enablePush"]

    val set_enable_push : t -> bool -> unit [@@js.set "enablePush"]

    val get_initial_window_size : t -> int [@@js.get "initialWindowSize"]

    val set_initial_window_size : t -> int -> unit
      [@@js.set "initialWindowSize"]

    val get_max_frame_size : t -> int [@@js.get "maxFrameSize"]

    val set_max_frame_size : t -> int -> unit [@@js.set "maxFrameSize"]

    val get_max_concurrent_streams : t -> int [@@js.get "maxConcurrentStreams"]

    val set_max_concurrent_streams : t -> int -> unit
      [@@js.set "maxConcurrentStreams"]

    val get_max_header_list_size : t -> int [@@js.get "maxHeaderListSize"]

    val set_max_header_list_size : t -> int -> unit
      [@@js.set "maxHeaderListSize"]

    val get_enable_connect_protocol : t -> bool
      [@@js.get "enableConnectProtocol"]

    val set_enable_connect_protocol : t -> bool -> unit
      [@@js.set "enableConnectProtocol"]
  end
  [@@js.scope "Settings"]

  module ClientSessionRequestOptions : sig
    type t = http2_ClientSessionRequestOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_end_stream : t -> bool [@@js.get "endStream"]

    val set_end_stream : t -> bool -> unit [@@js.set "endStream"]

    val get_exclusive : t -> bool [@@js.get "exclusive"]

    val set_exclusive : t -> bool -> unit [@@js.set "exclusive"]

    val get_parent : t -> int [@@js.get "parent"]

    val set_parent : t -> int -> unit [@@js.set "parent"]

    val get_weight : t -> int [@@js.get "weight"]

    val set_weight : t -> int -> unit [@@js.set "weight"]

    val get_wait_for_trailers : t -> bool [@@js.get "waitForTrailers"]

    val set_wait_for_trailers : t -> bool -> unit [@@js.set "waitForTrailers"]
  end
  [@@js.scope "ClientSessionRequestOptions"]

  module SessionState : sig
    type t = http2_SessionState

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_effective_local_window_size : t -> int
      [@@js.get "effectiveLocalWindowSize"]

    val set_effective_local_window_size : t -> int -> unit
      [@@js.set "effectiveLocalWindowSize"]

    val get_effective_recv_data_length : t -> int
      [@@js.get "effectiveRecvDataLength"]

    val set_effective_recv_data_length : t -> int -> unit
      [@@js.set "effectiveRecvDataLength"]

    val get_next_stream_id : t -> int [@@js.get "nextStreamID"]

    val set_next_stream_id : t -> int -> unit [@@js.set "nextStreamID"]

    val get_local_window_size : t -> int [@@js.get "localWindowSize"]

    val set_local_window_size : t -> int -> unit [@@js.set "localWindowSize"]

    val get_last_proc_stream_id : t -> int [@@js.get "lastProcStreamID"]

    val set_last_proc_stream_id : t -> int -> unit [@@js.set "lastProcStreamID"]

    val get_remote_window_size : t -> int [@@js.get "remoteWindowSize"]

    val set_remote_window_size : t -> int -> unit [@@js.set "remoteWindowSize"]

    val get_outbound_queue_size : t -> int [@@js.get "outboundQueueSize"]

    val set_outbound_queue_size : t -> int -> unit
      [@@js.set "outboundQueueSize"]

    val get_deflate_dynamic_table_size : t -> int
      [@@js.get "deflateDynamicTableSize"]

    val set_deflate_dynamic_table_size : t -> int -> unit
      [@@js.set "deflateDynamicTableSize"]

    val get_inflate_dynamic_table_size : t -> int
      [@@js.get "inflateDynamicTableSize"]

    val set_inflate_dynamic_table_size : t -> int -> unit
      [@@js.set "inflateDynamicTableSize"]
  end
  [@@js.scope "SessionState"]

  module Http2Session : sig
    type t = http2_Http2Session

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_alpn_protocol : t -> string [@@js.get "alpnProtocol"]

    val get_closed : t -> bool [@@js.get "closed"]

    val get_connecting : t -> bool [@@js.get "connecting"]

    val get_destroyed : t -> bool [@@js.get "destroyed"]

    val get_encrypted : t -> bool [@@js.get "encrypted"]

    val get_local_settings : t -> http2_Settings [@@js.get "localSettings"]

    val get_origin_set : t -> string list [@@js.get "originSet"]

    val get_pending_settings_ack : t -> bool [@@js.get "pendingSettingsAck"]

    val get_remote_settings : t -> http2_Settings [@@js.get "remoteSettings"]

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
      -> ?last_stream_id:int
      -> ?opaque_data:ArrayBufferView.t
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

    val set_local_window_size : t -> window_size:int -> unit
      [@@js.call "setLocalWindowSize"]

    val set_timeout : t -> msecs:int -> ?callback:(unit -> unit) -> unit -> unit
      [@@js.call "setTimeout"]

    val settings : t -> settings:http2_Settings -> unit [@@js.call "settings"]

    val unref : t -> unit [@@js.call "unref"]

    val add_listener
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''
      :  t
      -> event:([ `frameError ][@js.enum])
      -> listener:(frameType:int -> error_code:int -> stream_id:int -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''
      :  t
      -> event:([ `goaway ][@js.enum])
      -> listener:
           (errorCode:int -> last_stream_id:int -> opaque_data:Buffer.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''
      :  t
      -> event:([ `localSettings ][@js.enum])
      -> listener:(settings:http2_Settings -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''
      :  t
      -> event:([ `ping ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''
      :  t
      -> event:([ `remoteSettings ][@js.enum])
      -> listener:(settings:http2_Settings -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''
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
      -> frame_type:int
      -> error_code:int
      -> stream_id:int
      -> bool
      [@@js.call "emit"]

    val emit'''
      :  t
      -> event:([ `goaway ][@js.enum])
      -> error_code:int
      -> last_stream_id:int
      -> opaque_data:Buffer.t
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
      -> listener:(frameType:int -> error_code:int -> stream_id:int -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `goaway ][@js.enum])
      -> listener:
           (errorCode:int -> last_stream_id:int -> opaque_data:Buffer.t -> unit)
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
      -> listener:(frameType:int -> error_code:int -> stream_id:int -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `goaway ][@js.enum])
      -> listener:
           (errorCode:int -> last_stream_id:int -> opaque_data:Buffer.t -> unit)
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

    val prepend_listener
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''
      :  t
      -> event:([ `frameError ][@js.enum])
      -> listener:(frameType:int -> error_code:int -> stream_id:int -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''
      :  t
      -> event:([ `goaway ][@js.enum])
      -> listener:
           (errorCode:int -> last_stream_id:int -> opaque_data:Buffer.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''
      :  t
      -> event:([ `localSettings ][@js.enum])
      -> listener:(settings:http2_Settings -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''
      :  t
      -> event:([ `ping ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''
      :  t
      -> event:([ `remoteSettings ][@js.enum])
      -> listener:(settings:http2_Settings -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_once_listener
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''
      :  t
      -> event:([ `frameError ][@js.enum])
      -> listener:(frameType:int -> error_code:int -> stream_id:int -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''
      :  t
      -> event:([ `goaway ][@js.enum])
      -> listener:
           (errorCode:int -> last_stream_id:int -> opaque_data:Buffer.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''
      :  t
      -> event:([ `localSettings ][@js.enum])
      -> listener:(settings:http2_Settings -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''
      :  t
      -> event:([ `ping ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''
      :  t
      -> event:([ `remoteSettings ][@js.enum])
      -> listener:(settings:http2_Settings -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''
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

    val add_listener
      :  t
      -> event:([ `altsvc ][@js.enum])
      -> listener:(alt:string -> origin:string -> stream:int -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'
      :  t
      -> event:([ `origin ][@js.enum])
      -> listener:(origins:string list -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (session:t -> socket:(Net.Socket.t, Tls.TLSSocket.t) union2 -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''
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

    val add_listener''''
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

    val prepend_listener
      :  t
      -> event:([ `altsvc ][@js.enum])
      -> listener:(alt:string -> origin:string -> stream:int -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'
      :  t
      -> event:([ `origin ][@js.enum])
      -> listener:(origins:string list -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (session:t -> socket:(Net.Socket.t, Tls.TLSSocket.t) union2 -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''
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

    val prepend_listener''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_once_listener
      :  t
      -> event:([ `altsvc ][@js.enum])
      -> listener:(alt:string -> origin:string -> stream:int -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'
      :  t
      -> event:([ `origin ][@js.enum])
      -> listener:(origins:string list -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (session:t -> socket:(Net.Socket.t, Tls.TLSSocket.t) union2 -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''
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

    val prepend_once_listener''''
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
      -> origin_or_stream:
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

    val add_listener
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (session:t -> socket:(Net.Socket.t, Tls.TLSSocket.t) union2 -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''
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

    val prepend_listener
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (session:t -> socket:(Net.Socket.t, Tls.TLSSocket.t) union2 -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_once_listener
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:
           (session:t -> socket:(Net.Socket.t, Tls.TLSSocket.t) union2 -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''
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

    val get_max_deflate_dynamic_table_size : t -> int
      [@@js.get "maxDeflateDynamicTableSize"]

    val set_max_deflate_dynamic_table_size : t -> int -> unit
      [@@js.set "maxDeflateDynamicTableSize"]

    val get_max_session_memory : t -> int [@@js.get "maxSessionMemory"]

    val set_max_session_memory : t -> int -> unit [@@js.set "maxSessionMemory"]

    val get_max_header_list_pairs : t -> int [@@js.get "maxHeaderListPairs"]

    val set_max_header_list_pairs : t -> int -> unit
      [@@js.set "maxHeaderListPairs"]

    val get_max_outstanding_pings : t -> int [@@js.get "maxOutstandingPings"]

    val set_max_outstanding_pings : t -> int -> unit
      [@@js.set "maxOutstandingPings"]

    val get_max_send_header_block_length : t -> int
      [@@js.get "maxSendHeaderBlockLength"]

    val set_max_send_header_block_length : t -> int -> unit
      [@@js.set "maxSendHeaderBlockLength"]

    val get_padding_strategy : t -> int [@@js.get "paddingStrategy"]

    val set_padding_strategy : t -> int -> unit [@@js.set "paddingStrategy"]

    val get_peer_max_concurrent_streams : t -> int
      [@@js.get "peerMaxConcurrentStreams"]

    val set_peer_max_concurrent_streams : t -> int -> unit
      [@@js.set "peerMaxConcurrentStreams"]

    val get_settings : t -> http2_Settings [@@js.get "settings"]

    val set_settings : t -> http2_Settings -> unit [@@js.set "settings"]

    val select_padding : t -> frame_len:int -> max_frame_len:int -> int
      [@@js.call "selectPadding"]

    val create_connection
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

    val get_max_reserved_remote_streams : t -> int
      [@@js.get "maxReservedRemoteStreams"]

    val set_max_reserved_remote_streams : t -> int -> unit
      [@@js.set "maxReservedRemoteStreams"]

    val create_connection
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

    val get_http1IncomingMessage
      :  t
      -> (* FIXME: unknown type 'typeof IncomingMessage' *) any
      [@@js.get "Http1IncomingMessage"]

    val set_http1IncomingMessage
      :  t
      -> (* FIXME: unknown type 'typeof IncomingMessage' *) any
      -> unit
      [@@js.set "Http1IncomingMessage"]

    val get_http1ServerResponse
      :  t
      -> (* FIXME: unknown type 'typeof ServerResponse' *) any
      [@@js.get "Http1ServerResponse"]

    val set_http1ServerResponse
      :  t
      -> (* FIXME: unknown type 'typeof ServerResponse' *) any
      -> unit
      [@@js.set "Http1ServerResponse"]

    val get_http2ServerRequest
      :  t
      -> (* FIXME: unknown type 'typeof Http2ServerRequest' *) any
      [@@js.get "Http2ServerRequest"]

    val set_http2ServerRequest
      :  t
      -> (* FIXME: unknown type 'typeof Http2ServerRequest' *) any
      -> unit
      [@@js.set "Http2ServerRequest"]

    val get_http2ServerResponse
      :  t
      -> (* FIXME: unknown type 'typeof Http2ServerResponse' *) any
      [@@js.get "Http2ServerResponse"]

    val set_http2ServerResponse
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

    val get_allow_http1 : t -> bool [@@js.get "allowHTTP1"]

    val set_allow_http1 : t -> bool -> unit [@@js.set "allowHTTP1"]

    val get_origins : t -> string list [@@js.get "origins"]

    val set_origins : t -> string list -> unit [@@js.set "origins"]

    val cast : t -> http2_SecureServerSessionOptions [@@js.cast]
  end
  [@@js.scope "SecureServerOptions"]

  module Http2Server : sig
    type t = http2_Http2Server

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val add_listener
      :  t
      -> event:([ `checkContinue ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'
      :  t
      -> event:([ `request ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:http2_ServerHttp2Session -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''
      :  t
      -> event:([ `sessionError ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''
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

    val prepend_listener
      :  t
      -> event:([ `checkContinue ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'
      :  t
      -> event:([ `request ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:http2_ServerHttp2Session -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''
      :  t
      -> event:([ `sessionError ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_once_listener
      :  t
      -> event:([ `checkContinue ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'
      :  t
      -> event:([ `request ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:http2_ServerHttp2Session -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''
      :  t
      -> event:([ `sessionError ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val set_timeout : t -> ?msec:int -> ?callback:(unit -> unit) -> unit -> t
      [@@js.call "setTimeout"]

    val cast : t -> Net.Server.t [@@js.cast]
  end
  [@@js.scope "Http2Server"]

  module Http2SecureServer : sig
    type t = http2_Http2SecureServer

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val add_listener
      :  t
      -> event:([ `checkContinue ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'
      :  t
      -> event:([ `request ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:http2_ServerHttp2Session -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''
      :  t
      -> event:([ `sessionError ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''
      :  t
      -> event:([ `unknownProtocol ][@js.enum])
      -> listener:(socket:Tls.TLSSocket.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''
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

    val prepend_listener
      :  t
      -> event:([ `checkContinue ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'
      :  t
      -> event:([ `request ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:http2_ServerHttp2Session -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''
      :  t
      -> event:([ `sessionError ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''
      :  t
      -> event:([ `unknownProtocol ][@js.enum])
      -> listener:(socket:Tls.TLSSocket.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_once_listener
      :  t
      -> event:([ `checkContinue ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'
      :  t
      -> event:([ `request ][@js.enum])
      -> listener:
           (request:http2_Http2ServerRequest
            -> response:http2_Http2ServerResponse
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:http2_ServerHttp2Session -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''
      :  t
      -> event:([ `sessionError ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''
      :  t
      -> event:([ `stream ][@js.enum])
      -> listener:
           (stream:http2_ServerHttp2Stream
            -> headers:http2_IncomingHttpHeaders
            -> flags:int
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''
      :  t
      -> event:([ `unknownProtocol ][@js.enum])
      -> listener:(socket:Tls.TLSSocket.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val set_timeout : t -> ?msec:int -> ?callback:(unit -> unit) -> unit -> t
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
      -> raw_headers:string list
      -> t
      [@@js.create]

    val get_aborted : t -> bool [@@js.get "aborted"]

    val get_authority : t -> string [@@js.get "authority"]

    val get_connection : t -> (Net.Socket.t, Tls.TLSSocket.t) union2
      [@@js.get "connection"]

    val get_complete : t -> bool [@@js.get "complete"]

    val get_headers : t -> http2_IncomingHttpHeaders [@@js.get "headers"]

    val get_http_version : t -> string [@@js.get "httpVersion"]

    val get_http_version_minor : t -> int [@@js.get "httpVersionMinor"]

    val get_http_version_major : t -> int [@@js.get "httpVersionMajor"]

    val get_method : t -> string [@@js.get "method"]

    val get_raw_headers : t -> string list [@@js.get "rawHeaders"]

    val get_raw_trailers : t -> string list [@@js.get "rawTrailers"]

    val get_scheme : t -> string [@@js.get "scheme"]

    val get_socket : t -> (Net.Socket.t, Tls.TLSSocket.t) union2
      [@@js.get "socket"]

    val get_stream : t -> http2_ServerHttp2Stream [@@js.get "stream"]

    val get_trailers : t -> http2_IncomingHttpHeaders [@@js.get "trailers"]

    val get_url : t -> string [@@js.get "url"]

    val set_timeout : t -> msecs:int -> ?callback:(unit -> unit) -> unit -> unit
      [@@js.call "setTimeout"]

    val read : t -> ?size:int -> unit -> Buffer.t or_string or_null
      [@@js.call "read"]

    val add_listener
      :  t
      -> event:([ `aborted ][@js.enum])
      -> listener:(hadError:bool -> code:int -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(chunk:Buffer.t or_string -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''
      :  t
      -> event:([ `readable ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val emit
      :  t
      -> event:([ `aborted ][@js.enum])
      -> had_error:bool
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

    val prepend_listener
      :  t
      -> event:([ `aborted ][@js.enum])
      -> listener:(hadError:bool -> code:int -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(chunk:Buffer.t or_string -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''
      :  t
      -> event:([ `readable ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_once_listener
      :  t
      -> event:([ `aborted ][@js.enum])
      -> listener:(hadError:bool -> code:int -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(chunk:Buffer.t or_string -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''
      :  t
      -> event:([ `readable ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''
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

    val get_headers_sent : t -> bool [@@js.get "headersSent"]

    val get_socket : t -> (Net.Socket.t, Tls.TLSSocket.t) union2
      [@@js.get "socket"]

    val get_stream : t -> http2_ServerHttp2Stream [@@js.get "stream"]

    val get_send_date : t -> bool [@@js.get "sendDate"]

    val set_send_date : t -> bool -> unit [@@js.set "sendDate"]

    val get_status_code : t -> int [@@js.get "statusCode"]

    val set_status_code : t -> int -> unit [@@js.set "statusCode"]

    val get_status_message : t -> ([ `L_s0 [@js ""] ][@js.enum])
      [@@js.get "statusMessage"]

    val set_status_message : t -> ([ `L_s0 ][@js.enum]) -> unit
      [@@js.set "statusMessage"]

    val add_trailers
      :  t
      -> trailers:Node_http.Http.OutgoingHttpHeaders.t
      -> unit
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

    val get_header : t -> name:string -> string [@@js.call "getHeader"]

    val get_header_names : t -> string list [@@js.call "getHeaderNames"]

    val get_headers : t -> Node_http.Http.OutgoingHttpHeaders.t
      [@@js.call "getHeaders"]

    val has_header : t -> name:string -> bool [@@js.call "hasHeader"]

    val remove_header : t -> name:string -> unit [@@js.call "removeHeader"]

    val set_header
      :  t
      -> name:string
      -> value:string list or_string or_number
      -> unit
      [@@js.call "setHeader"]

    val set_timeout : t -> msecs:int -> ?callback:(unit -> unit) -> unit -> unit
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

    val write_continue : t -> unit [@@js.call "writeContinue"]

    val write_head
      :  t
      -> status_code:int
      -> ?headers:Node_http.Http.OutgoingHttpHeaders.t
      -> unit
      -> t
      [@@js.call "writeHead"]

    val write_head'
      :  t
      -> status_code:int
      -> status_message:string
      -> ?headers:Node_http.Http.OutgoingHttpHeaders.t
      -> unit
      -> t
      [@@js.call "writeHead"]

    val create_push_response
      :  t
      -> headers:Node_http.Http.OutgoingHttpHeaders.t
      -> callback:(err:Error.t or_null -> res:t -> unit)
      -> unit
      [@@js.call "createPushResponse"]

    val add_listener
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''
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

    val prepend_listener
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_once_listener
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''
      :  t
      -> event:([ `finish ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''
      :  t
      -> event:([ `pipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''
      :  t
      -> event:([ `unpipe ][@js.enum])
      -> listener:(src:Stream.Readable.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> Stream.Writable.t [@@js.cast]
  end
  [@@js.scope "Http2ServerResponse"]

  module Constants : sig
    val n_ghttp2_SESSION_SERVER : int [@@js.global "NGHTTP2_SESSION_SERVER"]

    val n_ghttp2_SESSION_CLIENT : int [@@js.global "NGHTTP2_SESSION_CLIENT"]

    val n_ghttp2_STREAM_STATE_IDLE : int
      [@@js.global "NGHTTP2_STREAM_STATE_IDLE"]

    val n_ghttp2_STREAM_STATE_OPEN : int
      [@@js.global "NGHTTP2_STREAM_STATE_OPEN"]

    val n_ghttp2_STREAM_STATE_RESERVED_LOCAL : int
      [@@js.global "NGHTTP2_STREAM_STATE_RESERVED_LOCAL"]

    val n_ghttp2_STREAM_STATE_RESERVED_REMOTE : int
      [@@js.global "NGHTTP2_STREAM_STATE_RESERVED_REMOTE"]

    val n_ghttp2_STREAM_STATE_HALF_CLOSED_LOCAL : int
      [@@js.global "NGHTTP2_STREAM_STATE_HALF_CLOSED_LOCAL"]

    val n_ghttp2_STREAM_STATE_HALF_CLOSED_REMOTE : int
      [@@js.global "NGHTTP2_STREAM_STATE_HALF_CLOSED_REMOTE"]

    val n_ghttp2_STREAM_STATE_CLOSED : int
      [@@js.global "NGHTTP2_STREAM_STATE_CLOSED"]

    val n_ghttp2_NO_ERROR : int [@@js.global "NGHTTP2_NO_ERROR"]

    val n_ghttp2_PROTOCOL_ERROR : int [@@js.global "NGHTTP2_PROTOCOL_ERROR"]

    val n_ghttp2_INTERNAL_ERROR : int [@@js.global "NGHTTP2_INTERNAL_ERROR"]

    val n_ghttp2_FLOW_CONTROL_ERROR : int
      [@@js.global "NGHTTP2_FLOW_CONTROL_ERROR"]

    val n_ghttp2_SETTINGS_TIMEOUT : int [@@js.global "NGHTTP2_SETTINGS_TIMEOUT"]

    val n_ghttp2_STREAM_CLOSED : int [@@js.global "NGHTTP2_STREAM_CLOSED"]

    val n_ghttp2_FRAME_SIZE_ERROR : int [@@js.global "NGHTTP2_FRAME_SIZE_ERROR"]

    val n_ghttp2_REFUSED_STREAM : int [@@js.global "NGHTTP2_REFUSED_STREAM"]

    val n_ghttp2_CANCEL : int [@@js.global "NGHTTP2_CANCEL"]

    val n_ghttp2_COMPRESSION_ERROR : int
      [@@js.global "NGHTTP2_COMPRESSION_ERROR"]

    val n_ghttp2_CONNECT_ERROR : int [@@js.global "NGHTTP2_CONNECT_ERROR"]

    val n_ghttp2_ENHANCE_YOUR_CALM : int
      [@@js.global "NGHTTP2_ENHANCE_YOUR_CALM"]

    val n_ghttp2_INADEQUATE_SECURITY : int
      [@@js.global "NGHTTP2_INADEQUATE_SECURITY"]

    val n_ghttp2_HTTP_1_1_REQUIRED : int
      [@@js.global "NGHTTP2_HTTP_1_1_REQUIRED"]

    val n_ghttp2_ERR_FRAME_SIZE_ERROR : int
      [@@js.global "NGHTTP2_ERR_FRAME_SIZE_ERROR"]

    val n_ghttp2_FLAG_NONE : int [@@js.global "NGHTTP2_FLAG_NONE"]

    val n_ghttp2_FLAG_END_STREAM : int [@@js.global "NGHTTP2_FLAG_END_STREAM"]

    val n_ghttp2_FLAG_END_HEADERS : int [@@js.global "NGHTTP2_FLAG_END_HEADERS"]

    val n_ghttp2_FLAG_ACK : int [@@js.global "NGHTTP2_FLAG_ACK"]

    val n_ghttp2_FLAG_PADDED : int [@@js.global "NGHTTP2_FLAG_PADDED"]

    val n_ghttp2_FLAG_PRIORITY : int [@@js.global "NGHTTP2_FLAG_PRIORITY"]

    val d_efault_settings_header_table_size : int
      [@@js.global "DEFAULT_SETTINGS_HEADER_TABLE_SIZE"]

    val d_efault_settings_enable_push : int
      [@@js.global "DEFAULT_SETTINGS_ENABLE_PUSH"]

    val d_efault_settings_initial_window_size : int
      [@@js.global "DEFAULT_SETTINGS_INITIAL_WINDOW_SIZE"]

    val d_efault_settings_max_frame_size : int
      [@@js.global "DEFAULT_SETTINGS_MAX_FRAME_SIZE"]

    val m_ax_max_frame_size : int [@@js.global "MAX_MAX_FRAME_SIZE"]

    val m_in_max_frame_size : int [@@js.global "MIN_MAX_FRAME_SIZE"]

    val m_ax_initial_window_size : int [@@js.global "MAX_INITIAL_WINDOW_SIZE"]

    val n_ghttp2_DEFAULT_WEIGHT : int [@@js.global "NGHTTP2_DEFAULT_WEIGHT"]

    val n_ghttp2_SETTINGS_HEADER_TABLE_SIZE : int
      [@@js.global "NGHTTP2_SETTINGS_HEADER_TABLE_SIZE"]

    val n_ghttp2_SETTINGS_ENABLE_PUSH : int
      [@@js.global "NGHTTP2_SETTINGS_ENABLE_PUSH"]

    val n_ghttp2_SETTINGS_MAX_CONCURRENT_STREAMS : int
      [@@js.global "NGHTTP2_SETTINGS_MAX_CONCURRENT_STREAMS"]

    val n_ghttp2_SETTINGS_INITIAL_WINDOW_SIZE : int
      [@@js.global "NGHTTP2_SETTINGS_INITIAL_WINDOW_SIZE"]

    val n_ghttp2_SETTINGS_MAX_FRAME_SIZE : int
      [@@js.global "NGHTTP2_SETTINGS_MAX_FRAME_SIZE"]

    val n_ghttp2_SETTINGS_MAX_HEADER_LIST_SIZE : int
      [@@js.global "NGHTTP2_SETTINGS_MAX_HEADER_LIST_SIZE"]

    val p_adding_strategy_none : int [@@js.global "PADDING_STRATEGY_NONE"]

    val p_adding_strategy_max : int [@@js.global "PADDING_STRATEGY_MAX"]

    val p_adding_strategy_callback : int
      [@@js.global "PADDING_STRATEGY_CALLBACK"]

    val h_ttp2_HEADER_STATUS : string [@@js.global "HTTP2_HEADER_STATUS"]

    val h_ttp2_HEADER_METHOD : string [@@js.global "HTTP2_HEADER_METHOD"]

    val h_ttp2_HEADER_AUTHORITY : string [@@js.global "HTTP2_HEADER_AUTHORITY"]

    val h_ttp2_HEADER_SCHEME : string [@@js.global "HTTP2_HEADER_SCHEME"]

    val h_ttp2_HEADER_PATH : string [@@js.global "HTTP2_HEADER_PATH"]

    val h_ttp2_HEADER_ACCEPT_CHARSET : string
      [@@js.global "HTTP2_HEADER_ACCEPT_CHARSET"]

    val h_ttp2_HEADER_ACCEPT_ENCODING : string
      [@@js.global "HTTP2_HEADER_ACCEPT_ENCODING"]

    val h_ttp2_HEADER_ACCEPT_LANGUAGE : string
      [@@js.global "HTTP2_HEADER_ACCEPT_LANGUAGE"]

    val h_ttp2_HEADER_ACCEPT_RANGES : string
      [@@js.global "HTTP2_HEADER_ACCEPT_RANGES"]

    val h_ttp2_HEADER_ACCEPT : string [@@js.global "HTTP2_HEADER_ACCEPT"]

    val h_ttp2_HEADER_ACCESS_CONTROL_ALLOW_ORIGIN : string
      [@@js.global "HTTP2_HEADER_ACCESS_CONTROL_ALLOW_ORIGIN"]

    val h_ttp2_HEADER_AGE : string [@@js.global "HTTP2_HEADER_AGE"]

    val h_ttp2_HEADER_ALLOW : string [@@js.global "HTTP2_HEADER_ALLOW"]

    val h_ttp2_HEADER_AUTHORIZATION : string
      [@@js.global "HTTP2_HEADER_AUTHORIZATION"]

    val h_ttp2_HEADER_CACHE_CONTROL : string
      [@@js.global "HTTP2_HEADER_CACHE_CONTROL"]

    val h_ttp2_HEADER_CONNECTION : string
      [@@js.global "HTTP2_HEADER_CONNECTION"]

    val h_ttp2_HEADER_CONTENT_DISPOSITION : string
      [@@js.global "HTTP2_HEADER_CONTENT_DISPOSITION"]

    val h_ttp2_HEADER_CONTENT_ENCODING : string
      [@@js.global "HTTP2_HEADER_CONTENT_ENCODING"]

    val h_ttp2_HEADER_CONTENT_LANGUAGE : string
      [@@js.global "HTTP2_HEADER_CONTENT_LANGUAGE"]

    val h_ttp2_HEADER_CONTENT_LENGTH : string
      [@@js.global "HTTP2_HEADER_CONTENT_LENGTH"]

    val h_ttp2_HEADER_CONTENT_LOCATION : string
      [@@js.global "HTTP2_HEADER_CONTENT_LOCATION"]

    val h_ttp2_HEADER_CONTENT_MD5 : string
      [@@js.global "HTTP2_HEADER_CONTENT_MD5"]

    val h_ttp2_HEADER_CONTENT_RANGE : string
      [@@js.global "HTTP2_HEADER_CONTENT_RANGE"]

    val h_ttp2_HEADER_CONTENT_TYPE : string
      [@@js.global "HTTP2_HEADER_CONTENT_TYPE"]

    val h_ttp2_HEADER_COOKIE : string [@@js.global "HTTP2_HEADER_COOKIE"]

    val h_ttp2_HEADER_DATE : string [@@js.global "HTTP2_HEADER_DATE"]

    val h_ttp2_HEADER_ETAG : string [@@js.global "HTTP2_HEADER_ETAG"]

    val h_ttp2_HEADER_EXPECT : string [@@js.global "HTTP2_HEADER_EXPECT"]

    val h_ttp2_HEADER_EXPIRES : string [@@js.global "HTTP2_HEADER_EXPIRES"]

    val h_ttp2_HEADER_FROM : string [@@js.global "HTTP2_HEADER_FROM"]

    val h_ttp2_HEADER_HOST : string [@@js.global "HTTP2_HEADER_HOST"]

    val h_ttp2_HEADER_IF_MATCH : string [@@js.global "HTTP2_HEADER_IF_MATCH"]

    val h_ttp2_HEADER_IF_MODIFIED_SINCE : string
      [@@js.global "HTTP2_HEADER_IF_MODIFIED_SINCE"]

    val h_ttp2_HEADER_IF_NONE_MATCH : string
      [@@js.global "HTTP2_HEADER_IF_NONE_MATCH"]

    val h_ttp2_HEADER_IF_RANGE : string [@@js.global "HTTP2_HEADER_IF_RANGE"]

    val h_ttp2_HEADER_IF_UNMODIFIED_SINCE : string
      [@@js.global "HTTP2_HEADER_IF_UNMODIFIED_SINCE"]

    val h_ttp2_HEADER_LAST_MODIFIED : string
      [@@js.global "HTTP2_HEADER_LAST_MODIFIED"]

    val h_ttp2_HEADER_LINK : string [@@js.global "HTTP2_HEADER_LINK"]

    val h_ttp2_HEADER_LOCATION : string [@@js.global "HTTP2_HEADER_LOCATION"]

    val h_ttp2_HEADER_MAX_FORWARDS : string
      [@@js.global "HTTP2_HEADER_MAX_FORWARDS"]

    val h_ttp2_HEADER_PREFER : string [@@js.global "HTTP2_HEADER_PREFER"]

    val h_ttp2_HEADER_PROXY_AUTHENTICATE : string
      [@@js.global "HTTP2_HEADER_PROXY_AUTHENTICATE"]

    val h_ttp2_HEADER_PROXY_AUTHORIZATION : string
      [@@js.global "HTTP2_HEADER_PROXY_AUTHORIZATION"]

    val h_ttp2_HEADER_RANGE : string [@@js.global "HTTP2_HEADER_RANGE"]

    val h_ttp2_HEADER_REFERER : string [@@js.global "HTTP2_HEADER_REFERER"]

    val h_ttp2_HEADER_REFRESH : string [@@js.global "HTTP2_HEADER_REFRESH"]

    val h_ttp2_HEADER_RETRY_AFTER : string
      [@@js.global "HTTP2_HEADER_RETRY_AFTER"]

    val h_ttp2_HEADER_SERVER : string [@@js.global "HTTP2_HEADER_SERVER"]

    val h_ttp2_HEADER_SET_COOKIE : string
      [@@js.global "HTTP2_HEADER_SET_COOKIE"]

    val h_ttp2_HEADER_STRICT_TRANSPORT_SECURITY : string
      [@@js.global "HTTP2_HEADER_STRICT_TRANSPORT_SECURITY"]

    val h_ttp2_HEADER_TRANSFER_ENCODING : string
      [@@js.global "HTTP2_HEADER_TRANSFER_ENCODING"]

    val h_ttp2_HEADER_TE : string [@@js.global "HTTP2_HEADER_TE"]

    val h_ttp2_HEADER_UPGRADE : string [@@js.global "HTTP2_HEADER_UPGRADE"]

    val h_ttp2_HEADER_USER_AGENT : string
      [@@js.global "HTTP2_HEADER_USER_AGENT"]

    val h_ttp2_HEADER_VARY : string [@@js.global "HTTP2_HEADER_VARY"]

    val h_ttp2_HEADER_VIA : string [@@js.global "HTTP2_HEADER_VIA"]

    val h_ttp2_HEADER_WWW_AUTHENTICATE : string
      [@@js.global "HTTP2_HEADER_WWW_AUTHENTICATE"]

    val h_ttp2_HEADER_HTTP2_SETTINGS : string
      [@@js.global "HTTP2_HEADER_HTTP2_SETTINGS"]

    val h_ttp2_HEADER_KEEP_ALIVE : string
      [@@js.global "HTTP2_HEADER_KEEP_ALIVE"]

    val h_ttp2_HEADER_PROXY_CONNECTION : string
      [@@js.global "HTTP2_HEADER_PROXY_CONNECTION"]

    val h_ttp2_METHOD_ACL : string [@@js.global "HTTP2_METHOD_ACL"]

    val h_ttp2_METHOD_BASELINE_CONTROL : string
      [@@js.global "HTTP2_METHOD_BASELINE_CONTROL"]

    val h_ttp2_METHOD_BIND : string [@@js.global "HTTP2_METHOD_BIND"]

    val h_ttp2_METHOD_CHECKIN : string [@@js.global "HTTP2_METHOD_CHECKIN"]

    val h_ttp2_METHOD_CHECKOUT : string [@@js.global "HTTP2_METHOD_CHECKOUT"]

    val h_ttp2_METHOD_CONNECT : string [@@js.global "HTTP2_METHOD_CONNECT"]

    val h_ttp2_METHOD_COPY : string [@@js.global "HTTP2_METHOD_COPY"]

    val h_ttp2_METHOD_DELETE : string [@@js.global "HTTP2_METHOD_DELETE"]

    val h_ttp2_METHOD_GET : string [@@js.global "HTTP2_METHOD_GET"]

    val h_ttp2_METHOD_HEAD : string [@@js.global "HTTP2_METHOD_HEAD"]

    val h_ttp2_METHOD_LABEL : string [@@js.global "HTTP2_METHOD_LABEL"]

    val h_ttp2_METHOD_LINK : string [@@js.global "HTTP2_METHOD_LINK"]

    val h_ttp2_METHOD_LOCK : string [@@js.global "HTTP2_METHOD_LOCK"]

    val h_ttp2_METHOD_MERGE : string [@@js.global "HTTP2_METHOD_MERGE"]

    val h_ttp2_METHOD_MKACTIVITY : string
      [@@js.global "HTTP2_METHOD_MKACTIVITY"]

    val h_ttp2_METHOD_MKCALENDAR : string
      [@@js.global "HTTP2_METHOD_MKCALENDAR"]

    val h_ttp2_METHOD_MKCOL : string [@@js.global "HTTP2_METHOD_MKCOL"]

    val h_ttp2_METHOD_MKREDIRECTREF : string
      [@@js.global "HTTP2_METHOD_MKREDIRECTREF"]

    val h_ttp2_METHOD_MKWORKSPACE : string
      [@@js.global "HTTP2_METHOD_MKWORKSPACE"]

    val h_ttp2_METHOD_MOVE : string [@@js.global "HTTP2_METHOD_MOVE"]

    val h_ttp2_METHOD_OPTIONS : string [@@js.global "HTTP2_METHOD_OPTIONS"]

    val h_ttp2_METHOD_ORDERPATCH : string
      [@@js.global "HTTP2_METHOD_ORDERPATCH"]

    val h_ttp2_METHOD_PATCH : string [@@js.global "HTTP2_METHOD_PATCH"]

    val h_ttp2_METHOD_POST : string [@@js.global "HTTP2_METHOD_POST"]

    val h_ttp2_METHOD_PRI : string [@@js.global "HTTP2_METHOD_PRI"]

    val h_ttp2_METHOD_PROPFIND : string [@@js.global "HTTP2_METHOD_PROPFIND"]

    val h_ttp2_METHOD_PROPPATCH : string [@@js.global "HTTP2_METHOD_PROPPATCH"]

    val h_ttp2_METHOD_PUT : string [@@js.global "HTTP2_METHOD_PUT"]

    val h_ttp2_METHOD_REBIND : string [@@js.global "HTTP2_METHOD_REBIND"]

    val h_ttp2_METHOD_REPORT : string [@@js.global "HTTP2_METHOD_REPORT"]

    val h_ttp2_METHOD_SEARCH : string [@@js.global "HTTP2_METHOD_SEARCH"]

    val h_ttp2_METHOD_TRACE : string [@@js.global "HTTP2_METHOD_TRACE"]

    val h_ttp2_METHOD_UNBIND : string [@@js.global "HTTP2_METHOD_UNBIND"]

    val h_ttp2_METHOD_UNCHECKOUT : string
      [@@js.global "HTTP2_METHOD_UNCHECKOUT"]

    val h_ttp2_METHOD_UNLINK : string [@@js.global "HTTP2_METHOD_UNLINK"]

    val h_ttp2_METHOD_UNLOCK : string [@@js.global "HTTP2_METHOD_UNLOCK"]

    val h_ttp2_METHOD_UPDATE : string [@@js.global "HTTP2_METHOD_UPDATE"]

    val h_ttp2_METHOD_UPDATEREDIRECTREF : string
      [@@js.global "HTTP2_METHOD_UPDATEREDIRECTREF"]

    val h_ttp2_METHOD_VERSION_CONTROL : string
      [@@js.global "HTTP2_METHOD_VERSION_CONTROL"]

    val h_ttp_status_continue : int [@@js.global "HTTP_STATUS_CONTINUE"]

    val h_ttp_status_switching_protocols : int
      [@@js.global "HTTP_STATUS_SWITCHING_PROTOCOLS"]

    val h_ttp_status_processing : int [@@js.global "HTTP_STATUS_PROCESSING"]

    val h_ttp_status_ok : int [@@js.global "HTTP_STATUS_OK"]

    val h_ttp_status_created : int [@@js.global "HTTP_STATUS_CREATED"]

    val h_ttp_status_accepted : int [@@js.global "HTTP_STATUS_ACCEPTED"]

    val h_ttp_status_non_authoritative_information : int
      [@@js.global "HTTP_STATUS_NON_AUTHORITATIVE_INFORMATION"]

    val h_ttp_status_no_content : int [@@js.global "HTTP_STATUS_NO_CONTENT"]

    val h_ttp_status_reset_content : int
      [@@js.global "HTTP_STATUS_RESET_CONTENT"]

    val h_ttp_status_partial_content : int
      [@@js.global "HTTP_STATUS_PARTIAL_CONTENT"]

    val h_ttp_status_multi_status : int [@@js.global "HTTP_STATUS_MULTI_STATUS"]

    val h_ttp_status_already_reported : int
      [@@js.global "HTTP_STATUS_ALREADY_REPORTED"]

    val h_ttp_status_im_used : int [@@js.global "HTTP_STATUS_IM_USED"]

    val h_ttp_status_multiple_choices : int
      [@@js.global "HTTP_STATUS_MULTIPLE_CHOICES"]

    val h_ttp_status_moved_permanently : int
      [@@js.global "HTTP_STATUS_MOVED_PERMANENTLY"]

    val h_ttp_status_found : int [@@js.global "HTTP_STATUS_FOUND"]

    val h_ttp_status_see_other : int [@@js.global "HTTP_STATUS_SEE_OTHER"]

    val h_ttp_status_not_modified : int [@@js.global "HTTP_STATUS_NOT_MODIFIED"]

    val h_ttp_status_use_proxy : int [@@js.global "HTTP_STATUS_USE_PROXY"]

    val h_ttp_status_temporary_redirect : int
      [@@js.global "HTTP_STATUS_TEMPORARY_REDIRECT"]

    val h_ttp_status_permanent_redirect : int
      [@@js.global "HTTP_STATUS_PERMANENT_REDIRECT"]

    val h_ttp_status_bad_request : int [@@js.global "HTTP_STATUS_BAD_REQUEST"]

    val h_ttp_status_unauthorized : int [@@js.global "HTTP_STATUS_UNAUTHORIZED"]

    val h_ttp_status_payment_required : int
      [@@js.global "HTTP_STATUS_PAYMENT_REQUIRED"]

    val h_ttp_status_forbidden : int [@@js.global "HTTP_STATUS_FORBIDDEN"]

    val h_ttp_status_not_found : int [@@js.global "HTTP_STATUS_NOT_FOUND"]

    val h_ttp_status_method_not_allowed : int
      [@@js.global "HTTP_STATUS_METHOD_NOT_ALLOWED"]

    val h_ttp_status_not_acceptable : int
      [@@js.global "HTTP_STATUS_NOT_ACCEPTABLE"]

    val h_ttp_status_proxy_authentication_required : int
      [@@js.global "HTTP_STATUS_PROXY_AUTHENTICATION_REQUIRED"]

    val h_ttp_status_request_timeout : int
      [@@js.global "HTTP_STATUS_REQUEST_TIMEOUT"]

    val h_ttp_status_conflict : int [@@js.global "HTTP_STATUS_CONFLICT"]

    val h_ttp_status_gone : int [@@js.global "HTTP_STATUS_GONE"]

    val h_ttp_status_length_required : int
      [@@js.global "HTTP_STATUS_LENGTH_REQUIRED"]

    val h_ttp_status_precondition_failed : int
      [@@js.global "HTTP_STATUS_PRECONDITION_FAILED"]

    val h_ttp_status_payload_too_large : int
      [@@js.global "HTTP_STATUS_PAYLOAD_TOO_LARGE"]

    val h_ttp_status_uri_too_long : int [@@js.global "HTTP_STATUS_URI_TOO_LONG"]

    val h_ttp_status_unsupported_media_type : int
      [@@js.global "HTTP_STATUS_UNSUPPORTED_MEDIA_TYPE"]

    val h_ttp_status_range_not_satisfiable : int
      [@@js.global "HTTP_STATUS_RANGE_NOT_SATISFIABLE"]

    val h_ttp_status_expectation_failed : int
      [@@js.global "HTTP_STATUS_EXPECTATION_FAILED"]

    val h_ttp_status_teapot : int [@@js.global "HTTP_STATUS_TEAPOT"]

    val h_ttp_status_misdirected_request : int
      [@@js.global "HTTP_STATUS_MISDIRECTED_REQUEST"]

    val h_ttp_status_unprocessable_entity : int
      [@@js.global "HTTP_STATUS_UNPROCESSABLE_ENTITY"]

    val h_ttp_status_locked : int [@@js.global "HTTP_STATUS_LOCKED"]

    val h_ttp_status_failed_dependency : int
      [@@js.global "HTTP_STATUS_FAILED_DEPENDENCY"]

    val h_ttp_status_unordered_collection : int
      [@@js.global "HTTP_STATUS_UNORDERED_COLLECTION"]

    val h_ttp_status_upgrade_required : int
      [@@js.global "HTTP_STATUS_UPGRADE_REQUIRED"]

    val h_ttp_status_precondition_required : int
      [@@js.global "HTTP_STATUS_PRECONDITION_REQUIRED"]

    val h_ttp_status_too_many_requests : int
      [@@js.global "HTTP_STATUS_TOO_MANY_REQUESTS"]

    val h_ttp_status_request_header_fields_too_large : int
      [@@js.global "HTTP_STATUS_REQUEST_HEADER_FIELDS_TOO_LARGE"]

    val h_ttp_status_unavailable_for_legal_reasons : int
      [@@js.global "HTTP_STATUS_UNAVAILABLE_FOR_LEGAL_REASONS"]

    val h_ttp_status_internal_server_error : int
      [@@js.global "HTTP_STATUS_INTERNAL_SERVER_ERROR"]

    val h_ttp_status_not_implemented : int
      [@@js.global "HTTP_STATUS_NOT_IMPLEMENTED"]

    val h_ttp_status_bad_gateway : int [@@js.global "HTTP_STATUS_BAD_GATEWAY"]

    val h_ttp_status_service_unavailable : int
      [@@js.global "HTTP_STATUS_SERVICE_UNAVAILABLE"]

    val h_ttp_status_gateway_timeout : int
      [@@js.global "HTTP_STATUS_GATEWAY_TIMEOUT"]

    val h_ttp_status_http_version_not_supported : int
      [@@js.global "HTTP_STATUS_HTTP_VERSION_NOT_SUPPORTED"]

    val h_ttp_status_variant_also_negotiates : int
      [@@js.global "HTTP_STATUS_VARIANT_ALSO_NEGOTIATES"]

    val h_ttp_status_insufficient_storage : int
      [@@js.global "HTTP_STATUS_INSUFFICIENT_STORAGE"]

    val h_ttp_status_loop_detected : int
      [@@js.global "HTTP_STATUS_LOOP_DETECTED"]

    val h_ttp_status_bandwidth_limit_exceeded : int
      [@@js.global "HTTP_STATUS_BANDWIDTH_LIMIT_EXCEEDED"]

    val h_ttp_status_not_extended : int [@@js.global "HTTP_STATUS_NOT_EXTENDED"]

    val h_ttp_status_network_authentication_required : int
      [@@js.global "HTTP_STATUS_NETWORK_AUTHENTICATION_REQUIRED"]
  end
  [@@js.scope "constants"]

  val get_default_settings : unit -> http2_Settings
    [@@js.global "getDefaultSettings"]

  val get_packed_settings : settings:http2_Settings -> Buffer.t
    [@@js.global "getPackedSettings"]

  val get_unpacked_settings : buf:Uint8Array.t -> http2_Settings
    [@@js.global "getUnpackedSettings"]

  val create_server
    :  ?on_request_handler:
         (request:http2_Http2ServerRequest
          -> response:http2_Http2ServerResponse
          -> unit)
    -> unit
    -> http2_Http2Server
    [@@js.global "createServer"]

  val create_server
    :  options:http2_ServerOptions
    -> ?on_request_handler:
         (request:http2_Http2ServerRequest
          -> response:http2_Http2ServerResponse
          -> unit)
    -> unit
    -> http2_Http2Server
    [@@js.global "createServer"]

  val create_secure_server
    :  ?on_request_handler:
         (request:http2_Http2ServerRequest
          -> response:http2_Http2ServerResponse
          -> unit)
    -> unit
    -> http2_Http2SecureServer
    [@@js.global "createSecureServer"]

  val create_secure_server
    :  options:http2_SecureServerOptions
    -> ?on_request_handler:
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
