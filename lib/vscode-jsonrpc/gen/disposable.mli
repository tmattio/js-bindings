[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib

module Internal : sig
  module AnonymousInterfaces : sig
    
  end
  module Types : sig
    open AnonymousInterfaces
    type _Disposable = [`Disposable] intf
    [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types
module[@js.scope "Disposable"] Disposable : sig
  type t = _Disposable
  val t_to_js: t -> Ojs.t
  val t_of_js: Ojs.t -> t
  type t_0 = t
  val t_0_to_js: t_0 -> Ojs.t
  val t_0_of_js: Ojs.t -> t_0
  val dispose: t -> unit [@@js.call "dispose"]
end
module[@js.scope "Disposable"] Disposable : sig
  val create_: func:(unit -> unit) -> _Disposable [@@js.global "create"]
end
