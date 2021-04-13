[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _SymbolConstructor = [ `SymbolConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Symbol = symbol
  end
end

open Internal
open AnonymousInterfaces
open Types

module Symbol : sig
  include module type of struct
    include Symbol
  end

  val for_ : key:string -> symbol [@@js.global "for"]

  val keyFor : sym:symbol -> string or_undefined [@@js.global "keyFor"]
end
[@@js.scope "Symbol"]

module SymbolConstructor : sig
  type t = _SymbolConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> _Symbol [@@js.get "prototype"]

  val apply : t -> ?description:string or_number -> unit -> symbol [@@js.apply]

  val for_ : t -> key:string -> symbol [@@js.call "for"]

  val keyFor : t -> sym:symbol -> string or_undefined [@@js.call "keyFor"]
end
[@@js.scope "SymbolConstructor"]

val symbol : _SymbolConstructor [@@js.global "Symbol"]
