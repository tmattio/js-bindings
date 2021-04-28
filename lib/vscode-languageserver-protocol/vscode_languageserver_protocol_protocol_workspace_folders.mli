[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5
open Vscode_jsonrpc
open Vscode_languageserver_protocol_messages

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_supported : t -> bool [@@js.get "supported"]

  val set_supported : t -> bool -> unit [@@js.set "supported"]

  val get_change_notifications : t -> bool or_string
    [@@js.get "changeNotifications"]

  val set_change_notifications : t -> bool or_string -> unit
    [@@js.set "changeNotifications"]
end

module AnonymousInterface1 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_workspace_folders : t -> bool [@@js.get "workspaceFolders"]

  val set_workspace_folders : t -> bool -> unit [@@js.set "workspaceFolders"]
end

module AnonymousInterface2 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_workspace_folders : t -> AnonymousInterface0.t
    [@@js.get "workspaceFolders"]

  val set_workspace_folders : t -> AnonymousInterface0.t -> unit
    [@@js.set "workspaceFolders"]
end

module WorkspaceFolder : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> string [@@js.get "uri"]

  val set_uri : t -> string -> unit [@@js.set "uri"]

  val get_name : t -> string [@@js.get "name"]

  val set_name : t -> string -> unit [@@js.set "name"]
end
[@@js.scope "WorkspaceFolder"]

module WorkspaceFoldersInitializeParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_workspace_folders : t -> WorkspaceFolder.t list or_null
    [@@js.get "workspaceFolders"]

  val set_workspace_folders : t -> WorkspaceFolder.t list or_null -> unit
    [@@js.set "workspaceFolders"]
end
[@@js.scope "WorkspaceFoldersInitializeParams"]

module WorkspaceFoldersClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_workspace : t -> AnonymousInterface1.t [@@js.get "workspace"]

  val set_workspace : t -> AnonymousInterface1.t -> unit [@@js.set "workspace"]
end
[@@js.scope "WorkspaceFoldersClientCapabilities"]

module WorkspaceFoldersServerCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_workspace : t -> AnonymousInterface2.t [@@js.get "workspace"]

  val set_workspace : t -> AnonymousInterface2.t -> unit [@@js.set "workspace"]
end
[@@js.scope "WorkspaceFoldersServerCapabilities"]

module WorkspaceFoldersRequest : sig
  val type_
    : (WorkspaceFolder.t list or_null, never, unit, unit) ProtocolRequestType0.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = (WorkspaceFolder.t list or_null, unit) RequestHandler0.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module MiddlewareSignature : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply
      :  t
      -> token:CancellationToken.t
      -> next:WorkspaceFoldersRequest_HandlerSignature.t
      -> (WorkspaceFolder.t list or_null, unit) HandlerResult.t
      [@@js.apply]
  end
  [@@js.scope "MiddlewareSignature"]
end
[@@js.scope "WorkspaceFoldersRequest"]

module WorkspaceFoldersChangeEvent : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_added : t -> WorkspaceFolder.t list [@@js.get "added"]

  val set_added : t -> WorkspaceFolder.t list -> unit [@@js.set "added"]

  val get_removed : t -> WorkspaceFolder.t list [@@js.get "removed"]

  val set_removed : t -> WorkspaceFolder.t list -> unit [@@js.set "removed"]
end
[@@js.scope "WorkspaceFoldersChangeEvent"]

module DidChangeWorkspaceFoldersParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_event : t -> WorkspaceFoldersChangeEvent.t [@@js.get "event"]

  val set_event : t -> WorkspaceFoldersChangeEvent.t -> unit [@@js.set "event"]
end
[@@js.scope "DidChangeWorkspaceFoldersParams"]

module DidChangeWorkspaceFoldersNotification : sig
  val type_
    : (DidChangeWorkspaceFoldersParams.t, unit) ProtocolNotificationType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = DidChangeWorkspaceFoldersParams.t NotificationHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module MiddlewareSignature : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply
      :  t
      -> params:DidChangeWorkspaceFoldersParams.t
      -> next:HandlerSignature.t
      -> unit
      [@@js.apply]
  end
  [@@js.scope "MiddlewareSignature"]
end
[@@js.scope "DidChangeWorkspaceFoldersNotification"]
