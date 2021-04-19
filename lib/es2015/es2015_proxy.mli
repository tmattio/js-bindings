[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Revocable : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_proxy : t -> 'T [@@js.get "proxy"]

  val set_proxy : t -> 'T -> unit [@@js.set "proxy"]

  val revoke : t -> unit [@@js.call "revoke"]
end

module ProxyHandler : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val apply_ : 'T t -> target:'T -> thisArg:any -> argArray:any list -> any
    [@@js.call "apply"]

  val construct
    :  'T t
    -> target:'T
    -> argArray:any list
    -> newTarget:untyped_function
    -> untyped_object
    [@@js.call "construct"]

  val defineProperty
    :  'T t
    -> target:'T
    -> p:symbol or_string
    -> attributes:PropertyDescriptor.t
    -> bool
    [@@js.call "defineProperty"]

  val deleteProperty : 'T t -> target:'T -> p:symbol or_string -> bool
    [@@js.call "deleteProperty"]

  val get_ : 'T t -> target:'T -> p:symbol or_string -> receiver:any -> any
    [@@js.call "get"]

  val getOwnPropertyDescriptor
    :  'T t
    -> target:'T
    -> p:symbol or_string
    -> PropertyDescriptor.t or_undefined
    [@@js.call "getOwnPropertyDescriptor"]

  val getPrototypeOf : 'T t -> target:'T -> untyped_object or_null
    [@@js.call "getPrototypeOf"]

  val has : 'T t -> target:'T -> p:symbol or_string -> bool [@@js.call "has"]

  val isExtensible : 'T t -> target:'T -> bool [@@js.call "isExtensible"]

  val ownKeys : 'T t -> target:'T -> symbol or_string Array.t
    [@@js.call "ownKeys"]

  val preventExtensions : 'T t -> target:'T -> bool
    [@@js.call "preventExtensions"]

  val set_
    :  'T t
    -> target:'T
    -> p:symbol or_string
    -> value:any
    -> receiver:any
    -> bool
    [@@js.call "set"]

  val setPrototypeOf : 'T t -> target:'T -> v:untyped_object or_null -> bool
    [@@js.call "setPrototypeOf"]
end
[@@js.scope "ProxyHandler"]

module ProxyConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val revocable : t -> target:'T -> handler:'T ProxyHandler.t -> Revocable.t
    [@@js.call "revocable"]

  val create : t -> target:'T -> handler:'T ProxyHandler.t -> 'T
    [@@js.apply_newable]
end
[@@js.scope "ProxyConstructor"]

val proxy : ProxyConstructor.t [@@js.global "Proxy"]
