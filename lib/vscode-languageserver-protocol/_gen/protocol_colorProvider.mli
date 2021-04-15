[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - Color
  - ColorInformation
  - ColorPresentation
  - PartialResultParams
  - ProtocolRequestType<T1, T2, T3, T4, T5>
  - Range
  - RequestHandler<T1, T2, T3>
  - StaticRegistrationOptions
  - TextDocumentIdentifier
  - TextDocumentRegistrationOptions
  - WorkDoneProgressOptions
  - WorkDoneProgressParams
 *)
[@@@js.stop]
module type Missing = sig
  module Color : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ColorInformation : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ColorPresentation : sig
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
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module Color : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ColorInformation : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ColorPresentation : sig
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
  end
]
module Make (M: Missing) : sig
  open M
  module Internal : sig
    module AnonymousInterfaces : sig
      
    end
    module Types : sig
      open AnonymousInterfaces
      type _ColorPresentationParams = [`ColorPresentationParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ColorPresentationRequest_HandlerSignature = (_ColorPresentationParams, ColorPresentation.t_0 list, unit) RequestHandler.t_3
      and _DocumentColorClientCapabilities = [`DocumentColorClientCapabilities] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DocumentColorOptions = [`DocumentColorOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DocumentColorParams = [`DocumentColorParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DocumentColorRegistrationOptions = [`DocumentColorRegistrationOptions | `DocumentColorOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DocumentColorRequest_HandlerSignature = (_DocumentColorParams, ColorInformation.t_0 list, unit) RequestHandler.t_3
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import { RequestHandler } from 'vscode-jsonrpc'; *)
  (* import { TextDocumentIdentifier, Range, Color, ColorInformation, ColorPresentation } from 'vscode-languageserver-types'; *)
  (* import { ProtocolRequestType } from './messages'; *)
  (* import { TextDocumentRegistrationOptions, StaticRegistrationOptions, PartialResultParams, WorkDoneProgressParams, WorkDoneProgressOptions } from './protocol'; *)
  module[@js.scope "DocumentColorClientCapabilities"] DocumentColorClientCapabilities : sig
    type t = _DocumentColorClientCapabilities
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_dynamicRegistration: t -> bool [@@js.get "dynamicRegistration"]
    val set_dynamicRegistration: t -> bool -> unit [@@js.set "dynamicRegistration"]
  end
  module[@js.scope "DocumentColorOptions"] DocumentColorOptions : sig
    type t = _DocumentColorOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast: t -> WorkDoneProgressOptions.t_0 [@@js.cast]
  end
  module[@js.scope "DocumentColorRegistrationOptions"] DocumentColorRegistrationOptions : sig
    type t = _DocumentColorRegistrationOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast: t -> TextDocumentRegistrationOptions.t_0 [@@js.cast]
    val cast': t -> StaticRegistrationOptions.t_0 [@@js.cast]
    val cast'': t -> _DocumentColorOptions [@@js.cast]
  end
  module[@js.scope "DocumentColorParams"] DocumentColorParams : sig
    type t = _DocumentColorParams
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
  module[@js.scope "DocumentColorRequest"] DocumentColorRequest : sig
    val method_: ([`L_s0_textDocument_documentColor[@js "textDocument/documentColor"]] [@js.enum]) [@@js.global "method"]
    val type_: (_DocumentColorParams, ColorInformation.t_0 list, ColorInformation.t_0 list, unit, _DocumentColorRegistrationOptions) ProtocolRequestType.t_5 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _DocumentColorRequest_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module[@js.scope "ColorPresentationParams"] ColorPresentationParams : sig
    type t = _ColorPresentationParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_textDocument: t -> TextDocumentIdentifier.t_0 [@@js.get "textDocument"]
    val set_textDocument: t -> TextDocumentIdentifier.t_0 -> unit [@@js.set "textDocument"]
    val get_color: t -> Color.t_0 [@@js.get "color"]
    val set_color: t -> Color.t_0 -> unit [@@js.set "color"]
    val get_range: t -> Range.t_0 [@@js.get "range"]
    val set_range: t -> Range.t_0 -> unit [@@js.set "range"]
    val cast: t -> WorkDoneProgressParams.t_0 [@@js.cast]
    val cast': t -> PartialResultParams.t_0 [@@js.cast]
  end
  module[@js.scope "ColorPresentationRequest"] ColorPresentationRequest : sig
    val type_: (_ColorPresentationParams, ColorPresentation.t_0 list, ColorPresentation.t_0 list, unit, (WorkDoneProgressOptions.t_0, TextDocumentRegistrationOptions.t_0) intersection2) ProtocolRequestType.t_5 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _ColorPresentationRequest_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
end
