[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { WorkspaceFolder as VWorkspaceFolder, WorkspaceFoldersChangeEvent as
   VWorkspaceFoldersChangeEvent } from 'vscode'; *)
(* import { DynamicFeature, RegistrationData, BaseLanguageClient, NextSignature
   } from './client'; *)
(* import { ClientCapabilities, InitializeParams, ServerCapabilities,
   WorkspaceFoldersRequest, RegistrationType } from
   'vscode-languageserver-protocol'; *)
val array_diff : left:'T list -> right:'T list -> 'T list
  [@@js.global "arrayDiff"]

module WorkspaceFolderWorkspaceMiddleware : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_workspace_folders : t -> WorkspaceFoldersRequest.MiddlewareSignature.t
    [@@js.get "workspaceFolders"]

  val set_workspace_folders
    :  t
    -> WorkspaceFoldersRequest.MiddlewareSignature.t
    -> unit
    [@@js.set "workspaceFolders"]

  val get_did_change_workspace_folders
    :  t
    -> (VWorkspaceFoldersChangeEvent.t, unit) NextSignature.t
    [@@js.get "didChangeWorkspaceFolders"]

  val set_did_change_workspace_folders
    :  t
    -> (VWorkspaceFoldersChangeEvent.t, unit) NextSignature.t
    -> unit
    [@@js.set "didChangeWorkspaceFolders"]
end
[@@js.scope "WorkspaceFolderWorkspaceMiddleware"]

module WorkspaceFoldersFeature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__client : t -> (* FIXME: unknown type *) any [@@js.get "_client"]

  val set__client : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_client"]

  val get__listeners : t -> (* FIXME: unknown type *) any
    [@@js.get "_listeners"]

  val set__listeners : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_listeners"]

  val get_initial_folders : t -> (* FIXME: unknown type *) any
    [@@js.get "_initialFolders"]

  val set_initial_folders : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_initialFolders"]

  val create : _client:BaseLanguageClient.t -> t [@@js.create]

  val get_registration_type : t -> unit RegistrationType.t
    [@@js.get "registrationType"]

  val fill_initialize_params : t -> params:InitializeParams.t -> unit
    [@@js.call "fillInitializeParams"]

  val initialize_with_folders
    :  t
    -> current_workspace_folders:VWorkspaceFolder.t list or_undefined
    -> unit
    [@@js.call "initializeWithFolders"]

  val fill_client_capabilities : t -> capabilities:ClientCapabilities.t -> unit
    [@@js.call "fillClientCapabilities"]

  val initialize : t -> capabilities:ServerCapabilities.t -> unit
    [@@js.call "initialize"]

  val send_initial_event
    :  t
    -> current_workspace_folders:VWorkspaceFolder.t list or_undefined
    -> unit
    [@@js.call "sendInitialEvent"]

  val get_do_send_event : t -> (* FIXME: unknown type *) any
    [@@js.get "doSendEvent"]

  val set_do_send_event : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "doSendEvent"]

  val register : t -> data:never or_undefined RegistrationData.t -> unit
    [@@js.call "register"]

  val unregister : t -> id:string -> unit [@@js.call "unregister"]

  val dispose : t -> unit [@@js.call "dispose"]

  val get_as_protocol : t -> (* FIXME: unknown type *) any
    [@@js.get "asProtocol"]

  val set_as_protocol : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "asProtocol"]

  val cast : t -> unit DynamicFeature.t [@@js.cast]
end
[@@js.scope "WorkspaceFoldersFeature"]
