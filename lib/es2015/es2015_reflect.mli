[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Reflect : sig
  val apply_
    :  target:untyped_function
    -> thisArgument:any
    -> argumentsList:any Array.t
    -> any
    [@@js.global "apply"]

  val construct
    :  target:untyped_function
    -> argumentsList:any Array.t
    -> ?newTarget:untyped_function
    -> unit
    -> any
    [@@js.global "construct"]

  val defineProperty
    :  target:untyped_object
    -> propertyKey:PropertyKey.t
    -> attributes:PropertyDescriptor.t
    -> bool
    [@@js.global "defineProperty"]

  val deleteProperty
    :  target:untyped_object
    -> propertyKey:PropertyKey.t
    -> bool
    [@@js.global "deleteProperty"]

  val get_
    :  target:untyped_object
    -> propertyKey:PropertyKey.t
    -> ?receiver:any
    -> unit
    -> any
    [@@js.global "get"]

  val getOwnPropertyDescriptor
    :  target:untyped_object
    -> propertyKey:PropertyKey.t
    -> PropertyDescriptor.t or_undefined
    [@@js.global "getOwnPropertyDescriptor"]

  val getPrototypeOf : target:untyped_object -> untyped_object or_null
    [@@js.global "getPrototypeOf"]

  val has : target:untyped_object -> propertyKey:PropertyKey.t -> bool
    [@@js.global "has"]

  val isExtensible : target:untyped_object -> bool [@@js.global "isExtensible"]

  val ownKeys : target:untyped_object -> symbol or_string list
    [@@js.global "ownKeys"]

  val preventExtensions : target:untyped_object -> bool
    [@@js.global "preventExtensions"]

  val set_
    :  target:untyped_object
    -> propertyKey:PropertyKey.t
    -> value:any
    -> ?receiver:any
    -> unit
    -> bool
    [@@js.global "set"]

  val setPrototypeOf
    :  target:untyped_object
    -> proto:untyped_object or_null
    -> bool
    [@@js.global "setPrototypeOf"]
end
[@@js.scope "Reflect"]
