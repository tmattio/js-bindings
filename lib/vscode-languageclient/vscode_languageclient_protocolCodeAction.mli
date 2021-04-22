[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import * as vscode from 'vscode'; *)
module ProtocolCodeAction : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_data : t -> unknown or_undefined [@@js.get "data"]

  val create : title:string -> data:unknown or_undefined -> t [@@js.create]

  val cast : t -> Vscode.CodeAction.t [@@js.cast]
end
[@@js.scope "ProtocolCodeAction"]
