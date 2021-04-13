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

module ObjectConstructor : sig
  type t = _ObjectConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val values : t -> o:(anonymous_interface_1, 'T Array.t) union2 -> 'T list
    [@@js.call "values"]

  val values' : t -> o:anonymous_interface_0 -> any list [@@js.call "values"]

  val entries
    :  t
    -> o:(anonymous_interface_1, 'T Array.t) union2
    -> (string * 'T) list
    [@@js.call "entries"]

  val entries' : t -> o:anonymous_interface_0 -> (string * any) list
    [@@js.call "entries"]

  val getOwnPropertyDescriptors
    :  t
    -> o:'T
    -> ( (* FIXME: unknown type '{[P in keyof T]: TypedPropertyDescriptor<T[P]>}' *)
         any
       , anonymous_interface_2 )
       intersection2
    [@@js.call "getOwnPropertyDescriptors"]
end
[@@js.scope "ObjectConstructor"]
