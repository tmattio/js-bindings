[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - diag.$DiagnosticClientCapabilities
  - diag.$DiagnosticServerCapabilities
  - diag.DiagnosticClientCapabilities
  - diag.DiagnosticOptions
  - diag.DiagnosticRegistrationOptions
  - diag.DiagnosticServerCancellationData
  - diag.DocumentDiagnosticParams
  - diag.DocumentDiagnosticReport
  - diag.DocumentDiagnosticReportKind
  - diag.DocumentDiagnosticReportPartialResult
  - diag.WorkspaceDiagnosticParams
  - diag.WorkspaceDiagnosticReport
  - diag.WorkspaceDiagnosticReportPartialResult
  - integer
 *)
[@@@js.stop]
module type Missing = sig
  module diag : sig
    module $DiagnosticClientCapabilities : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module $DiagnosticServerCapabilities : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DiagnosticClientCapabilities : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DiagnosticOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DiagnosticRegistrationOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DiagnosticServerCancellationData : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentDiagnosticParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentDiagnosticReport : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentDiagnosticReportKind : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentDiagnosticReportPartialResult : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WorkspaceDiagnosticParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WorkspaceDiagnosticReport : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WorkspaceDiagnosticReportPartialResult : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
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
    module diag : sig
      module $DiagnosticClientCapabilities : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module $DiagnosticServerCapabilities : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DiagnosticClientCapabilities : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DiagnosticOptions : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DiagnosticRegistrationOptions : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DiagnosticServerCancellationData : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DocumentDiagnosticParams : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DocumentDiagnosticReport : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DocumentDiagnosticReportKind : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DocumentDiagnosticReportPartialResult : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module WorkspaceDiagnosticParams : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module WorkspaceDiagnosticReport : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module WorkspaceDiagnosticReportPartialResult : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
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
      
    end
    module Types : sig
      open AnonymousInterfaces
      type _Proposed__DiagnosticClientCapabilities = Diag._DiagnosticClientCapabilities.t_0
      and _Proposed__DiagnosticServerCapabilities = Diag._DiagnosticServerCapabilities.t_0
      and _Proposed_DiagnosticClientCapabilities = Diag.DiagnosticClientCapabilities.t_0
      and _Proposed_DiagnosticOptions = Diag.DiagnosticOptions.t_0
      and _Proposed_DiagnosticRegistrationOptions = Diag.DiagnosticRegistrationOptions.t_0
      and _Proposed_DiagnosticServerCancellationData = Diag.DiagnosticServerCancellationData.t_0
      and _Proposed_DocumentDiagnosticParams = Diag.DocumentDiagnosticParams.t_0
      and _Proposed_DocumentDiagnosticReport = Diag.DocumentDiagnosticReport.t_0
      and _Proposed_DocumentDiagnosticReportKind = Diag.DocumentDiagnosticReportKind.t_0
      and _Proposed_DocumentDiagnosticReportPartialResult = Diag.DocumentDiagnosticReportPartialResult.t_0
      and _Proposed_WorkspaceDiagnosticParams = Diag.WorkspaceDiagnosticParams.t_0
      and _Proposed_WorkspaceDiagnosticReport = Diag.WorkspaceDiagnosticReport.t_0
      and _Proposed_WorkspaceDiagnosticReportPartialResult = Diag.WorkspaceDiagnosticReportPartialResult.t_0
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import type { integer } from 'vscode-languageserver-types'; *)
  (* export * from 'vscode-jsonrpc'; *)
  (* export * from 'vscode-languageserver-types'; *)
  (* export * from './messages'; *)
  (* export * from './protocol'; *)
  (* export { ProtocolConnection, createProtocolConnection } from './connection'; *)
  module[@js.scope "LSPErrorCodes"] LSPErrorCodes : sig
    val lspReservedErrorRangeStart: Integer.t_0 [@@js.global "lspReservedErrorRangeStart"]
    val serverCancelled: Integer.t_0 [@@js.global "ServerCancelled"]
    val contentModified: Integer.t_0 [@@js.global "ContentModified"]
    val requestCancelled: Integer.t_0 [@@js.global "RequestCancelled"]
    val lspReservedErrorRangeEnd: Integer.t_0 [@@js.global "lspReservedErrorRangeEnd"]
  end
  (* import * as diag from './proposed.diagnostic'; *)
  module[@js.scope "Proposed"] Proposed : sig
    module DiagnosticClientCapabilities : sig
      type t = _Proposed_DiagnosticClientCapabilities
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module M_DiagnosticClientCapabilities : sig
      type t = _Proposed__DiagnosticClientCapabilities
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DiagnosticOptions : sig
      type t = _Proposed_DiagnosticOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DiagnosticRegistrationOptions : sig
      type t = _Proposed_DiagnosticRegistrationOptions
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module M_DiagnosticServerCapabilities : sig
      type t = _Proposed__DiagnosticServerCapabilities
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentDiagnosticParams : sig
      type t = _Proposed_DocumentDiagnosticParams
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DiagnosticServerCancellationData : sig
      type t = _Proposed_DiagnosticServerCancellationData
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    val diagnosticServerCancellationData: (* FIXME: unknown type 'typeof diag.DiagnosticServerCancellationData' *)any [@@js.global "DiagnosticServerCancellationData"]
    module DocumentDiagnosticReport : sig
      type t = _Proposed_DocumentDiagnosticReport
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentDiagnosticReportKind : sig
      type t = _Proposed_DocumentDiagnosticReportKind
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    val documentDiagnosticReportKind: (* FIXME: unknown type 'typeof diag.DocumentDiagnosticReportKind' *)any [@@js.global "DocumentDiagnosticReportKind"]
    module DocumentDiagnosticReportPartialResult : sig
      type t = _Proposed_DocumentDiagnosticReportPartialResult
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    val documentDiagnosticRequest: (* FIXME: unknown type 'typeof diag.DocumentDiagnosticRequest' *)any [@@js.global "DocumentDiagnosticRequest"]
    module WorkspaceDiagnosticParams : sig
      type t = _Proposed_WorkspaceDiagnosticParams
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WorkspaceDiagnosticReport : sig
      type t = _Proposed_WorkspaceDiagnosticReport
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WorkspaceDiagnosticReportPartialResult : sig
      type t = _Proposed_WorkspaceDiagnosticReportPartialResult
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    val diagnosticRefreshRequest: (* FIXME: unknown type 'typeof diag.DiagnosticRefreshRequest' *)any [@@js.global "DiagnosticRefreshRequest"]
  end
end
