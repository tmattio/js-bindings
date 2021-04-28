[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5
open Vscode_jsonrpc
open Vscode_languageserver_types
open Vscode_languageserver_protocol_messages
open Vscode_languageserver_protocol_protocol

module FoldingRangeClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_range_limit : t -> Uinteger.t [@@js.get "rangeLimit"]

  val set_range_limit : t -> Uinteger.t -> unit [@@js.set "rangeLimit"]

  val get_line_folding_only : t -> bool [@@js.get "lineFoldingOnly"]

  val set_line_folding_only : t -> bool -> unit [@@js.set "lineFoldingOnly"]
end
[@@js.scope "FoldingRangeClientCapabilities"]

module FoldingRangeOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "FoldingRangeOptions"]

module FoldingRangeRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> FoldingRangeOptions.t [@@js.cast]

  val cast'' : t -> StaticRegistrationOptions.t [@@js.cast]
end
[@@js.scope "FoldingRangeRegistrationOptions"]

module FoldingRangeKind : sig
  type t =
    ([ `Comment [@js "comment"]
     | `Imports [@js "imports"]
     | `Region [@js "region"]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module FoldingRangeParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document : t -> TextDocumentIdentifier.t
    [@@js.get "textDocument"]

  val set_text_document : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressParams
  end

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "FoldingRangeParams"]

module FoldingRangeRequest : sig
  val method_
    : ([ `L_s3_textDocument_foldingRange [@js "textDocument/foldingRange"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( FoldingRangeParams.t
      , FoldingRange.t list or_null
      , FoldingRange.t list
      , any
      , FoldingRangeRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      (FoldingRangeParams.t, FoldingRange.t list or_null, unit) RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "FoldingRangeRequest"]
