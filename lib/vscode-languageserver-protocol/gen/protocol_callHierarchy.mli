[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - CallHierarchyIncomingCall
  - CallHierarchyItem
  - CallHierarchyOutgoingCall
  - PartialResultParams
  - ProtocolRequestType<T1, T2, T3, T4, T5>
  - RequestHandler<T1, T2, T3>
  - StaticRegistrationOptions
  - TextDocumentPositionParams
  - TextDocumentRegistrationOptions
  - WorkDoneProgressOptions
  - WorkDoneProgressParams
 *)
[@@@js.stop]
module type Missing = sig
  module CallHierarchyIncomingCall : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module CallHierarchyItem : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module CallHierarchyOutgoingCall : sig
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
    module CallHierarchyIncomingCall : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CallHierarchyItem : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CallHierarchyOutgoingCall : sig
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
      type _CallHierarchyClientCapabilities = [`CallHierarchyClientCapabilities] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _CallHierarchyIncomingCallsParams = [`CallHierarchyIncomingCallsParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _CallHierarchyIncomingCallsRequest_HandlerSignature = (_CallHierarchyIncomingCallsParams, CallHierarchyIncomingCall.t_0 list or_null, unit) RequestHandler.t_3
      and _CallHierarchyOptions = [`CallHierarchyOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _CallHierarchyOutgoingCallsParams = [`CallHierarchyOutgoingCallsParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _CallHierarchyOutgoingCallsRequest_HandlerSignature = (_CallHierarchyOutgoingCallsParams, CallHierarchyOutgoingCall.t_0 list or_null, unit) RequestHandler.t_3
      and _CallHierarchyPrepareParams = [`CallHierarchyPrepareParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _CallHierarchyPrepareRequest_HandlerSignature = (_CallHierarchyPrepareParams, CallHierarchyItem.t_0 list or_null, unit) RequestHandler.t_3
      and _CallHierarchyRegistrationOptions = [`CallHierarchyRegistrationOptions | `CallHierarchyOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import { RequestHandler } from 'vscode-jsonrpc'; *)
  (* import { CallHierarchyItem, CallHierarchyIncomingCall, CallHierarchyOutgoingCall } from 'vscode-languageserver-types'; *)
  (* import { ProtocolRequestType } from './messages'; *)
  (* import { TextDocumentRegistrationOptions, StaticRegistrationOptions, TextDocumentPositionParams, PartialResultParams, WorkDoneProgressParams, WorkDoneProgressOptions } from './protocol'; *)
  module[@js.scope "CallHierarchyClientCapabilities"] CallHierarchyClientCapabilities : sig
    type t = _CallHierarchyClientCapabilities
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_dynamicRegistration: t -> bool [@@js.get "dynamicRegistration"]
    val set_dynamicRegistration: t -> bool -> unit [@@js.set "dynamicRegistration"]
  end
  module[@js.scope "CallHierarchyOptions"] CallHierarchyOptions : sig
    type t = _CallHierarchyOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast: t -> WorkDoneProgressOptions.t_0 [@@js.cast]
  end
  module[@js.scope "CallHierarchyRegistrationOptions"] CallHierarchyRegistrationOptions : sig
    type t = _CallHierarchyRegistrationOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast: t -> TextDocumentRegistrationOptions.t_0 [@@js.cast]
    val cast': t -> _CallHierarchyOptions [@@js.cast]
    val cast'': t -> StaticRegistrationOptions.t_0 [@@js.cast]
  end
  module[@js.scope "CallHierarchyPrepareParams"] CallHierarchyPrepareParams : sig
    type t = _CallHierarchyPrepareParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cast: t -> TextDocumentPositionParams.t_0 [@@js.cast]
    val cast': t -> WorkDoneProgressParams.t_0 [@@js.cast]
  end
  module[@js.scope "CallHierarchyPrepareRequest"] CallHierarchyPrepareRequest : sig
    val method_: ([`L_s2_textDocument_prepareCallHierarchy[@js "textDocument/prepareCallHierarchy"]] [@js.enum]) [@@js.global "method"]
    val type_: (_CallHierarchyPrepareParams, CallHierarchyItem.t_0 list or_null, never, unit, _CallHierarchyRegistrationOptions) ProtocolRequestType.t_5 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _CallHierarchyPrepareRequest_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module[@js.scope "CallHierarchyIncomingCallsParams"] CallHierarchyIncomingCallsParams : sig
    type t = _CallHierarchyIncomingCallsParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_item: t -> CallHierarchyItem.t_0 [@@js.get "item"]
    val set_item: t -> CallHierarchyItem.t_0 -> unit [@@js.set "item"]
    val cast: t -> WorkDoneProgressParams.t_0 [@@js.cast]
    val cast': t -> PartialResultParams.t_0 [@@js.cast]
  end
  module[@js.scope "CallHierarchyIncomingCallsRequest"] CallHierarchyIncomingCallsRequest : sig
    val method_: ([`L_s0_callHierarchy_incomingCalls[@js "callHierarchy/incomingCalls"]] [@js.enum]) [@@js.global "method"]
    val type_: (_CallHierarchyIncomingCallsParams, CallHierarchyIncomingCall.t_0 list or_null, CallHierarchyIncomingCall.t_0 list, unit, unit) ProtocolRequestType.t_5 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _CallHierarchyIncomingCallsRequest_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module[@js.scope "CallHierarchyOutgoingCallsParams"] CallHierarchyOutgoingCallsParams : sig
    type t = _CallHierarchyOutgoingCallsParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_item: t -> CallHierarchyItem.t_0 [@@js.get "item"]
    val set_item: t -> CallHierarchyItem.t_0 -> unit [@@js.set "item"]
    val cast: t -> WorkDoneProgressParams.t_0 [@@js.cast]
    val cast': t -> PartialResultParams.t_0 [@@js.cast]
  end
  module[@js.scope "CallHierarchyOutgoingCallsRequest"] CallHierarchyOutgoingCallsRequest : sig
    val method_: ([`L_s1_callHierarchy_outgoingCalls[@js "callHierarchy/outgoingCalls"]] [@js.enum]) [@@js.global "method"]
    val type_: (_CallHierarchyOutgoingCallsParams, CallHierarchyOutgoingCall.t_0 list or_null, CallHierarchyOutgoingCall.t_0 list, unit, unit) ProtocolRequestType.t_5 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _CallHierarchyOutgoingCallsRequest_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
end
