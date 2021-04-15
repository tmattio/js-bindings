[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - Disposable
  - NotificationHandler<T1>
  - ProgressToken
  - ProgressType<T1>
  - ProtocolNotificationType<T1, T2>
 *)
[@@@js.stop]
module type Missing = sig
  module Disposable : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
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
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module Disposable : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
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
  end
]
module Make (M: Missing) : sig
  open M
  module Internal : sig
    module AnonymousInterfaces : sig
      
    end
    module Types : sig
      open AnonymousInterfaces
      type _ProgressContext = [`ProgressContext] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ProgressPart = [`ProgressPart] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import { Disposable } from 'vscode'; *)
  (* import { ProgressToken, ProgressType, NotificationHandler, ProtocolNotificationType } from 'vscode-languageserver-protocol'; *)
  module[@js.scope "ProgressContext"] ProgressContext : sig
    type t = _ProgressContext
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val onProgress: t -> type_:'P ProgressType.t_1 -> token:string or_number -> handler:'P NotificationHandler.t_1 -> Disposable.t_0 [@@js.call "onProgress"]
    val sendNotification: t -> type_:('P, 'RO) ProtocolNotificationType.t_2 -> ?params:'P -> unit -> unit [@@js.call "sendNotification"]
  end
  module[@js.scope "ProgressPart"] ProgressPart : sig
    type t = _ProgressPart
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__client: t -> (* FIXME: unknown type *)any [@@js.get "_client"]
    val set__client: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_client"]
    val get__token: t -> (* FIXME: unknown type *)any [@@js.get "_token"]
    val set__token: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_token"]
    val get__infinite: t -> (* FIXME: unknown type *)any [@@js.get "_infinite"]
    val set__infinite: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_infinite"]
    val get__reported: t -> (* FIXME: unknown type *)any [@@js.get "_reported"]
    val set__reported: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_reported"]
    val get__progress: t -> (* FIXME: unknown type *)any [@@js.get "_progress"]
    val set__progress: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_progress"]
    val get__cancellationToken: t -> (* FIXME: unknown type *)any [@@js.get "_cancellationToken"]
    val set__cancellationToken: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_cancellationToken"]
    val get__disposable: t -> (* FIXME: unknown type *)any [@@js.get "_disposable"]
    val set__disposable: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_disposable"]
    val get__resolve: t -> (* FIXME: unknown type *)any [@@js.get "_resolve"]
    val set__resolve: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_resolve"]
    val get__reject: t -> (* FIXME: unknown type *)any [@@js.get "_reject"]
    val set__reject: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_reject"]
    val create: _client:_ProgressContext -> _token:ProgressToken.t_0 -> ?done_:(part:t -> unit) -> unit -> t [@@js.create]
    val get_begin: t -> (* FIXME: unknown type *)any [@@js.get "begin"]
    val set_begin: t -> (* FIXME: unknown type *)any -> unit [@@js.set "begin"]
    val get_report: t -> (* FIXME: unknown type *)any [@@js.get "report"]
    val set_report: t -> (* FIXME: unknown type *)any -> unit [@@js.set "report"]
    val cancel: t -> unit [@@js.call "cancel"]
    val done_: t -> unit [@@js.call "done"]
  end
end
