[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type ('P, 'RO) _ProtocolNotificationType =
      [ `ProtocolNotificationType of 'P * 'RO | `RegistrationType of 'RO ] intf
    [@@js.custom
      { of_js = (fun _P _RO -> Obj.magic); to_js = (fun _P _RO -> Obj.magic) }]

    and 'RO _ProtocolNotificationType0 =
      [ `ProtocolNotificationType0 of 'RO | `RegistrationType of 'RO ] intf
    [@@js.custom
      { of_js = (fun _RO -> Obj.magic); to_js = (fun _RO -> Obj.magic) }]

    and ('P, 'R, 'PR, 'E, 'RO) _ProtocolRequestType =
      [ `ProtocolRequestType of 'P * 'R * 'PR * 'E * 'RO
      | `RegistrationType of 'RO
      ]
      intf
    [@@js.custom
      { of_js = (fun _P _R _PR _E _RO -> Obj.magic)
      ; to_js = (fun _P _R _PR _E _RO -> Obj.magic)
      }]

    and ('R, 'PR, 'E, 'RO) _ProtocolRequestType0 =
      [ `ProtocolRequestType0 of 'R * 'PR * 'E * 'RO
      | `RegistrationType of 'RO
      ]
      intf
    [@@js.custom
      { of_js = (fun _R _PR _E _RO -> Obj.magic)
      ; to_js = (fun _R _PR _E _RO -> Obj.magic)
      }]

    and 'RO _RegistrationType = [ `RegistrationType of 'RO ] intf
    [@@js.custom
      { of_js = (fun _RO -> Obj.magic); to_js = (fun _RO -> Obj.magic) }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import { RequestType, RequestType0, NotificationType, NotificationType0,
   ProgressType, _EM } from 'vscode-jsonrpc'; *)
module RegistrationType : sig
  type 'RO t = 'RO _RegistrationType

  val t_to_js : ('RO -> Ojs.t) -> 'RO t -> Ojs.t

  val t_of_js : (Ojs.t -> 'RO) -> Ojs.t -> 'RO t

  val get_____ : 'RO t -> ('RO * EM.t) or_undefined [@@js.get "____"]

  val get_method : 'RO t -> string [@@js.get "method"]

  val create : method_:string -> 'RO t [@@js.create]
end
[@@js.scope "RegistrationType"]

module ProtocolRequestType0 : sig
  type ('R, 'PR, 'E, 'RO) t = ('R, 'PR, 'E, 'RO) _ProtocolRequestType0

  val t_to_js
    :  ('R -> Ojs.t)
    -> ('PR -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('RO -> Ojs.t)
    -> ('R, 'PR, 'E, 'RO) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'R)
    -> (Ojs.t -> 'PR)
    -> (Ojs.t -> 'E)
    -> (Ojs.t -> 'RO)
    -> Ojs.t
    -> ('R, 'PR, 'E, 'RO) t

  val get____ : ('R, 'PR, 'E, 'RO) t -> ('PR * 'RO * EM.t) or_undefined
    [@@js.get "___"]

  val get_____ : ('R, 'PR, 'E, 'RO) t -> ('RO * EM.t) or_undefined
    [@@js.get "____"]

  val get__pr : ('R, 'PR, 'E, 'RO) t -> 'PR or_undefined [@@js.get "_pr"]

  val create : method_:string -> ('R, 'PR, 'E, 'RO) t [@@js.create]

  val cast : ('R, 'PR, 'E, 'RO) t -> ('R, 'E) RequestType0.t_2 [@@js.cast]

  val cast' : ('R, 'PR, 'E, 'RO) t -> 'PR ProgressType.t_1 [@@js.cast]

  val cast'' : ('R, 'PR, 'E, 'RO) t -> 'RO _RegistrationType [@@js.cast]
end
[@@js.scope "ProtocolRequestType0"]

module ProtocolRequestType : sig
  type ('P, 'R, 'PR, 'E, 'RO) t = ('P, 'R, 'PR, 'E, 'RO) _ProtocolRequestType

  val t_to_js
    :  ('P -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('PR -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('RO -> Ojs.t)
    -> ('P, 'R, 'PR, 'E, 'RO) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'PR)
    -> (Ojs.t -> 'E)
    -> (Ojs.t -> 'RO)
    -> Ojs.t
    -> ('P, 'R, 'PR, 'E, 'RO) t

  val get____ : ('P, 'R, 'PR, 'E, 'RO) t -> ('PR * 'RO * EM.t) or_undefined
    [@@js.get "___"]

  val get_____ : ('P, 'R, 'PR, 'E, 'RO) t -> ('RO * EM.t) or_undefined
    [@@js.get "____"]

  val get__pr : ('P, 'R, 'PR, 'E, 'RO) t -> 'PR or_undefined [@@js.get "_pr"]

  val create : method_:string -> ('P, 'R, 'PR, 'E, 'RO) t [@@js.create]

  val cast : ('P, 'R, 'PR, 'E, 'RO) t -> ('P, 'R, 'E) RequestType.t_3
    [@@js.cast]

  val cast' : ('P, 'R, 'PR, 'E, 'RO) t -> 'PR ProgressType.t_1 [@@js.cast]

  val cast'' : ('P, 'R, 'PR, 'E, 'RO) t -> 'RO _RegistrationType [@@js.cast]
end
[@@js.scope "ProtocolRequestType"]

module ProtocolNotificationType0 : sig
  type 'RO t = 'RO _ProtocolNotificationType0

  val t_to_js : ('RO -> Ojs.t) -> 'RO t -> Ojs.t

  val t_of_js : (Ojs.t -> 'RO) -> Ojs.t -> 'RO t

  val get____ : 'RO t -> ('RO * EM.t) or_undefined [@@js.get "___"]

  val get_____ : 'RO t -> ('RO * EM.t) or_undefined [@@js.get "____"]

  val create : method_:string -> 'RO t [@@js.create]

  val cast : 'RO t -> NotificationType0.t [@@js.cast]

  val cast' : 'RO t -> 'RO _RegistrationType [@@js.cast]
end
[@@js.scope "ProtocolNotificationType0"]

module ProtocolNotificationType : sig
  type ('P, 'RO) t = ('P, 'RO) _ProtocolNotificationType

  val t_to_js : ('P -> Ojs.t) -> ('RO -> Ojs.t) -> ('P, 'RO) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'P) -> (Ojs.t -> 'RO) -> Ojs.t -> ('P, 'RO) t

  val get____ : ('P, 'RO) t -> ('RO * EM.t) or_undefined [@@js.get "___"]

  val get_____ : ('P, 'RO) t -> ('RO * EM.t) or_undefined [@@js.get "____"]

  val create : method_:string -> ('P, 'RO) t [@@js.create]

  val cast : ('P, 'RO) t -> 'P NotificationType.t_1 [@@js.cast]

  val cast' : ('P, 'RO) t -> 'RO _RegistrationType [@@js.cast]
end
[@@js.scope "ProtocolNotificationType"]
