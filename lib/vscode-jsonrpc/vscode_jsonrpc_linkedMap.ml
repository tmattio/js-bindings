[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es2020
module Internal =
  struct
    module AnonymousInterfaces = struct  end
    module Types =
      struct
        open AnonymousInterfaces
        type ('K, 'V) _LRUCache =
          [ `LRUCache of ('K * 'V)  | `LinkedMap of ('K * 'V) ] intf
        and ('K, 'V) _LinkedMap = [ `LinkedMap of ('K * 'V) ] intf
        and _Touch = [ `L_n_0  | `L_n_1  | `L_n_2 ]
        let rec _LRUCache_of_js :
          'K 'V .
            (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) _LRUCache
          = fun _K -> fun _V -> Obj.magic
        and _LRUCache_to_js :
          'K 'V .
            ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) _LRUCache -> Ojs.t
          = fun _K -> fun _V -> Obj.magic
        and _LinkedMap_of_js :
          'K 'V .
            (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) _LinkedMap
          = fun _K -> fun _V -> Obj.magic
        and _LinkedMap_to_js :
          'K 'V .
            ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) _LinkedMap -> Ojs.t
          = fun _K -> fun _V -> Obj.magic
        and _Touch_of_js : Ojs.t -> _Touch =
          fun (x2 : Ojs.t) ->
            let x3 = x2 in
            match Ojs.int_of_js x3 with
            | 0 -> `L_n_0
            | 1 -> `L_n_1
            | 2 -> `L_n_2
            | _ -> assert false
        and _Touch_to_js : _Touch -> Ojs.t =
          fun (x1 : [ `L_n_0  | `L_n_1  | `L_n_2 ]) ->
            match x1 with
            | `L_n_0 -> Ojs.int_to_js 0
            | `L_n_1 -> Ojs.int_to_js 1
            | `L_n_2 -> Ojs.int_to_js 2
      end
  end
open Internal
open AnonymousInterfaces
open Types
module Touch =
  struct
    type t = _Touch
    let rec t_of_js : Ojs.t -> t = fun (x5 : Ojs.t) -> _Touch_of_js x5
    and t_to_js : t -> Ojs.t = fun (x4 : _Touch) -> _Touch_to_js x4
    let (none : [ `L_n_0 ]) =
      let x6 =
        Ojs.get_prop_ascii (Ojs.get_prop_ascii Ojs.global "Touch") "None" in
      match Ojs.int_of_js x6 with | 0 -> `L_n_0 | _ -> assert false
    let (first : [ `L_n_1 ]) =
      let x7 =
        Ojs.get_prop_ascii (Ojs.get_prop_ascii Ojs.global "Touch") "First" in
      match Ojs.int_of_js x7 with | 1 -> `L_n_1 | _ -> assert false
    let (asOld : [ `L_n_1 ]) =
      let x8 =
        Ojs.get_prop_ascii (Ojs.get_prop_ascii Ojs.global "Touch") "AsOld" in
      match Ojs.int_of_js x8 with | 1 -> `L_n_1 | _ -> assert false
    let (last : [ `L_n_2 ]) =
      let x9 =
        Ojs.get_prop_ascii (Ojs.get_prop_ascii Ojs.global "Touch") "Last" in
      match Ojs.int_of_js x9 with | 2 -> `L_n_2 | _ -> assert false
    let (asNew : [ `L_n_2 ]) =
      let x10 =
        Ojs.get_prop_ascii (Ojs.get_prop_ascii Ojs.global "Touch") "AsNew" in
      match Ojs.int_of_js x10 with | 2 -> `L_n_2 | _ -> assert false
  end
module LinkedMap =
  struct
    type ('K, 'V) t = ('K, 'V) _LinkedMap
    let rec t_of_js :
      'K 'V . (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t = fun
      (type __K) -> fun (type __V) ->
      fun (__K_of_js : Ojs.t -> __K) ->
        fun (__V_of_js : Ojs.t -> __V) ->
          fun (x14 : Ojs.t) -> _LinkedMap_of_js __K_of_js __V_of_js x14
    and t_to_js :
      'K 'V . ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t = fun
      (type __K) -> fun (type __V) ->
      fun (__K_to_js : __K -> Ojs.t) ->
        fun (__V_to_js : __V -> Ojs.t) ->
          fun (x11 : (__K, __V) _LinkedMap) ->
            _LinkedMap_to_js __K_to_js __V_to_js x11
    let (get__Symbol_toStringTag_ : ('K, 'V) t -> any) =
      fun (x17 : ('K, 'V) t) ->
        any_of_js
          (Ojs.get_prop_ascii (t_to_js Obj.magic Obj.magic x17)
             "[Symbol.toStringTag]")
    let (get__map : ('K, 'V) t -> any) =
      fun (x20 : ('K, 'V) t) ->
        any_of_js
          (Ojs.get_prop_ascii (t_to_js Obj.magic Obj.magic x20) "_map")
    let (set__map : ('K, 'V) t -> any -> unit) =
      fun (x23 : ('K, 'V) t) ->
        fun (x24 : any) ->
          Ojs.set_prop_ascii (t_to_js Obj.magic Obj.magic x23) "_map"
            (any_to_js x24)
    let (get__head : ('K, 'V) t -> any) =
      fun (x27 : ('K, 'V) t) ->
        any_of_js
          (Ojs.get_prop_ascii (t_to_js Obj.magic Obj.magic x27) "_head")
    let (set__head : ('K, 'V) t -> any -> unit) =
      fun (x30 : ('K, 'V) t) ->
        fun (x31 : any) ->
          Ojs.set_prop_ascii (t_to_js Obj.magic Obj.magic x30) "_head"
            (any_to_js x31)
    let (get__tail : ('K, 'V) t -> any) =
      fun (x34 : ('K, 'V) t) ->
        any_of_js
          (Ojs.get_prop_ascii (t_to_js Obj.magic Obj.magic x34) "_tail")
    let (set__tail : ('K, 'V) t -> any -> unit) =
      fun (x37 : ('K, 'V) t) ->
        fun (x38 : any) ->
          Ojs.set_prop_ascii (t_to_js Obj.magic Obj.magic x37) "_tail"
            (any_to_js x38)
    let (get__size : ('K, 'V) t -> any) =
      fun (x41 : ('K, 'V) t) ->
        any_of_js
          (Ojs.get_prop_ascii (t_to_js Obj.magic Obj.magic x41) "_size")
    let (set__size : ('K, 'V) t -> any -> unit) =
      fun (x44 : ('K, 'V) t) ->
        fun (x45 : any) ->
          Ojs.set_prop_ascii (t_to_js Obj.magic Obj.magic x44) "_size"
            (any_to_js x45)
    let (get__state : ('K, 'V) t -> any) =
      fun (x48 : ('K, 'V) t) ->
        any_of_js
          (Ojs.get_prop_ascii (t_to_js Obj.magic Obj.magic x48) "_state")
    let (set__state : ('K, 'V) t -> any -> unit) =
      fun (x51 : ('K, 'V) t) ->
        fun (x52 : any) ->
          Ojs.set_prop_ascii (t_to_js Obj.magic Obj.magic x51) "_state"
            (any_to_js x52)
    let (create : unit -> ('K, 'V) t) =
      fun () ->
        t_of_js Obj.magic Obj.magic
          (Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "LinkedMap") [||])
    let (clear : ('K, 'V) t -> unit) =
      fun (x57 : ('K, 'V) t) ->
        ignore (Ojs.call (t_to_js Obj.magic Obj.magic x57) "clear" [||])
    let (isEmpty : ('K, 'V) t -> bool) =
      fun (x60 : ('K, 'V) t) ->
        Ojs.bool_of_js
          (Ojs.call (t_to_js Obj.magic Obj.magic x60) "isEmpty" [||])
    let (get_size : ('K, 'V) t -> int) =
      fun (x63 : ('K, 'V) t) ->
        Ojs.int_of_js
          (Ojs.get_prop_ascii (t_to_js Obj.magic Obj.magic x63) "size")
    let (get_first : ('K, 'V) t -> 'V or_undefined) =
      fun (x66 : ('K, 'V) t) ->
        or_undefined_of_js Obj.magic
          (Ojs.get_prop_ascii (t_to_js Obj.magic Obj.magic x66) "first")
    let (get_last : ('K, 'V) t -> 'V or_undefined) =
      fun (x70 : ('K, 'V) t) ->
        or_undefined_of_js Obj.magic
          (Ojs.get_prop_ascii (t_to_js Obj.magic Obj.magic x70) "last")
    let (has : ('K, 'V) t -> key:'K -> bool) =
      fun (x75 : ('K, 'V) t) ->
        fun ~key:(x74 : 'K) ->
          Ojs.bool_of_js
            (Ojs.call (t_to_js Obj.magic Obj.magic x75) "has"
               [|(Obj.magic x74)|])
    let (get_ :
      ('K, 'V) t -> key:'K -> ?touch:_Touch -> unit -> 'V or_undefined) =
      fun (x82 : ('K, 'V) t) ->
        fun ~key:(x78 : 'K) ->
          fun ?touch:(x79 : _Touch option) ->
            fun () ->
              or_undefined_of_js Obj.magic
                (let x85 = t_to_js Obj.magic Obj.magic x82 in
                 Ojs.call (Ojs.get_prop_ascii x85 "get") "apply"
                   [|x85;((let x80 =
                             Ojs.new_obj
                               (Ojs.get_prop_ascii Ojs.global "Array") 
                               [||] in
                           ignore (Ojs.call x80 "push" [|(Obj.magic x78)|]);
                           (match x79 with
                            | Some x81 ->
                                ignore
                                  (Ojs.call x80 "push" [|(_Touch_to_js x81)|])
                            | None -> ());
                           x80))|])
    let (set_ :
      ('K, 'V) t -> key:'K -> value:'V -> ?touch:_Touch -> unit -> ('K, 'V) t)
      =
      fun (x92 : ('K, 'V) t) ->
        fun ~key:(x87 : 'K) ->
          fun ~value:(x88 : 'V) ->
            fun ?touch:(x89 : _Touch option) ->
              fun () ->
                t_of_js Obj.magic Obj.magic
                  (let x95 = t_to_js Obj.magic Obj.magic x92 in
                   Ojs.call (Ojs.get_prop_ascii x95 "set") "apply"
                     [|x95;((let x90 =
                               Ojs.new_obj
                                 (Ojs.get_prop_ascii Ojs.global "Array") 
                                 [||] in
                             ignore (Ojs.call x90 "push" [|(Obj.magic x87)|]);
                             ignore (Ojs.call x90 "push" [|(Obj.magic x88)|]);
                             (match x89 with
                              | Some x91 ->
                                  ignore
                                    (Ojs.call x90 "push"
                                       [|(_Touch_to_js x91)|])
                              | None -> ());
                             x90))|])
    let (delete : ('K, 'V) t -> key:'K -> bool) =
      fun (x99 : ('K, 'V) t) ->
        fun ~key:(x98 : 'K) ->
          Ojs.bool_of_js
            (Ojs.call (t_to_js Obj.magic Obj.magic x99) "delete"
               [|(Obj.magic x98)|])
    let (remove : ('K, 'V) t -> key:'K -> 'V or_undefined) =
      fun (x103 : ('K, 'V) t) ->
        fun ~key:(x102 : 'K) ->
          or_undefined_of_js Obj.magic
            (Ojs.call (t_to_js Obj.magic Obj.magic x103) "remove"
               [|(Obj.magic x102)|])
    let (shift : ('K, 'V) t -> 'V or_undefined) =
      fun (x107 : ('K, 'V) t) ->
        or_undefined_of_js Obj.magic
          (Ojs.call (t_to_js Obj.magic Obj.magic x107) "shift" [||])
    let (forEach :
      ('K, 'V) t ->
        callbackfn:(value:'V -> key:'K -> map:('K, 'V) t -> unit) ->
          ?thisArg:any -> unit -> unit)
      =
      fun (x120 : ('K, 'V) t) ->
        fun ~callbackfn:(x111 : value:'V -> key:'K -> map:('K, 'V) t -> unit)
          ->
          fun ?thisArg:(x112 : any option) ->
            fun () ->
              ignore
                (let x123 = t_to_js Obj.magic Obj.magic x120 in
                 Ojs.call (Ojs.get_prop_ascii x123 "forEach") "apply"
                   [|x123;((let x113 =
                              Ojs.new_obj
                                (Ojs.get_prop_ascii Ojs.global "Array") 
                                [||] in
                            ignore
                              (Ojs.call x113 "push"
                                 [|(Ojs.fun_to_js 3
                                      (fun (x115 : Ojs.t) ->
                                         fun (x116 : Ojs.t) ->
                                           fun (x117 : Ojs.t) ->
                                             x111 ~value:(Obj.magic x115)
                                               ~key:(Obj.magic x116)
                                               ~map:(t_of_js Obj.magic
                                                       Obj.magic x117)))|]);
                            (match x112 with
                             | Some x114 ->
                                 ignore
                                   (Ojs.call x113 "push" [|(any_to_js x114)|])
                             | None -> ());
                            x113))|])
    let (keys : ('K, 'V) t -> 'K IterableIterator.t) =
      fun (x124 : ('K, 'V) t) ->
        IterableIterator.t_of_js Obj.magic
          (Ojs.call (t_to_js Obj.magic Obj.magic x124) "keys" [||])
    let (values : ('K, 'V) t -> 'V IterableIterator.t) =
      fun (x128 : ('K, 'V) t) ->
        IterableIterator.t_of_js Obj.magic
          (Ojs.call (t_to_js Obj.magic Obj.magic x128) "values" [||])
    let (entries : ('K, 'V) t -> ('K * 'V) IterableIterator.t) =
      fun (x132 : ('K, 'V) t) ->
        IterableIterator.t_of_js
          (fun (x135 : Ojs.t) ->
             let x136 = x135 in
             ((Obj.magic (Ojs.array_get x136 0)),
               (Obj.magic (Ojs.array_get x136 1))))
          (Ojs.call (t_to_js Obj.magic Obj.magic x132) "entries" [||])
    let (_Symbol_iterator_ : ('K, 'V) t -> ('K * 'V) IterableIterator.t) =
      fun (x137 : ('K, 'V) t) ->
        IterableIterator.t_of_js
          (fun (x140 : Ojs.t) ->
             let x141 = x140 in
             ((Obj.magic (Ojs.array_get x141 0)),
               (Obj.magic (Ojs.array_get x141 1))))
          (Ojs.call (t_to_js Obj.magic Obj.magic x137) "[Symbol.iterator]"
             [||])
    let (trimOld : ('K, 'V) t -> newSize:int -> unit) =
      fun (x143 : ('K, 'V) t) ->
        fun ~newSize:(x142 : int) ->
          ignore
            (Ojs.call (t_to_js Obj.magic Obj.magic x143) "trimOld"
               [|(Ojs.int_to_js x142)|])
    let (get_addItemFirst : ('K, 'V) t -> any) =
      fun (x146 : ('K, 'V) t) ->
        any_of_js
          (Ojs.get_prop_ascii (t_to_js Obj.magic Obj.magic x146)
             "addItemFirst")
    let (set_addItemFirst : ('K, 'V) t -> any -> unit) =
      fun (x149 : ('K, 'V) t) ->
        fun (x150 : any) ->
          Ojs.set_prop_ascii (t_to_js Obj.magic Obj.magic x149)
            "addItemFirst" (any_to_js x150)
    let (get_addItemLast : ('K, 'V) t -> any) =
      fun (x153 : ('K, 'V) t) ->
        any_of_js
          (Ojs.get_prop_ascii (t_to_js Obj.magic Obj.magic x153)
             "addItemLast")
    let (set_addItemLast : ('K, 'V) t -> any -> unit) =
      fun (x156 : ('K, 'V) t) ->
        fun (x157 : any) ->
          Ojs.set_prop_ascii (t_to_js Obj.magic Obj.magic x156) "addItemLast"
            (any_to_js x157)
    let (get_removeItem : ('K, 'V) t -> any) =
      fun (x160 : ('K, 'V) t) ->
        any_of_js
          (Ojs.get_prop_ascii (t_to_js Obj.magic Obj.magic x160) "removeItem")
    let (set_removeItem : ('K, 'V) t -> any -> unit) =
      fun (x163 : ('K, 'V) t) ->
        fun (x164 : any) ->
          Ojs.set_prop_ascii (t_to_js Obj.magic Obj.magic x163) "removeItem"
            (any_to_js x164)
    let (get_touch : ('K, 'V) t -> any) =
      fun (x167 : ('K, 'V) t) ->
        any_of_js
          (Ojs.get_prop_ascii (t_to_js Obj.magic Obj.magic x167) "touch")
    let (set_touch : ('K, 'V) t -> any -> unit) =
      fun (x170 : ('K, 'V) t) ->
        fun (x171 : any) ->
          Ojs.set_prop_ascii (t_to_js Obj.magic Obj.magic x170) "touch"
            (any_to_js x171)
    let (toJSON : ('K, 'V) t -> ('K * 'V) list) =
      fun (x174 : ('K, 'V) t) ->
        Ojs.list_of_js
          (fun (x177 : Ojs.t) ->
             let x178 = x177 in
             ((Obj.magic (Ojs.array_get x178 0)),
               (Obj.magic (Ojs.array_get x178 1))))
          (Ojs.call (t_to_js Obj.magic Obj.magic x174) "toJSON" [||])
    let (fromJSON : ('K, 'V) t -> data:('K * 'V) list -> unit) =
      fun (x184 : ('K, 'V) t) ->
        fun ~data:(x179 : ('K * 'V) list) ->
          ignore
            (Ojs.call (t_to_js Obj.magic Obj.magic x184) "fromJSON"
               [|(Ojs.list_to_js
                    (fun (x180 : ('K * 'V)) ->
                       let (x181, x182) = x180 in
                       let x183 = Ojs.array_make 2 in
                       Ojs.array_set x183 0 (Obj.magic x181);
                       Ojs.array_set x183 1 (Obj.magic x182);
                       x183) x179)|])
    let (cast : ('K, 'V) t -> ('K, 'V) Map.t) =
      fun (x187 : ('K, 'V) t) ->
        Map.t_of_js Obj.magic Obj.magic (t_to_js Obj.magic Obj.magic x187)
  end
module LRUCache =
  struct
    type ('K, 'V) t = ('K, 'V) _LRUCache
    let rec t_of_js :
      'K 'V . (Ojs.t -> 'K) -> (Ojs.t -> 'V) -> Ojs.t -> ('K, 'V) t = fun
      (type __K) -> fun (type __V) ->
      fun (__K_of_js : Ojs.t -> __K) ->
        fun (__V_of_js : Ojs.t -> __V) ->
          fun (x195 : Ojs.t) -> _LRUCache_of_js __K_of_js __V_of_js x195
    and t_to_js :
      'K 'V . ('K -> Ojs.t) -> ('V -> Ojs.t) -> ('K, 'V) t -> Ojs.t = fun
      (type __K) -> fun (type __V) ->
      fun (__K_to_js : __K -> Ojs.t) ->
        fun (__V_to_js : __V -> Ojs.t) ->
          fun (x192 : (__K, __V) _LRUCache) ->
            _LRUCache_to_js __K_to_js __V_to_js x192
    let (get__limit : ('K, 'V) t -> any) =
      fun (x198 : ('K, 'V) t) ->
        any_of_js
          (Ojs.get_prop_ascii (t_to_js Obj.magic Obj.magic x198) "_limit")
    let (set__limit : ('K, 'V) t -> any -> unit) =
      fun (x201 : ('K, 'V) t) ->
        fun (x202 : any) ->
          Ojs.set_prop_ascii (t_to_js Obj.magic Obj.magic x201) "_limit"
            (any_to_js x202)
    let (get__ratio : ('K, 'V) t -> any) =
      fun (x205 : ('K, 'V) t) ->
        any_of_js
          (Ojs.get_prop_ascii (t_to_js Obj.magic Obj.magic x205) "_ratio")
    let (set__ratio : ('K, 'V) t -> any -> unit) =
      fun (x208 : ('K, 'V) t) ->
        fun (x209 : any) ->
          Ojs.set_prop_ascii (t_to_js Obj.magic Obj.magic x208) "_ratio"
            (any_to_js x209)
    let (create : limit:int -> ?ratio:int -> unit -> ('K, 'V) t) =
      fun ~limit:(x212 : int) ->
        fun ?ratio:(x213 : int option) ->
          fun () ->
            t_of_js Obj.magic Obj.magic
              (Ojs.new_obj_arr (Ojs.get_prop_ascii Ojs.global "LRUCache")
                 (let x214 =
                    Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||] in
                  ignore (Ojs.call x214 "push" [|(Ojs.int_to_js x212)|]);
                  (match x213 with
                   | Some x215 ->
                       ignore (Ojs.call x214 "push" [|(Ojs.int_to_js x215)|])
                   | None -> ());
                  x214))
    let (get_limit : ('K, 'V) t -> int) =
      fun (x218 : ('K, 'V) t) ->
        Ojs.int_of_js
          (Ojs.get_prop_ascii (t_to_js Obj.magic Obj.magic x218) "limit")
    let (set_limit : ('K, 'V) t -> int -> unit) =
      fun (x221 : ('K, 'V) t) ->
        fun (x222 : int) ->
          Ojs.set_prop_ascii (t_to_js Obj.magic Obj.magic x221) "limit"
            (Ojs.int_to_js x222)
    let (get_ratio : ('K, 'V) t -> int) =
      fun (x225 : ('K, 'V) t) ->
        Ojs.int_of_js
          (Ojs.get_prop_ascii (t_to_js Obj.magic Obj.magic x225) "ratio")
    let (set_ratio : ('K, 'V) t -> int -> unit) =
      fun (x228 : ('K, 'V) t) ->
        fun (x229 : int) ->
          Ojs.set_prop_ascii (t_to_js Obj.magic Obj.magic x228) "ratio"
            (Ojs.int_to_js x229)
    let (get_ :
      ('K, 'V) t -> key:'K -> ?touch:_Touch -> unit -> 'V or_undefined) =
      fun (x236 : ('K, 'V) t) ->
        fun ~key:(x232 : 'K) ->
          fun ?touch:(x233 : _Touch option) ->
            fun () ->
              or_undefined_of_js Obj.magic
                (let x239 = t_to_js Obj.magic Obj.magic x236 in
                 Ojs.call (Ojs.get_prop_ascii x239 "get") "apply"
                   [|x239;((let x234 =
                              Ojs.new_obj
                                (Ojs.get_prop_ascii Ojs.global "Array") 
                                [||] in
                            ignore
                              (Ojs.call x234 "push" [|(Obj.magic x232)|]);
                            (match x233 with
                             | Some x235 ->
                                 ignore
                                   (Ojs.call x234 "push"
                                      [|(_Touch_to_js x235)|])
                             | None -> ());
                            x234))|])
    let (peek : ('K, 'V) t -> key:'K -> 'V or_undefined) =
      fun (x242 : ('K, 'V) t) ->
        fun ~key:(x241 : 'K) ->
          or_undefined_of_js Obj.magic
            (Ojs.call (t_to_js Obj.magic Obj.magic x242) "peek"
               [|(Obj.magic x241)|])
    let (set_ : ('K, 'V) t -> key:'K -> value:'V -> ('K, 'V) t) =
      fun (x248 : ('K, 'V) t) ->
        fun ~key:(x246 : 'K) ->
          fun ~value:(x247 : 'V) ->
            t_of_js Obj.magic Obj.magic
              (Ojs.call (t_to_js Obj.magic Obj.magic x248) "set"
                 [|(Obj.magic x246);(Obj.magic x247)|])
    let (get_checkTrim : ('K, 'V) t -> any) =
      fun (x253 : ('K, 'V) t) ->
        any_of_js
          (Ojs.get_prop_ascii (t_to_js Obj.magic Obj.magic x253) "checkTrim")
    let (set_checkTrim : ('K, 'V) t -> any -> unit) =
      fun (x256 : ('K, 'V) t) ->
        fun (x257 : any) ->
          Ojs.set_prop_ascii (t_to_js Obj.magic Obj.magic x256) "checkTrim"
            (any_to_js x257)
    let (cast : ('K, 'V) t -> ('K, 'V) _LinkedMap) =
      fun (x260 : ('K, 'V) t) ->
        _LinkedMap_of_js Obj.magic Obj.magic
          (t_to_js Obj.magic Obj.magic x260)
  end
