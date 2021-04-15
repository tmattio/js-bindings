[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _ProtocolCodeAction = [ `ProtocolCodeAction ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import * as vscode from 'vscode'; *)
module ProtocolCodeAction : sig
  type t = _ProtocolCodeAction

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_data : t -> unknown or_undefined [@@js.get "data"]

  val create : title:string -> data:unknown or_undefined -> t [@@js.create]

  val cast : t -> Vscode.CodeAction.t [@@js.cast]
end
[@@js.scope "ProtocolCodeAction"]
