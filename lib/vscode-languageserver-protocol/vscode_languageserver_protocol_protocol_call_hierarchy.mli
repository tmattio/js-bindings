[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5
open Vscode_jsonrpc
open Vscode_languageserver_types
open Vscode_languageserver_protocol_messages
open Vscode_languageserver_protocol_protocol

module CallHierarchyClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]
end
[@@js.scope "CallHierarchyClientCapabilities"]

module CallHierarchyOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressOptions
  end
end
[@@js.scope "CallHierarchyOptions"]

module CallHierarchyRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentRegistrationOptions
  end

  val cast' : t -> CallHierarchyOptions.t [@@js.cast]

  val cast'' : t -> StaticRegistrationOptions.t [@@js.cast]
end
[@@js.scope "CallHierarchyRegistrationOptions"]

module CallHierarchyPrepareParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* TODO: Move me*)
  include module type of struct
    include TextDocumentPositionParams
  end

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
    : ( CallHierarchyPrepareParams.t
      , CallHierarchyItem.t list or_null
      , never
      , unit
      , CallHierarchyRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( CallHierarchyPrepareParams.t
      , CallHierarchyItem.t list or_null
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "CallHierarchyPrepareRequest"]

module CallHierarchyIncomingCallsParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_item : t -> CallHierarchyItem.t [@@js.get "item"]

  val set_item : t -> CallHierarchyItem.t -> unit [@@js.set "item"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressParams
  end

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "CallHierarchyIncomingCallsParams"]

module CallHierarchyIncomingCallsRequest : sig
  val method_
    : ([ `L_s0_callHierarchy_incomingCalls [@js "callHierarchy/incomingCalls"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( CallHierarchyIncomingCallsParams.t
      , CallHierarchyIncomingCall.t list or_null
      , CallHierarchyIncomingCall.t list
      , unit
      , unit )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( CallHierarchyIncomingCallsParams.t
      , CallHierarchyIncomingCall.t list or_null
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "CallHierarchyIncomingCallsRequest"]

module CallHierarchyOutgoingCallsParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_item : t -> CallHierarchyItem.t [@@js.get "item"]

  val set_item : t -> CallHierarchyItem.t -> unit [@@js.set "item"]

  (* TODO: Move me*)
  include module type of struct
    include WorkDoneProgressParams
  end

  val cast' : t -> PartialResultParams.t [@@js.cast]
end
[@@js.scope "CallHierarchyOutgoingCallsParams"]

module CallHierarchyOutgoingCallsRequest : sig
  val method_
    : ([ `L_s1_callHierarchy_outgoingCalls [@js "callHierarchy/outgoingCalls"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( CallHierarchyOutgoingCallsParams.t
      , CallHierarchyOutgoingCall.t list or_null
      , CallHierarchyOutgoingCall.t list
      , unit
      , unit )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( CallHierarchyOutgoingCallsParams.t
      , CallHierarchyOutgoingCall.t list or_null
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "CallHierarchyOutgoingCallsRequest"]
