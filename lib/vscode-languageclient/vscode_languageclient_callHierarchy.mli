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
  type t

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
  type t

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
  type t

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
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val prepare_call_hierarchy
    :  t
    -> this:unit
    -> document:TextDocument.t
    -> positions:VPosition.t
    -> token:CancellationToken.t
    -> next:PrepareCallHierarchySignature.t
    -> (VCallHierarchyItem.t, VCallHierarchyItem.t) or_array ProviderResult.t
    [@@js.call "prepareCallHierarchy"]

  val provide_call_hierarchy_incoming_calls
    :  t
    -> this:unit
    -> item:VCallHierarchyItem.t
    -> token:CancellationToken.t
    -> next:CallHierarchyIncomingCallsSignature.t
    -> VCallHierarchyIncomingCall.t list ProviderResult.t
    [@@js.call "provideCallHierarchyIncomingCalls"]

  val provide_call_hierarchy_outgoing_calls
    :  t
    -> this:unit
    -> item:VCallHierarchyItem.t
    -> token:CancellationToken.t
    -> next:CallHierarchyOutgoingCallsSignature.t
    -> VCallHierarchyOutgoingCall.t list ProviderResult.t
    [@@js.call "provideCallHierarchyOutgoingCalls"]
end
[@@js.scope "CallHierarchyMiddleware"]

module CallHierarchyProvider : sig
  type t

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

  val prepare_call_hierarchy
    :  t
    -> document:TextDocument.t
    -> position:VPosition.t
    -> token:CancellationToken.t
    -> (VCallHierarchyItem.t, VCallHierarchyItem.t) or_array ProviderResult.t
    [@@js.call "prepareCallHierarchy"]

  val provide_call_hierarchy_incoming_calls
    :  t
    -> item:VCallHierarchyItem.t
    -> token:CancellationToken.t
    -> VCallHierarchyIncomingCall.t list ProviderResult.t
    [@@js.call "provideCallHierarchyIncomingCalls"]

  val provide_call_hierarchy_outgoing_calls
    :  t
    -> item:VCallHierarchyItem.t
    -> token:CancellationToken.t
    -> VCallHierarchyOutgoingCall.t list ProviderResult.t
    [@@js.call "provideCallHierarchyOutgoingCalls"]

  val cast : t -> VCallHierarchyProvider.t [@@js.cast]
end
[@@js.scope "CallHierarchyProvider"]

module CallHierarchyFeature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : client:BaseLanguageClient.t -> t [@@js.create]

  val fill_client_capabilities : t -> cap:ClientCapabilities.t -> unit
    [@@js.call "fillClientCapabilities"]

  val initialize
    :  t
    -> capabilities:ServerCapabilities.t
    -> document_selector:DocumentSelector.t
    -> unit
    [@@js.call "initialize"]

  val register_language_provider
    :  t
    -> options:CallHierarchyRegistrationOptions.t
    -> Disposable.t * CallHierarchyProvider.t
    [@@js.call "registerLanguageProvider"]

  val cast
    :  t
    -> ( CallHierarchyOptions.t or_boolean
       , CallHierarchyRegistrationOptions.t
       , CallHierarchyProvider.t )
       TextDocumentFeature.t
    [@@js.cast]
end
[@@js.scope "CallHierarchyFeature"]
(* export {}; *)
