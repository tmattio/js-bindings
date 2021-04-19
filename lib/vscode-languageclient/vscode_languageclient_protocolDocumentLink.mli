[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _ProtocolDocumentLink = [ `ProtocolDocumentLink ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import * as code from 'vscode'; *)
module ProtocolDocumentLink : sig
  type t = _ProtocolDocumentLink

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_data : t -> any [@@js.get "data"]

  val set_data : t -> any -> unit [@@js.set "data"]

  val create
    :  range:Code.Range.t
    -> ?target:Code.Uri.t or_undefined
    -> unit
    -> t
    [@@js.create]

  val cast : t -> Code.DocumentLink.t [@@js.cast]
end
[@@js.scope "ProtocolDocumentLink"]
