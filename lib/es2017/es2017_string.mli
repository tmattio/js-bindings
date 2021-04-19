[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2016

module String : sig
  include module type of struct
    include String
  end

  val padStart : t -> maxLength:int -> ?fillString:string -> unit -> string
    [@@js.call "padStart"]

  val padEnd : t -> maxLength:int -> ?fillString:string -> unit -> string
    [@@js.call "padEnd"]

  val to_ml : t -> string [@@js.cast]

  val of_ml : string -> t [@@js.cast]
end
[@@js.scope "String"]
