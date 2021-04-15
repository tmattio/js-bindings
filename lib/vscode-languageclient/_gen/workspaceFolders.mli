[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - BaseLanguageClient
  - ClientCapabilities
  - DynamicFeature<T1>
  - InitializeParams
  - NextSignature<T1, T2>
  - RegistrationData<T1>
  - RegistrationType<T1>
  - ServerCapabilities
  - VWorkspaceFolder
  - VWorkspaceFoldersChangeEvent
  - WorkspaceFoldersRequest.MiddlewareSignature
 *)
[@@@js.stop]
module type Missing = sig
  module BaseLanguageClient : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module ClientCapabilities : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module DynamicFeature : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module InitializeParams : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module NextSignature : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
  end
  module RegistrationData : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module RegistrationType : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module ServerCapabilities : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VWorkspaceFolder : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module VWorkspaceFoldersChangeEvent : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module WorkspaceFoldersRequest : sig
    module MiddlewareSignature : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module BaseLanguageClient : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ClientCapabilities : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DynamicFeature : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module InitializeParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module NextSignature : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    end
    module RegistrationData : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module RegistrationType : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module ServerCapabilities : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VWorkspaceFolder : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module VWorkspaceFoldersChangeEvent : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WorkspaceFoldersRequest : sig
      module MiddlewareSignature : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
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
      type _WorkspaceFolderWorkspaceMiddleware = [`WorkspaceFolderWorkspaceMiddleware] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WorkspaceFoldersFeature = [`WorkspaceFoldersFeature] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import { WorkspaceFolder as VWorkspaceFolder, WorkspaceFoldersChangeEvent as VWorkspaceFoldersChangeEvent } from 'vscode'; *)
  (* import { DynamicFeature, RegistrationData, BaseLanguageClient, NextSignature } from './client'; *)
  (* import { ClientCapabilities, InitializeParams, ServerCapabilities, WorkspaceFoldersRequest, RegistrationType } from 'vscode-languageserver-protocol'; *)
  val arrayDiff: left:'T list -> right:'T list -> 'T list [@@js.global "arrayDiff"]
  module[@js.scope "WorkspaceFolderWorkspaceMiddleware"] WorkspaceFolderWorkspaceMiddleware : sig
    type t = _WorkspaceFolderWorkspaceMiddleware
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_workspaceFolders: t -> WorkspaceFoldersRequest.MiddlewareSignature.t_0 [@@js.get "workspaceFolders"]
    val set_workspaceFolders: t -> WorkspaceFoldersRequest.MiddlewareSignature.t_0 -> unit [@@js.set "workspaceFolders"]
    val get_didChangeWorkspaceFolders: t -> (VWorkspaceFoldersChangeEvent.t_0, unit) NextSignature.t_2 [@@js.get "didChangeWorkspaceFolders"]
    val set_didChangeWorkspaceFolders: t -> (VWorkspaceFoldersChangeEvent.t_0, unit) NextSignature.t_2 -> unit [@@js.set "didChangeWorkspaceFolders"]
  end
  module[@js.scope "WorkspaceFoldersFeature"] WorkspaceFoldersFeature : sig
    type t = _WorkspaceFoldersFeature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get__client: t -> (* FIXME: unknown type *)any [@@js.get "_client"]
    val set__client: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_client"]
    val get__listeners: t -> (* FIXME: unknown type *)any [@@js.get "_listeners"]
    val set__listeners: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_listeners"]
    val get__initialFolders: t -> (* FIXME: unknown type *)any [@@js.get "_initialFolders"]
    val set__initialFolders: t -> (* FIXME: unknown type *)any -> unit [@@js.set "_initialFolders"]
    val create: _client:BaseLanguageClient.t_0 -> t [@@js.create]
    val get_registrationType: t -> unit RegistrationType.t_1 [@@js.get "registrationType"]
    val fillInitializeParams: t -> params:InitializeParams.t_0 -> unit [@@js.call "fillInitializeParams"]
    val initializeWithFolders: t -> currentWorkspaceFolders:VWorkspaceFolder.t_0 list or_undefined -> unit [@@js.call "initializeWithFolders"]
    val fillClientCapabilities: t -> capabilities:ClientCapabilities.t_0 -> unit [@@js.call "fillClientCapabilities"]
    val initialize: t -> capabilities:ServerCapabilities.t_0 -> unit [@@js.call "initialize"]
    val sendInitialEvent: t -> currentWorkspaceFolders:VWorkspaceFolder.t_0 list or_undefined -> unit [@@js.call "sendInitialEvent"]
    val get_doSendEvent: t -> (* FIXME: unknown type *)any [@@js.get "doSendEvent"]
    val set_doSendEvent: t -> (* FIXME: unknown type *)any -> unit [@@js.set "doSendEvent"]
    val register: t -> data:never or_undefined RegistrationData.t_1 -> unit [@@js.call "register"]
    val unregister: t -> id:string -> unit [@@js.call "unregister"]
    val dispose: t -> unit [@@js.call "dispose"]
    val get_asProtocol: t -> (* FIXME: unknown type *)any [@@js.get "asProtocol"]
    val set_asProtocol: t -> (* FIXME: unknown type *)any -> unit [@@js.set "asProtocol"]
    val cast: t -> unit DynamicFeature.t_1 [@@js.cast]
  end
end
