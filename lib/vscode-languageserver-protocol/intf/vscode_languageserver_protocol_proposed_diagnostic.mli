[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_1 = [ `anonymous_interface_1 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_2 = [ `anonymous_interface_2 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_3 = [ `anonymous_interface_3 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_4 = [ `anonymous_interface_4 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type _DiagnosticClientCapabilities = [ `_DiagnosticClientCapabilities ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DiagnosticServerCapabilities = [ `_DiagnosticServerCapabilities ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DiagnosticClientCapabilities = [ `DiagnosticClientCapabilities ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DiagnosticOptions = [ `DiagnosticOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DiagnosticRefreshRequest_HandlerSignature =
      (unit, unit) RequestHandler0.t_2

    and _DiagnosticRegistrationOptions =
      [ `DiagnosticRegistrationOptions | `DiagnosticOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DiagnosticServerCancellationData =
      [ `DiagnosticServerCancellationData ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DocumentDiagnosticParams = [ `DocumentDiagnosticParams ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DocumentDiagnosticReport =
      ([ `U_s0_new of anonymous_interface_1 [@js "new"]
       | `U_s2_unChanged of anonymous_interface_2 [@js "unChanged"]
       ]
      [@js.union on_field "kind"])

    and _DocumentDiagnosticReportKind =
      ([ `new_ [@js "new"]
       | `unChanged [@js "unChanged"]
       ]
      [@js.enum])

    and _DocumentDiagnosticReportKind_new = ([ `new_ [@js "new"] ][@js.enum])

    and _DocumentDiagnosticReportKind_unChanged =
      ([ `unChanged [@js "unChanged"] ][@js.enum])

    and _DocumentDiagnosticReportPartialResult =
      [ `DocumentDiagnosticReportPartialResult ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DocumentDiagnosticRequest_HandlerSignature =
      ( _DocumentDiagnosticParams
      , _DocumentDiagnosticReport
      , unit )
      RequestHandler.t_3

    and _WorkspaceDiagnosticParams = [ `WorkspaceDiagnosticParams ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WorkspaceDiagnosticReport = [ `WorkspaceDiagnosticReport ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WorkspaceDiagnosticReportPartialResult =
      [ `WorkspaceDiagnosticReportPartialResult ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WorkspaceDiagnosticRequest_HandlerSignature =
      ( _WorkspaceDiagnosticParams
      , _WorkspaceDiagnosticReport or_null
      , unit )
      RequestHandler.t_3

    and _WorkspaceDocumentDiagnosticReport =
      (anonymous_interface_4, _DocumentDiagnosticReport) intersection2
  end
end

open Internal
open AnonymousInterfaces
open Types

module AnonymousInterface0 : sig
  type t = anonymous_interface_0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_diagnostic : t -> _DiagnosticClientCapabilities
    [@@js.get "diagnostic"]

  val set_diagnostic : t -> _DiagnosticClientCapabilities -> unit
    [@@js.set "diagnostic"]
end

module AnonymousInterface1 : sig
  type t = anonymous_interface_1

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> _DocumentDiagnosticReportKind_new [@@js.get "kind"]

  val set_kind : t -> _DocumentDiagnosticReportKind_new -> unit
    [@@js.set "kind"]

  val get_resultId : t -> string [@@js.get "resultId"]

  val set_resultId : t -> string -> unit [@@js.set "resultId"]

  val get_items : t -> Diagnostic.t list [@@js.get "items"]

  val set_items : t -> Diagnostic.t list -> unit [@@js.set "items"]
end

module AnonymousInterface2 : sig
  type t = anonymous_interface_2

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> _DocumentDiagnosticReportKind_unChanged [@@js.get "kind"]

  val set_kind : t -> _DocumentDiagnosticReportKind_unChanged -> unit
    [@@js.set "kind"]

  val get_resultId : t -> string [@@js.get "resultId"]

  val set_resultId : t -> string -> unit [@@js.set "resultId"]
end

module AnonymousInterface3 : sig
  type t = anonymous_interface_3

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> DocumentUri.t [@@js.get "uri"]

  val set_uri : t -> DocumentUri.t -> unit [@@js.set "uri"]

  val get_value : t -> string [@@js.get "value"]

  val set_value : t -> string -> unit [@@js.set "value"]
end

module AnonymousInterface4 : sig
  type t = anonymous_interface_4

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> DocumentUri.t [@@js.get "uri"]

  val set_uri : t -> DocumentUri.t -> unit [@@js.set "uri"]

  val get_version : t -> Integer.t or_null [@@js.get "version"]

  val set_version : t -> Integer.t or_null -> unit [@@js.set "version"]
end

(* import { RequestHandler0, RequestHandler } from 'vscode-jsonrpc'; *)
(* import { TextDocumentIdentifier, Diagnostic, DocumentUri, integer } from
   'vscode-languageserver-types'; *)
(* import { ProtocolRequestType0, ProtocolRequestType } from './messages'; *)
(* import { PartialResultParams, StaticRegistrationOptions,
   WorkDoneProgressParams, TextDocumentRegistrationOptions,
   WorkDoneProgressOptions, TextDocumentClientCapabilities } from './protocol'; *)
module DiagnosticClientCapabilities : sig
  type t = _DiagnosticClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "DiagnosticClientCapabilities"]

module M_DiagnosticClientCapabilities : sig
  type t = _DiagnosticClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument
    :  t
    -> (TextDocumentClientCapabilities.t, anonymous_interface_0) intersection2
    [@@js.get "textDocument"]

  val set_textDocument
    :  t
    -> (TextDocumentClientCapabilities.t, anonymous_interface_0) intersection2
    -> unit
    [@@js.set "textDocument"]
end
[@@js.scope "$DiagnosticClientCapabilities"]

module DiagnosticOptions : sig
  type t = _DiagnosticOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_identifier : t -> string [@@js.get "identifier"]

  val set_identifier : t -> string -> unit [@@js.set "identifier"]

  val get_interFileDependencies : t -> bool [@@js.get "interFileDependencies"]

  val set_interFileDependencies : t -> bool -> unit
    [@@js.set "interFileDependencies"]

  val get_workspaceProvider : t -> bool [@@js.get "workspaceProvider"]

  val set_workspaceProvider : t -> bool -> unit [@@js.set "workspaceProvider"]

  val cast : t -> WorkDoneProgressOptions.t [@@js.cast]
end
[@@js.scope "DiagnosticOptions"]

module DiagnosticRegistrationOptions : sig
  type t = _DiagnosticRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentRegistrationOptions.t [@@js.cast]

  val cast' : t -> _DiagnosticOptions [@@js.cast]

  val cast'' : t -> StaticRegistrationOptions.t [@@js.cast]
end
[@@js.scope "DiagnosticRegistrationOptions"]

module M_DiagnosticServerCapabilities : sig
  type t = _DiagnosticServerCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_diagnosticProvider : t -> _DiagnosticOptions
    [@@js.get "diagnosticProvider"]

  val set_diagnosticProvider : t -> _DiagnosticOptions -> unit
    [@@js.set "diagnosticProvider"]
end
[@@js.scope "$DiagnosticServerCapabilities"]

module DiagnosticServerCancellationData : sig
  type t = _DiagnosticServerCancellationData

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_retriggerRequest : t -> bool [@@js.get "retriggerRequest"]

  val set_retriggerRequest : t -> bool -> unit [@@js.set "retriggerRequest"]
end
[@@js.scope "DiagnosticServerCancellationData"]

module DiagnosticServerCancellationData : sig
  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "DiagnosticServerCancellationData"]

module DocumentDiagnosticParams : sig
  type t = _DocumentDiagnosticParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_textDocument : t -> TextDocumentIdentifier.t [@@js.get "textDocument"]

  val set_textDocument : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_identifier : t -> string [@@js.get "identifier"]

  val set_identifier : t -> string -> unit [@@js.set "identifier"]

  val get_previousResultId : t -> string [@@js.get "previousResultId"]

  val set_previousResultId : t -> string -> unit [@@js.set "previousResultId"]

  val cast : t -> WorkDoneProgressParams.t [@@js.cast]

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "DocumentDiagnosticParams"]

module DocumentDiagnosticReportKind : sig
  type t = _DocumentDiagnosticReportKind

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module DocumentDiagnosticReport : sig
  type t = _DocumentDiagnosticReport

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module DocumentDiagnosticReportPartialResult : sig
  type t = _DocumentDiagnosticReportPartialResult

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_items : t -> Diagnostic.t list [@@js.get "items"]

  val set_items : t -> Diagnostic.t list -> unit [@@js.set "items"]
end
[@@js.scope "DocumentDiagnosticReportPartialResult"]

module DocumentDiagnosticRequest : sig
  val method_
    : ([ `L_s1_textDocument_diagnostic [@js "textDocument/diagnostic"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _DocumentDiagnosticParams
      , _DocumentDiagnosticReport
      , _DocumentDiagnosticReportPartialResult
      , _DiagnosticServerCancellationData
      , _DiagnosticRegistrationOptions )
      ProtocolRequestType.t_5
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = _DocumentDiagnosticRequest_HandlerSignature

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "DocumentDiagnosticRequest"]

module WorkspaceDiagnosticParams : sig
  type t = _WorkspaceDiagnosticParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_identifier : t -> string [@@js.get "identifier"]

  val set_identifier : t -> string -> unit [@@js.set "identifier"]

  val get_previousResultIds : t -> anonymous_interface_3 list
    [@@js.get "previousResultIds"]

  val set_previousResultIds : t -> anonymous_interface_3 list -> unit
    [@@js.set "previousResultIds"]

  val cast : t -> WorkDoneProgressParams.t [@@js.cast]

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "WorkspaceDiagnosticParams"]

module WorkspaceDocumentDiagnosticReport : sig
  type t = _WorkspaceDocumentDiagnosticReport

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module WorkspaceDiagnosticReport : sig
  type t = _WorkspaceDiagnosticReport

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_items : t -> _WorkspaceDocumentDiagnosticReport list
    [@@js.get "items"]

  val set_items : t -> _WorkspaceDocumentDiagnosticReport list -> unit
    [@@js.set "items"]
end
[@@js.scope "WorkspaceDiagnosticReport"]

module WorkspaceDiagnosticReportPartialResult : sig
  type t = _WorkspaceDiagnosticReportPartialResult

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_items : t -> _WorkspaceDocumentDiagnosticReport list
    [@@js.get "items"]

  val set_items : t -> _WorkspaceDocumentDiagnosticReport list -> unit
    [@@js.set "items"]
end
[@@js.scope "WorkspaceDiagnosticReportPartialResult"]

module WorkspaceDiagnosticRequest : sig
  val method_
    : ([ `L_s3_workspace_diagnostic [@js "workspace/diagnostic"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( _WorkspaceDiagnosticParams
      , _WorkspaceDiagnosticReport
      , _WorkspaceDiagnosticReportPartialResult
      , _DiagnosticServerCancellationData
      , unit )
      ProtocolRequestType.t_5
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = _WorkspaceDiagnosticRequest_HandlerSignature

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "WorkspaceDiagnosticRequest"]

module DiagnosticRefreshRequest : sig
  val method_ : (* FIXME: unknown type '`workspace/diagnostic/refresh`' *) any
    [@@js.global "method"]

  val type_ : (unit, unit, unit, unit) ProtocolRequestType0.t_4
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = _DiagnosticRefreshRequest_HandlerSignature

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "DiagnosticRefreshRequest"]
