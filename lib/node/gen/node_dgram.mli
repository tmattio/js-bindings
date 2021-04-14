[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type dgram_BindOptions = [ `Dgram_BindOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dgram_RemoteInfo = [ `Dgram_RemoteInfo ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dgram_Socket = [ `Dgram_Socket ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dgram_SocketOptions = [ `Dgram_SocketOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dgram_SocketType =
      ([ `udp4 [@js "udp4"]
       | `udp6 [@js "udp6"]
       ]
      [@js.enum])
  end
end

open Internal
open AnonymousInterfaces
open Types

module Node_dgram : sig
  (* export * from 'dgram'; *)
end

module Dgram : sig
  (* import { AddressInfo } from 'node:net'; *)
  (* import * as dns from 'node:dns'; *)
  (* import EventEmitter = require('node:events'); *)
  module RemoteInfo : sig
    type t = dgram_RemoteInfo

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_address : t -> string [@@js.get "address"]

    val set_address : t -> string -> unit [@@js.set "address"]

    val get_family
      :  t
      -> ([ `IPv4 [@js "IPv4"] | `IPv6 [@js "IPv6"] ][@js.enum])
      [@@js.get "family"]

    val set_family : t -> ([ `IPv4 | `IPv6 ][@js.enum]) -> unit
      [@@js.set "family"]

    val get_port : t -> float [@@js.get "port"]

    val set_port : t -> float -> unit [@@js.set "port"]

    val get_size : t -> float [@@js.get "size"]

    val set_size : t -> float -> unit [@@js.set "size"]
  end
  [@@js.scope "RemoteInfo"]

  module BindOptions : sig
    type t = dgram_BindOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_port : t -> float [@@js.get "port"]

    val set_port : t -> float -> unit [@@js.set "port"]

    val get_address : t -> string [@@js.get "address"]

    val set_address : t -> string -> unit [@@js.set "address"]

    val get_exclusive : t -> bool [@@js.get "exclusive"]

    val set_exclusive : t -> bool -> unit [@@js.set "exclusive"]

    val get_fd : t -> float [@@js.get "fd"]

    val set_fd : t -> float -> unit [@@js.set "fd"]
  end
  [@@js.scope "BindOptions"]

  module SocketType : sig
    type t = dgram_SocketType

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module SocketOptions : sig
    type t = dgram_SocketOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type : t -> dgram_SocketType [@@js.get "type"]

    val set_type : t -> dgram_SocketType -> unit [@@js.set "type"]

    val get_reuseAddr : t -> bool [@@js.get "reuseAddr"]

    val set_reuseAddr : t -> bool -> unit [@@js.set "reuseAddr"]

    val get_ipv6Only : t -> bool [@@js.get "ipv6Only"]

    val set_ipv6Only : t -> bool -> unit [@@js.set "ipv6Only"]

    val get_recvBufferSize : t -> float [@@js.get "recvBufferSize"]

    val set_recvBufferSize : t -> float -> unit [@@js.set "recvBufferSize"]

    val get_sendBufferSize : t -> float [@@js.get "sendBufferSize"]

    val set_sendBufferSize : t -> float -> unit [@@js.set "sendBufferSize"]

    val lookup
      :  t
      -> hostname:string
      -> options:Dns.LookupOneOptions.t_0
      -> callback:
           (err:NodeJS.ErrnoException.t_0 or_null
            -> address:string
            -> family:float
            -> unit)
      -> unit
      [@@js.call "lookup"]
  end
  [@@js.scope "SocketOptions"]

  val createSocket
    :  type_:dgram_SocketType
    -> ?callback:(msg:Buffer.t_0 -> rinfo:dgram_RemoteInfo -> unit)
    -> unit
    -> dgram_Socket
    [@@js.global "createSocket"]

  val createSocket
    :  options:dgram_SocketOptions
    -> ?callback:(msg:Buffer.t_0 -> rinfo:dgram_RemoteInfo -> unit)
    -> unit
    -> dgram_Socket
    [@@js.global "createSocket"]

  module Socket : sig
    type t = dgram_Socket

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val addMembership
      :  t
      -> multicastAddress:string
      -> ?multicastInterface:string
      -> unit
      -> unit
      [@@js.call "addMembership"]

    val address : t -> AddressInfo.t_0 [@@js.call "address"]

    val bind
      :  t
      -> ?port:float
      -> ?address:string
      -> ?callback:(unit -> unit)
      -> unit
      -> unit
      [@@js.call "bind"]

    val bind' : t -> ?port:float -> ?callback:(unit -> unit) -> unit -> unit
      [@@js.call "bind"]

    val bind'' : t -> ?callback:(unit -> unit) -> unit -> unit
      [@@js.call "bind"]

    val bind'''
      :  t
      -> options:dgram_BindOptions
      -> ?callback:(unit -> unit)
      -> unit
      -> unit
      [@@js.call "bind"]

    val close : t -> ?callback:(unit -> unit) -> unit -> unit
      [@@js.call "close"]

    val connect
      :  t
      -> port:float
      -> ?address:string
      -> ?callback:(unit -> unit)
      -> unit
      -> unit
      [@@js.call "connect"]

    val connect' : t -> port:float -> callback:(unit -> unit) -> unit
      [@@js.call "connect"]

    val disconnect : t -> unit [@@js.call "disconnect"]

    val dropMembership
      :  t
      -> multicastAddress:string
      -> ?multicastInterface:string
      -> unit
      -> unit
      [@@js.call "dropMembership"]

    val getRecvBufferSize : t -> float [@@js.call "getRecvBufferSize"]

    val getSendBufferSize : t -> float [@@js.call "getSendBufferSize"]

    val ref : t -> t [@@js.call "ref"]

    val remoteAddress : t -> AddressInfo.t_0 [@@js.call "remoteAddress"]

    val send
      :  t
      -> msg:(Uint8Array.t, any list) union2 or_string
      -> ?port:float
      -> ?address:string
      -> ?callback:(error:Error.t_0 or_null -> bytes:float -> unit)
      -> unit
      -> unit
      [@@js.call "send"]

    val send'
      :  t
      -> msg:(Uint8Array.t, any list) union2 or_string
      -> ?port:float
      -> ?callback:(error:Error.t_0 or_null -> bytes:float -> unit)
      -> unit
      -> unit
      [@@js.call "send"]

    val send''
      :  t
      -> msg:(Uint8Array.t, any list) union2 or_string
      -> ?callback:(error:Error.t_0 or_null -> bytes:float -> unit)
      -> unit
      -> unit
      [@@js.call "send"]

    val send'''
      :  t
      -> msg:Uint8Array.t or_string
      -> offset:float
      -> length:float
      -> ?port:float
      -> ?address:string
      -> ?callback:(error:Error.t_0 or_null -> bytes:float -> unit)
      -> unit
      -> unit
      [@@js.call "send"]

    val send''''
      :  t
      -> msg:Uint8Array.t or_string
      -> offset:float
      -> length:float
      -> ?port:float
      -> ?callback:(error:Error.t_0 or_null -> bytes:float -> unit)
      -> unit
      -> unit
      [@@js.call "send"]

    val send'''''
      :  t
      -> msg:Uint8Array.t or_string
      -> offset:float
      -> length:float
      -> ?callback:(error:Error.t_0 or_null -> bytes:float -> unit)
      -> unit
      -> unit
      [@@js.call "send"]

    val setBroadcast : t -> flag:bool -> unit [@@js.call "setBroadcast"]

    val setMulticastInterface : t -> multicastInterface:string -> unit
      [@@js.call "setMulticastInterface"]

    val setMulticastLoopback : t -> flag:bool -> unit
      [@@js.call "setMulticastLoopback"]

    val setMulticastTTL : t -> ttl:float -> unit [@@js.call "setMulticastTTL"]

    val setRecvBufferSize : t -> size:float -> unit
      [@@js.call "setRecvBufferSize"]

    val setSendBufferSize : t -> size:float -> unit
      [@@js.call "setSendBufferSize"]

    val setTTL : t -> ttl:float -> unit [@@js.call "setTTL"]

    val unref : t -> t [@@js.call "unref"]

    val addSourceSpecificMembership
      :  t
      -> sourceAddress:string
      -> groupAddress:string
      -> ?multicastInterface:string
      -> unit
      -> unit
      [@@js.call "addSourceSpecificMembership"]

    val dropSourceSpecificMembership
      :  t
      -> sourceAddress:string
      -> groupAddress:string
      -> ?multicastInterface:string
      -> unit
      -> unit
      [@@js.call "dropSourceSpecificMembership"]

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
      -> event:([ `connect ][@js.enum])
      -> listener:(unit -> unit)
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

    val addListener'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(msg:Buffer.t_0 -> rinfo:dgram_RemoteInfo -> unit)
      -> t
      [@@js.call "addListener"]

    val emit
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val emit' : t -> event:([ `close ][@js.enum]) -> bool [@@js.call "emit"]

    val emit'' : t -> event:([ `connect ][@js.enum]) -> bool [@@js.call "emit"]

    val emit''' : t -> event:([ `error ][@js.enum]) -> err:Error.t_0 -> bool
      [@@js.call "emit"]

    val emit'''' : t -> event:([ `listening ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> msg:Buffer.t_0
      -> rinfo:dgram_RemoteInfo
      -> bool
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
      -> event:([ `connect ][@js.enum])
      -> listener:(unit -> unit)
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

    val on'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(msg:Buffer.t_0 -> rinfo:dgram_RemoteInfo -> unit)
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
      -> event:([ `connect ][@js.enum])
      -> listener:(unit -> unit)
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

    val once'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(msg:Buffer.t_0 -> rinfo:dgram_RemoteInfo -> unit)
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
      -> event:([ `connect ][@js.enum])
      -> listener:(unit -> unit)
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

    val prependListener'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(msg:Buffer.t_0 -> rinfo:dgram_RemoteInfo -> unit)
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
      -> event:([ `connect ][@js.enum])
      -> listener:(unit -> unit)
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

    val prependOnceListener'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(msg:Buffer.t_0 -> rinfo:dgram_RemoteInfo -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> EventEmitter.t_0 [@@js.cast]
  end
  [@@js.scope "Socket"]
end
[@@js.scope "dgram"]
