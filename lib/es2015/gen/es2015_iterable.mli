[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5
open Es2015_symbol
open Es2015_collection

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type 'T _Array = [ `Array of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and _ArrayConstructor = [ `ArrayConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Float32Array = [ `Float32Array ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Float32ArrayConstructor = [ `Float32ArrayConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Float64Array = [ `Float64Array ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Float64ArrayConstructor = [ `Float64ArrayConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _IArguments = [ `IArguments ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Int16Array = [ `Int16Array ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Int16ArrayConstructor = [ `Int16ArrayConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Int32Array = [ `Int32Array ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Int32ArrayConstructor = [ `Int32ArrayConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Int8Array = [ `Int8Array ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Int8ArrayConstructor = [ `Int8ArrayConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and 'T _Iterable = [ `Iterable of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and 'T _IterableIterator =
      [ `IterableIterator of 'T | `Iterator of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and ('T, 'TReturn, 'TNext) _Iterator =
      [ `Iterator of 'T * 'TReturn * 'TNext ] intf
    [@@js.custom
      { of_js = (fun _T _TReturn _TNext -> Obj.magic)
      ; to_js = (fun _T _TReturn _TNext -> Obj.magic)
      }]

    and ('T, 'TReturn) _IteratorResult =
      ([ `U_b_false of 'T _IteratorYieldResult [@js false]
       | `U_b_true of 'TReturn _IteratorReturnResult [@js true]
       ]
      [@js.union on_field "done"])

    and 'TReturn _IteratorReturnResult =
      [ `IteratorReturnResult of 'TReturn ] intf
    [@@js.custom
      { of_js = (fun _TReturn -> Obj.magic)
      ; to_js = (fun _TReturn -> Obj.magic)
      }]

    and 'TYield _IteratorYieldResult = [ `IteratorYieldResult of 'TYield ] intf
    [@@js.custom
      { of_js = (fun _TYield -> Obj.magic); to_js = (fun _TYield -> Obj.magic) }]

    and ('K, 'V) _Map = [ `Map of 'K * 'V ] intf
    [@@js.custom
      { of_js = (fun _K _V -> Obj.magic); to_js = (fun _K _V -> Obj.magic) }]

    and _MapConstructor = [ `MapConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and 'T _Promise = [ `Promise of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and _PromiseConstructor = [ `PromiseConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and 'T _ReadonlyArray = [ `ReadonlyArray of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and ('K, 'V) _ReadonlyMap = [ `ReadonlyMap of 'K * 'V ] intf
    [@@js.custom
      { of_js = (fun _K _V -> Obj.magic); to_js = (fun _K _V -> Obj.magic) }]

    and 'T _ReadonlySet = [ `ReadonlySet of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and 'T _Set = [ `Set of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and _SetConstructor = [ `SetConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _String = [ `String ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _SymbolConstructor = [ `SymbolConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Uint16Array = [ `Uint16Array ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Uint16ArrayConstructor = [ `Uint16ArrayConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Uint32Array = [ `Uint32Array ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Uint32ArrayConstructor = [ `Uint32ArrayConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Uint8Array = [ `Uint8Array ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Uint8ArrayConstructor = [ `Uint8ArrayConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Uint8ClampedArray = [ `Uint8ClampedArray ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Uint8ClampedArrayConstructor = [ `Uint8ClampedArrayConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and ('K, 'V) _WeakMap = [ `WeakMap of 'K * 'V ] intf
    [@@js.custom
      { of_js = (fun _K _V -> Obj.magic); to_js = (fun _K _V -> Obj.magic) }]

    and _WeakMapConstructor = [ `WeakMapConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and 'T _WeakSet = [ `WeakSet of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and _WeakSetConstructor = [ `WeakSetConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module SymbolConstructor : sig
  include module type of struct
    include SymbolConstructor
  end

  val get_iterator : t -> symbol [@@js.get "iterator"]
end
[@@js.scope "SymbolConstructor"]

module IteratorYieldResult : sig
  type 'TYield t = 'TYield _IteratorYieldResult

  val t_to_js : ('TYield -> Ojs.t) -> 'TYield t -> Ojs.t

  val t_of_js : (Ojs.t -> 'TYield) -> Ojs.t -> 'TYield t

  val get_done : 'TYield t -> ([ `L_b_false [@js false] ][@js.enum])
    [@@js.get "done"]

  val set_done : 'TYield t -> ([ `L_b_false ][@js.enum]) -> unit
    [@@js.set "done"]

  val get_value : 'TYield t -> 'TYield [@@js.get "value"]

  val set_value : 'TYield t -> 'TYield -> unit [@@js.set "value"]
end
[@@js.scope "IteratorYieldResult"]

module IteratorReturnResult : sig
  type 'TReturn t = 'TReturn _IteratorReturnResult

  val t_to_js : ('TReturn -> Ojs.t) -> 'TReturn t -> Ojs.t

  val t_of_js : (Ojs.t -> 'TReturn) -> Ojs.t -> 'TReturn t

  val get_done : 'TReturn t -> ([ `L_b_true [@js true] ][@js.enum])
    [@@js.get "done"]

  val set_done : 'TReturn t -> ([ `L_b_true ][@js.enum]) -> unit
    [@@js.set "done"]

  val get_value : 'TReturn t -> 'TReturn [@@js.get "value"]

  val set_value : 'TReturn t -> 'TReturn -> unit [@@js.set "value"]
end
[@@js.scope "IteratorReturnResult"]

module IteratorResult : sig
  type ('T, 'TReturn) t = ('T, 'TReturn) _IteratorResult

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
  type ('T, 'TReturn, 'TNext) t = ('T, 'TReturn, 'TNext) _Iterator

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
    -> ('T, 'TReturn) _IteratorResult
    [@@js.call "next"]

  val return
    :  ('T, 'TReturn, 'TNext) t
    -> ?value:'TReturn
    -> unit
    -> ('T, 'TReturn) _IteratorResult
    [@@js.call "return"]

  val throw
    :  ('T, 'TReturn, 'TNext) t
    -> ?e:any
    -> unit
    -> ('T, 'TReturn) _IteratorResult
    [@@js.call "throw"]
end
[@@js.scope "Iterator"]

module Iterable : sig
  type 'T t = 'T _Iterable

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end

module IterableIterator : sig
  type 'T t = 'T _IterableIterator

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val cast : 'T t -> ('T, any, never or_undefined) _Iterator [@@js.cast]
end
[@@js.scope "IterableIterator"]

module Array : sig
  include module type of struct
    include Array
  end

  val entries : 'T t -> (float * 'T) _IterableIterator [@@js.call "entries"]

  val keys : 'T t -> float _IterableIterator [@@js.call "keys"]

  val values : 'T t -> 'T _IterableIterator [@@js.call "values"]

  val to_ml : 'T t -> 'T list [@@js.cast]

  val of_ml : 'T list -> 'T t [@@js.cast]

  (* Constructor *)

  val from_iterable : iterable:('T Array.t, 'T _Iterable) union2 -> 'T list
    [@@js.global "Array.from"]

  val from_iterable'
    :  iterable:('T Array.t, 'T _Iterable) union2
    -> mapfn:(v:'T -> k:float -> 'U)
    -> ?thisArg:any
    -> unit
    -> 'U list
    [@@js.global "Array.from"]
end

module ArrayConstructor : sig
  include module type of struct
    include ArrayConstructor
  end

  val from_iterable : t -> iterable:('T Array.t, 'T _Iterable) union2 -> 'T list
    [@@js.call "from"]

  val from_iterable'
    :  t
    -> iterable:('T Array.t, 'T _Iterable) union2
    -> mapfn:(v:'T -> k:float -> 'U)
    -> ?thisArg:any
    -> unit
    -> 'U list
    [@@js.call "from"]
end
[@@js.scope "ArrayConstructor"]

module ReadonlyArray : sig
  include module type of struct
    include ReadonlyArray
  end

  val entries : 'T t -> (float * 'T) _IterableIterator [@@js.call "entries"]

  val keys : 'T t -> float _IterableIterator [@@js.call "keys"]

  val values : 'T t -> 'T _IterableIterator [@@js.call "values"]

  val to_ml : 'T t -> 'T list [@@js.cast]

  val of_ml : 'T list -> 'T t [@@js.cast]
end
[@@js.scope "ReadonlyArray"]

module IArguments : sig
  include module type of struct
    include IArguments
  end
end

module Map : sig
  include module type of struct
    include Map
  end

  val entries : ('K, 'V) t -> ('K * 'V) _IterableIterator [@@js.call "entries"]

  val keys : ('K, 'V) t -> 'K _IterableIterator [@@js.call "keys"]

  val values : ('K, 'V) t -> 'V _IterableIterator [@@js.call "values"]

  (* Constructor *)

  val create_iterable : iterable:('K * 'V) _Iterable -> ('K, 'V) t
    [@@js.new "Map"]
end

module ReadonlyMap : sig
  include module type of struct
    include ReadonlyMap
  end

  val entries : ('K, 'V) t -> ('K * 'V) _IterableIterator [@@js.call "entries"]

  val keys : ('K, 'V) t -> 'K _IterableIterator [@@js.call "keys"]

  val values : ('K, 'V) t -> 'V _IterableIterator [@@js.call "values"]
end
[@@js.scope "ReadonlyMap"]

module MapConstructor : sig
  include module type of struct
    include MapConstructor
  end

  val create_iterable : t -> iterable:('K * 'V) _Iterable -> ('K, 'V) Map.t
    [@@js.apply_newable]
end
[@@js.scope "MapConstructor"]

module WeakMap : sig
  include module type of struct
    include WeakMap
  end

  (* Constructor *)

  val create_iterable : iterable:('K * 'V) _Iterable -> ('K, 'V) t
    [@@js.new "WeakMap"]
end

module WeakMapConstructor : sig
  include module type of struct
    include WeakMapConstructor
  end

  val create_iterable : t -> iterable:('K * 'V) _Iterable -> ('K, 'V) WeakMap.t
    [@@js.apply_newable]
end
[@@js.scope "WeakMapConstructor"]

module Set : sig
  include module type of struct
    include Set
  end

  val entries : 'T t -> ('T * 'T) _IterableIterator [@@js.call "entries"]

  val keys : 'T t -> 'T _IterableIterator [@@js.call "keys"]

  val values : 'T t -> 'T _IterableIterator [@@js.call "values"]

  (* Constructor *)

  val create_iterable : ?iterable:'T _Iterable or_null -> unit -> 'T t
    [@@js.new "Set"]
end

module ReadonlySet : sig
  include module type of struct
    include ReadonlySet
  end

  val entries : 'T t -> ('T * 'T) _IterableIterator [@@js.call "entries"]

  val keys : 'T t -> 'T _IterableIterator [@@js.call "keys"]

  val values : 'T t -> 'T _IterableIterator [@@js.call "values"]
end
[@@js.scope "ReadonlySet"]

module SetConstructor : sig
  include module type of struct
    include SetConstructor
  end

  val create_iterable : t -> ?iterable:'T _Iterable or_null -> unit -> 'T Set.t
    [@@js.apply_newable]
end
[@@js.scope "SetConstructor"]

module WeakSet : sig
  include module type of struct
    include WeakSet
  end

  (* Constructor *)

  val create_iterable : iterable:'T _Iterable -> 'T t [@@js.new "WeakSet"]
end

module WeakSetConstructor : sig
  include module type of struct
    include WeakSetConstructor
  end

  val create_iterable : t -> iterable:'T _Iterable -> 'T WeakSet.t
    [@@js.apply_newable]
end
[@@js.scope "WeakSetConstructor"]

module Promise : sig
  include module type of struct
    include Promise
  end

  (* Constructor *)

  val all_iterable : 'T Promise.t _Iterable -> 'T list t
    [@@js.global "Promise.all"]

  val race_iterable : 'T Promise.t _Iterable -> 'T t
    [@@js.global "Promise.race"]
end

module PromiseConstructor : sig
  type t = _PromiseConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val all_iterable : t -> 'T Promise.t _Iterable -> 'T list Promise.t
    [@@js.call "all"]

  val race_iterable : t -> 'T Promise.t _Iterable -> 'T Promise.t
    [@@js.call "race"]
end
[@@js.scope "PromiseConstructor"]

module String : sig
  include module type of struct
    include String
  end

  val to_ml : t -> string [@@js.cast]

  val of_ml : string -> t [@@js.cast]
end
[@@js.scope "String"]

module Int8Array : sig
  include module type of struct
    include Int8Array
  end

  val entries : t -> (float * float) _IterableIterator [@@js.call "entries"]

  val keys : t -> float _IterableIterator [@@js.call "keys"]

  val values : t -> float _IterableIterator [@@js.call "values"]

  (* Constructor *)

  val create_iterable : float _Iterable -> t [@@js.new "Int8Array"]

  val from_iterable
    :  array:float _Iterable
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.global "Int8Array.from"]
end

module Int8ArrayConstructor : sig
  include module type of struct
    include Int8ArrayConstructor
  end

  val create_iterable : t -> float _Iterable -> Int8Array.t [@@js.apply_newable]

  val from_iterable
    :  t
    -> array:float _Iterable
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Int8Array.t
    [@@js.call "from"]
end
[@@js.scope "Int8ArrayConstructor"]

module Uint8Array : sig
  include module type of struct
    include Uint8Array
  end

  val entries : t -> (float * float) _IterableIterator [@@js.call "entries"]

  val keys : t -> float _IterableIterator [@@js.call "keys"]

  val values : t -> float _IterableIterator [@@js.call "values"]

  (* Constructor *)

  val create_iterable : float _Iterable -> t [@@js.new "Uint8Array"]

  val from_iterable
    :  array:float _Iterable
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.global "Uint8Array.from"]
end

module Uint8ArrayConstructor : sig
  include module type of struct
    include Uint8ArrayConstructor
  end

  val create_iterable : t -> float _Iterable -> Uint8Array.t
    [@@js.apply_newable]

  val from_iterable
    :  t
    -> array:float _Iterable
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Uint8Array.t
    [@@js.call "from"]
end
[@@js.scope "Uint8ArrayConstructor"]

module Uint8ClampedArray : sig
  include module type of struct
    include Uint8ClampedArray
  end

  val entries : t -> (float * float) _IterableIterator [@@js.call "entries"]

  val keys : t -> float _IterableIterator [@@js.call "keys"]

  val values : t -> float _IterableIterator [@@js.call "values"]

  (* Constructor *)

  val create_iterable : float _Iterable -> t [@@js.new "Uint8ClampedArray"]

  val from_iterable
    :  array:float _Iterable
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.global "Uint8ClampedArray.from"]
end

module Uint8ClampedArrayConstructor : sig
  include module type of struct
    include Uint8ClampedArrayConstructor
  end

  val create_iterable : t -> float _Iterable -> Uint8ClampedArray.t
    [@@js.apply_newable]

  val from_iterable
    :  t
    -> array:float _Iterable
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Uint8ClampedArray.t
    [@@js.call "from"]
end
[@@js.scope "Uint8ClampedArrayConstructor"]

module Int16Array : sig
  include module type of struct
    include Int16Array
  end

  val entries : t -> (float * float) _IterableIterator [@@js.call "entries"]

  val keys : t -> float _IterableIterator [@@js.call "keys"]

  val values : t -> float _IterableIterator [@@js.call "values"]

  (* Constructor *)

  val create_iterable : float _Iterable -> t [@@js.new "Int16Array"]

  val from_iterable
    :  array:float _Iterable
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.global "Int16Array.from"]
end

module Int16ArrayConstructor : sig
  include module type of struct
    include Int16ArrayConstructor
  end

  val create_iterable : t -> float _Iterable -> Int16Array.t
    [@@js.apply_newable]

  val from_iterable
    :  t
    -> array:float _Iterable
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Int16Array.t
    [@@js.call "from"]
end
[@@js.scope "Int16ArrayConstructor"]

module Uint16Array : sig
  include module type of struct
    include Uint16Array
  end

  val entries : t -> (float * float) _IterableIterator [@@js.call "entries"]

  val keys : t -> float _IterableIterator [@@js.call "keys"]

  val values : t -> float _IterableIterator [@@js.call "values"]

  (* Constructor *)

  val create_iterable : float _Iterable -> t [@@js.new "Uint16Array"]

  val from_iterable
    :  array:float _Iterable
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.global "Uint16Array.from"]
end

module Uint16ArrayConstructor : sig
  include module type of struct
    include Uint16ArrayConstructor
  end

  val create_iterable : t -> float _Iterable -> Uint16Array.t
    [@@js.apply_newable]

  val from_iterable
    :  t
    -> array:float _Iterable
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Uint16Array.t
    [@@js.call "from"]
end
[@@js.scope "Uint16ArrayConstructor"]

module Int32Array : sig
  include module type of struct
    include Int32Array
  end

  val entries : t -> (float * float) _IterableIterator [@@js.call "entries"]

  val keys : t -> float _IterableIterator [@@js.call "keys"]

  val values : t -> float _IterableIterator [@@js.call "values"]

  (* Constructor *)

  val create_iterable : float _Iterable -> t [@@js.new "Int32Array"]

  val from_iterable
    :  array:float _Iterable
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.global "Int32Array.from"]
end

module Int32ArrayConstructor : sig
  include module type of struct
    include Int32ArrayConstructor
  end

  val create_iterable : t -> float _Iterable -> Int32Array.t
    [@@js.apply_newable]

  val from_iterable
    :  t
    -> array:float _Iterable
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Int32Array.t
    [@@js.call "from"]
end
[@@js.scope "Int32ArrayConstructor"]

module Uint32Array : sig
  include module type of struct
    include Uint32Array
  end

  val entries : t -> (float * float) _IterableIterator [@@js.call "entries"]

  val keys : t -> float _IterableIterator [@@js.call "keys"]

  val values : t -> float _IterableIterator [@@js.call "values"]

  (* Constructor *)

  val create_iterable : float _Iterable -> t [@@js.new "Uint32Array"]

  val from_iterable
    :  array:float _Iterable
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.global "Uint32Array.from"]
end

module Uint32ArrayConstructor : sig
  include module type of struct
    include Uint32ArrayConstructor
  end

  val create_iterable : t -> float _Iterable -> Uint32Array.t
    [@@js.apply_newable]

  val from_iterable
    :  t
    -> array:float _Iterable
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Uint32Array.t
    [@@js.call "from"]
end
[@@js.scope "Uint32ArrayConstructor"]

module Float32Array : sig
  include module type of struct
    include Float32Array
  end

  val entries : t -> (float * float) _IterableIterator [@@js.call "entries"]

  val keys : t -> float _IterableIterator [@@js.call "keys"]

  val values : t -> float _IterableIterator [@@js.call "values"]

  (* Constructor *)

  val create_iterable : float _Iterable -> t [@@js.new "Float32Array"]

  val from_iterable
    :  array:float _Iterable
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.global "Float32Array.from"]
end

module Float32ArrayConstructor : sig
  include module type of struct
    include Float32ArrayConstructor
  end

  val create_iterable : t -> float _Iterable -> Float32Array.t
    [@@js.apply_newable]

  val from_iterable
    :  t
    -> array:float _Iterable
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Float32Array.t
    [@@js.call "from"]
end
[@@js.scope "Float32ArrayConstructor"]

module Float64Array : sig
  include module type of struct
    include Float64Array
  end

  val entries : t -> (float * float) _IterableIterator [@@js.call "entries"]

  val keys : t -> float _IterableIterator [@@js.call "keys"]

  val values : t -> float _IterableIterator [@@js.call "values"]

  (* Constructor *)

  val create_iterable : float _Iterable -> t [@@js.new "Float64Array"]

  val from_iterable
    :  array:float _Iterable
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> t
    [@@js.global "Float64Array.from"]
end

module Float64ArrayConstructor : sig
  include module type of struct
    include Float64ArrayConstructor
  end

  val create_iterable : t -> float _Iterable -> Float64Array.t
    [@@js.apply_newable]

  val from_iterable
    :  t
    -> array:float _Iterable
    -> ?mapfn:(v:float -> k:float -> float)
    -> ?thisArg:any
    -> unit
    -> Float64Array.t
    [@@js.call "from"]
end
[@@js.scope "Float64ArrayConstructor"]
