[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Message : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_jsonrpc : t -> string [@@js.get "jsonrpc"]

  val set_jsonrpc : t -> string -> unit [@@js.set "jsonrpc"]
end
[@@js.scope "Message"]

module RequestMessage : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_id : t -> string or_number or_null [@@js.get "id"]

  val set_id : t -> string or_number or_null -> unit [@@js.set "id"]

  val get_method : t -> string [@@js.get "method"]

  val set_method : t -> string -> unit [@@js.set "method"]

  val get_params : t -> (untyped_object, any) or_array [@@js.get "params"]

  val set_params : t -> (untyped_object, any) or_array -> unit
    [@@js.set "params"]

  val cast : t -> Message.t [@@js.cast]
end
[@@js.scope "RequestMessage"]

module ErrorCodes : sig
  val parse_error : int [@@js.global "ParseError"]

  val invalid_request : int [@@js.global "InvalidRequest"]

  val method_not_found : int [@@js.global "MethodNotFound"]

  val invalid_params : int [@@js.global "InvalidParams"]

  val internal_error : int [@@js.global "InternalError"]

  val jsonrpc_reserved_error_range_start : int
    [@@js.global "jsonrpcReservedErrorRangeStart"]

  val server_error_start : int [@@js.global "serverErrorStart"]

  val message_write_error : int [@@js.global "MessageWriteError"]

  val message_read_error : int [@@js.global "MessageReadError"]

  val server_not_initialized : int [@@js.global "ServerNotInitialized"]

  val unknown_error_code : int [@@js.global "UnknownErrorCode"]

  val jsonrpc_reserved_error_range_end : (* FIXME: unknown type *) any
    [@@js.global "jsonrpcReservedErrorRangeEnd"]

  val server_error_end : int [@@js.global "serverErrorEnd"]
end
[@@js.scope "ErrorCodes"]

module ResponseErrorLiteral : sig
  type 'D t

  val t_to_js : ('D -> Ojs.t) -> 'D t -> Ojs.t

  val t_of_js : (Ojs.t -> 'D) -> Ojs.t -> 'D t

  type t_0 = unit t

  val t_0_to_js : t_0 -> Ojs.t

  val t_0_of_js : Ojs.t -> t_0

  val get_code : 'D t -> int [@@js.get "code"]

  val set_code : 'D t -> int -> unit [@@js.set "code"]

  val get_message : 'D t -> string [@@js.get "message"]

  val set_message : 'D t -> string -> unit [@@js.set "message"]

  val get_data : 'D t -> 'D [@@js.get "data"]

  val set_data : 'D t -> 'D -> unit [@@js.set "data"]
end
[@@js.scope "ResponseErrorLiteral"]

module ResponseError : sig
  type 'D t

  val t_to_js : ('D -> Ojs.t) -> 'D t -> Ojs.t

  val t_of_js : (Ojs.t -> 'D) -> Ojs.t -> 'D t

  type t_0 = unit t

  val t_0_to_js : t_0 -> Ojs.t

  val t_0_of_js : Ojs.t -> t_0

  val get_code : 'D t -> int [@@js.get "code"]

  val get_data : 'D t -> 'D or_undefined [@@js.get "data"]

  val create : code:int -> message:string -> ?data:'D -> unit -> 'D t
    [@@js.create]

  val to_json : 'D t -> 'D ResponseErrorLiteral.t [@@js.call "toJson"]

  val cast : 'D t -> Error.t [@@js.cast]
end
[@@js.scope "ResponseError"]

module ResponseMessage : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_id : t -> string or_number or_null [@@js.get "id"]

  val set_id : t -> string or_number or_null -> unit [@@js.set "id"]

  val get_result
    :  t
    -> (untyped_object, any) or_array or_boolean or_string or_number or_null
    [@@js.get "result"]

  val set_result
    :  t
    -> (untyped_object, any) or_array or_boolean or_string or_number or_null
    -> unit
    [@@js.set "result"]

  val get_error : t -> any ResponseErrorLiteral.t [@@js.get "error"]

  val set_error : t -> any ResponseErrorLiteral.t -> unit [@@js.set "error"]

  val cast : t -> Message.t [@@js.cast]
end
[@@js.scope "ResponseMessage"]

module LSPMessageType : sig
  type t =
    ([ `L_s0_receive_notification [@js "receive-notification"]
     | `L_s1_receive_request [@js "receive-request"]
     | `L_s2_receive_response [@js "receive-response"]
     | `L_s3_send_notification [@js "send-notification"]
     | `L_s4_send_request [@js "send-request"]
     | `L_s5_send_response [@js "send-response"]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module NotificationMessage : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_method : t -> string [@@js.get "method"]

  val set_method : t -> string -> unit [@@js.set "method"]

  val get_params : t -> (untyped_object, unit) union2 [@@js.get "params"]

  val set_params : t -> (untyped_object, unit) union2 -> unit
    [@@js.set "params"]

  val cast : t -> Message.t [@@js.cast]
end

module LSPLogMessage : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_type : t -> LSPMessageType.t [@@js.get "type"]

  val set_type : t -> LSPMessageType.t -> unit [@@js.set "type"]

  val get_message
    :  t
    -> (NotificationMessage.t, RequestMessage.t, ResponseMessage.t) union3
    [@@js.get "message"]

  val set_message
    :  t
    -> (NotificationMessage.t, RequestMessage.t, ResponseMessage.t) union3
    -> unit
    [@@js.set "message"]

  val get_timestamp : t -> int [@@js.get "timestamp"]

  val set_timestamp : t -> int -> unit [@@js.set "timestamp"]
end
[@@js.scope "LSPLogMessage"]

module ParameterStructures : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> (* FIXME: unknown type *) any [@@js.get "kind"]

  val get_auto : unit -> t [@@js.get "auto"]

  val get_by_position : unit -> t [@@js.get "byPosition"]

  val get_by_name : unit -> t [@@js.get "byName"]

  val create : unit -> t [@@js.create]

  val is : value:any -> bool [@@js.global "is"]

  val to_string : t -> string [@@js.call "toString"]
end
[@@js.scope "ParameterStructures"]

module MessageSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_method : t -> string [@@js.get "method"]

  val get_number_of_params : t -> int [@@js.get "numberOfParams"]

  val get_parameter_structures : t -> ParameterStructures.t
    [@@js.get "parameterStructures"]
end
[@@js.scope "MessageSignature"]

module AbstractMessageSignature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_method : t -> string [@@js.get "method"]

  val get_number_of_params : t -> int [@@js.get "numberOfParams"]

  val create : method_:string -> number_of_params:int -> t [@@js.create]

  val get_parameter_structures : t -> ParameterStructures.t
    [@@js.get "parameterStructures"]

  val cast : t -> MessageSignature.t [@@js.cast]
end
[@@js.scope "AbstractMessageSignature"]

module EM : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_end_marker : t -> int [@@js.get "_$endMarker$_"]

  val set_end_marker : t -> int -> unit [@@js.set "_$endMarker$_"]
end
[@@js.scope "_EM"]

module RequestType0 : sig
  type ('R, 'E) t

  val t_to_js : ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('R, 'E) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('R, 'E) t

  val get__ : ('R, 'E) t -> ('R * 'E * EM.t) or_undefined [@@js.get "_"]

  val create : method_:string -> ('R, 'E) t [@@js.create]

  val cast : ('R, 'E) t -> AbstractMessageSignature.t [@@js.cast]
end
[@@js.scope "RequestType0"]

module RequestType : sig
  type ('P, 'R, 'E) t

  val t_to_js
    :  ('P -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P, 'R, 'E) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'E)
    -> Ojs.t
    -> ('P, 'R, 'E) t

  val get_parameter_structures : ('P, 'R, 'E) t -> (* FIXME: unknown type *) any
    [@@js.get "_parameterStructures"]

  val set_parameter_structures
    :  ('P, 'R, 'E) t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "_parameterStructures"]

  val get__ : ('P, 'R, 'E) t -> ('P * 'R * 'E * EM.t) or_undefined
    [@@js.get "_"]

  val create
    :  method_:string
    -> ?_parameterStructures:ParameterStructures.t
    -> unit
    -> ('P, 'R, 'E) t
    [@@js.create]

  val get_parameter_structures : ('P, 'R, 'E) t -> ParameterStructures.t
    [@@js.get "parameterStructures"]

  val cast : ('P, 'R, 'E) t -> AbstractMessageSignature.t [@@js.cast]
end
[@@js.scope "RequestType"]

module RequestType1 : sig
  type ('P1, 'R, 'E) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P1, 'R, 'E) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'E)
    -> Ojs.t
    -> ('P1, 'R, 'E) t

  val get_parameter_structures
    :  ('P1, 'R, 'E) t
    -> (* FIXME: unknown type *) any
    [@@js.get "_parameterStructures"]

  val set_parameter_structures
    :  ('P1, 'R, 'E) t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "_parameterStructures"]

  val get__ : ('P1, 'R, 'E) t -> ('P1 * 'R * 'E * EM.t) or_undefined
    [@@js.get "_"]

  val create
    :  method_:string
    -> ?_parameterStructures:ParameterStructures.t
    -> unit
    -> ('P1, 'R, 'E) t
    [@@js.create]

  val get_parameter_structures : ('P1, 'R, 'E) t -> ParameterStructures.t
    [@@js.get "parameterStructures"]

  val cast : ('P1, 'R, 'E) t -> AbstractMessageSignature.t [@@js.cast]
end
[@@js.scope "RequestType1"]

module RequestType2 : sig
  type ('P1, 'P2, 'R, 'E) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P1, 'P2, 'R, 'E) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'E)
    -> Ojs.t
    -> ('P1, 'P2, 'R, 'E) t

  val get__ : ('P1, 'P2, 'R, 'E) t -> ('P1 * 'P2 * 'R * 'E * EM.t) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'R, 'E) t [@@js.create]

  val cast : ('P1, 'P2, 'R, 'E) t -> AbstractMessageSignature.t [@@js.cast]
end
[@@js.scope "RequestType2"]

module RequestType3 : sig
  type ('P1, 'P2, 'P3, 'R, 'E) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'R, 'E) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'E)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'R, 'E) t

  val get__
    :  ('P1, 'P2, 'P3, 'R, 'E) t
    -> ('P1 * 'P2 * 'P3 * 'R * 'E * EM.t) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'R, 'E) t [@@js.create]

  val cast : ('P1, 'P2, 'P3, 'R, 'E) t -> AbstractMessageSignature.t [@@js.cast]
end
[@@js.scope "RequestType3"]

module RequestType4 : sig
  type ('P1, 'P2, 'P3, 'P4, 'R, 'E) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'R, 'E) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'E)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'R, 'E) t

  val get__
    :  ('P1, 'P2, 'P3, 'P4, 'R, 'E) t
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'R * 'E * EM.t) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'P4, 'R, 'E) t [@@js.create]

  val cast : ('P1, 'P2, 'P3, 'P4, 'R, 'E) t -> AbstractMessageSignature.t
    [@@js.cast]
end
[@@js.scope "RequestType4"]

module RequestType5 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P5 -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'P5)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'E)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t

  val get__
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'R * 'E * EM.t) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t
    [@@js.create]

  val cast : ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t -> AbstractMessageSignature.t
    [@@js.cast]
end
[@@js.scope "RequestType5"]

module RequestType6 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P5 -> Ojs.t)
    -> ('P6 -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'P5)
    -> (Ojs.t -> 'P6)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'E)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t

  val get__
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'R * 'E * EM.t) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t
    [@@js.create]

  val cast
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t
    -> AbstractMessageSignature.t
    [@@js.cast]
end
[@@js.scope "RequestType6"]

module RequestType7 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P5 -> Ojs.t)
    -> ('P6 -> Ojs.t)
    -> ('P7 -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'P5)
    -> (Ojs.t -> 'P6)
    -> (Ojs.t -> 'P7)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'E)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t

  val get__
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'R * 'E * EM.t) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t
    [@@js.create]

  val cast
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t
    -> AbstractMessageSignature.t
    [@@js.cast]
end
[@@js.scope "RequestType7"]

module RequestType8 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P5 -> Ojs.t)
    -> ('P6 -> Ojs.t)
    -> ('P7 -> Ojs.t)
    -> ('P8 -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'P5)
    -> (Ojs.t -> 'P6)
    -> (Ojs.t -> 'P7)
    -> (Ojs.t -> 'P8)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'E)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t

  val get__
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * 'R * 'E * EM.t)
       or_undefined
    [@@js.get "_"]

  val create
    :  method_:string
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t
    [@@js.create]

  val cast
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t
    -> AbstractMessageSignature.t
    [@@js.cast]
end
[@@js.scope "RequestType8"]

module RequestType9 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P5 -> Ojs.t)
    -> ('P6 -> Ojs.t)
    -> ('P7 -> Ojs.t)
    -> ('P8 -> Ojs.t)
    -> ('P9 -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'P5)
    -> (Ojs.t -> 'P6)
    -> (Ojs.t -> 'P7)
    -> (Ojs.t -> 'P8)
    -> (Ojs.t -> 'P9)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'E)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t

  val get__
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * 'P9 * 'R * 'E * EM.t)
       or_undefined
    [@@js.get "_"]

  val create
    :  method_:string
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t
    [@@js.create]

  val cast
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t
    -> AbstractMessageSignature.t
    [@@js.cast]
end
[@@js.scope "RequestType9"] [@@js.scope "NotificationMessage"]

module NotificationType : sig
  type 'P t

  val t_to_js : ('P -> Ojs.t) -> 'P t -> Ojs.t

  val t_of_js : (Ojs.t -> 'P) -> Ojs.t -> 'P t

  val get_parameter_structures : 'P t -> (* FIXME: unknown type *) any
    [@@js.get "_parameterStructures"]

  val set_parameter_structures : 'P t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_parameterStructures"]

  val get__ : 'P t -> ('P * EM.t) or_undefined [@@js.get "_"]

  val create
    :  method_:string
    -> ?_parameterStructures:ParameterStructures.t
    -> unit
    -> 'P t
    [@@js.create]

  val get_parameter_structures : 'P t -> ParameterStructures.t
    [@@js.get "parameterStructures"]

  val cast : 'P t -> AbstractMessageSignature.t [@@js.cast]
end
[@@js.scope "NotificationType"]

module NotificationType0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__ : t -> EM.t or_undefined [@@js.get "_"]

  val create : method_:string -> t [@@js.create]

  val cast : t -> AbstractMessageSignature.t [@@js.cast]
end
[@@js.scope "NotificationType0"]

module NotificationType1 : sig
  type 'P1 t

  val t_to_js : ('P1 -> Ojs.t) -> 'P1 t -> Ojs.t

  val t_of_js : (Ojs.t -> 'P1) -> Ojs.t -> 'P1 t

  val get_parameter_structures : 'P1 t -> (* FIXME: unknown type *) any
    [@@js.get "_parameterStructures"]

  val set_parameter_structures : 'P1 t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_parameterStructures"]

  val get__ : 'P1 t -> ('P1 * EM.t) or_undefined [@@js.get "_"]

  val create
    :  method_:string
    -> ?_parameterStructures:ParameterStructures.t
    -> unit
    -> 'P1 t
    [@@js.create]

  val get_parameter_structures : 'P1 t -> ParameterStructures.t
    [@@js.get "parameterStructures"]

  val cast : 'P1 t -> AbstractMessageSignature.t [@@js.cast]
end
[@@js.scope "NotificationType1"]

module NotificationType2 : sig
  type ('P1, 'P2) t

  val t_to_js : ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P1, 'P2) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> Ojs.t -> ('P1, 'P2) t

  val get__ : ('P1, 'P2) t -> ('P1 * 'P2 * EM.t) or_undefined [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2) t [@@js.create]

  val cast : ('P1, 'P2) t -> AbstractMessageSignature.t [@@js.cast]
end
[@@js.scope "NotificationType2"]

module NotificationType3 : sig
  type ('P1, 'P2, 'P3) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P1, 'P2, 'P3) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> Ojs.t
    -> ('P1, 'P2, 'P3) t

  val get__ : ('P1, 'P2, 'P3) t -> ('P1 * 'P2 * 'P3 * EM.t) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3) t [@@js.create]

  val cast : ('P1, 'P2, 'P3) t -> AbstractMessageSignature.t [@@js.cast]
end
[@@js.scope "NotificationType3"]

module NotificationType4 : sig
  type ('P1, 'P2, 'P3, 'P4) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4) t

  val get__
    :  ('P1, 'P2, 'P3, 'P4) t
    -> ('P1 * 'P2 * 'P3 * 'P4 * EM.t) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'P4) t [@@js.create]

  val cast : ('P1, 'P2, 'P3, 'P4) t -> AbstractMessageSignature.t [@@js.cast]
end
[@@js.scope "NotificationType4"]

module NotificationType5 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P5 -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'P5) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'P5)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'P5) t

  val get__
    :  ('P1, 'P2, 'P3, 'P4, 'P5) t
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * EM.t) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5) t [@@js.create]

  val cast : ('P1, 'P2, 'P3, 'P4, 'P5) t -> AbstractMessageSignature.t
    [@@js.cast]
end
[@@js.scope "NotificationType5"]

module NotificationType6 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P5 -> Ojs.t)
    -> ('P6 -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'P5)
    -> (Ojs.t -> 'P6)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t

  val get__
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * EM.t) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t [@@js.create]

  val cast : ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t -> AbstractMessageSignature.t
    [@@js.cast]
end
[@@js.scope "NotificationType6"]

module NotificationType7 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P5 -> Ojs.t)
    -> ('P6 -> Ojs.t)
    -> ('P7 -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'P5)
    -> (Ojs.t -> 'P6)
    -> (Ojs.t -> 'P7)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t

  val get__
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * EM.t) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t
    [@@js.create]

  val cast : ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t -> AbstractMessageSignature.t
    [@@js.cast]
end
[@@js.scope "NotificationType7"]

module NotificationType8 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P5 -> Ojs.t)
    -> ('P6 -> Ojs.t)
    -> ('P7 -> Ojs.t)
    -> ('P8 -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'P5)
    -> (Ojs.t -> 'P6)
    -> (Ojs.t -> 'P7)
    -> (Ojs.t -> 'P8)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t

  val get__
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * EM.t) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t
    [@@js.create]

  val cast
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t
    -> AbstractMessageSignature.t
    [@@js.cast]
end
[@@js.scope "NotificationType8"]

module NotificationType9 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P5 -> Ojs.t)
    -> ('P6 -> Ojs.t)
    -> ('P7 -> Ojs.t)
    -> ('P8 -> Ojs.t)
    -> ('P9 -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'P5)
    -> (Ojs.t -> 'P6)
    -> (Ojs.t -> 'P7)
    -> (Ojs.t -> 'P8)
    -> (Ojs.t -> 'P9)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t

  val get__
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * 'P9 * EM.t) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t
    [@@js.create]

  val cast
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t
    -> AbstractMessageSignature.t
    [@@js.cast]
end
[@@js.scope "NotificationType9"]

val is_request_message : message:Message.t or_undefined -> bool
  [@@js.global "isRequestMessage"]

val is_notification_message : message:Message.t or_undefined -> bool
  [@@js.global "isNotificationMessage"]

val is_response_message : message:Message.t or_undefined -> bool
  [@@js.global "isResponseMessage"]
