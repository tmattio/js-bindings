[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - CancellationToken
  - HandlerResult<T1, T2>
  - NotificationHandler<T1>
  - ProtocolNotificationType<T1, T2>
  - ProtocolRequestType0<T1, T2, T3, T4>
  - RequestHandler0<T1, T2>
 *)
[@@@js.stop]
module type Missing = sig
  module CancellationToken : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module HandlerResult : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
  end
  module NotificationHandler : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module ProtocolNotificationType : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
  end
  module ProtocolRequestType0 : sig
    type ('T1, 'T2, 'T3, 'T4) t_4
    val t_4_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4) t_4 -> Ojs.t
    val t_4_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4) t_4
  end
  module RequestHandler0 : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
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
    module HandlerResult : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    end
    module NotificationHandler : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module ProtocolNotificationType : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    end
    module ProtocolRequestType0 : sig
      type ('T1, 'T2, 'T3, 'T4) t_4
      val t_4_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4) t_4 -> Ojs.t
      val t_4_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4) t_4
    end
    module RequestHandler0 : sig
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
      type anonymous_interface_0 = [`anonymous_interface_0] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_1 = [`anonymous_interface_1] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_2 = [`anonymous_interface_2] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
    module Types : sig
      open AnonymousInterfaces
      type _DidChangeWorkspaceFoldersNotification_HandlerSignature = _DidChangeWorkspaceFoldersParams NotificationHandler.t_1
      and _DidChangeWorkspaceFoldersNotification_MiddlewareSignature = [`DidChangeWorkspaceFoldersNotification_MiddlewareSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DidChangeWorkspaceFoldersParams = [`DidChangeWorkspaceFoldersParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WorkspaceFolder = [`WorkspaceFolder] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WorkspaceFoldersChangeEvent = [`WorkspaceFoldersChangeEvent] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WorkspaceFoldersClientCapabilities = [`WorkspaceFoldersClientCapabilities] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WorkspaceFoldersInitializeParams = [`WorkspaceFoldersInitializeParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WorkspaceFoldersRequest_HandlerSignature = (_WorkspaceFolder list or_null, unit) RequestHandler0.t_2
      and _WorkspaceFoldersRequest_MiddlewareSignature = [`WorkspaceFoldersRequest_MiddlewareSignature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WorkspaceFoldersServerCapabilities = [`WorkspaceFoldersServerCapabilities] intf
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
    val get_supported: t -> bool [@@js.get "supported"]
    val set_supported: t -> bool -> unit [@@js.set "supported"]
    val get_changeNotifications: t -> bool or_string [@@js.get "changeNotifications"]
    val set_changeNotifications: t -> bool or_string -> unit [@@js.set "changeNotifications"]
  end
  module AnonymousInterface1 : sig
    type t = anonymous_interface_1
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_workspaceFolders: t -> bool [@@js.get "workspaceFolders"]
    val set_workspaceFolders: t -> bool -> unit [@@js.set "workspaceFolders"]
  end
  module AnonymousInterface2 : sig
    type t = anonymous_interface_2
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_workspaceFolders: t -> anonymous_interface_0 [@@js.get "workspaceFolders"]
    val set_workspaceFolders: t -> anonymous_interface_0 -> unit [@@js.set "workspaceFolders"]
  end
  (* import { RequestHandler0, NotificationHandler, HandlerResult, CancellationToken } from 'vscode-jsonrpc'; *)
  (* import { ProtocolRequestType0, ProtocolNotificationType } from './messages'; *)
  module[@js.scope "WorkspaceFoldersInitializeParams"] WorkspaceFoldersInitializeParams : sig
    type t = _WorkspaceFoldersInitializeParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_workspaceFolders: t -> _WorkspaceFolder list or_null [@@js.get "workspaceFolders"]
    val set_workspaceFolders: t -> _WorkspaceFolder list or_null -> unit [@@js.set "workspaceFolders"]
  end
  module[@js.scope "WorkspaceFoldersClientCapabilities"] WorkspaceFoldersClientCapabilities : sig
    type t = _WorkspaceFoldersClientCapabilities
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_workspace: t -> anonymous_interface_1 [@@js.get "workspace"]
    val set_workspace: t -> anonymous_interface_1 -> unit [@@js.set "workspace"]
  end
  module[@js.scope "WorkspaceFoldersServerCapabilities"] WorkspaceFoldersServerCapabilities : sig
    type t = _WorkspaceFoldersServerCapabilities
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_workspace: t -> anonymous_interface_2 [@@js.get "workspace"]
    val set_workspace: t -> anonymous_interface_2 -> unit [@@js.set "workspace"]
  end
  module[@js.scope "WorkspaceFolder"] WorkspaceFolder : sig
    type t = _WorkspaceFolder
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_uri: t -> string [@@js.get "uri"]
    val set_uri: t -> string -> unit [@@js.set "uri"]
    val get_name: t -> string [@@js.get "name"]
    val set_name: t -> string -> unit [@@js.set "name"]
  end
  module[@js.scope "WorkspaceFoldersRequest"] WorkspaceFoldersRequest : sig
    val type_: (_WorkspaceFolder list or_null, never, unit, unit) ProtocolRequestType0.t_4 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _WorkspaceFoldersRequest_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "MiddlewareSignature"] MiddlewareSignature : sig
      type t = _WorkspaceFoldersRequest_MiddlewareSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val apply: t -> token:CancellationToken.t_0 -> next:_WorkspaceFoldersRequest_HandlerSignature -> (_WorkspaceFolder list or_null, unit) HandlerResult.t_2 [@@js.apply]
    end
  end
  module[@js.scope "DidChangeWorkspaceFoldersNotification"] DidChangeWorkspaceFoldersNotification : sig
    val type_: (_DidChangeWorkspaceFoldersParams, unit) ProtocolNotificationType.t_2 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _DidChangeWorkspaceFoldersNotification_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module[@js.scope "MiddlewareSignature"] MiddlewareSignature : sig
      type t = _DidChangeWorkspaceFoldersNotification_MiddlewareSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
      val apply: t -> params:_DidChangeWorkspaceFoldersParams -> next:_DidChangeWorkspaceFoldersNotification_HandlerSignature -> unit [@@js.apply]
    end
  end
  module[@js.scope "DidChangeWorkspaceFoldersParams"] DidChangeWorkspaceFoldersParams : sig
    type t = _DidChangeWorkspaceFoldersParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_event: t -> _WorkspaceFoldersChangeEvent [@@js.get "event"]
    val set_event: t -> _WorkspaceFoldersChangeEvent -> unit [@@js.set "event"]
  end
  module[@js.scope "WorkspaceFoldersChangeEvent"] WorkspaceFoldersChangeEvent : sig
    type t = _WorkspaceFoldersChangeEvent
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_added: t -> _WorkspaceFolder list [@@js.get "added"]
    val set_added: t -> _WorkspaceFolder list -> unit [@@js.set "added"]
    val get_removed: t -> _WorkspaceFolder list [@@js.get "removed"]
    val set_removed: t -> _WorkspaceFolder list -> unit [@@js.set "removed"]
  end
end
