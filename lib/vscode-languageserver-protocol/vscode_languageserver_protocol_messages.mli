[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { RequestType, RequestType0, NotificationType, NotificationType0,
   ProgressType, EM.t } from 'vscode-jsonrpc'; *)
module RegistrationType : sig
  type 'RO t

  val t_to_js : ('RO -> Ojs.t) -> 'RO t -> Ojs.t

  val t_of_js : (Ojs.t -> 'RO) -> Ojs.t -> 'RO t

  val get_____ : 'RO t -> ('RO * EM.t) or_undefined [@@js.get "____"]

  val get_method : 'RO t -> string [@@js.get "method"]

  val create : method_:string -> 'RO t [@@js.create]
end
[@@js.scope "RegistrationType"]

module ProtocolRequestType0 : sig
  type ('R, 'PR, 'E, 'RO) t

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

  val cast : ('R, 'PR, 'E, 'RO) t -> ('R, 'E) RequestType0.t [@@js.cast]

  val cast' : ('R, 'PR, 'E, 'RO) t -> 'PR ProgressType.t [@@js.cast]

  val cast'' : ('R, 'PR, 'E, 'RO) t -> 'RO RegistrationType.t [@@js.cast]
end
[@@js.scope "ProtocolRequestType0"]

module ProtocolRequestType : sig
  type ('P, 'R, 'PR, 'E, 'RO) t = ('P, 'R, 'PR, 'E, 'RO) ProtocolRequestType.t

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

  val cast : ('P, 'R, 'PR, 'E, 'RO) t -> ('P, 'R, 'E) RequestType.t [@@js.cast]

  val cast' : ('P, 'R, 'PR, 'E, 'RO) t -> 'PR ProgressType.t [@@js.cast]

  val cast'' : ('P, 'R, 'PR, 'E, 'RO) t -> 'RO RegistrationType.t [@@js.cast]
end
[@@js.scope "ProtocolRequestType"]

module ProtocolNotificationType0 : sig
  type 'RO t = 'RO ProtocolNotificationType.t

  val t_to_js : ('RO -> Ojs.t) -> 'RO t -> Ojs.t

  val t_of_js : (Ojs.t -> 'RO) -> Ojs.t -> 'RO t

  val get____ : 'RO t -> ('RO * EM.t) or_undefined [@@js.get "___"]

  val get_____ : 'RO t -> ('RO * EM.t) or_undefined [@@js.get "____"]

  val create : method_:string -> 'RO t [@@js.create]

  val cast : 'RO t -> NotificationType0.t [@@js.cast]

  val cast' : 'RO t -> 'RO RegistrationType.t [@@js.cast]
end
[@@js.scope "ProtocolNotificationType0"]

module ProtocolNotificationType : sig
  type ('P, 'RO) t

  val t_to_js : ('P -> Ojs.t) -> ('RO -> Ojs.t) -> ('P, 'RO) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'P) -> (Ojs.t -> 'RO) -> Ojs.t -> ('P, 'RO) t

  val get____ : ('P, 'RO) t -> ('RO * EM.t) or_undefined [@@js.get "___"]

  val get_____ : ('P, 'RO) t -> ('RO * EM.t) or_undefined [@@js.get "____"]

  val create : method_:string -> ('P, 'RO) t [@@js.create]

  val cast : ('P, 'RO) t -> 'P NotificationType.t [@@js.cast]

  val cast' : ('P, 'RO) t -> 'RO RegistrationType.t [@@js.cast]
end
[@@js.scope "ProtocolNotificationType"]
