[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - BaseLanguageClient
  - CancellationToken
  - ClientCapabilities
  - Disposable
  - DocumentSelector
  - EventEmitter<T1>
  - Proposed.$DiagnosticClientCapabilities
  - Proposed.$DiagnosticServerCapabilities
  - Proposed.DiagnosticOptions
  - Proposed.DiagnosticRegistrationOptions
  - ProviderResult<T1>
  - ServerCapabilities
  - TextDocument
  - TextDocumentFeature<T1, T2, T3>
  - VDiagnostic
  - VEvent<T1>
 *)
[@@@js.stop]
module type Missing = sig
  module BaseLanguageClient : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module CancellationToken : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ClientCapabilities : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Disposable : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module DocumentSelector : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module EventEmitter : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module Proposed : sig
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
  end
  module ProviderResult : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module ServerCapabilities : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module TextDocument : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module TextDocumentFeature : sig
    type ('T1, 'T2, 'T3) t_3
    val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
  end
  module VDiagnostic : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VEvent : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module BaseLanguageClient : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CancellationToken : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ClientCapabilities : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Disposable : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentSelector : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module EventEmitter : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module Proposed : sig
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
    end
    module ProviderResult : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module ServerCapabilities : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TextDocument : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TextDocumentFeature : sig
      type ('T1, 'T2, 'T3) t_3
      val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
      val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
    end
    module VDiagnostic : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VEvent : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
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
    end
    module Types : sig
      open AnonymousInterfaces
      type _DiagnosticFeature = [`DiagnosticFeature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DiagnosticFeatureProvider = [`DiagnosticFeatureProvider] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DiagnosticProvider = [`DiagnosticProvider] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DiagnosticProviderMiddleware = [`DiagnosticProviderMiddleware] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProvideDiagnosticSignature = [`ProvideDiagnosticSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _VDocumentDiagnosticReport = ([`U_s0_new of anonymous_interface_0 [@js "new"] | `U_s1_unChanged of anonymous_interface_1 [@js "unChanged"]] [@js.union on_field "kind"])
      and _VDocumentDiagnosticReportKind = [`new[@js "new"] | `unChanged[@js "unChanged"]] [@js.enum]
      and _VDocumentDiagnosticReportKind_new = [`new[@js "new"]] [@js.enum]
      and _VDocumentDiagnosticReportKind_unChanged = [`unChanged[@js "unChanged"]] [@js.enum]
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
    val get_kind: t -> _VDocumentDiagnosticReportKind_new [@@js.get "kind"]
    val set_kind: t -> _VDocumentDiagnosticReportKind_new -> unit [@@js.set "kind"]
    val get_resultId: t -> string [@@js.get "resultId"]
    val set_resultId: t -> string -> unit [@@js.set "resultId"]
    val get_items: t -> VDiagnostic.t_0 list [@@js.get "items"]
    val set_items: t -> VDiagnostic.t_0 list -> unit [@@js.set "items"]
  end
  module AnonymousInterface1 : sig
    type t = anonymous_interface_1
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_kind: t -> _VDocumentDiagnosticReportKind_unChanged [@@js.get "kind"]
    val set_kind: t -> _VDocumentDiagnosticReportKind_unChanged -> unit [@@js.set "kind"]
    val get_resultId: t -> string [@@js.get "resultId"]
    val set_resultId: t -> string -> unit [@@js.set "resultId"]
  end
  (* import { Disposable, CancellationToken, ProviderResult, Diagnostic as VDiagnostic, TextDocument, Event as VEvent, EventEmitter } from 'vscode'; *)
  (* import { Proposed, ClientCapabilities, ServerCapabilities, DocumentSelector } from 'vscode-languageserver-protocol'; *)
  (* import { TextDocumentFeature, BaseLanguageClient } from './client'; *)
  module VDocumentDiagnosticReportKind : sig
    type t = _VDocumentDiagnosticReportKind
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VDocumentDiagnosticReport : sig
    type t = _VDocumentDiagnosticReport
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "DiagnosticProvider"] DiagnosticProvider : sig
    type t = _DiagnosticProvider
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_onDidChangeDiagnostics: t -> unit VEvent.t_1 [@@js.get "onDidChangeDiagnostics"]
    val set_onDidChangeDiagnostics: t -> unit VEvent.t_1 -> unit [@@js.set "onDidChangeDiagnostics"]
    val provideDiagnostics: t -> textDocument:TextDocument.t_0 -> token:CancellationToken.t_0 -> _VDocumentDiagnosticReport ProviderResult.t_1 [@@js.call "provideDiagnostics"]
  end
  module[@js.scope "ProvideDiagnosticSignature"] ProvideDiagnosticSignature : sig
    type t = _ProvideDiagnosticSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> textDocument:TextDocument.t_0 -> token:CancellationToken.t_0 -> _VDocumentDiagnosticReport ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "DiagnosticProviderMiddleware"] DiagnosticProviderMiddleware : sig
    type t = _DiagnosticProviderMiddleware
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val provideDiagnostics: t -> this:unit -> document:TextDocument.t_0 -> token:CancellationToken.t_0 -> next:_ProvideDiagnosticSignature -> _VDocumentDiagnosticReport ProviderResult.t_1 [@@js.call "provideDiagnostics"]
  end
  module[@js.scope "DiagnosticFeatureProvider"] DiagnosticFeatureProvider : sig
    type t = _DiagnosticFeatureProvider
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_onDidChangeDiagnosticsEmitter: t -> unit EventEmitter.t_1 [@@js.get "onDidChangeDiagnosticsEmitter"]
    val set_onDidChangeDiagnosticsEmitter: t -> unit EventEmitter.t_1 -> unit [@@js.set "onDidChangeDiagnosticsEmitter"]
    val get_provider: t -> _DiagnosticProvider [@@js.get "provider"]
    val set_provider: t -> _DiagnosticProvider -> unit [@@js.set "provider"]
  end
  module[@js.scope "DiagnosticFeature"] DiagnosticFeature : sig
    type t = _DiagnosticFeature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: client:BaseLanguageClient.t_0 -> t [@@js.create]
    val fillClientCapabilities: t -> capabilities:(ClientCapabilities.t_0, Proposed._DiagnosticClientCapabilities.t_0) intersection2 -> unit [@@js.call "fillClientCapabilities"]
    val initialize: t -> capabilities:(ServerCapabilities.t_0, Proposed._DiagnosticServerCapabilities.t_0) intersection2 -> documentSelector:DocumentSelector.t_0 -> unit [@@js.call "initialize"]
    val registerLanguageProvider: t -> options:Proposed.DiagnosticRegistrationOptions.t_0 -> (Disposable.t_0 * _DiagnosticFeatureProvider) [@@js.call "registerLanguageProvider"]
    val cast: t -> (Proposed.DiagnosticOptions.t_0, Proposed.DiagnosticRegistrationOptions.t_0, _DiagnosticFeatureProvider) TextDocumentFeature.t_3 [@@js.cast]
  end
  (* export {}; *)
end
