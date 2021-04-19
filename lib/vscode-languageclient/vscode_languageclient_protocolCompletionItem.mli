[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _ProtocolCompletionItem = [ `ProtocolCompletionItem ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import * as code from 'vscode'; *)
(* import * as proto from 'vscode-languageserver-protocol'; *)
module ProtocolCompletionItem : sig
  type t = _ProtocolCompletionItem

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_data : t -> any [@@js.get "data"]

  val set_data : t -> any -> unit [@@js.set "data"]

  val get_fromEdit : t -> bool or_undefined [@@js.get "fromEdit"]

  val set_fromEdit : t -> bool or_undefined -> unit [@@js.set "fromEdit"]

  val get_documentationFormat : t -> string or_undefined
    [@@js.get "documentationFormat"]

  val set_documentationFormat : t -> string or_undefined -> unit
    [@@js.set "documentationFormat"]

  val get_originalItemKind : t -> Proto.CompletionItemKind.t or_undefined
    [@@js.get "originalItemKind"]

  val set_originalItemKind
    :  t
    -> Proto.CompletionItemKind.t or_undefined
    -> unit
    [@@js.set "originalItemKind"]

  val get_deprecated : t -> bool or_undefined [@@js.get "deprecated"]

  val set_deprecated : t -> bool or_undefined -> unit [@@js.set "deprecated"]

  val get_insertTextMode : t -> Proto.InsertTextMode.t or_undefined
    [@@js.get "insertTextMode"]

  val set_insertTextMode : t -> Proto.InsertTextMode.t or_undefined -> unit
    [@@js.set "insertTextMode"]

  val create : label:string -> t [@@js.create]

  val cast : t -> Code.CompletionItem.t [@@js.cast]
end
[@@js.scope "ProtocolCompletionItem"]
