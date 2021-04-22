[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es5
module Array =
  struct
    include struct include Array end
    let (find :
      'T t ->
        (this:unit -> value:'T -> index:int -> obj:'T list -> bool) ->
          ?thisArg:any -> unit -> 'S or_undefined)
      =
      fun (x10 : 'T t) ->
        fun (x1 : this:unit -> value:'T -> index:int -> obj:'T list -> bool)
          ->
          fun ?thisArg:(x2 : any option) ->
            fun () ->
              or_undefined_of_js Obj.magic
                (let x12 = t_to_js Obj.magic x10 in
                 Ojs.call (Ojs.get_prop_ascii x12 "find") "apply"
                   [|x12;((let x3 =
                             Ojs.new_obj
                               (Ojs.get_prop_ascii Ojs.global "Array") 
                               [||] in
                           ignore
                             (Ojs.call x3 "push"
                                [|(Ojs.fun_to_js 4
                                     (fun (x5 : Ojs.t) ->
                                        fun (x6 : Ojs.t) ->
                                          fun (x7 : Ojs.t) ->
                                            fun (x8 : Ojs.t) ->
                                              Ojs.bool_to_js
                                                (x1 ~this:(Ojs.unit_of_js x5)
                                                   ~value:(Obj.magic x6)
                                                   ~index:(Ojs.int_of_js x7)
                                                   ~obj:(Ojs.list_of_js
                                                           Obj.magic x8))))|]);
                           (match x2 with
                            | Some x4 ->
                                ignore
                                  (Ojs.call x3 "push" [|(any_to_js x4)|])
                            | None -> ());
                           x3))|])
    let (find' :
      'T t ->
        (value:'T -> index:int -> obj:'T list -> unknown) ->
          ?thisArg:any -> unit -> 'T or_undefined)
      =
      fun (x22 : 'T t) ->
        fun (x14 : value:'T -> index:int -> obj:'T list -> unknown) ->
          fun ?thisArg:(x15 : any option) ->
            fun () ->
              or_undefined_of_js Obj.magic
                (let x24 = t_to_js Obj.magic x22 in
                 Ojs.call (Ojs.get_prop_ascii x24 "find") "apply"
                   [|x24;((let x16 =
                             Ojs.new_obj
                               (Ojs.get_prop_ascii Ojs.global "Array") 
                               [||] in
                           ignore
                             (Ojs.call x16 "push"
                                [|(Ojs.fun_to_js 3
                                     (fun (x18 : Ojs.t) ->
                                        fun (x19 : Ojs.t) ->
                                          fun (x20 : Ojs.t) ->
                                            unknown_to_js
                                              (x14 ~value:(Obj.magic x18)
                                                 ~index:(Ojs.int_of_js x19)
                                                 ~obj:(Ojs.list_of_js
                                                         Obj.magic x20))))|]);
                           (match x15 with
                            | Some x17 ->
                                ignore
                                  (Ojs.call x16 "push" [|(any_to_js x17)|])
                            | None -> ());
                           x16))|])
    let (find_index :
      'T t ->
        (value:'T -> index:int -> obj:'T list -> unknown) ->
          ?thisArg:any -> unit -> int)
      =
      fun (x34 : 'T t) ->
        fun (x26 : value:'T -> index:int -> obj:'T list -> unknown) ->
          fun ?thisArg:(x27 : any option) ->
            fun () ->
              Ojs.int_of_js
                (let x36 = t_to_js Obj.magic x34 in
                 Ojs.call (Ojs.get_prop_ascii x36 "findIndex") "apply"
                   [|x36;((let x28 =
                             Ojs.new_obj
                               (Ojs.get_prop_ascii Ojs.global "Array") 
                               [||] in
                           ignore
                             (Ojs.call x28 "push"
                                [|(Ojs.fun_to_js 3
                                     (fun (x30 : Ojs.t) ->
                                        fun (x31 : Ojs.t) ->
                                          fun (x32 : Ojs.t) ->
                                            unknown_to_js
                                              (x26 ~value:(Obj.magic x30)
                                                 ~index:(Ojs.int_of_js x31)
                                                 ~obj:(Ojs.list_of_js
                                                         Obj.magic x32))))|]);
                           (match x27 with
                            | Some x29 ->
                                ignore
                                  (Ojs.call x28 "push" [|(any_to_js x29)|])
                            | None -> ());
                           x28))|])
    let (fill : 'T t -> value:'T -> ?start:int -> ?end_:int -> unit -> 'T t)
      =
      fun (x43 : 'T t) ->
        fun ~value:(x37 : 'T) ->
          fun ?start:(x38 : int option) ->
            fun ?end_:(x39 : int option) ->
              fun () ->
                t_of_js Obj.magic
                  (let x45 = t_to_js Obj.magic x43 in
                   Ojs.call (Ojs.get_prop_ascii x45 "fill") "apply"
                     [|x45;((let x40 =
                               Ojs.new_obj
                                 (Ojs.get_prop_ascii Ojs.global "Array") 
                                 [||] in
                             ignore (Ojs.call x40 "push" [|(Obj.magic x37)|]);
                             (match x38 with
                              | Some x42 ->
                                  ignore
                                    (Ojs.call x40 "push"
                                       [|(Ojs.int_to_js x42)|])
                              | None -> ());
                             (match x39 with
                              | Some x41 ->
                                  ignore
                                    (Ojs.call x40 "push"
                                       [|(Ojs.int_to_js x41)|])
                              | None -> ());
                             x40))|])
    let (copy_within :
      'T t -> target:int -> start:int -> ?end_:int -> unit -> 'T t) =
      fun (x52 : 'T t) ->
        fun ~target:(x47 : int) ->
          fun ~start:(x48 : int) ->
            fun ?end_:(x49 : int option) ->
              fun () ->
                t_of_js Obj.magic
                  (let x54 = t_to_js Obj.magic x52 in
                   Ojs.call (Ojs.get_prop_ascii x54 "copyWithin") "apply"
                     [|x54;((let x50 =
                               Ojs.new_obj
                                 (Ojs.get_prop_ascii Ojs.global "Array") 
                                 [||] in
                             ignore
                               (Ojs.call x50 "push" [|(Ojs.int_to_js x47)|]);
                             ignore
                               (Ojs.call x50 "push" [|(Ojs.int_to_js x48)|]);
                             (match x49 with
                              | Some x51 ->
                                  ignore
                                    (Ojs.call x50 "push"
                                       [|(Ojs.int_to_js x51)|])
                              | None -> ());
                             x50))|])
    let (to_ml : 'T t -> 'T list) =
      fun (x56 : 'T t) -> Ojs.list_of_js Obj.magic (t_to_js Obj.magic x56)
    let (of_ml : 'T list -> 'T t) =
      fun (x59 : 'T list) -> t_of_js Obj.magic (Ojs.list_to_js Obj.magic x59)
  end
module ArrayConstructor =
  struct
    include struct include ArrayConstructor end
    let (from : t -> array:'T Array.t -> 'T list) =
      fun (x64 : t) ->
        fun ~array:(x62 : 'T Array.t) ->
          Ojs.list_of_js Obj.magic
            (Ojs.call (t_to_js x64) "from" [|(Array.t_to_js Obj.magic x62)|])
    let (from' :
      t ->
        array:'T Array.t ->
          mapfn:(v:'T -> k:int -> 'U) -> ?thisArg:any -> unit -> 'U list)
      =
      fun (x74 : t) ->
        fun ~array:(x66 : 'T Array.t) ->
          fun ~mapfn:(x67 : v:'T -> k:int -> 'U) ->
            fun ?thisArg:(x68 : any option) ->
              fun () ->
                Ojs.list_of_js Obj.magic
                  (let x75 = t_to_js x74 in
                   Ojs.call (Ojs.get_prop_ascii x75 "from") "apply"
                     [|x75;((let x69 =
                               Ojs.new_obj
                                 (Ojs.get_prop_ascii Ojs.global "Array") 
                                 [||] in
                             ignore
                               (Ojs.call x69 "push"
                                  [|(Array.t_to_js Obj.magic x66)|]);
                             ignore
                               (Ojs.call x69 "push"
                                  [|(Ojs.fun_to_js 2
                                       (fun (x71 : Ojs.t) ->
                                          fun (x72 : Ojs.t) ->
                                            Obj.magic
                                              (x67 ~v:(Obj.magic x71)
                                                 ~k:(Ojs.int_of_js x72))))|]);
                             (match x68 with
                              | Some x70 ->
                                  ignore
                                    (Ojs.call x69 "push" [|(any_to_js x70)|])
                              | None -> ());
                             x69))|])
    let (of_ : t -> items:'T list -> 'T list) =
      fun (x80 : t) ->
        fun ~items:(x77 : 'T list) ->
          Ojs.list_of_js Obj.magic
            (let x81 = t_to_js x80 in
             Ojs.call (Ojs.get_prop_ascii x81 "of") "apply"
               [|x81;((let x78 =
                         Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array")
                           [||] in
                       List.iter
                         (fun (x79 : 'T) ->
                            ignore (Ojs.call x78 "push" [|(Obj.magic x79)|]))
                         x77;
                       x78))|])
  end
module DateConstructor =
  struct
    include struct include DateConstructor end
    let (create : t -> value:Date.t or_string or_number -> Date.t) =
      fun (x86 : t) ->
        fun ~value:(x83 : Date.t or_string or_number) ->
          Date.t_of_js
            (Ojs.new_obj (t_to_js x86)
               [|(or_number_to_js
                    (fun (x84 : Date.t or_string) ->
                       or_string_to_js Date.t_to_js x84) x83)|])
  end
module Function =
  struct
    include struct include Function end
    let (get_name : t -> string) =
      fun (x87 : t) ->
        Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x87) "name")
  end
module Math =
  struct
    include struct include Math end
    let (clz32 : int -> int) =
      fun (x88 : int) ->
        Ojs.int_of_js
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "Math") "clz32"
             [|(Ojs.int_to_js x88)|])
    let (imul : x:int -> y:int -> int) =
      fun ~x:(x89 : int) ->
        fun ~y:(x90 : int) ->
          Ojs.int_of_js
            (Ojs.call (Ojs.get_prop_ascii Ojs.global "Math") "imul"
               [|(Ojs.int_to_js x89);(Ojs.int_to_js x90)|])
    let (sign : int -> int) =
      fun (x91 : int) ->
        Ojs.int_of_js
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "Math") "sign"
             [|(Ojs.int_to_js x91)|])
    let (log10 : int -> int) =
      fun (x92 : int) ->
        Ojs.int_of_js
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "Math") "log10"
             [|(Ojs.int_to_js x92)|])
    let (log2 : int -> int) =
      fun (x93 : int) ->
        Ojs.int_of_js
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "Math") "log2"
             [|(Ojs.int_to_js x93)|])
    let (log1p : int -> int) =
      fun (x94 : int) ->
        Ojs.int_of_js
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "Math") "log1p"
             [|(Ojs.int_to_js x94)|])
    let (expm1 : int -> int) =
      fun (x95 : int) ->
        Ojs.int_of_js
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "Math") "expm1"
             [|(Ojs.int_to_js x95)|])
    let (cosh : int -> int) =
      fun (x96 : int) ->
        Ojs.int_of_js
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "Math") "cosh"
             [|(Ojs.int_to_js x96)|])
    let (sinh : int -> int) =
      fun (x97 : int) ->
        Ojs.int_of_js
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "Math") "sinh"
             [|(Ojs.int_to_js x97)|])
    let (tanh : int -> int) =
      fun (x98 : int) ->
        Ojs.int_of_js
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "Math") "tanh"
             [|(Ojs.int_to_js x98)|])
    let (acosh : int -> int) =
      fun (x99 : int) ->
        Ojs.int_of_js
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "Math") "acosh"
             [|(Ojs.int_to_js x99)|])
    let (asinh : int -> int) =
      fun (x100 : int) ->
        Ojs.int_of_js
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "Math") "asinh"
             [|(Ojs.int_to_js x100)|])
    let (atanh : int -> int) =
      fun (x101 : int) ->
        Ojs.int_of_js
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "Math") "atanh"
             [|(Ojs.int_to_js x101)|])
    let (hypot : values:int list -> int) =
      fun ~values:(x102 : int list) ->
        Ojs.int_of_js
          (let x105 = Ojs.get_prop_ascii Ojs.global "Math" in
           Ojs.call (Ojs.get_prop_ascii x105 "hypot") "apply"
             [|x105;((let x103 =
                        Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array")
                          [||] in
                      List.iter
                        (fun (x104 : int) ->
                           ignore
                             (Ojs.call x103 "push" [|(Ojs.int_to_js x104)|]))
                        x102;
                      x103))|])
    let (trunc : int -> int) =
      fun (x106 : int) ->
        Ojs.int_of_js
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "Math") "trunc"
             [|(Ojs.int_to_js x106)|])
    let (fround : int -> int) =
      fun (x107 : int) ->
        Ojs.int_of_js
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "Math") "fround"
             [|(Ojs.int_to_js x107)|])
    let (cbrt : int -> int) =
      fun (x108 : int) ->
        Ojs.int_of_js
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "Math") "cbrt"
             [|(Ojs.int_to_js x108)|])
  end
module NumberConstructor =
  struct
    include struct include NumberConstructor end
    let (get_epsilon : t -> int) =
      fun (x109 : t) ->
        Ojs.int_of_js (Ojs.get_prop_ascii (t_to_js x109) "EPSILON")
    let (is_finite : t -> number:unknown -> bool) =
      fun (x111 : t) ->
        fun ~number:(x110 : unknown) ->
          Ojs.bool_of_js
            (Ojs.call (t_to_js x111) "isFinite" [|(unknown_to_js x110)|])
    let (is_integer : t -> number:unknown -> bool) =
      fun (x113 : t) ->
        fun ~number:(x112 : unknown) ->
          Ojs.bool_of_js
            (Ojs.call (t_to_js x113) "isInteger" [|(unknown_to_js x112)|])
    let (is_na_n : t -> number:unknown -> bool) =
      fun (x115 : t) ->
        fun ~number:(x114 : unknown) ->
          Ojs.bool_of_js
            (Ojs.call (t_to_js x115) "isNaN" [|(unknown_to_js x114)|])
    let (is_safe_integer : t -> number:unknown -> bool) =
      fun (x117 : t) ->
        fun ~number:(x116 : unknown) ->
          Ojs.bool_of_js
            (Ojs.call (t_to_js x117) "isSafeInteger" [|(unknown_to_js x116)|])
    let (get_max_safe_integer : t -> int) =
      fun (x118 : t) ->
        Ojs.int_of_js (Ojs.get_prop_ascii (t_to_js x118) "MAX_SAFE_INTEGER")
    let (get_min_safe_integer : t -> int) =
      fun (x119 : t) ->
        Ojs.int_of_js (Ojs.get_prop_ascii (t_to_js x119) "MIN_SAFE_INTEGER")
    let (parse_float : t -> string:string -> int) =
      fun (x121 : t) ->
        fun ~string:(x120 : string) ->
          Ojs.int_of_js
            (Ojs.call (t_to_js x121) "parseFloat" [|(Ojs.string_to_js x120)|])
    let (parse_int : t -> string:string -> ?radix:int -> unit -> int) =
      fun (x126 : t) ->
        fun ~string:(x122 : string) ->
          fun ?radix:(x123 : int option) ->
            fun () ->
              Ojs.int_of_js
                (let x127 = t_to_js x126 in
                 Ojs.call (Ojs.get_prop_ascii x127 "parseInt") "apply"
                   [|x127;((let x124 =
                              Ojs.new_obj
                                (Ojs.get_prop_ascii Ojs.global "Array") 
                                [||] in
                            ignore
                              (Ojs.call x124 "push"
                                 [|(Ojs.string_to_js x122)|]);
                            (match x123 with
                             | Some x125 ->
                                 ignore
                                   (Ojs.call x124 "push"
                                      [|(Ojs.int_to_js x125)|])
                             | None -> ());
                            x124))|])
  end
module ObjectConstructor =
  struct
    include struct include ObjectConstructor end
    let (assign : t -> target:'T -> source:'U -> ('T, 'U) intersection2) =
      fun (x130 : t) ->
        fun ~target:(x128 : 'T) ->
          fun ~source:(x129 : 'U) ->
            intersection2_of_js Obj.magic Obj.magic
              (Ojs.call (t_to_js x130) "assign"
                 [|(Obj.magic x128);(Obj.magic x129)|])
    let (assign' :
      t ->
        target:'T -> source1:'U -> source2:'V -> ('T, 'U, 'V) intersection3)
      =
      fun (x136 : t) ->
        fun ~target:(x133 : 'T) ->
          fun ~source1:(x134 : 'U) ->
            fun ~source2:(x135 : 'V) ->
              intersection3_of_js Obj.magic Obj.magic Obj.magic
                (Ojs.call (t_to_js x136) "assign"
                   [|(Obj.magic x133);(Obj.magic x134);(Obj.magic x135)|])
    let (assign'' :
      t ->
        target:'T ->
          source1:'U ->
            source2:'V -> source3:'W -> ('T, 'U, 'V, 'W) intersection4)
      =
      fun (x144 : t) ->
        fun ~target:(x140 : 'T) ->
          fun ~source1:(x141 : 'U) ->
            fun ~source2:(x142 : 'V) ->
              fun ~source3:(x143 : 'W) ->
                intersection4_of_js Obj.magic Obj.magic Obj.magic Obj.magic
                  (Ojs.call (t_to_js x144) "assign"
                     [|(Obj.magic x140);(Obj.magic x141);(Obj.magic x142);(
                       Obj.magic x143)|])
    let (assign''' : t -> target:untyped_object -> sources:any list -> any) =
      fun (x153 : t) ->
        fun ~target:(x149 : untyped_object) ->
          fun ~sources:(x150 : any list) ->
            any_of_js
              (let x154 = t_to_js x153 in
               Ojs.call (Ojs.get_prop_ascii x154 "assign") "apply"
                 [|x154;((let x151 =
                            Ojs.new_obj
                              (Ojs.get_prop_ascii Ojs.global "Array") 
                              [||] in
                          ignore
                            (Ojs.call x151 "push"
                               [|(untyped_object_to_js x149)|]);
                          List.iter
                            (fun (x152 : any) ->
                               ignore
                                 (Ojs.call x151 "push" [|(any_to_js x152)|]))
                            x150;
                          x151))|])
    let (get_own_property_symbols : t -> any -> symbol list) =
      fun (x156 : t) ->
        fun (x155 : any) ->
          Ojs.list_of_js symbol_of_js
            (Ojs.call (t_to_js x156) "getOwnPropertySymbols"
               [|(any_to_js x155)|])
    let (keys : t -> any -> string list) =
      fun (x159 : t) ->
        fun (x158 : any) ->
          Ojs.list_of_js Ojs.string_of_js
            (Ojs.call (t_to_js x159) "keys" [|(any_to_js x158)|])
    let (is : t -> value1:any -> value2:any -> bool) =
      fun (x163 : t) ->
        fun ~value1:(x161 : any) ->
          fun ~value2:(x162 : any) ->
            Ojs.bool_of_js
              (Ojs.call (t_to_js x163) "is"
                 [|(any_to_js x161);(any_to_js x162)|])
    let (set_prototype_of : t -> any -> proto:untyped_object or_null -> any)
      =
      fun (x167 : t) ->
        fun (x164 : any) ->
          fun ~proto:(x165 : untyped_object or_null) ->
            any_of_js
              (Ojs.call (t_to_js x167) "setPrototypeOf"
                 [|(any_to_js x164);(or_null_to_js untyped_object_to_js x165)|])
  end
module ReadonlyArray =
  struct
    include struct include ReadonlyArray end
    let (find :
      'T t ->
        (this:unit -> value:'T -> index:int -> obj:'T list -> bool) ->
          ?thisArg:any -> unit -> 'S or_undefined)
      =
      fun (x177 : 'T t) ->
        fun
          (x168 : this:unit -> value:'T -> index:int -> obj:'T list -> bool)
          ->
          fun ?thisArg:(x169 : any option) ->
            fun () ->
              or_undefined_of_js Obj.magic
                (let x179 = t_to_js Obj.magic x177 in
                 Ojs.call (Ojs.get_prop_ascii x179 "find") "apply"
                   [|x179;((let x170 =
                              Ojs.new_obj
                                (Ojs.get_prop_ascii Ojs.global "Array") 
                                [||] in
                            ignore
                              (Ojs.call x170 "push"
                                 [|(Ojs.fun_to_js 4
                                      (fun (x172 : Ojs.t) ->
                                         fun (x173 : Ojs.t) ->
                                           fun (x174 : Ojs.t) ->
                                             fun (x175 : Ojs.t) ->
                                               Ojs.bool_to_js
                                                 (x168
                                                    ~this:(Ojs.unit_of_js
                                                             x172)
                                                    ~value:(Obj.magic x173)
                                                    ~index:(Ojs.int_of_js
                                                              x174)
                                                    ~obj:(Ojs.list_of_js
                                                            Obj.magic x175))))|]);
                            (match x169 with
                             | Some x171 ->
                                 ignore
                                   (Ojs.call x170 "push" [|(any_to_js x171)|])
                             | None -> ());
                            x170))|])
    let (find' :
      'T t ->
        (value:'T -> index:int -> obj:'T list -> unknown) ->
          ?thisArg:any -> unit -> 'T or_undefined)
      =
      fun (x189 : 'T t) ->
        fun (x181 : value:'T -> index:int -> obj:'T list -> unknown) ->
          fun ?thisArg:(x182 : any option) ->
            fun () ->
              or_undefined_of_js Obj.magic
                (let x191 = t_to_js Obj.magic x189 in
                 Ojs.call (Ojs.get_prop_ascii x191 "find") "apply"
                   [|x191;((let x183 =
                              Ojs.new_obj
                                (Ojs.get_prop_ascii Ojs.global "Array") 
                                [||] in
                            ignore
                              (Ojs.call x183 "push"
                                 [|(Ojs.fun_to_js 3
                                      (fun (x185 : Ojs.t) ->
                                         fun (x186 : Ojs.t) ->
                                           fun (x187 : Ojs.t) ->
                                             unknown_to_js
                                               (x181 ~value:(Obj.magic x185)
                                                  ~index:(Ojs.int_of_js x186)
                                                  ~obj:(Ojs.list_of_js
                                                          Obj.magic x187))))|]);
                            (match x182 with
                             | Some x184 ->
                                 ignore
                                   (Ojs.call x183 "push" [|(any_to_js x184)|])
                             | None -> ());
                            x183))|])
    let (find_index :
      'T t ->
        (value:'T -> index:int -> obj:'T list -> unknown) ->
          ?thisArg:any -> unit -> int)
      =
      fun (x201 : 'T t) ->
        fun (x193 : value:'T -> index:int -> obj:'T list -> unknown) ->
          fun ?thisArg:(x194 : any option) ->
            fun () ->
              Ojs.int_of_js
                (let x203 = t_to_js Obj.magic x201 in
                 Ojs.call (Ojs.get_prop_ascii x203 "findIndex") "apply"
                   [|x203;((let x195 =
                              Ojs.new_obj
                                (Ojs.get_prop_ascii Ojs.global "Array") 
                                [||] in
                            ignore
                              (Ojs.call x195 "push"
                                 [|(Ojs.fun_to_js 3
                                      (fun (x197 : Ojs.t) ->
                                         fun (x198 : Ojs.t) ->
                                           fun (x199 : Ojs.t) ->
                                             unknown_to_js
                                               (x193 ~value:(Obj.magic x197)
                                                  ~index:(Ojs.int_of_js x198)
                                                  ~obj:(Ojs.list_of_js
                                                          Obj.magic x199))))|]);
                            (match x194 with
                             | Some x196 ->
                                 ignore
                                   (Ojs.call x195 "push" [|(any_to_js x196)|])
                             | None -> ());
                            x195))|])
    let (to_ml : 'T t -> 'T list) =
      fun (x204 : 'T t) -> Ojs.list_of_js Obj.magic (t_to_js Obj.magic x204)
    let (of_ml : 'T list -> 'T t) =
      fun (x207 : 'T list) ->
        t_of_js Obj.magic (Ojs.list_to_js Obj.magic x207)
  end
module RegExp =
  struct
    include struct include RegExp end
    let (get_flags : t -> string) =
      fun (x210 : t) ->
        Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x210) "flags")
    let (get_sticky : t -> bool) =
      fun (x211 : t) ->
        Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x211) "sticky")
    let (get_unicode : t -> bool) =
      fun (x212 : t) ->
        Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x212) "unicode")
  end
module RegExpConstructor =
  struct
    include struct include RegExpConstructor end
    let (create :
      t -> pattern:RegExp.t or_string -> ?flags:string -> unit -> RegExp.t) =
      fun (x218 : t) ->
        fun ~pattern:(x213 : RegExp.t or_string) ->
          fun ?flags:(x214 : string option) ->
            fun () ->
              RegExp.t_of_js
                (Ojs.new_obj_arr (t_to_js x218)
                   (let x215 =
                      Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array")
                        [||] in
                    ignore
                      (Ojs.call x215 "push"
                         [|(or_string_to_js RegExp.t_to_js x213)|]);
                    (match x214 with
                     | Some x216 ->
                         ignore
                           (Ojs.call x215 "push" [|(Ojs.string_to_js x216)|])
                     | None -> ());
                    x215))
    let (apply :
      t -> pattern:RegExp.t or_string -> ?flags:string -> unit -> RegExp.t) =
      fun (x224 : t) ->
        fun ~pattern:(x219 : RegExp.t or_string) ->
          fun ?flags:(x220 : string option) ->
            fun () ->
              RegExp.t_of_js
                (Ojs.call (t_to_js x224) "apply"
                   [|Ojs.null;((let x221 =
                                  Ojs.new_obj
                                    (Ojs.get_prop_ascii Ojs.global "Array")
                                    [||] in
                                ignore
                                  (Ojs.call x221 "push"
                                     [|(or_string_to_js RegExp.t_to_js x219)|]);
                                (match x220 with
                                 | Some x222 ->
                                     ignore
                                       (Ojs.call x221 "push"
                                          [|(Ojs.string_to_js x222)|])
                                 | None -> ());
                                x221))|])
  end
module String =
  struct
    include struct include String end
    let (code_point_at : t -> pos:int -> int or_undefined) =
      fun (x226 : t) ->
        fun ~pos:(x225 : int) ->
          or_undefined_of_js Ojs.int_of_js
            (Ojs.call (t_to_js x226) "codePointAt" [|(Ojs.int_to_js x225)|])
    let (includes :
      t -> searchString:string -> ?position:int -> unit -> bool) =
      fun (x232 : t) ->
        fun ~searchString:(x228 : string) ->
          fun ?position:(x229 : int option) ->
            fun () ->
              Ojs.bool_of_js
                (let x233 = t_to_js x232 in
                 Ojs.call (Ojs.get_prop_ascii x233 "includes") "apply"
                   [|x233;((let x230 =
                              Ojs.new_obj
                                (Ojs.get_prop_ascii Ojs.global "Array") 
                                [||] in
                            ignore
                              (Ojs.call x230 "push"
                                 [|(Ojs.string_to_js x228)|]);
                            (match x229 with
                             | Some x231 ->
                                 ignore
                                   (Ojs.call x230 "push"
                                      [|(Ojs.int_to_js x231)|])
                             | None -> ());
                            x230))|])
    let (ends_with :
      t -> searchString:string -> ?endPosition:int -> unit -> bool) =
      fun (x238 : t) ->
        fun ~searchString:(x234 : string) ->
          fun ?endPosition:(x235 : int option) ->
            fun () ->
              Ojs.bool_of_js
                (let x239 = t_to_js x238 in
                 Ojs.call (Ojs.get_prop_ascii x239 "endsWith") "apply"
                   [|x239;((let x236 =
                              Ojs.new_obj
                                (Ojs.get_prop_ascii Ojs.global "Array") 
                                [||] in
                            ignore
                              (Ojs.call x236 "push"
                                 [|(Ojs.string_to_js x234)|]);
                            (match x235 with
                             | Some x237 ->
                                 ignore
                                   (Ojs.call x236 "push"
                                      [|(Ojs.int_to_js x237)|])
                             | None -> ());
                            x236))|])
    let (normalize : t -> form:[ `NFC  | `NFD  | `NFKC  | `NFKD ] -> string)
      =
      fun (x241 : t) ->
        fun ~form:(x240 : [ `NFC  | `NFD  | `NFKC  | `NFKD ]) ->
          Ojs.string_of_js
            (Ojs.call (t_to_js x241) "normalize"
               [|((match x240 with
                   | `NFC -> Ojs.string_to_js "NFC"
                   | `NFD -> Ojs.string_to_js "NFD"
                   | `NFKC -> Ojs.string_to_js "NFKC"
                   | `NFKD -> Ojs.string_to_js "NFKD"))|])
    let (normalize' : t -> ?form:string -> unit -> string) =
      fun (x245 : t) ->
        fun ?form:(x242 : string option) ->
          fun () ->
            Ojs.string_of_js
              (let x246 = t_to_js x245 in
               Ojs.call (Ojs.get_prop_ascii x246 "normalize") "apply"
                 [|x246;((let x243 =
                            Ojs.new_obj
                              (Ojs.get_prop_ascii Ojs.global "Array") 
                              [||] in
                          (match x242 with
                           | Some x244 ->
                               ignore
                                 (Ojs.call x243 "push"
                                    [|(Ojs.string_to_js x244)|])
                           | None -> ());
                          x243))|])
    let (repeat : t -> count:int -> string) =
      fun (x248 : t) ->
        fun ~count:(x247 : int) ->
          Ojs.string_of_js
            (Ojs.call (t_to_js x248) "repeat" [|(Ojs.int_to_js x247)|])
    let (starts_with :
      t -> searchString:string -> ?position:int -> unit -> bool) =
      fun (x253 : t) ->
        fun ~searchString:(x249 : string) ->
          fun ?position:(x250 : int option) ->
            fun () ->
              Ojs.bool_of_js
                (let x254 = t_to_js x253 in
                 Ojs.call (Ojs.get_prop_ascii x254 "startsWith") "apply"
                   [|x254;((let x251 =
                              Ojs.new_obj
                                (Ojs.get_prop_ascii Ojs.global "Array") 
                                [||] in
                            ignore
                              (Ojs.call x251 "push"
                                 [|(Ojs.string_to_js x249)|]);
                            (match x250 with
                             | Some x252 ->
                                 ignore
                                   (Ojs.call x251 "push"
                                      [|(Ojs.int_to_js x252)|])
                             | None -> ());
                            x251))|])
    let (anchor : t -> name:string -> string) =
      fun (x256 : t) ->
        fun ~name:(x255 : string) ->
          Ojs.string_of_js
            (Ojs.call (t_to_js x256) "anchor" [|(Ojs.string_to_js x255)|])
    let (big : t -> string) =
      fun (x257 : t) -> Ojs.string_of_js (Ojs.call (t_to_js x257) "big" [||])
    let (blink : t -> string) =
      fun (x258 : t) ->
        Ojs.string_of_js (Ojs.call (t_to_js x258) "blink" [||])
    let (bold : t -> string) =
      fun (x259 : t) ->
        Ojs.string_of_js (Ojs.call (t_to_js x259) "bold" [||])
    let (fixed : t -> string) =
      fun (x260 : t) ->
        Ojs.string_of_js (Ojs.call (t_to_js x260) "fixed" [||])
    let (fontcolor : t -> color:string -> string) =
      fun (x262 : t) ->
        fun ~color:(x261 : string) ->
          Ojs.string_of_js
            (Ojs.call (t_to_js x262) "fontcolor" [|(Ojs.string_to_js x261)|])
    let (fontsize : t -> size:int -> string) =
      fun (x264 : t) ->
        fun ~size:(x263 : int) ->
          Ojs.string_of_js
            (Ojs.call (t_to_js x264) "fontsize" [|(Ojs.int_to_js x263)|])
    let (fontsize' : t -> size:string -> string) =
      fun (x266 : t) ->
        fun ~size:(x265 : string) ->
          Ojs.string_of_js
            (Ojs.call (t_to_js x266) "fontsize" [|(Ojs.string_to_js x265)|])
    let (italics : t -> string) =
      fun (x267 : t) ->
        Ojs.string_of_js (Ojs.call (t_to_js x267) "italics" [||])
    let (link : t -> url:string -> string) =
      fun (x269 : t) ->
        fun ~url:(x268 : string) ->
          Ojs.string_of_js
            (Ojs.call (t_to_js x269) "link" [|(Ojs.string_to_js x268)|])
    let (small : t -> string) =
      fun (x270 : t) ->
        Ojs.string_of_js (Ojs.call (t_to_js x270) "small" [||])
    let (strike : t -> string) =
      fun (x271 : t) ->
        Ojs.string_of_js (Ojs.call (t_to_js x271) "strike" [||])
    let (sub : t -> string) =
      fun (x272 : t) -> Ojs.string_of_js (Ojs.call (t_to_js x272) "sub" [||])
    let (sup : t -> string) =
      fun (x273 : t) -> Ojs.string_of_js (Ojs.call (t_to_js x273) "sup" [||])
    let (to_ml : t -> string) =
      fun (x274 : t) -> Ojs.string_of_js (t_to_js x274)
    let (of_ml : string -> t) =
      fun (x275 : string) -> t_of_js (Ojs.string_to_js x275)
  end
module StringConstructor =
  struct
    include struct include StringConstructor end
    let (from_code_point : t -> codePoints:int list -> string) =
      fun (x279 : t) ->
        fun ~codePoints:(x276 : int list) ->
          Ojs.string_of_js
            (let x280 = t_to_js x279 in
             Ojs.call (Ojs.get_prop_ascii x280 "fromCodePoint") "apply"
               [|x280;((let x277 =
                          Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array")
                            [||] in
                        List.iter
                          (fun (x278 : int) ->
                             ignore
                               (Ojs.call x277 "push" [|(Ojs.int_to_js x278)|]))
                          x276;
                        x277))|])
    let (raw :
      t ->
        template:TemplateStringsArray.t -> substitutions:any list -> string)
      =
      fun (x285 : t) ->
        fun ~template:(x281 : TemplateStringsArray.t) ->
          fun ~substitutions:(x282 : any list) ->
            Ojs.string_of_js
              (let x286 = t_to_js x285 in
               Ojs.call (Ojs.get_prop_ascii x286 "raw") "apply"
                 [|x286;((let x283 =
                            Ojs.new_obj
                              (Ojs.get_prop_ascii Ojs.global "Array") 
                              [||] in
                          ignore
                            (Ojs.call x283 "push"
                               [|(TemplateStringsArray.t_to_js x281)|]);
                          List.iter
                            (fun (x284 : any) ->
                               ignore
                                 (Ojs.call x283 "push" [|(any_to_js x284)|]))
                            x282;
                          x283))|])
  end
