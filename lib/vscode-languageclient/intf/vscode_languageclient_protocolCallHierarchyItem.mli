[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _ProtocolCallHierarchyItem = [ `ProtocolCallHierarchyItem ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import * as code from 'vscode'; *)
module ProtocolCallHierarchyItem : sig
  type t = _ProtocolCallHierarchyItem

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_data : t -> unknown [@@js.get "data"]

  val set_data : t -> unknown -> unit [@@js.set "data"]

  val create
    :  kind:Code.SymbolKind.t
    -> name:string
    -> detail:string
    -> uri:Code.Uri.t
    -> range:Code.Range.t
    -> selectionRange:Code.Range.t
    -> ?data:unknown
    -> unit
    -> t
    [@@js.create]

  val cast : t -> Code.CallHierarchyItem.t [@@js.cast]
end
[@@js.scope "ProtocolCallHierarchyItem"]
