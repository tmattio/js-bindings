[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { Disposable } from 'vscode'; *)
(* import { ProgressToken, ProgressType, NotificationHandler,
   ProtocolNotificationType } from 'vscode-languageserver-protocol'; *)
module ProgressContext : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val on_progress
    :  t
    -> type_:'P ProgressType.t
    -> token:string or_number
    -> handler:'P NotificationHandler.t
    -> Disposable.t
    [@@js.call "onProgress"]

  val send_notification
    :  t
    -> type_:('P, 'RO) ProtocolNotificationType.t
    -> ?params:'P
    -> unit
    -> unit
    [@@js.call "sendNotification"]
end
[@@js.scope "ProgressContext"]

module ProgressPart : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__client : t -> (* FIXME: unknown type *) any [@@js.get "_client"]

  val set__client : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_client"]

  val get__token : t -> (* FIXME: unknown type *) any [@@js.get "_token"]

  val set__token : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_token"]

  val get__infinite : t -> (* FIXME: unknown type *) any [@@js.get "_infinite"]

  val set__infinite : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_infinite"]

  val get__reported : t -> (* FIXME: unknown type *) any [@@js.get "_reported"]

  val set__reported : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_reported"]

  val get__progress : t -> (* FIXME: unknown type *) any [@@js.get "_progress"]

  val set__progress : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_progress"]

  val get_cancellation_token : t -> (* FIXME: unknown type *) any
    [@@js.get "_cancellationToken"]

  val set_cancellation_token : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_cancellationToken"]

  val get__disposable : t -> (* FIXME: unknown type *) any
    [@@js.get "_disposable"]

  val set__disposable : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_disposable"]

  val get__resolve : t -> (* FIXME: unknown type *) any [@@js.get "_resolve"]

  val set__resolve : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_resolve"]

  val get__reject : t -> (* FIXME: unknown type *) any [@@js.get "_reject"]

  val set__reject : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_reject"]

  val create
    :  _client:ProgressContext.t
    -> _token:ProgressToken.t
    -> ?done_:(part:t -> unit)
    -> unit
    -> t
    [@@js.create]

  val get_begin : t -> (* FIXME: unknown type *) any [@@js.get "begin"]

  val set_begin : t -> (* FIXME: unknown type *) any -> unit [@@js.set "begin"]

  val get_report : t -> (* FIXME: unknown type *) any [@@js.get "report"]

  val set_report : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "report"]

  val cancel : t -> unit [@@js.call "cancel"]

  val done_ : t -> unit [@@js.call "done"]
end
[@@js.scope "ProgressPart"]
