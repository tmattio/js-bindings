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

    type _WorkDoneProgressBegin = [ `WorkDoneProgressBegin ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WorkDoneProgressCancelNotification_HandlerSignature =
      _WorkDoneProgressCancelParams NotificationHandler.t_1

    and _WorkDoneProgressCancelParams = [ `WorkDoneProgressCancelParams ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WorkDoneProgressClientCapabilities =
      [ `WorkDoneProgressClientCapabilities ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WorkDoneProgressCreateParams = [ `WorkDoneProgressCreateParams ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WorkDoneProgressCreateRequest_HandlerSignature =
      (_WorkDoneProgressCreateParams, unit, unit) RequestHandler.t_3

    and _WorkDoneProgressEnd = [ `WorkDoneProgressEnd ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WorkDoneProgressReport = [ `WorkDoneProgressReport ] intf
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

  val get_workDoneProgress : t -> bool [@@js.get "workDoneProgress"]

  val set_workDoneProgress : t -> bool -> unit [@@js.set "workDoneProgress"]
end

(* import { NotificationHandler, RequestHandler, ProgressType, ProgressToken }
   from 'vscode-jsonrpc'; *)
(* import { uinteger } from 'vscode-languageserver-types'; *)
(* import { ProtocolRequestType, ProtocolNotificationType } from './messages'; *)
module WorkDoneProgressClientCapabilities : sig
  type t = _WorkDoneProgressClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_window : t -> anonymous_interface_0 [@@js.get "window"]

  val set_window : t -> anonymous_interface_0 -> unit [@@js.set "window"]
end
[@@js.scope "WorkDoneProgressClientCapabilities"]

module WorkDoneProgressBegin : sig
  type t = _WorkDoneProgressBegin

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> ([ `L_s0_begin [@js "begin"] ][@js.enum])
    [@@js.get "kind"]

  val set_kind : t -> ([ `L_s0_begin ][@js.enum]) -> unit [@@js.set "kind"]

  val get_title : t -> string [@@js.get "title"]

  val set_title : t -> string -> unit [@@js.set "title"]

  val get_cancellable : t -> bool [@@js.get "cancellable"]

  val set_cancellable : t -> bool -> unit [@@js.set "cancellable"]

  val get_message : t -> string [@@js.get "message"]

  val set_message : t -> string -> unit [@@js.set "message"]

  val get_percentage : t -> Uinteger.t [@@js.get "percentage"]

  val set_percentage : t -> Uinteger.t -> unit [@@js.set "percentage"]
end
[@@js.scope "WorkDoneProgressBegin"]

module WorkDoneProgressReport : sig
  type t = _WorkDoneProgressReport

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> ([ `L_s2_report [@js "report"] ][@js.enum])
    [@@js.get "kind"]

  val set_kind : t -> ([ `L_s2_report ][@js.enum]) -> unit [@@js.set "kind"]

  val get_cancellable : t -> bool [@@js.get "cancellable"]

  val set_cancellable : t -> bool -> unit [@@js.set "cancellable"]

  val get_message : t -> string [@@js.get "message"]

  val set_message : t -> string -> unit [@@js.set "message"]

  val get_percentage : t -> Uinteger.t [@@js.get "percentage"]

  val set_percentage : t -> Uinteger.t -> unit [@@js.set "percentage"]
end
[@@js.scope "WorkDoneProgressReport"]

module WorkDoneProgressEnd : sig
  type t = _WorkDoneProgressEnd

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_kind : t -> ([ `L_s1_end [@js "end"] ][@js.enum]) [@@js.get "kind"]

  val set_kind : t -> ([ `L_s1_end ][@js.enum]) -> unit [@@js.set "kind"]

  val get_message : t -> string [@@js.get "message"]

  val set_message : t -> string -> unit [@@js.set "message"]
end
[@@js.scope "WorkDoneProgressEnd"]

module WorkDoneProgress : sig
  val type_
    : ([ `U_s0_begin of _WorkDoneProgressBegin [@js "begin"]
       | `U_s1_end of _WorkDoneProgressEnd [@js "end"]
       | `U_s2_report of _WorkDoneProgressReport [@js "report"]
       ]
      [@js.union on_field "kind"])
      ProgressType.t_1
    [@@js.global "type"]

  val is : value:any ProgressType.t_1 -> bool [@@js.global "is"]
end
[@@js.scope "WorkDoneProgress"]

module WorkDoneProgressCreateParams : sig
  type t = _WorkDoneProgressCreateParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_token : t -> ProgressToken.t [@@js.get "token"]

  val set_token : t -> ProgressToken.t -> unit [@@js.set "token"]
end
[@@js.scope "WorkDoneProgressCreateParams"]

module WorkDoneProgressCreateRequest : sig
  val type_
    : ( _WorkDoneProgressCreateParams
      , unit
      , never
      , unit
      , unit )
      ProtocolRequestType.t_5
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = _WorkDoneProgressCreateRequest_HandlerSignature

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "WorkDoneProgressCreateRequest"]

module WorkDoneProgressCancelParams : sig
  type t = _WorkDoneProgressCancelParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_token : t -> ProgressToken.t [@@js.get "token"]

  val set_token : t -> ProgressToken.t -> unit [@@js.set "token"]
end
[@@js.scope "WorkDoneProgressCancelParams"]

module WorkDoneProgressCancelNotification : sig
  val type_ : (_WorkDoneProgressCancelParams, unit) ProtocolNotificationType.t_2
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = _WorkDoneProgressCancelNotification_HandlerSignature

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "WorkDoneProgressCancelNotification"]
