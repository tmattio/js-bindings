open Es5
open Es2015_symbol
open Es2015_collection

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

  val get_done : 'TReturn t -> [ `L_b_true [@js true] ]

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
  type 'T t = ('T, any, never or_undefined) Iterator.t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end

module Array : sig
  include module type of struct
    include Array
  end

  val entries : 'T t -> (float * 'T) IterableIterator.t

  val keys : 'T t -> float IterableIterator.t

  val values : 'T t -> 'T IterableIterator.t

  val to_ml : 'T t -> 'T list

  val of_ml : 'T list -> 'T t

  (* Constructor *)

  val from_iterable : iterable:('T Array.t, 'T Iterable.t) union2 -> 'T list

  val from_iterable'
    :  iterable:('T Array.t, 'T Iterable.t) union2
    -> mapfn:(v:'T -> k:float -> 'U)
    -> ?thisArg:any
    -> unit
    -> 'U list
end

module ArrayConstructor : sig
  include module type of struct
    include ArrayConstructor
  end

  val from_iterable
    :  t
    -> iterable:('T Array.t, 'T Iterable.t) union2
    -> 'T list

  val from_iterable'
    :  t
    -> iterable:('T Array.t, 'T Iterable.t) union2
    -> mapfn:(v:'T -> k:float -> 'U)
    -> ?thisArg:any
    -> unit
    -> 'U list
end

module ReadonlyArray : sig
  include module type of struct
    include ReadonlyArray
  end

  val entries : 'T t -> (float * 'T) IterableIterator.t

  val keys : 'T t -> float IterableIterator.t

  val values : 'T t -> 'T IterableIterator.t

  val to_ml : 'T t -> 'T list

  val of_ml : 'T list -> 'T t
end

module IArguments : sig
  include module type of struct
    include IArguments
  end
end

module Map : sig
  include module type of struct
    include Map
  end

  val entries : ('K, 'V) t -> ('K * 'V) IterableIterator.t

  val keys : ('K, 'V) t -> 'K IterableIterator.t

  val values : ('K, 'V) t -> 'V IterableIterator.t

  (* Constructor *)

  val create_iterable : iterable:('K * 'V) Iterable.t -> ('K, 'V) t
end

module ReadonlyMap : sig
  include module type of struct
    include ReadonlyMap
  end

  val entries : ('K, 'V) t -> ('K * 'V) IterableIterator.t

  val keys : ('K, 'V) t -> 'K IterableIterator.t

  val values : ('K, 'V) t -> 'V IterableIterator.t
end

module MapConstructor : sig
  include module type of struct
    include MapConstructor
  end

  val create_iterable : t -> iterable:('K * 'V) Iterable.t -> ('K, 'V) Map.t
end

module WeakMap : sig
  include module type of struct
    include WeakMap
  end

  (* Constructor *)

  val create_iterable : iterable:('K * 'V) Iterable.t -> ('K, 'V) WeakMap.t
end

module WeakMapConstructor : sig
  include module type of struct
    include WeakMapConstructor
  end

  val create_iterable : t -> iterable:('K * 'V) Iterable.t -> ('K, 'V) WeakMap.t
end

module Set : sig
  include module type of struct
    include Set
  end

  val entries : 'T t -> ('T * 'T) IterableIterator.t

  val keys : 'T t -> 'T IterableIterator.t

  val values : 'T t -> 'T IterableIterator.t

  (* Constructor *)

  val create_iterable : ?iterable:'T Iterable.t or_null -> unit -> 'T t
end

module ReadonlySet : sig
  include module type of struct
    include ReadonlySet
  end

  val entries : 'T t -> ('T * 'T) IterableIterator.t

  val keys : 'T t -> 'T IterableIterator.t

  val values : 'T t -> 'T IterableIterator.t
end

module SetConstructor : sig
  include module type of struct
    include SetConstructor
  end

  val create_iterable : t -> ?iterable:'T Iterable.t or_null -> unit -> 'T Set.t
end

module WeakSet : sig
  include module type of struct
    include WeakSet
  end

  (* Constructor *)

  val create_iterable : iterable:'T Iterable.t -> 'T WeakSet.t
end

module WeakSetConstructor : sig
  include module type of struct
    include WeakSetConstructor
  end

  val create_iterable : t -> iterable:'T Iterable.t -> 'T WeakSet.t
end

module Promise : sig
  include module type of struct
    include Promise
  end

  (* Constructor *)

  val all_iterable : 'T Promise.t Iterable.t -> 'T list Promise.t

  val race_iterable : 'T Promise.t Iterable.t -> 'T Promise.t
end

module PromiseConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val all_iterable : t -> 'T Promise.t Iterable.t -> 'T list Promise.t

  val race_iterable : t -> 'T Promise.t Iterable.t -> 'T Promise.t
end

module String : sig
  include module type of struct
    include String
  end

  val to_ml : t -> string

  val of_ml : string -> t
end

module Int8Array : sig
  include module type of struct
    include Int8Array
  end

  val entries : t -> (float * float) IterableIterator.t

  val keys : t -> float IterableIterator.t

  val values : t -> float IterableIterator.t

  (* Constructor *)

  val create_iterable : float Iterable.t -> Int8Array.t

  val from_iterable
    :  array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Int8Array.t
end

module Int8ArrayConstructor : sig
  include module type of struct
    include Int8ArrayConstructor
  end

  val create_iterable : t -> float Iterable.t -> Int8Array.t

  val from_iterable
    :  t
    -> array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Int8Array.t
end

module Uint8Array : sig
  include module type of struct
    include Uint8Array
  end

  val entries : t -> (float * float) IterableIterator.t

  val keys : t -> float IterableIterator.t

  val values : t -> float IterableIterator.t

  (* Constructor *)

  val create_iterable : float Iterable.t -> Uint8Array.t

  val from_iterable
    :  array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Uint8Array.t
end

module Uint8ArrayConstructor : sig
  include module type of struct
    include Uint8ArrayConstructor
  end

  val create_iterable : t -> float Iterable.t -> Uint8Array.t

  val from_iterable
    :  t
    -> array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Uint8Array.t
end

module Uint8ClampedArray : sig
  include module type of struct
    include Uint8ClampedArray
  end

  val entries : t -> (float * float) IterableIterator.t

  val keys : t -> float IterableIterator.t

  val values : t -> float IterableIterator.t

  (* Constructor *)

  val create_iterable : float Iterable.t -> Uint8ClampedArray.t

  val from_iterable
    :  array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Uint8ClampedArray.t
end

module Uint8ClampedArrayConstructor : sig
  include module type of struct
    include Uint8ClampedArrayConstructor
  end

  val create_iterable : t -> float Iterable.t -> Uint8ClampedArray.t

  val from_iterable
    :  t
    -> array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Uint8ClampedArray.t
end

module Int16Array : sig
  include module type of struct
    include Int16Array
  end

  val entries : t -> (float * float) IterableIterator.t

  val keys : t -> float IterableIterator.t

  val values : t -> float IterableIterator.t

  (* Constructor *)

  val create_iterable : float Iterable.t -> Int16Array.t

  val from_iterable
    :  array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Int16Array.t
end

module Int16ArrayConstructor : sig
  include module type of struct
    include Int16ArrayConstructor
  end

  val create_iterable : t -> float Iterable.t -> Int16Array.t

  val from_iterable
    :  t
    -> array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Int16Array.t
end

module Uint16Array : sig
  include module type of struct
    include Uint16Array
  end

  val entries : t -> (float * float) IterableIterator.t

  val keys : t -> float IterableIterator.t

  val values : t -> float IterableIterator.t

  (* Constructor *)

  val create_iterable : float Iterable.t -> Uint16Array.t

  val from_iterable
    :  array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Uint16Array.t
end

module Uint16ArrayConstructor : sig
  include module type of struct
    include Uint16ArrayConstructor
  end

  val create_iterable : t -> float Iterable.t -> Uint16Array.t

  val from_iterable
    :  t
    -> array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Uint16Array.t
end

module Int32Array : sig
  include module type of struct
    include Int32Array
  end

  val entries : t -> (float * float) IterableIterator.t

  val keys : t -> float IterableIterator.t

  val values : t -> float IterableIterator.t

  (* Constructor *)

  val create_iterable : float Iterable.t -> Int32Array.t

  val from_iterable
    :  array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Int32Array.t
end

module Int32ArrayConstructor : sig
  include module type of struct
    include Int32ArrayConstructor
  end

  val create_iterable : t -> float Iterable.t -> Int32Array.t

  val from_iterable
    :  t
    -> array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Int32Array.t
end

module Uint32Array : sig
  include module type of struct
    include Uint32Array
  end

  val entries : t -> (float * float) IterableIterator.t

  val keys : t -> float IterableIterator.t

  val values : t -> float IterableIterator.t

  (* Constructor *)

  val create_iterable : float Iterable.t -> Uint32Array.t

  val from_iterable
    :  array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Uint32Array.t
end

module Uint32ArrayConstructor : sig
  include module type of struct
    include Uint32ArrayConstructor
  end

  val create_iterable : t -> float Iterable.t -> Uint32Array.t

  val from_iterable
    :  t
    -> array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Uint32Array.t
end

module Float32Array : sig
  include module type of struct
    include Float32Array
  end

  val entries : t -> (float * float) IterableIterator.t

  val keys : t -> float IterableIterator.t

  val values : t -> float IterableIterator.t

  (* Constructor *)

  val create_iterable : float Iterable.t -> Float32Array.t

  val from_iterable
    :  array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Float32Array.t
end

module Float32ArrayConstructor : sig
  include module type of struct
    include Float32ArrayConstructor
  end

  val create_iterable : t -> float Iterable.t -> Float32Array.t

  val from_iterable
    :  t
    -> array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Float32Array.t
end

module Float64Array : sig
  include module type of struct
    include Float64Array
  end

  val entries : t -> (float * float) IterableIterator.t

  val keys : t -> float IterableIterator.t

  val values : t -> float IterableIterator.t

  (* Constructor *)

  val create_iterable : float Iterable.t -> Float64Array.t

  val from_iterable
    :  array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Float64Array.t
end

module Float64ArrayConstructor : sig
  include module type of struct
    include Float64ArrayConstructor
  end

  val create_iterable : t -> float Iterable.t -> Float64Array.t

  val from_iterable
    :  t
    -> array:float Iterable.t
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Float64Array.t
end
