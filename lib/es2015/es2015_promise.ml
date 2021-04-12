[@@@ocaml.warning "-7-32-39"]

[@@@ocaml.warning "-7-11-32-33-39"]

open Es5

module Internal = struct
  module AnonymousInterfaces = struct end

  module Types = struct
    open AnonymousInterfaces

    type _PromiseConstructor = [ `PromiseConstructor ] intf

    and 'T _Promise = 'T Promise.t

    let rec _PromiseConstructor_of_js : Ojs.t -> _PromiseConstructor = Obj.magic

    and _PromiseConstructor_to_js : _PromiseConstructor -> Ojs.t = Obj.magic

    and _Promise_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T _Promise =
      fun (type __T) (__T_of_js : Ojs.t -> __T) (x3 : Ojs.t) ->
       Promise.t_of_js __T_of_js x3

    and _Promise_to_js : 'T. ('T -> Ojs.t) -> 'T _Promise -> Ojs.t =
      fun (type __T) (__T_to_js : __T -> Ojs.t) (x1 : __T Promise.t) ->
       Promise.t_to_js __T_to_js x1
  end
end

open Internal
open AnonymousInterfaces
open Types

module Promise = struct
  include Promise

  let (create :
        (resolve:('T -> unit) -> reject:('E -> unit) -> unit) -> 'T _Promise)
    =
   fun (x9 : resolve:('T -> unit) -> reject:('E -> unit) -> unit) ->
    _Promise_of_js
      Obj.magic
      (Ojs.new_obj
         (Ojs.get_prop_ascii Ojs.global "Promise")
         [| Ojs.fun_to_js 2 (fun (x10 : Ojs.t) (x12 : Ojs.t) ->
                x9
                  ~resolve:(fun (x11 : 'T) ->
                    ignore (Ojs.apply x10 [| Obj.magic x11 |]))
                  ~reject:(fun (x13 : 'E) ->
                    ignore (Ojs.apply x12 [| Obj.magic x13 |])))
         |])

  let (all : 'T1 Promise.t list -> 'T1 list _Promise) =
   fun (x15 : 'T1 Promise.t list) ->
    _Promise_of_js
      (fun (x18 : Ojs.t) -> Ojs.list_of_js Obj.magic x18)
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Promise")
         "all"
         [| Ojs.list_to_js
              (fun (x16 : 'T1 Promise.t) -> Promise.t_to_js Obj.magic x16)
              x15
         |])

  let (all10 :
        'T1 Promise.t
        * 'T2 Promise.t
        * 'T3 Promise.t
        * 'T4 Promise.t
        * 'T5 Promise.t
        * 'T6 Promise.t
        * 'T7 Promise.t
        * 'T8 Promise.t
        * 'T9 Promise.t
        * 'T10 Promise.t
        -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8 * 'T9 * 'T10) _Promise)
    =
   fun (x20 :
         'T1 Promise.t
         * 'T2 Promise.t
         * 'T3 Promise.t
         * 'T4 Promise.t
         * 'T5 Promise.t
         * 'T6 Promise.t
         * 'T7 Promise.t
         * 'T8 Promise.t
         * 'T9 Promise.t
         * 'T10 Promise.t) ->
    _Promise_of_js
      (fun (x42 : Ojs.t) ->
        let x43 = x42 in
        ( Obj.magic (Ojs.array_get x43 0)
        , Obj.magic (Ojs.array_get x43 1)
        , Obj.magic (Ojs.array_get x43 2)
        , Obj.magic (Ojs.array_get x43 3)
        , Obj.magic (Ojs.array_get x43 4)
        , Obj.magic (Ojs.array_get x43 5)
        , Obj.magic (Ojs.array_get x43 6)
        , Obj.magic (Ojs.array_get x43 7)
        , Obj.magic (Ojs.array_get x43 8)
        , Obj.magic (Ojs.array_get x43 9) ))
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Promise")
         "all"
         [| (let x21, x22, x23, x24, x25, x26, x27, x28, x29, x30 = x20 in
             let x31 = Ojs.array_make 10 in
             Ojs.array_set x31 0 (Promise.t_to_js Obj.magic x21);
             Ojs.array_set x31 1 (Promise.t_to_js Obj.magic x22);
             Ojs.array_set x31 2 (Promise.t_to_js Obj.magic x23);
             Ojs.array_set x31 3 (Promise.t_to_js Obj.magic x24);
             Ojs.array_set x31 4 (Promise.t_to_js Obj.magic x25);
             Ojs.array_set x31 5 (Promise.t_to_js Obj.magic x26);
             Ojs.array_set x31 6 (Promise.t_to_js Obj.magic x27);
             Ojs.array_set x31 7 (Promise.t_to_js Obj.magic x28);
             Ojs.array_set x31 8 (Promise.t_to_js Obj.magic x29);
             Ojs.array_set x31 9 (Promise.t_to_js Obj.magic x30);
             x31)
         |])

  let (all9 :
        'T1 Promise.t
        * 'T2 Promise.t
        * 'T3 Promise.t
        * 'T4 Promise.t
        * 'T5 Promise.t
        * 'T6 Promise.t
        * 'T7 Promise.t
        * 'T8 Promise.t
        * 'T9 Promise.t
        -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8 * 'T9) _Promise)
    =
   fun (x44 :
         'T1 Promise.t
         * 'T2 Promise.t
         * 'T3 Promise.t
         * 'T4 Promise.t
         * 'T5 Promise.t
         * 'T6 Promise.t
         * 'T7 Promise.t
         * 'T8 Promise.t
         * 'T9 Promise.t) ->
    _Promise_of_js
      (fun (x64 : Ojs.t) ->
        let x65 = x64 in
        ( Obj.magic (Ojs.array_get x65 0)
        , Obj.magic (Ojs.array_get x65 1)
        , Obj.magic (Ojs.array_get x65 2)
        , Obj.magic (Ojs.array_get x65 3)
        , Obj.magic (Ojs.array_get x65 4)
        , Obj.magic (Ojs.array_get x65 5)
        , Obj.magic (Ojs.array_get x65 6)
        , Obj.magic (Ojs.array_get x65 7)
        , Obj.magic (Ojs.array_get x65 8) ))
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Promise")
         "all"
         [| (let x45, x46, x47, x48, x49, x50, x51, x52, x53 = x44 in
             let x54 = Ojs.array_make 9 in
             Ojs.array_set x54 0 (Promise.t_to_js Obj.magic x45);
             Ojs.array_set x54 1 (Promise.t_to_js Obj.magic x46);
             Ojs.array_set x54 2 (Promise.t_to_js Obj.magic x47);
             Ojs.array_set x54 3 (Promise.t_to_js Obj.magic x48);
             Ojs.array_set x54 4 (Promise.t_to_js Obj.magic x49);
             Ojs.array_set x54 5 (Promise.t_to_js Obj.magic x50);
             Ojs.array_set x54 6 (Promise.t_to_js Obj.magic x51);
             Ojs.array_set x54 7 (Promise.t_to_js Obj.magic x52);
             Ojs.array_set x54 8 (Promise.t_to_js Obj.magic x53);
             x54)
         |])

  let (all8 :
        'T1 Promise.t
        * 'T2 Promise.t
        * 'T3 Promise.t
        * 'T4 Promise.t
        * 'T5 Promise.t
        * 'T6 Promise.t
        * 'T7 Promise.t
        * 'T8 Promise.t
        -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8) _Promise)
    =
   fun (x66 :
         'T1 Promise.t
         * 'T2 Promise.t
         * 'T3 Promise.t
         * 'T4 Promise.t
         * 'T5 Promise.t
         * 'T6 Promise.t
         * 'T7 Promise.t
         * 'T8 Promise.t) ->
    _Promise_of_js
      (fun (x84 : Ojs.t) ->
        let x85 = x84 in
        ( Obj.magic (Ojs.array_get x85 0)
        , Obj.magic (Ojs.array_get x85 1)
        , Obj.magic (Ojs.array_get x85 2)
        , Obj.magic (Ojs.array_get x85 3)
        , Obj.magic (Ojs.array_get x85 4)
        , Obj.magic (Ojs.array_get x85 5)
        , Obj.magic (Ojs.array_get x85 6)
        , Obj.magic (Ojs.array_get x85 7) ))
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Promise")
         "all"
         [| (let x67, x68, x69, x70, x71, x72, x73, x74 = x66 in
             let x75 = Ojs.array_make 8 in
             Ojs.array_set x75 0 (Promise.t_to_js Obj.magic x67);
             Ojs.array_set x75 1 (Promise.t_to_js Obj.magic x68);
             Ojs.array_set x75 2 (Promise.t_to_js Obj.magic x69);
             Ojs.array_set x75 3 (Promise.t_to_js Obj.magic x70);
             Ojs.array_set x75 4 (Promise.t_to_js Obj.magic x71);
             Ojs.array_set x75 5 (Promise.t_to_js Obj.magic x72);
             Ojs.array_set x75 6 (Promise.t_to_js Obj.magic x73);
             Ojs.array_set x75 7 (Promise.t_to_js Obj.magic x74);
             x75)
         |])

  let (all7 :
        'T1 Promise.t
        * 'T2 Promise.t
        * 'T3 Promise.t
        * 'T4 Promise.t
        * 'T5 Promise.t
        * 'T6 Promise.t
        * 'T7 Promise.t
        -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7) _Promise)
    =
   fun (x86 :
         'T1 Promise.t
         * 'T2 Promise.t
         * 'T3 Promise.t
         * 'T4 Promise.t
         * 'T5 Promise.t
         * 'T6 Promise.t
         * 'T7 Promise.t) ->
    _Promise_of_js
      (fun (x102 : Ojs.t) ->
        let x103 = x102 in
        ( Obj.magic (Ojs.array_get x103 0)
        , Obj.magic (Ojs.array_get x103 1)
        , Obj.magic (Ojs.array_get x103 2)
        , Obj.magic (Ojs.array_get x103 3)
        , Obj.magic (Ojs.array_get x103 4)
        , Obj.magic (Ojs.array_get x103 5)
        , Obj.magic (Ojs.array_get x103 6) ))
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Promise")
         "all"
         [| (let x87, x88, x89, x90, x91, x92, x93 = x86 in
             let x94 = Ojs.array_make 7 in
             Ojs.array_set x94 0 (Promise.t_to_js Obj.magic x87);
             Ojs.array_set x94 1 (Promise.t_to_js Obj.magic x88);
             Ojs.array_set x94 2 (Promise.t_to_js Obj.magic x89);
             Ojs.array_set x94 3 (Promise.t_to_js Obj.magic x90);
             Ojs.array_set x94 4 (Promise.t_to_js Obj.magic x91);
             Ojs.array_set x94 5 (Promise.t_to_js Obj.magic x92);
             Ojs.array_set x94 6 (Promise.t_to_js Obj.magic x93);
             x94)
         |])

  let (all6 :
        'T1 Promise.t
        * 'T2 Promise.t
        * 'T3 Promise.t
        * 'T4 Promise.t
        * 'T5 Promise.t
        * 'T6 Promise.t
        -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6) _Promise)
    =
   fun (x104 :
         'T1 Promise.t
         * 'T2 Promise.t
         * 'T3 Promise.t
         * 'T4 Promise.t
         * 'T5 Promise.t
         * 'T6 Promise.t) ->
    _Promise_of_js
      (fun (x118 : Ojs.t) ->
        let x119 = x118 in
        ( Obj.magic (Ojs.array_get x119 0)
        , Obj.magic (Ojs.array_get x119 1)
        , Obj.magic (Ojs.array_get x119 2)
        , Obj.magic (Ojs.array_get x119 3)
        , Obj.magic (Ojs.array_get x119 4)
        , Obj.magic (Ojs.array_get x119 5) ))
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Promise")
         "all"
         [| (let x105, x106, x107, x108, x109, x110 = x104 in
             let x111 = Ojs.array_make 6 in
             Ojs.array_set x111 0 (Promise.t_to_js Obj.magic x105);
             Ojs.array_set x111 1 (Promise.t_to_js Obj.magic x106);
             Ojs.array_set x111 2 (Promise.t_to_js Obj.magic x107);
             Ojs.array_set x111 3 (Promise.t_to_js Obj.magic x108);
             Ojs.array_set x111 4 (Promise.t_to_js Obj.magic x109);
             Ojs.array_set x111 5 (Promise.t_to_js Obj.magic x110);
             x111)
         |])

  let (all5 :
        'T1 Promise.t
        * 'T2 Promise.t
        * 'T3 Promise.t
        * 'T4 Promise.t
        * 'T5 Promise.t
        -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5) _Promise)
    =
   fun (x120 :
         'T1 Promise.t
         * 'T2 Promise.t
         * 'T3 Promise.t
         * 'T4 Promise.t
         * 'T5 Promise.t) ->
    _Promise_of_js
      (fun (x132 : Ojs.t) ->
        let x133 = x132 in
        ( Obj.magic (Ojs.array_get x133 0)
        , Obj.magic (Ojs.array_get x133 1)
        , Obj.magic (Ojs.array_get x133 2)
        , Obj.magic (Ojs.array_get x133 3)
        , Obj.magic (Ojs.array_get x133 4) ))
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Promise")
         "all"
         [| (let x121, x122, x123, x124, x125 = x120 in
             let x126 = Ojs.array_make 5 in
             Ojs.array_set x126 0 (Promise.t_to_js Obj.magic x121);
             Ojs.array_set x126 1 (Promise.t_to_js Obj.magic x122);
             Ojs.array_set x126 2 (Promise.t_to_js Obj.magic x123);
             Ojs.array_set x126 3 (Promise.t_to_js Obj.magic x124);
             Ojs.array_set x126 4 (Promise.t_to_js Obj.magic x125);
             x126)
         |])

  let (all4 :
        'T1 Promise.t * 'T2 Promise.t * 'T3 Promise.t * 'T4 Promise.t
        -> ('T1 * 'T2 * 'T3 * 'T4) _Promise)
    =
   fun (x134 : 'T1 Promise.t * 'T2 Promise.t * 'T3 Promise.t * 'T4 Promise.t) ->
    _Promise_of_js
      (fun (x144 : Ojs.t) ->
        let x145 = x144 in
        ( Obj.magic (Ojs.array_get x145 0)
        , Obj.magic (Ojs.array_get x145 1)
        , Obj.magic (Ojs.array_get x145 2)
        , Obj.magic (Ojs.array_get x145 3) ))
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Promise")
         "all"
         [| (let x135, x136, x137, x138 = x134 in
             let x139 = Ojs.array_make 4 in
             Ojs.array_set x139 0 (Promise.t_to_js Obj.magic x135);
             Ojs.array_set x139 1 (Promise.t_to_js Obj.magic x136);
             Ojs.array_set x139 2 (Promise.t_to_js Obj.magic x137);
             Ojs.array_set x139 3 (Promise.t_to_js Obj.magic x138);
             x139)
         |])

  let (all3 :
        'T1 Promise.t * 'T2 Promise.t * 'T3 Promise.t
        -> ('T1 * 'T2 * 'T3) _Promise)
    =
   fun (x146 : 'T1 Promise.t * 'T2 Promise.t * 'T3 Promise.t) ->
    _Promise_of_js
      (fun (x154 : Ojs.t) ->
        let x155 = x154 in
        ( Obj.magic (Ojs.array_get x155 0)
        , Obj.magic (Ojs.array_get x155 1)
        , Obj.magic (Ojs.array_get x155 2) ))
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Promise")
         "all"
         [| (let x147, x148, x149 = x146 in
             let x150 = Ojs.array_make 3 in
             Ojs.array_set x150 0 (Promise.t_to_js Obj.magic x147);
             Ojs.array_set x150 1 (Promise.t_to_js Obj.magic x148);
             Ojs.array_set x150 2 (Promise.t_to_js Obj.magic x149);
             x150)
         |])

  let (all2 : 'T1 Promise.t * 'T2 Promise.t -> ('T1 * 'T2) _Promise) =
   fun (x156 : 'T1 Promise.t * 'T2 Promise.t) ->
    _Promise_of_js
      (fun (x162 : Ojs.t) ->
        let x163 = x162 in
        Obj.magic (Ojs.array_get x163 0), Obj.magic (Ojs.array_get x163 1))
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Promise")
         "all"
         [| (let x157, x158 = x156 in
             let x159 = Ojs.array_make 2 in
             Ojs.array_set x159 0 (Promise.t_to_js Obj.magic x157);
             Ojs.array_set x159 1 (Promise.t_to_js Obj.magic x158);
             x159)
         |])

  let (all1 : 'T Promise.t list -> 'T list _Promise) =
   fun (x164 : 'T Promise.t list) ->
    _Promise_of_js
      (fun (x167 : Ojs.t) -> Ojs.list_of_js Obj.magic x167)
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Promise")
         "all"
         [| Ojs.list_to_js
              (fun (x165 : 'T Promise.t) -> Promise.t_to_js Obj.magic x165)
              x164
         |])

  let (race : 'T list -> any _Promise) =
   fun (x169 : 'T list) ->
    _Promise_of_js
      any_of_js
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Promise")
         "race"
         [| Ojs.list_to_js Obj.magic x169 |])

  let (reject : 'E -> 'T _Promise) =
   fun (x172 : 'E) ->
    _Promise_of_js
      Obj.magic
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Promise")
         "reject"
         [| Obj.magic x172 |])

  let (resolve : 'T -> 'T _Promise) =
   fun (x174 : 'T) ->
    _Promise_of_js
      Obj.magic
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Promise")
         "resolve"
         [| Obj.magic x174 |])
end

module PromiseConstructor = struct
  type t = _PromiseConstructor

  let rec t_of_js : Ojs.t -> t =
   fun (x177 : Ojs.t) -> _PromiseConstructor_of_js x177

  and t_to_js : t -> Ojs.t =
   fun (x176 : _PromiseConstructor) -> _PromiseConstructor_to_js x176

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x179 : Ojs.t) -> t_of_js x179

  and t_0_to_js : t_0 -> Ojs.t = fun (x178 : t) -> t_to_js x178

  let (get_prototype : t -> any _Promise) =
   fun (x180 : t) ->
    _Promise_of_js any_of_js (Ojs.get_prop_ascii (t_to_js x180) "prototype")

  let (create :
        t
        -> (resolve:('T -> unit) -> reject:('E -> unit) -> unit)
        -> 'T _Promise)
    =
   fun (x187 : t) (x182 : resolve:('T -> unit) -> reject:('E -> unit) -> unit) ->
    _Promise_of_js
      Obj.magic
      (Ojs.new_obj
         (t_to_js x187)
         [| Ojs.fun_to_js 2 (fun (x183 : Ojs.t) (x185 : Ojs.t) ->
                x182
                  ~resolve:(fun (x184 : 'T) ->
                    ignore (Ojs.apply x183 [| Obj.magic x184 |]))
                  ~reject:(fun (x186 : 'E) ->
                    ignore (Ojs.apply x185 [| Obj.magic x186 |])))
         |])

  let (all : t -> 'T1 Promise.t list -> 'T1 list _Promise) =
   fun (x192 : t) (x189 : 'T1 Promise.t list) ->
    _Promise_of_js
      (fun (x193 : Ojs.t) -> Ojs.list_of_js Obj.magic x193)
      (Ojs.call
         (t_to_js x192)
         "all"
         [| Ojs.list_to_js
              (fun (x190 : 'T1 Promise.t) -> Promise.t_to_js Obj.magic x190)
              x189
         |])

  let (all10 :
        t
        -> 'T1 Promise.t
           * 'T2 Promise.t
           * 'T3 Promise.t
           * 'T4 Promise.t
           * 'T5 Promise.t
           * 'T6 Promise.t
           * 'T7 Promise.t
           * 'T8 Promise.t
           * 'T9 Promise.t
           * 'T10 Promise.t
        -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8 * 'T9 * 'T10) _Promise)
    =
   fun (x217 : t)
       (x195 :
         'T1 Promise.t
         * 'T2 Promise.t
         * 'T3 Promise.t
         * 'T4 Promise.t
         * 'T5 Promise.t
         * 'T6 Promise.t
         * 'T7 Promise.t
         * 'T8 Promise.t
         * 'T9 Promise.t
         * 'T10 Promise.t) ->
    _Promise_of_js
      (fun (x218 : Ojs.t) ->
        let x219 = x218 in
        ( Obj.magic (Ojs.array_get x219 0)
        , Obj.magic (Ojs.array_get x219 1)
        , Obj.magic (Ojs.array_get x219 2)
        , Obj.magic (Ojs.array_get x219 3)
        , Obj.magic (Ojs.array_get x219 4)
        , Obj.magic (Ojs.array_get x219 5)
        , Obj.magic (Ojs.array_get x219 6)
        , Obj.magic (Ojs.array_get x219 7)
        , Obj.magic (Ojs.array_get x219 8)
        , Obj.magic (Ojs.array_get x219 9) ))
      (Ojs.call
         (t_to_js x217)
         "all"
         [| (let x196, x197, x198, x199, x200, x201, x202, x203, x204, x205 =
               x195
             in
             let x206 = Ojs.array_make 10 in
             Ojs.array_set x206 0 (Promise.t_to_js Obj.magic x196);
             Ojs.array_set x206 1 (Promise.t_to_js Obj.magic x197);
             Ojs.array_set x206 2 (Promise.t_to_js Obj.magic x198);
             Ojs.array_set x206 3 (Promise.t_to_js Obj.magic x199);
             Ojs.array_set x206 4 (Promise.t_to_js Obj.magic x200);
             Ojs.array_set x206 5 (Promise.t_to_js Obj.magic x201);
             Ojs.array_set x206 6 (Promise.t_to_js Obj.magic x202);
             Ojs.array_set x206 7 (Promise.t_to_js Obj.magic x203);
             Ojs.array_set x206 8 (Promise.t_to_js Obj.magic x204);
             Ojs.array_set x206 9 (Promise.t_to_js Obj.magic x205);
             x206)
         |])

  let (all9 :
        t
        -> 'T1 Promise.t
           * 'T2 Promise.t
           * 'T3 Promise.t
           * 'T4 Promise.t
           * 'T5 Promise.t
           * 'T6 Promise.t
           * 'T7 Promise.t
           * 'T8 Promise.t
           * 'T9 Promise.t
        -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8 * 'T9) _Promise)
    =
   fun (x240 : t)
       (x220 :
         'T1 Promise.t
         * 'T2 Promise.t
         * 'T3 Promise.t
         * 'T4 Promise.t
         * 'T5 Promise.t
         * 'T6 Promise.t
         * 'T7 Promise.t
         * 'T8 Promise.t
         * 'T9 Promise.t) ->
    _Promise_of_js
      (fun (x241 : Ojs.t) ->
        let x242 = x241 in
        ( Obj.magic (Ojs.array_get x242 0)
        , Obj.magic (Ojs.array_get x242 1)
        , Obj.magic (Ojs.array_get x242 2)
        , Obj.magic (Ojs.array_get x242 3)
        , Obj.magic (Ojs.array_get x242 4)
        , Obj.magic (Ojs.array_get x242 5)
        , Obj.magic (Ojs.array_get x242 6)
        , Obj.magic (Ojs.array_get x242 7)
        , Obj.magic (Ojs.array_get x242 8) ))
      (Ojs.call
         (t_to_js x240)
         "all"
         [| (let x221, x222, x223, x224, x225, x226, x227, x228, x229 = x220 in
             let x230 = Ojs.array_make 9 in
             Ojs.array_set x230 0 (Promise.t_to_js Obj.magic x221);
             Ojs.array_set x230 1 (Promise.t_to_js Obj.magic x222);
             Ojs.array_set x230 2 (Promise.t_to_js Obj.magic x223);
             Ojs.array_set x230 3 (Promise.t_to_js Obj.magic x224);
             Ojs.array_set x230 4 (Promise.t_to_js Obj.magic x225);
             Ojs.array_set x230 5 (Promise.t_to_js Obj.magic x226);
             Ojs.array_set x230 6 (Promise.t_to_js Obj.magic x227);
             Ojs.array_set x230 7 (Promise.t_to_js Obj.magic x228);
             Ojs.array_set x230 8 (Promise.t_to_js Obj.magic x229);
             x230)
         |])

  let (all8 :
        t
        -> 'T1 Promise.t
           * 'T2 Promise.t
           * 'T3 Promise.t
           * 'T4 Promise.t
           * 'T5 Promise.t
           * 'T6 Promise.t
           * 'T7 Promise.t
           * 'T8 Promise.t
        -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7 * 'T8) _Promise)
    =
   fun (x261 : t)
       (x243 :
         'T1 Promise.t
         * 'T2 Promise.t
         * 'T3 Promise.t
         * 'T4 Promise.t
         * 'T5 Promise.t
         * 'T6 Promise.t
         * 'T7 Promise.t
         * 'T8 Promise.t) ->
    _Promise_of_js
      (fun (x262 : Ojs.t) ->
        let x263 = x262 in
        ( Obj.magic (Ojs.array_get x263 0)
        , Obj.magic (Ojs.array_get x263 1)
        , Obj.magic (Ojs.array_get x263 2)
        , Obj.magic (Ojs.array_get x263 3)
        , Obj.magic (Ojs.array_get x263 4)
        , Obj.magic (Ojs.array_get x263 5)
        , Obj.magic (Ojs.array_get x263 6)
        , Obj.magic (Ojs.array_get x263 7) ))
      (Ojs.call
         (t_to_js x261)
         "all"
         [| (let x244, x245, x246, x247, x248, x249, x250, x251 = x243 in
             let x252 = Ojs.array_make 8 in
             Ojs.array_set x252 0 (Promise.t_to_js Obj.magic x244);
             Ojs.array_set x252 1 (Promise.t_to_js Obj.magic x245);
             Ojs.array_set x252 2 (Promise.t_to_js Obj.magic x246);
             Ojs.array_set x252 3 (Promise.t_to_js Obj.magic x247);
             Ojs.array_set x252 4 (Promise.t_to_js Obj.magic x248);
             Ojs.array_set x252 5 (Promise.t_to_js Obj.magic x249);
             Ojs.array_set x252 6 (Promise.t_to_js Obj.magic x250);
             Ojs.array_set x252 7 (Promise.t_to_js Obj.magic x251);
             x252)
         |])

  let (all7 :
        t
        -> 'T1 Promise.t
           * 'T2 Promise.t
           * 'T3 Promise.t
           * 'T4 Promise.t
           * 'T5 Promise.t
           * 'T6 Promise.t
           * 'T7 Promise.t
        -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6 * 'T7) _Promise)
    =
   fun (x280 : t)
       (x264 :
         'T1 Promise.t
         * 'T2 Promise.t
         * 'T3 Promise.t
         * 'T4 Promise.t
         * 'T5 Promise.t
         * 'T6 Promise.t
         * 'T7 Promise.t) ->
    _Promise_of_js
      (fun (x281 : Ojs.t) ->
        let x282 = x281 in
        ( Obj.magic (Ojs.array_get x282 0)
        , Obj.magic (Ojs.array_get x282 1)
        , Obj.magic (Ojs.array_get x282 2)
        , Obj.magic (Ojs.array_get x282 3)
        , Obj.magic (Ojs.array_get x282 4)
        , Obj.magic (Ojs.array_get x282 5)
        , Obj.magic (Ojs.array_get x282 6) ))
      (Ojs.call
         (t_to_js x280)
         "all"
         [| (let x265, x266, x267, x268, x269, x270, x271 = x264 in
             let x272 = Ojs.array_make 7 in
             Ojs.array_set x272 0 (Promise.t_to_js Obj.magic x265);
             Ojs.array_set x272 1 (Promise.t_to_js Obj.magic x266);
             Ojs.array_set x272 2 (Promise.t_to_js Obj.magic x267);
             Ojs.array_set x272 3 (Promise.t_to_js Obj.magic x268);
             Ojs.array_set x272 4 (Promise.t_to_js Obj.magic x269);
             Ojs.array_set x272 5 (Promise.t_to_js Obj.magic x270);
             Ojs.array_set x272 6 (Promise.t_to_js Obj.magic x271);
             x272)
         |])

  let (all6 :
        t
        -> 'T1 Promise.t
           * 'T2 Promise.t
           * 'T3 Promise.t
           * 'T4 Promise.t
           * 'T5 Promise.t
           * 'T6 Promise.t
        -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5 * 'T6) _Promise)
    =
   fun (x297 : t)
       (x283 :
         'T1 Promise.t
         * 'T2 Promise.t
         * 'T3 Promise.t
         * 'T4 Promise.t
         * 'T5 Promise.t
         * 'T6 Promise.t) ->
    _Promise_of_js
      (fun (x298 : Ojs.t) ->
        let x299 = x298 in
        ( Obj.magic (Ojs.array_get x299 0)
        , Obj.magic (Ojs.array_get x299 1)
        , Obj.magic (Ojs.array_get x299 2)
        , Obj.magic (Ojs.array_get x299 3)
        , Obj.magic (Ojs.array_get x299 4)
        , Obj.magic (Ojs.array_get x299 5) ))
      (Ojs.call
         (t_to_js x297)
         "all"
         [| (let x284, x285, x286, x287, x288, x289 = x283 in
             let x290 = Ojs.array_make 6 in
             Ojs.array_set x290 0 (Promise.t_to_js Obj.magic x284);
             Ojs.array_set x290 1 (Promise.t_to_js Obj.magic x285);
             Ojs.array_set x290 2 (Promise.t_to_js Obj.magic x286);
             Ojs.array_set x290 3 (Promise.t_to_js Obj.magic x287);
             Ojs.array_set x290 4 (Promise.t_to_js Obj.magic x288);
             Ojs.array_set x290 5 (Promise.t_to_js Obj.magic x289);
             x290)
         |])

  let (all5 :
        t
        -> 'T1 Promise.t
           * 'T2 Promise.t
           * 'T3 Promise.t
           * 'T4 Promise.t
           * 'T5 Promise.t
        -> ('T1 * 'T2 * 'T3 * 'T4 * 'T5) _Promise)
    =
   fun (x312 : t)
       (x300 :
         'T1 Promise.t
         * 'T2 Promise.t
         * 'T3 Promise.t
         * 'T4 Promise.t
         * 'T5 Promise.t) ->
    _Promise_of_js
      (fun (x313 : Ojs.t) ->
        let x314 = x313 in
        ( Obj.magic (Ojs.array_get x314 0)
        , Obj.magic (Ojs.array_get x314 1)
        , Obj.magic (Ojs.array_get x314 2)
        , Obj.magic (Ojs.array_get x314 3)
        , Obj.magic (Ojs.array_get x314 4) ))
      (Ojs.call
         (t_to_js x312)
         "all"
         [| (let x301, x302, x303, x304, x305 = x300 in
             let x306 = Ojs.array_make 5 in
             Ojs.array_set x306 0 (Promise.t_to_js Obj.magic x301);
             Ojs.array_set x306 1 (Promise.t_to_js Obj.magic x302);
             Ojs.array_set x306 2 (Promise.t_to_js Obj.magic x303);
             Ojs.array_set x306 3 (Promise.t_to_js Obj.magic x304);
             Ojs.array_set x306 4 (Promise.t_to_js Obj.magic x305);
             x306)
         |])

  let (all4 :
        t
        -> 'T1 Promise.t * 'T2 Promise.t * 'T3 Promise.t * 'T4 Promise.t
        -> ('T1 * 'T2 * 'T3 * 'T4) _Promise)
    =
   fun (x325 : t)
       (x315 : 'T1 Promise.t * 'T2 Promise.t * 'T3 Promise.t * 'T4 Promise.t) ->
    _Promise_of_js
      (fun (x326 : Ojs.t) ->
        let x327 = x326 in
        ( Obj.magic (Ojs.array_get x327 0)
        , Obj.magic (Ojs.array_get x327 1)
        , Obj.magic (Ojs.array_get x327 2)
        , Obj.magic (Ojs.array_get x327 3) ))
      (Ojs.call
         (t_to_js x325)
         "all"
         [| (let x316, x317, x318, x319 = x315 in
             let x320 = Ojs.array_make 4 in
             Ojs.array_set x320 0 (Promise.t_to_js Obj.magic x316);
             Ojs.array_set x320 1 (Promise.t_to_js Obj.magic x317);
             Ojs.array_set x320 2 (Promise.t_to_js Obj.magic x318);
             Ojs.array_set x320 3 (Promise.t_to_js Obj.magic x319);
             x320)
         |])

  let (all3 :
        t
        -> 'T1 Promise.t * 'T2 Promise.t * 'T3 Promise.t
        -> ('T1 * 'T2 * 'T3) _Promise)
    =
   fun (x336 : t) (x328 : 'T1 Promise.t * 'T2 Promise.t * 'T3 Promise.t) ->
    _Promise_of_js
      (fun (x337 : Ojs.t) ->
        let x338 = x337 in
        ( Obj.magic (Ojs.array_get x338 0)
        , Obj.magic (Ojs.array_get x338 1)
        , Obj.magic (Ojs.array_get x338 2) ))
      (Ojs.call
         (t_to_js x336)
         "all"
         [| (let x329, x330, x331 = x328 in
             let x332 = Ojs.array_make 3 in
             Ojs.array_set x332 0 (Promise.t_to_js Obj.magic x329);
             Ojs.array_set x332 1 (Promise.t_to_js Obj.magic x330);
             Ojs.array_set x332 2 (Promise.t_to_js Obj.magic x331);
             x332)
         |])

  let (all2 : t -> 'T1 Promise.t * 'T2 Promise.t -> ('T1 * 'T2) _Promise) =
   fun (x345 : t) (x339 : 'T1 Promise.t * 'T2 Promise.t) ->
    _Promise_of_js
      (fun (x346 : Ojs.t) ->
        let x347 = x346 in
        Obj.magic (Ojs.array_get x347 0), Obj.magic (Ojs.array_get x347 1))
      (Ojs.call
         (t_to_js x345)
         "all"
         [| (let x340, x341 = x339 in
             let x342 = Ojs.array_make 2 in
             Ojs.array_set x342 0 (Promise.t_to_js Obj.magic x340);
             Ojs.array_set x342 1 (Promise.t_to_js Obj.magic x341);
             x342)
         |])

  let (all1 : t -> 'T Promise.t list -> 'T list _Promise) =
   fun (x351 : t) (x348 : 'T Promise.t list) ->
    _Promise_of_js
      (fun (x352 : Ojs.t) -> Ojs.list_of_js Obj.magic x352)
      (Ojs.call
         (t_to_js x351)
         "all"
         [| Ojs.list_to_js
              (fun (x349 : 'T Promise.t) -> Promise.t_to_js Obj.magic x349)
              x348
         |])

  let (race : t -> 'T list -> any _Promise) =
   fun (x356 : t) (x354 : 'T list) ->
    _Promise_of_js
      any_of_js
      (Ojs.call (t_to_js x356) "race" [| Ojs.list_to_js Obj.magic x354 |])

  let (reject : t -> 'E -> 'T _Promise) =
   fun (x359 : t) (x358 : 'E) ->
    _Promise_of_js
      Obj.magic
      (Ojs.call (t_to_js x359) "reject" [| Obj.magic x358 |])

  let (resolve : t -> unit _Promise) =
   fun (x361 : t) ->
    _Promise_of_js Ojs.unit_of_js (Ojs.call (t_to_js x361) "resolve" [||])

  let (resolve' : t -> 'T -> 'T _Promise) =
   fun (x364 : t) (x363 : 'T) ->
    _Promise_of_js
      Obj.magic
      (Ojs.call (t_to_js x364) "resolve" [| Obj.magic x363 |])
end

let (promise : _PromiseConstructor) =
  _PromiseConstructor_of_js (Ojs.get_prop_ascii Ojs.global "Promise")
