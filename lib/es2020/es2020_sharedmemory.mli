[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2019
open Es2020_bigint

module Atomics : sig
  include module type of struct
    include Atomics
  end

  val add
    :  t
    -> typedArray:(BigInt64Array.t, BigUint64Array.t) union2
    -> index:int
    -> value:bigint
    -> bigint
    [@@js.call "add"]

  val and_
    :  t
    -> typedArray:(BigInt64Array.t, BigUint64Array.t) union2
    -> index:int
    -> value:bigint
    -> bigint
    [@@js.call "and"]

  val compareExchange
    :  t
    -> typedArray:(BigInt64Array.t, BigUint64Array.t) union2
    -> index:int
    -> expectedValue:bigint
    -> replacementValue:bigint
    -> bigint
    [@@js.call "compareExchange"]

  val exchange
    :  t
    -> typedArray:(BigInt64Array.t, BigUint64Array.t) union2
    -> index:int
    -> value:bigint
    -> bigint
    [@@js.call "exchange"]

  val load
    :  t
    -> typedArray:(BigInt64Array.t, BigUint64Array.t) union2
    -> index:int
    -> bigint
    [@@js.call "load"]

  val or_
    :  t
    -> typedArray:(BigInt64Array.t, BigUint64Array.t) union2
    -> index:int
    -> value:bigint
    -> bigint
    [@@js.call "or"]

  val store
    :  t
    -> typedArray:(BigInt64Array.t, BigUint64Array.t) union2
    -> index:int
    -> value:bigint
    -> bigint
    [@@js.call "store"]

  val sub
    :  t
    -> typedArray:(BigInt64Array.t, BigUint64Array.t) union2
    -> index:int
    -> value:bigint
    -> bigint
    [@@js.call "sub"]

  val wait
    :  t
    -> typedArray:BigInt64Array.t
    -> index:int
    -> value:bigint
    -> ?timeout:int
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
    -> index:int
    -> ?count:int
    -> unit
    -> int
    [@@js.call "notify"]

  val xor
    :  t
    -> typedArray:(BigInt64Array.t, BigUint64Array.t) union2
    -> index:int
    -> value:bigint
    -> bigint
    [@@js.call "xor"]
end
[@@js.scope "Atomics"]
