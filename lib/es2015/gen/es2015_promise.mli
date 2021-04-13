[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _PromiseConstructor = [ `PromiseConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and 'T _Promise = 'T Promise.t
  end
end

open Internal
open AnonymousInterfaces
open Types

module Promise : sig
  include module type of struct
    include Promise
  end

  val create
    :  (resolve:('T -> unit) -> reject:('E -> unit) -> unit)
    -> 'T _Promise
    [@@js.new "Promise"]

  val all : 'T1 Promise.t list -> 'T1 list _Promise [@@js.global "Promise.all"]

  val all10
    :  'T1 Promise.t
       * 'T2 Promise.t
       * 'T3 Promise.t
       * 'T4 Promise.t
       * 'T5 Promise.t
       * 'T6 Promise.t
       * 'T7 Promise.t
       * 'T8 Promise.t
       * 'T9 Promise.t
       * 'T10 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8 * 'T9 * 'T10) _Promise
    [@@js.global "Promise.all"]

  val all9
    :  'T1 Promise.t
       * 'T2 Promise.t
       * 'T3 Promise.t
       * 'T4 Promise.t
       * 'T5 Promise.t
       * 'T6 Promise.t
       * 'T7 Promise.t
       * 'T8 Promise.t
       * 'T9 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8 * 'T9) _Promise
    [@@js.global "Promise.all"]

  val all8
    :  'T1 Promise.t
       * 'T2 Promise.t
       * 'T3 Promise.t
       * 'T4 Promise.t
       * 'T5 Promise.t
       * 'T6 Promise.t
       * 'T7 Promise.t
       * 'T8 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8) _Promise
    [@@js.global "Promise.all"]

  val all7
    :  'T1 Promise.t
       * 'T2 Promise.t
       * 'T3 Promise.t
       * 'T4 Promise.t
       * 'T5 Promise.t
       * 'T6 Promise.t
       * 'T7 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7) _Promise
    [@@js.global "Promise.all"]

  val all6
    :  'T1 Promise.t
       * 'T2 Promise.t
       * 'T3 Promise.t
       * 'T4 Promise.t
       * 'T5 Promise.t
       * 'T6 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6) _Promise
    [@@js.global "Promise.all"]

  val all5
    :  'T1 Promise.t
       * 'T2 Promise.t
       * 'T3 Promise.t
       * 'T4 Promise.t
       * 'T5 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5) _Promise
    [@@js.global "Promise.all"]

  val all4
    :  'T1 Promise.t * 'T2 Promise.t * 'T3 Promise.t * 'T4 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4) _Promise
    [@@js.global "Promise.all"]

  val all3
    :  'T1 Promise.t * 'T2 Promise.t * 'T3 Promise.t
    -> ('T1 * 'T2 * 'T3) _Promise
    [@@js.global "Promise.all"]

  val all2 : 'T1 Promise.t * 'T2 Promise.t -> ('T1 * 'T2) _Promise
    [@@js.global "Promise.all"]

  val all1 : 'T Promise.t list -> 'T list _Promise [@@js.global "Promise.all"]

  val race
    :  'T list
    -> (* FIXME: unknown type 'T extends Promise<infer U> ? U : T' *)
       any _Promise
    [@@js.global "Promise.race"]

  val reject : 'E -> 'T _Promise [@@js.global "Promise.reject"]

  val resolve : 'T -> 'T _Promise [@@js.global "Promise.resolve"]
end

module PromiseConstructor : sig
  type t = _PromiseConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> any _Promise [@@js.get "prototype"]

  val create
    :  t
    -> (resolve:('T -> unit) -> reject:('E -> unit) -> unit)
    -> 'T _Promise
    [@@js.apply_newable]

  val all : t -> 'T1 Promise.t list -> 'T1 list _Promise [@@js.call "all"]

  val all10
    :  t
    -> 'T1 Promise.t
       * 'T2 Promise.t
       * 'T3 Promise.t
       * 'T4 Promise.t
       * 'T5 Promise.t
       * 'T6 Promise.t
       * 'T7 Promise.t
       * 'T8 Promise.t
       * 'T9 Promise.t
       * 'T10 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8 * 'T9 * 'T10) _Promise
    [@@js.call "all"]

  val all9
    :  t
    -> 'T1 Promise.t
       * 'T2 Promise.t
       * 'T3 Promise.t
       * 'T4 Promise.t
       * 'T5 Promise.t
       * 'T6 Promise.t
       * 'T7 Promise.t
       * 'T8 Promise.t
       * 'T9 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8 * 'T9) _Promise
    [@@js.call "all"]

  val all8
    :  t
    -> 'T1 Promise.t
       * 'T2 Promise.t
       * 'T3 Promise.t
       * 'T4 Promise.t
       * 'T5 Promise.t
       * 'T6 Promise.t
       * 'T7 Promise.t
       * 'T8 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8) _Promise
    [@@js.call "all"]

  val all7
    :  t
    -> 'T1 Promise.t
       * 'T2 Promise.t
       * 'T3 Promise.t
       * 'T4 Promise.t
       * 'T5 Promise.t
       * 'T6 Promise.t
       * 'T7 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7) _Promise
    [@@js.call "all"]

  val all6
    :  t
    -> 'T1 Promise.t
       * 'T2 Promise.t
       * 'T3 Promise.t
       * 'T4 Promise.t
       * 'T5 Promise.t
       * 'T6 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6) _Promise
    [@@js.call "all"]

  val all5
    :  t
    -> 'T1 Promise.t
       * 'T2 Promise.t
       * 'T3 Promise.t
       * 'T4 Promise.t
       * 'T5 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5) _Promise
    [@@js.call "all"]

  val all4
    :  t
    -> 'T1 Promise.t * 'T2 Promise.t * 'T3 Promise.t * 'T4 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4) _Promise
    [@@js.call "all"]

  val all3
    :  t
    -> 'T1 Promise.t * 'T2 Promise.t * 'T3 Promise.t
    -> ('T1 * 'T2 * 'T3) _Promise
    [@@js.call "all"]

  val all2 : t -> 'T1 Promise.t * 'T2 Promise.t -> ('T1 * 'T2) _Promise
    [@@js.call "all"]

  val all1 : t -> 'T Promise.t list -> 'T list _Promise [@@js.call "all"]

  val race
    :  t
    -> 'T list
    -> (* FIXME: unknown type 'T extends Promise<infer U> ? U : T' *)
       any _Promise
    [@@js.call "race"]

  val reject : t -> 'E -> 'T _Promise [@@js.call "reject"]

  val resolve : t -> unit _Promise [@@js.call "resolve"]

  val resolve' : t -> 'T -> 'T _Promise [@@js.call "resolve"]
end
[@@js.scope "PromiseConstructor"]

val promise : _PromiseConstructor [@@js.global "Promise"]
