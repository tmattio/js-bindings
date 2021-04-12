[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module ProxyHandler : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val apply_ : 'T t -> target:'T -> thisArg:any -> argArray:any list -> any

  val construct
    :  'T t
    -> target:'T
    -> argArray:any list
    -> newTarget:untyped_function
    -> untyped_object

  val defineProperty
    :  'T t
    -> target:'T
    -> p:symbol or_string
    -> attributes:PropertyDescriptor.t
    -> bool

  val deleteProperty : 'T t -> target:'T -> p:symbol or_string -> bool

  val get_ : 'T t -> target:'T -> p:symbol or_string -> receiver:any -> any

  val getOwnPropertyDescriptor
    :  'T t
    -> target:'T
    -> p:symbol or_string
    -> PropertyDescriptor.t or_undefined

  val getPrototypeOf : 'T t -> target:'T -> untyped_object or_null

  val has : 'T t -> target:'T -> p:symbol or_string -> bool

  val isExtensible : 'T t -> target:'T -> bool

  val ownKeys : 'T t -> target:'T -> symbol or_string Array.t

  val preventExtensions : 'T t -> target:'T -> bool

  val set_
    :  'T t
    -> target:'T
    -> p:symbol or_string
    -> value:any
    -> receiver:any
    -> bool

  val setPrototypeOf : 'T t -> target:'T -> v:untyped_object or_null -> bool
end

module Revocable : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_proxy : t -> 'T [@@js.get "proxy"]

  val set_proxy : t -> 'T -> unit [@@js.set "proxy"]

  val revoke : t -> unit [@@js.call "revoke"]
end

module ProxyConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val revocable : t -> target:'T -> handler:'T ProxyHandler.t -> Revocable.t

  val create : t -> target:'T -> handler:'T ProxyHandler.t -> 'T
end

val proxy : ProxyConstructor.t
