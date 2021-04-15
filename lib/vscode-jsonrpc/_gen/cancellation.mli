[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - Disposable
  - Event<T1>
 *)
[@@@js.stop]
module type Missing = sig
  module Disposable : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Event : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
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
    module Event : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
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
      type _AbstractCancellationTokenSource = [`AbstractCancellationTokenSource] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _CancellationToken = [`CancellationToken] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _CancellationTokenSource = [`CancellationTokenSource | `AbstractCancellationTokenSource] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import { Event } from './events'; *)
  (* import { Disposable } from './disposable'; *)
  module[@js.scope "CancellationToken"] CancellationToken : sig
    type t = _CancellationToken
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_isCancellationRequested: t -> bool [@@js.get "isCancellationRequested"]
    val get_onCancellationRequested: t -> any Event.t_1 [@@js.get "onCancellationRequested"]
  end
  module[@js.scope "CancellationToken"] CancellationToken : sig
    val none: _CancellationToken [@@js.global "None"]
    val cancelled: _CancellationToken [@@js.global "Cancelled"]
    val is: value:any -> bool [@@js.global "is"]
  end
  module[@js.scope "AbstractCancellationTokenSource"] AbstractCancellationTokenSource : sig
    type t = _AbstractCancellationTokenSource
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_token: t -> _CancellationToken [@@js.get "token"]
    val set_token: t -> _CancellationToken -> unit [@@js.set "token"]
    val cancel: t -> unit [@@js.call "cancel"]
    val cast: t -> Disposable.t_0 [@@js.cast]
  end
  module[@js.scope "CancellationTokenSource"] CancellationTokenSource : sig
    type t = _CancellationTokenSource
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__token: t -> (* FIXME: unknown type *)any [@@js.get "_token"]
    val set__token: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_token"]
    val get_token: t -> _CancellationToken [@@js.get "token"]
    val cancel: t -> unit [@@js.call "cancel"]
    val dispose: t -> unit [@@js.call "dispose"]
    val cast: t -> _AbstractCancellationTokenSource [@@js.cast]
  end
end
