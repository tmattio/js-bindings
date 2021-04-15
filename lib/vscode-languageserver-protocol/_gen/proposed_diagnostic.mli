[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - Diagnostic
  - DocumentUri
  - PartialResultParams
  - ProtocolRequestType<T1, T2, T3, T4, T5>
  - ProtocolRequestType0<T1, T2, T3, T4>
  - RequestHandler<T1, T2, T3>
  - RequestHandler0<T1, T2>
  - StaticRegistrationOptions
  - TextDocumentClientCapabilities
  - TextDocumentIdentifier
  - TextDocumentRegistrationOptions
  - WorkDoneProgressOptions
  - WorkDoneProgressParams
  - integer
 *)
[@@@js.stop]
module type Missing = sig
  module Diagnostic : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module DocumentUri : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
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
  module StaticRegistrationOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module TextDocumentClientCapabilities : sig
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
  module integer : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module Diagnostic : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentUri : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
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
    module StaticRegistrationOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TextDocumentClientCapabilities : sig
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
    module integer : sig
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
      type anonymous_interface_3 = [`anonymous_interface_3] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_4 = [`anonymous_interface_4] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
    module Types : sig
      open AnonymousInterfaces
      type _DiagnosticClientCapabilities = [`_DiagnosticClientCapabilities] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DiagnosticServerCapabilities = [`_DiagnosticServerCapabilities] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DiagnosticClientCapabilities = [`DiagnosticClientCapabilities] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DiagnosticOptions = [`DiagnosticOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DiagnosticRefreshRequest_HandlerSignature = (unit, unit) RequestHandler0.t_2
      and _DiagnosticRegistrationOptions = [`DiagnosticRegistrationOptions | `DiagnosticOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DiagnosticServerCancellationData = [`DiagnosticServerCancellationData] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DocumentDiagnosticParams = [`DocumentDiagnosticParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DocumentDiagnosticReport = ([`U_s0_new of anonymous_interface_1 [@js "new"] | `U_s2_unChanged of anonymous_interface_2 [@js "unChanged"]] [@js.union on_field "kind"])
      and _DocumentDiagnosticReportKind = [`new[@js "new"] | `unChanged[@js "unChanged"]] [@js.enum]
      and _DocumentDiagnosticReportKind_new = [`new[@js "new"]] [@js.enum]
      and _DocumentDiagnosticReportKind_unChanged = [`unChanged[@js "unChanged"]] [@js.enum]
      and _DocumentDiagnosticReportPartialResult = [`DocumentDiagnosticReportPartialResult] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DocumentDiagnosticRequest_HandlerSignature = (_DocumentDiagnosticParams, _DocumentDiagnosticReport, unit) RequestHandler.t_3
      and _WorkspaceDiagnosticParams = [`WorkspaceDiagnosticParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WorkspaceDiagnosticReport = [`WorkspaceDiagnosticReport] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WorkspaceDiagnosticReportPartialResult = [`WorkspaceDiagnosticReportPartialResult] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WorkspaceDiagnosticRequest_HandlerSignature = (_WorkspaceDiagnosticParams, _WorkspaceDiagnosticReport or_null, unit) RequestHandler.t_3
      and _WorkspaceDocumentDiagnosticReport = (anonymous_interface_4, _DocumentDiagnosticReport) intersection2
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
    val get_diagnostic: t -> _DiagnosticClientCapabilities [@@js.get "diagnostic"]
    val set_diagnostic: t -> _DiagnosticClientCapabilities -> unit [@@js.set "diagnostic"]
  end
  module AnonymousInterface1 : sig
    type t = anonymous_interface_1
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_kind: t -> _DocumentDiagnosticReportKind_new [@@js.get "kind"]
    val set_kind: t -> _DocumentDiagnosticReportKind_new -> unit [@@js.set "kind"]
    val get_resultId: t -> string [@@js.get "resultId"]
    val set_resultId: t -> string -> unit [@@js.set "resultId"]
    val get_items: t -> Diagnostic.t_0 list [@@js.get "items"]
    val set_items: t -> Diagnostic.t_0 list -> unit [@@js.set "items"]
  end
  module AnonymousInterface2 : sig
    type t = anonymous_interface_2
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_kind: t -> _DocumentDiagnosticReportKind_unChanged [@@js.get "kind"]
    val set_kind: t -> _DocumentDiagnosticReportKind_unChanged -> unit [@@js.set "kind"]
    val get_resultId: t -> string [@@js.get "resultId"]
    val set_resultId: t -> string -> unit [@@js.set "resultId"]
  end
  module AnonymousInterface3 : sig
    type t = anonymous_interface_3
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_uri: t -> DocumentUri.t_0 [@@js.get "uri"]
    val set_uri: t -> DocumentUri.t_0 -> unit [@@js.set "uri"]
    val get_value: t -> string [@@js.get "value"]
    val set_value: t -> string -> unit [@@js.set "value"]
  end
  module AnonymousInterface4 : sig
    type t = anonymous_interface_4
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_uri: t -> DocumentUri.t_0 [@@js.get "uri"]
    val set_uri: t -> DocumentUri.t_0 -> unit [@@js.set "uri"]
    val get_version: t -> Integer.t_0 or_null [@@js.get "version"]
    val set_version: t -> Integer.t_0 or_null -> unit [@@js.set "version"]
  end
  (* import { RequestHandler0, RequestHandler } from 'vscode-jsonrpc'; *)
  (* import { TextDocumentIdentifier, Diagnostic, DocumentUri, integer } from 'vscode-languageserver-types'; *)
  (* import { ProtocolRequestType0, ProtocolRequestType } from './messages'; *)
  (* import { PartialResultParams, StaticRegistrationOptions, WorkDoneProgressParams, TextDocumentRegistrationOptions, WorkDoneProgressOptions, TextDocumentClientCapabilities } from './protocol'; *)
  module[@js.scope "DiagnosticClientCapabilities"] DiagnosticClientCapabilities : sig
    type t = _DiagnosticClientCapabilities
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_dynamicRegistration: t -> bool [@@js.get "dynamicRegistration"]
    val set_dynamicRegistration: t -> bool -> unit [@@js.set "dynamicRegistration"]
  end
  module[@js.scope "$DiagnosticClientCapabilities"] M_DiagnosticClientCapabilities : sig
    type t = _DiagnosticClientCapabilities
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_textDocument: t -> (TextDocumentClientCapabilities.t_0, anonymous_interface_0) intersection2 [@@js.get "textDocument"]
    val set_textDocument: t -> (TextDocumentClientCapabilities.t_0, anonymous_interface_0) intersection2 -> unit [@@js.set "textDocument"]
  end
  module[@js.scope "DiagnosticOptions"] DiagnosticOptions : sig
    type t = _DiagnosticOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_identifier: t -> string [@@js.get "identifier"]
    val set_identifier: t -> string -> unit [@@js.set "identifier"]
    val get_interFileDependencies: t -> bool [@@js.get "interFileDependencies"]
    val set_interFileDependencies: t -> bool -> unit [@@js.set "interFileDependencies"]
    val get_workspaceProvider: t -> bool [@@js.get "workspaceProvider"]
    val set_workspaceProvider: t -> bool -> unit [@@js.set "workspaceProvider"]
    val cast: t -> WorkDoneProgressOptions.t_0 [@@js.cast]
  end
  module[@js.scope "DiagnosticRegistrationOptions"] DiagnosticRegistrationOptions : sig
    type t = _DiagnosticRegistrationOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast: t -> TextDocumentRegistrationOptions.t_0 [@@js.cast]
    val cast': t -> _DiagnosticOptions [@@js.cast]
    val cast'': t -> StaticRegistrationOptions.t_0 [@@js.cast]
  end
  module[@js.scope "$DiagnosticServerCapabilities"] M_DiagnosticServerCapabilities : sig
    type t = _DiagnosticServerCapabilities
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_diagnosticProvider: t -> _DiagnosticOptions [@@js.get "diagnosticProvider"]
    val set_diagnosticProvider: t -> _DiagnosticOptions -> unit [@@js.set "diagnosticProvider"]
  end
  module[@js.scope "DiagnosticServerCancellationData"] DiagnosticServerCancellationData : sig
    type t = _DiagnosticServerCancellationData
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_retriggerRequest: t -> bool [@@js.get "retriggerRequest"]
    val set_retriggerRequest: t -> bool -> unit [@@js.set "retriggerRequest"]
  end
  module[@js.scope "DiagnosticServerCancellationData"] DiagnosticServerCancellationData : sig
    val is: value:any -> bool [@@js.global "is"]
  end
  module[@js.scope "DocumentDiagnosticParams"] DocumentDiagnosticParams : sig
    type t = _DocumentDiagnosticParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_textDocument: t -> TextDocumentIdentifier.t_0 [@@js.get "textDocument"]
    val set_textDocument: t -> TextDocumentIdentifier.t_0 -> unit [@@js.set "textDocument"]
    val get_identifier: t -> string [@@js.get "identifier"]
    val set_identifier: t -> string -> unit [@@js.set "identifier"]
    val get_previousResultId: t -> string [@@js.get "previousResultId"]
    val set_previousResultId: t -> string -> unit [@@js.set "previousResultId"]
    val cast: t -> WorkDoneProgressParams.t_0 [@@js.cast]
    val cast': t -> PartialResultParams.t_0 [@@js.cast]
  end
  module DocumentDiagnosticReportKind : sig
    type t = _DocumentDiagnosticReportKind
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module DocumentDiagnosticReport : sig
    type t = _DocumentDiagnosticReport
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "DocumentDiagnosticReportPartialResult"] DocumentDiagnosticReportPartialResult : sig
    type t = _DocumentDiagnosticReportPartialResult
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_items: t -> Diagnostic.t_0 list [@@js.get "items"]
    val set_items: t -> Diagnostic.t_0 list -> unit [@@js.set "items"]
  end
  module[@js.scope "DocumentDiagnosticRequest"] DocumentDiagnosticRequest : sig
    val method_: ([`L_s1_textDocument_diagnostic[@js "textDocument/diagnostic"]] [@js.enum]) [@@js.global "method"]
    val type_: (_DocumentDiagnosticParams, _DocumentDiagnosticReport, _DocumentDiagnosticReportPartialResult, _DiagnosticServerCancellationData, _DiagnosticRegistrationOptions) ProtocolRequestType.t_5 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _DocumentDiagnosticRequest_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module[@js.scope "WorkspaceDiagnosticParams"] WorkspaceDiagnosticParams : sig
    type t = _WorkspaceDiagnosticParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_identifier: t -> string [@@js.get "identifier"]
    val set_identifier: t -> string -> unit [@@js.set "identifier"]
    val get_previousResultIds: t -> anonymous_interface_3 list [@@js.get "previousResultIds"]
    val set_previousResultIds: t -> anonymous_interface_3 list -> unit [@@js.set "previousResultIds"]
    val cast: t -> WorkDoneProgressParams.t_0 [@@js.cast]
    val cast': t -> PartialResultParams.t_0 [@@js.cast]
  end
  module WorkspaceDocumentDiagnosticReport : sig
    type t = _WorkspaceDocumentDiagnosticReport
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "WorkspaceDiagnosticReport"] WorkspaceDiagnosticReport : sig
    type t = _WorkspaceDiagnosticReport
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_items: t -> _WorkspaceDocumentDiagnosticReport list [@@js.get "items"]
    val set_items: t -> _WorkspaceDocumentDiagnosticReport list -> unit [@@js.set "items"]
  end
  module[@js.scope "WorkspaceDiagnosticReportPartialResult"] WorkspaceDiagnosticReportPartialResult : sig
    type t = _WorkspaceDiagnosticReportPartialResult
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_items: t -> _WorkspaceDocumentDiagnosticReport list [@@js.get "items"]
    val set_items: t -> _WorkspaceDocumentDiagnosticReport list -> unit [@@js.set "items"]
  end
  module[@js.scope "WorkspaceDiagnosticRequest"] WorkspaceDiagnosticRequest : sig
    val method_: ([`L_s3_workspace_diagnostic[@js "workspace/diagnostic"]] [@js.enum]) [@@js.global "method"]
    val type_: (_WorkspaceDiagnosticParams, _WorkspaceDiagnosticReport, _WorkspaceDiagnosticReportPartialResult, _DiagnosticServerCancellationData, unit) ProtocolRequestType.t_5 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _WorkspaceDiagnosticRequest_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module[@js.scope "DiagnosticRefreshRequest"] DiagnosticRefreshRequest : sig
    val method_: (* FIXME: unknown type '`workspace/diagnostic/refresh`' *)any [@@js.global "method"]
    val type_: (unit, unit, unit, unit) ProtocolRequestType0.t_4 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _DiagnosticRefreshRequest_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
end
