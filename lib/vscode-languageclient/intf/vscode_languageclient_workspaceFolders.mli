[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _WorkspaceFolderWorkspaceMiddleware =
      [ `WorkspaceFolderWorkspaceMiddleware ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WorkspaceFoldersFeature = [ `WorkspaceFoldersFeature ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

(* import { WorkspaceFolder as VWorkspaceFolder, WorkspaceFoldersChangeEvent as
   VWorkspaceFoldersChangeEvent } from 'vscode'; *)
(* import { DynamicFeature, RegistrationData, BaseLanguageClient, NextSignature
   } from './client'; *)
(* import { ClientCapabilities, InitializeParams, ServerCapabilities,
   WorkspaceFoldersRequest, RegistrationType } from
   'vscode-languageserver-protocol'; *)
val arrayDiff : left:'T list -> right:'T list -> 'T list
  [@@js.global "arrayDiff"]

module WorkspaceFolderWorkspaceMiddleware : sig
  type t = _WorkspaceFolderWorkspaceMiddleware

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_workspaceFolders : t -> WorkspaceFoldersRequest.MiddlewareSignature.t
    [@@js.get "workspaceFolders"]

  val set_workspaceFolders
    :  t
    -> WorkspaceFoldersRequest.MiddlewareSignature.t
    -> unit
    [@@js.set "workspaceFolders"]

  val get_didChangeWorkspaceFolders
    :  t
    -> (VWorkspaceFoldersChangeEvent.t, unit) NextSignature.t_2
    [@@js.get "didChangeWorkspaceFolders"]

  val set_didChangeWorkspaceFolders
    :  t
    -> (VWorkspaceFoldersChangeEvent.t, unit) NextSignature.t_2
    -> unit
    [@@js.set "didChangeWorkspaceFolders"]
end
[@@js.scope "WorkspaceFolderWorkspaceMiddleware"]

module WorkspaceFoldersFeature : sig
  type t = _WorkspaceFoldersFeature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get__client : t -> (* FIXME: unknown type *) any [@@js.get "_client"]

  val set__client : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_client"]

  val get__listeners : t -> (* FIXME: unknown type *) any
    [@@js.get "_listeners"]

  val set__listeners : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_listeners"]

  val get__initialFolders : t -> (* FIXME: unknown type *) any
    [@@js.get "_initialFolders"]

  val set__initialFolders : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_initialFolders"]

  val create : _client:BaseLanguageClient.t -> t [@@js.create]

  val get_registrationType : t -> unit RegistrationType.t_1
    [@@js.get "registrationType"]

  val fillInitializeParams : t -> params:InitializeParams.t -> unit
    [@@js.call "fillInitializeParams"]

  val initializeWithFolders
    :  t
    -> currentWorkspaceFolders:VWorkspaceFolder.t list or_undefined
    -> unit
    [@@js.call "initializeWithFolders"]

  val fillClientCapabilities : t -> capabilities:ClientCapabilities.t -> unit
    [@@js.call "fillClientCapabilities"]

  val initialize : t -> capabilities:ServerCapabilities.t -> unit
    [@@js.call "initialize"]

  val sendInitialEvent
    :  t
    -> currentWorkspaceFolders:VWorkspaceFolder.t list or_undefined
    -> unit
    [@@js.call "sendInitialEvent"]

  val get_doSendEvent : t -> (* FIXME: unknown type *) any
    [@@js.get "doSendEvent"]

  val set_doSendEvent : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "doSendEvent"]

  val register : t -> data:never or_undefined RegistrationData.t_1 -> unit
    [@@js.call "register"]

  val unregister : t -> id:string -> unit [@@js.call "unregister"]

  val dispose : t -> unit [@@js.call "dispose"]

  val get_asProtocol : t -> (* FIXME: unknown type *) any
    [@@js.get "asProtocol"]

  val set_asProtocol : t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "asProtocol"]

  val cast : t -> unit DynamicFeature.t_1 [@@js.cast]
end
[@@js.scope "WorkspaceFoldersFeature"]
