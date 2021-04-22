[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5
open Vscode_languageserver_protocol_proposed_diagnostic
open Vscode_jsonrpc
open Vscode_languageserver_types
open Vscode_languageserver_protocol_messages
open Vscode_languageserver_protocol_protocol
open Vscode_languageserver_protocol_connection

(* import type { integer } from 'vscode-languageserver-types'; *)
(* export * from 'vscode-jsonrpc'; *)
(* export * from 'vscode-languageserver-types'; *)
(* export * from './messages'; *)
(* export * from './protocol'; *)
(* export { ProtocolConnection, createProtocolConnection } from './connection'; *)
module LSPErrorCodes : sig
  val lspReservedErrorRangeStart : Integer.t
    [@@js.global "lspReservedErrorRangeStart"]

  val serverCancelled : Integer.t [@@js.global "ServerCancelled"]

  val contentModified : Integer.t [@@js.global "ContentModified"]

  val requestCancelled : Integer.t [@@js.global "RequestCancelled"]

  val lspReservedErrorRangeEnd : Integer.t
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

  val diagnosticServerCancellationData
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

  val documentDiagnosticReportKind
    : (* FIXME: unknown type 'typeof DocumentDiagnosticReportKind' *)
      any
    [@@js.global "DocumentDiagnosticReportKind"]

  module DocumentDiagnosticReportPartialResult : sig
    type t = DocumentDiagnosticReportPartialResult.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val documentDiagnosticRequest
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

  val diagnosticRefreshRequest
    : (* FIXME: unknown type 'typeof DiagnosticRefreshRequest' *)
      any
    [@@js.global "DiagnosticRefreshRequest"]
end
[@@js.scope "Proposed"]
