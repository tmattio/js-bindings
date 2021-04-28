[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import * as code from 'vscode'; *)
module ProtocolCodeLens : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_data : t -> any [@@js.get "data"]

  val set_data : t -> any -> unit [@@js.set "data"]

  val create : range:Code.Range.t -> t [@@js.create]

  (* TODO: Move me*)
  include module type of struct
    include Code.CodeLens
  end
end
[@@js.scope "ProtocolCodeLens"]
