[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5
open Vscode_jsonrpc
open Vscode_languageserver_types
open Vscode_languageserver_protocol_messages
open Vscode_languageserver_protocol_protocol

module SelectionRangeClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "SelectionRangeClientCapabilities"]

module SelectionRangeOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "SelectionRangeOptions"]

module SelectionRangeRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include SelectionRangeOptions
  end

  val cast' : t -> TextDocumentRegistrationOptions.t [@@js.cast]

  val cast'' : t -> StaticRegistrationOptions.t [@@js.cast]
end
[@@js.scope "SelectionRangeRegistrationOptions"]

module SelectionRangeParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document : t -> TextDocumentIdentifier.t
    [@@js.get "textDocument"]

  val set_text_document : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_positions : t -> Position.t list [@@js.get "positions"]

  val set_positions : t -> Position.t list -> unit [@@js.set "positions"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressParams
  end

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "SelectionRangeParams"]

module SelectionRangeRequest : sig
  val method_
    : ([ `L_s0_textDocument_selectionRange [@js "textDocument/selectionRange"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( SelectionRangeParams.t
      , SelectionRange.t list or_null
      , SelectionRange.t list
      , any
      , SelectionRangeRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( SelectionRangeParams.t
      , SelectionRange.t list or_null
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "SelectionRangeRequest"]
