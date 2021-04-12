[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5
open Es2015_symbol

module SymbolConstructor : sig
  include module type of struct
    include SymbolConstructor
  end

  val get_iterator : t -> symbol
end

module IteratorYieldResult : sig
  type 'TYield t

  val t_to_js : ('TYield -> Ojs.t) -> 'TYield t -> Ojs.t

  val t_of_js : (Ojs.t -> 'TYield) -> Ojs.t -> 'TYield t

  val get_done : 'TYield t -> [ `L_b_false ]

  val set_done : 'TYield t -> [ `L_b_false ] -> unit

  val get_value : 'TYield t -> 'TYield

  val set_value : 'TYield t -> 'TYield -> unit
end

module IteratorReturnResult : sig
  type 'TReturn t

  val t_to_js : ('TReturn -> Ojs.t) -> 'TReturn t -> Ojs.t

  val t_of_js : (Ojs.t -> 'TReturn) -> Ojs.t -> 'TReturn t

  val get_done : 'TReturn t -> [ `L_b_true ]

  val set_done : 'TReturn t -> [ `L_b_true ] -> unit

  val get_value : 'TReturn t -> 'TReturn

  val set_value : 'TReturn t -> 'TReturn -> unit
end

module IteratorResult : sig
  type ('T, 'TReturn) t

  val t_to_js
    :  ('T -> Ojs.t)
    -> ('TReturn -> Ojs.t)
    -> ('T, 'TReturn) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'T)
    -> (Ojs.t -> 'TReturn)
    -> Ojs.t
    -> ('T, 'TReturn) t
end

module Iterator : sig
  type ('T, 'TReturn, 'TNext) t

  val t_to_js
    :  ('T -> Ojs.t)
    -> ('TReturn -> Ojs.t)
    -> ('TNext -> Ojs.t)
    -> ('T, 'TReturn, 'TNext) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'T)
    -> (Ojs.t -> 'TReturn)
    -> (Ojs.t -> 'TNext)
    -> Ojs.t
    -> ('T, 'TReturn, 'TNext) t

  val next
    :  ('T, 'TReturn, 'TNext) t
    -> args:
         (* FIXME: type 'union<() | ('TNext)>' cannot be used for variadic
            argument *) (any list[@js.variadic])
    -> ('T, 'TReturn) IteratorResult.t

  val return
    :  ('T, 'TReturn, 'TNext) t
    -> ?value:'TReturn
    -> unit
    -> ('T, 'TReturn) IteratorResult.t

  val throw
    :  ('T, 'TReturn, 'TNext) t
    -> ?e:any
    -> unit
    -> ('T, 'TReturn) IteratorResult.t
end

module Iterable : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end

module IterableIterator : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val cast : 'T t -> ('T, any, never or_undefined) Iterator.t
end

module Array : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val entries : 'T t -> (float * 'T) IterableIterator.t

  val keys : 'T t -> float IterableIterator.t

  val values : 'T t -> 'T IterableIterator.t

  val to_ml : 'T t -> 'T list

  val of_ml : 'T list -> 'T t
end

module ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val from : t -> iterable:('T Array.t, 'T Iterable.t) union2 -> 'T list

  val from'
    :  t
    -> iterable:('T Array.t, 'T Iterable.t) union2
    -> mapfn:(v:'T -> k:float -> 'U)
    -> ?thisArg:any
    -> unit
    -> 'U list
end

module ReadonlyArray : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val entries : 'T t -> (float * 'T) IterableIterator.t

  val keys : 'T t -> float IterableIterator.t

  val values : 'T t -> 'T IterableIterator.t

  val to_ml : 'T t -> 'T list

  val of_ml : 'T list -> 'T t
end

module IArguments : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module Map : sig
  type ('K, 'V) t

  val t_to_js : ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t

  val entries : ('K, 'V) t -> ('K * 'V) IterableIterator.t

  val keys : ('K, 'V) t -> 'K IterableIterator.t

  val values : ('K, 'V) t -> 'V IterableIterator.t
end

module ReadonlyMap : sig
  type ('K, 'V) t

  val t_to_js : ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t

  val entries : ('K, 'V) t -> ('K * 'V) IterableIterator.t

  val keys : ('K, 'V) t -> 'K IterableIterator.t

  val values : ('K, 'V) t -> 'V IterableIterator.t
end

module MapConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> iterable:('K * 'V) Iterable.t -> ('K, 'V) Map.t
end

module WeakMap : sig
  type ('K, 'V) t

  val t_to_js : ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t
end

module WeakMapConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> iterable:('K * 'V) Iterable.t -> ('K, 'V) WeakMap.t
end

module Set : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val entries : 'T t -> ('T * 'T) IterableIterator.t

  val keys : 'T t -> 'T IterableIterator.t

  val values : 'T t -> 'T IterableIterator.t
end

module ReadonlySet : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val entries : 'T t -> ('T * 'T) IterableIterator.t

  val keys : 'T t -> 'T IterableIterator.t

  val values : 'T t -> 'T IterableIterator.t
end

module SetConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> ?iterable:'T Iterable.t or_null -> unit -> 'T Set.t
end

module WeakSet : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end

module WeakSetConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> iterable:'T Iterable.t -> 'T WeakSet.t
end

module Promise : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end

module PromiseConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val all : t -> values:'T Promise.t Iterable.t -> 'T list Promise.t

  val race
    :  t
    -> values:'T Iterable.t
    -> (* FIXME: unknown type 'T extends Promise<infer U> ? U : T' *)
       any Promise.t

  val race' : t -> values:'T Promise.t Iterable.t -> 'T Promise.t
end

module String : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val to_ml : t -> string

  val of_ml : string -> t
end

module Int8Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val entries : t -> (float * float) IterableIterator.t

  val keys : t -> float IterableIterator.t

  val values : t -> float IterableIterator.t
end

module Int8ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> elements:float Iterable.t -> Int8Array.t

  val from
    :  t
    -> array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Int8Array.t
end

module Uint8Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val entries : t -> (float * float) IterableIterator.t

  val keys : t -> float IterableIterator.t

  val values : t -> float IterableIterator.t
end

module Uint8ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> elements:float Iterable.t -> Uint8Array.t

  val from
    :  t
    -> array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Uint8Array.t
end

module Uint8ClampedArray : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val entries : t -> (float * float) IterableIterator.t

  val keys : t -> float IterableIterator.t

  val values : t -> float IterableIterator.t
end

module Uint8ClampedArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> elements:float Iterable.t -> Uint8ClampedArray.t

  val from
    :  t
    -> array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Uint8ClampedArray.t
end

module Int16Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val entries : t -> (float * float) IterableIterator.t

  val keys : t -> float IterableIterator.t

  val values : t -> float IterableIterator.t
end

module Int16ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> elements:float Iterable.t -> Int16Array.t

  val from
    :  t
    -> array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Int16Array.t
end

module Uint16Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val entries : t -> (float * float) IterableIterator.t

  val keys : t -> float IterableIterator.t

  val values : t -> float IterableIterator.t
end

module Uint16ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> elements:float Iterable.t -> Uint16Array.t

  val from
    :  t
    -> array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Uint16Array.t
end

module Int32Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val entries : t -> (float * float) IterableIterator.t

  val keys : t -> float IterableIterator.t

  val values : t -> float IterableIterator.t
end

module Int32ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> elements:float Iterable.t -> Int32Array.t

  val from
    :  t
    -> array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Int32Array.t
end

module Uint32Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val entries : t -> (float * float) IterableIterator.t

  val keys : t -> float IterableIterator.t

  val values : t -> float IterableIterator.t
end

module Uint32ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> elements:float Iterable.t -> Uint32Array.t

  val from
    :  t
    -> array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Uint32Array.t
end

module Float32Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val entries : t -> (float * float) IterableIterator.t

  val keys : t -> float IterableIterator.t

  val values : t -> float IterableIterator.t
end

module Float32ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> elements:float Iterable.t -> Float32Array.t

  val from
    :  t
    -> array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Float32Array.t
end

module Float64Array : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val entries : t -> (float * float) IterableIterator.t

  val keys : t -> float IterableIterator.t

  val values : t -> float IterableIterator.t
end

module Float64ArrayConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> elements:float Iterable.t -> Float64Array.t

  val from
    :  t
    -> array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Float64Array.t
end
