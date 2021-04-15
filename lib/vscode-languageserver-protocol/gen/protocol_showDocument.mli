[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - HandlerResult<T1, T2>
  - ProtocolRequestType<T1, T2, T3, T4, T5>
  - Range
  - RequestHandler<T1, T2, T3>
  - URI
 *)
[@@@js.stop]
module type Missing = sig
  module HandlerResult : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
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
  module URI : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module HandlerResult : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
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
    module URI : sig
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
      type _ShowDocumentClientCapabilities = [`ShowDocumentClientCapabilities] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ShowDocumentParams = [`ShowDocumentParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ShowDocumentRequest_HandlerSignature = (_ShowDocumentParams, _ShowDocumentResult, unit) RequestHandler.t_3
      and _ShowDocumentRequest_MiddlewareSignature = [`ShowDocumentRequest_MiddlewareSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ShowDocumentResult = [`ShowDocumentResult] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import { HandlerResult, RequestHandler } from 'vscode-jsonrpc'; *)
  (* import { Range, URI } from 'vscode-languageserver-types'; *)
  (* import { ProtocolRequestType } from './messages'; *)
  module[@js.scope "ShowDocumentClientCapabilities"] ShowDocumentClientCapabilities : sig
    type t = _ShowDocumentClientCapabilities
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_support: t -> bool [@@js.get "support"]
    val set_support: t -> bool -> unit [@@js.set "support"]
  end
  module[@js.scope "ShowDocumentParams"] ShowDocumentParams : sig
    type t = _ShowDocumentParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_uri: t -> URI.t_0 [@@js.get "uri"]
    val set_uri: t -> URI.t_0 -> unit [@@js.set "uri"]
    val get_external: t -> bool [@@js.get "external"]
    val set_external: t -> bool -> unit [@@js.set "external"]
    val get_takeFocus: t -> bool [@@js.get "takeFocus"]
    val set_takeFocus: t -> bool -> unit [@@js.set "takeFocus"]
    val get_selection: t -> Range.t_0 [@@js.get "selection"]
    val set_selection: t -> Range.t_0 -> unit [@@js.set "selection"]
  end
  module[@js.scope "ShowDocumentResult"] ShowDocumentResult : sig
    type t = _ShowDocumentResult
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_success: t -> bool [@@js.get "success"]
    val set_success: t -> bool -> unit [@@js.set "success"]
  end
  module[@js.scope "ShowDocumentRequest"] ShowDocumentRequest : sig
    val method_: ([`L_s0_window_showDocument[@js "window/showDocument"]] [@js.enum]) [@@js.global "method"]
    val type_: (_ShowDocumentParams, _ShowDocumentResult, unit, unit, unit) ProtocolRequestType.t_5 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _ShowDocumentRequest_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "MiddlewareSignature"] MiddlewareSignature : sig
      type t = _ShowDocumentRequest_MiddlewareSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val apply: t -> params:_ShowDocumentParams -> next:_ShowDocumentRequest_HandlerSignature -> (_ShowDocumentResult, unit) HandlerResult.t_2 [@@js.apply]
    end
  end
end
