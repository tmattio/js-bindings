[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2019

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _RegExp = regexp

    and _SymbolConstructor = [ `SymbolConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module SymbolConstructor : sig
  include module type of struct
    include SymbolConstructor
  end

  val get_matchAll : t -> symbol [@@js.get "matchAll"]
end
[@@js.scope "SymbolConstructor"]

module RegExp : sig
  include module type of struct
    include RegExp
  end
end
