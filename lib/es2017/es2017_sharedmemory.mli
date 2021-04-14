open Es2016

module SharedArrayBuffer : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_byteLength : t -> float

  val slice : t -> begin_:float -> ?end_:float -> unit -> t

  (* Constructor *)

  val create : byteLength:float -> t
end

module SharedArrayBufferConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> SharedArrayBuffer.t

  val create : t -> byteLength:float -> SharedArrayBuffer.t
end

val sharedArrayBuffer : SharedArrayBufferConstructor.t

module ArrayBufferTypes : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_SharedArrayBuffer : t -> SharedArrayBuffer.t

  val set_SharedArrayBuffer : t -> SharedArrayBuffer.t -> unit
end

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
    -> index:float
    -> value:float
    -> float

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

  val isLockFree : t -> size:float -> bool

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

  val notify
    :  t
    -> typedArray:Int32Array.t
    -> index:float
    -> ?count:float
    -> unit
    -> float

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
end

val atomics : Atomics.t
