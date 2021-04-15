[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - FoldingRange
  - PartialResultParams
  - ProtocolRequestType<T1, T2, T3, T4, T5>
  - RequestHandler<T1, T2, T3>
  - StaticRegistrationOptions
  - TextDocumentIdentifier
  - TextDocumentRegistrationOptions
  - WorkDoneProgressOptions
  - WorkDoneProgressParams
  - uinteger
 *)
[@@@js.stop]
module type Missing = sig
  module FoldingRange : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module PartialResultParams : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ProtocolRequestType : sig
    type ('T1, 'T2, 'T3, 'T4, 'T5) t_5
    val t_5_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5 -> Ojs.t
    val t_5_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5
  end
  module RequestHandler : sig
    type ('T1, 'T2, 'T3) t_3
    val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
  end
  module StaticRegistrationOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module TextDocumentIdentifier : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module TextDocumentRegistrationOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module WorkDoneProgressOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module WorkDoneProgressParams : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module uinteger : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module FoldingRange : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module PartialResultParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ProtocolRequestType : sig
      type ('T1, 'T2, 'T3, 'T4, 'T5) t_5
      val t_5_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5 -> Ojs.t
      val t_5_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5
    end
    module RequestHandler : sig
      type ('T1, 'T2, 'T3) t_3
      val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
      val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
    end
    module StaticRegistrationOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TextDocumentIdentifier : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TextDocumentRegistrationOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WorkDoneProgressOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WorkDoneProgressParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module uinteger : sig
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
      type _FoldingRangeClientCapabilities = [`FoldingRangeClientCapabilities] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _FoldingRangeKind = [`Comment[@js "comment"] | `Imports[@js "imports"] | `Region[@js "region"]] [@js.enum]
      and _FoldingRangeKind_Comment = [`Comment[@js "comment"]] [@js.enum]
      and _FoldingRangeKind_Imports = [`Imports[@js "imports"]] [@js.enum]
      and _FoldingRangeKind_Region = [`Region[@js "region"]] [@js.enum]
      and _FoldingRangeOptions = [`FoldingRangeOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _FoldingRangeParams = [`FoldingRangeParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _FoldingRangeRegistrationOptions = [`FoldingRangeRegistrationOptions | `FoldingRangeOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _FoldingRangeRequest_HandlerSignature = (_FoldingRangeParams, FoldingRange.t_0 list or_null, unit) RequestHandler.t_3
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import { RequestHandler } from 'vscode-jsonrpc'; *)
  (* import { TextDocumentIdentifier, uinteger, FoldingRange } from 'vscode-languageserver-types'; *)
  (* import { ProtocolRequestType } from './messages'; *)
  (* import { TextDocumentRegistrationOptions, StaticRegistrationOptions, PartialResultParams, WorkDoneProgressParams, WorkDoneProgressOptions } from './protocol'; *)
  module[@js.scope "FoldingRangeClientCapabilities"] FoldingRangeClientCapabilities : sig
    type t = _FoldingRangeClientCapabilities
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_dynamicRegistration: t -> bool [@@js.get "dynamicRegistration"]
    val set_dynamicRegistration: t -> bool -> unit [@@js.set "dynamicRegistration"]
    val get_rangeLimit: t -> Uinteger.t_0 [@@js.get "rangeLimit"]
    val set_rangeLimit: t -> Uinteger.t_0 -> unit [@@js.set "rangeLimit"]
    val get_lineFoldingOnly: t -> bool [@@js.get "lineFoldingOnly"]
    val set_lineFoldingOnly: t -> bool -> unit [@@js.set "lineFoldingOnly"]
  end
  module[@js.scope "FoldingRangeOptions"] FoldingRangeOptions : sig
    type t = _FoldingRangeOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast: t -> WorkDoneProgressOptions.t_0 [@@js.cast]
  end
  module[@js.scope "FoldingRangeRegistrationOptions"] FoldingRangeRegistrationOptions : sig
    type t = _FoldingRangeRegistrationOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast: t -> TextDocumentRegistrationOptions.t_0 [@@js.cast]
    val cast': t -> _FoldingRangeOptions [@@js.cast]
    val cast'': t -> StaticRegistrationOptions.t_0 [@@js.cast]
  end
  module FoldingRangeKind : sig
    type t = _FoldingRangeKind
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "FoldingRangeParams"] FoldingRangeParams : sig
    type t = _FoldingRangeParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_textDocument: t -> TextDocumentIdentifier.t_0 [@@js.get "textDocument"]
    val set_textDocument: t -> TextDocumentIdentifier.t_0 -> unit [@@js.set "textDocument"]
    val cast: t -> WorkDoneProgressParams.t_0 [@@js.cast]
    val cast': t -> PartialResultParams.t_0 [@@js.cast]
  end
  module[@js.scope "FoldingRangeRequest"] FoldingRangeRequest : sig
    val method_: ([`L_s3_textDocument_foldingRange[@js "textDocument/foldingRange"]] [@js.enum]) [@@js.global "method"]
    val type_: (_FoldingRangeParams, FoldingRange.t_0 list or_null, FoldingRange.t_0 list, any, _FoldingRangeRegistrationOptions) ProtocolRequestType.t_5 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _FoldingRangeRequest_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
end
