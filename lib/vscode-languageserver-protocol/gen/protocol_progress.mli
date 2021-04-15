[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - NotificationHandler<T1>
  - ProgressToken
  - ProgressType<T1>
  - ProtocolNotificationType<T1, T2>
  - ProtocolRequestType<T1, T2, T3, T4, T5>
  - RequestHandler<T1, T2, T3>
  - uinteger
 *)
[@@@js.stop]
module type Missing = sig
  module NotificationHandler : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module ProgressToken : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ProgressType : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module ProtocolNotificationType : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
  end
  module ProtocolRequestType : sig
    type ('T1, 'T2, 'T3, 'T4, 'T5) t_5
    val t_5_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5 -> Ojs.t
    val t_5_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5
  end
  module RequestHandler : sig
    type ('T1, 'T2, 'T3) t_3
    val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
  end
  module uinteger : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module NotificationHandler : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module ProgressToken : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ProgressType : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module ProtocolNotificationType : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    end
    module ProtocolRequestType : sig
      type ('T1, 'T2, 'T3, 'T4, 'T5) t_5
      val t_5_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5 -> Ojs.t
      val t_5_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5
    end
    module RequestHandler : sig
      type ('T1, 'T2, 'T3) t_3
      val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
      val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
    end
    module uinteger : sig
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
      type anonymous_interface_0 = [`anonymous_interface_0] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
    module Types : sig
      open AnonymousInterfaces
      type _WorkDoneProgressBegin = [`WorkDoneProgressBegin] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WorkDoneProgressCancelNotification_HandlerSignature = _WorkDoneProgressCancelParams NotificationHandler.t_1
      and _WorkDoneProgressCancelParams = [`WorkDoneProgressCancelParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WorkDoneProgressClientCapabilities = [`WorkDoneProgressClientCapabilities] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WorkDoneProgressCreateParams = [`WorkDoneProgressCreateParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WorkDoneProgressCreateRequest_HandlerSignature = (_WorkDoneProgressCreateParams, unit, unit) RequestHandler.t_3
      and _WorkDoneProgressEnd = [`WorkDoneProgressEnd] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WorkDoneProgressReport = [`WorkDoneProgressReport] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  module AnonymousInterface0 : sig
    type t = anonymous_interface_0
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_workDoneProgress: t -> bool [@@js.get "workDoneProgress"]
    val set_workDoneProgress: t -> bool -> unit [@@js.set "workDoneProgress"]
  end
  (* import { NotificationHandler, RequestHandler, ProgressType, ProgressToken } from 'vscode-jsonrpc'; *)
  (* import { uinteger } from 'vscode-languageserver-types'; *)
  (* import { ProtocolRequestType, ProtocolNotificationType } from './messages'; *)
  module[@js.scope "WorkDoneProgressClientCapabilities"] WorkDoneProgressClientCapabilities : sig
    type t = _WorkDoneProgressClientCapabilities
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_window: t -> anonymous_interface_0 [@@js.get "window"]
    val set_window: t -> anonymous_interface_0 -> unit [@@js.set "window"]
  end
  module[@js.scope "WorkDoneProgressBegin"] WorkDoneProgressBegin : sig
    type t = _WorkDoneProgressBegin
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_kind: t -> ([`L_s0_begin[@js "begin"]] [@js.enum]) [@@js.get "kind"]
    val set_kind: t -> ([`L_s0_begin] [@js.enum]) -> unit [@@js.set "kind"]
    val get_title: t -> string [@@js.get "title"]
    val set_title: t -> string -> unit [@@js.set "title"]
    val get_cancellable: t -> bool [@@js.get "cancellable"]
    val set_cancellable: t -> bool -> unit [@@js.set "cancellable"]
    val get_message: t -> string [@@js.get "message"]
    val set_message: t -> string -> unit [@@js.set "message"]
    val get_percentage: t -> Uinteger.t_0 [@@js.get "percentage"]
    val set_percentage: t -> Uinteger.t_0 -> unit [@@js.set "percentage"]
  end
  module[@js.scope "WorkDoneProgressReport"] WorkDoneProgressReport : sig
    type t = _WorkDoneProgressReport
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_kind: t -> ([`L_s2_report[@js "report"]] [@js.enum]) [@@js.get "kind"]
    val set_kind: t -> ([`L_s2_report] [@js.enum]) -> unit [@@js.set "kind"]
    val get_cancellable: t -> bool [@@js.get "cancellable"]
    val set_cancellable: t -> bool -> unit [@@js.set "cancellable"]
    val get_message: t -> string [@@js.get "message"]
    val set_message: t -> string -> unit [@@js.set "message"]
    val get_percentage: t -> Uinteger.t_0 [@@js.get "percentage"]
    val set_percentage: t -> Uinteger.t_0 -> unit [@@js.set "percentage"]
  end
  module[@js.scope "WorkDoneProgressEnd"] WorkDoneProgressEnd : sig
    type t = _WorkDoneProgressEnd
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_kind: t -> ([`L_s1_end[@js "end"]] [@js.enum]) [@@js.get "kind"]
    val set_kind: t -> ([`L_s1_end] [@js.enum]) -> unit [@@js.set "kind"]
    val get_message: t -> string [@@js.get "message"]
    val set_message: t -> string -> unit [@@js.set "message"]
  end
  module[@js.scope "WorkDoneProgress"] WorkDoneProgress : sig
    val type_: ([`U_s0_begin of _WorkDoneProgressBegin [@js "begin"] | `U_s1_end of _WorkDoneProgressEnd [@js "end"] | `U_s2_report of _WorkDoneProgressReport [@js "report"]] [@js.union on_field "kind"]) ProgressType.t_1 [@@js.global "type"]
    val is: value:any ProgressType.t_1 -> bool [@@js.global "is"]
  end
  module[@js.scope "WorkDoneProgressCreateParams"] WorkDoneProgressCreateParams : sig
    type t = _WorkDoneProgressCreateParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_token: t -> ProgressToken.t_0 [@@js.get "token"]
    val set_token: t -> ProgressToken.t_0 -> unit [@@js.set "token"]
  end
  module[@js.scope "WorkDoneProgressCreateRequest"] WorkDoneProgressCreateRequest : sig
    val type_: (_WorkDoneProgressCreateParams, unit, never, unit, unit) ProtocolRequestType.t_5 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _WorkDoneProgressCreateRequest_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module[@js.scope "WorkDoneProgressCancelParams"] WorkDoneProgressCancelParams : sig
    type t = _WorkDoneProgressCancelParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_token: t -> ProgressToken.t_0 [@@js.get "token"]
    val set_token: t -> ProgressToken.t_0 -> unit [@@js.set "token"]
  end
  module[@js.scope "WorkDoneProgressCancelNotification"] WorkDoneProgressCancelNotification : sig
    val type_: (_WorkDoneProgressCancelParams, unit) ProtocolNotificationType.t_2 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _WorkDoneProgressCancelNotification_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
end
