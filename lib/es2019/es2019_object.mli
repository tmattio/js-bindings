[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2018

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get : t -> string -> 'T [@@js.index_get]

  val set : t -> string -> 'T -> unit [@@js.index_set]
end

module Object : sig
  include module type of struct
    include Object
  end

  val fromEntries
    :  entries:(PropertyKey.t * 'T) Iterable.t
    -> AnonymousInterface0.t
    [@@js.global "Object.fromEntries"]

  val fromEntries' : entries:any list Iterable.t -> any
    [@@js.global "Object.fromEntries"]
end

module ObjectConstructor : sig
  include module type of struct
    include ObjectConstructor
  end

  val fromEntries
    :  t
    -> entries:(PropertyKey.t * 'T) Iterable.t
    -> AnonymousInterface0.t
    [@@js.call "fromEntries"]

  val fromEntries' : t -> entries:any list Iterable.t -> any
    [@@js.call "fromEntries"]
end
[@@js.scope "ObjectConstructor"]
