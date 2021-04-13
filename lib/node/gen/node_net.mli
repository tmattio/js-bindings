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

    type net_AddressInfo = [ `Net_AddressInfo ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and net_ConnectOpts = [ `Net_ConnectOpts ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and net_IpcNetConnectOpts =
      [ `Net_IpcNetConnectOpts
      | `Net_ConnectOpts
      | `Net_IpcSocketConnectOpts
      | `Net_SocketConstructorOpts
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and net_IpcSocketConnectOpts =
      [ `Net_IpcSocketConnectOpts | `Net_ConnectOpts ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and net_ListenOptions = [ `Net_ListenOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and net_LookupFunction = [ `Net_LookupFunction ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and net_NetConnectOpts =
      (net_IpcNetConnectOpts, net_TcpNetConnectOpts) union2

    and net_OnReadOpts = [ `Net_OnReadOpts ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and net_Server = [ `Net_Server ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and net_ServerOpts = [ `Net_ServerOpts ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and net_Socket = [ `Net_Socket ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and net_SocketConnectOpts =
      (net_IpcSocketConnectOpts, net_TcpSocketConnectOpts) union2

    and net_SocketConstructorOpts = [ `Net_SocketConstructorOpts ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and net_TcpNetConnectOpts =
      [ `Net_TcpNetConnectOpts
      | `Net_ConnectOpts
      | `Net_SocketConstructorOpts
      | `Net_TcpSocketConnectOpts
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and net_TcpSocketConnectOpts =
      [ `Net_TcpSocketConnectOpts | `Net_ConnectOpts ] intf
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

module Node_net : sig
  (* export * from 'net'; *)
end

module Net : sig
  (* import * as stream from 'node:stream'; *)
  (* import EventEmitter = require('node:events'); *)
  (* import * as dns from 'node:dns'; *)
  module LookupFunction : sig
    type t = net_LookupFunction

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply
      :  t
      -> hostname:string
      -> options:Dns.LookupOneOptions.t_0
      -> callback:
           (err:NodeJS.ErrnoException.t_0 or_null
            -> address:string
            -> family:float
            -> unit)
      -> unit
      [@@js.apply]
  end
  [@@js.scope "LookupFunction"]

  module AddressInfo : sig
    type t = net_AddressInfo

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_address : t -> string [@@js.get "address"]

    val set_address : t -> string -> unit [@@js.set "address"]

    val get_family : t -> string [@@js.get "family"]

    val set_family : t -> string -> unit [@@js.set "family"]

    val get_port : t -> float [@@js.get "port"]

    val set_port : t -> float -> unit [@@js.set "port"]
  end
  [@@js.scope "AddressInfo"]

  module SocketConstructorOpts : sig
    type t = net_SocketConstructorOpts

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_fd : t -> float [@@js.get "fd"]

    val set_fd : t -> float -> unit [@@js.set "fd"]

    val get_allowHalfOpen : t -> bool [@@js.get "allowHalfOpen"]

    val set_allowHalfOpen : t -> bool -> unit [@@js.set "allowHalfOpen"]

    val get_readable : t -> bool [@@js.get "readable"]

    val set_readable : t -> bool -> unit [@@js.set "readable"]

    val get_writable : t -> bool [@@js.get "writable"]

    val set_writable : t -> bool -> unit [@@js.set "writable"]
  end
  [@@js.scope "SocketConstructorOpts"]

  module OnReadOpts : sig
    type t = net_OnReadOpts

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_buffer : t -> (Uint8Array.t, unit -> Uint8Array.t) union2
      [@@js.get "buffer"]

    val set_buffer
      :  t
      -> (Uint8Array.t, unit -> Uint8Array.t) union2
      -> unit
      [@@js.set "buffer"]

    val callback : t -> bytesWritten:float -> buf:Uint8Array.t -> bool
      [@@js.call "callback"]
  end
  [@@js.scope "OnReadOpts"]

  module ConnectOpts : sig
    type t = net_ConnectOpts

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_onread : t -> net_OnReadOpts [@@js.get "onread"]

    val set_onread : t -> net_OnReadOpts -> unit [@@js.set "onread"]
  end
  [@@js.scope "ConnectOpts"]

  module TcpSocketConnectOpts : sig
    type t = net_TcpSocketConnectOpts

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_port : t -> float [@@js.get "port"]

    val set_port : t -> float -> unit [@@js.set "port"]

    val get_host : t -> string [@@js.get "host"]

    val set_host : t -> string -> unit [@@js.set "host"]

    val get_localAddress : t -> string [@@js.get "localAddress"]

    val set_localAddress : t -> string -> unit [@@js.set "localAddress"]

    val get_localPort : t -> float [@@js.get "localPort"]

    val set_localPort : t -> float -> unit [@@js.set "localPort"]

    val get_hints : t -> float [@@js.get "hints"]

    val set_hints : t -> float -> unit [@@js.set "hints"]

    val get_family : t -> float [@@js.get "family"]

    val set_family : t -> float -> unit [@@js.set "family"]

    val get_lookup : t -> net_LookupFunction [@@js.get "lookup"]

    val set_lookup : t -> net_LookupFunction -> unit [@@js.set "lookup"]

    val cast : t -> net_ConnectOpts [@@js.cast]
  end
  [@@js.scope "TcpSocketConnectOpts"]

  module IpcSocketConnectOpts : sig
    type t = net_IpcSocketConnectOpts

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_path : t -> string [@@js.get "path"]

    val set_path : t -> string -> unit [@@js.set "path"]

    val cast : t -> net_ConnectOpts [@@js.cast]
  end
  [@@js.scope "IpcSocketConnectOpts"]

  module SocketConnectOpts : sig
    type t = net_SocketConnectOpts

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Socket : sig
    type t = net_Socket

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : ?options:net_SocketConstructorOpts -> unit -> t [@@js.create]

    val write
      :  t
      -> buffer:Uint8Array.t or_string
      -> ?cb:(?err:Error.t_0 -> unit -> unit)
      -> unit
      -> bool
      [@@js.call "write"]

    val write'
      :  t
      -> str:Uint8Array.t or_string
      -> ?encoding:BufferEncoding.t_0
      -> ?cb:(?err:Error.t_0 -> unit -> unit)
      -> unit
      -> bool
      [@@js.call "write"]

    val connect
      :  t
      -> options:net_SocketConnectOpts
      -> ?connectionListener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "connect"]

    val connect'
      :  t
      -> port:float
      -> host:string
      -> ?connectionListener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "connect"]

    val connect''
      :  t
      -> port:float
      -> ?connectionListener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "connect"]

    val connect'''
      :  t
      -> path:string
      -> ?connectionListener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "connect"]

    val setEncoding : t -> ?encoding:BufferEncoding.t_0 -> unit -> t
      [@@js.call "setEncoding"]

    val pause : t -> t [@@js.call "pause"]

    val resume : t -> t [@@js.call "resume"]

    val setTimeout : t -> timeout:float -> ?callback:(unit -> unit) -> unit -> t
      [@@js.call "setTimeout"]

    val setNoDelay : t -> ?noDelay:bool -> unit -> t [@@js.call "setNoDelay"]

    val setKeepAlive : t -> ?enable:bool -> ?initialDelay:float -> unit -> t
      [@@js.call "setKeepAlive"]

    val address : t -> (net_AddressInfo, anonymous_interface_0) union2
      [@@js.call "address"]

    val unref : t -> t [@@js.call "unref"]

    val ref : t -> t [@@js.call "ref"]

    val get_bufferSize : t -> float [@@js.get "bufferSize"]

    val get_bytesRead : t -> float [@@js.get "bytesRead"]

    val get_bytesWritten : t -> float [@@js.get "bytesWritten"]

    val get_connecting : t -> bool [@@js.get "connecting"]

    val get_destroyed : t -> bool [@@js.get "destroyed"]

    val get_localAddress : t -> string [@@js.get "localAddress"]

    val get_localPort : t -> float [@@js.get "localPort"]

    val get_remoteAddress : t -> string [@@js.get "remoteAddress"]

    val get_remoteFamily : t -> string [@@js.get "remoteFamily"]

    val get_remotePort : t -> float [@@js.get "remotePort"]

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
      -> ?encoding:BufferEncoding.t_0
      -> ?cb:(unit -> unit)
      -> unit
      -> unit
      [@@js.call "end"]

    val addListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(had_error:bool -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(data:Buffer.t_0 -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t_0 -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''
      :  t
      -> event:([ `lookup ][@js.enum])
      -> listener:
           (err:Error.t_0
            -> address:string
            -> family:string or_number
            -> host:string
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''''
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

    val emit'' : t -> event:([ `connect ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit'''
      :  t
      -> event:([ `data ][@js.enum])
      -> data:Buffer.t_0
      -> bool
      [@@js.call "emit"]

    val emit'''' : t -> event:([ `drain ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit''''' : t -> event:([ `end_ ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit''''''
      :  t
      -> event:([ `error ][@js.enum])
      -> err:Error.t_0
      -> bool
      [@@js.call "emit"]

    val emit'''''''
      :  t
      -> event:([ `lookup ][@js.enum])
      -> err:Error.t_0
      -> address:string
      -> family:string or_number
      -> host:string
      -> bool
      [@@js.call "emit"]

    val emit'''''''' : t -> event:([ `timeout ][@js.enum]) -> bool
      [@@js.call "emit"]

    val on
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(had_error:bool -> unit)
      -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(data:Buffer.t_0 -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t_0 -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''
      :  t
      -> event:([ `lookup ][@js.enum])
      -> listener:
           (err:Error.t_0
            -> address:string
            -> family:string or_number
            -> host:string
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''
      :  t
      -> event:([ `timeout ][@js.enum])
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
      -> listener:(had_error:bool -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(data:Buffer.t_0 -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t_0 -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''
      :  t
      -> event:([ `lookup ][@js.enum])
      -> listener:
           (err:Error.t_0
            -> address:string
            -> family:string or_number
            -> host:string
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val prependListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(had_error:bool -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(data:Buffer.t_0 -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t_0 -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''
      :  t
      -> event:([ `lookup ][@js.enum])
      -> listener:
           (err:Error.t_0
            -> address:string
            -> family:string or_number
            -> host:string
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependOnceListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(had_error:bool -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:([ `connect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:([ `data ][@js.enum])
      -> listener:(data:Buffer.t_0 -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''
      :  t
      -> event:([ `drain ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''
      :  t
      -> event:([ `end_ ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t_0 -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''
      :  t
      -> event:([ `lookup ][@js.enum])
      -> listener:
           (err:Error.t_0
            -> address:string
            -> family:string or_number
            -> host:string
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''''
      :  t
      -> event:([ `timeout ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> Stream.Duplex.t_0 [@@js.cast]
  end
  [@@js.scope "Socket"]

  module ListenOptions : sig
    type t = net_ListenOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_port : t -> float [@@js.get "port"]

    val set_port : t -> float -> unit [@@js.set "port"]

    val get_host : t -> string [@@js.get "host"]

    val set_host : t -> string -> unit [@@js.set "host"]

    val get_backlog : t -> float [@@js.get "backlog"]

    val set_backlog : t -> float -> unit [@@js.set "backlog"]

    val get_path : t -> string [@@js.get "path"]

    val set_path : t -> string -> unit [@@js.set "path"]

    val get_exclusive : t -> bool [@@js.get "exclusive"]

    val set_exclusive : t -> bool -> unit [@@js.set "exclusive"]

    val get_readableAll : t -> bool [@@js.get "readableAll"]

    val set_readableAll : t -> bool -> unit [@@js.set "readableAll"]

    val get_writableAll : t -> bool [@@js.get "writableAll"]

    val set_writableAll : t -> bool -> unit [@@js.set "writableAll"]

    val get_ipv6Only : t -> bool [@@js.get "ipv6Only"]

    val set_ipv6Only : t -> bool -> unit [@@js.set "ipv6Only"]
  end
  [@@js.scope "ListenOptions"]

  module ServerOpts : sig
    type t = net_ServerOpts

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_allowHalfOpen : t -> bool [@@js.get "allowHalfOpen"]

    val set_allowHalfOpen : t -> bool -> unit [@@js.set "allowHalfOpen"]

    val get_pauseOnConnect : t -> bool [@@js.get "pauseOnConnect"]

    val set_pauseOnConnect : t -> bool -> unit [@@js.set "pauseOnConnect"]
  end
  [@@js.scope "ServerOpts"]

  module Server : sig
    type t = net_Server

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : ?connectionListener:(socket:net_Socket -> unit) -> unit -> t
      [@@js.create]

    val create'
      :  ?options:net_ServerOpts
      -> ?connectionListener:(socket:net_Socket -> unit)
      -> unit
      -> t
      [@@js.create]

    val listen
      :  t
      -> ?port:float
      -> ?hostname:string
      -> ?backlog:float
      -> ?listeningListener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "listen"]

    val listen'
      :  t
      -> ?port:float
      -> ?hostname:string
      -> ?listeningListener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "listen"]

    val listen''
      :  t
      -> ?port:float
      -> ?backlog:float
      -> ?listeningListener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "listen"]

    val listen'''
      :  t
      -> ?port:float
      -> ?listeningListener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "listen"]

    val listen''''
      :  t
      -> path:string
      -> ?backlog:float
      -> ?listeningListener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "listen"]

    val listen'''''
      :  t
      -> path:string
      -> ?listeningListener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "listen"]

    val listen''''''
      :  t
      -> options:net_ListenOptions
      -> ?listeningListener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "listen"]

    val listen'''''''
      :  t
      -> handle:any
      -> ?backlog:float
      -> ?listeningListener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "listen"]

    val listen''''''''
      :  t
      -> handle:any
      -> ?listeningListener:(unit -> unit)
      -> unit
      -> t
      [@@js.call "listen"]

    val close : t -> ?callback:(?err:Error.t_0 -> unit -> unit) -> unit -> t
      [@@js.call "close"]

    val address : t -> net_AddressInfo or_string or_null [@@js.call "address"]

    val getConnections
      :  t
      -> cb:(error:Error.t_0 or_null -> count:float -> unit)
      -> unit
      [@@js.call "getConnections"]

    val ref : t -> t [@@js.call "ref"]

    val unref : t -> t [@@js.call "unref"]

    val get_maxConnections : t -> float [@@js.get "maxConnections"]

    val set_maxConnections : t -> float -> unit [@@js.set "maxConnections"]

    val get_connections : t -> float [@@js.get "connections"]

    val set_connections : t -> float -> unit [@@js.set "connections"]

    val get_listening : t -> bool [@@js.get "listening"]

    val set_listening : t -> bool -> unit [@@js.set "listening"]

    val addListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
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
      -> event:([ `connection ][@js.enum])
      -> listener:(socket:net_Socket -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t_0 -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''
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

    val emit' : t -> event:([ `close ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit''
      :  t
      -> event:([ `connection ][@js.enum])
      -> socket:net_Socket
      -> bool
      [@@js.call "emit"]

    val emit'''
      :  t
      -> event:([ `error ][@js.enum])
      -> err:Error.t_0
      -> bool
      [@@js.call "emit"]

    val emit'''' : t -> event:([ `listening ][@js.enum]) -> bool
      [@@js.call "emit"]

    val on
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `connection ][@js.enum])
      -> listener:(socket:net_Socket -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t_0 -> unit)
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
      -> listener:(socket:net_Socket -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t_0 -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `listening ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val prependListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
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
      -> event:([ `connection ][@js.enum])
      -> listener:(socket:net_Socket -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t_0 -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''
      :  t
      -> event:([ `listening ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependOnceListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
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
      -> event:([ `connection ][@js.enum])
      -> listener:(socket:net_Socket -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t_0 -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''
      :  t
      -> event:([ `listening ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> EventEmitter.t_0 [@@js.cast]
  end
  [@@js.scope "Server"]

  module TcpNetConnectOpts : sig
    type t = net_TcpNetConnectOpts

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_timeout : t -> float [@@js.get "timeout"]

    val set_timeout : t -> float -> unit [@@js.set "timeout"]

    val cast : t -> net_TcpSocketConnectOpts [@@js.cast]

    val cast' : t -> net_SocketConstructorOpts [@@js.cast]
  end
  [@@js.scope "TcpNetConnectOpts"]

  module IpcNetConnectOpts : sig
    type t = net_IpcNetConnectOpts

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_timeout : t -> float [@@js.get "timeout"]

    val set_timeout : t -> float -> unit [@@js.set "timeout"]

    val cast : t -> net_IpcSocketConnectOpts [@@js.cast]

    val cast' : t -> net_SocketConstructorOpts [@@js.cast]
  end
  [@@js.scope "IpcNetConnectOpts"]

  module NetConnectOpts : sig
    type t = net_NetConnectOpts

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val createServer
    :  ?connectionListener:(socket:net_Socket -> unit)
    -> unit
    -> net_Server
    [@@js.global "createServer"]

  val createServer
    :  ?options:net_ServerOpts
    -> ?connectionListener:(socket:net_Socket -> unit)
    -> unit
    -> net_Server
    [@@js.global "createServer"]

  val connect
    :  options:net_NetConnectOpts
    -> ?connectionListener:(unit -> unit)
    -> unit
    -> net_Socket
    [@@js.global "connect"]

  val connect
    :  port:float
    -> ?host:string
    -> ?connectionListener:(unit -> unit)
    -> unit
    -> net_Socket
    [@@js.global "connect"]

  val connect
    :  path:string
    -> ?connectionListener:(unit -> unit)
    -> unit
    -> net_Socket
    [@@js.global "connect"]

  val createConnection
    :  options:net_NetConnectOpts
    -> ?connectionListener:(unit -> unit)
    -> unit
    -> net_Socket
    [@@js.global "createConnection"]

  val createConnection
    :  port:float
    -> ?host:string
    -> ?connectionListener:(unit -> unit)
    -> unit
    -> net_Socket
    [@@js.global "createConnection"]

  val createConnection
    :  path:string
    -> ?connectionListener:(unit -> unit)
    -> unit
    -> net_Socket
    [@@js.global "createConnection"]

  val isIP : input:string -> float [@@js.global "isIP"]

  val isIPv4 : input:string -> bool [@@js.global "isIPv4"]

  val isIPv6 : input:string -> bool [@@js.global "isIPv6"]
end
[@@js.scope "net"]
