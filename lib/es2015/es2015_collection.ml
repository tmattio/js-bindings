[@@@ocaml.warning "-7-32-39"]

[@@@ocaml.warning "-7-11-32-33-39"]

open Es5

module Internal = struct
  module AnonymousInterfaces = struct end

  module Types = struct
    open AnonymousInterfaces

    type ('K, 'V) _Map = [ `Map of 'K * 'V ] intf

    and _MapConstructor = [ `MapConstructor ] intf

    and ('K, 'V) _ReadonlyMap = [ `ReadonlyMap of 'K * 'V ] intf

    and 'T _ReadonlySet = [ `ReadonlySet of 'T ] intf

    and 'T _Set = [ `Set of 'T ] intf

    and _SetConstructor = [ `SetConstructor ] intf

    and ('K, 'V) _WeakMap = [ `WeakMap of 'K * 'V ] intf

    and _WeakMapConstructor = [ `WeakMapConstructor ] intf

    and 'T _WeakSet = [ `WeakSet of 'T ] intf

    and _WeakSetConstructor = [ `WeakSetConstructor ] intf

    let rec _Map_of_js :
              'K 'V. (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) _Map
      =
     fun _K _V -> Obj.magic

    and _Map_to_js :
          'K 'V. ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) _Map -> Ojs.t
      =
     fun _K _V -> Obj.magic

    and _MapConstructor_of_js : Ojs.t -> _MapConstructor = Obj.magic

    and _MapConstructor_to_js : _MapConstructor -> Ojs.t = Obj.magic

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

module Map = struct
  type ('K, 'V) t = ('K, 'V) _Map

  let rec t_of_js : 'K 'V. (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t
    =
    fun (type __K __V)
        (__K_of_js : Ojs.t -> __K)
        (__V_of_js : Ojs.t -> __V)
        (x4 : Ojs.t) ->
     _Map_of_js __K_of_js __V_of_js x4

  and t_to_js : 'K 'V. ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t =
    fun (type __K __V)
        (__K_to_js : __K -> Ojs.t)
        (__V_to_js : __V -> Ojs.t)
        (x1 : (__K, __V) _Map) ->
     _Map_to_js __K_to_js __V_to_js x1

  type ('K, 'V) t_2 = ('K, 'V) t

  let rec t_2_of_js :
            'K 'V. (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t_2
    =
    fun (type __K __V)
        (__K_of_js : Ojs.t -> __K)
        (__V_of_js : Ojs.t -> __V)
        (x10 : Ojs.t) ->
     t_of_js __K_of_js __V_of_js x10

  and t_2_to_js : 'K 'V. ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t_2 -> Ojs.t
    =
    fun (type __K __V)
        (__K_to_js : __K -> Ojs.t)
        (__V_to_js : __V -> Ojs.t)
        (x7 : (__K, __V) t) ->
     t_to_js __K_to_js __V_to_js x7

  let (clear : ('K, 'V) t -> unit) =
   fun (x13 : ('K, 'V) t) ->
    ignore (Ojs.call (t_to_js Obj.magic Obj.magic x13) "clear" [||])

  let (delete : ('K, 'V) t -> key:'K -> bool) =
   fun (x17 : ('K, 'V) t) ~key:(x16 : 'K) ->
    Ojs.bool_of_js
      (Ojs.call (t_to_js Obj.magic Obj.magic x17) "delete" [| Obj.magic x16 |])

  let (forEach :
        ('K, 'V) t
        -> callbackfn:(value:'V -> key:'K -> map:('K, 'V) t -> unit)
        -> ?thisArg:any
        -> unit
        -> unit)
    =
   fun (x29 : ('K, 'V) t)
       ~callbackfn:(x20 : value:'V -> key:'K -> map:('K, 'V) t -> unit)
       ?thisArg:(x21 : any option)
       () ->
    ignore
      (let x32 = t_to_js Obj.magic Obj.magic x29 in
       Ojs.call
         (Ojs.get_prop_ascii x32 "forEach")
         "apply"
         [| x32
          ; (let x22 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call
                  x22
                  "push"
                  [| Ojs.fun_to_js
                       3
                       (fun (x24 : Ojs.t) (x25 : Ojs.t) (x26 : Ojs.t) ->
                         x20
                           ~value:(Obj.magic x24)
                           ~key:(Obj.magic x25)
                           ~map:(t_of_js Obj.magic Obj.magic x26))
                  |]);
             (match x21 with
             | Some x23 ->
               ignore (Ojs.call x22 "push" [| any_to_js x23 |])
             | None ->
               ());
             x22)
         |])

  let (get_ : ('K, 'V) t -> key:'K -> 'V or_undefined) =
   fun (x34 : ('K, 'V) t) ~key:(x33 : 'K) ->
    or_undefined_of_js
      Obj.magic
      (Ojs.call (t_to_js Obj.magic Obj.magic x34) "get" [| Obj.magic x33 |])

  let (has : ('K, 'V) t -> key:'K -> bool) =
   fun (x39 : ('K, 'V) t) ~key:(x38 : 'K) ->
    Ojs.bool_of_js
      (Ojs.call (t_to_js Obj.magic Obj.magic x39) "has" [| Obj.magic x38 |])

  let (set_ : ('K, 'V) t -> key:'K -> value:'V -> ('K, 'V) t) =
   fun (x44 : ('K, 'V) t) ~key:(x42 : 'K) ~value:(x43 : 'V) ->
    t_of_js
      Obj.magic
      Obj.magic
      (Ojs.call
         (t_to_js Obj.magic Obj.magic x44)
         "set"
         [| Obj.magic x42; Obj.magic x43 |])

  let (get_size : ('K, 'V) t -> float) =
   fun (x49 : ('K, 'V) t) ->
    Ojs.float_of_js
      (Ojs.get_prop_ascii (t_to_js Obj.magic Obj.magic x49) "size")
end

module MapConstructor = struct
  type t = _MapConstructor

  let rec t_of_js : Ojs.t -> t = fun (x53 : Ojs.t) -> _MapConstructor_of_js x53

  and t_to_js : t -> Ojs.t =
   fun (x52 : _MapConstructor) -> _MapConstructor_to_js x52

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x55 : Ojs.t) -> t_of_js x55

  and t_0_to_js : t_0 -> Ojs.t = fun (x54 : t) -> t_to_js x54

  let (create : t -> (any, any) _Map) =
   fun (x56 : t) ->
    _Map_of_js any_of_js any_of_js (Ojs.new_obj (t_to_js x56) [||])

  let (create' : t -> ?entries:('K * 'V) list or_null -> unit -> ('K, 'V) _Map) =
   fun (x67 : t) ?entries:(x59 : ('K * 'V) list or_null option) () ->
    _Map_of_js
      Obj.magic
      Obj.magic
      (Ojs.new_obj_arr
         (t_to_js x67)
         (let x60 = Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||] in
          (match x59 with
          | Some x61 ->
            ignore
              (Ojs.call
                 x60
                 "push"
                 [| or_null_to_js
                      (fun (x62 : ('K * 'V) list) ->
                        Ojs.list_to_js
                          (fun (x63 : 'K * 'V) ->
                            let x64, x65 = x63 in
                            let x66 = Ojs.array_make 2 in
                            Ojs.array_set x66 0 (Obj.magic x64);
                            Ojs.array_set x66 1 (Obj.magic x65);
                            x66)
                          x62)
                      x61
                 |])
          | None ->
            ());
          x60))

  let (get_prototype : t -> (any, any) _Map) =
   fun (x70 : t) ->
    _Map_of_js
      any_of_js
      any_of_js
      (Ojs.get_prop_ascii (t_to_js x70) "prototype")
end

let (map : _MapConstructor) =
  _MapConstructor_of_js (Ojs.get_prop_ascii Ojs.global "Map")

module ReadonlyMap = struct
  type ('K, 'V) t = ('K, 'V) _ReadonlyMap

  let rec t_of_js : 'K 'V. (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t
    =
    fun (type __K __V)
        (__K_of_js : Ojs.t -> __K)
        (__V_of_js : Ojs.t -> __V)
        (x76 : Ojs.t) ->
     _ReadonlyMap_of_js __K_of_js __V_of_js x76

  and t_to_js : 'K 'V. ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t =
    fun (type __K __V)
        (__K_to_js : __K -> Ojs.t)
        (__V_to_js : __V -> Ojs.t)
        (x73 : (__K, __V) _ReadonlyMap) ->
     _ReadonlyMap_to_js __K_to_js __V_to_js x73

  type ('K, 'V) t_2 = ('K, 'V) t

  let rec t_2_of_js :
            'K 'V. (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t_2
    =
    fun (type __K __V)
        (__K_of_js : Ojs.t -> __K)
        (__V_of_js : Ojs.t -> __V)
        (x82 : Ojs.t) ->
     t_of_js __K_of_js __V_of_js x82

  and t_2_to_js : 'K 'V. ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t_2 -> Ojs.t
    =
    fun (type __K __V)
        (__K_to_js : __K -> Ojs.t)
        (__V_to_js : __V -> Ojs.t)
        (x79 : (__K, __V) t) ->
     t_to_js __K_to_js __V_to_js x79

  let (forEach :
        ('K, 'V) t
        -> callbackfn:(value:'V -> key:'K -> map:('K, 'V) t -> unit)
        -> ?thisArg:any
        -> unit
        -> unit)
    =
   fun (x94 : ('K, 'V) t)
       ~callbackfn:(x85 : value:'V -> key:'K -> map:('K, 'V) t -> unit)
       ?thisArg:(x86 : any option)
       () ->
    ignore
      (let x97 = t_to_js Obj.magic Obj.magic x94 in
       Ojs.call
         (Ojs.get_prop_ascii x97 "forEach")
         "apply"
         [| x97
          ; (let x87 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call
                  x87
                  "push"
                  [| Ojs.fun_to_js
                       3
                       (fun (x89 : Ojs.t) (x90 : Ojs.t) (x91 : Ojs.t) ->
                         x85
                           ~value:(Obj.magic x89)
                           ~key:(Obj.magic x90)
                           ~map:(t_of_js Obj.magic Obj.magic x91))
                  |]);
             (match x86 with
             | Some x88 ->
               ignore (Ojs.call x87 "push" [| any_to_js x88 |])
             | None ->
               ());
             x87)
         |])

  let (get_ : ('K, 'V) t -> key:'K -> 'V or_undefined) =
   fun (x99 : ('K, 'V) t) ~key:(x98 : 'K) ->
    or_undefined_of_js
      Obj.magic
      (Ojs.call (t_to_js Obj.magic Obj.magic x99) "get" [| Obj.magic x98 |])

  let (has : ('K, 'V) t -> key:'K -> bool) =
   fun (x104 : ('K, 'V) t) ~key:(x103 : 'K) ->
    Ojs.bool_of_js
      (Ojs.call (t_to_js Obj.magic Obj.magic x104) "has" [| Obj.magic x103 |])

  let (get_size : ('K, 'V) t -> float) =
   fun (x107 : ('K, 'V) t) ->
    Ojs.float_of_js
      (Ojs.get_prop_ascii (t_to_js Obj.magic Obj.magic x107) "size")
end

module WeakMap = struct
  type ('K, 'V) t = ('K, 'V) _WeakMap

  let rec t_of_js : 'K 'V. (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t
    =
    fun (type __K __V)
        (__K_of_js : Ojs.t -> __K)
        (__V_of_js : Ojs.t -> __V)
        (x113 : Ojs.t) ->
     _WeakMap_of_js __K_of_js __V_of_js x113

  and t_to_js : 'K 'V. ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t =
    fun (type __K __V)
        (__K_to_js : __K -> Ojs.t)
        (__V_to_js : __V -> Ojs.t)
        (x110 : (__K, __V) _WeakMap) ->
     _WeakMap_to_js __K_to_js __V_to_js x110

  type ('K, 'V) t_2 = ('K, 'V) t

  let rec t_2_of_js :
            'K 'V. (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t_2
    =
    fun (type __K __V)
        (__K_of_js : Ojs.t -> __K)
        (__V_of_js : Ojs.t -> __V)
        (x119 : Ojs.t) ->
     t_of_js __K_of_js __V_of_js x119

  and t_2_to_js : 'K 'V. ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t_2 -> Ojs.t
    =
    fun (type __K __V)
        (__K_to_js : __K -> Ojs.t)
        (__V_to_js : __V -> Ojs.t)
        (x116 : (__K, __V) t) ->
     t_to_js __K_to_js __V_to_js x116

  let (delete : ('K, 'V) t -> key:'K -> bool) =
   fun (x123 : ('K, 'V) t) ~key:(x122 : 'K) ->
    Ojs.bool_of_js
      (Ojs.call
         (t_to_js Obj.magic Obj.magic x123)
         "delete"
         [| Obj.magic x122 |])

  let (get_ : ('K, 'V) t -> key:'K -> 'V or_undefined) =
   fun (x127 : ('K, 'V) t) ~key:(x126 : 'K) ->
    or_undefined_of_js
      Obj.magic
      (Ojs.call (t_to_js Obj.magic Obj.magic x127) "get" [| Obj.magic x126 |])

  let (has : ('K, 'V) t -> key:'K -> bool) =
   fun (x132 : ('K, 'V) t) ~key:(x131 : 'K) ->
    Ojs.bool_of_js
      (Ojs.call (t_to_js Obj.magic Obj.magic x132) "has" [| Obj.magic x131 |])

  let (set_ : ('K, 'V) t -> key:'K -> value:'V -> ('K, 'V) t) =
   fun (x137 : ('K, 'V) t) ~key:(x135 : 'K) ~value:(x136 : 'V) ->
    t_of_js
      Obj.magic
      Obj.magic
      (Ojs.call
         (t_to_js Obj.magic Obj.magic x137)
         "set"
         [| Obj.magic x135; Obj.magic x136 |])
end

module WeakMapConstructor = struct
  type t = _WeakMapConstructor

  let rec t_of_js : Ojs.t -> t =
   fun (x143 : Ojs.t) -> _WeakMapConstructor_of_js x143

  and t_to_js : t -> Ojs.t =
   fun (x142 : _WeakMapConstructor) -> _WeakMapConstructor_to_js x142

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x145 : Ojs.t) -> t_of_js x145

  and t_0_to_js : t_0 -> Ojs.t = fun (x144 : t) -> t_to_js x144

  let (create :
        t -> ?entries:('K * 'V) list or_null -> unit -> ('K, 'V) _WeakMap)
    =
   fun (x154 : t) ?entries:(x146 : ('K * 'V) list or_null option) () ->
    _WeakMap_of_js
      Obj.magic
      Obj.magic
      (Ojs.new_obj_arr
         (t_to_js x154)
         (let x147 = Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||] in
          (match x146 with
          | Some x148 ->
            ignore
              (Ojs.call
                 x147
                 "push"
                 [| or_null_to_js
                      (fun (x149 : ('K * 'V) list) ->
                        Ojs.list_to_js
                          (fun (x150 : 'K * 'V) ->
                            let x151, x152 = x150 in
                            let x153 = Ojs.array_make 2 in
                            Ojs.array_set x153 0 (Obj.magic x151);
                            Ojs.array_set x153 1 (Obj.magic x152);
                            x153)
                          x149)
                      x148
                 |])
          | None ->
            ());
          x147))

  let (get_prototype : t -> (untyped_object, any) _WeakMap) =
   fun (x157 : t) ->
    _WeakMap_of_js
      untyped_object_of_js
      any_of_js
      (Ojs.get_prop_ascii (t_to_js x157) "prototype")
end

let (weakMap : _WeakMapConstructor) =
  _WeakMapConstructor_of_js (Ojs.get_prop_ascii Ojs.global "WeakMap")

module Set = struct
  type 'T t = 'T _Set

  let rec t_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x162 : Ojs.t) ->
     _Set_of_js __T_of_js x162

  and t_to_js : 'T. ('T -> Ojs.t) -> 'T t -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x160 : __T _Set) ->
     _Set_to_js __T_to_js x160

  type 'T t_1 = 'T t

  let rec t_1_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t_1 =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x166 : Ojs.t) ->
     t_of_js __T_of_js x166

  and t_1_to_js : 'T. ('T -> Ojs.t) -> 'T t_1 -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x164 : __T t) ->
     t_to_js __T_to_js x164

  let (add : 'T t -> value:'T -> 'T t) =
   fun (x169 : 'T t) ~value:(x168 : 'T) ->
    t_of_js
      Obj.magic
      (Ojs.call (t_to_js Obj.magic x169) "add" [| Obj.magic x168 |])

  let (clear : 'T t -> unit) =
   fun (x172 : 'T t) -> ignore (Ojs.call (t_to_js Obj.magic x172) "clear" [||])

  let (delete : 'T t -> value:'T -> bool) =
   fun (x175 : 'T t) ~value:(x174 : 'T) ->
    Ojs.bool_of_js
      (Ojs.call (t_to_js Obj.magic x175) "delete" [| Obj.magic x174 |])

  let (forEach :
        'T t
        -> callbackfn:(value:'T -> value2:'T -> set_:'T t -> unit)
        -> ?thisArg:any
        -> unit
        -> unit)
    =
   fun (x185 : 'T t)
       ~callbackfn:(x177 : value:'T -> value2:'T -> set_:'T t -> unit)
       ?thisArg:(x178 : any option)
       () ->
    ignore
      (let x187 = t_to_js Obj.magic x185 in
       Ojs.call
         (Ojs.get_prop_ascii x187 "forEach")
         "apply"
         [| x187
          ; (let x179 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call
                  x179
                  "push"
                  [| Ojs.fun_to_js
                       3
                       (fun (x181 : Ojs.t) (x182 : Ojs.t) (x183 : Ojs.t) ->
                         x177
                           ~value:(Obj.magic x181)
                           ~value2:(Obj.magic x182)
                           ~set_:(t_of_js Obj.magic x183))
                  |]);
             (match x178 with
             | Some x180 ->
               ignore (Ojs.call x179 "push" [| any_to_js x180 |])
             | None ->
               ());
             x179)
         |])

  let (has : 'T t -> value:'T -> bool) =
   fun (x189 : 'T t) ~value:(x188 : 'T) ->
    Ojs.bool_of_js
      (Ojs.call (t_to_js Obj.magic x189) "has" [| Obj.magic x188 |])

  let (get_size : 'T t -> float) =
   fun (x191 : 'T t) ->
    Ojs.float_of_js (Ojs.get_prop_ascii (t_to_js Obj.magic x191) "size")
end

module SetConstructor = struct
  type t = _SetConstructor

  let rec t_of_js : Ojs.t -> t =
   fun (x194 : Ojs.t) -> _SetConstructor_of_js x194

  and t_to_js : t -> Ojs.t =
   fun (x193 : _SetConstructor) -> _SetConstructor_to_js x193

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x196 : Ojs.t) -> t_of_js x196

  and t_0_to_js : t_0 -> Ojs.t = fun (x195 : t) -> t_to_js x195

  let (create : t -> ?values:'T list or_null -> unit -> 'T _Set) =
   fun (x202 : t) ?values:(x197 : 'T list or_null option) () ->
    _Set_of_js
      Obj.magic
      (Ojs.new_obj_arr
         (t_to_js x202)
         (let x198 = Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||] in
          (match x197 with
          | Some x199 ->
            ignore
              (Ojs.call
                 x198
                 "push"
                 [| or_null_to_js
                      (fun (x200 : 'T list) -> Ojs.list_to_js Obj.magic x200)
                      x199
                 |])
          | None ->
            ());
          x198))

  let (get_prototype : t -> any _Set) =
   fun (x204 : t) ->
    _Set_of_js any_of_js (Ojs.get_prop_ascii (t_to_js x204) "prototype")
end

let (set_ : _SetConstructor) =
  _SetConstructor_of_js (Ojs.get_prop_ascii Ojs.global "Set")

module ReadonlySet = struct
  type 'T t = 'T _ReadonlySet

  let rec t_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x208 : Ojs.t) ->
     _ReadonlySet_of_js __T_of_js x208

  and t_to_js : 'T. ('T -> Ojs.t) -> 'T t -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x206 : __T _ReadonlySet) ->
     _ReadonlySet_to_js __T_to_js x206

  type 'T t_1 = 'T t

  let rec t_1_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t_1 =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x212 : Ojs.t) ->
     t_of_js __T_of_js x212

  and t_1_to_js : 'T. ('T -> Ojs.t) -> 'T t_1 -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x210 : __T t) ->
     t_to_js __T_to_js x210

  let (forEach :
        'T t
        -> callbackfn:(value:'T -> value2:'T -> set_:'T t -> unit)
        -> ?thisArg:any
        -> unit
        -> unit)
    =
   fun (x222 : 'T t)
       ~callbackfn:(x214 : value:'T -> value2:'T -> set_:'T t -> unit)
       ?thisArg:(x215 : any option)
       () ->
    ignore
      (let x224 = t_to_js Obj.magic x222 in
       Ojs.call
         (Ojs.get_prop_ascii x224 "forEach")
         "apply"
         [| x224
          ; (let x216 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore
               (Ojs.call
                  x216
                  "push"
                  [| Ojs.fun_to_js
                       3
                       (fun (x218 : Ojs.t) (x219 : Ojs.t) (x220 : Ojs.t) ->
                         x214
                           ~value:(Obj.magic x218)
                           ~value2:(Obj.magic x219)
                           ~set_:(t_of_js Obj.magic x220))
                  |]);
             (match x215 with
             | Some x217 ->
               ignore (Ojs.call x216 "push" [| any_to_js x217 |])
             | None ->
               ());
             x216)
         |])

  let (has : 'T t -> value:'T -> bool) =
   fun (x226 : 'T t) ~value:(x225 : 'T) ->
    Ojs.bool_of_js
      (Ojs.call (t_to_js Obj.magic x226) "has" [| Obj.magic x225 |])

  let (get_size : 'T t -> float) =
   fun (x228 : 'T t) ->
    Ojs.float_of_js (Ojs.get_prop_ascii (t_to_js Obj.magic x228) "size")
end

module WeakSet = struct
  type 'T t = 'T _WeakSet

  let rec t_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x232 : Ojs.t) ->
     _WeakSet_of_js __T_of_js x232

  and t_to_js : 'T. ('T -> Ojs.t) -> 'T t -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x230 : __T _WeakSet) ->
     _WeakSet_to_js __T_to_js x230

  type 'T t_1 = 'T t

  let rec t_1_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t_1 =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x236 : Ojs.t) ->
     t_of_js __T_of_js x236

  and t_1_to_js : 'T. ('T -> Ojs.t) -> 'T t_1 -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x234 : __T t) ->
     t_to_js __T_to_js x234

  let (add : 'T t -> value:'T -> 'T t) =
   fun (x239 : 'T t) ~value:(x238 : 'T) ->
    t_of_js
      Obj.magic
      (Ojs.call (t_to_js Obj.magic x239) "add" [| Obj.magic x238 |])

  let (delete : 'T t -> value:'T -> bool) =
   fun (x243 : 'T t) ~value:(x242 : 'T) ->
    Ojs.bool_of_js
      (Ojs.call (t_to_js Obj.magic x243) "delete" [| Obj.magic x242 |])

  let (has : 'T t -> value:'T -> bool) =
   fun (x246 : 'T t) ~value:(x245 : 'T) ->
    Ojs.bool_of_js
      (Ojs.call (t_to_js Obj.magic x246) "has" [| Obj.magic x245 |])
end

module WeakSetConstructor = struct
  type t = _WeakSetConstructor

  let rec t_of_js : Ojs.t -> t =
   fun (x249 : Ojs.t) -> _WeakSetConstructor_of_js x249

  and t_to_js : t -> Ojs.t =
   fun (x248 : _WeakSetConstructor) -> _WeakSetConstructor_to_js x248

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x251 : Ojs.t) -> t_of_js x251

  and t_0_to_js : t_0 -> Ojs.t = fun (x250 : t) -> t_to_js x250

  let (create : t -> ?values:'T list or_null -> unit -> 'T _WeakSet) =
   fun (x257 : t) ?values:(x252 : 'T list or_null option) () ->
    _WeakSet_of_js
      Obj.magic
      (Ojs.new_obj_arr
         (t_to_js x257)
         (let x253 = Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||] in
          (match x252 with
          | Some x254 ->
            ignore
              (Ojs.call
                 x253
                 "push"
                 [| or_null_to_js
                      (fun (x255 : 'T list) -> Ojs.list_to_js Obj.magic x255)
                      x254
                 |])
          | None ->
            ());
          x253))

  let (get_prototype : t -> untyped_object _WeakSet) =
   fun (x259 : t) ->
    _WeakSet_of_js
      untyped_object_of_js
      (Ojs.get_prop_ascii (t_to_js x259) "prototype")
end

let (weakSet : _WeakSetConstructor) =
  _WeakSetConstructor_of_js (Ojs.get_prop_ascii Ojs.global "WeakSet")
