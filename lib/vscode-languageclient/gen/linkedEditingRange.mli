[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - BaseLanguageClient
  - TextDocumentFeature<T1, T2, T3>
  - code.CancellationToken
  - code.Disposable
  - code.LinkedEditingRangeProvider
  - code.LinkedEditingRanges
  - code.Position
  - code.ProviderResult<T1>
  - code.TextDocument
  - proto.ClientCapabilities
  - proto.DocumentSelector
  - proto.LinkedEditingRangeOptions
  - proto.LinkedEditingRangeRegistrationOptions
  - proto.ServerCapabilities
 *)
[@@@js.stop]
module type Missing = sig
  module BaseLanguageClient : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module TextDocumentFeature : sig
    type ('T1, 'T2, 'T3) t_3
    val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
  end
  module code : sig
    module CancellationToken : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Disposable : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module LinkedEditingRangeProvider : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module LinkedEditingRanges : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Position : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ProviderResult : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module TextDocument : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module proto : sig
    module ClientCapabilities : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DocumentSelector : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module LinkedEditingRangeOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module LinkedEditingRangeRegistrationOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ServerCapabilities : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
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
    module TextDocumentFeature : sig
      type ('T1, 'T2, 'T3) t_3
      val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
      val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
    end
    module code : sig
      module CancellationToken : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Disposable : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module LinkedEditingRangeProvider : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module LinkedEditingRanges : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Position : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module ProviderResult : sig
        type 'T1 t_1
        val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
        val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
      end
      module TextDocument : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
    end
    module proto : sig
      module ClientCapabilities : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DocumentSelector : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module LinkedEditingRangeOptions : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module LinkedEditingRangeRegistrationOptions : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module ServerCapabilities : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
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
      type _LinkedEditingFeature = [`LinkedEditingFeature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _LinkedEditingRangeMiddleware = [`LinkedEditingRangeMiddleware] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProvideLinkedEditingRangeSignature = [`ProvideLinkedEditingRangeSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import * as code from 'vscode'; *)
  (* import * as proto from 'vscode-languageserver-protocol'; *)
  (* import { TextDocumentFeature, BaseLanguageClient } from './client'; *)
  module[@js.scope "ProvideLinkedEditingRangeSignature"] ProvideLinkedEditingRangeSignature : sig
    type t = _ProvideLinkedEditingRangeSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> this:unit -> document:Code.TextDocument.t_0 -> position:Code.Position.t_0 -> token:Code.CancellationToken.t_0 -> Code.LinkedEditingRanges.t_0 Code.ProviderResult.t_1 [@@js.apply]
  end
  module[@js.scope "LinkedEditingRangeMiddleware"] LinkedEditingRangeMiddleware : sig
    type t = _LinkedEditingRangeMiddleware
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val provideLinkedEditingRange: t -> this:unit -> document:Code.TextDocument.t_0 -> position:Code.Position.t_0 -> token:Code.CancellationToken.t_0 -> next:_ProvideLinkedEditingRangeSignature -> Code.LinkedEditingRanges.t_0 Code.ProviderResult.t_1 [@@js.call "provideLinkedEditingRange"]
  end
  module[@js.scope "LinkedEditingFeature"] LinkedEditingFeature : sig
    type t = _LinkedEditingFeature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: client:BaseLanguageClient.t_0 -> t [@@js.create]
    val fillClientCapabilities: t -> capabilities:Proto.ClientCapabilities.t_0 -> unit [@@js.call "fillClientCapabilities"]
    val initialize: t -> capabilities:Proto.ServerCapabilities.t_0 -> documentSelector:Proto.DocumentSelector.t_0 -> unit [@@js.call "initialize"]
    val registerLanguageProvider: t -> options:Proto.LinkedEditingRangeRegistrationOptions.t_0 -> (Code.Disposable.t_0 * Code.LinkedEditingRangeProvider.t_0) [@@js.call "registerLanguageProvider"]
    val cast: t -> (Proto.LinkedEditingRangeOptions.t_0 or_boolean, Proto.LinkedEditingRangeRegistrationOptions.t_0, Code.LinkedEditingRangeProvider.t_0) TextDocumentFeature.t_3 [@@js.cast]
  end
end
