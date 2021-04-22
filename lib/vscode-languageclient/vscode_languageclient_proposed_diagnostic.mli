[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> _VDocumentDiagnosticReportKind_new [@@js.get "kind"]

  val set_kind : t -> _VDocumentDiagnosticReportKind_new -> unit
    [@@js.set "kind"]

  val get_resultId : t -> string [@@js.get "resultId"]

  val set_resultId : t -> string -> unit [@@js.set "resultId"]

  val get_items : t -> VDiagnostic.t list [@@js.get "items"]

  val set_items : t -> VDiagnostic.t list -> unit [@@js.set "items"]
end

module AnonymousInterface1 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> _VDocumentDiagnosticReportKind_unChanged [@@js.get "kind"]

  val set_kind : t -> _VDocumentDiagnosticReportKind_unChanged -> unit
    [@@js.set "kind"]

  val get_resultId : t -> string [@@js.get "resultId"]

  val set_resultId : t -> string -> unit [@@js.set "resultId"]
end

(* import { Disposable, CancellationToken, ProviderResult, Diagnostic as
   VDiagnostic, TextDocument, Event as VEvent, EventEmitter } from 'vscode'; *)
(* import { Proposed, ClientCapabilities, ServerCapabilities, DocumentSelector }
   from 'vscode-languageserver-protocol'; *)
(* import { TextDocumentFeature, BaseLanguageClient } from './client'; *)
module VDocumentDiagnosticReportKind : sig
  type t =
    ([ `new_ [@js "new"]
     | `unChanged [@js "unChanged"]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module VDocumentDiagnosticReport : sig
  type t =
    ([ `U_s0_new of AnonymousInterface0.t [@js "new"]
     | `U_s1_unChanged of AnonymousInterface1.t [@js "unChanged"]
     ]
    [@js.union on_field "kind"])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module DiagnosticProvider : sig
  type t = _DiagnosticProvider

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_onDidChangeDiagnostics : t -> unit VEvent.t
    [@@js.get "onDidChangeDiagnostics"]

  val set_onDidChangeDiagnostics : t -> unit VEvent.t -> unit
    [@@js.set "onDidChangeDiagnostics"]

  val provideDiagnostics
    :  t
    -> textDocument:TextDocument.t
    -> token:CancellationToken.t
    -> _VDocumentDiagnosticReport ProviderResult.t
    [@@js.call "provideDiagnostics"]
end
[@@js.scope "DiagnosticProvider"]

module ProvideDiagnosticSignature : sig
  type t = _ProvideDiagnosticSignature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> textDocument:TextDocument.t
    -> token:CancellationToken.t
    -> _VDocumentDiagnosticReport ProviderResult.t
    [@@js.apply]
end
[@@js.scope "ProvideDiagnosticSignature"]

module DiagnosticProviderMiddleware : sig
  type t = _DiagnosticProviderMiddleware

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val provideDiagnostics
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> token:CancellationToken.t
    -> next:_ProvideDiagnosticSignature
    -> _VDocumentDiagnosticReport ProviderResult.t
    [@@js.call "provideDiagnostics"]
end
[@@js.scope "DiagnosticProviderMiddleware"]

module DiagnosticFeatureProvider : sig
  type t = _DiagnosticFeatureProvider

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_onDidChangeDiagnosticsEmitter : t -> unit EventEmitter.t
    [@@js.get "onDidChangeDiagnosticsEmitter"]

  val set_onDidChangeDiagnosticsEmitter : t -> unit EventEmitter.t -> unit
    [@@js.set "onDidChangeDiagnosticsEmitter"]

  val get_provider : t -> _DiagnosticProvider [@@js.get "provider"]

  val set_provider : t -> _DiagnosticProvider -> unit [@@js.set "provider"]
end
[@@js.scope "DiagnosticFeatureProvider"]

module DiagnosticFeature : sig
  type t = _DiagnosticFeature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : client:BaseLanguageClient.t -> t [@@js.create]

  val fillClientCapabilities
    :  t
    -> capabilities:
         ( ClientCapabilities.t
         , Proposed.DiagnosticClientCapabilities.t )
         intersection2
    -> unit
    [@@js.call "fillClientCapabilities"]

  val initialize
    :  t
    -> capabilities:
         ( ServerCapabilities.t
         , Proposed.DiagnosticServerCapabilities.t )
         intersection2
    -> documentSelector:DocumentSelector.t
    -> unit
    [@@js.call "initialize"]

  val registerLanguageProvider
    :  t
    -> options:Proposed.DiagnosticRegistrationOptions.t
    -> Disposable.t * _DiagnosticFeatureProvider
    [@@js.call "registerLanguageProvider"]

  val cast
    :  t
    -> ( Proposed.DiagnosticOptions.t
       , Proposed.DiagnosticRegistrationOptions.t
       , _DiagnosticFeatureProvider )
       TextDocumentFeature.t
    [@@js.cast]
end
[@@js.scope "DiagnosticFeature"]
(* export {}; *)
