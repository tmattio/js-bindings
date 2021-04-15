[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2016

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _String = [ `String ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module String : sig
  include module type of struct
    include String
  end

  val padStart : t -> maxLength:float -> ?fillString:string -> unit -> string
    [@@js.call "padStart"]

  val padEnd : t -> maxLength:float -> ?fillString:string -> unit -> string
    [@@js.call "padEnd"]

  val to_ml : t -> string [@@js.cast]

  val of_ml : string -> t [@@js.cast]
end
[@@js.scope "String"]
