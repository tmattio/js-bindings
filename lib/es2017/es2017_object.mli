[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2016

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module AnonymousInterface1 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get : t -> string -> 'T [@@js.index_get]

  val set : t -> string -> 'T -> unit [@@js.index_set]
end

module AnonymousInterface2 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get : t -> string -> PropertyDescriptor.t [@@js.index_get]

  val set : t -> string -> PropertyDescriptor.t -> unit [@@js.index_set]
end

module Object : sig
  include module type of struct
    include Object
  end

  (* Constructor *)

  val values : (AnonymousInterface1.t, 'T Array.t) union2 -> 'T list
    [@@js.global "Object.values"]

  val values' : AnonymousInterface0.t -> any list [@@js.global "Object.values"]

  val entries : (AnonymousInterface1.t, 'T Array.t) union2 -> (string * 'T) list
    [@@js.global "Object.entries"]

  val entries' : AnonymousInterface0.t -> (string * any) list
    [@@js.global "Object.entries"]

  val getOwnPropertyDescriptors
    :  'T
    -> ( (* FIXME: unknown type '{[P in keyof T]: TypedPropertyDescriptor<T[P]>}' *)
         any
       , AnonymousInterface2.t )
       intersection2
    [@@js.global "Object.getOwnPropertyDescriptors"]
end

module ObjectConstructor : sig
  include module type of struct
    include ObjectConstructor
  end

  val values : t -> (AnonymousInterface1.t, 'T Array.t) union2 -> 'T list
    [@@js.call "values"]

  val values' : t -> AnonymousInterface0.t -> any list [@@js.call "values"]

  val entries
    :  t
    -> (AnonymousInterface1.t, 'T Array.t) union2
    -> (string * 'T) list
    [@@js.call "entries"]

  val entries' : t -> AnonymousInterface0.t -> (string * any) list
    [@@js.call "entries"]

  val getOwnPropertyDescriptors
    :  t
    -> 'T
    -> ( (* FIXME: unknown type '{[P in keyof T]: TypedPropertyDescriptor<T[P]>}' *)
         any
       , AnonymousInterface2.t )
       intersection2
    [@@js.call "getOwnPropertyDescriptors"]
end
[@@js.scope "ObjectConstructor"]
