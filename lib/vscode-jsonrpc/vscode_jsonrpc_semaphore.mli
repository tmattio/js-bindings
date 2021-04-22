[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5



module Semaphore : sig
  type 'T t = 'T _Semaphore

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  type t_0 = unit t

  val t_0_to_js : t_0 -> Ojs.t

  val t_0_of_js : Ojs.t -> t_0

  val get__capacity : 'T t -> (* FIXME: unknown type *) any
    [@@js.get "_capacity"]

  val set__capacity : 'T t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_capacity"]

  val get__active : 'T t -> (* FIXME: unknown type *) any [@@js.get "_active"]

  val set__active : 'T t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_active"]

  val get__waiting : 'T t -> (* FIXME: unknown type *) any [@@js.get "_waiting"]

  val set__waiting : 'T t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_waiting"]

  val create : ?capacity:int -> unit -> 'T t [@@js.create]

  val lock : 'T t -> thunk:(unit -> ('T, 'T Promise.t) union2) -> 'T Promise.t
    [@@js.call "lock"]

  val get_active : 'T t -> int [@@js.get "active"]

  val get_runNext : 'T t -> (* FIXME: unknown type *) any [@@js.get "runNext"]

  val set_runNext : 'T t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "runNext"]

  val get_doRunNext : 'T t -> (* FIXME: unknown type *) any
    [@@js.get "doRunNext"]

  val set_doRunNext : 'T t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "doRunNext"]
end
[@@js.scope "Semaphore"]
