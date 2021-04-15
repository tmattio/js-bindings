[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _ProtocolConnection = [ `ProtocolConnection ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import { Message, NotificationMessage, CancellationToken, RequestHandler0,
   RequestHandler, GenericRequestHandler, NotificationHandler0,
   NotificationHandler, GenericNotificationHandler, ProgressType, Trace, Tracer,
   TraceOptions, Disposable, Event, MessageReader, MessageWriter, Logger,
   ConnectionStrategy, ConnectionOptions, RequestType0, RequestType,
   NotificationType0, NotificationType } from 'vscode-jsonrpc'; *)
(* import { ProtocolRequestType, ProtocolRequestType0, ProtocolNotificationType,
   ProtocolNotificationType0 } from './messages'; *)
module ProtocolConnection : sig
  type t = _ProtocolConnection

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val sendRequest
    :  t
    -> type_:('R, 'PR, 'E, 'RO) ProtocolRequestType0.t_4
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest'
    :  t
    -> type_:('R, 'E) RequestType0.t_2
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest''
    :  t
    -> type_:('P, 'R, 'PR, 'E, 'RO) ProtocolRequestType.t_5
    -> params:'P
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest'''
    :  t
    -> type_:('P, 'R, 'E) RequestType.t_3
    -> params:'P
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest''''
    :  t
    -> method_:string
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest'''''
    :  t
    -> method_:string
    -> param:any
    -> ?token:CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val onRequest
    :  t
    -> type_:('R, 'PR, 'E, 'RO) ProtocolRequestType0.t_4
    -> handler:('R, 'E) RequestHandler0.t_2
    -> Disposable.t
    [@@js.call "onRequest"]

  val onRequest'
    :  t
    -> type_:('R, 'E) RequestType0.t_2
    -> handler:('R, 'E) RequestHandler0.t_2
    -> Disposable.t
    [@@js.call "onRequest"]

  val onRequest''
    :  t
    -> type_:('P, 'R, 'PR, 'E, 'RO) ProtocolRequestType.t_5
    -> handler:('P, 'R, 'E) RequestHandler.t_3
    -> Disposable.t
    [@@js.call "onRequest"]

  val onRequest'''
    :  t
    -> type_:('P, 'R, 'E) RequestType.t_3
    -> handler:('P, 'R, 'E) RequestHandler.t_3
    -> Disposable.t
    [@@js.call "onRequest"]

  val onRequest''''
    :  t
    -> method_:string
    -> handler:('R, 'E) GenericRequestHandler.t_2
    -> Disposable.t
    [@@js.call "onRequest"]

  val sendNotification : t -> type_:NotificationType0.t -> unit
    [@@js.call "sendNotification"]

  val sendNotification' : t -> type_:'RO ProtocolNotificationType0.t_1 -> unit
    [@@js.call "sendNotification"]

  val sendNotification''
    :  t
    -> type_:('P, 'RO) ProtocolNotificationType.t_2
    -> ?params:'P
    -> unit
    -> unit
    [@@js.call "sendNotification"]

  val sendNotification'''
    :  t
    -> type_:'P NotificationType.t_1
    -> ?params:'P
    -> unit
    -> unit
    [@@js.call "sendNotification"]

  val sendNotification'''' : t -> method_:string -> unit
    [@@js.call "sendNotification"]

  val sendNotification''''' : t -> method_:string -> params:any -> unit
    [@@js.call "sendNotification"]

  val onNotification
    :  t
    -> type_:'RO ProtocolNotificationType0.t_1
    -> handler:NotificationHandler0.t
    -> Disposable.t
    [@@js.call "onNotification"]

  val onNotification'
    :  t
    -> type_:NotificationType0.t
    -> handler:NotificationHandler0.t
    -> Disposable.t
    [@@js.call "onNotification"]

  val onNotification''
    :  t
    -> type_:('P, 'RO) ProtocolNotificationType.t_2
    -> handler:'P NotificationHandler.t_1
    -> Disposable.t
    [@@js.call "onNotification"]

  val onNotification'''
    :  t
    -> type_:'P NotificationType.t_1
    -> handler:'P NotificationHandler.t_1
    -> Disposable.t
    [@@js.call "onNotification"]

  val onNotification''''
    :  t
    -> method_:string
    -> handler:GenericNotificationHandler.t
    -> Disposable.t
    [@@js.call "onNotification"]

  val onProgress
    :  t
    -> type_:'P ProgressType.t_1
    -> token:string or_number
    -> handler:'P NotificationHandler.t_1
    -> Disposable.t
    [@@js.call "onProgress"]

  val sendProgress
    :  t
    -> type_:'P ProgressType.t_1
    -> token:string or_number
    -> value:'P
    -> unit
    [@@js.call "sendProgress"]

  val trace
    :  t
    -> value:Trace.t
    -> tracer:Tracer.t
    -> ?sendNotification:bool
    -> unit
    -> unit
    [@@js.call "trace"]

  val trace'
    :  t
    -> value:Trace.t
    -> tracer:Tracer.t
    -> ?traceOptions:TraceOptions.t
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

  val get_onUnhandledNotification : t -> NotificationMessage.t Event.t_1
    [@@js.get "onUnhandledNotification"]

  val set_onUnhandledNotification : t -> NotificationMessage.t Event.t_1 -> unit
    [@@js.set "onUnhandledNotification"]

  val get_onDispose : t -> unit Event.t_1 [@@js.get "onDispose"]

  val set_onDispose : t -> unit Event.t_1 -> unit [@@js.set "onDispose"]

  val end_ : t -> unit [@@js.call "end"]

  val dispose : t -> unit [@@js.call "dispose"]

  val listen : t -> unit [@@js.call "listen"]
end
[@@js.scope "ProtocolConnection"]

val createProtocolConnection
  :  input:MessageReader.t
  -> output:MessageWriter.t
  -> ?logger:Logger.t
  -> ?options:(ConnectionOptions.t, ConnectionStrategy.t) union2
  -> unit
  -> _ProtocolConnection
  [@@js.global "createProtocolConnection"]
