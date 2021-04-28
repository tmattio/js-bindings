[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5
open Vscode_jsonrpc
open Vscode_languageserver_types
open Vscode_languageserver_protocol_messages
open Vscode_languageserver_protocol_protocol

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_diagnostic : t -> DiagnosticClientCapabilities.t
    [@@js.get "diagnostic"]

  val set_diagnostic : t -> DiagnosticClientCapabilities.t -> unit
    [@@js.set "diagnostic"]
end

module AnonymousInterface1 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> DocumentDiagnosticReportKind_new.t [@@js.get "kind"]

  val set_kind : t -> DocumentDiagnosticReportKind_new.t -> unit
    [@@js.set "kind"]

  val get_result_id : t -> string [@@js.get "resultId"]

  val set_result_id : t -> string -> unit [@@js.set "resultId"]

  val get_items : t -> Diagnostic.t list [@@js.get "items"]

  val set_items : t -> Diagnostic.t list -> unit [@@js.set "items"]
end

module AnonymousInterface2 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> DocumentDiagnosticReportKind_unChanged.t [@@js.get "kind"]

  val set_kind : t -> DocumentDiagnosticReportKind_unChanged.t -> unit
    [@@js.set "kind"]

  val get_result_id : t -> string [@@js.get "resultId"]

  val set_result_id : t -> string -> unit [@@js.set "resultId"]
end

module AnonymousInterface3 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> DocumentUri.t [@@js.get "uri"]

  val set_uri : t -> DocumentUri.t -> unit [@@js.set "uri"]

  val get_value : t -> string [@@js.get "value"]

  val set_value : t -> string -> unit [@@js.set "value"]
end

module AnonymousInterface4 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> DocumentUri.t [@@js.get "uri"]

  val set_uri : t -> DocumentUri.t -> unit [@@js.set "uri"]

  val get_version : t -> Integer.t or_null [@@js.get "version"]

  val set_version : t -> Integer.t or_null -> unit [@@js.set "version"]
end

module DiagnosticClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "DiagnosticClientCapabilities"]

module M_DiagnosticClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document
    :  t
    -> (TextDocumentClientCapabilities.t, AnonymousInterface0.t) intersection2
    [@@js.get "textDocument"]

  val set_text_document
    :  t
    -> (TextDocumentClientCapabilities.t, AnonymousInterface0.t) intersection2
    -> unit
    [@@js.set "textDocument"]
end
[@@js.scope "$DiagnosticClientCapabilities"]

module DiagnosticOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_identifier : t -> string [@@js.get "identifier"]

  val set_identifier : t -> string -> unit [@@js.set "identifier"]

  val get_inter_file_dependencies : t -> bool [@@js.get "interFileDependencies"]

  val set_inter_file_dependencies : t -> bool -> unit
    [@@js.set "interFileDependencies"]

  val get_workspace_provider : t -> bool [@@js.get "workspaceProvider"]

  val set_workspace_provider : t -> bool -> unit [@@js.set "workspaceProvider"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "DiagnosticOptions"]

module DiagnosticRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> DiagnosticOptions.t [@@js.cast]

  val cast'' : t -> StaticRegistrationOptions.t [@@js.cast]
end
[@@js.scope "DiagnosticRegistrationOptions"]

module M_DiagnosticServerCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_diagnostic_provider : t -> DiagnosticOptions.t
    [@@js.get "diagnosticProvider"]

  val set_diagnostic_provider : t -> DiagnosticOptions.t -> unit
    [@@js.set "diagnosticProvider"]
end
[@@js.scope "$DiagnosticServerCapabilities"]

module DiagnosticServerCancellationData : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_retrigger_request : t -> bool [@@js.get "retriggerRequest"]

  val set_retrigger_request : t -> bool -> unit [@@js.set "retriggerRequest"]
end
[@@js.scope "DiagnosticServerCancellationData"]

module DiagnosticServerCancellationData : sig
  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "DiagnosticServerCancellationData"]

module DocumentDiagnosticParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_text_document : t -> TextDocumentIdentifier.t
    [@@js.get "textDocument"]

  val set_text_document : t -> TextDocumentIdentifier.t -> unit
    [@@js.set "textDocument"]

  val get_identifier : t -> string [@@js.get "identifier"]

  val set_identifier : t -> string -> unit [@@js.set "identifier"]

  val get_previous_result_id : t -> string [@@js.get "previousResultId"]

  val set_previous_result_id : t -> string -> unit [@@js.set "previousResultId"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressParams
  end

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "DocumentDiagnosticParams"]

module DocumentDiagnosticReportKind : sig
  type t =
    ([ `new_ [@js "new"]
     | `unChanged [@js "unChanged"]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module DocumentDiagnosticReport : sig
  type t =
    ([ `U_s0_new of AnonymousInterface1.t [@js "new"]
     | `U_s2_unChanged of AnonymousInterface2.t [@js "unChanged"]
     ]
    [@js.union on_field "kind"])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module DocumentDiagnosticReportPartialResult : sig
  type t

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
    : ( DocumentDiagnosticParams.t
      , DocumentDiagnosticReport.t
      , DocumentDiagnosticReportPartialResult.t
      , DiagnosticServerCancellationData.t
      , DiagnosticRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( DocumentDiagnosticParams.t
      , DocumentDiagnosticReport.t
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "DocumentDiagnosticRequest"]

module WorkspaceDiagnosticParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_identifier : t -> string [@@js.get "identifier"]

  val set_identifier : t -> string -> unit [@@js.set "identifier"]

  val get_previous_result_ids : t -> AnonymousInterface3.t list
    [@@js.get "previousResultIds"]

  val set_previous_result_ids : t -> AnonymousInterface3.t list -> unit
    [@@js.set "previousResultIds"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressParams
  end

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "WorkspaceDiagnosticParams"]

module WorkspaceDocumentDiagnosticReport : sig
  type t = (AnonymousInterface4.t, DocumentDiagnosticReport.t) intersection2

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module WorkspaceDiagnosticReport : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_items : t -> WorkspaceDocumentDiagnosticReport.t list
    [@@js.get "items"]

  val set_items : t -> WorkspaceDocumentDiagnosticReport.t list -> unit
    [@@js.set "items"]
end
[@@js.scope "WorkspaceDiagnosticReport"]

module WorkspaceDiagnosticReportPartialResult : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_items : t -> WorkspaceDocumentDiagnosticReport.t list
    [@@js.get "items"]

  val set_items : t -> WorkspaceDocumentDiagnosticReport.t list -> unit
    [@@js.set "items"]
end
[@@js.scope "WorkspaceDiagnosticReportPartialResult"]

module WorkspaceDiagnosticRequest : sig
  val method_
    : ([ `L_s3_workspace_diagnostic [@js "workspace/diagnostic"] ][@js.enum])
    [@@js.global "method"]

  val type_
    : ( WorkspaceDiagnosticParams.t
      , WorkspaceDiagnosticReport.t
      , WorkspaceDiagnosticReportPartialResult.t
      , DiagnosticServerCancellationData.t
      , unit )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( WorkspaceDiagnosticParams.t
      , WorkspaceDiagnosticReport.t or_null
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "WorkspaceDiagnosticRequest"]

module DiagnosticRefreshRequest : sig
  val method_ : (* FIXME: unknown type '`workspace/diagnostic/refresh`' *) any
    [@@js.global "method"]

  val type_ : (unit, unit, unit, unit) ProtocolRequestType0.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = (unit, unit) RequestHandler0.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "DiagnosticRefreshRequest"]
