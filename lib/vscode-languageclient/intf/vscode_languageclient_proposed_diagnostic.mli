[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_1 = [ `anonymous_interface_1 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type _DiagnosticFeature = [ `DiagnosticFeature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DiagnosticFeatureProvider = [ `DiagnosticFeatureProvider ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DiagnosticProvider = [ `DiagnosticProvider ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DiagnosticProviderMiddleware = [ `DiagnosticProviderMiddleware ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ProvideDiagnosticSignature = [ `ProvideDiagnosticSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _VDocumentDiagnosticReport =
      ([ `U_s0_new of anonymous_interface_0 [@js "new"]
       | `U_s1_unChanged of anonymous_interface_1 [@js "unChanged"]
       ]
      [@js.union on_field "kind"])

    and _VDocumentDiagnosticReportKind =
      ([ `new_ [@js "new"]
       | `unChanged [@js "unChanged"]
       ]
      [@js.enum])

    and _VDocumentDiagnosticReportKind_new = ([ `new_ [@js "new"] ][@js.enum])

    and _VDocumentDiagnosticReportKind_unChanged =
      ([ `unChanged [@js "unChanged"] ][@js.enum])
  end
end

open Internal
open AnonymousInterfaces
open Types

module AnonymousInterface0 : sig
  type t = anonymous_interface_0

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
  type t = anonymous_interface_1

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
  type t = _VDocumentDiagnosticReportKind

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module VDocumentDiagnosticReport : sig
  type t = _VDocumentDiagnosticReport

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
