[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2016

module SharedArrayBuffer : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_byteLength : t -> int [@@js.get "byteLength"]

  val slice : t -> begin_:int -> ?end_:int -> unit -> t [@@js.call "slice"]

  (* Constructor *)

  val create : byteLength:int -> t [@@js.new "SharedArrayBuffer"]
end

module SharedArrayBufferConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> SharedArrayBuffer.t [@@js.get "prototype"]

  val create : t -> byteLength:int -> SharedArrayBuffer.t [@@js.apply_newable]
end
[@@js.scope "SharedArrayBufferConstructor"]

val sharedArrayBuffer : SharedArrayBufferConstructor.t
  [@@js.global "SharedArrayBuffer"]

module ArrayBufferTypes : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_SharedArrayBuffer : t -> SharedArrayBuffer.t
    [@@js.get "SharedArrayBuffer"]

  val set_SharedArrayBuffer : t -> SharedArrayBuffer.t -> unit
    [@@js.set "SharedArrayBuffer"]
end
[@@js.scope "ArrayBufferTypes"]

module Atomics : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val add
    :  t
    -> typedArray:
         ( Int16Array.t
         , Int32Array.t
         , Int8Array.t
         , Uint16Array.t
         , Uint32Array.t
         , Uint8Array.t )
         union6
    -> index:int
    -> value:int
    -> int
    [@@js.call "add"]

  val and_
    :  t
    -> typedArray:
         ( Int16Array.t
         , Int32Array.t
         , Int8Array.t
         , Uint16Array.t
         , Uint32Array.t
         , Uint8Array.t )
         union6
    -> index:int
    -> value:int
    -> int
    [@@js.call "and"]

  val compareExchange
    :  t
    -> typedArray:
         ( Int16Array.t
         , Int32Array.t
         , Int8Array.t
         , Uint16Array.t
         , Uint32Array.t
         , Uint8Array.t )
         union6
    -> index:int
    -> expectedValue:int
    -> replacementValue:int
    -> int
    [@@js.call "compareExchange"]

  val exchange
    :  t
    -> typedArray:
         ( Int16Array.t
         , Int32Array.t
         , Int8Array.t
         , Uint16Array.t
         , Uint32Array.t
         , Uint8Array.t )
         union6
    -> index:int
    -> value:int
    -> int
    [@@js.call "exchange"]

  val isLockFree : t -> size:int -> bool [@@js.call "isLockFree"]

  val load
    :  t
    -> typedArray:
         ( Int16Array.t
         , Int32Array.t
         , Int8Array.t
         , Uint16Array.t
         , Uint32Array.t
         , Uint8Array.t )
         union6
    -> index:int
    -> int
    [@@js.call "load"]

  val or_
    :  t
    -> typedArray:
         ( Int16Array.t
         , Int32Array.t
         , Int8Array.t
         , Uint16Array.t
         , Uint32Array.t
         , Uint8Array.t )
         union6
    -> index:int
    -> value:int
    -> int
    [@@js.call "or"]

  val store
    :  t
    -> typedArray:
         ( Int16Array.t
         , Int32Array.t
         , Int8Array.t
         , Uint16Array.t
         , Uint32Array.t
         , Uint8Array.t )
         union6
    -> index:int
    -> value:int
    -> int
    [@@js.call "store"]

  val sub
    :  t
    -> typedArray:
         ( Int16Array.t
         , Int32Array.t
         , Int8Array.t
         , Uint16Array.t
         , Uint32Array.t
         , Uint8Array.t )
         union6
    -> index:int
    -> value:int
    -> int
    [@@js.call "sub"]

  val wait
    :  t
    -> typedArray:Int32Array.t
    -> index:int
    -> value:int
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
    -> typedArray:Int32Array.t
    -> index:int
    -> ?count:int
    -> unit
    -> int
    [@@js.call "notify"]

  val xor
    :  t
    -> typedArray:
         ( Int16Array.t
         , Int32Array.t
         , Int8Array.t
         , Uint16Array.t
         , Uint32Array.t
         , Uint8Array.t )
         union6
    -> index:int
    -> value:int
    -> int
    [@@js.call "xor"]
end
[@@js.scope "Atomics"]

val atomics : Atomics.t [@@js.global "Atomics"]
