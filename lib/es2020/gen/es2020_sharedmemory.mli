[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2019
open Es2020_bigint

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _Atomics = [ `Atomics ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module Atomics : sig
  type t = _Atomics

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val add
    :  t
    -> typedArray:(BigInt64Array.t, BigUint64Array.t) union2
    -> index:float
    -> value:bigint
    -> bigint
    [@@js.call "add"]

  val and_
    :  t
    -> typedArray:(BigInt64Array.t, BigUint64Array.t) union2
    -> index:float
    -> value:bigint
    -> bigint
    [@@js.call "and"]

  val compareExchange
    :  t
    -> typedArray:(BigInt64Array.t, BigUint64Array.t) union2
    -> index:float
    -> expectedValue:bigint
    -> replacementValue:bigint
    -> bigint
    [@@js.call "compareExchange"]

  val exchange
    :  t
    -> typedArray:(BigInt64Array.t, BigUint64Array.t) union2
    -> index:float
    -> value:bigint
    -> bigint
    [@@js.call "exchange"]

  val load
    :  t
    -> typedArray:(BigInt64Array.t, BigUint64Array.t) union2
    -> index:float
    -> bigint
    [@@js.call "load"]

  val or_
    :  t
    -> typedArray:(BigInt64Array.t, BigUint64Array.t) union2
    -> index:float
    -> value:bigint
    -> bigint
    [@@js.call "or"]

  val store
    :  t
    -> typedArray:(BigInt64Array.t, BigUint64Array.t) union2
    -> index:float
    -> value:bigint
    -> bigint
    [@@js.call "store"]

  val sub
    :  t
    -> typedArray:(BigInt64Array.t, BigUint64Array.t) union2
    -> index:float
    -> value:bigint
    -> bigint
    [@@js.call "sub"]

  val wait
    :  t
    -> typedArray:BigInt64Array.t
    -> index:float
    -> value:bigint
    -> ?timeout:float
    -> unit
    -> ([ `not_equal [@js "not-equal"]
        | `ok [@js "ok"]
        | `timed_out [@js "timed-out"]
        ]
       [@js.enum])
    [@@js.call "wait"]

  val notify
    :  t
    -> typedArray:BigInt64Array.t
    -> index:float
    -> ?count:float
    -> unit
    -> float
    [@@js.call "notify"]

  val xor
    :  t
    -> typedArray:(BigInt64Array.t, BigUint64Array.t) union2
    -> index:float
    -> value:bigint
    -> bigint
    [@@js.call "xor"]
end
[@@js.scope "Atomics"]
