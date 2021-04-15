[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - Promise<T1>
  - PromiseLike<T1>
 *)
[@@@js.stop]
module type Missing = sig
  module Promise : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module PromiseLike : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module Promise : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module PromiseLike : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
  end
]
module Make (M: Missing) : sig
  open M
  module Internal : sig
    module AnonymousInterfaces : sig
      
    end
    module Types : sig
      open AnonymousInterfaces
      type 'T _Semaphore = [`Semaphore of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  module[@js.scope "Semaphore"] Semaphore : sig
    type 'T t = 'T _Semaphore
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    type t_0 = unit t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__capacity: 'T t -> (* FIXME: unknown type *)any [@@js.get "_capacity"]
    val set__capacity: 'T t -> (* FIXME: unknown type *)any -> unit [@@js.set "_capacity"]
    val get__active: 'T t -> (* FIXME: unknown type *)any [@@js.get "_active"]
    val set__active: 'T t -> (* FIXME: unknown type *)any -> unit [@@js.set "_active"]
    val get__waiting: 'T t -> (* FIXME: unknown type *)any [@@js.get "_waiting"]
    val set__waiting: 'T t -> (* FIXME: unknown type *)any -> unit [@@js.set "_waiting"]
    val create: ?capacity:float -> unit -> 'T t [@@js.create]
    val lock: 'T t -> thunk:(unit -> ('T, 'T PromiseLike.t_1) union2) -> 'T Promise.t_1 [@@js.call "lock"]
    val get_active: 'T t -> float [@@js.get "active"]
    val get_runNext: 'T t -> (* FIXME: unknown type *)any [@@js.get "runNext"]
    val set_runNext: 'T t -> (* FIXME: unknown type *)any -> unit [@@js.set "runNext"]
    val get_doRunNext: 'T t -> (* FIXME: unknown type *)any [@@js.get "doRunNext"]
    val set_doRunNext: 'T t -> (* FIXME: unknown type *)any -> unit [@@js.set "doRunNext"]
  end
end
