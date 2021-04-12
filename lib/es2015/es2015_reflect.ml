[@@@ocaml.warning "-7-32-39"]

[@@@ocaml.warning "-7-11-32-33-39"]

open Es5

module Internal = struct
  module AnonymousInterfaces = struct end

  module Types = struct
    open AnonymousInterfaces
  end
end

open Internal
open AnonymousInterfaces
open Types

module Reflect = struct
  let (apply_ :
        target:untyped_function
        -> thisArgument:any
        -> argumentsList:any Array.t
        -> any)
    =
   fun ~target:(x1 : untyped_function)
       ~thisArgument:(x2 : any)
       ~argumentsList:(x3 : any Array.t) ->
    any_of_js
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Reflect")
         "apply"
         [| untyped_function_to_js x1
          ; any_to_js x2
          ; Array.t_to_js any_to_js x3
         |])

  let (construct :
        target:untyped_function
        -> argumentsList:any Array.t
        -> ?newTarget:untyped_function
        -> unit
        -> any)
    =
   fun ~target:(x5 : untyped_function)
       ~argumentsList:(x6 : any Array.t)
       ?newTarget:(x7 : untyped_function option)
       () ->
    any_of_js
      (let x11 = Ojs.get_prop_ascii Ojs.global "Reflect" in
       Ojs.call
         (Ojs.get_prop_ascii x11 "construct")
         "apply"
         [| x11
          ; (let x8 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore (Ojs.call x8 "push" [| untyped_function_to_js x5 |]);
             ignore (Ojs.call x8 "push" [| Array.t_to_js any_to_js x6 |]);
             (match x7 with
             | Some x9 ->
               ignore (Ojs.call x8 "push" [| untyped_function_to_js x9 |])
             | None ->
               ());
             x8)
         |])

  let (defineProperty :
        target:untyped_object
        -> propertyKey:PropertyKey.t
        -> attributes:PropertyDescriptor.t
        -> bool)
    =
   fun ~target:(x12 : untyped_object)
       ~propertyKey:(x13 : PropertyKey.t)
       ~attributes:(x14 : PropertyDescriptor.t) ->
    Ojs.bool_of_js
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Reflect")
         "defineProperty"
         [| untyped_object_to_js x12
          ; PropertyKey.t_to_js x13
          ; PropertyDescriptor.t_to_js x14
         |])

  let (deleteProperty :
        target:untyped_object -> propertyKey:PropertyKey.t -> bool)
    =
   fun ~target:(x15 : untyped_object) ~propertyKey:(x16 : PropertyKey.t) ->
    Ojs.bool_of_js
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Reflect")
         "deleteProperty"
         [| untyped_object_to_js x15; PropertyKey.t_to_js x16 |])

  let (get_ :
        target:untyped_object
        -> propertyKey:PropertyKey.t
        -> ?receiver:any
        -> unit
        -> any)
    =
   fun ~target:(x17 : untyped_object)
       ~propertyKey:(x18 : PropertyKey.t)
       ?receiver:(x19 : any option)
       () ->
    any_of_js
      (let x22 = Ojs.get_prop_ascii Ojs.global "Reflect" in
       Ojs.call
         (Ojs.get_prop_ascii x22 "get")
         "apply"
         [| x22
          ; (let x20 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore (Ojs.call x20 "push" [| untyped_object_to_js x17 |]);
             ignore (Ojs.call x20 "push" [| PropertyKey.t_to_js x18 |]);
             (match x19 with
             | Some x21 ->
               ignore (Ojs.call x20 "push" [| any_to_js x21 |])
             | None ->
               ());
             x20)
         |])

  let (getOwnPropertyDescriptor :
        target:untyped_object
        -> propertyKey:PropertyKey.t
        -> PropertyDescriptor.t or_undefined)
    =
   fun ~target:(x23 : untyped_object) ~propertyKey:(x24 : PropertyKey.t) ->
    or_undefined_of_js
      PropertyDescriptor.t_of_js
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Reflect")
         "getOwnPropertyDescriptor"
         [| untyped_object_to_js x23; PropertyKey.t_to_js x24 |])

  let (getPrototypeOf : target:untyped_object -> untyped_object or_null) =
   fun ~target:(x26 : untyped_object) ->
    or_null_of_js
      untyped_object_of_js
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Reflect")
         "getPrototypeOf"
         [| untyped_object_to_js x26 |])

  let (has : target:untyped_object -> propertyKey:PropertyKey.t -> bool) =
   fun ~target:(x28 : untyped_object) ~propertyKey:(x29 : PropertyKey.t) ->
    Ojs.bool_of_js
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Reflect")
         "has"
         [| untyped_object_to_js x28; PropertyKey.t_to_js x29 |])

  let (isExtensible : target:untyped_object -> bool) =
   fun ~target:(x30 : untyped_object) ->
    Ojs.bool_of_js
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Reflect")
         "isExtensible"
         [| untyped_object_to_js x30 |])

  let (ownKeys : target:untyped_object -> symbol or_string list) =
   fun ~target:(x31 : untyped_object) ->
    Ojs.list_of_js
      (fun (x32 : Ojs.t) -> or_string_of_js symbol_of_js x32)
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Reflect")
         "ownKeys"
         [| untyped_object_to_js x31 |])

  let (preventExtensions : target:untyped_object -> bool) =
   fun ~target:(x34 : untyped_object) ->
    Ojs.bool_of_js
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Reflect")
         "preventExtensions"
         [| untyped_object_to_js x34 |])

  let (set_ :
        target:untyped_object
        -> propertyKey:PropertyKey.t
        -> value:any
        -> ?receiver:any
        -> unit
        -> bool)
    =
   fun ~target:(x35 : untyped_object)
       ~propertyKey:(x36 : PropertyKey.t)
       ~value:(x37 : any)
       ?receiver:(x38 : any option)
       () ->
    Ojs.bool_of_js
      (let x41 = Ojs.get_prop_ascii Ojs.global "Reflect" in
       Ojs.call
         (Ojs.get_prop_ascii x41 "set")
         "apply"
         [| x41
          ; (let x39 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             ignore (Ojs.call x39 "push" [| untyped_object_to_js x35 |]);
             ignore (Ojs.call x39 "push" [| PropertyKey.t_to_js x36 |]);
             ignore (Ojs.call x39 "push" [| any_to_js x37 |]);
             (match x38 with
             | Some x40 ->
               ignore (Ojs.call x39 "push" [| any_to_js x40 |])
             | None ->
               ());
             x39)
         |])

  let (setPrototypeOf :
        target:untyped_object -> proto:untyped_object or_null -> bool)
    =
   fun ~target:(x42 : untyped_object) ~proto:(x43 : untyped_object or_null) ->
    Ojs.bool_of_js
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Reflect")
         "setPrototypeOf"
         [| untyped_object_to_js x42; or_null_to_js untyped_object_to_js x43 |])
end
