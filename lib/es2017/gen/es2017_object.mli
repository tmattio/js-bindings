[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2016

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_1 = [ `anonymous_interface_1 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_2 = [ `anonymous_interface_2 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type _ObjectConstructor = [ `ObjectConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module AnonymousInterface0 : sig
  type t = anonymous_interface_0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module AnonymousInterface1 : sig
  type t = anonymous_interface_1

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get : t -> string -> 'T [@@js.index_get]

  val set : t -> string -> 'T -> unit [@@js.index_set]
end

module AnonymousInterface2 : sig
  type t = anonymous_interface_2

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

  val values : (anonymous_interface_1, 'T Array.t) union2 -> 'T list
    [@@js.global "Object.values"]

  val values' : anonymous_interface_0 -> any list [@@js.global "Object.values"]

  val entries : (anonymous_interface_1, 'T Array.t) union2 -> (string * 'T) list
    [@@js.global "Object.entries"]

  val entries' : anonymous_interface_0 -> (string * any) list
    [@@js.global "Object.entries"]

  val getOwnPropertyDescriptors
    :  'T
    -> ( (* FIXME: unknown type '{[P in keyof T]: TypedPropertyDescriptor<T[P]>}' *)
         any
       , anonymous_interface_2 )
       intersection2
    [@@js.global "Object.getOwnPropertyDescriptors"]
end

module ObjectConstructor : sig
  include module type of struct
    include ObjectConstructor
  end

  val values : t -> (anonymous_interface_1, 'T Array.t) union2 -> 'T list
    [@@js.call "values"]

  val values' : t -> anonymous_interface_0 -> any list [@@js.call "values"]

  val entries
    :  t
    -> (anonymous_interface_1, 'T Array.t) union2
    -> (string * 'T) list
    [@@js.call "entries"]

  val entries' : t -> anonymous_interface_0 -> (string * any) list
    [@@js.call "entries"]

  val getOwnPropertyDescriptors
    :  t
    -> 'T
    -> ( (* FIXME: unknown type '{[P in keyof T]: TypedPropertyDescriptor<T[P]>}' *)
         any
       , anonymous_interface_2 )
       intersection2
    [@@js.call "getOwnPropertyDescriptors"]
end
[@@js.scope "ObjectConstructor"]
