[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type cluster_Address = [ `Cluster_Address ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and cluster_Cluster = [ `Cluster_Cluster ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and cluster_ClusterSettings = [ `Cluster_ClusterSettings ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and cluster_Worker = [ `Cluster_Worker ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module Node_cluster : sig
  (* export * from 'cluster'; *)
end

module Cluster : sig
  (* import * as child from 'node:child_process'; *)
  (* import EventEmitter = require('node:events'); *)
  (* import * as net from 'node:net'; *)
  module ClusterSettings : sig
    type t = cluster_ClusterSettings

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_execArgv : t -> string list [@@js.get "execArgv"]

    val set_execArgv : t -> string list -> unit [@@js.set "execArgv"]

    val get_exec : t -> string [@@js.get "exec"]

    val set_exec : t -> string -> unit [@@js.set "exec"]

    val get_args : t -> string list [@@js.get "args"]

    val set_args : t -> string list -> unit [@@js.set "args"]

    val get_silent : t -> bool [@@js.get "silent"]

    val set_silent : t -> bool -> unit [@@js.set "silent"]

    val get_stdio : t -> any list [@@js.get "stdio"]

    val set_stdio : t -> any list -> unit [@@js.set "stdio"]

    val get_uid : t -> float [@@js.get "uid"]

    val set_uid : t -> float -> unit [@@js.set "uid"]

    val get_gid : t -> float [@@js.get "gid"]

    val set_gid : t -> float -> unit [@@js.set "gid"]

    val get_inspectPort : t -> (unit -> float) or_number
      [@@js.get "inspectPort"]

    val set_inspectPort : t -> (unit -> float) or_number -> unit
      [@@js.set "inspectPort"]
  end
  [@@js.scope "ClusterSettings"]

  module Address : sig
    type t = cluster_Address

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_address : t -> string [@@js.get "address"]

    val set_address : t -> string -> unit [@@js.set "address"]

    val get_port : t -> float [@@js.get "port"]

    val set_port : t -> float -> unit [@@js.set "port"]

    val get_addressType
      :  t
      -> ([ `udp4 [@js "udp4"] | `udp6 [@js "udp6"] ][@js.enum])
         or_number
      [@@js.get "addressType"]

    val set_addressType
      :  t
      -> ([ `udp4 | `udp6 ][@js.enum]) or_number
      -> unit
      [@@js.set "addressType"]
  end
  [@@js.scope "Address"]

  module Worker : sig
    type t = cluster_Worker

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_id : t -> float [@@js.get "id"]

    val set_id : t -> float -> unit [@@js.set "id"]

    val get_process : t -> Child.ChildProcess.t_0 [@@js.get "process"]

    val set_process : t -> Child.ChildProcess.t_0 -> unit [@@js.set "process"]

    val send
      :  t
      -> message:Child.Serializable.t_0
      -> ?sendHandle:Child.SendHandle.t_0
      -> ?callback:(error:Error.t_0 or_null -> unit)
      -> unit
      -> bool
      [@@js.call "send"]

    val kill : t -> ?signal:string -> unit -> unit [@@js.call "kill"]

    val destroy : t -> ?signal:string -> unit -> unit [@@js.call "destroy"]

    val disconnect : t -> unit [@@js.call "disconnect"]

    val isConnected : t -> bool [@@js.call "isConnected"]

    val isDead : t -> bool [@@js.call "isDead"]

    val get_exitedAfterDisconnect : t -> bool [@@js.get "exitedAfterDisconnect"]

    val set_exitedAfterDisconnect : t -> bool -> unit
      [@@js.set "exitedAfterDisconnect"]

    val addListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `disconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(error:Error.t_0 -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(code:float -> signal:string -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''
      :  t
      -> event:([ `listening ][@js.enum])
      -> listener:(address:cluster_Address -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:
           (message:any
            -> handle:(Net.Server.t_0, Net.Socket.t_0) union2
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''
      :  t
      -> event:([ `online ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val emit
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val emit' : t -> event:([ `disconnect ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit''
      :  t
      -> event:([ `error ][@js.enum])
      -> error:Error.t_0
      -> bool
      [@@js.call "emit"]

    val emit'''
      :  t
      -> event:([ `exit ][@js.enum])
      -> code:float
      -> signal:string
      -> bool
      [@@js.call "emit"]

    val emit''''
      :  t
      -> event:([ `listening ][@js.enum])
      -> address:cluster_Address
      -> bool
      [@@js.call "emit"]

    val emit'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> message:any
      -> handle:(Net.Server.t_0, Net.Socket.t_0) union2
      -> bool
      [@@js.call "emit"]

    val emit'''''' : t -> event:([ `online ][@js.enum]) -> bool
      [@@js.call "emit"]

    val on
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `disconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(error:Error.t_0 -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(code:float -> signal:string -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `listening ][@js.enum])
      -> listener:(address:cluster_Address -> unit)
      -> t
      [@@js.call "on"]

    val on'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:
           (message:any
            -> handle:(Net.Server.t_0, Net.Socket.t_0) union2
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''
      :  t
      -> event:([ `online ][@js.enum])
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
      -> event:([ `disconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(error:Error.t_0 -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(code:float -> signal:string -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `listening ][@js.enum])
      -> listener:(address:cluster_Address -> unit)
      -> t
      [@@js.call "once"]

    val once'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:
           (message:any
            -> handle:(Net.Server.t_0, Net.Socket.t_0) union2
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''
      :  t
      -> event:([ `online ][@js.enum])
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
      -> event:([ `disconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(error:Error.t_0 -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(code:float -> signal:string -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''
      :  t
      -> event:([ `listening ][@js.enum])
      -> listener:(address:cluster_Address -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:
           (message:any
            -> handle:(Net.Server.t_0, Net.Socket.t_0) union2
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''
      :  t
      -> event:([ `online ][@js.enum])
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
      -> event:([ `disconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(error:Error.t_0 -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(code:float -> signal:string -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''
      :  t
      -> event:([ `listening ][@js.enum])
      -> listener:(address:cluster_Address -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:
           (message:any
            -> handle:(Net.Server.t_0, Net.Socket.t_0) union2
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''
      :  t
      -> event:([ `online ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> EventEmitter.t_0 [@@js.cast]
  end
  [@@js.scope "Worker"]

  module Cluster : sig
    type t = cluster_Cluster

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_Worker : t -> cluster_Worker [@@js.get "Worker"]

    val set_Worker : t -> cluster_Worker -> unit [@@js.set "Worker"]

    val disconnect : t -> ?callback:(unit -> unit) -> unit -> unit
      [@@js.call "disconnect"]

    val fork : t -> ?env:any -> unit -> cluster_Worker [@@js.call "fork"]

    val get_isMaster : t -> bool [@@js.get "isMaster"]

    val set_isMaster : t -> bool -> unit [@@js.set "isMaster"]

    val get_isWorker : t -> bool [@@js.get "isWorker"]

    val set_isWorker : t -> bool -> unit [@@js.set "isWorker"]

    val get_schedulingPolicy : t -> float [@@js.get "schedulingPolicy"]

    val set_schedulingPolicy : t -> float -> unit [@@js.set "schedulingPolicy"]

    val get_settings : t -> cluster_ClusterSettings [@@js.get "settings"]

    val set_settings : t -> cluster_ClusterSettings -> unit
      [@@js.set "settings"]

    val setupMaster : t -> ?settings:cluster_ClusterSettings -> unit -> unit
      [@@js.call "setupMaster"]

    val get_worker : t -> cluster_Worker [@@js.get "worker"]

    val set_worker : t -> cluster_Worker -> unit [@@js.set "worker"]

    val get_workers : t -> cluster_Worker NodeJS.Dict.t_1 [@@js.get "workers"]

    val set_workers : t -> cluster_Worker NodeJS.Dict.t_1 -> unit
      [@@js.set "workers"]

    val get_SCHED_NONE : t -> float [@@js.get "SCHED_NONE"]

    val get_SCHED_RR : t -> float [@@js.get "SCHED_RR"]

    val addListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `disconnect ][@js.enum])
      -> listener:(worker:cluster_Worker -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(worker:cluster_Worker -> code:float -> signal:string -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:([ `fork ][@js.enum])
      -> listener:(worker:cluster_Worker -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''
      :  t
      -> event:([ `listening ][@js.enum])
      -> listener:(worker:cluster_Worker -> address:cluster_Address -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:
           (worker:cluster_Worker
            -> message:any
            -> handle:(Net.Server.t_0, Net.Socket.t_0) union2
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''
      :  t
      -> event:([ `online ][@js.enum])
      -> listener:(worker:cluster_Worker -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''''
      :  t
      -> event:([ `setup ][@js.enum])
      -> listener:(settings:cluster_ClusterSettings -> unit)
      -> t
      [@@js.call "addListener"]

    val emit
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val emit'
      :  t
      -> event:([ `disconnect ][@js.enum])
      -> worker:cluster_Worker
      -> bool
      [@@js.call "emit"]

    val emit''
      :  t
      -> event:([ `exit ][@js.enum])
      -> worker:cluster_Worker
      -> code:float
      -> signal:string
      -> bool
      [@@js.call "emit"]

    val emit'''
      :  t
      -> event:([ `fork ][@js.enum])
      -> worker:cluster_Worker
      -> bool
      [@@js.call "emit"]

    val emit''''
      :  t
      -> event:([ `listening ][@js.enum])
      -> worker:cluster_Worker
      -> address:cluster_Address
      -> bool
      [@@js.call "emit"]

    val emit'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> worker:cluster_Worker
      -> message:any
      -> handle:(Net.Server.t_0, Net.Socket.t_0) union2
      -> bool
      [@@js.call "emit"]

    val emit''''''
      :  t
      -> event:([ `online ][@js.enum])
      -> worker:cluster_Worker
      -> bool
      [@@js.call "emit"]

    val emit'''''''
      :  t
      -> event:([ `setup ][@js.enum])
      -> settings:cluster_ClusterSettings
      -> bool
      [@@js.call "emit"]

    val on
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `disconnect ][@js.enum])
      -> listener:(worker:cluster_Worker -> unit)
      -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(worker:cluster_Worker -> code:float -> signal:string -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `fork ][@js.enum])
      -> listener:(worker:cluster_Worker -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `listening ][@js.enum])
      -> listener:(worker:cluster_Worker -> address:cluster_Address -> unit)
      -> t
      [@@js.call "on"]

    val on'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:
           (worker:cluster_Worker
            -> message:any
            -> handle:(Net.Server.t_0, Net.Socket.t_0) union2
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''
      :  t
      -> event:([ `online ][@js.enum])
      -> listener:(worker:cluster_Worker -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''
      :  t
      -> event:([ `setup ][@js.enum])
      -> listener:(settings:cluster_ClusterSettings -> unit)
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
      -> event:([ `disconnect ][@js.enum])
      -> listener:(worker:cluster_Worker -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(worker:cluster_Worker -> code:float -> signal:string -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `fork ][@js.enum])
      -> listener:(worker:cluster_Worker -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `listening ][@js.enum])
      -> listener:(worker:cluster_Worker -> address:cluster_Address -> unit)
      -> t
      [@@js.call "once"]

    val once'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:
           (worker:cluster_Worker
            -> message:any
            -> handle:(Net.Server.t_0, Net.Socket.t_0) union2
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''
      :  t
      -> event:([ `online ][@js.enum])
      -> listener:(worker:cluster_Worker -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''
      :  t
      -> event:([ `setup ][@js.enum])
      -> listener:(settings:cluster_ClusterSettings -> unit)
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
      -> event:([ `disconnect ][@js.enum])
      -> listener:(worker:cluster_Worker -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(worker:cluster_Worker -> code:float -> signal:string -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
      :  t
      -> event:([ `fork ][@js.enum])
      -> listener:(worker:cluster_Worker -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''
      :  t
      -> event:([ `listening ][@js.enum])
      -> listener:(worker:cluster_Worker -> address:cluster_Address -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:
           (worker:cluster_Worker
            -> message:any
            -> handle:(Net.Server.t_0, Net.Socket.t_0) union2
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''
      :  t
      -> event:([ `online ][@js.enum])
      -> listener:(worker:cluster_Worker -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''''
      :  t
      -> event:([ `setup ][@js.enum])
      -> listener:(settings:cluster_ClusterSettings -> unit)
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
      -> event:([ `disconnect ][@js.enum])
      -> listener:(worker:cluster_Worker -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(worker:cluster_Worker -> code:float -> signal:string -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:([ `fork ][@js.enum])
      -> listener:(worker:cluster_Worker -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''
      :  t
      -> event:([ `listening ][@js.enum])
      -> listener:(worker:cluster_Worker -> address:cluster_Address -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:
           (worker:cluster_Worker
            -> message:any
            -> handle:(Net.Server.t_0, Net.Socket.t_0) union2
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''
      :  t
      -> event:([ `online ][@js.enum])
      -> listener:(worker:cluster_Worker -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''''
      :  t
      -> event:([ `setup ][@js.enum])
      -> listener:(settings:cluster_ClusterSettings -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> EventEmitter.t_0 [@@js.cast]
  end
  [@@js.scope "Cluster"]

  val sCHED_NONE : float [@@js.global "SCHED_NONE"]

  val sCHED_RR : float [@@js.global "SCHED_RR"]

  val disconnect : ?callback:(unit -> unit) -> unit -> unit
    [@@js.global "disconnect"]

  val fork : ?env:any -> unit -> cluster_Worker [@@js.global "fork"]

  val isMaster : bool [@@js.global "isMaster"]

  val isWorker : bool [@@js.global "isWorker"]

  val schedulingPolicy : float [@@js.global "schedulingPolicy"]

  val settings : cluster_ClusterSettings [@@js.global "settings"]

  val setupMaster : ?settings:cluster_ClusterSettings -> unit -> unit
    [@@js.global "setupMaster"]

  val worker : cluster_Worker [@@js.global "worker"]

  val workers : cluster_Worker NodeJS.Dict.t_1 [@@js.global "workers"]

  val addListener
    :  event:string
    -> listener:(args:(any list[@js.variadic]) -> unit)
    -> cluster_Cluster
    [@@js.global "addListener"]

  val addListener
    :  event:([ `disconnect ][@js.enum])
    -> listener:(worker:cluster_Worker -> unit)
    -> cluster_Cluster
    [@@js.global "addListener"]

  val addListener
    :  event:([ `exit ][@js.enum])
    -> listener:(worker:cluster_Worker -> code:float -> signal:string -> unit)
    -> cluster_Cluster
    [@@js.global "addListener"]

  val addListener
    :  event:([ `fork ][@js.enum])
    -> listener:(worker:cluster_Worker -> unit)
    -> cluster_Cluster
    [@@js.global "addListener"]

  val addListener
    :  event:([ `listening ][@js.enum])
    -> listener:(worker:cluster_Worker -> address:cluster_Address -> unit)
    -> cluster_Cluster
    [@@js.global "addListener"]

  val addListener
    :  event:([ `message ][@js.enum])
    -> listener:
         (worker:cluster_Worker
          -> message:any
          -> handle:(Net.Server.t_0, Net.Socket.t_0) union2
          -> unit)
    -> cluster_Cluster
    [@@js.global "addListener"]

  val addListener
    :  event:([ `online ][@js.enum])
    -> listener:(worker:cluster_Worker -> unit)
    -> cluster_Cluster
    [@@js.global "addListener"]

  val addListener
    :  event:([ `setup ][@js.enum])
    -> listener:(settings:cluster_ClusterSettings -> unit)
    -> cluster_Cluster
    [@@js.global "addListener"]

  val emit : event:symbol or_string -> args:(any list[@js.variadic]) -> bool
    [@@js.global "emit"]

  val emit
    :  event:([ `disconnect ][@js.enum])
    -> worker:cluster_Worker
    -> bool
    [@@js.global "emit"]

  val emit
    :  event:([ `exit ][@js.enum])
    -> worker:cluster_Worker
    -> code:float
    -> signal:string
    -> bool
    [@@js.global "emit"]

  val emit : event:([ `fork ][@js.enum]) -> worker:cluster_Worker -> bool
    [@@js.global "emit"]

  val emit
    :  event:([ `listening ][@js.enum])
    -> worker:cluster_Worker
    -> address:cluster_Address
    -> bool
    [@@js.global "emit"]

  val emit
    :  event:([ `message ][@js.enum])
    -> worker:cluster_Worker
    -> message:any
    -> handle:(Net.Server.t_0, Net.Socket.t_0) union2
    -> bool
    [@@js.global "emit"]

  val emit : event:([ `online ][@js.enum]) -> worker:cluster_Worker -> bool
    [@@js.global "emit"]

  val emit
    :  event:([ `setup ][@js.enum])
    -> settings:cluster_ClusterSettings
    -> bool
    [@@js.global "emit"]

  val on
    :  event:string
    -> listener:(args:(any list[@js.variadic]) -> unit)
    -> cluster_Cluster
    [@@js.global "on"]

  val on
    :  event:([ `disconnect ][@js.enum])
    -> listener:(worker:cluster_Worker -> unit)
    -> cluster_Cluster
    [@@js.global "on"]

  val on
    :  event:([ `exit ][@js.enum])
    -> listener:(worker:cluster_Worker -> code:float -> signal:string -> unit)
    -> cluster_Cluster
    [@@js.global "on"]

  val on
    :  event:([ `fork ][@js.enum])
    -> listener:(worker:cluster_Worker -> unit)
    -> cluster_Cluster
    [@@js.global "on"]

  val on
    :  event:([ `listening ][@js.enum])
    -> listener:(worker:cluster_Worker -> address:cluster_Address -> unit)
    -> cluster_Cluster
    [@@js.global "on"]

  val on
    :  event:([ `message ][@js.enum])
    -> listener:
         (worker:cluster_Worker
          -> message:any
          -> handle:(Net.Server.t_0, Net.Socket.t_0) union2
          -> unit)
    -> cluster_Cluster
    [@@js.global "on"]

  val on
    :  event:([ `online ][@js.enum])
    -> listener:(worker:cluster_Worker -> unit)
    -> cluster_Cluster
    [@@js.global "on"]

  val on
    :  event:([ `setup ][@js.enum])
    -> listener:(settings:cluster_ClusterSettings -> unit)
    -> cluster_Cluster
    [@@js.global "on"]

  val once
    :  event:string
    -> listener:(args:(any list[@js.variadic]) -> unit)
    -> cluster_Cluster
    [@@js.global "once"]

  val once
    :  event:([ `disconnect ][@js.enum])
    -> listener:(worker:cluster_Worker -> unit)
    -> cluster_Cluster
    [@@js.global "once"]

  val once
    :  event:([ `exit ][@js.enum])
    -> listener:(worker:cluster_Worker -> code:float -> signal:string -> unit)
    -> cluster_Cluster
    [@@js.global "once"]

  val once
    :  event:([ `fork ][@js.enum])
    -> listener:(worker:cluster_Worker -> unit)
    -> cluster_Cluster
    [@@js.global "once"]

  val once
    :  event:([ `listening ][@js.enum])
    -> listener:(worker:cluster_Worker -> address:cluster_Address -> unit)
    -> cluster_Cluster
    [@@js.global "once"]

  val once
    :  event:([ `message ][@js.enum])
    -> listener:
         (worker:cluster_Worker
          -> message:any
          -> handle:(Net.Server.t_0, Net.Socket.t_0) union2
          -> unit)
    -> cluster_Cluster
    [@@js.global "once"]

  val once
    :  event:([ `online ][@js.enum])
    -> listener:(worker:cluster_Worker -> unit)
    -> cluster_Cluster
    [@@js.global "once"]

  val once
    :  event:([ `setup ][@js.enum])
    -> listener:(settings:cluster_ClusterSettings -> unit)
    -> cluster_Cluster
    [@@js.global "once"]

  val removeListener
    :  event:string
    -> listener:(args:(any list[@js.variadic]) -> unit)
    -> cluster_Cluster
    [@@js.global "removeListener"]

  val removeAllListeners : ?event:string -> unit -> cluster_Cluster
    [@@js.global "removeAllListeners"]

  val setMaxListeners : n:float -> cluster_Cluster
    [@@js.global "setMaxListeners"]

  val getMaxListeners : unit -> float [@@js.global "getMaxListeners"]

  val listeners : event:string -> untyped_function list
    [@@js.global "listeners"]

  val listenerCount : type_:string -> float [@@js.global "listenerCount"]

  val prependListener
    :  event:string
    -> listener:(args:(any list[@js.variadic]) -> unit)
    -> cluster_Cluster
    [@@js.global "prependListener"]

  val prependListener
    :  event:([ `disconnect ][@js.enum])
    -> listener:(worker:cluster_Worker -> unit)
    -> cluster_Cluster
    [@@js.global "prependListener"]

  val prependListener
    :  event:([ `exit ][@js.enum])
    -> listener:(worker:cluster_Worker -> code:float -> signal:string -> unit)
    -> cluster_Cluster
    [@@js.global "prependListener"]

  val prependListener
    :  event:([ `fork ][@js.enum])
    -> listener:(worker:cluster_Worker -> unit)
    -> cluster_Cluster
    [@@js.global "prependListener"]

  val prependListener
    :  event:([ `listening ][@js.enum])
    -> listener:(worker:cluster_Worker -> address:cluster_Address -> unit)
    -> cluster_Cluster
    [@@js.global "prependListener"]

  val prependListener
    :  event:([ `message ][@js.enum])
    -> listener:
         (worker:cluster_Worker
          -> message:any
          -> handle:(Net.Server.t_0, Net.Socket.t_0) union2
          -> unit)
    -> cluster_Cluster
    [@@js.global "prependListener"]

  val prependListener
    :  event:([ `online ][@js.enum])
    -> listener:(worker:cluster_Worker -> unit)
    -> cluster_Cluster
    [@@js.global "prependListener"]

  val prependListener
    :  event:([ `setup ][@js.enum])
    -> listener:(settings:cluster_ClusterSettings -> unit)
    -> cluster_Cluster
    [@@js.global "prependListener"]

  val prependOnceListener
    :  event:string
    -> listener:(args:(any list[@js.variadic]) -> unit)
    -> cluster_Cluster
    [@@js.global "prependOnceListener"]

  val prependOnceListener
    :  event:([ `disconnect ][@js.enum])
    -> listener:(worker:cluster_Worker -> unit)
    -> cluster_Cluster
    [@@js.global "prependOnceListener"]

  val prependOnceListener
    :  event:([ `exit ][@js.enum])
    -> listener:(worker:cluster_Worker -> code:float -> signal:string -> unit)
    -> cluster_Cluster
    [@@js.global "prependOnceListener"]

  val prependOnceListener
    :  event:([ `fork ][@js.enum])
    -> listener:(worker:cluster_Worker -> unit)
    -> cluster_Cluster
    [@@js.global "prependOnceListener"]

  val prependOnceListener
    :  event:([ `listening ][@js.enum])
    -> listener:(worker:cluster_Worker -> address:cluster_Address -> unit)
    -> cluster_Cluster
    [@@js.global "prependOnceListener"]

  val prependOnceListener
    :  event:([ `message ][@js.enum])
    -> listener:
         (worker:cluster_Worker
          -> message:any
          -> handle:(Net.Server.t_0, Net.Socket.t_0) union2
          -> unit)
    -> cluster_Cluster
    [@@js.global "prependOnceListener"]

  val prependOnceListener
    :  event:([ `online ][@js.enum])
    -> listener:(worker:cluster_Worker -> unit)
    -> cluster_Cluster
    [@@js.global "prependOnceListener"]

  val prependOnceListener
    :  event:([ `setup ][@js.enum])
    -> listener:(settings:cluster_ClusterSettings -> unit)
    -> cluster_Cluster
    [@@js.global "prependOnceListener"]

  val eventNames : unit -> string list [@@js.global "eventNames"]
end
[@@js.scope "cluster"]
