[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { RequestHandler } from 'vscode-jsonrpc'; *)
(* import { CallHierarchyItem, CallHierarchyIncomingCall,
   CallHierarchyOutgoingCall } from 'vscode-languageserver-types'; *)
(* import { ProtocolRequestType } from './messages'; *)
(* import { TextDocumentRegistrationOptions, StaticRegistrationOptions,
   TextDocumentPositionParams, PartialResultParams, WorkDoneProgressParams,
   WorkDoneProgressOptions } from './protocol'; *)
module CallHierarchyClientCapabilities : sig
  type t = _CallHierarchyClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "CallHierarchyClientCapabilities"]

module CallHierarchyOptions : sig
  type t = _CallHierarchyOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> WorkDoneProgressOptions.t [@@js.cast]
end
[@@js.scope "CallHierarchyOptions"]

module CallHierarchyRegistrationOptions : sig
  type t = _CallHierarchyRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentRegistrationOptions.t [@@js.cast]

  val cast' : t -> _CallHierarchyOptions [@@js.cast]

  val cast'' : t -> StaticRegistrationOptions.t [@@js.cast]
end
[@@js.scope "CallHierarchyRegistrationOptions"]

module CallHierarchyPrepareParams : sig
  type t = _CallHierarchyPrepareParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> TextDocumentPositionParams.t [@@js.cast]

  val cast' : t -> WorkDoneProgressParams.t [@@js.cast]
end
[@@js.scope "CallHierarchyPrepareParams"]

module CallHierarchyPrepareRequest : sig
  val method_
    : ([ `L_s2_textDocument_prepareCallHierarchy [@js
                                                   "textDocument/prepareCallHierarchy"]
       ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _CallHierarchyPrepareParams
      , CallHierarchyItem.t list or_null
      , never
      , unit
      , _CallHierarchyRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( _CallHierarchyPrepareParams
      , CallHierarchyItem.t list or_null
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "CallHierarchyPrepareRequest"]

module CallHierarchyIncomingCallsParams : sig
  type t = _CallHierarchyIncomingCallsParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_item : t -> CallHierarchyItem.t [@@js.get "item"]

  val set_item : t -> CallHierarchyItem.t -> unit [@@js.set "item"]

  val cast : t -> WorkDoneProgressParams.t [@@js.cast]

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "CallHierarchyIncomingCallsParams"]

module CallHierarchyIncomingCallsRequest : sig
  val method_
    : ([ `L_s0_callHierarchy_incomingCalls [@js "callHierarchy/incomingCalls"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _CallHierarchyIncomingCallsParams
      , CallHierarchyIncomingCall.t list or_null
      , CallHierarchyIncomingCall.t list
      , unit
      , unit )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( _CallHierarchyIncomingCallsParams
      , CallHierarchyIncomingCall.t list or_null
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "CallHierarchyIncomingCallsRequest"]

module CallHierarchyOutgoingCallsParams : sig
  type t = _CallHierarchyOutgoingCallsParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_item : t -> CallHierarchyItem.t [@@js.get "item"]

  val set_item : t -> CallHierarchyItem.t -> unit [@@js.set "item"]

  val cast : t -> WorkDoneProgressParams.t [@@js.cast]

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "CallHierarchyOutgoingCallsParams"]

module CallHierarchyOutgoingCallsRequest : sig
  val method_
    : ([ `L_s1_callHierarchy_outgoingCalls [@js "callHierarchy/outgoingCalls"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( _CallHierarchyOutgoingCallsParams
      , CallHierarchyOutgoingCall.t list or_null
      , CallHierarchyOutgoingCall.t list
      , unit
      , unit )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( _CallHierarchyOutgoingCallsParams
      , CallHierarchyOutgoingCall.t list or_null
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "CallHierarchyOutgoingCallsRequest"]
