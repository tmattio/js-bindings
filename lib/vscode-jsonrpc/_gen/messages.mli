[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - Error
 *)
[@@@js.stop]
module type Missing = sig
  module Error : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module Error : sig
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
      type _AbstractMessageSignature = [`AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _LSPLogMessage = [`LSPLogMessage] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _LSPMessageType = ([`L_s0_receive_notification[@js "receive-notification"] | `L_s1_receive_request[@js "receive-request"] | `L_s2_receive_response[@js "receive-response"] | `L_s3_send_notification[@js "send-notification"] | `L_s4_send_request[@js "send-request"] | `L_s5_send_response[@js "send-response"]] [@js.enum])
      and _Message = [`Message] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _MessageSignature = [`MessageSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _NotificationMessage = [`NotificationMessage | `Message] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'P _NotificationType = [`NotificationType of 'P | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _P -> Obj.magic); to_js=(fun _P -> Obj.magic) }]
      and _NotificationType0 = [`NotificationType0 | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'P1 _NotificationType1 = [`NotificationType1 of 'P1 | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _P1 -> Obj.magic); to_js=(fun _P1 -> Obj.magic) }]
      and ('P1, 'P2) _NotificationType2 = [`NotificationType2 of ('P1 * 'P2) | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _P1 _P2 -> Obj.magic); to_js=(fun _P1 _P2 -> Obj.magic) }]
      and ('P1, 'P2, 'P3) _NotificationType3 = [`NotificationType3 of ('P1 * 'P2 * 'P3) | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 -> Obj.magic); to_js=(fun _P1 _P2 _P3 -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4) _NotificationType4 = [`NotificationType4 of ('P1 * 'P2 * 'P3 * 'P4) | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'P5) _NotificationType5 = [`NotificationType5 of ('P1 * 'P2 * 'P3 * 'P4 * 'P5) | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _P5 -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _P5 -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) _NotificationType6 = [`NotificationType6 of ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6) | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) _NotificationType7 = [`NotificationType7 of ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7) | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) _NotificationType8 = [`NotificationType8 of ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8) | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) _NotificationType9 = [`NotificationType9 of ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * 'P9) | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 -> Obj.magic) }]
      and _ParameterStructures = [`ParameterStructures] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _RequestMessage = [`RequestMessage | `Message] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ('P, 'R, 'E) _RequestType = [`RequestType of ('P * 'R * 'E) | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _P _R _E -> Obj.magic); to_js=(fun _P _R _E -> Obj.magic) }]
      and ('R, 'E) _RequestType0 = [`RequestType0 of ('R * 'E) | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _R _E -> Obj.magic); to_js=(fun _R _E -> Obj.magic) }]
      and ('P1, 'R, 'E) _RequestType1 = [`RequestType1 of ('P1 * 'R * 'E) | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _P1 _R _E -> Obj.magic); to_js=(fun _P1 _R _E -> Obj.magic) }]
      and ('P1, 'P2, 'R, 'E) _RequestType2 = [`RequestType2 of ('P1 * 'P2 * 'R * 'E) | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _P1 _P2 _R _E -> Obj.magic); to_js=(fun _P1 _P2 _R _E -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'R, 'E) _RequestType3 = [`RequestType3 of ('P1 * 'P2 * 'P3 * 'R * 'E) | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _R _E -> Obj.magic); to_js=(fun _P1 _P2 _P3 _R _E -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'R, 'E) _RequestType4 = [`RequestType4 of ('P1 * 'P2 * 'P3 * 'P4 * 'R * 'E) | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _R _E -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _R _E -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) _RequestType5 = [`RequestType5 of ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'R * 'E) | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _P5 _R _E -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _P5 _R _E -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) _RequestType6 = [`RequestType6 of ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'R * 'E) | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _R _E -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _R _E -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) _RequestType7 = [`RequestType7 of ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'R * 'E) | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _R _E -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _R _E -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) _RequestType8 = [`RequestType8 of ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * 'R * 'E) | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _R _E -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _R _E -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) _RequestType9 = [`RequestType9 of ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * 'P9 * 'R * 'E) | `AbstractMessageSignature | `MessageSignature] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 _R _E -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 _R _E -> Obj.magic) }]
      and 'D _ResponseError = [`ResponseError of 'D] intf
      [@@js.custom { of_js=(fun _D -> Obj.magic); to_js=(fun _D -> Obj.magic) }]
      and 'D _ResponseErrorLiteral = [`ResponseErrorLiteral of 'D] intf
      [@@js.custom { of_js=(fun _D -> Obj.magic); to_js=(fun _D -> Obj.magic) }]
      and _ResponseMessage = [`ResponseMessage | `Message] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _EM = [`_EM] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  module[@js.scope "Message"] Message : sig
    type t = _Message
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_jsonrpc: t -> string [@@js.get "jsonrpc"]
    val set_jsonrpc: t -> string -> unit [@@js.set "jsonrpc"]
  end
  module[@js.scope "RequestMessage"] RequestMessage : sig
    type t = _RequestMessage
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_id: t -> string or_number or_null [@@js.get "id"]
    val set_id: t -> string or_number or_null -> unit [@@js.set "id"]
    val get_method: t -> string [@@js.get "method"]
    val set_method: t -> string -> unit [@@js.set "method"]
    val get_params: t -> (untyped_object, any) or_array [@@js.get "params"]
    val set_params: t -> (untyped_object, any) or_array -> unit [@@js.set "params"]
    val cast: t -> _Message [@@js.cast]
  end
  module[@js.scope "ErrorCodes"] ErrorCodes : sig
    val parseError: float [@@js.global "ParseError"]
    val invalidRequest: float [@@js.global "InvalidRequest"]
    val methodNotFound: float [@@js.global "MethodNotFound"]
    val invalidParams: float [@@js.global "InvalidParams"]
    val internalError: float [@@js.global "InternalError"]
    val jsonrpcReservedErrorRangeStart: float [@@js.global "jsonrpcReservedErrorRangeStart"]
    val serverErrorStart: float [@@js.global "serverErrorStart"]
    val messageWriteError: float [@@js.global "MessageWriteError"]
    val messageReadError: float [@@js.global "MessageReadError"]
    val serverNotInitialized: float [@@js.global "ServerNotInitialized"]
    val unknownErrorCode: float [@@js.global "UnknownErrorCode"]
    val jsonrpcReservedErrorRangeEnd: (* FIXME: unknown type *)any [@@js.global "jsonrpcReservedErrorRangeEnd"]
    val serverErrorEnd: float [@@js.global "serverErrorEnd"]
  end
  module[@js.scope "ResponseErrorLiteral"] ResponseErrorLiteral : sig
    type 'D t = 'D _ResponseErrorLiteral
    val t_to_js: ('D -> Ojs.t) -> 'D t -> Ojs.t
    val t_of_js: (Ojs.t -> 'D) -> Ojs.t -> 'D t
    type 'D t_1 = 'D t
    val t_1_to_js: ('D -> Ojs.t) -> 'D t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'D) -> Ojs.t -> 'D t_1
    type t_0 = unit t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_code: 'D t -> float [@@js.get "code"]
    val set_code: 'D t -> float -> unit [@@js.set "code"]
    val get_message: 'D t -> string [@@js.get "message"]
    val set_message: 'D t -> string -> unit [@@js.set "message"]
    val get_data: 'D t -> 'D [@@js.get "data"]
    val set_data: 'D t -> 'D -> unit [@@js.set "data"]
  end
  module[@js.scope "ResponseError"] ResponseError : sig
    type 'D t = 'D _ResponseError
    val t_to_js: ('D -> Ojs.t) -> 'D t -> Ojs.t
    val t_of_js: (Ojs.t -> 'D) -> Ojs.t -> 'D t
    type 'D t_1 = 'D t
    val t_1_to_js: ('D -> Ojs.t) -> 'D t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'D) -> Ojs.t -> 'D t_1
    type t_0 = unit t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_code: 'D t -> float [@@js.get "code"]
    val get_data: 'D t -> 'D or_undefined [@@js.get "data"]
    val create: code:float -> message:string -> ?data:'D -> unit -> 'D t [@@js.create]
    val toJson: 'D t -> 'D _ResponseErrorLiteral [@@js.call "toJson"]
    val cast: 'D t -> Error.t_0 [@@js.cast]
  end
  module[@js.scope "ResponseMessage"] ResponseMessage : sig
    type t = _ResponseMessage
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_id: t -> string or_number or_null [@@js.get "id"]
    val set_id: t -> string or_number or_null -> unit [@@js.set "id"]
    val get_result: t -> (untyped_object, any) or_array or_boolean or_string or_number or_null [@@js.get "result"]
    val set_result: t -> (untyped_object, any) or_array or_boolean or_string or_number or_null -> unit [@@js.set "result"]
    val get_error: t -> any _ResponseErrorLiteral [@@js.get "error"]
    val set_error: t -> any _ResponseErrorLiteral -> unit [@@js.set "error"]
    val cast: t -> _Message [@@js.cast]
  end
  module LSPMessageType : sig
    type t = _LSPMessageType
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "LSPLogMessage"] LSPLogMessage : sig
    type t = _LSPLogMessage
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_type: t -> _LSPMessageType [@@js.get "type"]
    val set_type: t -> _LSPMessageType -> unit [@@js.set "type"]
    val get_message: t -> (_NotificationMessage, _RequestMessage, _ResponseMessage) union3 [@@js.get "message"]
    val set_message: t -> (_NotificationMessage, _RequestMessage, _ResponseMessage) union3 -> unit [@@js.set "message"]
    val get_timestamp: t -> float [@@js.get "timestamp"]
    val set_timestamp: t -> float -> unit [@@js.set "timestamp"]
  end
  module[@js.scope "ParameterStructures"] ParameterStructures : sig
    type t = _ParameterStructures
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_kind: t -> (* FIXME: unknown type *)any [@@js.get "kind"]
    val get_auto: unit -> t [@@js.get "auto"]
    val get_byPosition: unit -> t [@@js.get "byPosition"]
    val get_byName: unit -> t [@@js.get "byName"]
    val create: unit -> t [@@js.create]
    val is: value:any -> bool [@@js.global "is"]
    val toString: t -> string [@@js.call "toString"]
  end
  module[@js.scope "MessageSignature"] MessageSignature : sig
    type t = _MessageSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_method: t -> string [@@js.get "method"]
    val get_numberOfParams: t -> float [@@js.get "numberOfParams"]
    val get_parameterStructures: t -> _ParameterStructures [@@js.get "parameterStructures"]
  end
  module[@js.scope "AbstractMessageSignature"] AbstractMessageSignature : sig
    type t = _AbstractMessageSignature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_method: t -> string [@@js.get "method"]
    val get_numberOfParams: t -> float [@@js.get "numberOfParams"]
    val create: method_:string -> numberOfParams:float -> t [@@js.create]
    val get_parameterStructures: t -> _ParameterStructures [@@js.get "parameterStructures"]
    val cast: t -> _MessageSignature [@@js.cast]
  end
  module[@js.scope "_EM"] M_EM : sig
    type t = _EM
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get___endMarker__: t -> float [@@js.get "_$endMarker$_"]
    val set___endMarker__: t -> float -> unit [@@js.set "_$endMarker$_"]
  end
  module[@js.scope "RequestType0"] RequestType0 : sig
    type ('R, 'E) t = ('R, 'E) _RequestType0
    val t_to_js: ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('R, 'E) t
    type ('R, 'E) t_2 = ('R, 'E) t
    val t_2_to_js: ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('R, 'E) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('R, 'E) t_2
    val get__: ('R, 'E) t -> ('R * 'E * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ('R, 'E) t [@@js.create]
    val cast: ('R, 'E) t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "RequestType"] RequestType : sig
    type ('P, 'R, 'E) t = ('P, 'R, 'E) _RequestType
    val t_to_js: ('P -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P, 'R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P, 'R, 'E) t
    type ('P, 'R, 'E) t_3 = ('P, 'R, 'E) t
    val t_3_to_js: ('P -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P, 'R, 'E) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P, 'R, 'E) t_3
    val get__parameterStructures: ('P, 'R, 'E) t -> (* FIXME: unknown type *)any [@@js.get "_parameterStructures"]
    val set__parameterStructures: ('P, 'R, 'E) t -> (* FIXME: unknown type *)any -> unit [@@js.set "_parameterStructures"]
    val get__: ('P, 'R, 'E) t -> ('P * 'R * 'E * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ?_parameterStructures:_ParameterStructures -> unit -> ('P, 'R, 'E) t [@@js.create]
    val get_parameterStructures: ('P, 'R, 'E) t -> _ParameterStructures [@@js.get "parameterStructures"]
    val cast: ('P, 'R, 'E) t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "RequestType1"] RequestType1 : sig
    type ('P1, 'R, 'E) t = ('P1, 'R, 'E) _RequestType1
    val t_to_js: ('P1 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'R, 'E) t
    type ('P1, 'R, 'E) t_3 = ('P1, 'R, 'E) t
    val t_3_to_js: ('P1 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'R, 'E) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'R, 'E) t_3
    val get__parameterStructures: ('P1, 'R, 'E) t -> (* FIXME: unknown type *)any [@@js.get "_parameterStructures"]
    val set__parameterStructures: ('P1, 'R, 'E) t -> (* FIXME: unknown type *)any -> unit [@@js.set "_parameterStructures"]
    val get__: ('P1, 'R, 'E) t -> ('P1 * 'R * 'E * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ?_parameterStructures:_ParameterStructures -> unit -> ('P1, 'R, 'E) t [@@js.create]
    val get_parameterStructures: ('P1, 'R, 'E) t -> _ParameterStructures [@@js.get "parameterStructures"]
    val cast: ('P1, 'R, 'E) t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "RequestType2"] RequestType2 : sig
    type ('P1, 'P2, 'R, 'E) t = ('P1, 'P2, 'R, 'E) _RequestType2
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'R, 'E) t
    type ('P1, 'P2, 'R, 'E) t_4 = ('P1, 'P2, 'R, 'E) t
    val t_4_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'R, 'E) t_4 -> Ojs.t
    val t_4_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'R, 'E) t_4
    val get__: ('P1, 'P2, 'R, 'E) t -> ('P1 * 'P2 * 'R * 'E * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ('P1, 'P2, 'R, 'E) t [@@js.create]
    val cast: ('P1, 'P2, 'R, 'E) t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "RequestType3"] RequestType3 : sig
    type ('P1, 'P2, 'P3, 'R, 'E) t = ('P1, 'P2, 'P3, 'R, 'E) _RequestType3
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'R, 'E) t
    type ('P1, 'P2, 'P3, 'R, 'E) t_5 = ('P1, 'P2, 'P3, 'R, 'E) t
    val t_5_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'R, 'E) t_5 -> Ojs.t
    val t_5_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'R, 'E) t_5
    val get__: ('P1, 'P2, 'P3, 'R, 'E) t -> ('P1 * 'P2 * 'P3 * 'R * 'E * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ('P1, 'P2, 'P3, 'R, 'E) t [@@js.create]
    val cast: ('P1, 'P2, 'P3, 'R, 'E) t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "RequestType4"] RequestType4 : sig
    type ('P1, 'P2, 'P3, 'P4, 'R, 'E) t = ('P1, 'P2, 'P3, 'P4, 'R, 'E) _RequestType4
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'R, 'E) t
    type ('P1, 'P2, 'P3, 'P4, 'R, 'E) t_6 = ('P1, 'P2, 'P3, 'P4, 'R, 'E) t
    val t_6_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'R, 'E) t_6 -> Ojs.t
    val t_6_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'R, 'E) t_6
    val get__: ('P1, 'P2, 'P3, 'P4, 'R, 'E) t -> ('P1 * 'P2 * 'P3 * 'P4 * 'R * 'E * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ('P1, 'P2, 'P3, 'P4, 'R, 'E) t [@@js.create]
    val cast: ('P1, 'P2, 'P3, 'P4, 'R, 'E) t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "RequestType5"] RequestType5 : sig
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t = ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) _RequestType5
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t_7 = ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t
    val t_7_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t_7 -> Ojs.t
    val t_7_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t_7
    val get__: ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'R * 'E * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t [@@js.create]
    val cast: ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "RequestType6"] RequestType6 : sig
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) _RequestType6
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t_8 = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t
    val t_8_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t_8 -> Ojs.t
    val t_8_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t_8
    val get__: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'R * 'E * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t [@@js.create]
    val cast: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "RequestType7"] RequestType7 : sig
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) _RequestType7
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t_9 = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t
    val t_9_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t_9 -> Ojs.t
    val t_9_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t_9
    val get__: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'R * 'E * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t [@@js.create]
    val cast: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "RequestType8"] RequestType8 : sig
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) _RequestType8
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('P8 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> (Ojs.t -> 'P8) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t_10 = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t
    val t_10_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('P8 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t_10 -> Ojs.t
    val t_10_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> (Ojs.t -> 'P8) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t_10
    val get__: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * 'R * 'E * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t [@@js.create]
    val cast: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "RequestType9"] RequestType9 : sig
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) _RequestType9
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('P8 -> Ojs.t) -> ('P9 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> (Ojs.t -> 'P8) -> (Ojs.t -> 'P9) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t_11 = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t
    val t_11_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('P8 -> Ojs.t) -> ('P9 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t_11 -> Ojs.t
    val t_11_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> (Ojs.t -> 'P8) -> (Ojs.t -> 'P9) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t_11
    val get__: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * 'P9 * 'R * 'E * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t [@@js.create]
    val cast: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "NotificationMessage"] NotificationMessage : sig
    type t = _NotificationMessage
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_method: t -> string [@@js.get "method"]
    val set_method: t -> string -> unit [@@js.set "method"]
    val get_params: t -> (untyped_object, unit) union2 [@@js.get "params"]
    val set_params: t -> (untyped_object, unit) union2 -> unit [@@js.set "params"]
    val cast: t -> _Message [@@js.cast]
  end
  module[@js.scope "NotificationType"] NotificationType : sig
    type 'P t = 'P _NotificationType
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    val get__parameterStructures: 'P t -> (* FIXME: unknown type *)any [@@js.get "_parameterStructures"]
    val set__parameterStructures: 'P t -> (* FIXME: unknown type *)any -> unit [@@js.set "_parameterStructures"]
    val get__: 'P t -> ('P * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ?_parameterStructures:_ParameterStructures -> unit -> 'P t [@@js.create]
    val get_parameterStructures: 'P t -> _ParameterStructures [@@js.get "parameterStructures"]
    val cast: 'P t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "NotificationType0"] NotificationType0 : sig
    type t = _NotificationType0
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__: t -> _EM or_undefined [@@js.get "_"]
    val create: method_:string -> t [@@js.create]
    val cast: t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "NotificationType1"] NotificationType1 : sig
    type 'P1 t = 'P1 _NotificationType1
    val t_to_js: ('P1 -> Ojs.t) -> 'P1 t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> Ojs.t -> 'P1 t
    type 'P1 t_1 = 'P1 t
    val t_1_to_js: ('P1 -> Ojs.t) -> 'P1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P1) -> Ojs.t -> 'P1 t_1
    val get__parameterStructures: 'P1 t -> (* FIXME: unknown type *)any [@@js.get "_parameterStructures"]
    val set__parameterStructures: 'P1 t -> (* FIXME: unknown type *)any -> unit [@@js.set "_parameterStructures"]
    val get__: 'P1 t -> ('P1 * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ?_parameterStructures:_ParameterStructures -> unit -> 'P1 t [@@js.create]
    val get_parameterStructures: 'P1 t -> _ParameterStructures [@@js.get "parameterStructures"]
    val cast: 'P1 t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "NotificationType2"] NotificationType2 : sig
    type ('P1, 'P2) t = ('P1, 'P2) _NotificationType2
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P1, 'P2) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> Ojs.t -> ('P1, 'P2) t
    type ('P1, 'P2) t_2 = ('P1, 'P2) t
    val t_2_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P1, 'P2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> Ojs.t -> ('P1, 'P2) t_2
    val get__: ('P1, 'P2) t -> ('P1 * 'P2 * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ('P1, 'P2) t [@@js.create]
    val cast: ('P1, 'P2) t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "NotificationType3"] NotificationType3 : sig
    type ('P1, 'P2, 'P3) t = ('P1, 'P2, 'P3) _NotificationType3
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P1, 'P2, 'P3) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> Ojs.t -> ('P1, 'P2, 'P3) t
    type ('P1, 'P2, 'P3) t_3 = ('P1, 'P2, 'P3) t
    val t_3_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P1, 'P2, 'P3) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> Ojs.t -> ('P1, 'P2, 'P3) t_3
    val get__: ('P1, 'P2, 'P3) t -> ('P1 * 'P2 * 'P3 * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ('P1, 'P2, 'P3) t [@@js.create]
    val cast: ('P1, 'P2, 'P3) t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "NotificationType4"] NotificationType4 : sig
    type ('P1, 'P2, 'P3, 'P4) t = ('P1, 'P2, 'P3, 'P4) _NotificationType4
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4) t
    type ('P1, 'P2, 'P3, 'P4) t_4 = ('P1, 'P2, 'P3, 'P4) t
    val t_4_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4) t_4 -> Ojs.t
    val t_4_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4) t_4
    val get__: ('P1, 'P2, 'P3, 'P4) t -> ('P1 * 'P2 * 'P3 * 'P4 * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ('P1, 'P2, 'P3, 'P4) t [@@js.create]
    val cast: ('P1, 'P2, 'P3, 'P4) t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "NotificationType5"] NotificationType5 : sig
    type ('P1, 'P2, 'P3, 'P4, 'P5) t = ('P1, 'P2, 'P3, 'P4, 'P5) _NotificationType5
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5) t
    type ('P1, 'P2, 'P3, 'P4, 'P5) t_5 = ('P1, 'P2, 'P3, 'P4, 'P5) t
    val t_5_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5) t_5 -> Ojs.t
    val t_5_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5) t_5
    val get__: ('P1, 'P2, 'P3, 'P4, 'P5) t -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5) t [@@js.create]
    val cast: ('P1, 'P2, 'P3, 'P4, 'P5) t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "NotificationType6"] NotificationType6 : sig
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) _NotificationType6
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t_6 = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t
    val t_6_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t_6 -> Ojs.t
    val t_6_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t_6
    val get__: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t [@@js.create]
    val cast: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "NotificationType7"] NotificationType7 : sig
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) _NotificationType7
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t_7 = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t
    val t_7_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t_7 -> Ojs.t
    val t_7_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t_7
    val get__: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t [@@js.create]
    val cast: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "NotificationType8"] NotificationType8 : sig
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) _NotificationType8
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('P8 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> (Ojs.t -> 'P8) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t_8 = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t
    val t_8_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('P8 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t_8 -> Ojs.t
    val t_8_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> (Ojs.t -> 'P8) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t_8
    val get__: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t [@@js.create]
    val cast: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t -> _AbstractMessageSignature [@@js.cast]
  end
  module[@js.scope "NotificationType9"] NotificationType9 : sig
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) _NotificationType9
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('P8 -> Ojs.t) -> ('P9 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> (Ojs.t -> 'P8) -> (Ojs.t -> 'P9) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t_9 = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t
    val t_9_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('P8 -> Ojs.t) -> ('P9 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t_9 -> Ojs.t
    val t_9_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> (Ojs.t -> 'P8) -> (Ojs.t -> 'P9) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t_9
    val get__: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * 'P9 * _EM) or_undefined [@@js.get "_"]
    val create: method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t [@@js.create]
    val cast: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t -> _AbstractMessageSignature [@@js.cast]
  end
  val isRequestMessage: message:_Message or_undefined -> bool [@@js.global "isRequestMessage"]
  val isNotificationMessage: message:_Message or_undefined -> bool [@@js.global "isNotificationMessage"]
  val isResponseMessage: message:_Message or_undefined -> bool [@@js.global "isResponseMessage"]
end
