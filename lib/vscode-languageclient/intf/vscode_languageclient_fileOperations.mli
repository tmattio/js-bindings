[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_1 = [ `anonymous_interface_1 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type _DidCreateFilesFeature =
      [ `DidCreateFilesFeature
      | `FileOperationFeature of Code.Uri.t * Code.FileCreateEvent.t
      | `NotificationFileOperationFeature of
        Code.Uri.t * Code.FileCreateEvent.t * Proto.CreateFilesParams.t
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DidDeleteFilesFeature =
      [ `DidDeleteFilesFeature
      | `FileOperationFeature of Code.Uri.t * Code.FileDeleteEvent.t
      | `NotificationFileOperationFeature of
        Code.Uri.t * Code.FileDeleteEvent.t * Proto.DeleteFilesParams.t
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _DidRenameFilesFeature =
      [ `DidRenameFilesFeature
      | `FileOperationFeature of anonymous_interface_1 * Code.FileRenameEvent.t
      | `NotificationFileOperationFeature of
        anonymous_interface_1
        * Code.FileRenameEvent.t
        * Proto.RenameFilesParams.t
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and 'I _Event = [ `Event of 'I ] intf
    [@@js.custom
      { of_js = (fun _I -> Obj.magic); to_js = (fun _I -> Obj.magic) }]

    and ('I, 'E) _FileOperationFeature =
      [ `FileOperationFeature of 'I * 'E ] intf
    [@@js.custom
      { of_js = (fun _I _E -> Obj.magic); to_js = (fun _I _E -> Obj.magic) }]

    and _FileOperationsMiddleware = [ `FileOperationsMiddleware ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and ('I, 'E, 'P) _NotificationFileOperationFeature =
      [ `NotificationFileOperationFeature of 'I * 'E * 'P
      | `FileOperationFeature of 'I * 'E
      ]
      intf
    [@@js.custom
      { of_js = (fun _I _E _P -> Obj.magic)
      ; to_js = (fun _I _E _P -> Obj.magic)
      }]

    and 'I _RequestEvent = [ `RequestEvent of 'I ] intf
    [@@js.custom
      { of_js = (fun _I -> Obj.magic); to_js = (fun _I -> Obj.magic) }]

    and ('I, 'E, 'P) _RequestFileOperationFeature =
      [ `RequestFileOperationFeature of 'I * 'E * 'P
      | `FileOperationFeature of 'I * 'E
      ]
      intf
    [@@js.custom
      { of_js = (fun _I _E _P -> Obj.magic)
      ; to_js = (fun _I _E _P -> Obj.magic)
      }]

    and _WillCreateFilesFeature =
      [ `WillCreateFilesFeature
      | `FileOperationFeature of Code.Uri.t * Code.FileWillCreateEvent.t
      | `RequestFileOperationFeature of
        Code.Uri.t * Code.FileWillCreateEvent.t * Proto.CreateFilesParams.t
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WillDeleteFilesFeature =
      [ `WillDeleteFilesFeature
      | `FileOperationFeature of Code.Uri.t * Code.FileWillDeleteEvent.t
      | `RequestFileOperationFeature of
        Code.Uri.t * Code.FileWillDeleteEvent.t * Proto.DeleteFilesParams.t
      ]
      intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _WillRenameFilesFeature =
      [ `WillRenameFilesFeature
      | `FileOperationFeature of
        anonymous_interface_1 * Code.FileWillRenameEvent.t
      | `RequestFileOperationFeature of
        anonymous_interface_1
        * Code.FileWillRenameEvent.t
        * Proto.RenameFilesParams.t
      ]
      intf
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

  val get_files : t -> 'I list [@@js.get "files"]
end

module AnonymousInterface1 : sig
  type t = anonymous_interface_1

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_oldUri : t -> Code.Uri.t [@@js.get "oldUri"]

  val set_oldUri : t -> Code.Uri.t -> unit [@@js.set "oldUri"]

  val get_newUri : t -> Code.Uri.t [@@js.get "newUri"]

  val set_newUri : t -> Code.Uri.t -> unit [@@js.set "newUri"]
end

(* import * as code from 'vscode'; *)
(* import * as proto from 'vscode-languageserver-protocol'; *)
(* import { DynamicFeature, BaseLanguageClient, RegistrationData, NextSignature
   } from './client'; *)
module FileOperationsMiddleware : sig
  type t = _FileOperationsMiddleware

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_didCreateFiles : t -> (Code.FileCreateEvent.t, unit) NextSignature.t
    [@@js.get "didCreateFiles"]

  val set_didCreateFiles
    :  t
    -> (Code.FileCreateEvent.t, unit) NextSignature.t
    -> unit
    [@@js.set "didCreateFiles"]

  val get_willCreateFiles
    :  t
    -> ( Code.FileCreateEvent.t
       , Code.WorkspaceEdit.t or_null_or_undefined Promise.t )
       NextSignature.t
    [@@js.get "willCreateFiles"]

  val set_willCreateFiles
    :  t
    -> ( Code.FileCreateEvent.t
       , Code.WorkspaceEdit.t or_null_or_undefined Promise.t )
       NextSignature.t
    -> unit
    [@@js.set "willCreateFiles"]

  val get_didRenameFiles : t -> (Code.FileRenameEvent.t, unit) NextSignature.t
    [@@js.get "didRenameFiles"]

  val set_didRenameFiles
    :  t
    -> (Code.FileRenameEvent.t, unit) NextSignature.t
    -> unit
    [@@js.set "didRenameFiles"]

  val get_willRenameFiles
    :  t
    -> ( Code.FileRenameEvent.t
       , Code.WorkspaceEdit.t or_null_or_undefined Promise.t )
       NextSignature.t
    [@@js.get "willRenameFiles"]

  val set_willRenameFiles
    :  t
    -> ( Code.FileRenameEvent.t
       , Code.WorkspaceEdit.t or_null_or_undefined Promise.t )
       NextSignature.t
    -> unit
    [@@js.set "willRenameFiles"]

  val get_didDeleteFiles : t -> (Code.FileDeleteEvent.t, unit) NextSignature.t
    [@@js.get "didDeleteFiles"]

  val set_didDeleteFiles
    :  t
    -> (Code.FileDeleteEvent.t, unit) NextSignature.t
    -> unit
    [@@js.set "didDeleteFiles"]

  val get_willDeleteFiles
    :  t
    -> ( Code.FileDeleteEvent.t
       , Code.WorkspaceEdit.t or_null_or_undefined Promise.t )
       NextSignature.t
    [@@js.get "willDeleteFiles"]

  val set_willDeleteFiles
    :  t
    -> ( Code.FileDeleteEvent.t
       , Code.WorkspaceEdit.t or_null_or_undefined Promise.t )
       NextSignature.t
    -> unit
    [@@js.set "willDeleteFiles"]
end
[@@js.scope "FileOperationsMiddleware"]

module Event : sig
  type 'I t = 'I _Event

  val t_to_js : ('I -> Ojs.t) -> 'I t -> Ojs.t

  val t_of_js : (Ojs.t -> 'I) -> Ojs.t -> 'I t

  val get_files : 'I t -> 'I list [@@js.get "files"]
end
[@@js.scope "Event"]

module FileOperationFeature : sig
  type ('I, 'E) t = ('I, 'E) _FileOperationFeature

  val t_to_js : ('I -> Ojs.t) -> ('E -> Ojs.t) -> ('I, 'E) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'I) -> (Ojs.t -> 'E) -> Ojs.t -> ('I, 'E) t

  val get__client : ('I, 'E) t -> BaseLanguageClient.t [@@js.get "_client"]

  val set__client : ('I, 'E) t -> BaseLanguageClient.t -> unit
    [@@js.set "_client"]

  val get__event : ('I, 'E) t -> (* FIXME: unknown type *) any
    [@@js.get "_event"]

  val set__event : ('I, 'E) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_event"]

  val get__registrationType : ('I, 'E) t -> (* FIXME: unknown type *) any
    [@@js.get "_registrationType"]

  val set__registrationType
    :  ('I, 'E) t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "_registrationType"]

  val get__clientCapability : ('I, 'E) t -> (* FIXME: unknown type *) any
    [@@js.get "_clientCapability"]

  val set__clientCapability
    :  ('I, 'E) t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "_clientCapability"]

  val get__serverCapability : ('I, 'E) t -> (* FIXME: unknown type *) any
    [@@js.get "_serverCapability"]

  val set__serverCapability
    :  ('I, 'E) t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "_serverCapability"]

  val get__listener : ('I, 'E) t -> (* FIXME: unknown type *) any
    [@@js.get "_listener"]

  val set__listener : ('I, 'E) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_listener"]

  val get__filters : ('I, 'E) t -> (* FIXME: unknown type *) any
    [@@js.get "_filters"]

  val set__filters : ('I, 'E) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_filters"]

  val create
    :  client:BaseLanguageClient.t
    -> event:'E Code.Event.t
    -> registrationType:
         Proto.FileOperationRegistrationOptions.t Proto.RegistrationType.t
    -> clientCapability:
         (* FIXME: unknown type '?proto.FileOperationClientCapabilities' *) any
    -> serverCapability:
         (* FIXME: unknown type '?proto.FileOperationOptions' *) any
    -> ('I, 'E) t
    [@@js.create]

  val get_registrationType
    :  ('I, 'E) t
    -> Proto.FileOperationRegistrationOptions.t Proto.RegistrationType.t
    [@@js.get "registrationType"]

  val fillClientCapabilities
    :  ('I, 'E) t
    -> capabilities:Proto.ClientCapabilities.t
    -> unit
    [@@js.call "fillClientCapabilities"]

  val initialize : ('I, 'E) t -> capabilities:Proto.ServerCapabilities.t -> unit
    [@@js.call "initialize"]

  val register
    :  ('I, 'E) t
    -> data:Proto.FileOperationRegistrationOptions.t RegistrationData.t
    -> unit
    [@@js.call "register"]

  val send : ('I, 'E) t -> data:'E -> unit Promise.t [@@js.call "send"]

  val unregister : ('I, 'E) t -> id:string -> unit [@@js.call "unregister"]

  val dispose : ('I, 'E) t -> unit [@@js.call "dispose"]

  val filter
    :  ('I, 'E) t
    -> event:'E
    -> prop:(i:'I -> Code.Uri.t)
    -> 'E Promise.t
    [@@js.call "filter"]

  val get_getFileType : unit -> (* FIXME: unknown type *) any
    [@@js.get "getFileType"]

  val set_getFileType : (* FIXME: unknown type *) any -> unit
    [@@js.set "getFileType"]

  val get_asMinimatchOptions : unit -> (* FIXME: unknown type *) any
    [@@js.get "asMinimatchOptions"]

  val set_asMinimatchOptions : (* FIXME: unknown type *) any -> unit
    [@@js.set "asMinimatchOptions"]

  val cast
    :  ('I, 'E) t
    -> Proto.FileOperationRegistrationOptions.t DynamicFeature.t
    [@@js.cast]
end
[@@js.scope "FileOperationFeature"]

module NotificationFileOperationFeature : sig
  type ('I, 'E, 'P) t = ('I, 'E, 'P) _NotificationFileOperationFeature

  val t_to_js
    :  ('I -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P -> Ojs.t)
    -> ('I, 'E, 'P) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'I)
    -> (Ojs.t -> 'E)
    -> (Ojs.t -> 'P)
    -> Ojs.t
    -> ('I, 'E, 'P) t

  val get__notificationType : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any
    [@@js.get "_notificationType"]

  val set__notificationType
    :  ('I, 'E, 'P) t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "_notificationType"]

  val get__accessUri : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any
    [@@js.get "_accessUri"]

  val set__accessUri : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_accessUri"]

  val get__createParams : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any
    [@@js.get "_createParams"]

  val set__createParams
    :  ('I, 'E, 'P) t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "_createParams"]

  val create
    :  client:BaseLanguageClient.t
    -> event:'E Code.Event.t
    -> notificationType:
         ( 'P
         , Proto.FileOperationRegistrationOptions.t )
         Proto.ProtocolNotificationType.t
    -> clientCapability:
         (* FIXME: unknown type '?proto.FileOperationClientCapabilities' *) any
    -> serverCapability:
         (* FIXME: unknown type '?proto.FileOperationOptions' *) any
    -> accessUri:(i:'I -> Code.Uri.t)
    -> createParams:(e:'E -> 'P)
    -> ('I, 'E, 'P) t
    [@@js.create]

  val send : ('I, 'E, 'P) t -> originalEvent:'E -> unit Promise.t
    [@@js.call "send"]

  val doSend : ('I, 'E, 'P) t -> event:'E -> next:(event:'E -> unit) -> unit
    [@@js.call "doSend"]

  val cast : ('I, 'E, 'P) t -> ('I, 'E) _FileOperationFeature [@@js.cast]
end
[@@js.scope "NotificationFileOperationFeature"]

module DidCreateFilesFeature : sig
  type t = _DidCreateFilesFeature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : client:BaseLanguageClient.t -> t [@@js.create]

  val doSend
    :  t
    -> event:Code.FileCreateEvent.t
    -> next:(event:Code.FileCreateEvent.t -> unit)
    -> unit
    [@@js.call "doSend"]

  val cast
    :  t
    -> ( Code.Uri.t
       , Code.FileCreateEvent.t
       , Proto.CreateFilesParams.t )
       _NotificationFileOperationFeature
    [@@js.cast]
end
[@@js.scope "DidCreateFilesFeature"]

module DidRenameFilesFeature : sig
  type t = _DidRenameFilesFeature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : client:BaseLanguageClient.t -> t [@@js.create]

  val doSend
    :  t
    -> event:Code.FileRenameEvent.t
    -> next:(event:Code.FileRenameEvent.t -> unit)
    -> unit
    [@@js.call "doSend"]

  val cast
    :  t
    -> ( anonymous_interface_1
       , Code.FileRenameEvent.t
       , Proto.RenameFilesParams.t )
       _NotificationFileOperationFeature
    [@@js.cast]
end
[@@js.scope "DidRenameFilesFeature"]

module DidDeleteFilesFeature : sig
  type t = _DidDeleteFilesFeature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : client:BaseLanguageClient.t -> t [@@js.create]

  val doSend
    :  t
    -> event:Code.FileCreateEvent.t
    -> next:(event:Code.FileCreateEvent.t -> unit)
    -> unit
    [@@js.call "doSend"]

  val cast
    :  t
    -> ( Code.Uri.t
       , Code.FileDeleteEvent.t
       , Proto.DeleteFilesParams.t )
       _NotificationFileOperationFeature
    [@@js.cast]
end
[@@js.scope "DidDeleteFilesFeature"]

module RequestEvent : sig
  type 'I t = 'I _RequestEvent

  val t_to_js : ('I -> Ojs.t) -> 'I t -> Ojs.t

  val t_of_js : (Ojs.t -> 'I) -> Ojs.t -> 'I t

  val get_files : 'I t -> 'I list [@@js.get "files"]

  val waitUntil : 'I t -> thenable:Code.WorkspaceEdit.t Promise.t -> unit
    [@@js.call "waitUntil"]

  val waitUntil' : 'I t -> thenable:any Promise.t -> unit
    [@@js.call "waitUntil"]
end
[@@js.scope "RequestEvent"]

module RequestFileOperationFeature : sig
  type ('I, 'E, 'P) t = ('I, 'E, 'P) _RequestFileOperationFeature

  val t_to_js
    :  ('I -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P -> Ojs.t)
    -> ('I, 'E, 'P) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'I)
    -> (Ojs.t -> 'E)
    -> (Ojs.t -> 'P)
    -> Ojs.t
    -> ('I, 'E, 'P) t

  val get__requestType : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any
    [@@js.get "_requestType"]

  val set__requestType : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_requestType"]

  val get__accessUri : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any
    [@@js.get "_accessUri"]

  val set__accessUri : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_accessUri"]

  val get__createParams : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any
    [@@js.get "_createParams"]

  val set__createParams
    :  ('I, 'E, 'P) t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "_createParams"]

  val create
    :  client:BaseLanguageClient.t
    -> event:'E Code.Event.t
    -> requestType:
         ( 'P
         , Proto.WorkspaceEdit.t or_null
         , never
         , unit
         , Proto.FileOperationRegistrationOptions.t )
         Proto.ProtocolRequestType.t
    -> clientCapability:
         (* FIXME: unknown type '?proto.FileOperationClientCapabilities' *) any
    -> serverCapability:
         (* FIXME: unknown type '?proto.FileOperationOptions' *) any
    -> accessUri:(i:'I -> Code.Uri.t)
    -> createParams:(e:'I _Event -> 'P)
    -> ('I, 'E, 'P) t
    [@@js.create]

  val send
    :  ('I, 'E, 'P) t
    -> originalEvent:('E, 'I _RequestEvent) intersection2
    -> unit Promise.t
    [@@js.call "send"]

  val get_waitUntil : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any
    [@@js.get "waitUntil"]

  val set_waitUntil : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "waitUntil"]

  val doSend
    :  ('I, 'E, 'P) t
    -> event:'E
    -> next:
         (event:'I _Event
          -> (Code.WorkspaceEdit.t Promise.t, any Promise.t) union2)
    -> (Code.WorkspaceEdit.t Promise.t, any Promise.t) union2
    [@@js.call "doSend"]

  val cast : ('I, 'E, 'P) t -> ('I, 'E) _FileOperationFeature [@@js.cast]
end
[@@js.scope "RequestFileOperationFeature"]

module WillCreateFilesFeature : sig
  type t = _WillCreateFilesFeature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : client:BaseLanguageClient.t -> t [@@js.create]

  val doSend
    :  t
    -> event:Code.FileWillCreateEvent.t
    -> next:
         (event:Code.FileCreateEvent.t
          -> (Code.WorkspaceEdit.t Promise.t, any Promise.t) union2)
    -> (Code.WorkspaceEdit.t Promise.t, any Promise.t) union2
    [@@js.call "doSend"]

  val cast
    :  t
    -> ( Code.Uri.t
       , Code.FileWillCreateEvent.t
       , Proto.CreateFilesParams.t )
       _RequestFileOperationFeature
    [@@js.cast]
end
[@@js.scope "WillCreateFilesFeature"]

module WillRenameFilesFeature : sig
  type t = _WillRenameFilesFeature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : client:BaseLanguageClient.t -> t [@@js.create]

  val doSend
    :  t
    -> event:Code.FileWillRenameEvent.t
    -> next:
         (event:Code.FileRenameEvent.t
          -> (Code.WorkspaceEdit.t Promise.t, any Promise.t) union2)
    -> (Code.WorkspaceEdit.t Promise.t, any Promise.t) union2
    [@@js.call "doSend"]

  val cast
    :  t
    -> ( anonymous_interface_1
       , Code.FileWillRenameEvent.t
       , Proto.RenameFilesParams.t )
       _RequestFileOperationFeature
    [@@js.cast]
end
[@@js.scope "WillRenameFilesFeature"]

module WillDeleteFilesFeature : sig
  type t = _WillDeleteFilesFeature

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : client:BaseLanguageClient.t -> t [@@js.create]

  val doSend
    :  t
    -> event:Code.FileWillDeleteEvent.t
    -> next:
         (event:Code.FileDeleteEvent.t
          -> (Code.WorkspaceEdit.t Promise.t, any Promise.t) union2)
    -> (Code.WorkspaceEdit.t Promise.t, any Promise.t) union2
    [@@js.call "doSend"]

  val cast
    :  t
    -> ( Code.Uri.t
       , Code.FileWillDeleteEvent.t
       , Proto.DeleteFilesParams.t )
       _RequestFileOperationFeature
    [@@js.cast]
end
[@@js.scope "WillDeleteFilesFeature"]
(* export {}; *)
