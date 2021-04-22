[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Message : sig
  type t = _Message

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_jsonrpc : t -> string [@@js.get "jsonrpc"]

  val set_jsonrpc : t -> string -> unit [@@js.set "jsonrpc"]
end
[@@js.scope "Message"]

module RequestMessage : sig
  type t = _RequestMessage

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_id : t -> string or_number or_null [@@js.get "id"]

  val set_id : t -> string or_number or_null -> unit [@@js.set "id"]

  val get_method : t -> string [@@js.get "method"]

  val set_method : t -> string -> unit [@@js.set "method"]

  val get_params : t -> (untyped_object, any) or_array [@@js.get "params"]

  val set_params : t -> (untyped_object, any) or_array -> unit
    [@@js.set "params"]

  val cast : t -> _Message [@@js.cast]
end
[@@js.scope "RequestMessage"]

module ErrorCodes : sig
  val parseError : int [@@js.global "ParseError"]

  val invalidRequest : int [@@js.global "InvalidRequest"]

  val methodNotFound : int [@@js.global "MethodNotFound"]

  val invalidParams : int [@@js.global "InvalidParams"]

  val internalError : int [@@js.global "InternalError"]

  val jsonrpcReservedErrorRangeStart : int
    [@@js.global "jsonrpcReservedErrorRangeStart"]

  val serverErrorStart : int [@@js.global "serverErrorStart"]

  val messageWriteError : int [@@js.global "MessageWriteError"]

  val messageReadError : int [@@js.global "MessageReadError"]

  val serverNotInitialized : int [@@js.global "ServerNotInitialized"]

  val unknownErrorCode : int [@@js.global "UnknownErrorCode"]

  val jsonrpcReservedErrorRangeEnd : (* FIXME: unknown type *) any
    [@@js.global "jsonrpcReservedErrorRangeEnd"]

  val serverErrorEnd : int [@@js.global "serverErrorEnd"]
end
[@@js.scope "ErrorCodes"]

module ResponseErrorLiteral : sig
  type 'D t = 'D _ResponseErrorLiteral

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
  type 'D t = 'D _ResponseError

  val t_to_js : ('D -> Ojs.t) -> 'D t -> Ojs.t

  val t_of_js : (Ojs.t -> 'D) -> Ojs.t -> 'D t

  type t_0 = unit t

  val t_0_to_js : t_0 -> Ojs.t

  val t_0_of_js : Ojs.t -> t_0

  val get_code : 'D t -> int [@@js.get "code"]

  val get_data : 'D t -> 'D or_undefined [@@js.get "data"]

  val create : code:int -> message:string -> ?data:'D -> unit -> 'D t
    [@@js.create]

  val toJson : 'D t -> 'D _ResponseErrorLiteral [@@js.call "toJson"]

  val cast : 'D t -> Error.t [@@js.cast]
end
[@@js.scope "ResponseError"]

module ResponseMessage : sig
  type t = _ResponseMessage

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

  val get_error : t -> any _ResponseErrorLiteral [@@js.get "error"]

  val set_error : t -> any _ResponseErrorLiteral -> unit [@@js.set "error"]

  val cast : t -> _Message [@@js.cast]
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

module LSPLogMessage : sig
  type t = _LSPLogMessage

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_type : t -> _LSPMessageType [@@js.get "type"]

  val set_type : t -> _LSPMessageType -> unit [@@js.set "type"]

  val get_message
    :  t
    -> (_NotificationMessage, _RequestMessage, _ResponseMessage) union3
    [@@js.get "message"]

  val set_message
    :  t
    -> (_NotificationMessage, _RequestMessage, _ResponseMessage) union3
    -> unit
    [@@js.set "message"]

  val get_timestamp : t -> int [@@js.get "timestamp"]

  val set_timestamp : t -> int -> unit [@@js.set "timestamp"]
end
[@@js.scope "LSPLogMessage"]

module ParameterStructures : sig
  type t = _ParameterStructures

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> (* FIXME: unknown type *) any [@@js.get "kind"]

  val get_auto : unit -> t [@@js.get "auto"]

  val get_byPosition : unit -> t [@@js.get "byPosition"]

  val get_byName : unit -> t [@@js.get "byName"]

  val create : unit -> t [@@js.create]

  val is : value:any -> bool [@@js.global "is"]

  val toString : t -> string [@@js.call "toString"]
end
[@@js.scope "ParameterStructures"]

module MessageSignature : sig
  type t = _MessageSignature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_method : t -> string [@@js.get "method"]

  val get_numberOfParams : t -> int [@@js.get "numberOfParams"]

  val get_parameterStructures : t -> _ParameterStructures
    [@@js.get "parameterStructures"]
end
[@@js.scope "MessageSignature"]

module AbstractMessageSignature : sig
  type t = _AbstractMessageSignature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_method : t -> string [@@js.get "method"]

  val get_numberOfParams : t -> int [@@js.get "numberOfParams"]

  val create : method_:string -> numberOfParams:int -> t [@@js.create]

  val get_parameterStructures : t -> _ParameterStructures
    [@@js.get "parameterStructures"]

  val cast : t -> _MessageSignature [@@js.cast]
end
[@@js.scope "AbstractMessageSignature"]

module EM : sig
  type t = _EM

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get___endMarker__ : t -> int [@@js.get "_$endMarker$_"]

  val set___endMarker__ : t -> int -> unit [@@js.set "_$endMarker$_"]
end
[@@js.scope "_EM"]

module RequestType0 : sig
  type ('R, 'E) t = ('R, 'E) _RequestType0

  val t_to_js : ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('R, 'E) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('R, 'E) t

  val get__ : ('R, 'E) t -> ('R * 'E * _EM) or_undefined [@@js.get "_"]

  val create : method_:string -> ('R, 'E) t [@@js.create]

  val cast : ('R, 'E) t -> _AbstractMessageSignature [@@js.cast]
end
[@@js.scope "RequestType0"]

module RequestType : sig
  type ('P, 'R, 'E) t = ('P, 'R, 'E) _RequestType

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

  val get__parameterStructures : ('P, 'R, 'E) t -> (* FIXME: unknown type *) any
    [@@js.get "_parameterStructures"]

  val set__parameterStructures
    :  ('P, 'R, 'E) t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "_parameterStructures"]

  val get__ : ('P, 'R, 'E) t -> ('P * 'R * 'E * _EM) or_undefined [@@js.get "_"]

  val create
    :  method_:string
    -> ?_parameterStructures:_ParameterStructures
    -> unit
    -> ('P, 'R, 'E) t
    [@@js.create]

  val get_parameterStructures : ('P, 'R, 'E) t -> _ParameterStructures
    [@@js.get "parameterStructures"]

  val cast : ('P, 'R, 'E) t -> _AbstractMessageSignature [@@js.cast]
end
[@@js.scope "RequestType"]

module RequestType1 : sig
  type ('P1, 'R, 'E) t = ('P1, 'R, 'E) _RequestType1

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

  val get__parameterStructures
    :  ('P1, 'R, 'E) t
    -> (* FIXME: unknown type *) any
    [@@js.get "_parameterStructures"]

  val set__parameterStructures
    :  ('P1, 'R, 'E) t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "_parameterStructures"]

  val get__ : ('P1, 'R, 'E) t -> ('P1 * 'R * 'E * _EM) or_undefined
    [@@js.get "_"]

  val create
    :  method_:string
    -> ?_parameterStructures:_ParameterStructures
    -> unit
    -> ('P1, 'R, 'E) t
    [@@js.create]

  val get_parameterStructures : ('P1, 'R, 'E) t -> _ParameterStructures
    [@@js.get "parameterStructures"]

  val cast : ('P1, 'R, 'E) t -> _AbstractMessageSignature [@@js.cast]
end
[@@js.scope "RequestType1"]

module RequestType2 : sig
  type ('P1, 'P2, 'R, 'E) t = ('P1, 'P2, 'R, 'E) _RequestType2

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

  val get__ : ('P1, 'P2, 'R, 'E) t -> ('P1 * 'P2 * 'R * 'E * _EM) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'R, 'E) t [@@js.create]

  val cast : ('P1, 'P2, 'R, 'E) t -> _AbstractMessageSignature [@@js.cast]
end
[@@js.scope "RequestType2"]

module RequestType3 : sig
  type ('P1, 'P2, 'P3, 'R, 'E) t = ('P1, 'P2, 'P3, 'R, 'E) _RequestType3

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
    -> ('P1 * 'P2 * 'P3 * 'R * 'E * _EM) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'R, 'E) t [@@js.create]

  val cast : ('P1, 'P2, 'P3, 'R, 'E) t -> _AbstractMessageSignature [@@js.cast]
end
[@@js.scope "RequestType3"]

module RequestType4 : sig
  type ('P1, 'P2, 'P3, 'P4, 'R, 'E) t =
    ('P1, 'P2, 'P3, 'P4, 'R, 'E) _RequestType4

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
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'R * 'E * _EM) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'P4, 'R, 'E) t [@@js.create]

  val cast : ('P1, 'P2, 'P3, 'P4, 'R, 'E) t -> _AbstractMessageSignature
    [@@js.cast]
end
[@@js.scope "RequestType4"]

module RequestType5 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) _RequestType5

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
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'R * 'E * _EM) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t
    [@@js.create]

  val cast : ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t -> _AbstractMessageSignature
    [@@js.cast]
end
[@@js.scope "RequestType5"]

module RequestType6 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) _RequestType6

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
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'R * 'E * _EM) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t
    [@@js.create]

  val cast
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t
    -> _AbstractMessageSignature
    [@@js.cast]
end
[@@js.scope "RequestType6"]

module RequestType7 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) _RequestType7

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
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'R * 'E * _EM) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t
    [@@js.create]

  val cast
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t
    -> _AbstractMessageSignature
    [@@js.cast]
end
[@@js.scope "RequestType7"]

module RequestType8 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) _RequestType8

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
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * 'R * 'E * _EM)
       or_undefined
    [@@js.get "_"]

  val create
    :  method_:string
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t
    [@@js.create]

  val cast
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t
    -> _AbstractMessageSignature
    [@@js.cast]
end
[@@js.scope "RequestType8"]

module RequestType9 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) _RequestType9

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
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * 'P9 * 'R * 'E * _EM)
       or_undefined
    [@@js.get "_"]

  val create
    :  method_:string
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t
    [@@js.create]

  val cast
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t
    -> _AbstractMessageSignature
    [@@js.cast]
end
[@@js.scope "RequestType9"]

module NotificationMessage : sig
  type t = _NotificationMessage

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_method : t -> string [@@js.get "method"]

  val set_method : t -> string -> unit [@@js.set "method"]

  val get_params : t -> (untyped_object, unit) union2 [@@js.get "params"]

  val set_params : t -> (untyped_object, unit) union2 -> unit
    [@@js.set "params"]

  val cast : t -> _Message [@@js.cast]
end
[@@js.scope "NotificationMessage"]

module NotificationType : sig
  type 'P t = 'P _NotificationType

  val t_to_js : ('P -> Ojs.t) -> 'P t -> Ojs.t

  val t_of_js : (Ojs.t -> 'P) -> Ojs.t -> 'P t

  val get__parameterStructures : 'P t -> (* FIXME: unknown type *) any
    [@@js.get "_parameterStructures"]

  val set__parameterStructures : 'P t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_parameterStructures"]

  val get__ : 'P t -> ('P * _EM) or_undefined [@@js.get "_"]

  val create
    :  method_:string
    -> ?_parameterStructures:_ParameterStructures
    -> unit
    -> 'P t
    [@@js.create]

  val get_parameterStructures : 'P t -> _ParameterStructures
    [@@js.get "parameterStructures"]

  val cast : 'P t -> _AbstractMessageSignature [@@js.cast]
end
[@@js.scope "NotificationType"]

module NotificationType0 : sig
  type t = _NotificationType0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__ : t -> _EM or_undefined [@@js.get "_"]

  val create : method_:string -> t [@@js.create]

  val cast : t -> _AbstractMessageSignature [@@js.cast]
end
[@@js.scope "NotificationType0"]

module NotificationType1 : sig
  type 'P1 t = 'P1 _NotificationType1

  val t_to_js : ('P1 -> Ojs.t) -> 'P1 t -> Ojs.t

  val t_of_js : (Ojs.t -> 'P1) -> Ojs.t -> 'P1 t

  val get__parameterStructures : 'P1 t -> (* FIXME: unknown type *) any
    [@@js.get "_parameterStructures"]

  val set__parameterStructures : 'P1 t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_parameterStructures"]

  val get__ : 'P1 t -> ('P1 * _EM) or_undefined [@@js.get "_"]

  val create
    :  method_:string
    -> ?_parameterStructures:_ParameterStructures
    -> unit
    -> 'P1 t
    [@@js.create]

  val get_parameterStructures : 'P1 t -> _ParameterStructures
    [@@js.get "parameterStructures"]

  val cast : 'P1 t -> _AbstractMessageSignature [@@js.cast]
end
[@@js.scope "NotificationType1"]

module NotificationType2 : sig
  type ('P1, 'P2) t = ('P1, 'P2) _NotificationType2

  val t_to_js : ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P1, 'P2) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> Ojs.t -> ('P1, 'P2) t

  val get__ : ('P1, 'P2) t -> ('P1 * 'P2 * _EM) or_undefined [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2) t [@@js.create]

  val cast : ('P1, 'P2) t -> _AbstractMessageSignature [@@js.cast]
end
[@@js.scope "NotificationType2"]

module NotificationType3 : sig
  type ('P1, 'P2, 'P3) t = ('P1, 'P2, 'P3) _NotificationType3

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

  val get__ : ('P1, 'P2, 'P3) t -> ('P1 * 'P2 * 'P3 * _EM) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3) t [@@js.create]

  val cast : ('P1, 'P2, 'P3) t -> _AbstractMessageSignature [@@js.cast]
end
[@@js.scope "NotificationType3"]

module NotificationType4 : sig
  type ('P1, 'P2, 'P3, 'P4) t = ('P1, 'P2, 'P3, 'P4) _NotificationType4

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
    -> ('P1 * 'P2 * 'P3 * 'P4 * _EM) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'P4) t [@@js.create]

  val cast : ('P1, 'P2, 'P3, 'P4) t -> _AbstractMessageSignature [@@js.cast]
end
[@@js.scope "NotificationType4"]

module NotificationType5 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5) t =
    ('P1, 'P2, 'P3, 'P4, 'P5) _NotificationType5

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
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * _EM) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5) t [@@js.create]

  val cast : ('P1, 'P2, 'P3, 'P4, 'P5) t -> _AbstractMessageSignature
    [@@js.cast]
end
[@@js.scope "NotificationType5"]

module NotificationType6 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) _NotificationType6

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
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * _EM) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t [@@js.create]

  val cast : ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t -> _AbstractMessageSignature
    [@@js.cast]
end
[@@js.scope "NotificationType6"]

module NotificationType7 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) _NotificationType7

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
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * _EM) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t
    [@@js.create]

  val cast : ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t -> _AbstractMessageSignature
    [@@js.cast]
end
[@@js.scope "NotificationType7"]

module NotificationType8 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) _NotificationType8

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
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * _EM) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t
    [@@js.create]

  val cast
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t
    -> _AbstractMessageSignature
    [@@js.cast]
end
[@@js.scope "NotificationType8"]

module NotificationType9 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) _NotificationType9

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
    -> ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * 'P9 * _EM) or_undefined
    [@@js.get "_"]

  val create : method_:string -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t
    [@@js.create]

  val cast
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t
    -> _AbstractMessageSignature
    [@@js.cast]
end
[@@js.scope "NotificationType9"]

val isRequestMessage : message:_Message or_undefined -> bool
  [@@js.global "isRequestMessage"]

val isNotificationMessage : message:_Message or_undefined -> bool
  [@@js.global "isNotificationMessage"]

val isResponseMessage : message:_Message or_undefined -> bool
  [@@js.global "isResponseMessage"]
