[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module Net : sig
  open Node_stream
  open Node_dns

  module LookupFunction : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply
      :  t
      -> hostname:string
      -> options:Dns.LookupOneOptions.t
      -> callback:
           (err:ErrnoException.t or_null
            -> address:string
            -> family:int
            -> unit)
      -> unit
      [@@js.apply]
  end
  [@@js.scope "LookupFunction"]

  module AddressInfo : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_address : t -> string [@@js.get "address"]

    val set_address : t -> string -> unit [@@js.set "address"]

    val get_family : t -> string [@@js.get "family"]

    val set_family : t -> string -> unit [@@js.set "family"]

    val get_port : t -> int [@@js.get "port"]

    val set_port : t -> int -> unit [@@js.set "port"]
  end
  [@@js.scope "AddressInfo"]

  module SocketConstructorOpts : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_fd : t -> int [@@js.get "fd"]

    val set_fd : t -> int -> unit [@@js.set "fd"]

    val get_allow_half_open : t -> bool [@@js.get "allowHalfOpen"]

    val set_allow_half_open : t -> bool -> unit [@@js.set "allowHalfOpen"]

    val get_readable : t -> bool [@@js.get "readable"]

    val set_readable : t -> bool -> unit [@@js.set "readable"]

    val get_writable : t -> bool [@@js.get "writable"]

    val set_writable : t -> bool -> unit [@@js.set "writable"]
  end
  [@@js.scope "SocketConstructorOpts"]

  module OnReadOpts : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_buffer : t -> (Uint8Array.t, unit -> Uint8Array.t) union2
      [@@js.get "buffer"]

    val set_buffer : t -> (Uint8Array.t, unit -> Uint8Array.t) union2 -> unit
      [@@js.set "buffer"]

    val callback : t -> bytes_written:int -> buf:Uint8Array.t -> bool
      [@@js.call "callback"]
  end
  [@@js.scope "OnReadOpts"]

  module ConnectOpts : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_onread : t -> OnReadOpts.t [@@js.get "onread"]

    val set_onread : t -> OnReadOpts.t -> unit [@@js.set "onread"]
  end
  [@@js.scope "ConnectOpts"]

  module TcpSocketConnectOpts : sig
    include module type of struct
      include ConnectOpts
    end

    val get_port : t -> int [@@js.get "port"]

    val set_port : t -> int -> unit [@@js.set "port"]

    val get_host : t -> string [@@js.get "host"]

    val set_host : t -> string -> unit [@@js.set "host"]

    val get_local_address : t -> string [@@js.get "localAddress"]

    val set_local_address : t -> string -> unit [@@js.set "localAddress"]

    val get_local_port : t -> int [@@js.get "localPort"]

    val set_local_port : t -> int -> unit [@@js.set "localPort"]

    val get_hints : t -> int [@@js.get "hints"]

    val set_hints : t -> int -> unit [@@js.set "hints"]

    val get_family : t -> int [@@js.get "family"]

    val set_family : t -> int -> unit [@@js.set "family"]

    val get_lookup : t -> LookupFunction.t [@@js.get "lookup"]

    val set_lookup : t -> LookupFunction.t -> unit [@@js.set "lookup"]
  end
  [@@js.scope "TcpSocketConnectOpts"]

  module IpcSocketConnectOpts : sig
    include module type of struct
      include ConnectOpts
    end

    val get_path : t -> string [@@js.get "path"]

    val set_path : t -> string -> unit [@@js.set "path"]
  end
  [@@js.scope "IpcSocketConnectOpts"]

  module SocketConnectOpts : sig
    type t = (IpcSocketConnectOpts.t, TcpSocketConnectOpts.t) union2

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Socket : sig
    include module type of struct
      include Stream.Duplex
    end

    val create : ?options:SocketConstructorOpts.t -> unit -> t [@@js.create]

    val write
      :  t
      -> buffer:Uint8Array.t or_string
      -> ?cb:(?err:Error.t -> unit -> unit)
      -> unit
      -> bool
      [@@js.call "write"]

    val write'
      :  t
      -> str:Uint8Array.t or_string
      -> ?encoding:BufferEncoding.t
      -> ?cb:(?err:Error.t -> unit -> unit)
      -> unit
      -> bool
      [@@js.call "write"]

    val connect
      :  t
      -> options:SocketConnectOpts.t
      -> ?connection_listener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "connect"]

    val connect'
      :  t
      -> port:int
      -> host:string
      -> ?connection_listener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "connect"]

    val connect''
      :  t
      -> port:int
      -> ?connection_listener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "connect"]

    val connect'''
      :  t
      -> path:string
      -> ?connection_listener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "connect"]

    val set_encoding : t -> ?encoding:BufferEncoding.t -> unit -> t
      [@@js.call "setEncoding"]

    val pause : t -> t [@@js.call "pause"]

    val resume : t -> t [@@js.call "resume"]

    val set_timeout : t -> timeout:int -> ?callback:(unit -> unit) -> unit -> t
      [@@js.call "setTimeout"]

    val set_no_delay : t -> ?no_delay:bool -> unit -> t [@@js.call "setNoDelay"]

    val set_keep_alive : t -> ?enable:bool -> ?initial_delay:int -> unit -> t
      [@@js.call "setKeepAlive"]

    val address : t -> (AddressInfo.t, AnonymousInterface0.t) union2
      [@@js.call "address"]

    val unref : t -> t [@@js.call "unref"]

    val ref : t -> t [@@js.call "ref"]

    val get_buffer_size : t -> int [@@js.get "bufferSize"]

    val get_bytes_read : t -> int [@@js.get "bytesRead"]

    val get_bytes_written : t -> int [@@js.get "bytesWritten"]

    val get_connecting : t -> bool [@@js.get "connecting"]

    val get_destroyed : t -> bool [@@js.get "destroyed"]

    val get_local_address : t -> string [@@js.get "localAddress"]

    val get_local_port : t -> int [@@js.get "localPort"]

    val get_remote_address : t -> string [@@js.get "remoteAddress"]

    val get_remote_family : t -> string [@@js.get "remoteFamily"]

    val get_remote_port : t -> int [@@js.get "remotePort"]

    val end_ : t -> ?cb:(unit -> unit) -> unit -> unit [@@js.call "end"]

    val end_'
      :  t
      -> buffer:Uint8Array.t or_string
      -> ?cb:(unit -> unit)
      -> unit
      -> unit
      [@@js.call "end"]

    val end_''
      :  t
      -> str:Uint8Array.t or_string
      -> ?encoding:BufferEncoding.t
      -> ?cb:(unit -> unit)
      -> unit
      -> unit
      [@@js.call "end"]

    val add_listener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(had_error:bool -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(data:Buffer.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''
      :  t
      -> event:([ `lookup ][@js.enum])
      -> listener:
           (err:Error.t
            -> address:string
            -> family:string or_number
            -> host:string
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val emit
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val emit' : t -> event:([ `close ][@js.enum]) -> had_error:bool -> bool
      [@@js.call "emit"]

    val emit'' : t -> event:([ `connect ][@js.enum]) -> bool [@@js.call "emit"]

    val emit''' : t -> event:([ `data ][@js.enum]) -> data:Buffer.t -> bool
      [@@js.call "emit"]

    val emit'''' : t -> event:([ `drain ][@js.enum]) -> bool [@@js.call "emit"]

    val emit''''' : t -> event:([ `end_ ][@js.enum]) -> bool [@@js.call "emit"]

    val emit'''''' : t -> event:([ `error ][@js.enum]) -> err:Error.t -> bool
      [@@js.call "emit"]

    val emit'''''''
      :  t
      -> event:([ `lookup ][@js.enum])
      -> err:Error.t
      -> address:string
      -> family:string or_number
      -> host:string
      -> bool
      [@@js.call "emit"]

    val emit'''''''' : t -> event:([ `timeout ][@js.enum]) -> bool
      [@@js.call "emit"]

    module CloseListener : sig
      type t = had_error:bool -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module ConnectListener : sig
      type t = unit -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module DataListener : sig
      type t = data:Buffer.t -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module DrainListener : sig
      type t = unit -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module EndListener : sig
      type t = unit -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module ErrorListener : sig
      type t = err:Error.t -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module LookupListener : sig
      type t =
        err:Error.t
        -> address:string
        -> family:string or_number
        -> host:string
        -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module TimeoutListener : sig
      type t = unit -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    type listener =
      ([ `Close of CloseListener.t
       | `Connect of ConnectListener.t
       | `Data of DataListener.t
       | `Drain of DrainListener.t
       | `End_ of EndListener.t
       | `Error of ErrorListener.t
       | `Lookup of LookupListener.t
       | `Timeout of TimeoutListener.t
       ]
      [@js.union])

    [@@@js.stop]

    val on : t -> listener -> unit

    val add_listener : t -> listener -> unit

    val once : t -> listener -> unit

    val prepend_listener : t -> listener -> unit

    val prepend_once_listener : t -> listener -> unit

    [@@@js.start]

    [@@@js.implem
    val on : t -> string -> Ojs.t -> unit [@@js.call "on"]

    val add_listener : t -> string -> Ojs.t -> unit [@@js.call "addListener"]

    val once : t -> string -> Ojs.t -> unit [@@js.call "once"]

    val prepend_listener : t -> string -> Ojs.t -> unit
      [@@js.call "prependListener"]

    val prepend_once_listener : t -> string -> Ojs.t -> unit
      [@@js.call "prependOnceListener"]

    let with_listener_fn fn t = function
      | `Close f ->
        fn t "close" @@ [%js.of: CloseListener.t] f
      | `Connect f ->
        fn t "connect" @@ [%js.of: ConnectListener.t] f
      | `Data f ->
        fn t "data" @@ [%js.of: DataListener.t] f
      | `Drain f ->
        fn t "drain" @@ [%js.of: DrainListener.t] f
      | `End_ f ->
        fn t "end_" @@ [%js.of: EndListener.t] f
      | `Error f ->
        fn t "error" @@ [%js.of: ErrorListener.t] f
      | `Lookup f ->
        fn t "lookup" @@ [%js.of: LookupListener.t] f
      | `Timeout f ->
        fn t "timeout" @@ [%js.of: TimeoutListener.t] f

    let on = with_listener_fn on

    let add_listener = with_listener_fn add_listener

    let once = with_listener_fn once

    let prepend_listener = with_listener_fn prepend_listener

    let prepend_once_listener = with_listener_fn prepend_once_listener]

    val on
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]
  end
  [@@js.scope "Socket"]

  module ListenOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_port : t -> int [@@js.get "port"]

    val set_port : t -> int -> unit [@@js.set "port"]

    val get_host : t -> string [@@js.get "host"]

    val set_host : t -> string -> unit [@@js.set "host"]

    val get_backlog : t -> int [@@js.get "backlog"]

    val set_backlog : t -> int -> unit [@@js.set "backlog"]

    val get_path : t -> string [@@js.get "path"]

    val set_path : t -> string -> unit [@@js.set "path"]

    val get_exclusive : t -> bool [@@js.get "exclusive"]

    val set_exclusive : t -> bool -> unit [@@js.set "exclusive"]

    val get_readable_all : t -> bool [@@js.get "readableAll"]

    val set_readable_all : t -> bool -> unit [@@js.set "readableAll"]

    val get_writable_all : t -> bool [@@js.get "writableAll"]

    val set_writable_all : t -> bool -> unit [@@js.set "writableAll"]

    val get_ipv6Only : t -> bool [@@js.get "ipv6Only"]

    val set_ipv6Only : t -> bool -> unit [@@js.set "ipv6Only"]
  end
  [@@js.scope "ListenOptions"]

  module ServerOpts : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_allow_half_open : t -> bool [@@js.get "allowHalfOpen"]

    val set_allow_half_open : t -> bool -> unit [@@js.set "allowHalfOpen"]

    val get_pause_on_connect : t -> bool [@@js.get "pauseOnConnect"]

    val set_pause_on_connect : t -> bool -> unit [@@js.set "pauseOnConnect"]
  end
  [@@js.scope "ServerOpts"]

  module Server : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : ?connection_listener:(socket:Socket.t -> unit) -> unit -> t
      [@@js.create]

    val create'
      :  ?options:ServerOpts.t
      -> ?connection_listener:(socket:Socket.t -> unit)
      -> unit
      -> t
      [@@js.create]

    val listen
      :  t
      -> ?port:int
      -> ?hostname:string
      -> ?backlog:int
      -> ?listening_listener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "listen"]

    val listen'
      :  t
      -> ?port:int
      -> ?hostname:string
      -> ?listening_listener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "listen"]

    val listen''
      :  t
      -> ?port:int
      -> ?backlog:int
      -> ?listening_listener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "listen"]

    val listen'''
      :  t
      -> ?port:int
      -> ?listening_listener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "listen"]

    val listen''''
      :  t
      -> path:string
      -> ?backlog:int
      -> ?listening_listener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "listen"]

    val listen'''''
      :  t
      -> path:string
      -> ?listening_listener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "listen"]

    val listen''''''
      :  t
      -> options:ListenOptions.t
      -> ?listening_listener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "listen"]

    val listen'''''''
      :  t
      -> handle:any
      -> ?backlog:int
      -> ?listening_listener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "listen"]

    val listen''''''''
      :  t
      -> handle:any
      -> ?listening_listener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "listen"]

    val close : t -> ?callback:(?err:Error.t -> unit -> unit) -> unit -> t
      [@@js.call "close"]

    val address : t -> AddressInfo.t or_string or_null [@@js.call "address"]

    val get_connections
      :  t
      -> cb:(error:Error.t or_null -> count:int -> unit)
      -> unit
      [@@js.call "getConnections"]

    val ref : t -> t [@@js.call "ref"]

    val unref : t -> t [@@js.call "unref"]

    val get_max_connections : t -> int [@@js.get "maxConnections"]

    val set_max_connections : t -> int -> unit [@@js.set "maxConnections"]

    val get_connections : t -> int [@@js.get "connections"]

    val set_connections : t -> int -> unit [@@js.set "connections"]

    val get_listening : t -> bool [@@js.get "listening"]

    val set_listening : t -> bool -> unit [@@js.set "listening"]

    val add_listener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
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
      -> event:([ `connection ][@js.enum])
      -> listener:(socket:Socket.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''
      :  t
      -> event:([ `listening ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val emit
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val emit' : t -> event:([ `close ][@js.enum]) -> bool [@@js.call "emit"]

    val emit''
      :  t
      -> event:([ `connection ][@js.enum])
      -> socket:Socket.t
      -> bool
      [@@js.call "emit"]

    val emit''' : t -> event:([ `error ][@js.enum]) -> err:Error.t -> bool
      [@@js.call "emit"]

    val emit'''' : t -> event:([ `listening ][@js.enum]) -> bool
      [@@js.call "emit"]

    val on
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val on' : t -> event:([ `close ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `connection ][@js.enum])
      -> listener:(socket:Socket.t -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `listening ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val once
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
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
      -> event:([ `connection ][@js.enum])
      -> listener:(socket:Socket.t -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `listening ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val prepend_listener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
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
      -> event:([ `connection ][@js.enum])
      -> listener:(socket:Socket.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''
      :  t
      -> event:([ `listening ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_once_listener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
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
      -> event:([ `connection ][@js.enum])
      -> listener:(socket:Socket.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''
      :  t
      -> event:([ `listening ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]
  end
  [@@js.scope "Server"]

  module TcpNetConnectOpts : sig
    include module type of struct
      include TcpSocketConnectOpts
    end

    val get_timeout : t -> int [@@js.get "timeout"]

    val set_timeout : t -> int -> unit [@@js.set "timeout"]

    val cast' : t -> SocketConstructorOpts.t [@@js.cast]
  end
  [@@js.scope "TcpNetConnectOpts"]

  module IpcNetConnectOpts : sig
    include module type of struct
      include IpcSocketConnectOpts
    end

    val get_timeout : t -> int [@@js.get "timeout"]

    val set_timeout : t -> int -> unit [@@js.set "timeout"]

    val cast' : t -> SocketConstructorOpts.t [@@js.cast]
  end
  [@@js.scope "IpcNetConnectOpts"]

  module NetConnectOpts : sig
    type t = (IpcNetConnectOpts.t, TcpNetConnectOpts.t) union2

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val create_server
    :  ?connection_listener:(socket:Socket.t -> unit)
    -> unit
    -> Server.t
    [@@js.global "createServer"]

  val create_server
    :  ?options:ServerOpts.t
    -> ?connection_listener:(socket:Socket.t -> unit)
    -> unit
    -> Server.t
    [@@js.global "createServer"]

  val connect
    :  options:NetConnectOpts.t
    -> ?connection_listener:(unit -> unit)
    -> unit
    -> Socket.t
    [@@js.global "connect"]

  val connect
    :  port:int
    -> ?host:string
    -> ?connection_listener:(unit -> unit)
    -> unit
    -> Socket.t
    [@@js.global "connect"]

  val connect
    :  path:string
    -> ?connection_listener:(unit -> unit)
    -> unit
    -> Socket.t
    [@@js.global "connect"]

  val create_connection
    :  options:NetConnectOpts.t
    -> ?connection_listener:(unit -> unit)
    -> unit
    -> Socket.t
    [@@js.global "createConnection"]

  val create_connection
    :  port:int
    -> ?host:string
    -> ?connection_listener:(unit -> unit)
    -> unit
    -> Socket.t
    [@@js.global "createConnection"]

  val create_connection
    :  path:string
    -> ?connection_listener:(unit -> unit)
    -> unit
    -> Socket.t
    [@@js.global "createConnection"]

  val is_ip : input:string -> int [@@js.global "isIP"]

  val is_i_pv4 : input:string -> bool [@@js.global "isIPv4"]

  val is_i_pv6 : input:string -> bool [@@js.global "isIPv6"]
end
[@@js.scope Import.net]
