[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5
open Vscode_languageserver_protocol_proposed_diagnostic
open Vscode_languageserver_protocol_connection

include module type of struct
  include Vscode_jsonrpc
end

include module type of struct
  include Vscode_languageserver_types
end

include module type of struct
  include Vscode_languageserver_protocol_messages
end

include module type of struct
  include Vscode_languageserver_protocol_protocol
end

include module type of struct
  module ProtocolConnection =
    Vscode_languageserver_protocol_protocol_connection.ProtocolConnection

  let create_crotocol_connection =
    Vscode_languageserver_protocol_protocol_connection
    .create_crotocol_connection
end

module LSPErrorCodes : sig
  val lsp_reserved_error_range_start : Integer.t
    [@@js.global "lspReservedErrorRangeStart"]

  val server_cancelled : Integer.t [@@js.global "ServerCancelled"]

  val content_modified : Integer.t [@@js.global "ContentModified"]

  val request_cancelled : Integer.t [@@js.global "RequestCancelled"]

  val lsp_reserved_error_range_end : Integer.t
    [@@js.global "lspReservedErrorRangeEnd"]
end
[@@js.scope "LSPErrorCodes"]

(* import * as diag from './proposed.diagnostic'; *)
module Proposed : sig
  module DiagnosticClientCapabilities : sig
    type t = DiagnosticClientCapabilities.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module M_DiagnosticClientCapabilities : sig
    type t = DiagnosticClientCapabilities.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DiagnosticOptions : sig
    type t = DiagnosticOptions.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DiagnosticRegistrationOptions : sig
    type t = DiagnosticRegistrationOptions.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module M_DiagnosticServerCapabilities : sig
    type t = DiagnosticServerCapabilities.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DocumentDiagnosticParams : sig
    type t = DocumentDiagnosticParams.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DiagnosticServerCancellationData : sig
    type t = DiagnosticServerCancellationData.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val diagnostic_server_cancellation_data
    : (* FIXME: unknown type 'typeof DiagnosticServerCancellationData' *)
      any
    [@@js.global "DiagnosticServerCancellationData"]

  module DocumentDiagnosticReport : sig
    type t = DocumentDiagnosticReport.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DocumentDiagnosticReportKind : sig
    type t = DocumentDiagnosticReportKind.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val document_diagnostic_report_kind
    : (* FIXME: unknown type 'typeof DocumentDiagnosticReportKind' *)
      any
    [@@js.global "DocumentDiagnosticReportKind"]

  module DocumentDiagnosticReportPartialResult : sig
    type t = DocumentDiagnosticReportPartialResult.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val document_diagnostic_request
    : (* FIXME: unknown type 'typeof DocumentDiagnosticRequest' *)
      any
    [@@js.global "DocumentDiagnosticRequest"]

  module WorkspaceDiagnosticParams : sig
    type t = WorkspaceDiagnosticParams.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module WorkspaceDiagnosticReport : sig
    type t = WorkspaceDiagnosticReport.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module WorkspaceDiagnosticReportPartialResult : sig
    type t = WorkspaceDiagnosticReportPartialResult.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val diagnostic_refresh_request
    : (* FIXME: unknown type 'typeof DiagnosticRefreshRequest' *)
      any
    [@@js.global "DiagnosticRefreshRequest"]
end
[@@js.scope "Proposed"]
