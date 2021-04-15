[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - PartialResultParams
  - ProtocolRequestType<T1, T2, T3, T4, T5>
  - ProtocolRequestType0<T1, T2, T3, T4>
  - Range
  - RegistrationType<T1>
  - RequestHandler<T1, T2, T3>
  - RequestHandler0<T1, T2>
  - SemanticTokens
  - SemanticTokensDelta
  - SemanticTokensEdit
  - SemanticTokensLegend
  - StaticRegistrationOptions
  - TextDocumentIdentifier
  - TextDocumentRegistrationOptions
  - WorkDoneProgressOptions
  - WorkDoneProgressParams
  - uinteger
 *)
[@@@js.stop]
module type Missing = sig
  module PartialResultParams : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ProtocolRequestType : sig
    type ('T1, 'T2, 'T3, 'T4, 'T5) t_5
    val t_5_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5 -> Ojs.t
    val t_5_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5
  end
  module ProtocolRequestType0 : sig
    type ('T1, 'T2, 'T3, 'T4) t_4
    val t_4_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4) t_4 -> Ojs.t
    val t_4_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4) t_4
  end
  module Range : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module RegistrationType : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module RequestHandler : sig
    type ('T1, 'T2, 'T3) t_3
    val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
  end
  module RequestHandler0 : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
  end
  module SemanticTokens : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module SemanticTokensDelta : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module SemanticTokensEdit : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module SemanticTokensLegend : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module StaticRegistrationOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module TextDocumentIdentifier : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module TextDocumentRegistrationOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module WorkDoneProgressOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module WorkDoneProgressParams : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module uinteger : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module PartialResultParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ProtocolRequestType : sig
      type ('T1, 'T2, 'T3, 'T4, 'T5) t_5
      val t_5_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5 -> Ojs.t
      val t_5_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5
    end
    module ProtocolRequestType0 : sig
      type ('T1, 'T2, 'T3, 'T4) t_4
      val t_4_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4) t_4 -> Ojs.t
      val t_4_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4) t_4
    end
    module Range : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module RegistrationType : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module RequestHandler : sig
      type ('T1, 'T2, 'T3) t_3
      val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
      val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
    end
    module RequestHandler0 : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    end
    module SemanticTokens : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SemanticTokensDelta : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SemanticTokensEdit : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module SemanticTokensLegend : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module StaticRegistrationOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TextDocumentIdentifier : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TextDocumentRegistrationOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WorkDoneProgressOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WorkDoneProgressParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module uinteger : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
]
module Make (M: Missing) : sig
  open M
  module Internal : sig
    module AnonymousInterfaces : sig
      type anonymous_interface_0 = [`anonymous_interface_0] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_1 = [`anonymous_interface_1] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_2 = [`anonymous_interface_2] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
    module Types : sig
      open AnonymousInterfaces
      type _SemanticTokensClientCapabilities = [`SemanticTokensClientCapabilities] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SemanticTokensDeltaParams = [`SemanticTokensDeltaParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SemanticTokensDeltaPartialResult = [`SemanticTokensDeltaPartialResult] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SemanticTokensDeltaRequest_HandlerSignature = (_SemanticTokensDeltaParams, (SemanticTokens.t_0, SemanticTokensDelta.t_0) union2 or_null, unit) RequestHandler.t_3
      and _SemanticTokensOptions = [`SemanticTokensOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SemanticTokensParams = [`SemanticTokensParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SemanticTokensPartialResult = [`SemanticTokensPartialResult] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SemanticTokensRangeParams = [`SemanticTokensRangeParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SemanticTokensRangeRequest_HandlerSignature = (_SemanticTokensRangeParams, SemanticTokens.t_0 or_null, unit) RequestHandler.t_3
      and _SemanticTokensRefreshRequest_HandlerSignature = (unit, unit) RequestHandler0.t_2
      and _SemanticTokensRegistrationOptions = [`SemanticTokensRegistrationOptions | `SemanticTokensOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _SemanticTokensRequest_HandlerSignature = (_SemanticTokensDeltaParams, SemanticTokens.t_0 or_null, unit) RequestHandler.t_3
      and _SemanticTokensWorkspaceClientCapabilities = [`SemanticTokensWorkspaceClientCapabilities] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _TokenFormat = ([`L_s0_relative[@js "relative"]] [@js.enum])
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  module AnonymousInterface0 : sig
    type t = anonymous_interface_0
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module AnonymousInterface1 : sig
    type t = anonymous_interface_1
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_delta: t -> bool [@@js.get "delta"]
    val set_delta: t -> bool -> unit [@@js.set "delta"]
  end
  module AnonymousInterface2 : sig
    type t = anonymous_interface_2
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_range: t -> anonymous_interface_0 or_boolean [@@js.get "range"]
    val set_range: t -> anonymous_interface_0 or_boolean -> unit [@@js.set "range"]
    val get_full: t -> anonymous_interface_1 or_boolean [@@js.get "full"]
    val set_full: t -> anonymous_interface_1 or_boolean -> unit [@@js.set "full"]
  end
  (* import { TextDocumentIdentifier, Range, uinteger, SemanticTokensEdit, SemanticTokensLegend, SemanticTokens, SemanticTokensDelta } from 'vscode-languageserver-types'; *)
  (* import { RequestHandler0, RequestHandler } from 'vscode-jsonrpc'; *)
  (* import { ProtocolRequestType, ProtocolRequestType0, RegistrationType } from './messages'; *)
  (* import { PartialResultParams, WorkDoneProgressParams, WorkDoneProgressOptions, TextDocumentRegistrationOptions, StaticRegistrationOptions } from './protocol'; *)
  module[@js.scope "SemanticTokensPartialResult"] SemanticTokensPartialResult : sig
    type t = _SemanticTokensPartialResult
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_data: t -> Uinteger.t_0 list [@@js.get "data"]
    val set_data: t -> Uinteger.t_0 list -> unit [@@js.set "data"]
  end
  module[@js.scope "SemanticTokensDeltaPartialResult"] SemanticTokensDeltaPartialResult : sig
    type t = _SemanticTokensDeltaPartialResult
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_edits: t -> SemanticTokensEdit.t_0 list [@@js.get "edits"]
    val set_edits: t -> SemanticTokensEdit.t_0 list -> unit [@@js.set "edits"]
  end
  module[@js.scope "TokenFormat"] TokenFormat : sig
    val relative: ([`L_s0_relative[@js "relative"]] [@js.enum]) [@@js.global "Relative"]
  end
  module TokenFormat : sig
    type t = _TokenFormat
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "SemanticTokensClientCapabilities"] SemanticTokensClientCapabilities : sig
    type t = _SemanticTokensClientCapabilities
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_dynamicRegistration: t -> bool [@@js.get "dynamicRegistration"]
    val set_dynamicRegistration: t -> bool -> unit [@@js.set "dynamicRegistration"]
    val get_requests: t -> anonymous_interface_2 [@@js.get "requests"]
    val set_requests: t -> anonymous_interface_2 -> unit [@@js.set "requests"]
    val get_tokenTypes: t -> string list [@@js.get "tokenTypes"]
    val set_tokenTypes: t -> string list -> unit [@@js.set "tokenTypes"]
    val get_tokenModifiers: t -> string list [@@js.get "tokenModifiers"]
    val set_tokenModifiers: t -> string list -> unit [@@js.set "tokenModifiers"]
    val get_formats: t -> _TokenFormat list [@@js.get "formats"]
    val set_formats: t -> _TokenFormat list -> unit [@@js.set "formats"]
    val get_overlappingTokenSupport: t -> bool [@@js.get "overlappingTokenSupport"]
    val set_overlappingTokenSupport: t -> bool -> unit [@@js.set "overlappingTokenSupport"]
    val get_multilineTokenSupport: t -> bool [@@js.get "multilineTokenSupport"]
    val set_multilineTokenSupport: t -> bool -> unit [@@js.set "multilineTokenSupport"]
  end
  module[@js.scope "SemanticTokensOptions"] SemanticTokensOptions : sig
    type t = _SemanticTokensOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_legend: t -> SemanticTokensLegend.t_0 [@@js.get "legend"]
    val set_legend: t -> SemanticTokensLegend.t_0 -> unit [@@js.set "legend"]
    val get_range: t -> anonymous_interface_0 or_boolean [@@js.get "range"]
    val set_range: t -> anonymous_interface_0 or_boolean -> unit [@@js.set "range"]
    val get_full: t -> anonymous_interface_1 or_boolean [@@js.get "full"]
    val set_full: t -> anonymous_interface_1 or_boolean -> unit [@@js.set "full"]
    val cast: t -> WorkDoneProgressOptions.t_0 [@@js.cast]
  end
  module[@js.scope "SemanticTokensRegistrationOptions"] SemanticTokensRegistrationOptions : sig
    type t = _SemanticTokensRegistrationOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast: t -> TextDocumentRegistrationOptions.t_0 [@@js.cast]
    val cast': t -> _SemanticTokensOptions [@@js.cast]
    val cast'': t -> StaticRegistrationOptions.t_0 [@@js.cast]
  end
  module[@js.scope "SemanticTokensRegistrationType"] SemanticTokensRegistrationType : sig
    val method_: ([`L_s1_textDocument_semanticTokens[@js "textDocument/semanticTokens"]] [@js.enum]) [@@js.global "method"]
    val type_: _SemanticTokensRegistrationOptions RegistrationType.t_1 [@@js.global "type"]
  end
  module[@js.scope "SemanticTokensParams"] SemanticTokensParams : sig
    type t = _SemanticTokensParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_textDocument: t -> TextDocumentIdentifier.t_0 [@@js.get "textDocument"]
    val set_textDocument: t -> TextDocumentIdentifier.t_0 -> unit [@@js.set "textDocument"]
    val cast: t -> WorkDoneProgressParams.t_0 [@@js.cast]
    val cast': t -> PartialResultParams.t_0 [@@js.cast]
  end
  module[@js.scope "SemanticTokensRequest"] SemanticTokensRequest : sig
    val method_: ([`L_s2_textDocument_semanticTokens_full[@js "textDocument/semanticTokens/full"]] [@js.enum]) [@@js.global "method"]
    val type_: (_SemanticTokensParams, SemanticTokens.t_0 or_null, _SemanticTokensPartialResult, unit, _SemanticTokensRegistrationOptions) ProtocolRequestType.t_5 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _SemanticTokensRequest_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module[@js.scope "SemanticTokensDeltaParams"] SemanticTokensDeltaParams : sig
    type t = _SemanticTokensDeltaParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_textDocument: t -> TextDocumentIdentifier.t_0 [@@js.get "textDocument"]
    val set_textDocument: t -> TextDocumentIdentifier.t_0 -> unit [@@js.set "textDocument"]
    val get_previousResultId: t -> string [@@js.get "previousResultId"]
    val set_previousResultId: t -> string -> unit [@@js.set "previousResultId"]
    val cast: t -> WorkDoneProgressParams.t_0 [@@js.cast]
    val cast': t -> PartialResultParams.t_0 [@@js.cast]
  end
  module[@js.scope "SemanticTokensDeltaRequest"] SemanticTokensDeltaRequest : sig
    val method_: ([`L_s3_textDocument_semanticTokens_full_delta[@js "textDocument/semanticTokens/full/delta"]] [@js.enum]) [@@js.global "method"]
    val type_: (_SemanticTokensDeltaParams, (SemanticTokens.t_0, SemanticTokensDelta.t_0) union2 or_null, (_SemanticTokensDeltaPartialResult, _SemanticTokensPartialResult) union2, unit, _SemanticTokensRegistrationOptions) ProtocolRequestType.t_5 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _SemanticTokensDeltaRequest_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module[@js.scope "SemanticTokensRangeParams"] SemanticTokensRangeParams : sig
    type t = _SemanticTokensRangeParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_textDocument: t -> TextDocumentIdentifier.t_0 [@@js.get "textDocument"]
    val set_textDocument: t -> TextDocumentIdentifier.t_0 -> unit [@@js.set "textDocument"]
    val get_range: t -> Range.t_0 [@@js.get "range"]
    val set_range: t -> Range.t_0 -> unit [@@js.set "range"]
    val cast: t -> WorkDoneProgressParams.t_0 [@@js.cast]
    val cast': t -> PartialResultParams.t_0 [@@js.cast]
  end
  module[@js.scope "SemanticTokensRangeRequest"] SemanticTokensRangeRequest : sig
    val method_: ([`L_s4_textDocument_semanticTokens_range[@js "textDocument/semanticTokens/range"]] [@js.enum]) [@@js.global "method"]
    val type_: (_SemanticTokensRangeParams, SemanticTokens.t_0 or_null, _SemanticTokensPartialResult, unit, unit) ProtocolRequestType.t_5 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _SemanticTokensRangeRequest_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module[@js.scope "SemanticTokensWorkspaceClientCapabilities"] SemanticTokensWorkspaceClientCapabilities : sig
    type t = _SemanticTokensWorkspaceClientCapabilities
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_refreshSupport: t -> bool [@@js.get "refreshSupport"]
    val set_refreshSupport: t -> bool -> unit [@@js.set "refreshSupport"]
  end
  module[@js.scope "SemanticTokensRefreshRequest"] SemanticTokensRefreshRequest : sig
    val method_: (* FIXME: unknown type '`workspace/semanticTokens/refresh`' *)any [@@js.global "method"]
    val type_: (unit, unit, unit, unit) ProtocolRequestType0.t_4 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _SemanticTokensRefreshRequest_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
end
