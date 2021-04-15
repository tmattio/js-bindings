[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2016

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _ArrayBufferTypes = [ `ArrayBufferTypes ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Atomics = [ `Atomics ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SharedArrayBuffer = [ `SharedArrayBuffer ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SharedArrayBufferConstructor = [ `SharedArrayBufferConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module SharedArrayBuffer : sig
  type t = _SharedArrayBuffer

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_byteLength : t -> float [@@js.get "byteLength"]

  val slice : t -> begin_:float -> ?end_:float -> unit -> t [@@js.call "slice"]

  (* Constructor *)

  val create : byteLength:float -> _SharedArrayBuffer
    [@@js.new "SharedArrayBuffer"]
end

module SharedArrayBufferConstructor : sig
  type t = _SharedArrayBufferConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> _SharedArrayBuffer [@@js.get "prototype"]

  val create : t -> byteLength:float -> _SharedArrayBuffer [@@js.apply_newable]
end
[@@js.scope "SharedArrayBufferConstructor"]

val sharedArrayBuffer : _SharedArrayBufferConstructor
  [@@js.global "SharedArrayBuffer"]

module ArrayBufferTypes : sig
  type t = _ArrayBufferTypes

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_SharedArrayBuffer : t -> _SharedArrayBuffer
    [@@js.get "SharedArrayBuffer"]

  val set_SharedArrayBuffer : t -> _SharedArrayBuffer -> unit
    [@@js.set "SharedArrayBuffer"]
end
[@@js.scope "ArrayBufferTypes"]

module Atomics : sig
  type t = _Atomics

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
    -> index:float
    -> value:float
    -> float
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
    -> index:float
    -> value:float
    -> float
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
    -> index:float
    -> expectedValue:float
    -> replacementValue:float
    -> float
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
    -> index:float
    -> value:float
    -> float
    [@@js.call "exchange"]

  val isLockFree : t -> size:float -> bool [@@js.call "isLockFree"]

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
    -> index:float
    -> float
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
    -> index:float
    -> value:float
    -> float
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
    -> index:float
    -> value:float
    -> float
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
    -> index:float
    -> value:float
    -> float
    [@@js.call "sub"]

  val wait
    :  t
    -> typedArray:Int32Array.t
    -> index:float
    -> value:float
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
    -> typedArray:Int32Array.t
    -> index:float
    -> ?count:float
    -> unit
    -> float
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
    -> index:float
    -> value:float
    -> float
    [@@js.call "xor"]
end
[@@js.scope "Atomics"]

val atomics : _Atomics [@@js.global "Atomics"]
