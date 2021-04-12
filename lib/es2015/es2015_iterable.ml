[@@@ocaml.warning "-7-32-39"]

[@@@ocaml.warning "-7-11-32-33-39"]

open Es5
include Es2015_symbol

module Internal = struct
  module AnonymousInterfaces = struct end

  module Types = struct
    open AnonymousInterfaces

    type 'T _Array = [ `Array of 'T ] intf

    and _ArrayConstructor = [ `ArrayConstructor ] intf

    and _Float32Array = [ `Float32Array ] intf

    and _Float32ArrayConstructor = [ `Float32ArrayConstructor ] intf

    and _Float64Array = [ `Float64Array ] intf

    and _Float64ArrayConstructor = [ `Float64ArrayConstructor ] intf

    and _IArguments = [ `IArguments ] intf

    and _Int16Array = [ `Int16Array ] intf

    and _Int16ArrayConstructor = [ `Int16ArrayConstructor ] intf

    and _Int32Array = [ `Int32Array ] intf

    and _Int32ArrayConstructor = [ `Int32ArrayConstructor ] intf

    and _Int8Array = [ `Int8Array ] intf

    and _Int8ArrayConstructor = [ `Int8ArrayConstructor ] intf

    and 'T _Iterable = [ `Iterable of 'T ] intf

    and 'T _IterableIterator =
      [ `IterableIterator of 'T | `Iterator of 'T ] intf

    and ('T, 'TReturn, 'TNext) _Iterator =
      [ `Iterator of 'T * 'TReturn * 'TNext ] intf

    and ('T, 'TReturn) _IteratorResult =
      [ `U_b_false of 'T _IteratorYieldResult
      | `U_b_true of 'TReturn _IteratorReturnResult
      ]

    and 'TReturn _IteratorReturnResult =
      [ `IteratorReturnResult of 'TReturn ] intf

    and 'TYield _IteratorYieldResult = [ `IteratorYieldResult of 'TYield ] intf

    and ('K, 'V) _Map = [ `Map of 'K * 'V ] intf

    and _MapConstructor = [ `MapConstructor ] intf

    and 'T _Promise = [ `Promise of 'T ] intf

    and _PromiseConstructor = [ `PromiseConstructor ] intf

    and 'T _ReadonlyArray = [ `ReadonlyArray of 'T ] intf

    and ('K, 'V) _ReadonlyMap = [ `ReadonlyMap of 'K * 'V ] intf

    and 'T _ReadonlySet = [ `ReadonlySet of 'T ] intf

    and 'T _Set = [ `Set of 'T ] intf

    and _SetConstructor = [ `SetConstructor ] intf

    and _String = [ `String ] intf

    and _SymbolConstructor = [ `SymbolConstructor ] intf

    and _Uint16Array = [ `Uint16Array ] intf

    and _Uint16ArrayConstructor = [ `Uint16ArrayConstructor ] intf

    and _Uint32Array = [ `Uint32Array ] intf

    and _Uint32ArrayConstructor = [ `Uint32ArrayConstructor ] intf

    and _Uint8Array = [ `Uint8Array ] intf

    and _Uint8ArrayConstructor = [ `Uint8ArrayConstructor ] intf

    and _Uint8ClampedArray = [ `Uint8ClampedArray ] intf

    and _Uint8ClampedArrayConstructor = [ `Uint8ClampedArrayConstructor ] intf

    and ('K, 'V) _WeakMap = [ `WeakMap of 'K * 'V ] intf

    and _WeakMapConstructor = [ `WeakMapConstructor ] intf

    and 'T _WeakSet = [ `WeakSet of 'T ] intf

    and _WeakSetConstructor = [ `WeakSetConstructor ] intf

    let rec _Array_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T _Array =
     fun _T -> Obj.magic

    and _Array_to_js : 'T. ('T -> Ojs.t) -> 'T _Array -> Ojs.t =
     fun _T -> Obj.magic

    and _ArrayConstructor_of_js : Ojs.t -> _ArrayConstructor = Obj.magic

    and _ArrayConstructor_to_js : _ArrayConstructor -> Ojs.t = Obj.magic

    and _Float32Array_of_js : Ojs.t -> _Float32Array = Obj.magic

    and _Float32Array_to_js : _Float32Array -> Ojs.t = Obj.magic

    and _Float32ArrayConstructor_of_js : Ojs.t -> _Float32ArrayConstructor =
      Obj.magic

    and _Float32ArrayConstructor_to_js : _Float32ArrayConstructor -> Ojs.t =
      Obj.magic

    and _Float64Array_of_js : Ojs.t -> _Float64Array = Obj.magic

    and _Float64Array_to_js : _Float64Array -> Ojs.t = Obj.magic

    and _Float64ArrayConstructor_of_js : Ojs.t -> _Float64ArrayConstructor =
      Obj.magic

    and _Float64ArrayConstructor_to_js : _Float64ArrayConstructor -> Ojs.t =
      Obj.magic

    and _IArguments_of_js : Ojs.t -> _IArguments = Obj.magic

    and _IArguments_to_js : _IArguments -> Ojs.t = Obj.magic

    and _Int16Array_of_js : Ojs.t -> _Int16Array = Obj.magic

    and _Int16Array_to_js : _Int16Array -> Ojs.t = Obj.magic

    and _Int16ArrayConstructor_of_js : Ojs.t -> _Int16ArrayConstructor =
      Obj.magic

    and _Int16ArrayConstructor_to_js : _Int16ArrayConstructor -> Ojs.t =
      Obj.magic

    and _Int32Array_of_js : Ojs.t -> _Int32Array = Obj.magic

    and _Int32Array_to_js : _Int32Array -> Ojs.t = Obj.magic

    and _Int32ArrayConstructor_of_js : Ojs.t -> _Int32ArrayConstructor =
      Obj.magic

    and _Int32ArrayConstructor_to_js : _Int32ArrayConstructor -> Ojs.t =
      Obj.magic

    and _Int8Array_of_js : Ojs.t -> _Int8Array = Obj.magic

    and _Int8Array_to_js : _Int8Array -> Ojs.t = Obj.magic

    and _Int8ArrayConstructor_of_js : Ojs.t -> _Int8ArrayConstructor = Obj.magic

    and _Int8ArrayConstructor_to_js : _Int8ArrayConstructor -> Ojs.t = Obj.magic

    and _Iterable_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T _Iterable =
     fun _T -> Obj.magic

    and _Iterable_to_js : 'T. ('T -> Ojs.t) -> 'T _Iterable -> Ojs.t =
     fun _T -> Obj.magic

    and _IterableIterator_of_js :
          'T. (Ojs.t -> 'T) -> Ojs.t -> 'T _IterableIterator
      =
     fun _T -> Obj.magic

    and _IterableIterator_to_js :
          'T. ('T -> Ojs.t) -> 'T _IterableIterator -> Ojs.t
      =
     fun _T -> Obj.magic

    and _Iterator_of_js :
          'T 'TReturn 'TNext.
          (Ojs.t -> 'T)
          -> (Ojs.t -> 'TReturn)
          -> (Ojs.t -> 'TNext)
          -> Ojs.t
          -> ('T, 'TReturn, 'TNext) _Iterator
      =
     fun _T _TReturn _TNext -> Obj.magic

    and _Iterator_to_js :
          'T 'TReturn 'TNext.
          ('T -> Ojs.t)
          -> ('TReturn -> Ojs.t)
          -> ('TNext -> Ojs.t)
          -> ('T, 'TReturn, 'TNext) _Iterator
          -> Ojs.t
      =
     fun _T _TReturn _TNext -> Obj.magic

    and _IteratorResult_of_js :
          'T 'TReturn.
          (Ojs.t -> 'T)
          -> (Ojs.t -> 'TReturn)
          -> Ojs.t
          -> ('T, 'TReturn) _IteratorResult
      =
      fun (type __T __TReturn)
          (__T_of_js : Ojs.t -> __T)
          (__TReturn_of_js : Ojs.t -> __TReturn)
          (x6 : Ojs.t) ->
       let x7 = x6 in
       match Ojs.bool_of_js (Ojs.get_prop_ascii x7 "done") with
       | false ->
         `U_b_false (_IteratorYieldResult_of_js __T_of_js x7)
       | true ->
         `U_b_true (_IteratorReturnResult_of_js __TReturn_of_js x7)

    and _IteratorResult_to_js :
          'T 'TReturn.
          ('T -> Ojs.t)
          -> ('TReturn -> Ojs.t)
          -> ('T, 'TReturn) _IteratorResult
          -> Ojs.t
      =
      fun (type __T __TReturn)
          (__T_to_js : __T -> Ojs.t)
          (__TReturn_to_js : __TReturn -> Ojs.t)
          (x1 :
            [ `U_b_false of __T _IteratorYieldResult
            | `U_b_true of __TReturn _IteratorReturnResult
            ]) ->
       match x1 with
       | `U_b_false x2 ->
         _IteratorYieldResult_to_js __T_to_js x2
       | `U_b_true x4 ->
         _IteratorReturnResult_to_js __TReturn_to_js x4

    and _IteratorReturnResult_of_js :
          'TReturn.
          (Ojs.t -> 'TReturn) -> Ojs.t -> 'TReturn _IteratorReturnResult
      =
     fun _TReturn -> Obj.magic

    and _IteratorReturnResult_to_js :
          'TReturn.
          ('TReturn -> Ojs.t) -> 'TReturn _IteratorReturnResult -> Ojs.t
      =
     fun _TReturn -> Obj.magic

    and _IteratorYieldResult_of_js :
          'TYield. (Ojs.t -> 'TYield) -> Ojs.t -> 'TYield _IteratorYieldResult
      =
     fun _TYield -> Obj.magic

    and _IteratorYieldResult_to_js :
          'TYield. ('TYield -> Ojs.t) -> 'TYield _IteratorYieldResult -> Ojs.t
      =
     fun _TYield -> Obj.magic

    and _Map_of_js :
          'K 'V. (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) _Map
      =
     fun _K _V -> Obj.magic

    and _Map_to_js :
          'K 'V. ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) _Map -> Ojs.t
      =
     fun _K _V -> Obj.magic

    and _MapConstructor_of_js : Ojs.t -> _MapConstructor = Obj.magic

    and _MapConstructor_to_js : _MapConstructor -> Ojs.t = Obj.magic

    and _Promise_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T _Promise =
     fun _T -> Obj.magic

    and _Promise_to_js : 'T. ('T -> Ojs.t) -> 'T _Promise -> Ojs.t =
     fun _T -> Obj.magic

    and _PromiseConstructor_of_js : Ojs.t -> _PromiseConstructor = Obj.magic

    and _PromiseConstructor_to_js : _PromiseConstructor -> Ojs.t = Obj.magic

    and _ReadonlyArray_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T _ReadonlyArray =
     fun _T -> Obj.magic

    and _ReadonlyArray_to_js : 'T. ('T -> Ojs.t) -> 'T _ReadonlyArray -> Ojs.t =
     fun _T -> Obj.magic

    and _ReadonlyMap_of_js :
          'K 'V.
          (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) _ReadonlyMap
      =
     fun _K _V -> Obj.magic

    and _ReadonlyMap_to_js :
          'K 'V.
          ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) _ReadonlyMap -> Ojs.t
      =
     fun _K _V -> Obj.magic

    and _ReadonlySet_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T _ReadonlySet =
     fun _T -> Obj.magic

    and _ReadonlySet_to_js : 'T. ('T -> Ojs.t) -> 'T _ReadonlySet -> Ojs.t =
     fun _T -> Obj.magic

    and _Set_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T _Set = fun _T -> Obj.magic

    and _Set_to_js : 'T. ('T -> Ojs.t) -> 'T _Set -> Ojs.t = fun _T -> Obj.magic

    and _SetConstructor_of_js : Ojs.t -> _SetConstructor = Obj.magic

    and _SetConstructor_to_js : _SetConstructor -> Ojs.t = Obj.magic

    and _String_of_js : Ojs.t -> _String = Obj.magic

    and _String_to_js : _String -> Ojs.t = Obj.magic

    and _SymbolConstructor_of_js : Ojs.t -> _SymbolConstructor = Obj.magic

    and _SymbolConstructor_to_js : _SymbolConstructor -> Ojs.t = Obj.magic

    and _Uint16Array_of_js : Ojs.t -> _Uint16Array = Obj.magic

    and _Uint16Array_to_js : _Uint16Array -> Ojs.t = Obj.magic

    and _Uint16ArrayConstructor_of_js : Ojs.t -> _Uint16ArrayConstructor =
      Obj.magic

    and _Uint16ArrayConstructor_to_js : _Uint16ArrayConstructor -> Ojs.t =
      Obj.magic

    and _Uint32Array_of_js : Ojs.t -> _Uint32Array = Obj.magic

    and _Uint32Array_to_js : _Uint32Array -> Ojs.t = Obj.magic

    and _Uint32ArrayConstructor_of_js : Ojs.t -> _Uint32ArrayConstructor =
      Obj.magic

    and _Uint32ArrayConstructor_to_js : _Uint32ArrayConstructor -> Ojs.t =
      Obj.magic

    and _Uint8Array_of_js : Ojs.t -> _Uint8Array = Obj.magic

    and _Uint8Array_to_js : _Uint8Array -> Ojs.t = Obj.magic

    and _Uint8ArrayConstructor_of_js : Ojs.t -> _Uint8ArrayConstructor =
      Obj.magic

    and _Uint8ArrayConstructor_to_js : _Uint8ArrayConstructor -> Ojs.t =
      Obj.magic

    and _Uint8ClampedArray_of_js : Ojs.t -> _Uint8ClampedArray = Obj.magic

    and _Uint8ClampedArray_to_js : _Uint8ClampedArray -> Ojs.t = Obj.magic

    and _Uint8ClampedArrayConstructor_of_js
        : Ojs.t -> _Uint8ClampedArrayConstructor
      =
      Obj.magic

    and _Uint8ClampedArrayConstructor_to_js
        : _Uint8ClampedArrayConstructor -> Ojs.t
      =
      Obj.magic

    and _WeakMap_of_js :
          'K 'V. (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) _WeakMap
      =
     fun _K _V -> Obj.magic

    and _WeakMap_to_js :
          'K 'V. ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) _WeakMap -> Ojs.t
      =
     fun _K _V -> Obj.magic

    and _WeakMapConstructor_of_js : Ojs.t -> _WeakMapConstructor = Obj.magic

    and _WeakMapConstructor_to_js : _WeakMapConstructor -> Ojs.t = Obj.magic

    and _WeakSet_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T _WeakSet =
     fun _T -> Obj.magic

    and _WeakSet_to_js : 'T. ('T -> Ojs.t) -> 'T _WeakSet -> Ojs.t =
     fun _T -> Obj.magic

    and _WeakSetConstructor_of_js : Ojs.t -> _WeakSetConstructor = Obj.magic

    and _WeakSetConstructor_to_js : _WeakSetConstructor -> Ojs.t = Obj.magic
  end
end

open Internal
open AnonymousInterfaces
open Types

module SymbolConstructor = struct
  include SymbolConstructor

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x13 : Ojs.t) -> t_of_js x13

  and t_0_to_js : t_0 -> Ojs.t = fun (x12 : t) -> t_to_js x12

  let (get_iterator : t -> symbol) =
   fun (x14 : t) -> symbol_of_js (Ojs.get_prop_ascii (t_to_js x14) "iterator")
end

module IteratorYieldResult = struct
  type 'TYield t = 'TYield _IteratorYieldResult

  let rec t_of_js : 'TYield. (Ojs.t -> 'TYield) -> Ojs.t -> 'TYield t =
    fun (type __TYield) (__TYield_of_js : Ojs.t -> __TYield) (x17 : Ojs.t) ->
     _IteratorYieldResult_of_js __TYield_of_js x17

  and t_to_js : 'TYield. ('TYield -> Ojs.t) -> 'TYield t -> Ojs.t =
    fun (type __TYield)
        (__TYield_to_js : __TYield -> Ojs.t)
        (x15 : __TYield _IteratorYieldResult) ->
     _IteratorYieldResult_to_js __TYield_to_js x15

  type 'TYield t_1 = 'TYield t

  let rec t_1_of_js : 'TYield. (Ojs.t -> 'TYield) -> Ojs.t -> 'TYield t_1 =
    fun (type __TYield) (__TYield_of_js : Ojs.t -> __TYield) (x21 : Ojs.t) ->
     t_of_js __TYield_of_js x21

  and t_1_to_js : 'TYield. ('TYield -> Ojs.t) -> 'TYield t_1 -> Ojs.t =
    fun (type __TYield) (__TYield_to_js : __TYield -> Ojs.t) (x19 : __TYield t) ->
     t_to_js __TYield_to_js x19

  let (get_done : 'TYield t -> [ `L_b_false ]) =
   fun (x23 : 'TYield t) ->
    let x25 = Ojs.get_prop_ascii (t_to_js Obj.magic x23) "done" in
    match Ojs.bool_of_js x25 with false -> `L_b_false | _ -> assert false

  let (set_done : 'TYield t -> [ `L_b_false ] -> unit) =
   fun (x26 : 'TYield t) (x27 : [ `L_b_false ]) ->
    Ojs.set_prop_ascii
      (t_to_js Obj.magic x26)
      "done"
      (match x27 with `L_b_false -> Ojs.string_to_js "LBFalse")

  let (get_value : 'TYield t -> 'TYield) =
   fun (x29 : 'TYield t) ->
    Obj.magic (Ojs.get_prop_ascii (t_to_js Obj.magic x29) "value")

  let (set_value : 'TYield t -> 'TYield -> unit) =
   fun (x31 : 'TYield t) (x32 : 'TYield) ->
    Ojs.set_prop_ascii (t_to_js Obj.magic x31) "value" (Obj.magic x32)
end

module IteratorReturnResult = struct
  type 'TReturn t = 'TReturn _IteratorReturnResult

  let rec t_of_js : 'TReturn. (Ojs.t -> 'TReturn) -> Ojs.t -> 'TReturn t =
    fun (type __TReturn) (__TReturn_of_js : Ojs.t -> __TReturn) (x36 : Ojs.t) ->
     _IteratorReturnResult_of_js __TReturn_of_js x36

  and t_to_js : 'TReturn. ('TReturn -> Ojs.t) -> 'TReturn t -> Ojs.t =
    fun (type __TReturn)
        (__TReturn_to_js : __TReturn -> Ojs.t)
        (x34 : __TReturn _IteratorReturnResult) ->
     _IteratorReturnResult_to_js __TReturn_to_js x34

  type 'TReturn t_1 = 'TReturn t

  let rec t_1_of_js : 'TReturn. (Ojs.t -> 'TReturn) -> Ojs.t -> 'TReturn t_1 =
    fun (type __TReturn) (__TReturn_of_js : Ojs.t -> __TReturn) (x40 : Ojs.t) ->
     t_of_js __TReturn_of_js x40

  and t_1_to_js : 'TReturn. ('TReturn -> Ojs.t) -> 'TReturn t_1 -> Ojs.t =
    fun (type __TReturn)
        (__TReturn_to_js : __TReturn -> Ojs.t)
        (x38 : __TReturn t) ->
     t_to_js __TReturn_to_js x38

  let (get_done : 'TReturn t -> [ `L_b_true ]) =
   fun (x42 : 'TReturn t) ->
    let x44 = Ojs.get_prop_ascii (t_to_js Obj.magic x42) "done" in
    match Ojs.bool_of_js x44 with true -> `L_b_true | _ -> assert false

  let (set_done : 'TReturn t -> [ `L_b_true ] -> unit) =
   fun (x45 : 'TReturn t) (x46 : [ `L_b_true ]) ->
    Ojs.set_prop_ascii
      (t_to_js Obj.magic x45)
      "done"
      (match x46 with `L_b_true -> Ojs.string_to_js "LBTrue")

  let (get_value : 'TReturn t -> 'TReturn) =
   fun (x48 : 'TReturn t) ->
    Obj.magic (Ojs.get_prop_ascii (t_to_js Obj.magic x48) "value")

  let (set_value : 'TReturn t -> 'TReturn -> unit) =
   fun (x50 : 'TReturn t) (x51 : 'TReturn) ->
    Ojs.set_prop_ascii (t_to_js Obj.magic x50) "value" (Obj.magic x51)
end

module IteratorResult = struct
  type ('T, 'TReturn) t = ('T, 'TReturn) _IteratorResult

  let rec t_of_js :
            'T 'TReturn.
            (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> Ojs.t -> ('T, 'TReturn) t
    =
    fun (type __T __TReturn)
        (__T_of_js : Ojs.t -> __T)
        (__TReturn_of_js : Ojs.t -> __TReturn)
        (x56 : Ojs.t) ->
     _IteratorResult_of_js __T_of_js __TReturn_of_js x56

  and t_to_js :
        'T 'TReturn.
        ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('T, 'TReturn) t -> Ojs.t
    =
    fun (type __T __TReturn)
        (__T_to_js : __T -> Ojs.t)
        (__TReturn_to_js : __TReturn -> Ojs.t)
        (x53 : (__T, __TReturn) _IteratorResult) ->
     _IteratorResult_to_js __T_to_js __TReturn_to_js x53

  type ('T, 'TReturn) t_2 = ('T, 'TReturn) t

  let rec t_2_of_js :
            'T 'TReturn.
            (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> Ojs.t -> ('T, 'TReturn) t_2
    =
    fun (type __T __TReturn)
        (__T_of_js : Ojs.t -> __T)
        (__TReturn_of_js : Ojs.t -> __TReturn)
        (x62 : Ojs.t) ->
     t_of_js __T_of_js __TReturn_of_js x62

  and t_2_to_js :
        'T 'TReturn.
        ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('T, 'TReturn) t_2 -> Ojs.t
    =
    fun (type __T __TReturn)
        (__T_to_js : __T -> Ojs.t)
        (__TReturn_to_js : __TReturn -> Ojs.t)
        (x59 : (__T, __TReturn) t) ->
     t_to_js __T_to_js __TReturn_to_js x59
end

module Iterator = struct
  type ('T, 'TReturn, 'TNext) t = ('T, 'TReturn, 'TNext) _Iterator

  let rec t_of_js :
            'T 'TReturn 'TNext.
            (Ojs.t -> 'T)
            -> (Ojs.t -> 'TReturn)
            -> (Ojs.t -> 'TNext)
            -> Ojs.t
            -> ('T, 'TReturn, 'TNext) t
    =
    fun (type __T __TReturn __TNext)
        (__T_of_js : Ojs.t -> __T)
        (__TReturn_of_js : Ojs.t -> __TReturn)
        (__TNext_of_js : Ojs.t -> __TNext)
        (x69 : Ojs.t) ->
     _Iterator_of_js __T_of_js __TReturn_of_js __TNext_of_js x69

  and t_to_js :
        'T 'TReturn 'TNext.
        ('T -> Ojs.t)
        -> ('TReturn -> Ojs.t)
        -> ('TNext -> Ojs.t)
        -> ('T, 'TReturn, 'TNext) t
        -> Ojs.t
    =
    fun (type __T __TReturn __TNext)
        (__T_to_js : __T -> Ojs.t)
        (__TReturn_to_js : __TReturn -> Ojs.t)
        (__TNext_to_js : __TNext -> Ojs.t)
        (x65 : (__T, __TReturn, __TNext) _Iterator) ->
     _Iterator_to_js __T_to_js __TReturn_to_js __TNext_to_js x65

  type ('T, 'TReturn, 'TNext) t_3 = ('T, 'TReturn, 'TNext) t

  let rec t_3_of_js :
            'T 'TReturn 'TNext.
            (Ojs.t -> 'T)
            -> (Ojs.t -> 'TReturn)
            -> (Ojs.t -> 'TNext)
            -> Ojs.t
            -> ('T, 'TReturn, 'TNext) t_3
    =
    fun (type __T __TReturn __TNext)
        (__T_of_js : Ojs.t -> __T)
        (__TReturn_of_js : Ojs.t -> __TReturn)
        (__TNext_of_js : Ojs.t -> __TNext)
        (x77 : Ojs.t) ->
     t_of_js __T_of_js __TReturn_of_js __TNext_of_js x77

  and t_3_to_js :
        'T 'TReturn 'TNext.
        ('T -> Ojs.t)
        -> ('TReturn -> Ojs.t)
        -> ('TNext -> Ojs.t)
        -> ('T, 'TReturn, 'TNext) t_3
        -> Ojs.t
    =
    fun (type __T __TReturn __TNext)
        (__T_to_js : __T -> Ojs.t)
        (__TReturn_to_js : __TReturn -> Ojs.t)
        (__TNext_to_js : __TNext -> Ojs.t)
        (x73 : (__T, __TReturn, __TNext) t) ->
     t_to_js __T_to_js __TReturn_to_js __TNext_to_js x73

  let (next :
        ('T, 'TReturn, 'TNext) t
        -> args:any list
        -> ('T, 'TReturn) _IteratorResult)
    =
   fun (x84 : ('T, 'TReturn, 'TNext) t) ~args:(x81 : any list) ->
    _IteratorResult_of_js
      Obj.magic
      Obj.magic
      (let x88 = t_to_js Obj.magic Obj.magic Obj.magic x84 in
       Ojs.call
         (Ojs.get_prop_ascii x88 "next")
         "apply"
         [| x88
          ; (let x82 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             List.iter
               (fun (x83 : any) ->
                 ignore (Ojs.call x82 "push" [| any_to_js x83 |]))
               x81;
             x82)
         |])

  let (return :
        ('T, 'TReturn, 'TNext) t
        -> ?value:'TReturn
        -> unit
        -> ('T, 'TReturn) _IteratorResult)
    =
   fun (x94 : ('T, 'TReturn, 'TNext) t) ?value:(x91 : 'TReturn option) () ->
    _IteratorResult_of_js
      Obj.magic
      Obj.magic
      (let x98 = t_to_js Obj.magic Obj.magic Obj.magic x94 in
       Ojs.call
         (Ojs.get_prop_ascii x98 "return")
         "apply"
         [| x98
          ; (let x92 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             (match x91 with
             | Some x93 ->
               ignore (Ojs.call x92 "push" [| Obj.magic x93 |])
             | None ->
               ());
             x92)
         |])

  let (throw :
        ('T, 'TReturn, 'TNext) t
        -> ?e:any
        -> unit
        -> ('T, 'TReturn) _IteratorResult)
    =
   fun (x104 : ('T, 'TReturn, 'TNext) t) ?e:(x101 : any option) () ->
    _IteratorResult_of_js
      Obj.magic
      Obj.magic
      (let x108 = t_to_js Obj.magic Obj.magic Obj.magic x104 in
       Ojs.call
         (Ojs.get_prop_ascii x108 "throw")
         "apply"
         [| x108
          ; (let x102 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             (match x101 with
             | Some x103 ->
               ignore (Ojs.call x102 "push" [| any_to_js x103 |])
             | None ->
               ());
             x102)
         |])
end

module Iterable = struct
  type 'T t = 'T _Iterable

  let rec t_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x113 : Ojs.t) ->
     _Iterable_of_js __T_of_js x113

  and t_to_js : 'T. ('T -> Ojs.t) -> 'T t -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x111 : __T _Iterable) ->
     _Iterable_to_js __T_to_js x111

  type 'T t_1 = 'T t

  let rec t_1_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t_1 =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x117 : Ojs.t) ->
     t_of_js __T_of_js x117

  and t_1_to_js : 'T. ('T -> Ojs.t) -> 'T t_1 -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x115 : __T t) ->
     t_to_js __T_to_js x115

end

module IterableIterator = struct
  type 'T t = 'T _IterableIterator

  let rec t_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x127 : Ojs.t) ->
     _IterableIterator_of_js __T_of_js x127

  and t_to_js : 'T. ('T -> Ojs.t) -> 'T t -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x125 : __T _IterableIterator) ->
     _IterableIterator_to_js __T_to_js x125

  type 'T t_1 = 'T t

  let rec t_1_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t_1 =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x131 : Ojs.t) ->
     t_of_js __T_of_js x131

  and t_1_to_js : 'T. ('T -> Ojs.t) -> 'T t_1 -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x129 : __T t) ->
     t_to_js __T_to_js x129


  let (cast : 'T t -> ('T, any, never or_undefined) _Iterator) =
   fun (x136 : 'T t) ->
    _Iterator_of_js
      Obj.magic
      any_of_js
      (fun (x140 : Ojs.t) -> or_undefined_of_js never_of_js x140)
      (t_to_js Obj.magic x136)
end

module Array = struct
  type 'T t = 'T _Array

  let rec t_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x144 : Ojs.t) ->
     _Array_of_js __T_of_js x144

  and t_to_js : 'T. ('T -> Ojs.t) -> 'T t -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x142 : __T _Array) ->
     _Array_to_js __T_to_js x142

  type 'T t_1 = 'T t

  let rec t_1_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t_1 =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x148 : Ojs.t) ->
     t_of_js __T_of_js x148

  and t_1_to_js : 'T. ('T -> Ojs.t) -> 'T t_1 -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x146 : __T t) ->
     t_to_js __T_to_js x146


  let (entries : 'T t -> (float * 'T) _IterableIterator) =
   fun (x153 : 'T t) ->
    _IterableIterator_of_js
      (fun (x155 : Ojs.t) ->
        let x156 = x155 in
        Ojs.float_of_js (Ojs.array_get x156 0), Obj.magic (Ojs.array_get x156 1))
      (Ojs.call (t_to_js Obj.magic x153) "entries" [||])

  let (keys : 'T t -> float _IterableIterator) =
   fun (x157 : 'T t) ->
    _IterableIterator_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js Obj.magic x157) "keys" [||])

  let (values : 'T t -> 'T _IterableIterator) =
   fun (x160 : 'T t) ->
    _IterableIterator_of_js
      Obj.magic
      (Ojs.call (t_to_js Obj.magic x160) "values" [||])

  let (to_ml : 'T t -> 'T list) =
   fun (x163 : 'T t) -> Ojs.list_of_js Obj.magic (t_to_js Obj.magic x163)

  let (of_ml : 'T list -> 'T t) =
   fun (x166 : 'T list) -> t_of_js Obj.magic (Ojs.list_to_js Obj.magic x166)
end

module ArrayConstructor = struct
  type t = _ArrayConstructor

  let rec t_of_js : Ojs.t -> t =
   fun (x170 : Ojs.t) -> _ArrayConstructor_of_js x170

  and t_to_js : t -> Ojs.t =
   fun (x169 : _ArrayConstructor) -> _ArrayConstructor_to_js x169

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x172 : Ojs.t) -> t_of_js x172

  and t_0_to_js : t_0 -> Ojs.t = fun (x171 : t) -> t_to_js x171

  let (from : t -> iterable:('T Array.t_1, 'T _Iterable) union2 -> 'T list) =
   fun (x178 : t) ~iterable:(x173 : ('T Array.t_1, 'T _Iterable) union2) ->
    Ojs.list_of_js
      Obj.magic
      (Ojs.call
         (t_to_js x178)
         "from"
         [| union2_to_js
              (fun (x174 : 'T Array.t_1) -> Array.t_1_to_js Obj.magic x174)
              (fun (x176 : 'T _Iterable) -> _Iterable_to_js Obj.magic x176)
              x173
         |])

  let (from' :
        t
        -> iterable:('T Array.t_1, 'T _Iterable) union2
        -> mapfn:(v:'T -> k:float -> 'U)
        -> ?thisArg:any
        -> unit
        -> 'U list)
    =
   fun (x191 : t)
       ~iterable:(x180 : ('T Array.t_1, 'T _Iterable) union2)
       ~mapfn:(x181 : v:'T -> k:float -> 'U)
       ?thisArg:(x182 : any option)
       () ->
    Ojs.list_of_js
      Obj.magic
      (let x192 = t_to_js x191 in
       Ojs.call
         (Ojs.get_prop_ascii x192 "from")
         "apply"
         [| x192
          ; (let x183 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call
                  x183
                  "push"
                  [| union2_to_js
                       (fun (x187 : 'T Array.t_1) ->
                         Array.t_1_to_js Obj.magic x187)
                       (fun (x189 : 'T _Iterable) ->
                         _Iterable_to_js Obj.magic x189)
                       x180
                  |]);
             ignore
               (Ojs.call
                  x183
                  "push"
                  [| Ojs.fun_to_js 2 (fun (x185 : Ojs.t) (x186 : Ojs.t) ->
                         Obj.magic
                           (x181 ~v:(Obj.magic x185) ~k:(Ojs.float_of_js x186)))
                  |]);
             (match x182 with
             | Some x184 ->
               ignore (Ojs.call x183 "push" [| any_to_js x184 |])
             | None ->
               ());
             x183)
         |])
end

module ReadonlyArray = struct
  type 'T t = 'T _ReadonlyArray

  let rec t_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x196 : Ojs.t) ->
     _ReadonlyArray_of_js __T_of_js x196

  and t_to_js : 'T. ('T -> Ojs.t) -> 'T t -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x194 : __T _ReadonlyArray) ->
     _ReadonlyArray_to_js __T_to_js x194

  type 'T t_1 = 'T t

  let rec t_1_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t_1 =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x200 : Ojs.t) ->
     t_of_js __T_of_js x200

  and t_1_to_js : 'T. ('T -> Ojs.t) -> 'T t_1 -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x198 : __T t) ->
     t_to_js __T_to_js x198

  let (entries : 'T t -> (float * 'T) _IterableIterator) =
   fun (x205 : 'T t) ->
    _IterableIterator_of_js
      (fun (x207 : Ojs.t) ->
        let x208 = x207 in
        Ojs.float_of_js (Ojs.array_get x208 0), Obj.magic (Ojs.array_get x208 1))
      (Ojs.call (t_to_js Obj.magic x205) "entries" [||])

  let (keys : 'T t -> float _IterableIterator) =
   fun (x209 : 'T t) ->
    _IterableIterator_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js Obj.magic x209) "keys" [||])

  let (values : 'T t -> 'T _IterableIterator) =
   fun (x212 : 'T t) ->
    _IterableIterator_of_js
      Obj.magic
      (Ojs.call (t_to_js Obj.magic x212) "values" [||])

  let (to_ml : 'T t -> 'T list) =
   fun (x215 : 'T t) -> Ojs.list_of_js Obj.magic (t_to_js Obj.magic x215)

  let (of_ml : 'T list -> 'T t) =
   fun (x218 : 'T list) -> t_of_js Obj.magic (Ojs.list_to_js Obj.magic x218)
end

module IArguments = struct
  type t = _IArguments

  let rec t_of_js : Ojs.t -> t = fun (x222 : Ojs.t) -> _IArguments_of_js x222

  and t_to_js : t -> Ojs.t = fun (x221 : _IArguments) -> _IArguments_to_js x221

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x224 : Ojs.t) -> t_of_js x224

  and t_0_to_js : t_0 -> Ojs.t = fun (x223 : t) -> t_to_js x223

end

module Map = struct
  type ('K, 'V) t = ('K, 'V) _Map

  let rec t_of_js : 'K 'V. (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t
    =
    fun (type __K __V)
        (__K_of_js : Ojs.t -> __K)
        (__V_of_js : Ojs.t -> __V)
        (x230 : Ojs.t) ->
     _Map_of_js __K_of_js __V_of_js x230

  and t_to_js : 'K 'V. ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t =
    fun (type __K __V)
        (__K_to_js : __K -> Ojs.t)
        (__V_to_js : __V -> Ojs.t)
        (x227 : (__K, __V) _Map) ->
     _Map_to_js __K_to_js __V_to_js x227

  type ('K, 'V) t_2 = ('K, 'V) t

  let rec t_2_of_js :
            'K 'V. (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t_2
    =
    fun (type __K __V)
        (__K_of_js : Ojs.t -> __K)
        (__V_of_js : Ojs.t -> __V)
        (x236 : Ojs.t) ->
     t_of_js __K_of_js __V_of_js x236

  and t_2_to_js : 'K 'V. ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t_2 -> Ojs.t
    =
    fun (type __K __V)
        (__K_to_js : __K -> Ojs.t)
        (__V_to_js : __V -> Ojs.t)
        (x233 : (__K, __V) t) ->
     t_to_js __K_to_js __V_to_js x233


  let (entries : ('K, 'V) t -> ('K * 'V) _IterableIterator) =
   fun (x244 : ('K, 'V) t) ->
    _IterableIterator_of_js
      (fun (x247 : Ojs.t) ->
        let x248 = x247 in
        Obj.magic (Ojs.array_get x248 0), Obj.magic (Ojs.array_get x248 1))
      (Ojs.call (t_to_js Obj.magic Obj.magic x244) "entries" [||])

  let (keys : ('K, 'V) t -> 'K _IterableIterator) =
   fun (x249 : ('K, 'V) t) ->
    _IterableIterator_of_js
      Obj.magic
      (Ojs.call (t_to_js Obj.magic Obj.magic x249) "keys" [||])

  let (values : ('K, 'V) t -> 'V _IterableIterator) =
   fun (x253 : ('K, 'V) t) ->
    _IterableIterator_of_js
      Obj.magic
      (Ojs.call (t_to_js Obj.magic Obj.magic x253) "values" [||])
end

module ReadonlyMap = struct
  type ('K, 'V) t = ('K, 'V) _ReadonlyMap

  let rec t_of_js : 'K 'V. (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t
    =
    fun (type __K __V)
        (__K_of_js : Ojs.t -> __K)
        (__V_of_js : Ojs.t -> __V)
        (x260 : Ojs.t) ->
     _ReadonlyMap_of_js __K_of_js __V_of_js x260

  and t_to_js : 'K 'V. ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t =
    fun (type __K __V)
        (__K_to_js : __K -> Ojs.t)
        (__V_to_js : __V -> Ojs.t)
        (x257 : (__K, __V) _ReadonlyMap) ->
     _ReadonlyMap_to_js __K_to_js __V_to_js x257

  type ('K, 'V) t_2 = ('K, 'V) t

  let rec t_2_of_js :
            'K 'V. (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t_2
    =
    fun (type __K __V)
        (__K_of_js : Ojs.t -> __K)
        (__V_of_js : Ojs.t -> __V)
        (x266 : Ojs.t) ->
     t_of_js __K_of_js __V_of_js x266

  and t_2_to_js : 'K 'V. ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t_2 -> Ojs.t
    =
    fun (type __K __V)
        (__K_to_js : __K -> Ojs.t)
        (__V_to_js : __V -> Ojs.t)
        (x263 : (__K, __V) t) ->
     t_to_js __K_to_js __V_to_js x263


  let (entries : ('K, 'V) t -> ('K * 'V) _IterableIterator) =
   fun (x274 : ('K, 'V) t) ->
    _IterableIterator_of_js
      (fun (x277 : Ojs.t) ->
        let x278 = x277 in
        Obj.magic (Ojs.array_get x278 0), Obj.magic (Ojs.array_get x278 1))
      (Ojs.call (t_to_js Obj.magic Obj.magic x274) "entries" [||])

  let (keys : ('K, 'V) t -> 'K _IterableIterator) =
   fun (x279 : ('K, 'V) t) ->
    _IterableIterator_of_js
      Obj.magic
      (Ojs.call (t_to_js Obj.magic Obj.magic x279) "keys" [||])

  let (values : ('K, 'V) t -> 'V _IterableIterator) =
   fun (x283 : ('K, 'V) t) ->
    _IterableIterator_of_js
      Obj.magic
      (Ojs.call (t_to_js Obj.magic Obj.magic x283) "values" [||])
end

module MapConstructor = struct
  type t = _MapConstructor

  let rec t_of_js : Ojs.t -> t =
   fun (x288 : Ojs.t) -> _MapConstructor_of_js x288

  and t_to_js : t -> Ojs.t =
   fun (x287 : _MapConstructor) -> _MapConstructor_to_js x287

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x290 : Ojs.t) -> t_of_js x290

  and t_0_to_js : t_0 -> Ojs.t = fun (x289 : t) -> t_to_js x289

  let (create : t -> iterable:('K * 'V) _Iterable -> ('K, 'V) _Map) =
   fun (x296 : t) ~iterable:(x291 : ('K * 'V) _Iterable) ->
    _Map_of_js
      Obj.magic
      Obj.magic
      (Ojs.new_obj
         (t_to_js x296)
         [| _Iterable_to_js
              (fun (x292 : 'K * 'V) ->
                let x293, x294 = x292 in
                let x295 = Ojs.array_make 2 in
                Ojs.array_set x295 0 (Obj.magic x293);
                Ojs.array_set x295 1 (Obj.magic x294);
                x295)
              x291
         |])
end

module WeakMap = struct
  type ('K, 'V) t = ('K, 'V) _WeakMap

  let rec t_of_js : 'K 'V. (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t
    =
    fun (type __K __V)
        (__K_of_js : Ojs.t -> __K)
        (__V_of_js : Ojs.t -> __V)
        (x302 : Ojs.t) ->
     _WeakMap_of_js __K_of_js __V_of_js x302

  and t_to_js : 'K 'V. ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t =
    fun (type __K __V)
        (__K_to_js : __K -> Ojs.t)
        (__V_to_js : __V -> Ojs.t)
        (x299 : (__K, __V) _WeakMap) ->
     _WeakMap_to_js __K_to_js __V_to_js x299

  type ('K, 'V) t_2 = ('K, 'V) t

  let rec t_2_of_js :
            'K 'V. (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t_2
    =
    fun (type __K __V)
        (__K_of_js : Ojs.t -> __K)
        (__V_of_js : Ojs.t -> __V)
        (x308 : Ojs.t) ->
     t_of_js __K_of_js __V_of_js x308

  and t_2_to_js : 'K 'V. ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t_2 -> Ojs.t
    =
    fun (type __K __V)
        (__K_to_js : __K -> Ojs.t)
        (__V_to_js : __V -> Ojs.t)
        (x305 : (__K, __V) t) ->
     t_to_js __K_to_js __V_to_js x305
end

module WeakMapConstructor = struct
  type t = _WeakMapConstructor

  let rec t_of_js : Ojs.t -> t =
   fun (x312 : Ojs.t) -> _WeakMapConstructor_of_js x312

  and t_to_js : t -> Ojs.t =
   fun (x311 : _WeakMapConstructor) -> _WeakMapConstructor_to_js x311

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x314 : Ojs.t) -> t_of_js x314

  and t_0_to_js : t_0 -> Ojs.t = fun (x313 : t) -> t_to_js x313

  let (create : t -> iterable:('K * 'V) _Iterable -> ('K, 'V) _WeakMap) =
   fun (x320 : t) ~iterable:(x315 : ('K * 'V) _Iterable) ->
    _WeakMap_of_js
      Obj.magic
      Obj.magic
      (Ojs.new_obj
         (t_to_js x320)
         [| _Iterable_to_js
              (fun (x316 : 'K * 'V) ->
                let x317, x318 = x316 in
                let x319 = Ojs.array_make 2 in
                Ojs.array_set x319 0 (Obj.magic x317);
                Ojs.array_set x319 1 (Obj.magic x318);
                x319)
              x315
         |])
end

module Set = struct
  type 'T t = 'T _Set

  let rec t_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x325 : Ojs.t) ->
     _Set_of_js __T_of_js x325

  and t_to_js : 'T. ('T -> Ojs.t) -> 'T t -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x323 : __T _Set) ->
     _Set_to_js __T_to_js x323

  type 'T t_1 = 'T t

  let rec t_1_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t_1 =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x329 : Ojs.t) ->
     t_of_js __T_of_js x329

  and t_1_to_js : 'T. ('T -> Ojs.t) -> 'T t_1 -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x327 : __T t) ->
     t_to_js __T_to_js x327


  let (entries : 'T t -> ('T * 'T) _IterableIterator) =
   fun (x334 : 'T t) ->
    _IterableIterator_of_js
      (fun (x336 : Ojs.t) ->
        let x337 = x336 in
        Obj.magic (Ojs.array_get x337 0), Obj.magic (Ojs.array_get x337 1))
      (Ojs.call (t_to_js Obj.magic x334) "entries" [||])

  let (keys : 'T t -> 'T _IterableIterator) =
   fun (x338 : 'T t) ->
    _IterableIterator_of_js
      Obj.magic
      (Ojs.call (t_to_js Obj.magic x338) "keys" [||])

  let (values : 'T t -> 'T _IterableIterator) =
   fun (x341 : 'T t) ->
    _IterableIterator_of_js
      Obj.magic
      (Ojs.call (t_to_js Obj.magic x341) "values" [||])
end

module ReadonlySet = struct
  type 'T t = 'T _ReadonlySet

  let rec t_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x346 : Ojs.t) ->
     _ReadonlySet_of_js __T_of_js x346

  and t_to_js : 'T. ('T -> Ojs.t) -> 'T t -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x344 : __T _ReadonlySet) ->
     _ReadonlySet_to_js __T_to_js x344

  type 'T t_1 = 'T t

  let rec t_1_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t_1 =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x350 : Ojs.t) ->
     t_of_js __T_of_js x350

  and t_1_to_js : 'T. ('T -> Ojs.t) -> 'T t_1 -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x348 : __T t) ->
     t_to_js __T_to_js x348


  let (entries : 'T t -> ('T * 'T) _IterableIterator) =
   fun (x355 : 'T t) ->
    _IterableIterator_of_js
      (fun (x357 : Ojs.t) ->
        let x358 = x357 in
        Obj.magic (Ojs.array_get x358 0), Obj.magic (Ojs.array_get x358 1))
      (Ojs.call (t_to_js Obj.magic x355) "entries" [||])

  let (keys : 'T t -> 'T _IterableIterator) =
   fun (x359 : 'T t) ->
    _IterableIterator_of_js
      Obj.magic
      (Ojs.call (t_to_js Obj.magic x359) "keys" [||])

  let (values : 'T t -> 'T _IterableIterator) =
   fun (x362 : 'T t) ->
    _IterableIterator_of_js
      Obj.magic
      (Ojs.call (t_to_js Obj.magic x362) "values" [||])
end

module SetConstructor = struct
  type t = _SetConstructor

  let rec t_of_js : Ojs.t -> t =
   fun (x366 : Ojs.t) -> _SetConstructor_of_js x366

  and t_to_js : t -> Ojs.t =
   fun (x365 : _SetConstructor) -> _SetConstructor_to_js x365

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x368 : Ojs.t) -> t_of_js x368

  and t_0_to_js : t_0 -> Ojs.t = fun (x367 : t) -> t_to_js x367

  let (create : t -> ?iterable:'T _Iterable or_null -> unit -> 'T _Set) =
   fun (x374 : t) ?iterable:(x369 : 'T _Iterable or_null option) () ->
    _Set_of_js
      Obj.magic
      (Ojs.new_obj_arr
         (t_to_js x374)
         (let x370 = Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||] in
          (match x369 with
          | Some x371 ->
            ignore
              (Ojs.call
                 x370
                 "push"
                 [| or_null_to_js
                      (fun (x372 : 'T _Iterable) ->
                        _Iterable_to_js Obj.magic x372)
                      x371
                 |])
          | None ->
            ());
          x370))
end

module WeakSet = struct
  type 'T t = 'T _WeakSet

  let rec t_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x378 : Ojs.t) ->
     _WeakSet_of_js __T_of_js x378

  and t_to_js : 'T. ('T -> Ojs.t) -> 'T t -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x376 : __T _WeakSet) ->
     _WeakSet_to_js __T_to_js x376

  type 'T t_1 = 'T t

  let rec t_1_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t_1 =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x382 : Ojs.t) ->
     t_of_js __T_of_js x382

  and t_1_to_js : 'T. ('T -> Ojs.t) -> 'T t_1 -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x380 : __T t) ->
     t_to_js __T_to_js x380
end

module WeakSetConstructor = struct
  type t = _WeakSetConstructor

  let rec t_of_js : Ojs.t -> t =
   fun (x385 : Ojs.t) -> _WeakSetConstructor_of_js x385

  and t_to_js : t -> Ojs.t =
   fun (x384 : _WeakSetConstructor) -> _WeakSetConstructor_to_js x384

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x387 : Ojs.t) -> t_of_js x387

  and t_0_to_js : t_0 -> Ojs.t = fun (x386 : t) -> t_to_js x386

  let (create : t -> iterable:'T _Iterable -> 'T _WeakSet) =
   fun (x390 : t) ~iterable:(x388 : 'T _Iterable) ->
    _WeakSet_of_js
      Obj.magic
      (Ojs.new_obj (t_to_js x390) [| _Iterable_to_js Obj.magic x388 |])
end

module Promise = struct
  type 'T t = 'T _Promise

  let rec t_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x394 : Ojs.t) ->
     _Promise_of_js __T_of_js x394

  and t_to_js : 'T. ('T -> Ojs.t) -> 'T t -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x392 : __T _Promise) ->
     _Promise_to_js __T_to_js x392

  type 'T t_1 = 'T t

  let rec t_1_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t_1 =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x398 : Ojs.t) ->
     t_of_js __T_of_js x398

  and t_1_to_js : 'T. ('T -> Ojs.t) -> 'T t_1 -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x396 : __T t) ->
     t_to_js __T_to_js x396
end

module PromiseConstructor = struct
  type t = _PromiseConstructor

  let rec t_of_js : Ojs.t -> t =
   fun (x401 : Ojs.t) -> _PromiseConstructor_of_js x401

  and t_to_js : t -> Ojs.t =
   fun (x400 : _PromiseConstructor) -> _PromiseConstructor_to_js x400

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x403 : Ojs.t) -> t_of_js x403

  and t_0_to_js : t_0 -> Ojs.t = fun (x402 : t) -> t_to_js x402

  let (all : t -> values:'T Promise.t_1 _Iterable -> 'T list _Promise) =
   fun (x407 : t) ~values:(x404 : 'T Promise.t_1 _Iterable) ->
    _Promise_of_js
      (fun (x408 : Ojs.t) -> Ojs.list_of_js Obj.magic x408)
      (Ojs.call
         (t_to_js x407)
         "all"
         [| _Iterable_to_js
              (fun (x405 : 'T Promise.t_1) -> Promise.t_1_to_js Obj.magic x405)
              x404
         |])

  let (race : t -> values:'T _Iterable -> any _Promise) =
   fun (x412 : t) ~values:(x410 : 'T _Iterable) ->
    _Promise_of_js
      any_of_js
      (Ojs.call (t_to_js x412) "race" [| _Iterable_to_js Obj.magic x410 |])

  let (race' : t -> values:'T Promise.t_1 _Iterable -> 'T _Promise) =
   fun (x417 : t) ~values:(x414 : 'T Promise.t_1 _Iterable) ->
    _Promise_of_js
      Obj.magic
      (Ojs.call
         (t_to_js x417)
         "race"
         [| _Iterable_to_js
              (fun (x415 : 'T Promise.t_1) -> Promise.t_1_to_js Obj.magic x415)
              x414
         |])
end

module String = struct
  type t = _String

  let rec t_of_js : Ojs.t -> t = fun (x420 : Ojs.t) -> _String_of_js x420

  and t_to_js : t -> Ojs.t = fun (x419 : _String) -> _String_to_js x419

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x422 : Ojs.t) -> t_of_js x422

  and t_0_to_js : t_0 -> Ojs.t = fun (x421 : t) -> t_to_js x421


  let (to_ml : t -> string) = fun (x425 : t) -> Ojs.string_of_js (t_to_js x425)

  let (of_ml : string -> t) =
   fun (x426 : string) -> t_of_js (Ojs.string_to_js x426)
end

module Int8Array = struct
  type t = _Int8Array

  let rec t_of_js : Ojs.t -> t = fun (x428 : Ojs.t) -> _Int8Array_of_js x428

  and t_to_js : t -> Ojs.t = fun (x427 : _Int8Array) -> _Int8Array_to_js x427

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x430 : Ojs.t) -> t_of_js x430

  and t_0_to_js : t_0 -> Ojs.t = fun (x429 : t) -> t_to_js x429

  let (entries : t -> (float * float) _IterableIterator) =
   fun (x433 : t) ->
    _IterableIterator_of_js
      (fun (x434 : Ojs.t) ->
        let x435 = x434 in
        ( Ojs.float_of_js (Ojs.array_get x435 0)
        , Ojs.float_of_js (Ojs.array_get x435 1) ))
      (Ojs.call (t_to_js x433) "entries" [||])

  let (keys : t -> float _IterableIterator) =
   fun (x436 : t) ->
    _IterableIterator_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js x436) "keys" [||])

  let (values : t -> float _IterableIterator) =
   fun (x438 : t) ->
    _IterableIterator_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js x438) "values" [||])
end

module Int8ArrayConstructor = struct
  type t = _Int8ArrayConstructor

  let rec t_of_js : Ojs.t -> t =
   fun (x441 : Ojs.t) -> _Int8ArrayConstructor_of_js x441

  and t_to_js : t -> Ojs.t =
   fun (x440 : _Int8ArrayConstructor) -> _Int8ArrayConstructor_to_js x440

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x443 : Ojs.t) -> t_of_js x443

  and t_0_to_js : t_0 -> Ojs.t = fun (x442 : t) -> t_to_js x442

  let (create : t -> elements:float _Iterable -> _Int8Array) =
   fun (x446 : t) ~elements:(x444 : float _Iterable) ->
    _Int8Array_of_js
      (Ojs.new_obj (t_to_js x446) [| _Iterable_to_js Ojs.float_to_js x444 |])

  let (from :
        t
        -> array:float _Iterable
        -> ?mapfn:(v:float -> k:float -> float)
        -> ?thisArg:any
        -> unit
        -> _Int8Array)
    =
   fun (x456 : t)
       ~array:(x447 : float _Iterable)
       ?mapfn:(x448 : (v:float -> k:float -> float) option)
       ?thisArg:(x449 : any option)
       () ->
    _Int8Array_of_js
      (let x457 = t_to_js x456 in
       Ojs.call
         (Ojs.get_prop_ascii x457 "from")
         "apply"
         [| x457
          ; (let x450 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call x450 "push" [| _Iterable_to_js Ojs.float_to_js x447 |]);
             (match x448 with
             | Some x452 ->
               ignore
                 (Ojs.call
                    x450
                    "push"
                    [| Ojs.fun_to_js 2 (fun (x453 : Ojs.t) (x454 : Ojs.t) ->
                           Ojs.float_to_js
                             (x452
                                ~v:(Ojs.float_of_js x453)
                                ~k:(Ojs.float_of_js x454)))
                    |])
             | None ->
               ());
             (match x449 with
             | Some x451 ->
               ignore (Ojs.call x450 "push" [| any_to_js x451 |])
             | None ->
               ());
             x450)
         |])
end

module Uint8Array = struct
  type t = _Uint8Array

  let rec t_of_js : Ojs.t -> t = fun (x459 : Ojs.t) -> _Uint8Array_of_js x459

  and t_to_js : t -> Ojs.t = fun (x458 : _Uint8Array) -> _Uint8Array_to_js x458

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x461 : Ojs.t) -> t_of_js x461

  and t_0_to_js : t_0 -> Ojs.t = fun (x460 : t) -> t_to_js x460


  let (entries : t -> (float * float) _IterableIterator) =
   fun (x464 : t) ->
    _IterableIterator_of_js
      (fun (x465 : Ojs.t) ->
        let x466 = x465 in
        ( Ojs.float_of_js (Ojs.array_get x466 0)
        , Ojs.float_of_js (Ojs.array_get x466 1) ))
      (Ojs.call (t_to_js x464) "entries" [||])

  let (keys : t -> float _IterableIterator) =
   fun (x467 : t) ->
    _IterableIterator_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js x467) "keys" [||])

  let (values : t -> float _IterableIterator) =
   fun (x469 : t) ->
    _IterableIterator_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js x469) "values" [||])
end

module Uint8ArrayConstructor = struct
  type t = _Uint8ArrayConstructor

  let rec t_of_js : Ojs.t -> t =
   fun (x472 : Ojs.t) -> _Uint8ArrayConstructor_of_js x472

  and t_to_js : t -> Ojs.t =
   fun (x471 : _Uint8ArrayConstructor) -> _Uint8ArrayConstructor_to_js x471

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x474 : Ojs.t) -> t_of_js x474

  and t_0_to_js : t_0 -> Ojs.t = fun (x473 : t) -> t_to_js x473

  let (create : t -> elements:float _Iterable -> _Uint8Array) =
   fun (x477 : t) ~elements:(x475 : float _Iterable) ->
    _Uint8Array_of_js
      (Ojs.new_obj (t_to_js x477) [| _Iterable_to_js Ojs.float_to_js x475 |])

  let (from :
        t
        -> array:float _Iterable
        -> ?mapfn:(v:float -> k:float -> float)
        -> ?thisArg:any
        -> unit
        -> _Uint8Array)
    =
   fun (x487 : t)
       ~array:(x478 : float _Iterable)
       ?mapfn:(x479 : (v:float -> k:float -> float) option)
       ?thisArg:(x480 : any option)
       () ->
    _Uint8Array_of_js
      (let x488 = t_to_js x487 in
       Ojs.call
         (Ojs.get_prop_ascii x488 "from")
         "apply"
         [| x488
          ; (let x481 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call x481 "push" [| _Iterable_to_js Ojs.float_to_js x478 |]);
             (match x479 with
             | Some x483 ->
               ignore
                 (Ojs.call
                    x481
                    "push"
                    [| Ojs.fun_to_js 2 (fun (x484 : Ojs.t) (x485 : Ojs.t) ->
                           Ojs.float_to_js
                             (x483
                                ~v:(Ojs.float_of_js x484)
                                ~k:(Ojs.float_of_js x485)))
                    |])
             | None ->
               ());
             (match x480 with
             | Some x482 ->
               ignore (Ojs.call x481 "push" [| any_to_js x482 |])
             | None ->
               ());
             x481)
         |])
end

module Uint8ClampedArray = struct
  type t = _Uint8ClampedArray

  let rec t_of_js : Ojs.t -> t =
   fun (x490 : Ojs.t) -> _Uint8ClampedArray_of_js x490

  and t_to_js : t -> Ojs.t =
   fun (x489 : _Uint8ClampedArray) -> _Uint8ClampedArray_to_js x489

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x492 : Ojs.t) -> t_of_js x492

  and t_0_to_js : t_0 -> Ojs.t = fun (x491 : t) -> t_to_js x491


  let (entries : t -> (float * float) _IterableIterator) =
   fun (x495 : t) ->
    _IterableIterator_of_js
      (fun (x496 : Ojs.t) ->
        let x497 = x496 in
        ( Ojs.float_of_js (Ojs.array_get x497 0)
        , Ojs.float_of_js (Ojs.array_get x497 1) ))
      (Ojs.call (t_to_js x495) "entries" [||])

  let (keys : t -> float _IterableIterator) =
   fun (x498 : t) ->
    _IterableIterator_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js x498) "keys" [||])

  let (values : t -> float _IterableIterator) =
   fun (x500 : t) ->
    _IterableIterator_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js x500) "values" [||])
end

module Uint8ClampedArrayConstructor = struct
  type t = _Uint8ClampedArrayConstructor

  let rec t_of_js : Ojs.t -> t =
   fun (x503 : Ojs.t) -> _Uint8ClampedArrayConstructor_of_js x503

  and t_to_js : t -> Ojs.t =
   fun (x502 : _Uint8ClampedArrayConstructor) ->
    _Uint8ClampedArrayConstructor_to_js x502

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x505 : Ojs.t) -> t_of_js x505

  and t_0_to_js : t_0 -> Ojs.t = fun (x504 : t) -> t_to_js x504

  let (create : t -> elements:float _Iterable -> _Uint8ClampedArray) =
   fun (x508 : t) ~elements:(x506 : float _Iterable) ->
    _Uint8ClampedArray_of_js
      (Ojs.new_obj (t_to_js x508) [| _Iterable_to_js Ojs.float_to_js x506 |])

  let (from :
        t
        -> array:float _Iterable
        -> ?mapfn:(v:float -> k:float -> float)
        -> ?thisArg:any
        -> unit
        -> _Uint8ClampedArray)
    =
   fun (x518 : t)
       ~array:(x509 : float _Iterable)
       ?mapfn:(x510 : (v:float -> k:float -> float) option)
       ?thisArg:(x511 : any option)
       () ->
    _Uint8ClampedArray_of_js
      (let x519 = t_to_js x518 in
       Ojs.call
         (Ojs.get_prop_ascii x519 "from")
         "apply"
         [| x519
          ; (let x512 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call x512 "push" [| _Iterable_to_js Ojs.float_to_js x509 |]);
             (match x510 with
             | Some x514 ->
               ignore
                 (Ojs.call
                    x512
                    "push"
                    [| Ojs.fun_to_js 2 (fun (x515 : Ojs.t) (x516 : Ojs.t) ->
                           Ojs.float_to_js
                             (x514
                                ~v:(Ojs.float_of_js x515)
                                ~k:(Ojs.float_of_js x516)))
                    |])
             | None ->
               ());
             (match x511 with
             | Some x513 ->
               ignore (Ojs.call x512 "push" [| any_to_js x513 |])
             | None ->
               ());
             x512)
         |])
end

module Int16Array = struct
  type t = _Int16Array

  let rec t_of_js : Ojs.t -> t = fun (x521 : Ojs.t) -> _Int16Array_of_js x521

  and t_to_js : t -> Ojs.t = fun (x520 : _Int16Array) -> _Int16Array_to_js x520

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x523 : Ojs.t) -> t_of_js x523

  and t_0_to_js : t_0 -> Ojs.t = fun (x522 : t) -> t_to_js x522


  let (entries : t -> (float * float) _IterableIterator) =
   fun (x526 : t) ->
    _IterableIterator_of_js
      (fun (x527 : Ojs.t) ->
        let x528 = x527 in
        ( Ojs.float_of_js (Ojs.array_get x528 0)
        , Ojs.float_of_js (Ojs.array_get x528 1) ))
      (Ojs.call (t_to_js x526) "entries" [||])

  let (keys : t -> float _IterableIterator) =
   fun (x529 : t) ->
    _IterableIterator_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js x529) "keys" [||])

  let (values : t -> float _IterableIterator) =
   fun (x531 : t) ->
    _IterableIterator_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js x531) "values" [||])
end

module Int16ArrayConstructor = struct
  type t = _Int16ArrayConstructor

  let rec t_of_js : Ojs.t -> t =
   fun (x534 : Ojs.t) -> _Int16ArrayConstructor_of_js x534

  and t_to_js : t -> Ojs.t =
   fun (x533 : _Int16ArrayConstructor) -> _Int16ArrayConstructor_to_js x533

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x536 : Ojs.t) -> t_of_js x536

  and t_0_to_js : t_0 -> Ojs.t = fun (x535 : t) -> t_to_js x535

  let (create : t -> elements:float _Iterable -> _Int16Array) =
   fun (x539 : t) ~elements:(x537 : float _Iterable) ->
    _Int16Array_of_js
      (Ojs.new_obj (t_to_js x539) [| _Iterable_to_js Ojs.float_to_js x537 |])

  let (from :
        t
        -> array:float _Iterable
        -> ?mapfn:(v:float -> k:float -> float)
        -> ?thisArg:any
        -> unit
        -> _Int16Array)
    =
   fun (x549 : t)
       ~array:(x540 : float _Iterable)
       ?mapfn:(x541 : (v:float -> k:float -> float) option)
       ?thisArg:(x542 : any option)
       () ->
    _Int16Array_of_js
      (let x550 = t_to_js x549 in
       Ojs.call
         (Ojs.get_prop_ascii x550 "from")
         "apply"
         [| x550
          ; (let x543 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call x543 "push" [| _Iterable_to_js Ojs.float_to_js x540 |]);
             (match x541 with
             | Some x545 ->
               ignore
                 (Ojs.call
                    x543
                    "push"
                    [| Ojs.fun_to_js 2 (fun (x546 : Ojs.t) (x547 : Ojs.t) ->
                           Ojs.float_to_js
                             (x545
                                ~v:(Ojs.float_of_js x546)
                                ~k:(Ojs.float_of_js x547)))
                    |])
             | None ->
               ());
             (match x542 with
             | Some x544 ->
               ignore (Ojs.call x543 "push" [| any_to_js x544 |])
             | None ->
               ());
             x543)
         |])
end

module Uint16Array = struct
  type t = _Uint16Array

  let rec t_of_js : Ojs.t -> t = fun (x552 : Ojs.t) -> _Uint16Array_of_js x552

  and t_to_js : t -> Ojs.t =
   fun (x551 : _Uint16Array) -> _Uint16Array_to_js x551

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x554 : Ojs.t) -> t_of_js x554

  and t_0_to_js : t_0 -> Ojs.t = fun (x553 : t) -> t_to_js x553


  let (entries : t -> (float * float) _IterableIterator) =
   fun (x557 : t) ->
    _IterableIterator_of_js
      (fun (x558 : Ojs.t) ->
        let x559 = x558 in
        ( Ojs.float_of_js (Ojs.array_get x559 0)
        , Ojs.float_of_js (Ojs.array_get x559 1) ))
      (Ojs.call (t_to_js x557) "entries" [||])

  let (keys : t -> float _IterableIterator) =
   fun (x560 : t) ->
    _IterableIterator_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js x560) "keys" [||])

  let (values : t -> float _IterableIterator) =
   fun (x562 : t) ->
    _IterableIterator_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js x562) "values" [||])
end

module Uint16ArrayConstructor = struct
  type t = _Uint16ArrayConstructor

  let rec t_of_js : Ojs.t -> t =
   fun (x565 : Ojs.t) -> _Uint16ArrayConstructor_of_js x565

  and t_to_js : t -> Ojs.t =
   fun (x564 : _Uint16ArrayConstructor) -> _Uint16ArrayConstructor_to_js x564

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x567 : Ojs.t) -> t_of_js x567

  and t_0_to_js : t_0 -> Ojs.t = fun (x566 : t) -> t_to_js x566

  let (create : t -> elements:float _Iterable -> _Uint16Array) =
   fun (x570 : t) ~elements:(x568 : float _Iterable) ->
    _Uint16Array_of_js
      (Ojs.new_obj (t_to_js x570) [| _Iterable_to_js Ojs.float_to_js x568 |])

  let (from :
        t
        -> array:float _Iterable
        -> ?mapfn:(v:float -> k:float -> float)
        -> ?thisArg:any
        -> unit
        -> _Uint16Array)
    =
   fun (x580 : t)
       ~array:(x571 : float _Iterable)
       ?mapfn:(x572 : (v:float -> k:float -> float) option)
       ?thisArg:(x573 : any option)
       () ->
    _Uint16Array_of_js
      (let x581 = t_to_js x580 in
       Ojs.call
         (Ojs.get_prop_ascii x581 "from")
         "apply"
         [| x581
          ; (let x574 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call x574 "push" [| _Iterable_to_js Ojs.float_to_js x571 |]);
             (match x572 with
             | Some x576 ->
               ignore
                 (Ojs.call
                    x574
                    "push"
                    [| Ojs.fun_to_js 2 (fun (x577 : Ojs.t) (x578 : Ojs.t) ->
                           Ojs.float_to_js
                             (x576
                                ~v:(Ojs.float_of_js x577)
                                ~k:(Ojs.float_of_js x578)))
                    |])
             | None ->
               ());
             (match x573 with
             | Some x575 ->
               ignore (Ojs.call x574 "push" [| any_to_js x575 |])
             | None ->
               ());
             x574)
         |])
end

module Int32Array = struct
  type t = _Int32Array

  let rec t_of_js : Ojs.t -> t = fun (x583 : Ojs.t) -> _Int32Array_of_js x583

  and t_to_js : t -> Ojs.t = fun (x582 : _Int32Array) -> _Int32Array_to_js x582

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x585 : Ojs.t) -> t_of_js x585

  and t_0_to_js : t_0 -> Ojs.t = fun (x584 : t) -> t_to_js x584


  let (entries : t -> (float * float) _IterableIterator) =
   fun (x588 : t) ->
    _IterableIterator_of_js
      (fun (x589 : Ojs.t) ->
        let x590 = x589 in
        ( Ojs.float_of_js (Ojs.array_get x590 0)
        , Ojs.float_of_js (Ojs.array_get x590 1) ))
      (Ojs.call (t_to_js x588) "entries" [||])

  let (keys : t -> float _IterableIterator) =
   fun (x591 : t) ->
    _IterableIterator_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js x591) "keys" [||])

  let (values : t -> float _IterableIterator) =
   fun (x593 : t) ->
    _IterableIterator_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js x593) "values" [||])
end

module Int32ArrayConstructor = struct
  type t = _Int32ArrayConstructor

  let rec t_of_js : Ojs.t -> t =
   fun (x596 : Ojs.t) -> _Int32ArrayConstructor_of_js x596

  and t_to_js : t -> Ojs.t =
   fun (x595 : _Int32ArrayConstructor) -> _Int32ArrayConstructor_to_js x595

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x598 : Ojs.t) -> t_of_js x598

  and t_0_to_js : t_0 -> Ojs.t = fun (x597 : t) -> t_to_js x597

  let (create : t -> elements:float _Iterable -> _Int32Array) =
   fun (x601 : t) ~elements:(x599 : float _Iterable) ->
    _Int32Array_of_js
      (Ojs.new_obj (t_to_js x601) [| _Iterable_to_js Ojs.float_to_js x599 |])

  let (from :
        t
        -> array:float _Iterable
        -> ?mapfn:(v:float -> k:float -> float)
        -> ?thisArg:any
        -> unit
        -> _Int32Array)
    =
   fun (x611 : t)
       ~array:(x602 : float _Iterable)
       ?mapfn:(x603 : (v:float -> k:float -> float) option)
       ?thisArg:(x604 : any option)
       () ->
    _Int32Array_of_js
      (let x612 = t_to_js x611 in
       Ojs.call
         (Ojs.get_prop_ascii x612 "from")
         "apply"
         [| x612
          ; (let x605 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call x605 "push" [| _Iterable_to_js Ojs.float_to_js x602 |]);
             (match x603 with
             | Some x607 ->
               ignore
                 (Ojs.call
                    x605
                    "push"
                    [| Ojs.fun_to_js 2 (fun (x608 : Ojs.t) (x609 : Ojs.t) ->
                           Ojs.float_to_js
                             (x607
                                ~v:(Ojs.float_of_js x608)
                                ~k:(Ojs.float_of_js x609)))
                    |])
             | None ->
               ());
             (match x604 with
             | Some x606 ->
               ignore (Ojs.call x605 "push" [| any_to_js x606 |])
             | None ->
               ());
             x605)
         |])
end

module Uint32Array = struct
  type t = _Uint32Array

  let rec t_of_js : Ojs.t -> t = fun (x614 : Ojs.t) -> _Uint32Array_of_js x614

  and t_to_js : t -> Ojs.t =
   fun (x613 : _Uint32Array) -> _Uint32Array_to_js x613

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x616 : Ojs.t) -> t_of_js x616

  and t_0_to_js : t_0 -> Ojs.t = fun (x615 : t) -> t_to_js x615


  let (entries : t -> (float * float) _IterableIterator) =
   fun (x619 : t) ->
    _IterableIterator_of_js
      (fun (x620 : Ojs.t) ->
        let x621 = x620 in
        ( Ojs.float_of_js (Ojs.array_get x621 0)
        , Ojs.float_of_js (Ojs.array_get x621 1) ))
      (Ojs.call (t_to_js x619) "entries" [||])

  let (keys : t -> float _IterableIterator) =
   fun (x622 : t) ->
    _IterableIterator_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js x622) "keys" [||])

  let (values : t -> float _IterableIterator) =
   fun (x624 : t) ->
    _IterableIterator_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js x624) "values" [||])
end

module Uint32ArrayConstructor = struct
  type t = _Uint32ArrayConstructor

  let rec t_of_js : Ojs.t -> t =
   fun (x627 : Ojs.t) -> _Uint32ArrayConstructor_of_js x627

  and t_to_js : t -> Ojs.t =
   fun (x626 : _Uint32ArrayConstructor) -> _Uint32ArrayConstructor_to_js x626

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x629 : Ojs.t) -> t_of_js x629

  and t_0_to_js : t_0 -> Ojs.t = fun (x628 : t) -> t_to_js x628

  let (create : t -> elements:float _Iterable -> _Uint32Array) =
   fun (x632 : t) ~elements:(x630 : float _Iterable) ->
    _Uint32Array_of_js
      (Ojs.new_obj (t_to_js x632) [| _Iterable_to_js Ojs.float_to_js x630 |])

  let (from :
        t
        -> array:float _Iterable
        -> ?mapfn:(v:float -> k:float -> float)
        -> ?thisArg:any
        -> unit
        -> _Uint32Array)
    =
   fun (x642 : t)
       ~array:(x633 : float _Iterable)
       ?mapfn:(x634 : (v:float -> k:float -> float) option)
       ?thisArg:(x635 : any option)
       () ->
    _Uint32Array_of_js
      (let x643 = t_to_js x642 in
       Ojs.call
         (Ojs.get_prop_ascii x643 "from")
         "apply"
         [| x643
          ; (let x636 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call x636 "push" [| _Iterable_to_js Ojs.float_to_js x633 |]);
             (match x634 with
             | Some x638 ->
               ignore
                 (Ojs.call
                    x636
                    "push"
                    [| Ojs.fun_to_js 2 (fun (x639 : Ojs.t) (x640 : Ojs.t) ->
                           Ojs.float_to_js
                             (x638
                                ~v:(Ojs.float_of_js x639)
                                ~k:(Ojs.float_of_js x640)))
                    |])
             | None ->
               ());
             (match x635 with
             | Some x637 ->
               ignore (Ojs.call x636 "push" [| any_to_js x637 |])
             | None ->
               ());
             x636)
         |])
end

module Float32Array = struct
  type t = _Float32Array

  let rec t_of_js : Ojs.t -> t = fun (x645 : Ojs.t) -> _Float32Array_of_js x645

  and t_to_js : t -> Ojs.t =
   fun (x644 : _Float32Array) -> _Float32Array_to_js x644

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x647 : Ojs.t) -> t_of_js x647

  and t_0_to_js : t_0 -> Ojs.t = fun (x646 : t) -> t_to_js x646


  let (entries : t -> (float * float) _IterableIterator) =
   fun (x650 : t) ->
    _IterableIterator_of_js
      (fun (x651 : Ojs.t) ->
        let x652 = x651 in
        ( Ojs.float_of_js (Ojs.array_get x652 0)
        , Ojs.float_of_js (Ojs.array_get x652 1) ))
      (Ojs.call (t_to_js x650) "entries" [||])

  let (keys : t -> float _IterableIterator) =
   fun (x653 : t) ->
    _IterableIterator_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js x653) "keys" [||])

  let (values : t -> float _IterableIterator) =
   fun (x655 : t) ->
    _IterableIterator_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js x655) "values" [||])
end

module Float32ArrayConstructor = struct
  type t = _Float32ArrayConstructor

  let rec t_of_js : Ojs.t -> t =
   fun (x658 : Ojs.t) -> _Float32ArrayConstructor_of_js x658

  and t_to_js : t -> Ojs.t =
   fun (x657 : _Float32ArrayConstructor) -> _Float32ArrayConstructor_to_js x657

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x660 : Ojs.t) -> t_of_js x660

  and t_0_to_js : t_0 -> Ojs.t = fun (x659 : t) -> t_to_js x659

  let (create : t -> elements:float _Iterable -> _Float32Array) =
   fun (x663 : t) ~elements:(x661 : float _Iterable) ->
    _Float32Array_of_js
      (Ojs.new_obj (t_to_js x663) [| _Iterable_to_js Ojs.float_to_js x661 |])

  let (from :
        t
        -> array:float _Iterable
        -> ?mapfn:(v:float -> k:float -> float)
        -> ?thisArg:any
        -> unit
        -> _Float32Array)
    =
   fun (x673 : t)
       ~array:(x664 : float _Iterable)
       ?mapfn:(x665 : (v:float -> k:float -> float) option)
       ?thisArg:(x666 : any option)
       () ->
    _Float32Array_of_js
      (let x674 = t_to_js x673 in
       Ojs.call
         (Ojs.get_prop_ascii x674 "from")
         "apply"
         [| x674
          ; (let x667 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call x667 "push" [| _Iterable_to_js Ojs.float_to_js x664 |]);
             (match x665 with
             | Some x669 ->
               ignore
                 (Ojs.call
                    x667
                    "push"
                    [| Ojs.fun_to_js 2 (fun (x670 : Ojs.t) (x671 : Ojs.t) ->
                           Ojs.float_to_js
                             (x669
                                ~v:(Ojs.float_of_js x670)
                                ~k:(Ojs.float_of_js x671)))
                    |])
             | None ->
               ());
             (match x666 with
             | Some x668 ->
               ignore (Ojs.call x667 "push" [| any_to_js x668 |])
             | None ->
               ());
             x667)
         |])
end

module Float64Array = struct
  type t = _Float64Array

  let rec t_of_js : Ojs.t -> t = fun (x676 : Ojs.t) -> _Float64Array_of_js x676

  and t_to_js : t -> Ojs.t =
   fun (x675 : _Float64Array) -> _Float64Array_to_js x675

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x678 : Ojs.t) -> t_of_js x678

  and t_0_to_js : t_0 -> Ojs.t = fun (x677 : t) -> t_to_js x677


  let (entries : t -> (float * float) _IterableIterator) =
   fun (x681 : t) ->
    _IterableIterator_of_js
      (fun (x682 : Ojs.t) ->
        let x683 = x682 in
        ( Ojs.float_of_js (Ojs.array_get x683 0)
        , Ojs.float_of_js (Ojs.array_get x683 1) ))
      (Ojs.call (t_to_js x681) "entries" [||])

  let (keys : t -> float _IterableIterator) =
   fun (x684 : t) ->
    _IterableIterator_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js x684) "keys" [||])

  let (values : t -> float _IterableIterator) =
   fun (x686 : t) ->
    _IterableIterator_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js x686) "values" [||])
end

module Float64ArrayConstructor = struct
  type t = _Float64ArrayConstructor

  let rec t_of_js : Ojs.t -> t =
   fun (x689 : Ojs.t) -> _Float64ArrayConstructor_of_js x689

  and t_to_js : t -> Ojs.t =
   fun (x688 : _Float64ArrayConstructor) -> _Float64ArrayConstructor_to_js x688

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x691 : Ojs.t) -> t_of_js x691

  and t_0_to_js : t_0 -> Ojs.t = fun (x690 : t) -> t_to_js x690

  let (create : t -> elements:float _Iterable -> _Float64Array) =
   fun (x694 : t) ~elements:(x692 : float _Iterable) ->
    _Float64Array_of_js
      (Ojs.new_obj (t_to_js x694) [| _Iterable_to_js Ojs.float_to_js x692 |])

  let (from :
        t
        -> array:float _Iterable
        -> ?mapfn:(v:float -> k:float -> float)
        -> ?thisArg:any
        -> unit
        -> _Float64Array)
    =
   fun (x704 : t)
       ~array:(x695 : float _Iterable)
       ?mapfn:(x696 : (v:float -> k:float -> float) option)
       ?thisArg:(x697 : any option)
       () ->
    _Float64Array_of_js
      (let x705 = t_to_js x704 in
       Ojs.call
         (Ojs.get_prop_ascii x705 "from")
         "apply"
         [| x705
          ; (let x698 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call x698 "push" [| _Iterable_to_js Ojs.float_to_js x695 |]);
             (match x696 with
             | Some x700 ->
               ignore
                 (Ojs.call
                    x698
                    "push"
                    [| Ojs.fun_to_js 2 (fun (x701 : Ojs.t) (x702 : Ojs.t) ->
                           Ojs.float_to_js
                             (x700
                                ~v:(Ojs.float_of_js x701)
                                ~k:(Ojs.float_of_js x702)))
                    |])
             | None ->
               ());
             (match x697 with
             | Some x699 ->
               ignore (Ojs.call x698 "push" [| any_to_js x699 |])
             | None ->
               ());
             x698)
         |])
end
