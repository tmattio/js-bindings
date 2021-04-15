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

    type worker_threads_MessageChannel = [ `Worker_threads_MessageChannel ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and worker_threads_MessagePort = [ `Worker_threads_MessagePort ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and worker_threads_ResourceLimits = [ `Worker_threads_ResourceLimits ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and worker_threads_TransferListItem =
      ( ArrayBuffer.t
      , Node_fs_promises.Fs_promises.FileHandle.t
      , worker_threads_MessagePort )
      union3

    and worker_threads_Worker = [ `Worker_threads_Worker ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and worker_threads_WorkerOptions = [ `Worker_threads_WorkerOptions ] intf
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

  val get_message : t -> any [@@js.get "message"]

  val set_message : t -> any -> unit [@@js.set "message"]
end

module Worker_threads : sig
  val isMainThread : bool [@@js.global "isMainThread"]

  val parentPort : worker_threads_MessagePort or_null [@@js.global "parentPort"]

  val resourceLimits : worker_threads_ResourceLimits
    [@@js.global "resourceLimits"]

  val sHARE_ENV : (* FIXME: unknown type 'unique symbol' *) any
    [@@js.global "SHARE_ENV"]

  val threadId : float [@@js.global "threadId"]

  val workerData : any [@@js.global "workerData"]

  module MessageChannel : sig
    type t = worker_threads_MessageChannel

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_port1 : t -> worker_threads_MessagePort [@@js.get "port1"]

    val get_port2 : t -> worker_threads_MessagePort [@@js.get "port2"]
  end
  [@@js.scope "MessageChannel"]

  module TransferListItem : sig
    type t = worker_threads_TransferListItem

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module MessagePort : sig
    type t = worker_threads_MessagePort

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val close : t -> unit [@@js.call "close"]

    val postMessage
      :  t
      -> value:any
      -> ?transferList:worker_threads_TransferListItem list
      -> unit
      -> unit
      [@@js.call "postMessage"]

    val ref : t -> unit [@@js.call "ref"]

    val unref : t -> unit [@@js.call "unref"]

    val start : t -> unit [@@js.call "start"]

    val addListener
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(value:any -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:([ `messageerror ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val emit : t -> event:([ `close ][@js.enum]) -> bool [@@js.call "emit"]

    val emit' : t -> event:([ `message ][@js.enum]) -> value:any -> bool
      [@@js.call "emit"]

    val emit''
      :  t
      -> event:([ `messageerror ][@js.enum])
      -> error:Error.t
      -> bool
      [@@js.call "emit"]

    val emit'''
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val on : t -> event:([ `close ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(value:any -> unit)
      -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `messageerror ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val once : t -> event:([ `close ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "once"]

    val once'
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(value:any -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `messageerror ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "once"]

    val once'''
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
      -> event:([ `message ][@js.enum])
      -> listener:(value:any -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:([ `messageerror ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
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
      -> event:([ `message ][@js.enum])
      -> listener:(value:any -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:([ `messageerror ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val removeListener
      :  t
      -> event:([ `close ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "removeListener"]

    val removeListener'
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(value:any -> unit)
      -> t
      [@@js.call "removeListener"]

    val removeListener''
      :  t
      -> event:([ `messageerror ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "removeListener"]

    val removeListener'''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "removeListener"]

    val off : t -> event:([ `close ][@js.enum]) -> listener:(unit -> unit) -> t
      [@@js.call "off"]

    val off'
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(value:any -> unit)
      -> t
      [@@js.call "off"]

    val off''
      :  t
      -> event:([ `messageerror ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "off"]

    val off'''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "off"]

    val cast : t -> Node_events.Events.EventEmitter.t [@@js.cast]
  end
  [@@js.scope "MessagePort"]

  module WorkerOptions : sig
    type t = worker_threads_WorkerOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_argv : t -> any list [@@js.get "argv"]

    val set_argv : t -> any list -> unit [@@js.set "argv"]

    val get_env
      :  t
      -> (string Dict.t, (* FIXME: unknown type 'unique symbol' *) any) union2
      [@@js.get "env"]

    val set_env
      :  t
      -> (string Dict.t, (* FIXME: unknown type 'unique symbol' *) any) union2
      -> unit
      [@@js.set "env"]

    val get_eval : t -> bool [@@js.get "eval"]

    val set_eval : t -> bool -> unit [@@js.set "eval"]

    val get_workerData : t -> any [@@js.get "workerData"]

    val set_workerData : t -> any -> unit [@@js.set "workerData"]

    val get_stdin : t -> bool [@@js.get "stdin"]

    val set_stdin : t -> bool -> unit [@@js.set "stdin"]

    val get_stdout : t -> bool [@@js.get "stdout"]

    val set_stdout : t -> bool -> unit [@@js.set "stdout"]

    val get_stderr : t -> bool [@@js.get "stderr"]

    val set_stderr : t -> bool -> unit [@@js.set "stderr"]

    val get_execArgv : t -> string list [@@js.get "execArgv"]

    val set_execArgv : t -> string list -> unit [@@js.set "execArgv"]

    val get_resourceLimits : t -> worker_threads_ResourceLimits
      [@@js.get "resourceLimits"]

    val set_resourceLimits : t -> worker_threads_ResourceLimits -> unit
      [@@js.set "resourceLimits"]

    val get_transferList : t -> worker_threads_TransferListItem list
      [@@js.get "transferList"]

    val set_transferList : t -> worker_threads_TransferListItem list -> unit
      [@@js.set "transferList"]

    val get_trackUnmanagedFds : t -> bool [@@js.get "trackUnmanagedFds"]

    val set_trackUnmanagedFds : t -> bool -> unit [@@js.set "trackUnmanagedFds"]
  end
  [@@js.scope "WorkerOptions"]

  module ResourceLimits : sig
    type t = worker_threads_ResourceLimits

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_maxYoungGenerationSizeMb : t -> float
      [@@js.get "maxYoungGenerationSizeMb"]

    val set_maxYoungGenerationSizeMb : t -> float -> unit
      [@@js.set "maxYoungGenerationSizeMb"]

    val get_maxOldGenerationSizeMb : t -> float
      [@@js.get "maxOldGenerationSizeMb"]

    val set_maxOldGenerationSizeMb : t -> float -> unit
      [@@js.set "maxOldGenerationSizeMb"]

    val get_codeRangeSizeMb : t -> float [@@js.get "codeRangeSizeMb"]

    val set_codeRangeSizeMb : t -> float -> unit [@@js.set "codeRangeSizeMb"]

    val get_stackSizeMb : t -> float [@@js.get "stackSizeMb"]

    val set_stackSizeMb : t -> float -> unit [@@js.set "stackSizeMb"]
  end
  [@@js.scope "ResourceLimits"]

  module Worker : sig
    type t = worker_threads_Worker

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_stdin : t -> Node_stream.Stream.Writable.t or_null
      [@@js.get "stdin"]

    val get_stdout : t -> Node_stream.Stream.Writable.t [@@js.get "stdout"]

    val get_stderr : t -> Node_stream.Stream.Writable.t [@@js.get "stderr"]

    val get_threadId : t -> float [@@js.get "threadId"]

    val get_resourceLimits : t -> worker_threads_ResourceLimits
      [@@js.get "resourceLimits"]

    val create
      :  filename:Node_url.Url.Url.t or_string
      -> ?options:worker_threads_WorkerOptions
      -> unit
      -> t
      [@@js.create]

    val postMessage
      :  t
      -> value:any
      -> ?transferList:worker_threads_TransferListItem list
      -> unit
      -> unit
      [@@js.call "postMessage"]

    val ref : t -> unit [@@js.call "ref"]

    val unref : t -> unit [@@js.call "unref"]

    val terminate : t -> float Promise.t [@@js.call "terminate"]

    val getHeapSnapshot : t -> Node_stream.Stream.Writable.t Promise.t
      [@@js.call "getHeapSnapshot"]

    val addListener
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(exitCode:float -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(value:any -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:([ `messageerror ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''
      :  t
      -> event:([ `online ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val emit : t -> event:([ `error ][@js.enum]) -> err:Error.t -> bool
      [@@js.call "emit"]

    val emit' : t -> event:([ `exit ][@js.enum]) -> exitCode:float -> bool
      [@@js.call "emit"]

    val emit'' : t -> event:([ `message ][@js.enum]) -> value:any -> bool
      [@@js.call "emit"]

    val emit'''
      :  t
      -> event:([ `messageerror ][@js.enum])
      -> error:Error.t
      -> bool
      [@@js.call "emit"]

    val emit'''' : t -> event:([ `online ][@js.enum]) -> bool [@@js.call "emit"]

    val emit'''''
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val on
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(exitCode:float -> unit)
      -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(value:any -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `messageerror ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `online ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val once
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "once"]

    val once'
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(exitCode:float -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(value:any -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `messageerror ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `online ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "once"]

    val prependListener
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(exitCode:float -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(value:any -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
      :  t
      -> event:([ `messageerror ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''
      :  t
      -> event:([ `online ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependOnceListener
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(exitCode:float -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(value:any -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:([ `messageerror ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''
      :  t
      -> event:([ `online ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val removeListener
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "removeListener"]

    val removeListener'
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(exitCode:float -> unit)
      -> t
      [@@js.call "removeListener"]

    val removeListener''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(value:any -> unit)
      -> t
      [@@js.call "removeListener"]

    val removeListener'''
      :  t
      -> event:([ `messageerror ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "removeListener"]

    val removeListener''''
      :  t
      -> event:([ `online ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "removeListener"]

    val removeListener'''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "removeListener"]

    val off
      :  t
      -> event:([ `error ][@js.enum])
      -> listener:(err:Error.t -> unit)
      -> t
      [@@js.call "off"]

    val off'
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:(exitCode:float -> unit)
      -> t
      [@@js.call "off"]

    val off''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:(value:any -> unit)
      -> t
      [@@js.call "off"]

    val off'''
      :  t
      -> event:([ `messageerror ][@js.enum])
      -> listener:(error:Error.t -> unit)
      -> t
      [@@js.call "off"]

    val off''''
      :  t
      -> event:([ `online ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "off"]

    val off'''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "off"]

    val cast : t -> Node_events.Events.EventEmitter.t [@@js.cast]
  end
  [@@js.scope "Worker"]

  val markAsUntransferable : object_:untyped_object -> unit
    [@@js.global "markAsUntransferable"]

  val moveMessagePortToContext
    :  port:worker_threads_MessagePort
    -> context:Node_vm.Vm.Context.t
    -> worker_threads_MessagePort
    [@@js.global "moveMessagePortToContext"]

  val receiveMessageOnPort
    :  port:worker_threads_MessagePort
    -> anonymous_interface_0 or_undefined
    [@@js.global "receiveMessageOnPort"]
end
[@@js.scope Import.worker_threads]
