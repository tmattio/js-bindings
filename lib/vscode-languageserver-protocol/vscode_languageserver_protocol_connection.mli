[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { Message, NotificationMessage, CancellationToken, RequestHandler0,
   RequestHandler, GenericRequestHandler, NotificationHandler0,
   NotificationHandler, GenericNotificationHandler, ProgressType, Trace, Tracer,
   TraceOptions, Disposable, Event, MessageReader, MessageWriter, Logger,
   ConnectionStrategy, ConnectionOptions, RequestType0, RequestType,
   NotificationType0, NotificationType } from 'vscode-jsonrpc'; *)
(* import { ProtocolRequestType, ProtocolRequestType0, ProtocolNotificationType,
   ProtocolNotificationType0 } from './messages'; *)
module ProtocolConnection : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val send_request
    :  t
    -> type_:('R, 'PR, 'E, 'RO) ProtocolRequestType0.t
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request'
    :  t
    -> type_:('R, 'E) RequestType0.t
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request''
    :  t
    -> type_:('P, 'R, 'PR, 'E, 'RO) ProtocolRequestType.t
    -> params:'P
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request'''
    :  t
    -> type_:('P, 'R, 'E) RequestType.t
    -> params:'P
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request''''
    :  t
    -> method_:string
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request'''''
    :  t
    -> method_:string
    -> param:any
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val on_request
    :  t
    -> type_:('R, 'PR, 'E, 'RO) ProtocolRequestType0.t
    -> handler:('R, 'E) RequestHandler0.t
    -> Disposable.t
    [@@js.call "onRequest"]

  val on_request'
    :  t
    -> type_:('R, 'E) RequestType0.t
    -> handler:('R, 'E) RequestHandler0.t
    -> Disposable.t
    [@@js.call "onRequest"]

  val on_request''
    :  t
    -> type_:('P, 'R, 'PR, 'E, 'RO) ProtocolRequestType.t
    -> handler:('P, 'R, 'E) RequestHandler.t
    -> Disposable.t
    [@@js.call "onRequest"]

  val on_request'''
    :  t
    -> type_:('P, 'R, 'E) RequestType.t
    -> handler:('P, 'R, 'E) RequestHandler.t
    -> Disposable.t
    [@@js.call "onRequest"]

  val on_request''''
    :  t
    -> method_:string
    -> handler:('R, 'E) GenericRequestHandler.t
    -> Disposable.t
    [@@js.call "onRequest"]

  val send_notification : t -> type_:NotificationType0.t -> unit
    [@@js.call "sendNotification"]

  val send_notification' : t -> type_:'RO ProtocolNotificationType0.t -> unit
    [@@js.call "sendNotification"]

  val send_notification''
    :  t
    -> type_:('P, 'RO) ProtocolNotificationType.t
    -> ?params:'P
    -> unit
    -> unit
    [@@js.call "sendNotification"]

  val send_notification'''
    :  t
    -> type_:'P NotificationType.t
    -> ?params:'P
    -> unit
    -> unit
    [@@js.call "sendNotification"]

  val send_notification'''' : t -> method_:string -> unit
    [@@js.call "sendNotification"]

  val send_notification''''' : t -> method_:string -> params:any -> unit
    [@@js.call "sendNotification"]

  val on_notification
    :  t
    -> type_:'RO ProtocolNotificationType0.t
    -> handler:NotificationHandler0.t
    -> Disposable.t
    [@@js.call "onNotification"]

  val on_notification'
    :  t
    -> type_:NotificationType0.t
    -> handler:NotificationHandler0.t
    -> Disposable.t
    [@@js.call "onNotification"]

  val on_notification''
    :  t
    -> type_:('P, 'RO) ProtocolNotificationType.t
    -> handler:'P NotificationHandler.t
    -> Disposable.t
    [@@js.call "onNotification"]

  val on_notification'''
    :  t
    -> type_:'P NotificationType.t
    -> handler:'P NotificationHandler.t
    -> Disposable.t
    [@@js.call "onNotification"]

  val on_notification''''
    :  t
    -> method_:string
    -> handler:GenericNotificationHandler.t
    -> Disposable.t
    [@@js.call "onNotification"]

  val on_progress
    :  t
    -> type_:'P ProgressType.t
    -> token:string or_number
    -> handler:'P NotificationHandler.t
    -> Disposable.t
    [@@js.call "onProgress"]

  val send_progress
    :  t
    -> type_:'P ProgressType.t
    -> token:string or_number
    -> value:'P
    -> unit
    [@@js.call "sendProgress"]

  val trace
    :  t
    -> value:Trace.t
    -> tracer:Tracer.t
    -> ?send_notification:bool
    -> unit
    -> unit
    [@@js.call "trace"]

  val trace'
    :  t
    -> value:Trace.t
    -> tracer:Tracer.t
    -> ?trace_options:TraceOptions.t
    -> unit
    -> unit
    [@@js.call "trace"]

  val get_on_error
    :  t
    -> (Error.t * Message.t or_undefined * int or_undefined) Event.t
    [@@js.get "onError"]

  val set_on_error
    :  t
    -> (Error.t * Message.t or_undefined * int or_undefined) Event.t
    -> unit
    [@@js.set "onError"]

  val get_on_close : t -> unit Event.t [@@js.get "onClose"]

  val set_on_close : t -> unit Event.t -> unit [@@js.set "onClose"]

  val get_on_unhandled_notification : t -> NotificationMessage.t Event.t
    [@@js.get "onUnhandledNotification"]

  val set_on_unhandled_notification : t -> NotificationMessage.t Event.t -> unit
    [@@js.set "onUnhandledNotification"]

  val get_on_dispose : t -> unit Event.t [@@js.get "onDispose"]

  val set_on_dispose : t -> unit Event.t -> unit [@@js.set "onDispose"]

  val end_ : t -> unit [@@js.call "end"]

  val dispose : t -> unit [@@js.call "dispose"]

  val listen : t -> unit [@@js.call "listen"]
end
[@@js.scope "ProtocolConnection"]

val create_protocol_connection
  :  input:MessageReader.t
  -> output:MessageWriter.t
  -> ?logger:Logger.t
  -> ?options:(ConnectionOptions.t, ConnectionStrategy.t) union2
  -> unit
  -> ProtocolConnection.t
  [@@js.global "createProtocolConnection"]
