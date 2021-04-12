[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Promise : sig
  include module type of struct
    include Promise
  end

  val create
    :  (resolve:('T -> unit) -> reject:('E -> unit) -> unit)
    -> 'T Promise.t

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
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8 * 'T9 * 'T10) Promise.t

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
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8 * 'T9) Promise.t

  val all8
    :  'T1 Promise.t
       * 'T2 Promise.t
       * 'T3 Promise.t
       * 'T4 Promise.t
       * 'T5 Promise.t
       * 'T6 Promise.t
       * 'T7 Promise.t
       * 'T8 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8) Promise.t

  val all7
    :  'T1 Promise.t
       * 'T2 Promise.t
       * 'T3 Promise.t
       * 'T4 Promise.t
       * 'T5 Promise.t
       * 'T6 Promise.t
       * 'T7 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7) Promise.t

  val all6
    :  'T1 Promise.t
       * 'T2 Promise.t
       * 'T3 Promise.t
       * 'T4 Promise.t
       * 'T5 Promise.t
       * 'T6 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6) Promise.t

  val all5
    :  'T1 Promise.t
       * 'T2 Promise.t
       * 'T3 Promise.t
       * 'T4 Promise.t
       * 'T5 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5) Promise.t

  val all4
    :  'T1 Promise.t * 'T2 Promise.t * 'T3 Promise.t * 'T4 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4) Promise.t

  val all3
    :  'T1 Promise.t * 'T2 Promise.t * 'T3 Promise.t
    -> ('T1 * 'T2 * 'T3) Promise.t

  val all2 : 'T1 Promise.t * 'T2 Promise.t -> ('T1 * 'T2) Promise.t

  val all1 : 'T Promise.t list -> 'T list Promise.t

  val race
    :  'T list
    -> (* FIXME: unknown type 'T extends Promise<infer U> ? U : T' *)
       any Promise.t

  val reject : 'E -> 'T Promise.t

  val resolve : 'T -> 'T Promise.t
end

module PromiseConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> any Promise.t

  val create
    :  t
    -> (resolve:('T -> unit) -> reject:('E -> unit) -> unit)
    -> 'T Promise.t

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
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8 * 'T9 * 'T10) Promise.t

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
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8 * 'T9) Promise.t

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
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8) Promise.t

  val all7
    :  t
    -> 'T1 Promise.t
       * 'T2 Promise.t
       * 'T3 Promise.t
       * 'T4 Promise.t
       * 'T5 Promise.t
       * 'T6 Promise.t
       * 'T7 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7) Promise.t

  val all6
    :  t
    -> 'T1 Promise.t
       * 'T2 Promise.t
       * 'T3 Promise.t
       * 'T4 Promise.t
       * 'T5 Promise.t
       * 'T6 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6) Promise.t

  val all5
    :  t
    -> 'T1 Promise.t
       * 'T2 Promise.t
       * 'T3 Promise.t
       * 'T4 Promise.t
       * 'T5 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5) Promise.t

  val all4
    :  t
    -> 'T1 Promise.t * 'T2 Promise.t * 'T3 Promise.t * 'T4 Promise.t
    -> ('T1 * 'T2 * 'T3 * 'T4) Promise.t

  val all3
    :  t
    -> 'T1 Promise.t * 'T2 Promise.t * 'T3 Promise.t
    -> ('T1 * 'T2 * 'T3) Promise.t

  val all2 : t -> 'T1 Promise.t * 'T2 Promise.t -> ('T1 * 'T2) Promise.t

  val all1 : t -> 'T Promise.t list -> 'T list Promise.t

  val race
    :  t
    -> 'T list
    -> (* FIXME: unknown type 'T extends Promise<infer U> ? U : T' *)
       any Promise.t

  val reject : t -> 'E -> 'T Promise.t

  val resolve : t -> unit Promise.t

  val resolve' : t -> 'T -> 'T Promise.t
end

val promise : PromiseConstructor.t
