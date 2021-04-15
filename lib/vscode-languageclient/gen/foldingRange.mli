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
  - FoldingContext
  - FoldingRangeOptions
  - FoldingRangeProvider
  - FoldingRangeRegistrationOptions
  - ProviderResult<T1>
  - ServerCapabilities
  - TextDocument
  - TextDocumentFeature<T1, T2, T3>
  - VFoldingRange
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
  module FoldingContext : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module FoldingRangeOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module FoldingRangeProvider : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module FoldingRangeRegistrationOptions : sig
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
  module VFoldingRange : sig
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
    module FoldingContext : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FoldingRangeOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FoldingRangeProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FoldingRangeRegistrationOptions : sig
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
    module VFoldingRange : sig
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
      type _FoldingRangeFeature = [`FoldingRangeFeature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _FoldingRangeProviderMiddleware = [`FoldingRangeProviderMiddleware] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProvideFoldingRangeSignature = [`ProvideFoldingRangeSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import { Disposable, TextDocument, ProviderResult, FoldingRange as VFoldingRange, FoldingContext, FoldingRangeProvider } from 'vscode'; *)
  (* import { ClientCapabilities, CancellationToken, ServerCapabilities, DocumentSelector, FoldingRangeRegistrationOptions, FoldingRangeOptions } from 'vscode-languageserver-protocol'; *)
  (* import { TextDocumentFeature, BaseLanguageClient } from './client'; *)
  module[@js.scope "ProvideFoldingRangeSignature"] ProvideFoldingRangeSignature : sig
    type t = _ProvideFoldingRangeSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:TextDocument.t_0 -> context:FoldingContext.t_0 -> token:CancellationToken.t_0 -> VFoldingRange.t_0 list ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "FoldingRangeProviderMiddleware"] FoldingRangeProviderMiddleware : sig
    type t = _FoldingRangeProviderMiddleware
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val provideFoldingRanges: t -> this:unit -> document:TextDocument.t_0 -> context:FoldingContext.t_0 -> token:CancellationToken.t_0 -> next:_ProvideFoldingRangeSignature -> VFoldingRange.t_0 list ProviderResult.t_1 [@@js.call "provideFoldingRanges"]
  end
  module[@js.scope "FoldingRangeFeature"] FoldingRangeFeature : sig
    type t = _FoldingRangeFeature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: client:BaseLanguageClient.t_0 -> t [@@js.create]
    val fillClientCapabilities: t -> capabilities:ClientCapabilities.t_0 -> unit [@@js.call "fillClientCapabilities"]
    val initialize: t -> capabilities:ServerCapabilities.t_0 -> documentSelector:DocumentSelector.t_0 -> unit [@@js.call "initialize"]
    val registerLanguageProvider: t -> options:FoldingRangeRegistrationOptions.t_0 -> (Disposable.t_0 * FoldingRangeProvider.t_0) [@@js.call "registerLanguageProvider"]
    val get_asFoldingRangeKind: unit -> (* FIXME: unknown type *)any [@@js.get "asFoldingRangeKind"]
    val set_asFoldingRangeKind: (* FIXME: unknown type *)any -> unit [@@js.set "asFoldingRangeKind"]
    val get_asFoldingRanges: unit -> (* FIXME: unknown type *)any [@@js.get "asFoldingRanges"]
    val set_asFoldingRanges: (* FIXME: unknown type *)any -> unit [@@js.set "asFoldingRanges"]
    val cast: t -> (FoldingRangeOptions.t_0 or_boolean, FoldingRangeRegistrationOptions.t_0, FoldingRangeProvider.t_0) TextDocumentFeature.t_3 [@@js.cast]
  end
end
