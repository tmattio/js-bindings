[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2018

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _Symbol = symbol
  end
end

open Internal
open AnonymousInterfaces
open Types

module Symbol : sig
  include module type of struct
    include Symbol
  end

  val get_description : t -> string or_undefined [@@js.get "description"]
end
[@@js.scope "Symbol"]
