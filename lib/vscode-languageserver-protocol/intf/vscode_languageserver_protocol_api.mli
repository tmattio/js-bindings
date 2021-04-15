[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _Proposed__DiagnosticClientCapabilities =
      Vscode_languageserver_protocol_proposed_diagnostic
      .DiagnosticClientCapabilities
      .t

    and _Proposed__DiagnosticServerCapabilities =
      Vscode_languageserver_protocol_proposed_diagnostic
      .DiagnosticServerCapabilities
      .t

    and _Proposed_DiagnosticClientCapabilities =
      Vscode_languageserver_protocol_proposed_diagnostic
      .DiagnosticClientCapabilities
      .t

    and _Proposed_DiagnosticOptions =
      Vscode_languageserver_protocol_proposed_diagnostic.DiagnosticOptions.t

    and _Proposed_DiagnosticRegistrationOptions =
      Vscode_languageserver_protocol_proposed_diagnostic
      .DiagnosticRegistrationOptions
      .t

    and _Proposed_DiagnosticServerCancellationData =
      Vscode_languageserver_protocol_proposed_diagnostic
      .DiagnosticServerCancellationData
      .t

    and _Proposed_DocumentDiagnosticParams =
      Vscode_languageserver_protocol_proposed_diagnostic
      .DocumentDiagnosticParams
      .t

    and _Proposed_DocumentDiagnosticReport =
      Vscode_languageserver_protocol_proposed_diagnostic
      .DocumentDiagnosticReport
      .t

    and _Proposed_DocumentDiagnosticReportKind =
      Vscode_languageserver_protocol_proposed_diagnostic
      .DocumentDiagnosticReportKind
      .t

    and _Proposed_DocumentDiagnosticReportPartialResult =
      Vscode_languageserver_protocol_proposed_diagnostic
      .DocumentDiagnosticReportPartialResult
      .t

    and _Proposed_WorkspaceDiagnosticParams =
      Vscode_languageserver_protocol_proposed_diagnostic
      .WorkspaceDiagnosticParams
      .t

    and _Proposed_WorkspaceDiagnosticReport =
      Vscode_languageserver_protocol_proposed_diagnostic
      .WorkspaceDiagnosticReport
      .t

    and _Proposed_WorkspaceDiagnosticReportPartialResult =
      Vscode_languageserver_protocol_proposed_diagnostic
      .WorkspaceDiagnosticReportPartialResult
      .t
  end
end

open Internal
open AnonymousInterfaces
open Types
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
    type t = _Proposed_DiagnosticClientCapabilities

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module M_DiagnosticClientCapabilities : sig
    type t = _Proposed__DiagnosticClientCapabilities

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DiagnosticOptions : sig
    type t = _Proposed_DiagnosticOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DiagnosticRegistrationOptions : sig
    type t = _Proposed_DiagnosticRegistrationOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module M_DiagnosticServerCapabilities : sig
    type t = _Proposed__DiagnosticServerCapabilities

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DocumentDiagnosticParams : sig
    type t = _Proposed_DocumentDiagnosticParams

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DiagnosticServerCancellationData : sig
    type t = _Proposed_DiagnosticServerCancellationData

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val diagnosticServerCancellationData
    : (* FIXME: unknown type 'typeof
         Vscode_languageserver_protocol_proposed_diagnostic.DiagnosticServerCancellationData' *)
      any
    [@@js.global "DiagnosticServerCancellationData"]

  module DocumentDiagnosticReport : sig
    type t = _Proposed_DocumentDiagnosticReport

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DocumentDiagnosticReportKind : sig
    type t = _Proposed_DocumentDiagnosticReportKind

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val documentDiagnosticReportKind
    : (* FIXME: unknown type 'typeof
         Vscode_languageserver_protocol_proposed_diagnostic.DocumentDiagnosticReportKind' *)
      any
    [@@js.global "DocumentDiagnosticReportKind"]

  module DocumentDiagnosticReportPartialResult : sig
    type t = _Proposed_DocumentDiagnosticReportPartialResult

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val documentDiagnosticRequest
    : (* FIXME: unknown type 'typeof
         Vscode_languageserver_protocol_proposed_diagnostic.DocumentDiagnosticRequest' *)
      any
    [@@js.global "DocumentDiagnosticRequest"]

  module WorkspaceDiagnosticParams : sig
    type t = _Proposed_WorkspaceDiagnosticParams

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module WorkspaceDiagnosticReport : sig
    type t = _Proposed_WorkspaceDiagnosticReport

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module WorkspaceDiagnosticReportPartialResult : sig
    type t = _Proposed_WorkspaceDiagnosticReportPartialResult

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val diagnosticRefreshRequest
    : (* FIXME: unknown type 'typeof
         Vscode_languageserver_protocol_proposed_diagnostic.DiagnosticRefreshRequest' *)
      any
    [@@js.global "DiagnosticRefreshRequest"]
end
[@@js.scope "Proposed"]
