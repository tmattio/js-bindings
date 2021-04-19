[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2018

module String : sig
  include module type of struct
    include String
  end

  val trimEnd : t -> string [@@js.call "trimEnd"]

  val trimStart : t -> string [@@js.call "trimStart"]

  val trimLeft : t -> string [@@js.call "trimLeft"]

  val trimRight : t -> string [@@js.call "trimRight"]

  val to_ml : t -> string [@@js.cast]

  val of_ml : string -> t [@@js.cast]
end
[@@js.scope "String"]
