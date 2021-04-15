[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - CancellationToken
  - ConnectionOptions
  - ConnectionStrategy
  - Disposable
  - Error
  - Event<T1>
  - GenericNotificationHandler
  - GenericRequestHandler<T1, T2>
  - Logger
  - Message
  - MessageReader
  - MessageWriter
  - NotificationHandler<T1>
  - NotificationHandler0
  - NotificationMessage
  - NotificationType<T1>
  - NotificationType0
  - ProgressType<T1>
  - Promise<T1>
  - ProtocolNotificationType<T1, T2>
  - ProtocolNotificationType0<T1>
  - ProtocolRequestType<T1, T2, T3, T4, T5>
  - ProtocolRequestType0<T1, T2, T3, T4>
  - RequestHandler<T1, T2, T3>
  - RequestHandler0<T1, T2>
  - RequestType<T1, T2, T3>
  - RequestType0<T1, T2>
  - Trace
  - TraceOptions
  - Tracer
 *)
[@@@js.stop]
module type Missing = sig
  module CancellationToken : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ConnectionOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ConnectionStrategy : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Disposable : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Error : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Event : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module GenericNotificationHandler : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module GenericRequestHandler : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
  end
  module Logger : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Message : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module MessageReader : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module MessageWriter : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module NotificationHandler : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module NotificationHandler0 : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module NotificationMessage : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module NotificationType : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module NotificationType0 : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ProgressType : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module Promise : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module ProtocolNotificationType : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
  end
  module ProtocolNotificationType0 : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module ProtocolRequestType : sig
    type ('T1, 'T2, 'T3, 'T4, 'T5) t_5
    val t_5_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5 -> Ojs.t
    val t_5_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5
  end
  module ProtocolRequestType0 : sig
    type ('T1, 'T2, 'T3, 'T4) t_4
    val t_4_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4) t_4 -> Ojs.t
    val t_4_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4) t_4
  end
  module RequestHandler : sig
    type ('T1, 'T2, 'T3) t_3
    val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
  end
  module RequestHandler0 : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
  end
  module RequestType : sig
    type ('T1, 'T2, 'T3) t_3
    val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
  end
  module RequestType0 : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
  end
  module Trace : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module TraceOptions : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Tracer : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module CancellationToken : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ConnectionOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ConnectionStrategy : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Disposable : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Error : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Event : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module GenericNotificationHandler : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module GenericRequestHandler : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    end
    module Logger : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Message : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module MessageReader : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module MessageWriter : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module NotificationHandler : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module NotificationHandler0 : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module NotificationMessage : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module NotificationType : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module NotificationType0 : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ProgressType : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module Promise : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module ProtocolNotificationType : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    end
    module ProtocolNotificationType0 : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module ProtocolRequestType : sig
      type ('T1, 'T2, 'T3, 'T4, 'T5) t_5
      val t_5_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5 -> Ojs.t
      val t_5_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5
    end
    module ProtocolRequestType0 : sig
      type ('T1, 'T2, 'T3, 'T4) t_4
      val t_4_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4) t_4 -> Ojs.t
      val t_4_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4) t_4
    end
    module RequestHandler : sig
      type ('T1, 'T2, 'T3) t_3
      val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
      val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
    end
    module RequestHandler0 : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    end
    module RequestType : sig
      type ('T1, 'T2, 'T3) t_3
      val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
      val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
    end
    module RequestType0 : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    end
    module Trace : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module TraceOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Tracer : sig
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
      type _ProtocolConnection = [`ProtocolConnection] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import { Message, NotificationMessage, CancellationToken, RequestHandler0, RequestHandler, GenericRequestHandler, NotificationHandler0, NotificationHandler, GenericNotificationHandler, ProgressType, Trace, Tracer, TraceOptions, Disposable, Event, MessageReader, MessageWriter, Logger, ConnectionStrategy, ConnectionOptions, RequestType0, RequestType, NotificationType0, NotificationType } from 'vscode-jsonrpc'; *)
  (* import { ProtocolRequestType, ProtocolRequestType0, ProtocolNotificationType, ProtocolNotificationType0 } from './messages'; *)
  module[@js.scope "ProtocolConnection"] ProtocolConnection : sig
    type t = _ProtocolConnection
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val sendRequest: t -> type_:('R, 'PR, 'E, 'RO) ProtocolRequestType0.t_4 -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest': t -> type_:('R, 'E) RequestType0.t_2 -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest'': t -> type_:('P, 'R, 'PR, 'E, 'RO) ProtocolRequestType.t_5 -> params:'P -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest''': t -> type_:('P, 'R, 'E) RequestType.t_3 -> params:'P -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest'''': t -> method_:string -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest''''': t -> method_:string -> param:any -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val onRequest: t -> type_:('R, 'PR, 'E, 'RO) ProtocolRequestType0.t_4 -> handler:('R, 'E) RequestHandler0.t_2 -> Disposable.t_0 [@@js.call "onRequest"]
    val onRequest': t -> type_:('R, 'E) RequestType0.t_2 -> handler:('R, 'E) RequestHandler0.t_2 -> Disposable.t_0 [@@js.call "onRequest"]
    val onRequest'': t -> type_:('P, 'R, 'PR, 'E, 'RO) ProtocolRequestType.t_5 -> handler:('P, 'R, 'E) RequestHandler.t_3 -> Disposable.t_0 [@@js.call "onRequest"]
    val onRequest''': t -> type_:('P, 'R, 'E) RequestType.t_3 -> handler:('P, 'R, 'E) RequestHandler.t_3 -> Disposable.t_0 [@@js.call "onRequest"]
    val onRequest'''': t -> method_:string -> handler:('R, 'E) GenericRequestHandler.t_2 -> Disposable.t_0 [@@js.call "onRequest"]
    val sendNotification: t -> type_:NotificationType0.t_0 -> unit [@@js.call "sendNotification"]
    val sendNotification': t -> type_:'RO ProtocolNotificationType0.t_1 -> unit [@@js.call "sendNotification"]
    val sendNotification'': t -> type_:('P, 'RO) ProtocolNotificationType.t_2 -> ?params:'P -> unit -> unit [@@js.call "sendNotification"]
    val sendNotification''': t -> type_:'P NotificationType.t_1 -> ?params:'P -> unit -> unit [@@js.call "sendNotification"]
    val sendNotification'''': t -> method_:string -> unit [@@js.call "sendNotification"]
    val sendNotification''''': t -> method_:string -> params:any -> unit [@@js.call "sendNotification"]
    val onNotification: t -> type_:'RO ProtocolNotificationType0.t_1 -> handler:NotificationHandler0.t_0 -> Disposable.t_0 [@@js.call "onNotification"]
    val onNotification': t -> type_:NotificationType0.t_0 -> handler:NotificationHandler0.t_0 -> Disposable.t_0 [@@js.call "onNotification"]
    val onNotification'': t -> type_:('P, 'RO) ProtocolNotificationType.t_2 -> handler:'P NotificationHandler.t_1 -> Disposable.t_0 [@@js.call "onNotification"]
    val onNotification''': t -> type_:'P NotificationType.t_1 -> handler:'P NotificationHandler.t_1 -> Disposable.t_0 [@@js.call "onNotification"]
    val onNotification'''': t -> method_:string -> handler:GenericNotificationHandler.t_0 -> Disposable.t_0 [@@js.call "onNotification"]
    val onProgress: t -> type_:'P ProgressType.t_1 -> token:string or_number -> handler:'P NotificationHandler.t_1 -> Disposable.t_0 [@@js.call "onProgress"]
    val sendProgress: t -> type_:'P ProgressType.t_1 -> token:string or_number -> value:'P -> unit [@@js.call "sendProgress"]
    val trace: t -> value:Trace.t_0 -> tracer:Tracer.t_0 -> ?sendNotification:bool -> unit -> unit [@@js.call "trace"]
    val trace': t -> value:Trace.t_0 -> tracer:Tracer.t_0 -> ?traceOptions:TraceOptions.t_0 -> unit -> unit [@@js.call "trace"]
    val get_onError: t -> (Error.t_0 * Message.t_0 or_undefined * float or_undefined) Event.t_1 [@@js.get "onError"]
    val set_onError: t -> (Error.t_0 * Message.t_0 or_undefined * float or_undefined) Event.t_1 -> unit [@@js.set "onError"]
    val get_onClose: t -> unit Event.t_1 [@@js.get "onClose"]
    val set_onClose: t -> unit Event.t_1 -> unit [@@js.set "onClose"]
    val get_onUnhandledNotification: t -> NotificationMessage.t_0 Event.t_1 [@@js.get "onUnhandledNotification"]
    val set_onUnhandledNotification: t -> NotificationMessage.t_0 Event.t_1 -> unit [@@js.set "onUnhandledNotification"]
    val get_onDispose: t -> unit Event.t_1 [@@js.get "onDispose"]
    val set_onDispose: t -> unit Event.t_1 -> unit [@@js.set "onDispose"]
    val end_: t -> unit [@@js.call "end"]
    val dispose: t -> unit [@@js.call "dispose"]
    val listen: t -> unit [@@js.call "listen"]
  end
  val createProtocolConnection: input:MessageReader.t_0 -> output:MessageWriter.t_0 -> ?logger:Logger.t_0 -> ?options:(ConnectionOptions.t_0, ConnectionStrategy.t_0) union2 -> unit -> _ProtocolConnection [@@js.global "createProtocolConnection"]
end
