[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type 'T _Delayer = [ `Delayer of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and 'T _ITask = [ `ITask of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module ITask : sig
  type 'T t = 'T _ITask

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val apply : 'T t -> 'T [@@js.apply]
end
[@@js.scope "ITask"]

module Delayer : sig
  type 'T t = 'T _Delayer

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val get_defaultDelay : 'T t -> float [@@js.get "defaultDelay"]

  val set_defaultDelay : 'T t -> float -> unit [@@js.set "defaultDelay"]

  val get_timeout : 'T t -> (* FIXME: unknown type *) any [@@js.get "timeout"]

  val set_timeout : 'T t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "timeout"]

  val get_completionPromise : 'T t -> (* FIXME: unknown type *) any
    [@@js.get "completionPromise"]

  val set_completionPromise : 'T t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "completionPromise"]

  val get_onSuccess : 'T t -> (* FIXME: unknown type *) any
    [@@js.get "onSuccess"]

  val set_onSuccess : 'T t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "onSuccess"]

  val get_task : 'T t -> (* FIXME: unknown type *) any [@@js.get "task"]

  val set_task : 'T t -> (* FIXME: unknown type *) any -> unit [@@js.set "task"]

  val create : defaultDelay:float -> 'T t [@@js.create]

  val trigger : 'T t -> task:'T _ITask -> ?delay:float -> unit -> 'T Promise.t
    [@@js.call "trigger"]

  val forceDelivery : 'T t -> 'T or_undefined [@@js.call "forceDelivery"]

  val isTriggered : 'T t -> bool [@@js.call "isTriggered"]

  val cancel : 'T t -> unit [@@js.call "cancel"]

  val get_cancelTimeout : 'T t -> (* FIXME: unknown type *) any
    [@@js.get "cancelTimeout"]

  val set_cancelTimeout : 'T t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "cancelTimeout"]
end
[@@js.scope "Delayer"]
