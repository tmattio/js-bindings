[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Symbol : sig
  include module type of struct
    include Symbol
  end

  (* Constructor *)

  val for_ : key:string -> symbol

  val keyFor : sym:symbol -> string or_undefined
end

module SymbolConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_prototype : t -> symbol

  val apply : t -> ?description:string or_number -> unit -> symbol

  val for_ : t -> key:string -> symbol

  val keyFor : t -> sym:symbol -> string or_undefined
end

val symbol : SymbolConstructor.t
