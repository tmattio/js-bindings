[@@@ocaml.warning "-7-32-39"]

[@@@ocaml.warning "-7-11-32-33-39"]

open Es5
include Es2015_iterable

module Internal = struct
  module AnonymousInterfaces = struct end

  module Types = struct
    open AnonymousInterfaces

    type ('T, 'TReturn, 'TNext) _Generator =
      [ `Generator of 'T * 'TReturn * 'TNext ] intf

    and _GeneratorFunction = [ `GeneratorFunction ] intf

    and _GeneratorFunctionConstructor = [ `GeneratorFunctionConstructor ] intf

    let rec _Generator_of_js :
              'T 'TReturn 'TNext.
              (Ojs.t -> 'T)
              -> (Ojs.t -> 'TReturn)
              -> (Ojs.t -> 'TNext)
              -> Ojs.t
              -> ('T, 'TReturn, 'TNext) _Generator
      =
     fun _T _TReturn _TNext -> Obj.magic

    and _Generator_to_js :
          'T 'TReturn 'TNext.
          ('T -> Ojs.t)
          -> ('TReturn -> Ojs.t)
          -> ('TNext -> Ojs.t)
          -> ('T, 'TReturn, 'TNext) _Generator
          -> Ojs.t
      =
     fun _T _TReturn _TNext -> Obj.magic

    and _GeneratorFunction_of_js : Ojs.t -> _GeneratorFunction = Obj.magic

    and _GeneratorFunction_to_js : _GeneratorFunction -> Ojs.t = Obj.magic

    and _GeneratorFunctionConstructor_of_js
        : Ojs.t -> _GeneratorFunctionConstructor
      =
      Obj.magic

    and _GeneratorFunctionConstructor_to_js
        : _GeneratorFunctionConstructor -> Ojs.t
      =
      Obj.magic
  end
end

open Internal
open AnonymousInterfaces
open Types

module Generator = struct
  type ('T, 'TReturn, 'TNext) t = ('T, 'TReturn, 'TNext) _Generator

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
        (x5 : Ojs.t) ->
     _Generator_of_js __T_of_js __TReturn_of_js __TNext_of_js x5

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
        (x1 : (__T, __TReturn, __TNext) _Generator) ->
     _Generator_to_js __T_to_js __TReturn_to_js __TNext_to_js x1

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
        (x13 : Ojs.t) ->
     t_of_js __T_of_js __TReturn_of_js __TNext_of_js x13

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
        (x9 : (__T, __TReturn, __TNext) t) ->
     t_to_js __T_to_js __TReturn_to_js __TNext_to_js x9

  type ('T, 'TReturn) t_2 = ('T, 'TReturn, unknown) t

  let rec t_2_of_js :
            'T 'TReturn.
            (Ojs.t -> 'T) -> (Ojs.t -> 'TReturn) -> Ojs.t -> ('T, 'TReturn) t_2
    =
    fun (type __T __TReturn)
        (__T_of_js : Ojs.t -> __T)
        (__TReturn_of_js : Ojs.t -> __TReturn)
        (x21 : Ojs.t) ->
     t_of_js __T_of_js __TReturn_of_js unknown_of_js x21

  and t_2_to_js :
        'T 'TReturn.
        ('T -> Ojs.t) -> ('TReturn -> Ojs.t) -> ('T, 'TReturn) t_2 -> Ojs.t
    =
    fun (type __T __TReturn)
        (__T_to_js : __T -> Ojs.t)
        (__TReturn_to_js : __TReturn -> Ojs.t)
        (x17 : (__T, __TReturn, unknown) t) ->
     t_to_js __T_to_js __TReturn_to_js unknown_to_js x17

  type 'T t_1 = ('T, any, unknown) t

  let rec t_1_of_js : 'T. (Ojs.t -> 'T) -> Ojs.t -> 'T t_1 =
    fun (type __T) (__T_of_js : Ojs.t -> __T) (x29 : Ojs.t) ->
     t_of_js __T_of_js any_of_js unknown_of_js x29

  and t_1_to_js : 'T. ('T -> Ojs.t) -> 'T t_1 -> Ojs.t =
    fun (type __T) (__T_to_js : __T -> Ojs.t) (x25 : (__T, any, unknown) t) ->
     t_to_js __T_to_js any_to_js unknown_to_js x25

  type t_0 = (unknown, any, unknown) t

  let rec t_0_of_js : Ojs.t -> t_0 =
   fun (x37 : Ojs.t) -> t_of_js unknown_of_js any_of_js unknown_of_js x37

  and t_0_to_js : t_0 -> Ojs.t =
   fun (x33 : (unknown, any, unknown) t) ->
    t_to_js unknown_to_js any_to_js unknown_to_js x33

  let (next :
        ('T, 'TReturn, 'TNext) t
        -> args:any list
        -> ('T, 'TReturn) IteratorResult.t)
    =
   fun (x44 : ('T, 'TReturn, 'TNext) t) ~args:(x41 : any list) ->
    IteratorResult.t_of_js
      Obj.magic
      Obj.magic
      (let x48 = t_to_js Obj.magic Obj.magic Obj.magic x44 in
       Ojs.call
         (Ojs.get_prop_ascii x48 "next")
         "apply"
         [| x48
          ; (let x42 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             List.iter
               (fun (x43 : any) ->
                 ignore (Ojs.call x42 "push" [| any_to_js x43 |]))
               x41;
             x42)
         |])

  let (return :
        ('T, 'TReturn, 'TNext) t
        -> value:'TReturn
        -> ('T, 'TReturn) IteratorResult.t)
    =
   fun (x52 : ('T, 'TReturn, 'TNext) t) ~value:(x51 : 'TReturn) ->
    IteratorResult.t_of_js
      Obj.magic
      Obj.magic
      (Ojs.call
         (t_to_js Obj.magic Obj.magic Obj.magic x52)
         "return"
         [| Obj.magic x51 |])

  let (throw :
        ('T, 'TReturn, 'TNext) t -> e:any -> ('T, 'TReturn) IteratorResult.t)
    =
   fun (x59 : ('T, 'TReturn, 'TNext) t) ~e:(x58 : any) ->
    IteratorResult.t_of_js
      Obj.magic
      Obj.magic
      (Ojs.call
         (t_to_js Obj.magic Obj.magic Obj.magic x59)
         "throw"
         [| any_to_js x58 |])

  let (cast : ('T, 'TReturn, 'TNext) t -> ('T, 'TReturn, 'TNext) Iterator.t) =
   fun (x72 : ('T, 'TReturn, 'TNext) t) ->
    Iterator.t_of_js
      Obj.magic
      Obj.magic
      Obj.magic
      (t_to_js Obj.magic Obj.magic Obj.magic x72)
end

module GeneratorFunction = struct
  type t = _GeneratorFunction

  let rec t_of_js : Ojs.t -> t =
   fun (x80 : Ojs.t) -> _GeneratorFunction_of_js x80

  and t_to_js : t -> Ojs.t =
   fun (x79 : _GeneratorFunction) -> _GeneratorFunction_to_js x79

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x82 : Ojs.t) -> t_of_js x82

  and t_0_to_js : t_0 -> Ojs.t = fun (x81 : t) -> t_to_js x81

  let (create : t -> args:any list -> (unknown, any, unknown) _Generator) =
   fun (x86 : t) ~args:(x83 : any list) ->
    _Generator_of_js
      unknown_of_js
      any_of_js
      unknown_of_js
      (Ojs.new_obj_arr
         (t_to_js x86)
         (let x84 = Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||] in
          List.iter
            (fun (x85 : any) ->
              ignore (Ojs.call x84 "push" [| any_to_js x85 |]))
            x83;
          x84))

  let (apply : t -> args:any list -> (unknown, any, unknown) _Generator) =
   fun (x93 : t) ~args:(x90 : any list) ->
    _Generator_of_js
      unknown_of_js
      any_of_js
      unknown_of_js
      (Ojs.call
         (t_to_js x93)
         "apply"
         [| Ojs.null
          ; (let x91 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             List.iter
               (fun (x92 : any) ->
                 ignore (Ojs.call x91 "push" [| any_to_js x92 |]))
               x90;
             x91)
         |])

  let (get_length : t -> float) =
   fun (x97 : t) -> Ojs.float_of_js (Ojs.get_prop_ascii (t_to_js x97) "length")

  let (get_name : t -> string) =
   fun (x98 : t) -> Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x98) "name")

  let (get_prototype : t -> (unknown, any, unknown) _Generator) =
   fun (x99 : t) ->
    _Generator_of_js
      unknown_of_js
      any_of_js
      unknown_of_js
      (Ojs.get_prop_ascii (t_to_js x99) "prototype")
end

module GeneratorFunctionConstructor = struct
  type t = _GeneratorFunctionConstructor

  let rec t_of_js : Ojs.t -> t =
   fun (x104 : Ojs.t) -> _GeneratorFunctionConstructor_of_js x104

  and t_to_js : t -> Ojs.t =
   fun (x103 : _GeneratorFunctionConstructor) ->
    _GeneratorFunctionConstructor_to_js x103

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x106 : Ojs.t) -> t_of_js x106

  and t_0_to_js : t_0 -> Ojs.t = fun (x105 : t) -> t_to_js x105

  let (create : t -> args:string list -> _GeneratorFunction) =
   fun (x110 : t) ~args:(x107 : string list) ->
    _GeneratorFunction_of_js
      (Ojs.new_obj_arr
         (t_to_js x110)
         (let x108 = Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||] in
          List.iter
            (fun (x109 : string) ->
              ignore (Ojs.call x108 "push" [| Ojs.string_to_js x109 |]))
            x107;
          x108))

  let (apply : t -> args:string list -> _GeneratorFunction) =
   fun (x114 : t) ~args:(x111 : string list) ->
    _GeneratorFunction_of_js
      (Ojs.call
         (t_to_js x114)
         "apply"
         [| Ojs.null
          ; (let x112 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             List.iter
               (fun (x113 : string) ->
                 ignore (Ojs.call x112 "push" [| Ojs.string_to_js x113 |]))
               x111;
             x112)
         |])

  let (get_length : t -> float) =
   fun (x115 : t) ->
    Ojs.float_of_js (Ojs.get_prop_ascii (t_to_js x115) "length")

  let (get_name : t -> string) =
   fun (x116 : t) -> Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x116) "name")

  let (get_prototype : t -> _GeneratorFunction) =
   fun (x117 : t) ->
    _GeneratorFunction_of_js (Ojs.get_prop_ascii (t_to_js x117) "prototype")
end
