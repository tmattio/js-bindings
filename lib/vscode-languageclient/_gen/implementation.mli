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
  - ImplementationOptions
  - ImplementationProvider
  - ImplementationRegistrationOptions
  - ProviderResult<T1>
  - ServerCapabilities
  - TextDocument
  - TextDocumentFeature<T1, T2, T3>
  - VDefinition
  - VDefinitionLink
  - VPosition
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
  module ImplementationOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ImplementationProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ImplementationRegistrationOptions : sig
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
  module VDefinition : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VDefinitionLink : sig
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
    module ImplementationOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ImplementationProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ImplementationRegistrationOptions : sig
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
    module VDefinition : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VDefinitionLink : sig
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
      type _ImplementationFeature = [`ImplementationFeature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ImplementationMiddleware = [`ImplementationMiddleware] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProvideImplementationSignature = [`ProvideImplementationSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import { Disposable, TextDocument, ProviderResult, Position as VPosition, Definition as VDefinition, DefinitionLink as VDefinitionLink, ImplementationProvider } from 'vscode'; *)
  (* import { ClientCapabilities, CancellationToken, ServerCapabilities, DocumentSelector, ImplementationRegistrationOptions, ImplementationOptions } from 'vscode-languageserver-protocol'; *)
  (* import { TextDocumentFeature, BaseLanguageClient } from './client'; *)
  module[@js.scope "ProvideImplementationSignature"] ProvideImplementationSignature : sig
    type t = _ProvideImplementationSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> token:CancellationToken.t_0 -> (VDefinition.t_0, VDefinitionLink.t_0) or_array ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "ImplementationMiddleware"] ImplementationMiddleware : sig
    type t = _ImplementationMiddleware
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val provideImplementation: t -> this:unit -> document:TextDocument.t_0 -> position:VPosition.t_0 -> token:CancellationToken.t_0 -> next:_ProvideImplementationSignature -> (VDefinition.t_0, VDefinitionLink.t_0) or_array ProviderResult.t_1 [@@js.call "provideImplementation"]
  end
  module[@js.scope "ImplementationFeature"] ImplementationFeature : sig
    type t = _ImplementationFeature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: client:BaseLanguageClient.t_0 -> t [@@js.create]
    val fillClientCapabilities: t -> capabilities:ClientCapabilities.t_0 -> unit [@@js.call "fillClientCapabilities"]
    val initialize: t -> capabilities:ServerCapabilities.t_0 -> documentSelector:DocumentSelector.t_0 -> unit [@@js.call "initialize"]
    val registerLanguageProvider: t -> options:ImplementationRegistrationOptions.t_0 -> (Disposable.t_0 * ImplementationProvider.t_0) [@@js.call "registerLanguageProvider"]
    val cast: t -> (ImplementationOptions.t_0 or_boolean, ImplementationRegistrationOptions.t_0, ImplementationProvider.t_0) TextDocumentFeature.t_3 [@@js.cast]
  end
end
