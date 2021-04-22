[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Disposable : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val dispose : t -> unit [@@js.call "dispose"]

  val create_ : func:(unit -> unit) -> t [@@js.global "create"]
end
[@@js.scope "Disposable"]
