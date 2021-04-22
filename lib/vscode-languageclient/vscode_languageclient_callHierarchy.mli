[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5
open Vscode
open Vscode_language_server_protocol
open Client

(* import { Disposable, TextDocument, ProviderResult, Position as VPosition,
   CallHierarchyItem as VCallHierarchyItem, CallHierarchyIncomingCall as
   VCallHierarchyIncomingCall, CallHierarchyOutgoingCall as
   VCallHierarchyOutgoingCall, CancellationToken, CallHierarchyProvider as
   VCallHierarchyProvider } from 'vscode'; *)
(* import { ClientCapabilities, ServerCapabilities, DocumentSelector,
   CallHierarchyOptions, CallHierarchyRegistrationOptions } from
   'vscode-languageserver-protocol'; *)
(* import { TextDocumentFeature, BaseLanguageClient } from './client'; *)
module PrepareCallHierarchySignature : sig
  type t = _PrepareCallHierarchySignature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> (VCallHierarchyItem.t, VCallHierarchyItem.t) or_array ProviderResult.t
    [@@js.apply]
end
[@@js.scope "PrepareCallHierarchySignature"]

module CallHierarchyIncomingCallsSignature : sig
  type t = _CallHierarchyIncomingCallsSignature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> item:VCallHierarchyItem.t
    -> token:CancellationToken.t
    -> VCallHierarchyIncomingCall.t list ProviderResult.t
    [@@js.apply]
end
[@@js.scope "CallHierarchyIncomingCallsSignature"]

module CallHierarchyOutgoingCallsSignature : sig
  type t = _CallHierarchyOutgoingCallsSignature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> this:unit
    -> item:VCallHierarchyItem.t
    -> token:CancellationToken.t
    -> VCallHierarchyOutgoingCall.t list ProviderResult.t
    [@@js.apply]
end
[@@js.scope "CallHierarchyOutgoingCallsSignature"]

module CallHierarchyMiddleware : sig
  type t = _CallHierarchyMiddleware

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val prepareCallHierarchy
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> positions:VPosition.t
    -> token:CancellationToken.t
    -> next:_PrepareCallHierarchySignature
    -> (VCallHierarchyItem.t, VCallHierarchyItem.t) or_array ProviderResult.t
    [@@js.call "prepareCallHierarchy"]

  val provideCallHierarchyIncomingCalls
    :  t
    -> this:unit
    -> item:VCallHierarchyItem.t
    -> token:CancellationToken.t
    -> next:_CallHierarchyIncomingCallsSignature
    -> VCallHierarchyIncomingCall.t list ProviderResult.t
    [@@js.call "provideCallHierarchyIncomingCalls"]

  val provideCallHierarchyOutgoingCalls
    :  t
    -> this:unit
    -> item:VCallHierarchyItem.t
    -> token:CancellationToken.t
    -> next:_CallHierarchyOutgoingCallsSignature
    -> VCallHierarchyOutgoingCall.t list ProviderResult.t
    [@@js.call "provideCallHierarchyOutgoingCalls"]
end
[@@js.scope "CallHierarchyMiddleware"]

module CallHierarchyProvider : sig
  type t = _CallHierarchyProvider

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_client : t -> (* FIXME: unknown type *) any [@@js.get "client"]

  val set_client : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "client"]

  val get_middleware : t -> (* FIXME: unknown type *) any
    [@@js.get "middleware"]

  val set_middleware : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "middleware"]

  val create : client:BaseLanguageClient.t -> t [@@js.create]

  val prepareCallHierarchy
    :  t
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> (VCallHierarchyItem.t, VCallHierarchyItem.t) or_array ProviderResult.t
    [@@js.call "prepareCallHierarchy"]

  val provideCallHierarchyIncomingCalls
    :  t
    -> item:VCallHierarchyItem.t
    -> token:CancellationToken.t
    -> VCallHierarchyIncomingCall.t list ProviderResult.t
    [@@js.call "provideCallHierarchyIncomingCalls"]

  val provideCallHierarchyOutgoingCalls
    :  t
    -> item:VCallHierarchyItem.t
    -> token:CancellationToken.t
    -> VCallHierarchyOutgoingCall.t list ProviderResult.t
    [@@js.call "provideCallHierarchyOutgoingCalls"]

  val cast : t -> VCallHierarchyProvider.t [@@js.cast]
end
[@@js.scope "CallHierarchyProvider"]

module CallHierarchyFeature : sig
  type t = _CallHierarchyFeature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : client:BaseLanguageClient.t -> t [@@js.create]

  val fillClientCapabilities : t -> cap:ClientCapabilities.t -> unit
    [@@js.call "fillClientCapabilities"]

  val initialize
    :  t
    -> capabilities:ServerCapabilities.t
    -> documentSelector:DocumentSelector.t
    -> unit
    [@@js.call "initialize"]

  val registerLanguageProvider
    :  t
    -> options:CallHierarchyRegistrationOptions.t
    -> Disposable.t * _CallHierarchyProvider
    [@@js.call "registerLanguageProvider"]

  val cast
    :  t
    -> ( CallHierarchyOptions.t or_boolean
       , CallHierarchyRegistrationOptions.t
       , _CallHierarchyProvider )
       TextDocumentFeature.t
    [@@js.cast]
end
[@@js.scope "CallHierarchyFeature"]
(* export {}; *)
