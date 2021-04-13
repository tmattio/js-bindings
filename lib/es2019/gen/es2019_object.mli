[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2018

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
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

  val get : t -> string -> 'T [@@js.index_get]

  val set : t -> string -> 'T -> unit [@@js.index_set]
end

module ObjectConstructor : sig
  type t = _ObjectConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val fromEntries
    :  t
    -> entries:(PropertyKey.t * 'T) Iterable.t
    -> anonymous_interface_0
    [@@js.call "fromEntries"]

  val fromEntries' : t -> entries:any list Iterable.t -> any
    [@@js.call "fromEntries"]
end
[@@js.scope "ObjectConstructor"]
