[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_1 = [ `anonymous_interface_1 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_2 = [ `anonymous_interface_2 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type _DidChangeWorkspaceFoldersNotification_HandlerSignature =
      _DidChangeWorkspaceFoldersParams NotificationHandler.t_1

    and _DidChangeWorkspaceFoldersNotification_MiddlewareSignature =
      [ `DidChangeWorkspaceFoldersNotification_MiddlewareSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DidChangeWorkspaceFoldersParams =
      [ `DidChangeWorkspaceFoldersParams ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WorkspaceFolder = [ `WorkspaceFolder ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WorkspaceFoldersChangeEvent = [ `WorkspaceFoldersChangeEvent ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WorkspaceFoldersClientCapabilities =
      [ `WorkspaceFoldersClientCapabilities ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WorkspaceFoldersInitializeParams =
      [ `WorkspaceFoldersInitializeParams ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WorkspaceFoldersRequest_HandlerSignature =
      (_WorkspaceFolder list or_null, unit) RequestHandler0.t_2

    and _WorkspaceFoldersRequest_MiddlewareSignature =
      [ `WorkspaceFoldersRequest_MiddlewareSignature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WorkspaceFoldersServerCapabilities =
      [ `WorkspaceFoldersServerCapabilities ] intf
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

  val get_supported : t -> bool [@@js.get "supported"]

  val set_supported : t -> bool -> unit [@@js.set "supported"]

  val get_changeNotifications : t -> bool or_string
    [@@js.get "changeNotifications"]

  val set_changeNotifications : t -> bool or_string -> unit
    [@@js.set "changeNotifications"]
end

module AnonymousInterface1 : sig
  type t = anonymous_interface_1

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_workspaceFolders : t -> bool [@@js.get "workspaceFolders"]

  val set_workspaceFolders : t -> bool -> unit [@@js.set "workspaceFolders"]
end

module AnonymousInterface2 : sig
  type t = anonymous_interface_2

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_workspaceFolders : t -> anonymous_interface_0
    [@@js.get "workspaceFolders"]

  val set_workspaceFolders : t -> anonymous_interface_0 -> unit
    [@@js.set "workspaceFolders"]
end

(* import { RequestHandler0, NotificationHandler, HandlerResult,
   CancellationToken } from 'vscode-jsonrpc'; *)
(* import { ProtocolRequestType0, ProtocolNotificationType } from './messages'; *)
module WorkspaceFoldersInitializeParams : sig
  type t = _WorkspaceFoldersInitializeParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_workspaceFolders : t -> _WorkspaceFolder list or_null
    [@@js.get "workspaceFolders"]

  val set_workspaceFolders : t -> _WorkspaceFolder list or_null -> unit
    [@@js.set "workspaceFolders"]
end
[@@js.scope "WorkspaceFoldersInitializeParams"]

module WorkspaceFoldersClientCapabilities : sig
  type t = _WorkspaceFoldersClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_workspace : t -> anonymous_interface_1 [@@js.get "workspace"]

  val set_workspace : t -> anonymous_interface_1 -> unit [@@js.set "workspace"]
end
[@@js.scope "WorkspaceFoldersClientCapabilities"]

module WorkspaceFoldersServerCapabilities : sig
  type t = _WorkspaceFoldersServerCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_workspace : t -> anonymous_interface_2 [@@js.get "workspace"]

  val set_workspace : t -> anonymous_interface_2 -> unit [@@js.set "workspace"]
end
[@@js.scope "WorkspaceFoldersServerCapabilities"]

module WorkspaceFolder : sig
  type t = _WorkspaceFolder

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> string [@@js.get "uri"]

  val set_uri : t -> string -> unit [@@js.set "uri"]

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]
end
[@@js.scope "WorkspaceFolder"]

module WorkspaceFoldersRequest : sig
  val type_
    : ( _WorkspaceFolder list or_null
      , never
      , unit
      , unit )
      ProtocolRequestType0.t_4
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = _WorkspaceFoldersRequest_HandlerSignature

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module MiddlewareSignature : sig
    type t = _WorkspaceFoldersRequest_MiddlewareSignature

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply
      :  t
      -> token:CancellationToken.t
      -> next:_WorkspaceFoldersRequest_HandlerSignature
      -> (_WorkspaceFolder list or_null, unit) HandlerResult.t_2
      [@@js.apply]
  end
  [@@js.scope "MiddlewareSignature"]
end
[@@js.scope "WorkspaceFoldersRequest"]

module DidChangeWorkspaceFoldersNotification : sig
  val type_
    : (_DidChangeWorkspaceFoldersParams, unit) ProtocolNotificationType.t_2
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = _DidChangeWorkspaceFoldersNotification_HandlerSignature

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module MiddlewareSignature : sig
    type t = _DidChangeWorkspaceFoldersNotification_MiddlewareSignature

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply
      :  t
      -> params:_DidChangeWorkspaceFoldersParams
      -> next:_DidChangeWorkspaceFoldersNotification_HandlerSignature
      -> unit
      [@@js.apply]
  end
  [@@js.scope "MiddlewareSignature"]
end
[@@js.scope "DidChangeWorkspaceFoldersNotification"]

module DidChangeWorkspaceFoldersParams : sig
  type t = _DidChangeWorkspaceFoldersParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_event : t -> _WorkspaceFoldersChangeEvent [@@js.get "event"]

  val set_event : t -> _WorkspaceFoldersChangeEvent -> unit [@@js.set "event"]
end
[@@js.scope "DidChangeWorkspaceFoldersParams"]

module WorkspaceFoldersChangeEvent : sig
  type t = _WorkspaceFoldersChangeEvent

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_added : t -> _WorkspaceFolder list [@@js.get "added"]

  val set_added : t -> _WorkspaceFolder list -> unit [@@js.set "added"]

  val get_removed : t -> _WorkspaceFolder list [@@js.get "removed"]

  val set_removed : t -> _WorkspaceFolder list -> unit [@@js.set "removed"]
end
[@@js.scope "WorkspaceFoldersChangeEvent"]
