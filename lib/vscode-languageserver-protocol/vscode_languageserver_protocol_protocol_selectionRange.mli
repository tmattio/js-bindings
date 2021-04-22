[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { RequestHandler } from 'vscode-jsonrpc'; *)
(* import { TextDocumentIdentifier, Position, SelectionRange } from
   'vscode-languageserver-types'; *)
(* import { ProtocolRequestType } from './messages'; *)
(* import { TextDocumentRegistrationOptions, WorkDoneProgressOptions,
   StaticRegistrationOptions, WorkDoneProgressParams, PartialResultParams } from
   './protocol'; *)
module SelectionRangeClientCapabilities : sig
  type t = _SelectionRangeClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "SelectionRangeClientCapabilities"]

module SelectionRangeOptions : sig
  type t = _SelectionRangeOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> WorkDoneProgressOptions.t [@@js.cast]
end
[@@js.scope "SelectionRangeOptions"]

module SelectionRangeRegistrationOptions : sig
  type t = _SelectionRangeRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> _SelectionRangeOptions [@@js.cast]

  val cast' : t -> TextDocumentRegistrationOptions.t [@@js.cast]

  val cast'' : t -> StaticRegistrationOptions.t [@@js.cast]
end
[@@js.scope "SelectionRangeRegistrationOptions"]

module SelectionRangeParams : sig
  type t = _SelectionRangeParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument : t -> TextDocumentIdentifier.t [@@js.get "textDocument"]

  val set_textDocument : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_positions : t -> Position.t list [@@js.get "positions"]

  val set_positions : t -> Position.t list -> unit [@@js.set "positions"]

  val cast : t -> WorkDoneProgressParams.t [@@js.cast]

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "SelectionRangeParams"]

module SelectionRangeRequest : sig
  val method_
    : ([ `L_s0_textDocument_selectionRange [@js "textDocument/selectionRange"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _SelectionRangeParams
      , SelectionRange.t list or_null
      , SelectionRange.t list
      , any
      , _SelectionRangeRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( _SelectionRangeParams
      , SelectionRange.t list or_null
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "SelectionRangeRequest"]
