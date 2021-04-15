[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - NotificationType<T1>
  - NotificationType0
  - ProgressType<T1>
  - RequestType<T1, T2, T3>
  - RequestType0<T1, T2>
  - _EM
 *)
[@@@js.stop]
module type Missing = sig
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
  module _EM : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
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
    module _EM : sig
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
      type ('P, 'RO) _ProtocolNotificationType = [`ProtocolNotificationType of ('P * 'RO) | `RegistrationType of 'RO] intf
      [@@js.custom { of_js=(fun _P _RO -> Obj.magic); to_js=(fun _P _RO -> Obj.magic) }]
      and 'RO _ProtocolNotificationType0 = [`ProtocolNotificationType0 of 'RO | `RegistrationType of 'RO] intf
      [@@js.custom { of_js=(fun _RO -> Obj.magic); to_js=(fun _RO -> Obj.magic) }]
      and ('P, 'R, 'PR, 'E, 'RO) _ProtocolRequestType = [`ProtocolRequestType of ('P * 'R * 'PR * 'E * 'RO) | `RegistrationType of 'RO] intf
      [@@js.custom { of_js=(fun _P _R _PR _E _RO -> Obj.magic); to_js=(fun _P _R _PR _E _RO -> Obj.magic) }]
      and ('R, 'PR, 'E, 'RO) _ProtocolRequestType0 = [`ProtocolRequestType0 of ('R * 'PR * 'E * 'RO) | `RegistrationType of 'RO] intf
      [@@js.custom { of_js=(fun _R _PR _E _RO -> Obj.magic); to_js=(fun _R _PR _E _RO -> Obj.magic) }]
      and 'RO _RegistrationType = [`RegistrationType of 'RO] intf
      [@@js.custom { of_js=(fun _RO -> Obj.magic); to_js=(fun _RO -> Obj.magic) }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import { RequestType, RequestType0, NotificationType, NotificationType0, ProgressType, _EM } from 'vscode-jsonrpc'; *)
  module[@js.scope "RegistrationType"] RegistrationType : sig
    type 'RO t = 'RO _RegistrationType
    val t_to_js: ('RO -> Ojs.t) -> 'RO t -> Ojs.t
    val t_of_js: (Ojs.t -> 'RO) -> Ojs.t -> 'RO t
    type 'RO t_1 = 'RO t
    val t_1_to_js: ('RO -> Ojs.t) -> 'RO t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'RO) -> Ojs.t -> 'RO t_1
    val get_____: 'RO t -> ('RO * _EM.t_0) or_undefined [@@js.get "____"]
    val get_method: 'RO t -> string [@@js.get "method"]
    val create: method_:string -> 'RO t [@@js.create]
  end
  module[@js.scope "ProtocolRequestType0"] ProtocolRequestType0 : sig
    type ('R, 'PR, 'E, 'RO) t = ('R, 'PR, 'E, 'RO) _ProtocolRequestType0
    val t_to_js: ('R -> Ojs.t) -> ('PR -> Ojs.t) -> ('E -> Ojs.t) -> ('RO -> Ojs.t) -> ('R, 'PR, 'E, 'RO) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'R) -> (Ojs.t -> 'PR) -> (Ojs.t -> 'E) -> (Ojs.t -> 'RO) -> Ojs.t -> ('R, 'PR, 'E, 'RO) t
    type ('R, 'PR, 'E, 'RO) t_4 = ('R, 'PR, 'E, 'RO) t
    val t_4_to_js: ('R -> Ojs.t) -> ('PR -> Ojs.t) -> ('E -> Ojs.t) -> ('RO -> Ojs.t) -> ('R, 'PR, 'E, 'RO) t_4 -> Ojs.t
    val t_4_of_js: (Ojs.t -> 'R) -> (Ojs.t -> 'PR) -> (Ojs.t -> 'E) -> (Ojs.t -> 'RO) -> Ojs.t -> ('R, 'PR, 'E, 'RO) t_4
    val get____: ('R, 'PR, 'E, 'RO) t -> ('PR * 'RO * _EM.t_0) or_undefined [@@js.get "___"]
    val get_____: ('R, 'PR, 'E, 'RO) t -> ('RO * _EM.t_0) or_undefined [@@js.get "____"]
    val get__pr: ('R, 'PR, 'E, 'RO) t -> 'PR or_undefined [@@js.get "_pr"]
    val create: method_:string -> ('R, 'PR, 'E, 'RO) t [@@js.create]
    val cast: ('R, 'PR, 'E, 'RO) t -> ('R, 'E) RequestType0.t_2 [@@js.cast]
    val cast': ('R, 'PR, 'E, 'RO) t -> 'PR ProgressType.t_1 [@@js.cast]
    val cast'': ('R, 'PR, 'E, 'RO) t -> 'RO _RegistrationType [@@js.cast]
  end
  module[@js.scope "ProtocolRequestType"] ProtocolRequestType : sig
    type ('P, 'R, 'PR, 'E, 'RO) t = ('P, 'R, 'PR, 'E, 'RO) _ProtocolRequestType
    val t_to_js: ('P -> Ojs.t) -> ('R -> Ojs.t) -> ('PR -> Ojs.t) -> ('E -> Ojs.t) -> ('RO -> Ojs.t) -> ('P, 'R, 'PR, 'E, 'RO) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'R) -> (Ojs.t -> 'PR) -> (Ojs.t -> 'E) -> (Ojs.t -> 'RO) -> Ojs.t -> ('P, 'R, 'PR, 'E, 'RO) t
    type ('P, 'R, 'PR, 'E, 'RO) t_5 = ('P, 'R, 'PR, 'E, 'RO) t
    val t_5_to_js: ('P -> Ojs.t) -> ('R -> Ojs.t) -> ('PR -> Ojs.t) -> ('E -> Ojs.t) -> ('RO -> Ojs.t) -> ('P, 'R, 'PR, 'E, 'RO) t_5 -> Ojs.t
    val t_5_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'R) -> (Ojs.t -> 'PR) -> (Ojs.t -> 'E) -> (Ojs.t -> 'RO) -> Ojs.t -> ('P, 'R, 'PR, 'E, 'RO) t_5
    val get____: ('P, 'R, 'PR, 'E, 'RO) t -> ('PR * 'RO * _EM.t_0) or_undefined [@@js.get "___"]
    val get_____: ('P, 'R, 'PR, 'E, 'RO) t -> ('RO * _EM.t_0) or_undefined [@@js.get "____"]
    val get__pr: ('P, 'R, 'PR, 'E, 'RO) t -> 'PR or_undefined [@@js.get "_pr"]
    val create: method_:string -> ('P, 'R, 'PR, 'E, 'RO) t [@@js.create]
    val cast: ('P, 'R, 'PR, 'E, 'RO) t -> ('P, 'R, 'E) RequestType.t_3 [@@js.cast]
    val cast': ('P, 'R, 'PR, 'E, 'RO) t -> 'PR ProgressType.t_1 [@@js.cast]
    val cast'': ('P, 'R, 'PR, 'E, 'RO) t -> 'RO _RegistrationType [@@js.cast]
  end
  module[@js.scope "ProtocolNotificationType0"] ProtocolNotificationType0 : sig
    type 'RO t = 'RO _ProtocolNotificationType0
    val t_to_js: ('RO -> Ojs.t) -> 'RO t -> Ojs.t
    val t_of_js: (Ojs.t -> 'RO) -> Ojs.t -> 'RO t
    type 'RO t_1 = 'RO t
    val t_1_to_js: ('RO -> Ojs.t) -> 'RO t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'RO) -> Ojs.t -> 'RO t_1
    val get____: 'RO t -> ('RO * _EM.t_0) or_undefined [@@js.get "___"]
    val get_____: 'RO t -> ('RO * _EM.t_0) or_undefined [@@js.get "____"]
    val create: method_:string -> 'RO t [@@js.create]
    val cast: 'RO t -> NotificationType0.t_0 [@@js.cast]
    val cast': 'RO t -> 'RO _RegistrationType [@@js.cast]
  end
  module[@js.scope "ProtocolNotificationType"] ProtocolNotificationType : sig
    type ('P, 'RO) t = ('P, 'RO) _ProtocolNotificationType
    val t_to_js: ('P -> Ojs.t) -> ('RO -> Ojs.t) -> ('P, 'RO) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'RO) -> Ojs.t -> ('P, 'RO) t
    type ('P, 'RO) t_2 = ('P, 'RO) t
    val t_2_to_js: ('P -> Ojs.t) -> ('RO -> Ojs.t) -> ('P, 'RO) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'RO) -> Ojs.t -> ('P, 'RO) t_2
    val get____: ('P, 'RO) t -> ('RO * _EM.t_0) or_undefined [@@js.get "___"]
    val get_____: ('P, 'RO) t -> ('RO * _EM.t_0) or_undefined [@@js.get "____"]
    val create: method_:string -> ('P, 'RO) t [@@js.create]
    val cast: ('P, 'RO) t -> 'P NotificationType.t_1 [@@js.cast]
    val cast': ('P, 'RO) t -> 'RO _RegistrationType [@@js.cast]
  end
end
