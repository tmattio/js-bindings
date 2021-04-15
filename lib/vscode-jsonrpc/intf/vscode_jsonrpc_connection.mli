[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type _CancellationId = string or_number

    and _CancellationReceiverStrategy = [ `CancellationReceiverStrategy ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _CancellationSenderStrategy = [ `CancellationSenderStrategy ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _CancellationStrategy = [ `CancellationStrategy ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ConnectionError = [ `ConnectionError ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ConnectionErrors =
      ([ `Closed [@js 1]
       | `Disposed [@js 2]
       | `AlreadyListening [@js 3]
       ]
      [@js.enum])

    and _ConnectionErrors_Closed = ([ `Closed [@js 1] ][@js.enum])

    and _ConnectionErrors_Disposed = ([ `Disposed [@js 2] ][@js.enum])

    and _ConnectionErrors_AlreadyListening =
      ([ `AlreadyListening [@js 3] ][@js.enum])

    and _ConnectionOptions = [ `ConnectionOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _ConnectionStrategy = anonymous_interface_0

    and _GenericNotificationHandler = [ `GenericNotificationHandler ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and ('R, 'E) _GenericRequestHandler =
      [ `GenericRequestHandler of 'R * 'E ] intf
    [@@js.custom
      { of_js = (fun _R _E -> Obj.magic); to_js = (fun _R _E -> Obj.magic) }]

    and ('R, 'E) _HandlerResult =
      ( 'R
      , 'E ResponseError.t_1
      , 'R Promise.t
      , ('R, 'E ResponseError.t_1) union2 Promise.t
      , 'E ResponseError.t_1 Promise.t )
      union5

    and _LogTraceParams = [ `LogTraceParams ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Logger = [ `Logger ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _MessageConnection = [ `MessageConnection ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and 'P _NotificationHandler = [ `NotificationHandler of 'P ] intf
    [@@js.custom
      { of_js = (fun _P -> Obj.magic); to_js = (fun _P -> Obj.magic) }]

    and _NotificationHandler0 = [ `NotificationHandler0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and 'P1 _NotificationHandler1 = [ `NotificationHandler1 of 'P1 ] intf
    [@@js.custom
      { of_js = (fun _P1 -> Obj.magic); to_js = (fun _P1 -> Obj.magic) }]

    and ('P1, 'P2) _NotificationHandler2 =
      [ `NotificationHandler2 of 'P1 * 'P2 ] intf
    [@@js.custom
      { of_js = (fun _P1 _P2 -> Obj.magic); to_js = (fun _P1 _P2 -> Obj.magic) }]

    and ('P1, 'P2, 'P3) _NotificationHandler3 =
      [ `NotificationHandler3 of 'P1 * 'P2 * 'P3 ] intf
    [@@js.custom
      { of_js = (fun _P1 _P2 _P3 -> Obj.magic)
      ; to_js = (fun _P1 _P2 _P3 -> Obj.magic)
      }]

    and ('P1, 'P2, 'P3, 'P4) _NotificationHandler4 =
      [ `NotificationHandler4 of 'P1 * 'P2 * 'P3 * 'P4 ] intf
    [@@js.custom
      { of_js = (fun _P1 _P2 _P3 _P4 -> Obj.magic)
      ; to_js = (fun _P1 _P2 _P3 _P4 -> Obj.magic)
      }]

    and ('P1, 'P2, 'P3, 'P4, 'P5) _NotificationHandler5 =
      [ `NotificationHandler5 of 'P1 * 'P2 * 'P3 * 'P4 * 'P5 ] intf
    [@@js.custom
      { of_js = (fun _P1 _P2 _P3 _P4 _P5 -> Obj.magic)
      ; to_js = (fun _P1 _P2 _P3 _P4 _P5 -> Obj.magic)
      }]

    and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) _NotificationHandler6 =
      [ `NotificationHandler6 of 'P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 ] intf
    [@@js.custom
      { of_js = (fun _P1 _P2 _P3 _P4 _P5 _P6 -> Obj.magic)
      ; to_js = (fun _P1 _P2 _P3 _P4 _P5 _P6 -> Obj.magic)
      }]

    and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) _NotificationHandler7 =
      [ `NotificationHandler7 of 'P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 ] intf
    [@@js.custom
      { of_js = (fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 -> Obj.magic)
      ; to_js = (fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 -> Obj.magic)
      }]

    and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) _NotificationHandler8 =
      [ `NotificationHandler8 of 'P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 ]
      intf
    [@@js.custom
      { of_js = (fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 -> Obj.magic)
      ; to_js = (fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 -> Obj.magic)
      }]

    and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) _NotificationHandler9 =
      [ `NotificationHandler9 of
        'P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * 'P9
      ]
      intf
    [@@js.custom
      { of_js = (fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 -> Obj.magic)
      ; to_js = (fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 -> Obj.magic)
      }]

    and 'T _ProgressParams = [ `ProgressParams of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and _ProgressToken = string or_number

    and 'PR _ProgressType = [ `ProgressType of 'PR ] intf
    [@@js.custom
      { of_js = (fun _PR -> Obj.magic); to_js = (fun _PR -> Obj.magic) }]

    and ('P, 'R, 'E) _RequestHandler = [ `RequestHandler of 'P * 'R * 'E ] intf
    [@@js.custom
      { of_js = (fun _P _R _E -> Obj.magic)
      ; to_js = (fun _P _R _E -> Obj.magic)
      }]

    and ('R, 'E) _RequestHandler0 = [ `RequestHandler0 of 'R * 'E ] intf
    [@@js.custom
      { of_js = (fun _R _E -> Obj.magic); to_js = (fun _R _E -> Obj.magic) }]

    and ('P1, 'R, 'E) _RequestHandler1 =
      [ `RequestHandler1 of 'P1 * 'R * 'E ] intf
    [@@js.custom
      { of_js = (fun _P1 _R _E -> Obj.magic)
      ; to_js = (fun _P1 _R _E -> Obj.magic)
      }]

    and ('P1, 'P2, 'R, 'E) _RequestHandler2 =
      [ `RequestHandler2 of 'P1 * 'P2 * 'R * 'E ] intf
    [@@js.custom
      { of_js = (fun _P1 _P2 _R _E -> Obj.magic)
      ; to_js = (fun _P1 _P2 _R _E -> Obj.magic)
      }]

    and ('P1, 'P2, 'P3, 'R, 'E) _RequestHandler3 =
      [ `RequestHandler3 of 'P1 * 'P2 * 'P3 * 'R * 'E ] intf
    [@@js.custom
      { of_js = (fun _P1 _P2 _P3 _R _E -> Obj.magic)
      ; to_js = (fun _P1 _P2 _P3 _R _E -> Obj.magic)
      }]

    and ('P1, 'P2, 'P3, 'P4, 'R, 'E) _RequestHandler4 =
      [ `RequestHandler4 of 'P1 * 'P2 * 'P3 * 'P4 * 'R * 'E ] intf
    [@@js.custom
      { of_js = (fun _P1 _P2 _P3 _P4 _R _E -> Obj.magic)
      ; to_js = (fun _P1 _P2 _P3 _P4 _R _E -> Obj.magic)
      }]

    and ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) _RequestHandler5 =
      [ `RequestHandler5 of 'P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'R * 'E ] intf
    [@@js.custom
      { of_js = (fun _P1 _P2 _P3 _P4 _P5 _R _E -> Obj.magic)
      ; to_js = (fun _P1 _P2 _P3 _P4 _P5 _R _E -> Obj.magic)
      }]

    and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) _RequestHandler6 =
      [ `RequestHandler6 of 'P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'R * 'E ] intf
    [@@js.custom
      { of_js = (fun _P1 _P2 _P3 _P4 _P5 _P6 _R _E -> Obj.magic)
      ; to_js = (fun _P1 _P2 _P3 _P4 _P5 _P6 _R _E -> Obj.magic)
      }]

    and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) _RequestHandler7 =
      [ `RequestHandler7 of 'P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'R * 'E ]
      intf
    [@@js.custom
      { of_js = (fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _R _E -> Obj.magic)
      ; to_js = (fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _R _E -> Obj.magic)
      }]

    and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) _RequestHandler8 =
      [ `RequestHandler8 of
        'P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * 'R * 'E
      ]
      intf
    [@@js.custom
      { of_js = (fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _R _E -> Obj.magic)
      ; to_js = (fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _R _E -> Obj.magic)
      }]

    and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) _RequestHandler9 =
      [ `RequestHandler9 of
        'P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * 'P9 * 'R * 'E
      ]
      intf
    [@@js.custom
      { of_js = (fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 _R _E -> Obj.magic)
      ; to_js = (fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 _R _E -> Obj.magic)
      }]

    and _SetTraceParams = [ `SetTraceParams ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _StarNotificationHandler = [ `StarNotificationHandler ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _StarRequestHandler = [ `StarRequestHandler ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Trace =
      ([ `Off [@js 0]
       | `Messages [@js 1]
       | `Verbose [@js 2]
       ]
      [@js.enum])

    and _Trace_Off = ([ `Off [@js 0] ][@js.enum])

    and _Trace_Messages = ([ `Messages [@js 1] ][@js.enum])

    and _Trace_Verbose = ([ `Verbose [@js 2] ][@js.enum])

    and _TraceFormat =
      ([ `Text [@js "text"]
       | `JSON [@js "json"]
       ]
      [@js.enum])

    and _TraceFormat_Text = ([ `Text [@js "text"] ][@js.enum])

    and _TraceFormat_JSON = ([ `JSON [@js "json"] ][@js.enum])

    and _TraceOptions = [ `TraceOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _TraceValues =
      ([ `L_s1_messages [@js "messages"]
       | `L_s2_off [@js "off"]
       | `L_s4_verbose [@js "verbose"]
       ]
      [@js.enum])

    and _Tracer = [ `Tracer ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module AnonymousInterface0 : sig
  type t = anonymous_interface_0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cancelUndispatched
    :  t
    -> message:Message.t
    -> next:(message:Message.t -> ResponseMessage.t or_undefined)
    -> ResponseMessage.t or_undefined
    [@@js.call "cancelUndispatched"]
end

(* import { Message, RequestType, RequestType0, RequestType1, RequestType2,
   RequestType3, RequestType4, RequestType5, RequestType6, RequestType7,
   RequestType8, RequestType9, ResponseMessage, ResponseError,
   NotificationMessage, NotificationType, NotificationType0, NotificationType1,
   NotificationType2, NotificationType3, NotificationType4, NotificationType5,
   NotificationType6, NotificationType7, NotificationType8, NotificationType9,
   _EM, ParameterStructures } from './messages'; *)
(* import type { Disposable } from './disposable'; *)
(* import { Event } from './events'; *)
(* import { CancellationToken, AbstractCancellationTokenSource } from
   './cancellation'; *)
(* import { MessageReader } from './messageReader'; *)
(* import { MessageWriter } from './messageWriter'; *)
module ProgressToken : sig
  type t = _ProgressToken

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module ProgressParams : sig
  type 'T t = 'T _ProgressParams

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val get_token : 'T t -> _ProgressToken [@@js.get "token"]

  val set_token : 'T t -> _ProgressToken -> unit [@@js.set "token"]

  val get_value : 'T t -> 'T [@@js.get "value"]

  val set_value : 'T t -> 'T -> unit [@@js.set "value"]
end
[@@js.scope "ProgressParams"]

module ProgressType : sig
  type 'PR t = 'PR _ProgressType

  val t_to_js : ('PR -> Ojs.t) -> 'PR t -> Ojs.t

  val t_of_js : (Ojs.t -> 'PR) -> Ojs.t -> 'PR t

  val get___ : 'PR t -> 'PR * EM.t [@@js.get "__"]

  val get__pr : 'PR t -> 'PR [@@js.get "_pr"]

  val create : unit -> 'PR t [@@js.create]
end
[@@js.scope "ProgressType"]

module HandlerResult : sig
  type ('R, 'E) t = ('R, 'E) _HandlerResult

  val t_to_js : ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('R, 'E) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('R, 'E) t
end

module StarRequestHandler : sig
  type t = _StarRequestHandler

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> method_:string
    -> params:(untyped_object, any) or_array or_undefined
    -> token:CancellationToken.t
    -> (any, any) _HandlerResult
    [@@js.apply]
end
[@@js.scope "StarRequestHandler"]

module GenericRequestHandler : sig
  type ('R, 'E) t = ('R, 'E) _GenericRequestHandler

  val t_to_js : ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('R, 'E) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('R, 'E) t

  val apply
    :  ('R, 'E) t
    -> params:(any list[@js.variadic])
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "GenericRequestHandler"]

module RequestHandler0 : sig
  type ('R, 'E) t = ('R, 'E) _RequestHandler0

  val t_to_js : ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('R, 'E) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('R, 'E) t

  val apply : ('R, 'E) t -> token:CancellationToken.t -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler0"]

module RequestHandler : sig
  type ('P, 'R, 'E) t = ('P, 'R, 'E) _RequestHandler

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

  val apply
    :  ('P, 'R, 'E) t
    -> params:'P
    -> token:CancellationToken.t
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler"]

module RequestHandler1 : sig
  type ('P1, 'R, 'E) t = ('P1, 'R, 'E) _RequestHandler1

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

  val apply
    :  ('P1, 'R, 'E) t
    -> p1:'P1
    -> token:CancellationToken.t
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler1"]

module RequestHandler2 : sig
  type ('P1, 'P2, 'R, 'E) t = ('P1, 'P2, 'R, 'E) _RequestHandler2

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

  val apply
    :  ('P1, 'P2, 'R, 'E) t
    -> p1:'P1
    -> p2:'P2
    -> token:CancellationToken.t
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler2"]

module RequestHandler3 : sig
  type ('P1, 'P2, 'P3, 'R, 'E) t = ('P1, 'P2, 'P3, 'R, 'E) _RequestHandler3

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

  val apply
    :  ('P1, 'P2, 'P3, 'R, 'E) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> token:CancellationToken.t
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler3"]

module RequestHandler4 : sig
  type ('P1, 'P2, 'P3, 'P4, 'R, 'E) t =
    ('P1, 'P2, 'P3, 'P4, 'R, 'E) _RequestHandler4

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

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'R, 'E) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> token:CancellationToken.t
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler4"]

module RequestHandler5 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) _RequestHandler5

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

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> token:CancellationToken.t
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler5"]

module RequestHandler6 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) _RequestHandler6

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

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> token:CancellationToken.t
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler6"]

module RequestHandler7 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) _RequestHandler7

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

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> token:CancellationToken.t
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler7"]

module RequestHandler8 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) _RequestHandler8

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

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> p8:'P8
    -> token:CancellationToken.t
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler8"]

module RequestHandler9 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) _RequestHandler9

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

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> p8:'P8
    -> p9:'P9
    -> token:CancellationToken.t
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler9"]

module StarNotificationHandler : sig
  type t = _StarNotificationHandler

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> method_:string
    -> params:(untyped_object, any) or_array or_undefined
    -> unit
    [@@js.apply]
end
[@@js.scope "StarNotificationHandler"]

module GenericNotificationHandler : sig
  type t = _GenericNotificationHandler

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> params:(any list[@js.variadic]) -> unit [@@js.apply]
end
[@@js.scope "GenericNotificationHandler"]

module NotificationHandler0 : sig
  type t = _NotificationHandler0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> unit [@@js.apply]
end
[@@js.scope "NotificationHandler0"]

module NotificationHandler : sig
  type 'P t = 'P _NotificationHandler

  val t_to_js : ('P -> Ojs.t) -> 'P t -> Ojs.t

  val t_of_js : (Ojs.t -> 'P) -> Ojs.t -> 'P t

  val apply : 'P t -> params:'P -> unit [@@js.apply]
end
[@@js.scope "NotificationHandler"]

module NotificationHandler1 : sig
  type 'P1 t = 'P1 _NotificationHandler1

  val t_to_js : ('P1 -> Ojs.t) -> 'P1 t -> Ojs.t

  val t_of_js : (Ojs.t -> 'P1) -> Ojs.t -> 'P1 t

  val apply : 'P1 t -> p1:'P1 -> unit [@@js.apply]
end
[@@js.scope "NotificationHandler1"]

module NotificationHandler2 : sig
  type ('P1, 'P2) t = ('P1, 'P2) _NotificationHandler2

  val t_to_js : ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P1, 'P2) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> Ojs.t -> ('P1, 'P2) t

  val apply : ('P1, 'P2) t -> p1:'P1 -> p2:'P2 -> unit [@@js.apply]
end
[@@js.scope "NotificationHandler2"]

module NotificationHandler3 : sig
  type ('P1, 'P2, 'P3) t = ('P1, 'P2, 'P3) _NotificationHandler3

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

  val apply : ('P1, 'P2, 'P3) t -> p1:'P1 -> p2:'P2 -> p3:'P3 -> unit
    [@@js.apply]
end
[@@js.scope "NotificationHandler3"]

module NotificationHandler4 : sig
  type ('P1, 'P2, 'P3, 'P4) t = ('P1, 'P2, 'P3, 'P4) _NotificationHandler4

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

  val apply
    :  ('P1, 'P2, 'P3, 'P4) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> unit
    [@@js.apply]
end
[@@js.scope "NotificationHandler4"]

module NotificationHandler5 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5) t =
    ('P1, 'P2, 'P3, 'P4, 'P5) _NotificationHandler5

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

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'P5) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> unit
    [@@js.apply]
end
[@@js.scope "NotificationHandler5"]

module NotificationHandler6 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) _NotificationHandler6

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

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> unit
    [@@js.apply]
end
[@@js.scope "NotificationHandler6"]

module NotificationHandler7 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) _NotificationHandler7

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

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> unit
    [@@js.apply]
end
[@@js.scope "NotificationHandler7"]

module NotificationHandler8 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) _NotificationHandler8

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

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> p8:'P8
    -> unit
    [@@js.apply]
end
[@@js.scope "NotificationHandler8"]

module NotificationHandler9 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) _NotificationHandler9

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

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> p8:'P8
    -> p9:'P9
    -> unit
    [@@js.apply]
end
[@@js.scope "NotificationHandler9"]

module Logger : sig
  type t = _Logger

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val error : t -> message:string -> unit [@@js.call "error"]

  val warn : t -> message:string -> unit [@@js.call "warn"]

  val info : t -> message:string -> unit [@@js.call "info"]

  val log : t -> message:string -> unit [@@js.call "log"]
end
[@@js.scope "Logger"]

val nullLogger : _Logger [@@js.global "NullLogger"]

module Trace : sig
  type t = _Trace

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module TraceValues : sig
  type t = _TraceValues

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module Trace : sig
  val fromString : value:string -> _Trace [@@js.global "fromString"]

  val toString : value:_Trace -> _TraceValues [@@js.global "toString"]
end
[@@js.scope "Trace"]

module TraceFormat : sig
  type t = _TraceFormat

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module TraceFormat : sig
  val fromString : value:string -> _TraceFormat [@@js.global "fromString"]
end
[@@js.scope "TraceFormat"]

module TraceOptions : sig
  type t = _TraceOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_sendNotification : t -> bool [@@js.get "sendNotification"]

  val set_sendNotification : t -> bool -> unit [@@js.set "sendNotification"]

  val get_traceFormat : t -> _TraceFormat [@@js.get "traceFormat"]

  val set_traceFormat : t -> _TraceFormat -> unit [@@js.set "traceFormat"]
end
[@@js.scope "TraceOptions"]

module SetTraceParams : sig
  type t = _SetTraceParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_value : t -> _TraceValues [@@js.get "value"]

  val set_value : t -> _TraceValues -> unit [@@js.set "value"]
end
[@@js.scope "SetTraceParams"]

module SetTraceNotification : sig
  val type_ : _SetTraceParams NotificationType.t_1 [@@js.global "type"]
end
[@@js.scope "SetTraceNotification"]

module LogTraceParams : sig
  type t = _LogTraceParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_message : t -> string [@@js.get "message"]

  val set_message : t -> string -> unit [@@js.set "message"]

  val get_verbose : t -> string [@@js.get "verbose"]

  val set_verbose : t -> string -> unit [@@js.set "verbose"]
end
[@@js.scope "LogTraceParams"]

module LogTraceNotification : sig
  val type_ : _LogTraceParams NotificationType.t_1 [@@js.global "type"]
end
[@@js.scope "LogTraceNotification"]

module Tracer : sig
  type t = _Tracer

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val log : t -> dataObject:any -> unit [@@js.call "log"]

  val log' : t -> message:string -> ?data:string -> unit -> unit
    [@@js.call "log"]
end
[@@js.scope "Tracer"]

module ConnectionErrors : sig
  type t = _ConnectionErrors

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module ConnectionError : sig
  type t = _ConnectionError

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_code : t -> _ConnectionErrors [@@js.get "code"]

  val create : code:_ConnectionErrors -> message:string -> t [@@js.create]

  val cast : t -> Error.t [@@js.cast]
end
[@@js.scope "ConnectionError"]

module ConnectionStrategy : sig
  type t = _ConnectionStrategy

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module ConnectionStrategy : sig
  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "ConnectionStrategy"]

module CancellationId : sig
  type t = _CancellationId

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module CancellationReceiverStrategy : sig
  type t = _CancellationReceiverStrategy

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val createCancellationTokenSource
    :  t
    -> id:_CancellationId
    -> AbstractCancellationTokenSource.t
    [@@js.call "createCancellationTokenSource"]

  val dispose : t -> unit [@@js.call "dispose"]
end
[@@js.scope "CancellationReceiverStrategy"]

module CancellationReceiverStrategy : sig
  val message : _CancellationReceiverStrategy [@@js.global "Message"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "CancellationReceiverStrategy"]

module CancellationSenderStrategy : sig
  type t = _CancellationSenderStrategy

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val sendCancellation
    :  t
    -> conn:_MessageConnection
    -> id:_CancellationId
    -> unit
    [@@js.call "sendCancellation"]

  val cleanup : t -> id:_CancellationId -> unit [@@js.call "cleanup"]

  val dispose : t -> unit [@@js.call "dispose"]
end
[@@js.scope "CancellationSenderStrategy"]

module CancellationSenderStrategy : sig
  val message : _CancellationSenderStrategy [@@js.global "Message"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "CancellationSenderStrategy"]

module CancellationStrategy : sig
  type t = _CancellationStrategy

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_receiver : t -> _CancellationReceiverStrategy [@@js.get "receiver"]

  val set_receiver : t -> _CancellationReceiverStrategy -> unit
    [@@js.set "receiver"]

  val get_sender : t -> _CancellationSenderStrategy [@@js.get "sender"]

  val set_sender : t -> _CancellationSenderStrategy -> unit [@@js.set "sender"]
end
[@@js.scope "CancellationStrategy"]

module CancellationStrategy : sig
  val message : _CancellationStrategy [@@js.global "Message"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "CancellationStrategy"]

module ConnectionOptions : sig
  type t = _ConnectionOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_cancellationStrategy : t -> _CancellationStrategy
    [@@js.get "cancellationStrategy"]

  val set_cancellationStrategy : t -> _CancellationStrategy -> unit
    [@@js.set "cancellationStrategy"]

  val get_connectionStrategy : t -> _ConnectionStrategy
    [@@js.get "connectionStrategy"]

  val set_connectionStrategy : t -> _ConnectionStrategy -> unit
    [@@js.set "connectionStrategy"]
end
[@@js.scope "ConnectionOptions"]

module ConnectionOptions : sig
  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "ConnectionOptions"]

module MessageConnection : sig
  type t = _MessageConnection

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val sendRequest
    :  t
    -> type_:('R, 'E) RequestType0.t_2
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest'
    :  t
    -> type_:('P, 'R, 'E) RequestType.t_3
    -> params:'P
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest''
    :  t
    -> type_:('P1, 'R, 'E) RequestType1.t_3
    -> p1:'P1
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest'''
    :  t
    -> type_:('P1, 'P2, 'R, 'E) RequestType2.t_4
    -> p1:'P1
    -> p2:'P2
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'R, 'E) RequestType3.t_5
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest'''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'R, 'E) RequestType4.t_6
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) RequestType5.t_7
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest'''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) RequestType6.t_8
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) RequestType7.t_9
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest'''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) RequestType8.t_10
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> p8:'P8
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest''''''''''
    :  t
    -> type_:
         ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) RequestType9.t_11
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> p8:'P8
    -> p9:'P9
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest'''''''''''
    :  t
    -> method_:string
    -> ?r0:(ParameterStructures.t, any) union2
    -> rest:(any list[@js.variadic])
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val onRequest
    :  t
    -> type_:('R, 'E) RequestType0.t_2
    -> handler:('R, 'E) _RequestHandler0
    -> Disposable.t
    [@@js.call "onRequest"]

  val onRequest'
    :  t
    -> type_:('P, 'R, 'E) RequestType.t_3
    -> handler:('P, 'R, 'E) _RequestHandler
    -> Disposable.t
    [@@js.call "onRequest"]

  val onRequest''
    :  t
    -> type_:('P1, 'R, 'E) RequestType1.t_3
    -> handler:('P1, 'R, 'E) _RequestHandler1
    -> Disposable.t
    [@@js.call "onRequest"]

  val onRequest'''
    :  t
    -> type_:('P1, 'P2, 'R, 'E) RequestType2.t_4
    -> handler:('P1, 'P2, 'R, 'E) _RequestHandler2
    -> Disposable.t
    [@@js.call "onRequest"]

  val onRequest''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'R, 'E) RequestType3.t_5
    -> handler:('P1, 'P2, 'P3, 'R, 'E) _RequestHandler3
    -> Disposable.t
    [@@js.call "onRequest"]

  val onRequest'''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'R, 'E) RequestType4.t_6
    -> handler:('P1, 'P2, 'P3, 'P4, 'R, 'E) _RequestHandler4
    -> Disposable.t
    [@@js.call "onRequest"]

  val onRequest''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) RequestType5.t_7
    -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) _RequestHandler5
    -> Disposable.t
    [@@js.call "onRequest"]

  val onRequest'''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) RequestType6.t_8
    -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) _RequestHandler6
    -> Disposable.t
    [@@js.call "onRequest"]

  val onRequest''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) RequestType7.t_9
    -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) _RequestHandler7
    -> Disposable.t
    [@@js.call "onRequest"]

  val onRequest'''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) RequestType8.t_10
    -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) _RequestHandler8
    -> Disposable.t
    [@@js.call "onRequest"]

  val onRequest''''''''''
    :  t
    -> type_:
         ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) RequestType9.t_11
    -> handler:
         ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) _RequestHandler9
    -> Disposable.t
    [@@js.call "onRequest"]

  val onRequest'''''''''''
    :  t
    -> method_:string
    -> handler:('R, 'E) _GenericRequestHandler
    -> Disposable.t
    [@@js.call "onRequest"]

  val onRequest'''''''''''' : t -> handler:_StarRequestHandler -> Disposable.t
    [@@js.call "onRequest"]

  val sendNotification : t -> type_:NotificationType0.t -> unit
    [@@js.call "sendNotification"]

  val sendNotification'
    :  t
    -> type_:'P NotificationType.t_1
    -> ?params:'P
    -> unit
    -> unit
    [@@js.call "sendNotification"]

  val sendNotification''
    :  t
    -> type_:'P1 NotificationType1.t_1
    -> p1:'P1
    -> unit
    [@@js.call "sendNotification"]

  val sendNotification'''
    :  t
    -> type_:('P1, 'P2) NotificationType2.t_2
    -> p1:'P1
    -> p2:'P2
    -> unit
    [@@js.call "sendNotification"]

  val sendNotification''''
    :  t
    -> type_:('P1, 'P2, 'P3) NotificationType3.t_3
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> unit
    [@@js.call "sendNotification"]

  val sendNotification'''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4) NotificationType4.t_4
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> unit
    [@@js.call "sendNotification"]

  val sendNotification''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5) NotificationType5.t_5
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> unit
    [@@js.call "sendNotification"]

  val sendNotification'''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6) NotificationType6.t_6
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> unit
    [@@js.call "sendNotification"]

  val sendNotification''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) NotificationType7.t_7
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> unit
    [@@js.call "sendNotification"]

  val sendNotification'''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) NotificationType8.t_8
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> p8:'P8
    -> unit
    [@@js.call "sendNotification"]

  val sendNotification''''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) NotificationType9.t_9
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> p8:'P8
    -> p9:'P9
    -> unit
    [@@js.call "sendNotification"]

  val sendNotification'''''''''''
    :  t
    -> method_:string
    -> ?r0:(ParameterStructures.t, any) union2
    -> rest:(any list[@js.variadic])
    -> unit
    [@@js.call "sendNotification"]

  val onNotification
    :  t
    -> type_:NotificationType0.t
    -> handler:_NotificationHandler0
    -> Disposable.t
    [@@js.call "onNotification"]

  val onNotification'
    :  t
    -> type_:'P NotificationType.t_1
    -> handler:'P _NotificationHandler
    -> Disposable.t
    [@@js.call "onNotification"]

  val onNotification''
    :  t
    -> type_:'P1 NotificationType1.t_1
    -> handler:'P1 _NotificationHandler1
    -> Disposable.t
    [@@js.call "onNotification"]

  val onNotification'''
    :  t
    -> type_:('P1, 'P2) NotificationType2.t_2
    -> handler:('P1, 'P2) _NotificationHandler2
    -> Disposable.t
    [@@js.call "onNotification"]

  val onNotification''''
    :  t
    -> type_:('P1, 'P2, 'P3) NotificationType3.t_3
    -> handler:('P1, 'P2, 'P3) _NotificationHandler3
    -> Disposable.t
    [@@js.call "onNotification"]

  val onNotification'''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4) NotificationType4.t_4
    -> handler:('P1, 'P2, 'P3, 'P4) _NotificationHandler4
    -> Disposable.t
    [@@js.call "onNotification"]

  val onNotification''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5) NotificationType5.t_5
    -> handler:('P1, 'P2, 'P3, 'P4, 'P5) _NotificationHandler5
    -> Disposable.t
    [@@js.call "onNotification"]

  val onNotification'''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6) NotificationType6.t_6
    -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6) _NotificationHandler6
    -> Disposable.t
    [@@js.call "onNotification"]

  val onNotification''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) NotificationType7.t_7
    -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) _NotificationHandler7
    -> Disposable.t
    [@@js.call "onNotification"]

  val onNotification'''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) NotificationType8.t_8
    -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) _NotificationHandler8
    -> Disposable.t
    [@@js.call "onNotification"]

  val onNotification''''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) NotificationType9.t_9
    -> handler:
         ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) _NotificationHandler9
    -> Disposable.t
    [@@js.call "onNotification"]

  val onNotification'''''''''''
    :  t
    -> method_:string
    -> handler:_GenericNotificationHandler
    -> Disposable.t
    [@@js.call "onNotification"]

  val onNotification''''''''''''
    :  t
    -> handler:_StarNotificationHandler
    -> Disposable.t
    [@@js.call "onNotification"]

  val get_onUnhandledNotification : t -> NotificationMessage.t Event.t_1
    [@@js.get "onUnhandledNotification"]

  val set_onUnhandledNotification : t -> NotificationMessage.t Event.t_1 -> unit
    [@@js.set "onUnhandledNotification"]

  val onProgress
    :  t
    -> type_:'P _ProgressType
    -> token:string or_number
    -> handler:'P _NotificationHandler
    -> Disposable.t
    [@@js.call "onProgress"]

  val sendProgress
    :  t
    -> type_:'P _ProgressType
    -> token:string or_number
    -> value:'P
    -> unit
    [@@js.call "sendProgress"]

  val get_onUnhandledProgress : t -> any _ProgressParams Event.t_1
    [@@js.get "onUnhandledProgress"]

  val set_onUnhandledProgress : t -> any _ProgressParams Event.t_1 -> unit
    [@@js.set "onUnhandledProgress"]

  val trace
    :  t
    -> value:_Trace
    -> tracer:_Tracer
    -> ?sendNotification:bool
    -> unit
    -> unit
    [@@js.call "trace"]

  val trace'
    :  t
    -> value:_Trace
    -> tracer:_Tracer
    -> ?traceOptions:_TraceOptions
    -> unit
    -> unit
    [@@js.call "trace"]

  val get_onError
    :  t
    -> (Error.t * Message.t or_undefined * float or_undefined) Event.t_1
    [@@js.get "onError"]

  val set_onError
    :  t
    -> (Error.t * Message.t or_undefined * float or_undefined) Event.t_1
    -> unit
    [@@js.set "onError"]

  val get_onClose : t -> unit Event.t_1 [@@js.get "onClose"]

  val set_onClose : t -> unit Event.t_1 -> unit [@@js.set "onClose"]

  val listen : t -> unit [@@js.call "listen"]

  val end_ : t -> unit [@@js.call "end"]

  val get_onDispose : t -> unit Event.t_1 [@@js.get "onDispose"]

  val set_onDispose : t -> unit Event.t_1 -> unit [@@js.set "onDispose"]

  val dispose : t -> unit [@@js.call "dispose"]

  val inspect : t -> unit [@@js.call "inspect"]
end
[@@js.scope "MessageConnection"]

val createMessageConnection
  :  messageReader:MessageReader.t
  -> messageWriter:MessageWriter.t
  -> ?_logger:_Logger
  -> ?options:_ConnectionOptions
  -> unit
  -> _MessageConnection
  [@@js.global "createMessageConnection"]
(* export {}; *)
