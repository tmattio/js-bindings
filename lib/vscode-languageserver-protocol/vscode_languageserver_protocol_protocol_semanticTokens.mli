[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module AnonymousInterface1 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_delta : t -> bool [@@js.get "delta"]

  val set_delta : t -> bool -> unit [@@js.set "delta"]
end

module AnonymousInterface2 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_range : t -> AnonymousInterface0.t or_boolean [@@js.get "range"]

  val set_range : t -> AnonymousInterface0.t or_boolean -> unit
    [@@js.set "range"]

  val get_full : t -> AnonymousInterface1.t or_boolean [@@js.get "full"]

  val set_full : t -> AnonymousInterface1.t or_boolean -> unit [@@js.set "full"]
end

(* import { TextDocumentIdentifier, Range, uinteger, SemanticTokensEdit,
   SemanticTokensLegend, SemanticTokens, SemanticTokensDelta } from
   'vscode-languageserver-types'; *)
(* import { RequestHandler0, RequestHandler } from 'vscode-jsonrpc'; *)
(* import { ProtocolRequestType, ProtocolRequestType0, RegistrationType } from
   './messages'; *)
(* import { PartialResultParams, WorkDoneProgressParams,
   WorkDoneProgressOptions, TextDocumentRegistrationOptions,
   StaticRegistrationOptions } from './protocol'; *)
module SemanticTokensPartialResult : sig
  type t = _SemanticTokensPartialResult

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_data : t -> Uinteger.t list [@@js.get "data"]

  val set_data : t -> Uinteger.t list -> unit [@@js.set "data"]
end
[@@js.scope "SemanticTokensPartialResult"]

module SemanticTokensDeltaPartialResult : sig
  type t = _SemanticTokensDeltaPartialResult

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_edits : t -> SemanticTokensEdit.t list [@@js.get "edits"]

  val set_edits : t -> SemanticTokensEdit.t list -> unit [@@js.set "edits"]
end
[@@js.scope "SemanticTokensDeltaPartialResult"]

module TokenFormat : sig
  val relative : ([ `L_s0_relative [@js "relative"] ][@js.enum])
    [@@js.global "Relative"]
end
[@@js.scope "TokenFormat"]

module TokenFormat : sig
  type t = ([ `L_s0_relative [@js "relative"] ][@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module SemanticTokensClientCapabilities : sig
  type t = _SemanticTokensClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_requests : t -> AnonymousInterface2.t [@@js.get "requests"]

  val set_requests : t -> AnonymousInterface2.t -> unit [@@js.set "requests"]

  val get_tokenTypes : t -> string list [@@js.get "tokenTypes"]

  val set_tokenTypes : t -> string list -> unit [@@js.set "tokenTypes"]

  val get_tokenModifiers : t -> string list [@@js.get "tokenModifiers"]

  val set_tokenModifiers : t -> string list -> unit [@@js.set "tokenModifiers"]

  val get_formats : t -> _TokenFormat list [@@js.get "formats"]

  val set_formats : t -> _TokenFormat list -> unit [@@js.set "formats"]

  val get_overlappingTokenSupport : t -> bool
    [@@js.get "overlappingTokenSupport"]

  val set_overlappingTokenSupport : t -> bool -> unit
    [@@js.set "overlappingTokenSupport"]

  val get_multilineTokenSupport : t -> bool [@@js.get "multilineTokenSupport"]

  val set_multilineTokenSupport : t -> bool -> unit
    [@@js.set "multilineTokenSupport"]
end
[@@js.scope "SemanticTokensClientCapabilities"]

module SemanticTokensOptions : sig
  type t = _SemanticTokensOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_legend : t -> SemanticTokensLegend.t [@@js.get "legend"]

  val set_legend : t -> SemanticTokensLegend.t -> unit [@@js.set "legend"]

  val get_range : t -> AnonymousInterface0.t or_boolean [@@js.get "range"]

  val set_range : t -> AnonymousInterface0.t or_boolean -> unit
    [@@js.set "range"]

  val get_full : t -> AnonymousInterface1.t or_boolean [@@js.get "full"]

  val set_full : t -> AnonymousInterface1.t or_boolean -> unit [@@js.set "full"]

  val cast : t -> WorkDoneProgressOptions.t [@@js.cast]
end
[@@js.scope "SemanticTokensOptions"]

module SemanticTokensRegistrationOptions : sig
  type t = _SemanticTokensRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentRegistrationOptions.t [@@js.cast]

  val cast' : t -> _SemanticTokensOptions [@@js.cast]

  val cast'' : t -> StaticRegistrationOptions.t [@@js.cast]
end
[@@js.scope "SemanticTokensRegistrationOptions"]

module SemanticTokensRegistrationType : sig
  val method_
    : ([ `L_s1_textDocument_semanticTokens [@js "textDocument/semanticTokens"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_ : _SemanticTokensRegistrationOptions RegistrationType.t
    [@@js.global "type"]
end
[@@js.scope "SemanticTokensRegistrationType"]

module SemanticTokensParams : sig
  type t = _SemanticTokensParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument : t -> TextDocumentIdentifier.t [@@js.get "textDocument"]

  val set_textDocument : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val cast : t -> WorkDoneProgressParams.t [@@js.cast]

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "SemanticTokensParams"]

module SemanticTokensRequest : sig
  val method_
    : ([ `L_s2_textDocument_semanticTokens_full [@js
                                                  "textDocument/semanticTokens/full"]
       ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _SemanticTokensParams
      , SemanticTokens.t or_null
      , _SemanticTokensPartialResult
      , unit
      , _SemanticTokensRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( _SemanticTokensDeltaParams
      , SemanticTokens.t or_null
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "SemanticTokensRequest"]

module SemanticTokensDeltaParams : sig
  type t = _SemanticTokensDeltaParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument : t -> TextDocumentIdentifier.t [@@js.get "textDocument"]

  val set_textDocument : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_previousResultId : t -> string [@@js.get "previousResultId"]

  val set_previousResultId : t -> string -> unit [@@js.set "previousResultId"]

  val cast : t -> WorkDoneProgressParams.t [@@js.cast]

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "SemanticTokensDeltaParams"]

module SemanticTokensDeltaRequest : sig
  val method_
    : ([ `L_s3_textDocument_semanticTokens_full_delta [@js
                                                        "textDocument/semanticTokens/full/delta"]
       ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _SemanticTokensDeltaParams
      , (SemanticTokens.t, SemanticTokensDelta.t) union2 or_null
      , (_SemanticTokensDeltaPartialResult, _SemanticTokensPartialResult) union2
      , unit
      , _SemanticTokensRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( _SemanticTokensDeltaParams
      , (SemanticTokens.t, SemanticTokensDelta.t) union2 or_null
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "SemanticTokensDeltaRequest"]

module SemanticTokensRangeParams : sig
  type t = _SemanticTokensRangeParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument : t -> TextDocumentIdentifier.t [@@js.get "textDocument"]

  val set_textDocument : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_range : t -> Range.t [@@js.get "range"]

  val set_range : t -> Range.t -> unit [@@js.set "range"]

  val cast : t -> WorkDoneProgressParams.t [@@js.cast]

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "SemanticTokensRangeParams"]

module SemanticTokensRangeRequest : sig
  val method_
    : ([ `L_s4_textDocument_semanticTokens_range [@js
                                                   "textDocument/semanticTokens/range"]
       ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _SemanticTokensRangeParams
      , SemanticTokens.t or_null
      , _SemanticTokensPartialResult
      , unit
      , unit )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( _SemanticTokensRangeParams
      , SemanticTokens.t or_null
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "SemanticTokensRangeRequest"]

module SemanticTokensWorkspaceClientCapabilities : sig
  type t = _SemanticTokensWorkspaceClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_refreshSupport : t -> bool [@@js.get "refreshSupport"]

  val set_refreshSupport : t -> bool -> unit [@@js.set "refreshSupport"]
end
[@@js.scope "SemanticTokensWorkspaceClientCapabilities"]

module SemanticTokensRefreshRequest : sig
  val method_
    : (* FIXME: unknown type '`workspace/semanticTokens/refresh`' *) any
    [@@js.global "method"]

  val type_ : (unit, unit, unit, unit) ProtocolRequestType0.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = (unit, unit) RequestHandler0.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "SemanticTokensRefreshRequest"]
