[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Reflect : sig
  val apply_
    :  target:untyped_function
    -> thisArgument:any
    -> argumentsList:any Array.t
    -> any

  val construct
    :  target:untyped_function
    -> argumentsList:any Array.t
    -> ?newTarget:untyped_function
    -> unit
    -> any

  val defineProperty
    :  target:untyped_object
    -> propertyKey:PropertyKey.t
    -> attributes:PropertyDescriptor.t
    -> bool

  val deleteProperty
    :  target:untyped_object
    -> propertyKey:PropertyKey.t
    -> bool

  val get_
    :  target:untyped_object
    -> propertyKey:PropertyKey.t
    -> ?receiver:any
    -> unit
    -> any

  val getOwnPropertyDescriptor
    :  target:untyped_object
    -> propertyKey:PropertyKey.t
    -> PropertyDescriptor.t or_undefined

  val getPrototypeOf : target:untyped_object -> untyped_object or_null

  val has : target:untyped_object -> propertyKey:PropertyKey.t -> bool

  val isExtensible : target:untyped_object -> bool

  val ownKeys : target:untyped_object -> symbol or_string list

  val preventExtensions : target:untyped_object -> bool

  val set_
    :  target:untyped_object
    -> propertyKey:PropertyKey.t
    -> value:any
    -> ?receiver:any
    -> unit
    -> bool

  val setPrototypeOf
    :  target:untyped_object
    -> proto:untyped_object or_null
    -> bool
end
