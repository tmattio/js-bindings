[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - BaseLanguageClient
  - DynamicFeature<T1>
  - NextSignature<T1, T2>
  - Promise<T1>
  - RegistrationData<T1>
  - Thenable<T1>
  - code.Event<T1>
  - code.FileCreateEvent
  - code.FileDeleteEvent
  - code.FileRenameEvent
  - code.FileWillCreateEvent
  - code.FileWillDeleteEvent
  - code.FileWillRenameEvent
  - code.Uri
  - code.WorkspaceEdit
  - proto.ClientCapabilities
  - proto.CreateFilesParams
  - proto.DeleteFilesParams
  - proto.FileOperationRegistrationOptions
  - proto.ProtocolNotificationType<T1, T2>
  - proto.ProtocolRequestType<T1, T2, T3, T4, T5>
  - proto.RegistrationType<T1>
  - proto.RenameFilesParams
  - proto.ServerCapabilities
  - proto.WorkspaceEdit
 *)
[@@@js.stop]
module type Missing = sig
  module BaseLanguageClient : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module DynamicFeature : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module NextSignature : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
  end
  module Promise : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module RegistrationData : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module Thenable : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module code : sig
    module Event : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module FileCreateEvent : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FileDeleteEvent : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FileRenameEvent : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FileWillCreateEvent : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FileWillDeleteEvent : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FileWillRenameEvent : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Uri : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WorkspaceEdit : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module proto : sig
    module ClientCapabilities : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CreateFilesParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module DeleteFilesParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module FileOperationRegistrationOptions : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ProtocolNotificationType : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    end
    module ProtocolRequestType : sig
      type ('T1, 'T2, 'T3, 'T4, 'T5) t_5
      val t_5_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5 -> Ojs.t
      val t_5_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5
    end
    module RegistrationType : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module RenameFilesParams : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module ServerCapabilities : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module WorkspaceEdit : sig
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
    module DynamicFeature : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module NextSignature : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    end
    module Promise : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module RegistrationData : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module Thenable : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module code : sig
      module Event : sig
        type 'T1 t_1
        val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
        val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
      end
      module FileCreateEvent : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module FileDeleteEvent : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module FileRenameEvent : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module FileWillCreateEvent : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module FileWillDeleteEvent : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module FileWillRenameEvent : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module Uri : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module WorkspaceEdit : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
    end
    module proto : sig
      module ClientCapabilities : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module CreateFilesParams : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module DeleteFilesParams : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module FileOperationRegistrationOptions : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module ProtocolNotificationType : sig
        type ('T1, 'T2) t_2
        val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
        val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
      end
      module ProtocolRequestType : sig
        type ('T1, 'T2, 'T3, 'T4, 'T5) t_5
        val t_5_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5 -> Ojs.t
        val t_5_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5
      end
      module RegistrationType : sig
        type 'T1 t_1
        val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
        val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
      end
      module RenameFilesParams : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module ServerCapabilities : sig
        type t_0
        val t_0_to_js: t_0 -> Ojs.t
        val t_0_of_js: Ojs.t -> t_0
      end
      module WorkspaceEdit : sig
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
      type anonymous_interface_0 = [`anonymous_interface_0] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      type anonymous_interface_1 = [`anonymous_interface_1] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
    module Types : sig
      open AnonymousInterfaces
      type _DidCreateFilesFeature = [`DidCreateFilesFeature | `FileOperationFeature of (Code.Uri.t_0 * Code.FileCreateEvent.t_0) | `NotificationFileOperationFeature of (Code.Uri.t_0 * Code.FileCreateEvent.t_0 * Proto.CreateFilesParams.t_0)] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DidDeleteFilesFeature = [`DidDeleteFilesFeature | `FileOperationFeature of (Code.Uri.t_0 * Code.FileDeleteEvent.t_0) | `NotificationFileOperationFeature of (Code.Uri.t_0 * Code.FileDeleteEvent.t_0 * Proto.DeleteFilesParams.t_0)] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DidRenameFilesFeature = [`DidRenameFilesFeature | `FileOperationFeature of (anonymous_interface_1 * Code.FileRenameEvent.t_0) | `NotificationFileOperationFeature of (anonymous_interface_1 * Code.FileRenameEvent.t_0 * Proto.RenameFilesParams.t_0)] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'I _Event = [`Event of 'I] intf
      [@@js.custom { of_js=(fun _I -> Obj.magic); to_js=(fun _I -> Obj.magic) }]
      and ('I, 'E) _FileOperationFeature = [`FileOperationFeature of ('I * 'E)] intf
      [@@js.custom { of_js=(fun _I _E -> Obj.magic); to_js=(fun _I _E -> Obj.magic) }]
      and _FileOperationsMiddleware = [`FileOperationsMiddleware] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ('I, 'E, 'P) _NotificationFileOperationFeature = [`NotificationFileOperationFeature of ('I * 'E * 'P) | `FileOperationFeature of ('I * 'E)] intf
      [@@js.custom { of_js=(fun _I _E _P -> Obj.magic); to_js=(fun _I _E _P -> Obj.magic) }]
      and 'I _RequestEvent = [`RequestEvent of 'I] intf
      [@@js.custom { of_js=(fun _I -> Obj.magic); to_js=(fun _I -> Obj.magic) }]
      and ('I, 'E, 'P) _RequestFileOperationFeature = [`RequestFileOperationFeature of ('I * 'E * 'P) | `FileOperationFeature of ('I * 'E)] intf
      [@@js.custom { of_js=(fun _I _E _P -> Obj.magic); to_js=(fun _I _E _P -> Obj.magic) }]
      and _WillCreateFilesFeature = [`WillCreateFilesFeature | `FileOperationFeature of (Code.Uri.t_0 * Code.FileWillCreateEvent.t_0) | `RequestFileOperationFeature of (Code.Uri.t_0 * Code.FileWillCreateEvent.t_0 * Proto.CreateFilesParams.t_0)] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WillDeleteFilesFeature = [`WillDeleteFilesFeature | `FileOperationFeature of (Code.Uri.t_0 * Code.FileWillDeleteEvent.t_0) | `RequestFileOperationFeature of (Code.Uri.t_0 * Code.FileWillDeleteEvent.t_0 * Proto.DeleteFilesParams.t_0)] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WillRenameFilesFeature = [`WillRenameFilesFeature | `FileOperationFeature of (anonymous_interface_1 * Code.FileWillRenameEvent.t_0) | `RequestFileOperationFeature of (anonymous_interface_1 * Code.FileWillRenameEvent.t_0 * Proto.RenameFilesParams.t_0)] intf
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
    val get_files: t -> 'I list [@@js.get "files"]
  end
  module AnonymousInterface1 : sig
    type t = anonymous_interface_1
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_oldUri: t -> Code.Uri.t_0 [@@js.get "oldUri"]
    val set_oldUri: t -> Code.Uri.t_0 -> unit [@@js.set "oldUri"]
    val get_newUri: t -> Code.Uri.t_0 [@@js.get "newUri"]
    val set_newUri: t -> Code.Uri.t_0 -> unit [@@js.set "newUri"]
  end
  (* import * as code from 'vscode'; *)
  (* import * as proto from 'vscode-languageserver-protocol'; *)
  (* import { DynamicFeature, BaseLanguageClient, RegistrationData, NextSignature } from './client'; *)
  module[@js.scope "FileOperationsMiddleware"] FileOperationsMiddleware : sig
    type t = _FileOperationsMiddleware
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_didCreateFiles: t -> (Code.FileCreateEvent.t_0, unit) NextSignature.t_2 [@@js.get "didCreateFiles"]
    val set_didCreateFiles: t -> (Code.FileCreateEvent.t_0, unit) NextSignature.t_2 -> unit [@@js.set "didCreateFiles"]
    val get_willCreateFiles: t -> (Code.FileCreateEvent.t_0, Code.WorkspaceEdit.t_0 or_null_or_undefined Thenable.t_1) NextSignature.t_2 [@@js.get "willCreateFiles"]
    val set_willCreateFiles: t -> (Code.FileCreateEvent.t_0, Code.WorkspaceEdit.t_0 or_null_or_undefined Thenable.t_1) NextSignature.t_2 -> unit [@@js.set "willCreateFiles"]
    val get_didRenameFiles: t -> (Code.FileRenameEvent.t_0, unit) NextSignature.t_2 [@@js.get "didRenameFiles"]
    val set_didRenameFiles: t -> (Code.FileRenameEvent.t_0, unit) NextSignature.t_2 -> unit [@@js.set "didRenameFiles"]
    val get_willRenameFiles: t -> (Code.FileRenameEvent.t_0, Code.WorkspaceEdit.t_0 or_null_or_undefined Thenable.t_1) NextSignature.t_2 [@@js.get "willRenameFiles"]
    val set_willRenameFiles: t -> (Code.FileRenameEvent.t_0, Code.WorkspaceEdit.t_0 or_null_or_undefined Thenable.t_1) NextSignature.t_2 -> unit [@@js.set "willRenameFiles"]
    val get_didDeleteFiles: t -> (Code.FileDeleteEvent.t_0, unit) NextSignature.t_2 [@@js.get "didDeleteFiles"]
    val set_didDeleteFiles: t -> (Code.FileDeleteEvent.t_0, unit) NextSignature.t_2 -> unit [@@js.set "didDeleteFiles"]
    val get_willDeleteFiles: t -> (Code.FileDeleteEvent.t_0, Code.WorkspaceEdit.t_0 or_null_or_undefined Thenable.t_1) NextSignature.t_2 [@@js.get "willDeleteFiles"]
    val set_willDeleteFiles: t -> (Code.FileDeleteEvent.t_0, Code.WorkspaceEdit.t_0 or_null_or_undefined Thenable.t_1) NextSignature.t_2 -> unit [@@js.set "willDeleteFiles"]
  end
  module[@js.scope "Event"] Event : sig
    type 'I t = 'I _Event
    val t_to_js: ('I -> Ojs.t) -> 'I t -> Ojs.t
    val t_of_js: (Ojs.t -> 'I) -> Ojs.t -> 'I t
    type 'I t_1 = 'I t
    val t_1_to_js: ('I -> Ojs.t) -> 'I t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'I) -> Ojs.t -> 'I t_1
    val get_files: 'I t -> 'I list [@@js.get "files"]
  end
  module[@js.scope "FileOperationFeature"] FileOperationFeature : sig
    type ('I, 'E) t = ('I, 'E) _FileOperationFeature
    val t_to_js: ('I -> Ojs.t) -> ('E -> Ojs.t) -> ('I, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'I) -> (Ojs.t -> 'E) -> Ojs.t -> ('I, 'E) t
    type ('I, 'E) t_2 = ('I, 'E) t
    val t_2_to_js: ('I -> Ojs.t) -> ('E -> Ojs.t) -> ('I, 'E) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'I) -> (Ojs.t -> 'E) -> Ojs.t -> ('I, 'E) t_2
    val get__client: ('I, 'E) t -> BaseLanguageClient.t_0 [@@js.get "_client"]
    val set__client: ('I, 'E) t -> BaseLanguageClient.t_0 -> unit [@@js.set "_client"]
    val get__event: ('I, 'E) t -> (* FIXME: unknown type *)any [@@js.get "_event"]
    val set__event: ('I, 'E) t -> (* FIXME: unknown type *)any -> unit [@@js.set "_event"]
    val get__registrationType: ('I, 'E) t -> (* FIXME: unknown type *)any [@@js.get "_registrationType"]
    val set__registrationType: ('I, 'E) t -> (* FIXME: unknown type *)any -> unit [@@js.set "_registrationType"]
    val get__clientCapability: ('I, 'E) t -> (* FIXME: unknown type *)any [@@js.get "_clientCapability"]
    val set__clientCapability: ('I, 'E) t -> (* FIXME: unknown type *)any -> unit [@@js.set "_clientCapability"]
    val get__serverCapability: ('I, 'E) t -> (* FIXME: unknown type *)any [@@js.get "_serverCapability"]
    val set__serverCapability: ('I, 'E) t -> (* FIXME: unknown type *)any -> unit [@@js.set "_serverCapability"]
    val get__listener: ('I, 'E) t -> (* FIXME: unknown type *)any [@@js.get "_listener"]
    val set__listener: ('I, 'E) t -> (* FIXME: unknown type *)any -> unit [@@js.set "_listener"]
    val get__filters: ('I, 'E) t -> (* FIXME: unknown type *)any [@@js.get "_filters"]
    val set__filters: ('I, 'E) t -> (* FIXME: unknown type *)any -> unit [@@js.set "_filters"]
    val create: client:BaseLanguageClient.t_0 -> event:'E Code.Event.t_1 -> registrationType:Proto.FileOperationRegistrationOptions.t_0 Proto.RegistrationType.t_1 -> clientCapability:(* FIXME: unknown type '?proto.FileOperationClientCapabilities' *)any -> serverCapability:(* FIXME: unknown type '?proto.FileOperationOptions' *)any -> ('I, 'E) t [@@js.create]
    val get_registrationType: ('I, 'E) t -> Proto.FileOperationRegistrationOptions.t_0 Proto.RegistrationType.t_1 [@@js.get "registrationType"]
    val fillClientCapabilities: ('I, 'E) t -> capabilities:Proto.ClientCapabilities.t_0 -> unit [@@js.call "fillClientCapabilities"]
    val initialize: ('I, 'E) t -> capabilities:Proto.ServerCapabilities.t_0 -> unit [@@js.call "initialize"]
    val register: ('I, 'E) t -> data:Proto.FileOperationRegistrationOptions.t_0 RegistrationData.t_1 -> unit [@@js.call "register"]
    val send: ('I, 'E) t -> data:'E -> unit Promise.t_1 [@@js.call "send"]
    val unregister: ('I, 'E) t -> id:string -> unit [@@js.call "unregister"]
    val dispose: ('I, 'E) t -> unit [@@js.call "dispose"]
    val filter: ('I, 'E) t -> event:'E -> prop:(i:'I -> Code.Uri.t_0) -> 'E Promise.t_1 [@@js.call "filter"]
    val get_getFileType: unit -> (* FIXME: unknown type *)any [@@js.get "getFileType"]
    val set_getFileType: (* FIXME: unknown type *)any -> unit [@@js.set "getFileType"]
    val get_asMinimatchOptions: unit -> (* FIXME: unknown type *)any [@@js.get "asMinimatchOptions"]
    val set_asMinimatchOptions: (* FIXME: unknown type *)any -> unit [@@js.set "asMinimatchOptions"]
    val cast: ('I, 'E) t -> Proto.FileOperationRegistrationOptions.t_0 DynamicFeature.t_1 [@@js.cast]
  end
  module[@js.scope "NotificationFileOperationFeature"] NotificationFileOperationFeature : sig
    type ('I, 'E, 'P) t = ('I, 'E, 'P) _NotificationFileOperationFeature
    val t_to_js: ('I -> Ojs.t) -> ('E -> Ojs.t) -> ('P -> Ojs.t) -> ('I, 'E, 'P) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'I) -> (Ojs.t -> 'E) -> (Ojs.t -> 'P) -> Ojs.t -> ('I, 'E, 'P) t
    type ('I, 'E, 'P) t_3 = ('I, 'E, 'P) t
    val t_3_to_js: ('I -> Ojs.t) -> ('E -> Ojs.t) -> ('P -> Ojs.t) -> ('I, 'E, 'P) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'I) -> (Ojs.t -> 'E) -> (Ojs.t -> 'P) -> Ojs.t -> ('I, 'E, 'P) t_3
    val get__notificationType: ('I, 'E, 'P) t -> (* FIXME: unknown type *)any [@@js.get "_notificationType"]
    val set__notificationType: ('I, 'E, 'P) t -> (* FIXME: unknown type *)any -> unit [@@js.set "_notificationType"]
    val get__accessUri: ('I, 'E, 'P) t -> (* FIXME: unknown type *)any [@@js.get "_accessUri"]
    val set__accessUri: ('I, 'E, 'P) t -> (* FIXME: unknown type *)any -> unit [@@js.set "_accessUri"]
    val get__createParams: ('I, 'E, 'P) t -> (* FIXME: unknown type *)any [@@js.get "_createParams"]
    val set__createParams: ('I, 'E, 'P) t -> (* FIXME: unknown type *)any -> unit [@@js.set "_createParams"]
    val create: client:BaseLanguageClient.t_0 -> event:'E Code.Event.t_1 -> notificationType:('P, Proto.FileOperationRegistrationOptions.t_0) Proto.ProtocolNotificationType.t_2 -> clientCapability:(* FIXME: unknown type '?proto.FileOperationClientCapabilities' *)any -> serverCapability:(* FIXME: unknown type '?proto.FileOperationOptions' *)any -> accessUri:(i:'I -> Code.Uri.t_0) -> createParams:(e:'E -> 'P) -> ('I, 'E, 'P) t [@@js.create]
    val send: ('I, 'E, 'P) t -> originalEvent:'E -> unit Promise.t_1 [@@js.call "send"]
    val doSend: ('I, 'E, 'P) t -> event:'E -> next:(event:'E -> unit) -> unit [@@js.call "doSend"]
    val cast: ('I, 'E, 'P) t -> ('I, 'E) _FileOperationFeature [@@js.cast]
  end
  module[@js.scope "DidCreateFilesFeature"] DidCreateFilesFeature : sig
    type t = _DidCreateFilesFeature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: client:BaseLanguageClient.t_0 -> t [@@js.create]
    val doSend: t -> event:Code.FileCreateEvent.t_0 -> next:(event:Code.FileCreateEvent.t_0 -> unit) -> unit [@@js.call "doSend"]
    val cast: t -> (Code.Uri.t_0, Code.FileCreateEvent.t_0, Proto.CreateFilesParams.t_0) _NotificationFileOperationFeature [@@js.cast]
  end
  module[@js.scope "DidRenameFilesFeature"] DidRenameFilesFeature : sig
    type t = _DidRenameFilesFeature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: client:BaseLanguageClient.t_0 -> t [@@js.create]
    val doSend: t -> event:Code.FileRenameEvent.t_0 -> next:(event:Code.FileRenameEvent.t_0 -> unit) -> unit [@@js.call "doSend"]
    val cast: t -> (anonymous_interface_1, Code.FileRenameEvent.t_0, Proto.RenameFilesParams.t_0) _NotificationFileOperationFeature [@@js.cast]
  end
  module[@js.scope "DidDeleteFilesFeature"] DidDeleteFilesFeature : sig
    type t = _DidDeleteFilesFeature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: client:BaseLanguageClient.t_0 -> t [@@js.create]
    val doSend: t -> event:Code.FileCreateEvent.t_0 -> next:(event:Code.FileCreateEvent.t_0 -> unit) -> unit [@@js.call "doSend"]
    val cast: t -> (Code.Uri.t_0, Code.FileDeleteEvent.t_0, Proto.DeleteFilesParams.t_0) _NotificationFileOperationFeature [@@js.cast]
  end
  module[@js.scope "RequestEvent"] RequestEvent : sig
    type 'I t = 'I _RequestEvent
    val t_to_js: ('I -> Ojs.t) -> 'I t -> Ojs.t
    val t_of_js: (Ojs.t -> 'I) -> Ojs.t -> 'I t
    type 'I t_1 = 'I t
    val t_1_to_js: ('I -> Ojs.t) -> 'I t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'I) -> Ojs.t -> 'I t_1
    val get_files: 'I t -> 'I list [@@js.get "files"]
    val waitUntil: 'I t -> thenable:Code.WorkspaceEdit.t_0 Thenable.t_1 -> unit [@@js.call "waitUntil"]
    val waitUntil': 'I t -> thenable:any Thenable.t_1 -> unit [@@js.call "waitUntil"]
  end
  module[@js.scope "RequestFileOperationFeature"] RequestFileOperationFeature : sig
    type ('I, 'E, 'P) t = ('I, 'E, 'P) _RequestFileOperationFeature
    val t_to_js: ('I -> Ojs.t) -> ('E -> Ojs.t) -> ('P -> Ojs.t) -> ('I, 'E, 'P) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'I) -> (Ojs.t -> 'E) -> (Ojs.t -> 'P) -> Ojs.t -> ('I, 'E, 'P) t
    type ('I, 'E, 'P) t_3 = ('I, 'E, 'P) t
    val t_3_to_js: ('I -> Ojs.t) -> ('E -> Ojs.t) -> ('P -> Ojs.t) -> ('I, 'E, 'P) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'I) -> (Ojs.t -> 'E) -> (Ojs.t -> 'P) -> Ojs.t -> ('I, 'E, 'P) t_3
    val get__requestType: ('I, 'E, 'P) t -> (* FIXME: unknown type *)any [@@js.get "_requestType"]
    val set__requestType: ('I, 'E, 'P) t -> (* FIXME: unknown type *)any -> unit [@@js.set "_requestType"]
    val get__accessUri: ('I, 'E, 'P) t -> (* FIXME: unknown type *)any [@@js.get "_accessUri"]
    val set__accessUri: ('I, 'E, 'P) t -> (* FIXME: unknown type *)any -> unit [@@js.set "_accessUri"]
    val get__createParams: ('I, 'E, 'P) t -> (* FIXME: unknown type *)any [@@js.get "_createParams"]
    val set__createParams: ('I, 'E, 'P) t -> (* FIXME: unknown type *)any -> unit [@@js.set "_createParams"]
    val create: client:BaseLanguageClient.t_0 -> event:'E Code.Event.t_1 -> requestType:('P, Proto.WorkspaceEdit.t_0 or_null, never, unit, Proto.FileOperationRegistrationOptions.t_0) Proto.ProtocolRequestType.t_5 -> clientCapability:(* FIXME: unknown type '?proto.FileOperationClientCapabilities' *)any -> serverCapability:(* FIXME: unknown type '?proto.FileOperationOptions' *)any -> accessUri:(i:'I -> Code.Uri.t_0) -> createParams:(e:'I _Event -> 'P) -> ('I, 'E, 'P) t [@@js.create]
    val send: ('I, 'E, 'P) t -> originalEvent:('E, 'I _RequestEvent) intersection2 -> unit Promise.t_1 [@@js.call "send"]
    val get_waitUntil: ('I, 'E, 'P) t -> (* FIXME: unknown type *)any [@@js.get "waitUntil"]
    val set_waitUntil: ('I, 'E, 'P) t -> (* FIXME: unknown type *)any -> unit [@@js.set "waitUntil"]
    val doSend: ('I, 'E, 'P) t -> event:'E -> next:(event:'I _Event -> (Code.WorkspaceEdit.t_0 Thenable.t_1, any Thenable.t_1) union2) -> (Code.WorkspaceEdit.t_0 Thenable.t_1, any Thenable.t_1) union2 [@@js.call "doSend"]
    val cast: ('I, 'E, 'P) t -> ('I, 'E) _FileOperationFeature [@@js.cast]
  end
  module[@js.scope "WillCreateFilesFeature"] WillCreateFilesFeature : sig
    type t = _WillCreateFilesFeature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: client:BaseLanguageClient.t_0 -> t [@@js.create]
    val doSend: t -> event:Code.FileWillCreateEvent.t_0 -> next:(event:Code.FileCreateEvent.t_0 -> (Code.WorkspaceEdit.t_0 Thenable.t_1, any Thenable.t_1) union2) -> (Code.WorkspaceEdit.t_0 Thenable.t_1, any Thenable.t_1) union2 [@@js.call "doSend"]
    val cast: t -> (Code.Uri.t_0, Code.FileWillCreateEvent.t_0, Proto.CreateFilesParams.t_0) _RequestFileOperationFeature [@@js.cast]
  end
  module[@js.scope "WillRenameFilesFeature"] WillRenameFilesFeature : sig
    type t = _WillRenameFilesFeature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: client:BaseLanguageClient.t_0 -> t [@@js.create]
    val doSend: t -> event:Code.FileWillRenameEvent.t_0 -> next:(event:Code.FileRenameEvent.t_0 -> (Code.WorkspaceEdit.t_0 Thenable.t_1, any Thenable.t_1) union2) -> (Code.WorkspaceEdit.t_0 Thenable.t_1, any Thenable.t_1) union2 [@@js.call "doSend"]
    val cast: t -> (anonymous_interface_1, Code.FileWillRenameEvent.t_0, Proto.RenameFilesParams.t_0) _RequestFileOperationFeature [@@js.cast]
  end
  module[@js.scope "WillDeleteFilesFeature"] WillDeleteFilesFeature : sig
    type t = _WillDeleteFilesFeature
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val create: client:BaseLanguageClient.t_0 -> t [@@js.create]
    val doSend: t -> event:Code.FileWillDeleteEvent.t_0 -> next:(event:Code.FileDeleteEvent.t_0 -> (Code.WorkspaceEdit.t_0 Thenable.t_1, any Thenable.t_1) union2) -> (Code.WorkspaceEdit.t_0 Thenable.t_1, any Thenable.t_1) union2 [@@js.call "doSend"]
    val cast: t -> (Code.Uri.t_0, Code.FileWillDeleteEvent.t_0, Proto.DeleteFilesParams.t_0) _RequestFileOperationFeature [@@js.cast]
  end
  
end
