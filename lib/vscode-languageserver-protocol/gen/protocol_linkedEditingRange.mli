[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - ProtocolRequestType<T1, T2, T3, T4, T5>
  - Range
  - RequestHandler<T1, T2, T3>
  - StaticRegistrationOptions
  - TextDocumentPositionParams
  - TextDocumentRegistrationOptions
  - WorkDoneProgressOptions
  - WorkDoneProgressParams
 *)
[@@@js.stop]
module type Missing = sig
  module ProtocolRequestType : sig
    type ('T1, 'T2, 'T3, 'T4, 'T5) t_5
    val t_5_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5 -> Ojs.t
    val t_5_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5
  end
  module Range : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
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
  module TextDocumentPositionParams : sig
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
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module ProtocolRequestType : sig
      type ('T1, 'T2, 'T3, 'T4, 'T5) t_5
      val t_5_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5 -> Ojs.t
      val t_5_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5
    end
    module Range : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
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
    module TextDocumentPositionParams : sig
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
  end
]
module Make (M: Missing) : sig
  open M
  module Internal : sig
    module AnonymousInterfaces : sig
      
    end
    module Types : sig
      open AnonymousInterfaces
      type _LinkedEditingRangeClientCapabilities = [`LinkedEditingRangeClientCapabilities] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _LinkedEditingRangeOptions = [`LinkedEditingRangeOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _LinkedEditingRangeParams = [`LinkedEditingRangeParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _LinkedEditingRangeRegistrationOptions = [`LinkedEditingRangeRegistrationOptions | `LinkedEditingRangeOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _LinkedEditingRangeRequest_HandlerSignature = (_LinkedEditingRangeParams, _LinkedEditingRanges or_null, unit) RequestHandler.t_3
      and _LinkedEditingRanges = [`LinkedEditingRanges] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import { RequestHandler } from 'vscode-jsonrpc'; *)
  (* import { Range } from 'vscode-languageserver-types'; *)
  (* import { ProtocolRequestType } from './messages'; *)
  (* import { StaticRegistrationOptions, TextDocumentPositionParams, TextDocumentRegistrationOptions, WorkDoneProgressOptions, WorkDoneProgressParams } from './protocol'; *)
  module[@js.scope "LinkedEditingRangeClientCapabilities"] LinkedEditingRangeClientCapabilities : sig
    type t = _LinkedEditingRangeClientCapabilities
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_dynamicRegistration: t -> bool [@@js.get "dynamicRegistration"]
    val set_dynamicRegistration: t -> bool -> unit [@@js.set "dynamicRegistration"]
  end
  module[@js.scope "LinkedEditingRangeParams"] LinkedEditingRangeParams : sig
    type t = _LinkedEditingRangeParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast: t -> TextDocumentPositionParams.t_0 [@@js.cast]
    val cast': t -> WorkDoneProgressParams.t_0 [@@js.cast]
  end
  module[@js.scope "LinkedEditingRangeOptions"] LinkedEditingRangeOptions : sig
    type t = _LinkedEditingRangeOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast: t -> WorkDoneProgressOptions.t_0 [@@js.cast]
  end
  module[@js.scope "LinkedEditingRangeRegistrationOptions"] LinkedEditingRangeRegistrationOptions : sig
    type t = _LinkedEditingRangeRegistrationOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast: t -> TextDocumentRegistrationOptions.t_0 [@@js.cast]
    val cast': t -> _LinkedEditingRangeOptions [@@js.cast]
    val cast'': t -> StaticRegistrationOptions.t_0 [@@js.cast]
  end
  module[@js.scope "LinkedEditingRanges"] LinkedEditingRanges : sig
    type t = _LinkedEditingRanges
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_ranges: t -> Range.t_0 list [@@js.get "ranges"]
    val set_ranges: t -> Range.t_0 list -> unit [@@js.set "ranges"]
    val get_wordPattern: t -> string [@@js.get "wordPattern"]
    val set_wordPattern: t -> string -> unit [@@js.set "wordPattern"]
  end
  module[@js.scope "LinkedEditingRangeRequest"] LinkedEditingRangeRequest : sig
    val method_: ([`L_s0_textDocument_linkedEditingRange[@js "textDocument/linkedEditingRange"]] [@js.enum]) [@@js.global "method"]
    val type_: (_LinkedEditingRangeParams, _LinkedEditingRanges or_null, unit, any, _LinkedEditingRangeRegistrationOptions) ProtocolRequestType.t_5 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _LinkedEditingRangeRequest_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
end
