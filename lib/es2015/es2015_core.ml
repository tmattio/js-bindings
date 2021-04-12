[@@@ocaml.warning "-7-32-39"]

[@@@ocaml.warning "-7-11-32-33-39"]

open Es5

module Internal = struct
  module AnonymousInterfaces = struct end

  module Types = struct
    open AnonymousInterfaces

    type 'T _Array = [ `Array of 'T ] intf

    and _ArrayConstructor = [ `ArrayConstructor ] intf

    and _DateConstructor = [ `DateConstructor ] intf

    and _Function = untyped_function

    and _Math = [ `Math ] intf

    and _NumberConstructor = [ `NumberConstructor ] intf

    and _ObjectConstructor = [ `ObjectConstructor ] intf

    and 'T _ReadonlyArray = [ `ReadonlyArray of 'T ] intf

    and _RegExp = regexp

    and _RegExpConstructor = [ `RegExpConstructor ] intf

    and _String = [ `String ] intf

    and _StringConstructor = [ `StringConstructor ] intf

    let rec _Array_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T _Array =
     fun _T -> Obj.magic

    and _Array_to_js : 'T. ('T -> Ojs.t) -> 'T _Array -> Ojs.t =
     fun _T -> Obj.magic

    and _ArrayConstructor_of_js : Ojs.t -> _ArrayConstructor = Obj.magic

    and _ArrayConstructor_to_js : _ArrayConstructor -> Ojs.t = Obj.magic

    and _DateConstructor_of_js : Ojs.t -> _DateConstructor = Obj.magic

    and _DateConstructor_to_js : _DateConstructor -> Ojs.t = Obj.magic

    and _Function_of_js : Ojs.t -> _Function =
     fun (x2 : Ojs.t) -> untyped_function_of_js x2

    and _Function_to_js : _Function -> Ojs.t =
     fun (x1 : untyped_function) -> untyped_function_to_js x1

    and _Math_of_js : Ojs.t -> _Math = Obj.magic

    and _Math_to_js : _Math -> Ojs.t = Obj.magic

    and _NumberConstructor_of_js : Ojs.t -> _NumberConstructor = Obj.magic

    and _NumberConstructor_to_js : _NumberConstructor -> Ojs.t = Obj.magic

    and _ObjectConstructor_of_js : Ojs.t -> _ObjectConstructor = Obj.magic

    and _ObjectConstructor_to_js : _ObjectConstructor -> Ojs.t = Obj.magic

    and _ReadonlyArray_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T _ReadonlyArray =
     fun _T -> Obj.magic

    and _ReadonlyArray_to_js : 'T. ('T -> Ojs.t) -> 'T _ReadonlyArray -> Ojs.t =
     fun _T -> Obj.magic

    and _RegExp_of_js : Ojs.t -> _RegExp = fun (x4 : Ojs.t) -> regexp_of_js x4

    and _RegExp_to_js : _RegExp -> Ojs.t = fun (x3 : regexp) -> regexp_to_js x3

    and _RegExpConstructor_of_js : Ojs.t -> _RegExpConstructor = Obj.magic

    and _RegExpConstructor_to_js : _RegExpConstructor -> Ojs.t = Obj.magic

    and _String_of_js : Ojs.t -> _String = Obj.magic

    and _String_to_js : _String -> Ojs.t = Obj.magic

    and _StringConstructor_of_js : Ojs.t -> _StringConstructor = Obj.magic

    and _StringConstructor_to_js : _StringConstructor -> Ojs.t = Obj.magic
  end
end

open Internal
open AnonymousInterfaces
open Types

module Array = struct
  include Array

  type 'T t_1 = 'T t

  let rec t_1_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t_1 =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x15 : Ojs.t) ->
     t_of_js __T_of_js x15

  and t_1_to_js : 'T. ('T -> Ojs.t) -> 'T t_1 -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x13 : __T t) ->
     t_to_js __T_to_js x13

  let (find :
        'T t
        -> predicate:
             (this:unit -> value:'T -> index:float -> obj:'T list -> bool)
        -> ?thisArg:any
        -> unit
        -> 'S or_undefined)
    =
   fun (x26 : 'T t)
       ~predicate:
         (x17 : this:unit -> value:'T -> index:float -> obj:'T list -> bool)
       ?thisArg:(x18 : any option)
       () ->
    or_undefined_of_js
      Obj.magic
      (let x28 = t_to_js Obj.magic x26 in
       Ojs.call
         (Ojs.get_prop_ascii x28 "find")
         "apply"
         [| x28
          ; (let x19 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call
                  x19
                  "push"
                  [| Ojs.fun_to_js
                       4
                       (fun
                         (x21 : Ojs.t)
                         (x22 : Ojs.t)
                         (x23 : Ojs.t)
                         (x24 : Ojs.t)
                       ->
                         Ojs.bool_to_js
                           (x17
                              ~this:(Ojs.unit_of_js x21)
                              ~value:(Obj.magic x22)
                              ~index:(Ojs.float_of_js x23)
                              ~obj:(Ojs.list_of_js Obj.magic x24)))
                  |]);
             (match x18 with
             | Some x20 ->
               ignore (Ojs.call x19 "push" [| any_to_js x20 |])
             | None ->
               ());
             x19)
         |])

  let (find' :
        'T t
        -> predicate:(value:'T -> index:float -> obj:'T list -> unknown)
        -> ?thisArg:any
        -> unit
        -> 'T or_undefined)
    =
   fun (x38 : 'T t)
       ~predicate:(x30 : value:'T -> index:float -> obj:'T list -> unknown)
       ?thisArg:(x31 : any option)
       () ->
    or_undefined_of_js
      Obj.magic
      (let x40 = t_to_js Obj.magic x38 in
       Ojs.call
         (Ojs.get_prop_ascii x40 "find")
         "apply"
         [| x40
          ; (let x32 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call
                  x32
                  "push"
                  [| Ojs.fun_to_js
                       3
                       (fun (x34 : Ojs.t) (x35 : Ojs.t) (x36 : Ojs.t) ->
                         unknown_to_js
                           (x30
                              ~value:(Obj.magic x34)
                              ~index:(Ojs.float_of_js x35)
                              ~obj:(Ojs.list_of_js Obj.magic x36)))
                  |]);
             (match x31 with
             | Some x33 ->
               ignore (Ojs.call x32 "push" [| any_to_js x33 |])
             | None ->
               ());
             x32)
         |])

  let (findIndex :
        'T t
        -> predicate:(value:'T -> index:float -> obj:'T list -> unknown)
        -> ?thisArg:any
        -> unit
        -> float)
    =
   fun (x50 : 'T t)
       ~predicate:(x42 : value:'T -> index:float -> obj:'T list -> unknown)
       ?thisArg:(x43 : any option)
       () ->
    Ojs.float_of_js
      (let x52 = t_to_js Obj.magic x50 in
       Ojs.call
         (Ojs.get_prop_ascii x52 "findIndex")
         "apply"
         [| x52
          ; (let x44 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call
                  x44
                  "push"
                  [| Ojs.fun_to_js
                       3
                       (fun (x46 : Ojs.t) (x47 : Ojs.t) (x48 : Ojs.t) ->
                         unknown_to_js
                           (x42
                              ~value:(Obj.magic x46)
                              ~index:(Ojs.float_of_js x47)
                              ~obj:(Ojs.list_of_js Obj.magic x48)))
                  |]);
             (match x43 with
             | Some x45 ->
               ignore (Ojs.call x44 "push" [| any_to_js x45 |])
             | None ->
               ());
             x44)
         |])

  let (fill : 'T t -> value:'T -> ?start:float -> ?end_:float -> unit -> 'T t) =
   fun (x59 : 'T t)
       ~value:(x53 : 'T)
       ?start:(x54 : float option)
       ?end_:(x55 : float option)
       () ->
    t_of_js
      Obj.magic
      (let x61 = t_to_js Obj.magic x59 in
       Ojs.call
         (Ojs.get_prop_ascii x61 "fill")
         "apply"
         [| x61
          ; (let x56 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore (Ojs.call x56 "push" [| Obj.magic x53 |]);
             (match x54 with
             | Some x58 ->
               ignore (Ojs.call x56 "push" [| Ojs.float_to_js x58 |])
             | None ->
               ());
             (match x55 with
             | Some x57 ->
               ignore (Ojs.call x56 "push" [| Ojs.float_to_js x57 |])
             | None ->
               ());
             x56)
         |])

  let (copyWithin :
        'T t -> target:float -> start:float -> ?end_:float -> unit -> 'T t)
    =
   fun (x68 : 'T t)
       ~target:(x63 : float)
       ~start:(x64 : float)
       ?end_:(x65 : float option)
       () ->
    t_of_js
      Obj.magic
      (let x70 = t_to_js Obj.magic x68 in
       Ojs.call
         (Ojs.get_prop_ascii x70 "copyWithin")
         "apply"
         [| x70
          ; (let x66 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore (Ojs.call x66 "push" [| Ojs.float_to_js x63 |]);
             ignore (Ojs.call x66 "push" [| Ojs.float_to_js x64 |]);
             (match x65 with
             | Some x67 ->
               ignore (Ojs.call x66 "push" [| Ojs.float_to_js x67 |])
             | None ->
               ());
             x66)
         |])

  let (to_ml : 'T t -> 'T list) =
   fun (x72 : 'T t) -> Ojs.list_of_js Obj.magic (t_to_js Obj.magic x72)

  let (of_ml : 'T list -> 'T t) =
   fun (x75 : 'T list) -> t_of_js Obj.magic (Ojs.list_to_js Obj.magic x75)
end

module ArrayConstructor = struct
  include ArrayConstructor

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x81 : Ojs.t) -> t_of_js x81

  and t_0_to_js : t_0 -> Ojs.t = fun (x80 : t) -> t_to_js x80

  let (from : t -> array:'T Array.t -> 'T list) =
   fun (x84 : t) ~array:(x82 : 'T Array.t) ->
    Ojs.list_of_js
      Obj.magic
      (Ojs.call (t_to_js x84) "from" [| Array.t_to_js Obj.magic x82 |])

  let (from' :
        t
        -> array:'T Array.t
        -> mapfn:(v:'T -> k:float -> 'U)
        -> ?thisArg:any
        -> unit
        -> 'U list)
    =
   fun (x94 : t)
       ~array:(x86 : 'T Array.t)
       ~mapfn:(x87 : v:'T -> k:float -> 'U)
       ?thisArg:(x88 : any option)
       () ->
    Ojs.list_of_js
      Obj.magic
      (let x95 = t_to_js x94 in
       Ojs.call
         (Ojs.get_prop_ascii x95 "from")
         "apply"
         [| x95
          ; (let x89 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore (Ojs.call x89 "push" [| Array.t_to_js Obj.magic x86 |]);
             ignore
               (Ojs.call
                  x89
                  "push"
                  [| Ojs.fun_to_js 2 (fun (x91 : Ojs.t) (x92 : Ojs.t) ->
                         Obj.magic
                           (x87 ~v:(Obj.magic x91) ~k:(Ojs.float_of_js x92)))
                  |]);
             (match x88 with
             | Some x90 ->
               ignore (Ojs.call x89 "push" [| any_to_js x90 |])
             | None ->
               ());
             x89)
         |])

  let (of_ : t -> items:'T list -> 'T list) =
   fun (x100 : t) ~items:(x97 : 'T list) ->
    Ojs.list_of_js
      Obj.magic
      (let x101 = t_to_js x100 in
       Ojs.call
         (Ojs.get_prop_ascii x101 "of")
         "apply"
         [| x101
          ; (let x98 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             List.iter
               (fun (x99 : 'T) ->
                 ignore (Ojs.call x98 "push" [| Obj.magic x99 |]))
               x97;
             x98)
         |])
end

module DateConstructor = struct
  include DateConstructor

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x106 : Ojs.t) -> t_of_js x106

  and t_0_to_js : t_0 -> Ojs.t = fun (x105 : t) -> t_to_js x105

  let (create : t -> value:Date.t or_string or_number -> Date.t) =
   fun (x110 : t) ~value:(x107 : Date.t or_string or_number) ->
    Date.t_of_js
      (Ojs.new_obj
         (t_to_js x110)
         [| or_number_to_js
              (fun (x108 : Date.t or_string) ->
                or_string_to_js Date.t_to_js x108)
              x107
         |])
end

module Function = struct
  include Function

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x114 : Ojs.t) -> t_of_js x114

  and t_0_to_js : t_0 -> Ojs.t = fun (x113 : t) -> t_to_js x113

  let (get_name : t -> string) =
   fun (x115 : t) -> Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x115) "name")
end

module Math = struct
  include Math

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x119 : Ojs.t) -> t_of_js x119

  and t_0_to_js : t_0 -> Ojs.t = fun (x118 : t) -> t_to_js x118

  let (clz32 : t -> x:float -> float) =
   fun (x121 : t) ~x:(x120 : float) ->
    Ojs.float_of_js (Ojs.call (t_to_js x121) "clz32" [| Ojs.float_to_js x120 |])

  let (imul : t -> x:float -> y:float -> float) =
   fun (x124 : t) ~x:(x122 : float) ~y:(x123 : float) ->
    Ojs.float_of_js
      (Ojs.call
         (t_to_js x124)
         "imul"
         [| Ojs.float_to_js x122; Ojs.float_to_js x123 |])

  let (sign : t -> x:float -> float) =
   fun (x126 : t) ~x:(x125 : float) ->
    Ojs.float_of_js (Ojs.call (t_to_js x126) "sign" [| Ojs.float_to_js x125 |])

  let (log10 : t -> x:float -> float) =
   fun (x128 : t) ~x:(x127 : float) ->
    Ojs.float_of_js (Ojs.call (t_to_js x128) "log10" [| Ojs.float_to_js x127 |])

  let (log2 : t -> x:float -> float) =
   fun (x130 : t) ~x:(x129 : float) ->
    Ojs.float_of_js (Ojs.call (t_to_js x130) "log2" [| Ojs.float_to_js x129 |])

  let (log1p : t -> x:float -> float) =
   fun (x132 : t) ~x:(x131 : float) ->
    Ojs.float_of_js (Ojs.call (t_to_js x132) "log1p" [| Ojs.float_to_js x131 |])

  let (expm1 : t -> x:float -> float) =
   fun (x134 : t) ~x:(x133 : float) ->
    Ojs.float_of_js (Ojs.call (t_to_js x134) "expm1" [| Ojs.float_to_js x133 |])

  let (cosh : t -> x:float -> float) =
   fun (x136 : t) ~x:(x135 : float) ->
    Ojs.float_of_js (Ojs.call (t_to_js x136) "cosh" [| Ojs.float_to_js x135 |])

  let (sinh : t -> x:float -> float) =
   fun (x138 : t) ~x:(x137 : float) ->
    Ojs.float_of_js (Ojs.call (t_to_js x138) "sinh" [| Ojs.float_to_js x137 |])

  let (tanh : t -> x:float -> float) =
   fun (x140 : t) ~x:(x139 : float) ->
    Ojs.float_of_js (Ojs.call (t_to_js x140) "tanh" [| Ojs.float_to_js x139 |])

  let (acosh : t -> x:float -> float) =
   fun (x142 : t) ~x:(x141 : float) ->
    Ojs.float_of_js (Ojs.call (t_to_js x142) "acosh" [| Ojs.float_to_js x141 |])

  let (asinh : t -> x:float -> float) =
   fun (x144 : t) ~x:(x143 : float) ->
    Ojs.float_of_js (Ojs.call (t_to_js x144) "asinh" [| Ojs.float_to_js x143 |])

  let (atanh : t -> x:float -> float) =
   fun (x146 : t) ~x:(x145 : float) ->
    Ojs.float_of_js (Ojs.call (t_to_js x146) "atanh" [| Ojs.float_to_js x145 |])

  let (hypot : t -> values:float list -> float) =
   fun (x150 : t) ~values:(x147 : float list) ->
    Ojs.float_of_js
      (let x151 = t_to_js x150 in
       Ojs.call
         (Ojs.get_prop_ascii x151 "hypot")
         "apply"
         [| x151
          ; (let x148 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             List.iter
               (fun (x149 : float) ->
                 ignore (Ojs.call x148 "push" [| Ojs.float_to_js x149 |]))
               x147;
             x148)
         |])

  let (trunc : t -> x:float -> float) =
   fun (x153 : t) ~x:(x152 : float) ->
    Ojs.float_of_js (Ojs.call (t_to_js x153) "trunc" [| Ojs.float_to_js x152 |])

  let (fround : t -> x:float -> float) =
   fun (x155 : t) ~x:(x154 : float) ->
    Ojs.float_of_js
      (Ojs.call (t_to_js x155) "fround" [| Ojs.float_to_js x154 |])

  let (cbrt : t -> x:float -> float) =
   fun (x157 : t) ~x:(x156 : float) ->
    Ojs.float_of_js (Ojs.call (t_to_js x157) "cbrt" [| Ojs.float_to_js x156 |])
end

module NumberConstructor = struct
  include NumberConstructor

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x161 : Ojs.t) -> t_of_js x161

  and t_0_to_js : t_0 -> Ojs.t = fun (x160 : t) -> t_to_js x160

  let (get_EPSILON : t -> float) =
   fun (x162 : t) ->
    Ojs.float_of_js (Ojs.get_prop_ascii (t_to_js x162) "EPSILON")

  let (isFinite : t -> number:unknown -> bool) =
   fun (x164 : t) ~number:(x163 : unknown) ->
    Ojs.bool_of_js (Ojs.call (t_to_js x164) "isFinite" [| unknown_to_js x163 |])

  let (isInteger : t -> number:unknown -> bool) =
   fun (x166 : t) ~number:(x165 : unknown) ->
    Ojs.bool_of_js
      (Ojs.call (t_to_js x166) "isInteger" [| unknown_to_js x165 |])

  let (isNaN : t -> number:unknown -> bool) =
   fun (x168 : t) ~number:(x167 : unknown) ->
    Ojs.bool_of_js (Ojs.call (t_to_js x168) "isNaN" [| unknown_to_js x167 |])

  let (isSafeInteger : t -> number:unknown -> bool) =
   fun (x170 : t) ~number:(x169 : unknown) ->
    Ojs.bool_of_js
      (Ojs.call (t_to_js x170) "isSafeInteger" [| unknown_to_js x169 |])

  let (get_MAX_SAFE_INTEGER : t -> float) =
   fun (x171 : t) ->
    Ojs.float_of_js (Ojs.get_prop_ascii (t_to_js x171) "MAX_SAFE_INTEGER")

  let (get_MIN_SAFE_INTEGER : t -> float) =
   fun (x172 : t) ->
    Ojs.float_of_js (Ojs.get_prop_ascii (t_to_js x172) "MIN_SAFE_INTEGER")

  let (parseFloat : t -> string:string -> float) =
   fun (x174 : t) ~string:(x173 : string) ->
    Ojs.float_of_js
      (Ojs.call (t_to_js x174) "parseFloat" [| Ojs.string_to_js x173 |])

  let (parseInt : t -> string:string -> ?radix:float -> unit -> float) =
   fun (x179 : t) ~string:(x175 : string) ?radix:(x176 : float option) () ->
    Ojs.float_of_js
      (let x180 = t_to_js x179 in
       Ojs.call
         (Ojs.get_prop_ascii x180 "parseInt")
         "apply"
         [| x180
          ; (let x177 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore (Ojs.call x177 "push" [| Ojs.string_to_js x175 |]);
             (match x176 with
             | Some x178 ->
               ignore (Ojs.call x177 "push" [| Ojs.float_to_js x178 |])
             | None ->
               ());
             x177)
         |])
end

module ObjectConstructor = struct
  include ObjectConstructor

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x184 : Ojs.t) -> t_of_js x184

  and t_0_to_js : t_0 -> Ojs.t = fun (x183 : t) -> t_to_js x183

  let (assign : t -> target:'T -> source:'U -> ('T, 'U) intersection2) =
   fun (x187 : t) ~target:(x185 : 'T) ~source:(x186 : 'U) ->
    intersection2_of_js
      Obj.magic
      Obj.magic
      (Ojs.call (t_to_js x187) "assign" [| Obj.magic x185; Obj.magic x186 |])

  let (assign' :
        t -> target:'T -> source1:'U -> source2:'V -> ('T, 'U, 'V) intersection3)
    =
   fun (x193 : t) ~target:(x190 : 'T) ~source1:(x191 : 'U) ~source2:(x192 : 'V) ->
    intersection3_of_js
      Obj.magic
      Obj.magic
      Obj.magic
      (Ojs.call
         (t_to_js x193)
         "assign"
         [| Obj.magic x190; Obj.magic x191; Obj.magic x192 |])

  let (assign'' :
        t
        -> target:'T
        -> source1:'U
        -> source2:'V
        -> source3:'W
        -> ('T, 'U, 'V, 'W) intersection4)
    =
   fun (x201 : t)
       ~target:(x197 : 'T)
       ~source1:(x198 : 'U)
       ~source2:(x199 : 'V)
       ~source3:(x200 : 'W) ->
    intersection4_of_js
      Obj.magic
      Obj.magic
      Obj.magic
      Obj.magic
      (Ojs.call
         (t_to_js x201)
         "assign"
         [| Obj.magic x197; Obj.magic x198; Obj.magic x199; Obj.magic x200 |])

  let (assign''' : t -> target:untyped_object -> sources:any list -> any) =
   fun (x210 : t) ~target:(x206 : untyped_object) ~sources:(x207 : any list) ->
    any_of_js
      (let x211 = t_to_js x210 in
       Ojs.call
         (Ojs.get_prop_ascii x211 "assign")
         "apply"
         [| x211
          ; (let x208 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore (Ojs.call x208 "push" [| untyped_object_to_js x206 |]);
             List.iter
               (fun (x209 : any) ->
                 ignore (Ojs.call x208 "push" [| any_to_js x209 |]))
               x207;
             x208)
         |])

  let (getOwnPropertySymbols : t -> o:any -> symbol list) =
   fun (x213 : t) ~o:(x212 : any) ->
    Ojs.list_of_js
      symbol_of_js
      (Ojs.call (t_to_js x213) "getOwnPropertySymbols" [| any_to_js x212 |])

  let (keys : t -> o:any -> string list) =
   fun (x216 : t) ~o:(x215 : any) ->
    Ojs.list_of_js
      Ojs.string_of_js
      (Ojs.call (t_to_js x216) "keys" [| any_to_js x215 |])

  let (is : t -> value1:any -> value2:any -> bool) =
   fun (x220 : t) ~value1:(x218 : any) ~value2:(x219 : any) ->
    Ojs.bool_of_js
      (Ojs.call (t_to_js x220) "is" [| any_to_js x218; any_to_js x219 |])

  let (setPrototypeOf : t -> o:any -> proto:untyped_object or_null -> any) =
   fun (x224 : t) ~o:(x221 : any) ~proto:(x222 : untyped_object or_null) ->
    any_of_js
      (Ojs.call
         (t_to_js x224)
         "setPrototypeOf"
         [| any_to_js x221; or_null_to_js untyped_object_to_js x222 |])
end

module ReadonlyArray = struct
  include ReadonlyArray

  type 'T t_1 = 'T t

  let rec t_1_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t_1 =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x231 : Ojs.t) ->
     t_of_js __T_of_js x231

  and t_1_to_js : 'T. ('T -> Ojs.t) -> 'T t_1 -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x229 : __T t) ->
     t_to_js __T_to_js x229

  let (find :
        'T t
        -> predicate:
             (this:unit -> value:'T -> index:float -> obj:'T list -> bool)
        -> ?thisArg:any
        -> unit
        -> 'S or_undefined)
    =
   fun (x242 : 'T t)
       ~predicate:
         (x233 : this:unit -> value:'T -> index:float -> obj:'T list -> bool)
       ?thisArg:(x234 : any option)
       () ->
    or_undefined_of_js
      Obj.magic
      (let x244 = t_to_js Obj.magic x242 in
       Ojs.call
         (Ojs.get_prop_ascii x244 "find")
         "apply"
         [| x244
          ; (let x235 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call
                  x235
                  "push"
                  [| Ojs.fun_to_js
                       4
                       (fun
                         (x237 : Ojs.t)
                         (x238 : Ojs.t)
                         (x239 : Ojs.t)
                         (x240 : Ojs.t)
                       ->
                         Ojs.bool_to_js
                           (x233
                              ~this:(Ojs.unit_of_js x237)
                              ~value:(Obj.magic x238)
                              ~index:(Ojs.float_of_js x239)
                              ~obj:(Ojs.list_of_js Obj.magic x240)))
                  |]);
             (match x234 with
             | Some x236 ->
               ignore (Ojs.call x235 "push" [| any_to_js x236 |])
             | None ->
               ());
             x235)
         |])

  let (find' :
        'T t
        -> predicate:(value:'T -> index:float -> obj:'T list -> unknown)
        -> ?thisArg:any
        -> unit
        -> 'T or_undefined)
    =
   fun (x254 : 'T t)
       ~predicate:(x246 : value:'T -> index:float -> obj:'T list -> unknown)
       ?thisArg:(x247 : any option)
       () ->
    or_undefined_of_js
      Obj.magic
      (let x256 = t_to_js Obj.magic x254 in
       Ojs.call
         (Ojs.get_prop_ascii x256 "find")
         "apply"
         [| x256
          ; (let x248 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call
                  x248
                  "push"
                  [| Ojs.fun_to_js
                       3
                       (fun (x250 : Ojs.t) (x251 : Ojs.t) (x252 : Ojs.t) ->
                         unknown_to_js
                           (x246
                              ~value:(Obj.magic x250)
                              ~index:(Ojs.float_of_js x251)
                              ~obj:(Ojs.list_of_js Obj.magic x252)))
                  |]);
             (match x247 with
             | Some x249 ->
               ignore (Ojs.call x248 "push" [| any_to_js x249 |])
             | None ->
               ());
             x248)
         |])

  let (findIndex :
        'T t
        -> predicate:(value:'T -> index:float -> obj:'T list -> unknown)
        -> ?thisArg:any
        -> unit
        -> float)
    =
   fun (x266 : 'T t)
       ~predicate:(x258 : value:'T -> index:float -> obj:'T list -> unknown)
       ?thisArg:(x259 : any option)
       () ->
    Ojs.float_of_js
      (let x268 = t_to_js Obj.magic x266 in
       Ojs.call
         (Ojs.get_prop_ascii x268 "findIndex")
         "apply"
         [| x268
          ; (let x260 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call
                  x260
                  "push"
                  [| Ojs.fun_to_js
                       3
                       (fun (x262 : Ojs.t) (x263 : Ojs.t) (x264 : Ojs.t) ->
                         unknown_to_js
                           (x258
                              ~value:(Obj.magic x262)
                              ~index:(Ojs.float_of_js x263)
                              ~obj:(Ojs.list_of_js Obj.magic x264)))
                  |]);
             (match x259 with
             | Some x261 ->
               ignore (Ojs.call x260 "push" [| any_to_js x261 |])
             | None ->
               ());
             x260)
         |])

  let (to_ml : 'T t -> 'T list) =
   fun (x269 : 'T t) -> Ojs.list_of_js Obj.magic (t_to_js Obj.magic x269)

  let (of_ml : 'T list -> 'T t) =
   fun (x272 : 'T list) -> t_of_js Obj.magic (Ojs.list_to_js Obj.magic x272)
end

module RegExp = struct
  include RegExp

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x278 : Ojs.t) -> t_of_js x278

  and t_0_to_js : t_0 -> Ojs.t = fun (x277 : t) -> t_to_js x277

  let (get_flags : t -> string) =
   fun (x279 : t) ->
    Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x279) "flags")

  let (get_sticky : t -> bool) =
   fun (x280 : t) -> Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x280) "sticky")

  let (get_unicode : t -> bool) =
   fun (x281 : t) ->
    Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x281) "unicode")
end

module RegExpConstructor = struct
  include RegExpConstructor

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x285 : Ojs.t) -> t_of_js x285

  and t_0_to_js : t_0 -> Ojs.t = fun (x284 : t) -> t_to_js x284

  let (create :
        t -> pattern:_RegExp or_string -> ?flags:string -> unit -> _RegExp)
    =
   fun (x291 : t)
       ~pattern:(x286 : _RegExp or_string)
       ?flags:(x287 : string option)
       () ->
    _RegExp_of_js
      (Ojs.new_obj_arr
         (t_to_js x291)
         (let x288 = Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||] in
          ignore (Ojs.call x288 "push" [| or_string_to_js _RegExp_to_js x286 |]);
          (match x287 with
          | Some x289 ->
            ignore (Ojs.call x288 "push" [| Ojs.string_to_js x289 |])
          | None ->
            ());
          x288))

  let (apply :
        t -> pattern:_RegExp or_string -> ?flags:string -> unit -> _RegExp)
    =
   fun (x297 : t)
       ~pattern:(x292 : _RegExp or_string)
       ?flags:(x293 : string option)
       () ->
    _RegExp_of_js
      (Ojs.call
         (t_to_js x297)
         "apply"
         [| Ojs.null
          ; (let x294 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call x294 "push" [| or_string_to_js _RegExp_to_js x292 |]);
             (match x293 with
             | Some x295 ->
               ignore (Ojs.call x294 "push" [| Ojs.string_to_js x295 |])
             | None ->
               ());
             x294)
         |])
end

module String = struct
  include String

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x301 : Ojs.t) -> t_of_js x301

  and t_0_to_js : t_0 -> Ojs.t = fun (x300 : t) -> t_to_js x300

  let (codePointAt : t -> pos:float -> float or_undefined) =
   fun (x303 : t) ~pos:(x302 : float) ->
    or_undefined_of_js
      Ojs.float_of_js
      (Ojs.call (t_to_js x303) "codePointAt" [| Ojs.float_to_js x302 |])

  let (includes : t -> searchString:string -> ?position:float -> unit -> bool) =
   fun (x309 : t)
       ~searchString:(x305 : string)
       ?position:(x306 : float option)
       () ->
    Ojs.bool_of_js
      (let x310 = t_to_js x309 in
       Ojs.call
         (Ojs.get_prop_ascii x310 "includes")
         "apply"
         [| x310
          ; (let x307 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore (Ojs.call x307 "push" [| Ojs.string_to_js x305 |]);
             (match x306 with
             | Some x308 ->
               ignore (Ojs.call x307 "push" [| Ojs.float_to_js x308 |])
             | None ->
               ());
             x307)
         |])

  let (endsWith :
        t -> searchString:string -> ?endPosition:float -> unit -> bool)
    =
   fun (x315 : t)
       ~searchString:(x311 : string)
       ?endPosition:(x312 : float option)
       () ->
    Ojs.bool_of_js
      (let x316 = t_to_js x315 in
       Ojs.call
         (Ojs.get_prop_ascii x316 "endsWith")
         "apply"
         [| x316
          ; (let x313 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore (Ojs.call x313 "push" [| Ojs.string_to_js x311 |]);
             (match x312 with
             | Some x314 ->
               ignore (Ojs.call x313 "push" [| Ojs.float_to_js x314 |])
             | None ->
               ());
             x313)
         |])

  let (normalize :
        t -> form:[ `L_s0_NFC | `L_s1_NFD | `L_s2_NFKC | `L_s3_NFKD ] -> string)
    =
   fun (x318 : t)
       ~form:(x317 : [ `L_s0_NFC | `L_s1_NFD | `L_s2_NFKC | `L_s3_NFKD ]) ->
    Ojs.string_of_js
      (Ojs.call
         (t_to_js x318)
         "normalize"
         [| (match x317 with
            | `L_s0_NFC ->
              Ojs.string_to_js "LS0NFC"
            | `L_s1_NFD ->
              Ojs.string_to_js "LS1NFD"
            | `L_s2_NFKC ->
              Ojs.string_to_js "LS2NFKC"
            | `L_s3_NFKD ->
              Ojs.string_to_js "LS3NFKD")
         |])

  let (normalize' : t -> ?form:string -> unit -> string) =
   fun (x322 : t) ?form:(x319 : string option) () ->
    Ojs.string_of_js
      (let x323 = t_to_js x322 in
       Ojs.call
         (Ojs.get_prop_ascii x323 "normalize")
         "apply"
         [| x323
          ; (let x320 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             (match x319 with
             | Some x321 ->
               ignore (Ojs.call x320 "push" [| Ojs.string_to_js x321 |])
             | None ->
               ());
             x320)
         |])

  let (repeat : t -> count:float -> string) =
   fun (x325 : t) ~count:(x324 : float) ->
    Ojs.string_of_js
      (Ojs.call (t_to_js x325) "repeat" [| Ojs.float_to_js x324 |])

  let (startsWith : t -> searchString:string -> ?position:float -> unit -> bool)
    =
   fun (x330 : t)
       ~searchString:(x326 : string)
       ?position:(x327 : float option)
       () ->
    Ojs.bool_of_js
      (let x331 = t_to_js x330 in
       Ojs.call
         (Ojs.get_prop_ascii x331 "startsWith")
         "apply"
         [| x331
          ; (let x328 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore (Ojs.call x328 "push" [| Ojs.string_to_js x326 |]);
             (match x327 with
             | Some x329 ->
               ignore (Ojs.call x328 "push" [| Ojs.float_to_js x329 |])
             | None ->
               ());
             x328)
         |])

  let (anchor : t -> name:string -> string) =
   fun (x333 : t) ~name:(x332 : string) ->
    Ojs.string_of_js
      (Ojs.call (t_to_js x333) "anchor" [| Ojs.string_to_js x332 |])

  let (big : t -> string) =
   fun (x334 : t) -> Ojs.string_of_js (Ojs.call (t_to_js x334) "big" [||])

  let (blink : t -> string) =
   fun (x335 : t) -> Ojs.string_of_js (Ojs.call (t_to_js x335) "blink" [||])

  let (bold : t -> string) =
   fun (x336 : t) -> Ojs.string_of_js (Ojs.call (t_to_js x336) "bold" [||])

  let (fixed : t -> string) =
   fun (x337 : t) -> Ojs.string_of_js (Ojs.call (t_to_js x337) "fixed" [||])

  let (fontcolor : t -> color:string -> string) =
   fun (x339 : t) ~color:(x338 : string) ->
    Ojs.string_of_js
      (Ojs.call (t_to_js x339) "fontcolor" [| Ojs.string_to_js x338 |])

  let (fontsize : t -> size:float -> string) =
   fun (x341 : t) ~size:(x340 : float) ->
    Ojs.string_of_js
      (Ojs.call (t_to_js x341) "fontsize" [| Ojs.float_to_js x340 |])

  let (fontsize' : t -> size:string -> string) =
   fun (x343 : t) ~size:(x342 : string) ->
    Ojs.string_of_js
      (Ojs.call (t_to_js x343) "fontsize" [| Ojs.string_to_js x342 |])

  let (italics : t -> string) =
   fun (x344 : t) -> Ojs.string_of_js (Ojs.call (t_to_js x344) "italics" [||])

  let (link : t -> url:string -> string) =
   fun (x346 : t) ~url:(x345 : string) ->
    Ojs.string_of_js
      (Ojs.call (t_to_js x346) "link" [| Ojs.string_to_js x345 |])

  let (small : t -> string) =
   fun (x347 : t) -> Ojs.string_of_js (Ojs.call (t_to_js x347) "small" [||])

  let (strike : t -> string) =
   fun (x348 : t) -> Ojs.string_of_js (Ojs.call (t_to_js x348) "strike" [||])

  let (sub : t -> string) =
   fun (x349 : t) -> Ojs.string_of_js (Ojs.call (t_to_js x349) "sub" [||])

  let (sup : t -> string) =
   fun (x350 : t) -> Ojs.string_of_js (Ojs.call (t_to_js x350) "sup" [||])

  let (to_ml : t -> string) = fun (x351 : t) -> Ojs.string_of_js (t_to_js x351)

  let (of_ml : string -> t) =
   fun (x352 : string) -> t_of_js (Ojs.string_to_js x352)
end

module StringConstructor = struct
  include StringConstructor

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x356 : Ojs.t) -> t_of_js x356

  and t_0_to_js : t_0 -> Ojs.t = fun (x355 : t) -> t_to_js x355

  let (fromCodePoint : t -> codePoints:float list -> string) =
   fun (x360 : t) ~codePoints:(x357 : float list) ->
    Ojs.string_of_js
      (let x361 = t_to_js x360 in
       Ojs.call
         (Ojs.get_prop_ascii x361 "fromCodePoint")
         "apply"
         [| x361
          ; (let x358 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             List.iter
               (fun (x359 : float) ->
                 ignore (Ojs.call x358 "push" [| Ojs.float_to_js x359 |]))
               x357;
             x358)
         |])

  let (raw :
        t -> template:TemplateStringsArray.t -> substitutions:any list -> string)
    =
   fun (x366 : t)
       ~template:(x362 : TemplateStringsArray.t)
       ~substitutions:(x363 : any list) ->
    Ojs.string_of_js
      (let x367 = t_to_js x366 in
       Ojs.call
         (Ojs.get_prop_ascii x367 "raw")
         "apply"
         [| x367
          ; (let x364 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call x364 "push" [| TemplateStringsArray.t_to_js x362 |]);
             List.iter
               (fun (x365 : any) ->
                 ignore (Ojs.call x364 "push" [| any_to_js x365 |]))
               x363;
             x364)
         |])
end
