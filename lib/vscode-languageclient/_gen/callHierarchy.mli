[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - BaseLanguageClient
  - CallHierarchyOptions
  - CallHierarchyRegistrationOptions
  - CancellationToken
  - ClientCapabilities
  - Disposable
  - DocumentSelector
  - ProviderResult<T1>
  - ServerCapabilities
  - TextDocument
  - TextDocumentFeature<T1, T2, T3>
  - VCallHierarchyIncomingCall
  - VCallHierarchyItem
  - VCallHierarchyOutgoingCall
  - VCallHierarchyProvider
  - VPosition
 *)
[@@@js.stop]
module type Missing = sig
  module BaseLanguageClient : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module CallHierarchyOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module CallHierarchyRegistrationOptions : sig
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
  module VCallHierarchyIncomingCall : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VCallHierarchyItem : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VCallHierarchyOutgoingCall : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VCallHierarchyProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VPosition : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
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
    module CallHierarchyOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CallHierarchyRegistrationOptions : sig
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
    module VCallHierarchyIncomingCall : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VCallHierarchyItem : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VCallHierarchyOutgoingCall : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VCallHierarchyProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VPosition : sig
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
      type _CallHierarchyFeature = [`CallHierarchyFeature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _CallHierarchyIncomingCallsSignature = [`CallHierarchyIncomingCallsSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _CallHierarchyMiddleware = [`CallHierarchyMiddleware] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _CallHierarchyOutgoingCallsSignature = [`CallHierarchyOutgoingCallsSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _CallHierarchyProvider = [`CallHierarchyProvider] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _PrepareCallHierarchySignature = [`PrepareCallHierarchySignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import { Disposable, TextDocument, ProviderResult, Position as VPosition, CallHierarchyItem as VCallHierarchyItem, CallHierarchyIncomingCall as VCallHierarchyIncomingCall, CallHierarchyOutgoingCall as VCallHierarchyOutgoingCall, CancellationToken, CallHierarchyProvider as VCallHierarchyProvider } from 'vscode'; *)
  (* import { ClientCapabilities, ServerCapabilities, DocumentSelector, CallHierarchyOptions, CallHierarchyRegistrationOptions } from 'vscode-languageserver-protocol'; *)
  (* import { TextDocumentFeature, BaseLanguageClient } from './client'; *)
  module[@js.scope "PrepareCallHierarchySignature"] PrepareCallHierarchySignature : sig
    type t = _PrepareCallHierarchySignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> token:CancellationToken.t_0 -> (VCallHierarchyItem.t_0, VCallHierarchyItem.t_0) or_array ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "CallHierarchyIncomingCallsSignature"] CallHierarchyIncomingCallsSignature : sig
    type t = _CallHierarchyIncomingCallsSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> item:VCallHierarchyItem.t_0 -> token:CancellationToken.t_0 -> VCallHierarchyIncomingCall.t_0 list ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "CallHierarchyOutgoingCallsSignature"] CallHierarchyOutgoingCallsSignature : sig
    type t = _CallHierarchyOutgoingCallsSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> item:VCallHierarchyItem.t_0 -> token:CancellationToken.t_0 -> VCallHierarchyOutgoingCall.t_0 list ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "CallHierarchyMiddleware"] CallHierarchyMiddleware : sig
    type t = _CallHierarchyMiddleware
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val prepareCallHierarchy: t -> this:unit -> document:TextDocument.t_0 -> positions:VPosition.t_0 -> token:CancellationToken.t_0 -> next:_PrepareCallHierarchySignature -> (VCallHierarchyItem.t_0, VCallHierarchyItem.t_0) or_array ProviderResult.t_1 [@@js.call "prepareCallHierarchy"]
    val provideCallHierarchyIncomingCalls: t -> this:unit -> item:VCallHierarchyItem.t_0 -> token:CancellationToken.t_0 -> next:_CallHierarchyIncomingCallsSignature -> VCallHierarchyIncomingCall.t_0 list ProviderResult.t_1 [@@js.call "provideCallHierarchyIncomingCalls"]
    val provideCallHierarchyOutgoingCalls: t -> this:unit -> item:VCallHierarchyItem.t_0 -> token:CancellationToken.t_0 -> next:_CallHierarchyOutgoingCallsSignature -> VCallHierarchyOutgoingCall.t_0 list ProviderResult.t_1 [@@js.call "provideCallHierarchyOutgoingCalls"]
  end
  module[@js.scope "CallHierarchyProvider"] CallHierarchyProvider : sig
    type t = _CallHierarchyProvider
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_client: t -> (* FIXME: unknown type *)any [@@js.get "client"]
    val set_client: t -> (* FIXME: unknown type *)any -> unit [@@js.set "client"]
    val get_middleware: t -> (* FIXME: unknown type *)any [@@js.get "middleware"]
    val set_middleware: t -> (* FIXME: unknown type *)any -> unit [@@js.set "middleware"]
    val create: client:BaseLanguageClient.t_0 -> t [@@js.create]
    val prepareCallHierarchy: t -> document:TextDocument.t_0 -> position:VPosition.t_0 -> token:CancellationToken.t_0 -> (VCallHierarchyItem.t_0, VCallHierarchyItem.t_0) or_array ProviderResult.t_1 [@@js.call "prepareCallHierarchy"]
    val provideCallHierarchyIncomingCalls: t -> item:VCallHierarchyItem.t_0 -> token:CancellationToken.t_0 -> VCallHierarchyIncomingCall.t_0 list ProviderResult.t_1 [@@js.call "provideCallHierarchyIncomingCalls"]
    val provideCallHierarchyOutgoingCalls: t -> item:VCallHierarchyItem.t_0 -> token:CancellationToken.t_0 -> VCallHierarchyOutgoingCall.t_0 list ProviderResult.t_1 [@@js.call "provideCallHierarchyOutgoingCalls"]
    val cast: t -> VCallHierarchyProvider.t_0 [@@js.cast]
  end
  module[@js.scope "CallHierarchyFeature"] CallHierarchyFeature : sig
    type t = _CallHierarchyFeature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: client:BaseLanguageClient.t_0 -> t [@@js.create]
    val fillClientCapabilities: t -> cap:ClientCapabilities.t_0 -> unit [@@js.call "fillClientCapabilities"]
    val initialize: t -> capabilities:ServerCapabilities.t_0 -> documentSelector:DocumentSelector.t_0 -> unit [@@js.call "initialize"]
    val registerLanguageProvider: t -> options:CallHierarchyRegistrationOptions.t_0 -> (Disposable.t_0 * _CallHierarchyProvider) [@@js.call "registerLanguageProvider"]
    val cast: t -> (CallHierarchyOptions.t_0 or_boolean, CallHierarchyRegistrationOptions.t_0, _CallHierarchyProvider) TextDocumentFeature.t_3 [@@js.cast]
  end
  (* export {}; *)
end
