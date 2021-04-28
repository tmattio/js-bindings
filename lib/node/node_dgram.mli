[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Dgram : sig
  open Node_dns

  module RemoteInfo : sig
    type t

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

    val get_port : t -> int [@@js.get "port"]

    val set_port : t -> int -> unit [@@js.set "port"]

    val get_size : t -> int [@@js.get "size"]

    val set_size : t -> int -> unit [@@js.set "size"]
  end
  [@@js.scope "RemoteInfo"]

  module BindOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_port : t -> int [@@js.get "port"]

    val set_port : t -> int -> unit [@@js.set "port"]

    val get_address : t -> string [@@js.get "address"]

    val set_address : t -> string -> unit [@@js.set "address"]

    val get_exclusive : t -> bool [@@js.get "exclusive"]

    val set_exclusive : t -> bool -> unit [@@js.set "exclusive"]

    val get_fd : t -> int [@@js.get "fd"]

    val set_fd : t -> int -> unit [@@js.set "fd"]
  end
  [@@js.scope "BindOptions"]

  module SocketType : sig
    type t =
      ([ `udp4 [@js "udp4"]
       | `udp6 [@js "udp6"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module SocketOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type : t -> SocketType.t [@@js.get "type"]

    val set_type : t -> SocketType.t -> unit [@@js.set "type"]

    val get_reuse_addr : t -> bool [@@js.get "reuseAddr"]

    val set_reuse_addr : t -> bool -> unit [@@js.set "reuseAddr"]

    val get_ipv6Only : t -> bool [@@js.get "ipv6Only"]

    val set_ipv6Only : t -> bool -> unit [@@js.set "ipv6Only"]

    val get_recv_buffer_size : t -> int [@@js.get "recvBufferSize"]

    val set_recv_buffer_size : t -> int -> unit [@@js.set "recvBufferSize"]

    val get_send_buffer_size : t -> int [@@js.get "sendBufferSize"]

    val set_send_buffer_size : t -> int -> unit [@@js.set "sendBufferSize"]

    val lookup
      :  t
      -> hostname:string
      -> options:Dns.LookupOneOptions.t
      -> callback:
           (err:ErrnoException.t or_null
            -> address:string
            -> family:int
            -> unit)
      -> unit
      [@@js.call "lookup"]
  end
  [@@js.scope "SocketOptions"]

  module Socket : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val add_membership
      :  t
      -> multicast_address:string
      -> ?multicast_interface:string
      -> unit
      -> unit
      [@@js.call "addMembership"]

    val address : t -> Node_net.Net.AddressInfo.t [@@js.call "address"]

    val bind
      :  t
      -> ?port:int
      -> ?address:string
      -> ?callback:(unit -> unit)
      -> unit
      -> unit
      [@@js.call "bind"]

    val bind' : t -> ?port:int -> ?callback:(unit -> unit) -> unit -> unit
      [@@js.call "bind"]

    val bind'' : t -> ?callback:(unit -> unit) -> unit -> unit
      [@@js.call "bind"]

    val bind'''
      :  t
      -> options:BindOptions.t
      -> ?callback:(unit -> unit)
      -> unit
      -> unit
      [@@js.call "bind"]

    val close : t -> ?callback:(unit -> unit) -> unit -> unit
      [@@js.call "close"]

    val connect
      :  t
      -> port:int
      -> ?address:string
      -> ?callback:(unit -> unit)
      -> unit
      -> unit
      [@@js.call "connect"]

    val connect' : t -> port:int -> callback:(unit -> unit) -> unit
      [@@js.call "connect"]

    val disconnect : t -> unit [@@js.call "disconnect"]

    val drop_membership
      :  t
      -> multicast_address:string
      -> ?multicast_interface:string
      -> unit
      -> unit
      [@@js.call "dropMembership"]

    val get_recv_buffer_size : t -> int [@@js.call "getRecvBufferSize"]

    val get_send_buffer_size : t -> int [@@js.call "getSendBufferSize"]

    val ref : t -> t [@@js.call "ref"]

    val remote_address : t -> Node_net.Net.AddressInfo.t
      [@@js.call "remoteAddress"]

    val send
      :  t
      -> msg:(Uint8Array.t, any list) union2 or_string
      -> ?port:int
      -> ?address:string
      -> ?callback:(error:Error.t or_null -> bytes:int -> unit)
      -> unit
      -> unit
      [@@js.call "send"]

    val send'
      :  t
      -> msg:(Uint8Array.t, any list) union2 or_string
      -> ?port:int
      -> ?callback:(error:Error.t or_null -> bytes:int -> unit)
      -> unit
      -> unit
      [@@js.call "send"]

    val send''
      :  t
      -> msg:(Uint8Array.t, any list) union2 or_string
      -> ?callback:(error:Error.t or_null -> bytes:int -> unit)
      -> unit
      -> unit
      [@@js.call "send"]

    val send'''
      :  t
      -> msg:Uint8Array.t or_string
      -> offset:int
      -> length:int
      -> ?port:int
      -> ?address:string
      -> ?callback:(error:Error.t or_null -> bytes:int -> unit)
      -> unit
      -> unit
      [@@js.call "send"]

    val send''''
      :  t
      -> msg:Uint8Array.t or_string
      -> offset:int
      -> length:int
      -> ?port:int
      -> ?callback:(error:Error.t or_null -> bytes:int -> unit)
      -> unit
      -> unit
      [@@js.call "send"]

    val send'''''
      :  t
      -> msg:Uint8Array.t or_string
      -> offset:int
      -> length:int
      -> ?callback:(error:Error.t or_null -> bytes:int -> unit)
      -> unit
      -> unit
      [@@js.call "send"]

    val set_broadcast : t -> flag:bool -> unit [@@js.call "setBroadcast"]

    val set_multicast_interface : t -> multicast_interface:string -> unit
      [@@js.call "setMulticastInterface"]

    val set_multicast_loopback : t -> flag:bool -> unit
      [@@js.call "setMulticastLoopback"]

    val set_multicast_ttl : t -> ttl:int -> unit [@@js.call "setMulticastTTL"]

    val set_recv_buffer_size : t -> size:int -> unit
      [@@js.call "setRecvBufferSize"]

    val set_send_buffer_size : t -> size:int -> unit
      [@@js.call "setSendBufferSize"]

    val set_ttl : t -> ttl:int -> unit [@@js.call "setTTL"]

    val unref : t -> t [@@js.call "unref"]

    val add_source_specific_membership
      :  t
      -> source_address:string
      -> group_address:string
      -> ?multicast_interface:string
      -> unit
      -> unit
      [@@js.call "addSourceSpecificMembership"]

    val drop_source_specific_membership
      :  t
      -> source_address:string
      -> group_address:string
      -> ?multicast_interface:string
      -> unit
      -> unit
      [@@js.call "dropSourceSpecificMembership"]

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
      -> event:([ `connect ][@js.enum])
      -> listener:(unit -> unit)
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

    val add_listener'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(msg:Buffer.t -> rinfo:RemoteInfo.t -> unit)
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

    val emit''' : t -> event:([ `error ][@js.enum]) -> err:Error.t -> bool
      [@@js.call "emit"]

    val emit'''' : t -> event:([ `listening ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> msg:Buffer.t
      -> rinfo:RemoteInfo.t
      -> bool
      [@@js.call "emit"]

    module CloseListener : sig
      type t = unit -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module ConnectListener : sig
      type t = unit -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module ErrorListener : sig
      type t = err:Error.t -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module ListeningListener : sig
      type t = unit -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module MessageListener : sig
      type t = msg:Buffer.t -> rinfo:RemoteInfo.t -> unit

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    type listener =
      ([ `Close of CloseListener.t
       | `Connect of ConnectListener.t
       | `Error of ErrorListener.t
       | `Listening of ListeningListener.t
       | `Message of MessageListener.t
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
      | `Error f ->
        fn t "error" @@ [%js.of: ErrorListener.t] f
      | `Listening f ->
        fn t "listening" @@ [%js.of: ListeningListener.t] f
      | `Message f ->
        fn t "message" @@ [%js.of: MessageListener.t] f

    let on = with_listener_fn on

    let add_listener = with_listener_fn add_listener

    let once = with_listener_fn once

    let prepend_listener = with_listener_fn prepend_listener

    let prepend_once_listener = with_listener_fn prepend_once_listener]
  end
  [@@js.scope "Socket"]

  val create_socket
    :  type_:SocketType.t
    -> ?callback:(msg:Buffer.t -> rinfo:RemoteInfo.t -> unit)
    -> unit
    -> Socket.t
    [@@js.global "createSocket"]

  val create_socket
    :  options:SocketOptions.t
    -> ?callback:(msg:Buffer.t -> rinfo:RemoteInfo.t -> unit)
    -> unit
    -> Socket.t
    [@@js.global "createSocket"]
end
[@@js.scope Import.dgram]
