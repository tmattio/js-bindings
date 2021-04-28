[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_files : t -> 'I list [@@js.get "files"]
end

module AnonymousInterface1 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_old_uri : t -> Code.Uri.t [@@js.get "oldUri"]

  val set_old_uri : t -> Code.Uri.t -> unit [@@js.set "oldUri"]

  val get_new_uri : t -> Code.Uri.t [@@js.get "newUri"]

  val set_new_uri : t -> Code.Uri.t -> unit [@@js.set "newUri"]
end

(* import * as code from 'vscode'; *)
(* import * as proto from 'vscode-languageserver-protocol'; *)
(* import { DynamicFeature, BaseLanguageClient, RegistrationData, NextSignature
   } from './client'; *)
module FileOperationsMiddleware : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_did_create_files : t -> (Code.FileCreateEvent.t, unit) NextSignature.t
    [@@js.get "didCreateFiles"]

  val set_did_create_files
    :  t
    -> (Code.FileCreateEvent.t, unit) NextSignature.t
    -> unit
    [@@js.set "didCreateFiles"]

  val get_will_create_files
    :  t
    -> ( Code.FileCreateEvent.t
       , Code.WorkspaceEdit.t or_null_or_undefined Promise.t )
       NextSignature.t
    [@@js.get "willCreateFiles"]

  val set_will_create_files
    :  t
    -> ( Code.FileCreateEvent.t
       , Code.WorkspaceEdit.t or_null_or_undefined Promise.t )
       NextSignature.t
    -> unit
    [@@js.set "willCreateFiles"]

  val get_did_rename_files : t -> (Code.FileRenameEvent.t, unit) NextSignature.t
    [@@js.get "didRenameFiles"]

  val set_did_rename_files
    :  t
    -> (Code.FileRenameEvent.t, unit) NextSignature.t
    -> unit
    [@@js.set "didRenameFiles"]

  val get_will_rename_files
    :  t
    -> ( Code.FileRenameEvent.t
       , Code.WorkspaceEdit.t or_null_or_undefined Promise.t )
       NextSignature.t
    [@@js.get "willRenameFiles"]

  val set_will_rename_files
    :  t
    -> ( Code.FileRenameEvent.t
       , Code.WorkspaceEdit.t or_null_or_undefined Promise.t )
       NextSignature.t
    -> unit
    [@@js.set "willRenameFiles"]

  val get_did_delete_files : t -> (Code.FileDeleteEvent.t, unit) NextSignature.t
    [@@js.get "didDeleteFiles"]

  val set_did_delete_files
    :  t
    -> (Code.FileDeleteEvent.t, unit) NextSignature.t
    -> unit
    [@@js.set "didDeleteFiles"]

  val get_will_delete_files
    :  t
    -> ( Code.FileDeleteEvent.t
       , Code.WorkspaceEdit.t or_null_or_undefined Promise.t )
       NextSignature.t
    [@@js.get "willDeleteFiles"]

  val set_will_delete_files
    :  t
    -> ( Code.FileDeleteEvent.t
       , Code.WorkspaceEdit.t or_null_or_undefined Promise.t )
       NextSignature.t
    -> unit
    [@@js.set "willDeleteFiles"]
end
[@@js.scope "FileOperationsMiddleware"]

module Event : sig
  type 'I t

  val t_to_js : ('I -> Ojs.t) -> 'I t -> Ojs.t

  val t_of_js : (Ojs.t -> 'I) -> Ojs.t -> 'I t

  val get_files : 'I t -> 'I list [@@js.get "files"]
end
[@@js.scope "Event"]

module FileOperationFeature : sig
  type ('I, 'E) t

  val t_to_js : ('I -> Ojs.t) -> ('E -> Ojs.t) -> ('I, 'E) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'I) -> (Ojs.t -> 'E) -> Ojs.t -> ('I, 'E) t

  val get__client : ('I, 'E) t -> BaseLanguageClient.t [@@js.get "_client"]

  val set__client : ('I, 'E) t -> BaseLanguageClient.t -> unit
    [@@js.set "_client"]

  val get__event : ('I, 'E) t -> (* FIXME: unknown type *) any
    [@@js.get "_event"]

  val set__event : ('I, 'E) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_event"]

  val get_registration_type : ('I, 'E) t -> (* FIXME: unknown type *) any
    [@@js.get "_registrationType"]

  val set_registration_type
    :  ('I, 'E) t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "_registrationType"]

  val get_client_capability : ('I, 'E) t -> (* FIXME: unknown type *) any
    [@@js.get "_clientCapability"]

  val set_client_capability
    :  ('I, 'E) t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "_clientCapability"]

  val get_server_capability : ('I, 'E) t -> (* FIXME: unknown type *) any
    [@@js.get "_serverCapability"]

  val set_server_capability
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
    -> registration_type:
         Proto.FileOperationRegistrationOptions.t Proto.RegistrationType.t
    -> client_capability:
         (* FIXME: unknown type '?proto.FileOperationClientCapabilities' *) any
    -> server_capability:
         (* FIXME: unknown type '?proto.FileOperationOptions' *) any
    -> ('I, 'E) t
    [@@js.create]

  val get_registration_type
    :  ('I, 'E) t
    -> Proto.FileOperationRegistrationOptions.t Proto.RegistrationType.t
    [@@js.get "registrationType"]

  val fill_client_capabilities
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

  val get_get_file_type : unit -> (* FIXME: unknown type *) any
    [@@js.get "getFileType"]

  val set_get_file_type : (* FIXME: unknown type *) any -> unit
    [@@js.set "getFileType"]

  val get_as_minimatch_options : unit -> (* FIXME: unknown type *) any
    [@@js.get "asMinimatchOptions"]

  val set_as_minimatch_options : (* FIXME: unknown type *) any -> unit
    [@@js.set "asMinimatchOptions"]

  val cast
    :  ('I, 'E) t
    -> Proto.FileOperationRegistrationOptions.t DynamicFeature.t
    [@@js.cast]
end
[@@js.scope "FileOperationFeature"]

module NotificationFileOperationFeature : sig
  type ('I, 'E, 'P) t = ('I, 'E, 'P) NotificationFileOperationFeature.t

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

  val get_notification_type : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any
    [@@js.get "_notificationType"]

  val set_notification_type
    :  ('I, 'E, 'P) t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "_notificationType"]

  val get_access_uri : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any
    [@@js.get "_accessUri"]

  val set_access_uri : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_accessUri"]

  val get_create_params : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any
    [@@js.get "_createParams"]

  val set_create_params
    :  ('I, 'E, 'P) t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "_createParams"]

  val create
    :  client:BaseLanguageClient.t
    -> event:'E Code.Event.t
    -> notification_type:
         ( 'P
         , Proto.FileOperationRegistrationOptions.t )
         Proto.ProtocolNotificationType.t
    -> client_capability:
         (* FIXME: unknown type '?proto.FileOperationClientCapabilities' *) any
    -> server_capability:
         (* FIXME: unknown type '?proto.FileOperationOptions' *) any
    -> access_uri:(i:'I -> Code.Uri.t)
    -> create_params:(e:'E -> 'P)
    -> ('I, 'E, 'P) t
    [@@js.create]

  val send : ('I, 'E, 'P) t -> original_event:'E -> unit Promise.t
    [@@js.call "send"]

  val do_send : ('I, 'E, 'P) t -> event:'E -> next:(event:'E -> unit) -> unit
    [@@js.call "doSend"]

  val cast : ('I, 'E, 'P) t -> ('I, 'E) FileOperationFeature.t [@@js.cast]
end
[@@js.scope "NotificationFileOperationFeature"]

module DidCreateFilesFeature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : client:BaseLanguageClient.t -> t [@@js.create]

  val do_send
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
       NotificationFileOperationFeature.t
    [@@js.cast]
end
[@@js.scope "DidCreateFilesFeature"]

module DidRenameFilesFeature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : client:BaseLanguageClient.t -> t [@@js.create]

  val do_send
    :  t
    -> event:Code.FileRenameEvent.t
    -> next:(event:Code.FileRenameEvent.t -> unit)
    -> unit
    [@@js.call "doSend"]

  val cast
    :  t
    -> ( AnonymousInterface1.t
       , Code.FileRenameEvent.t
       , Proto.RenameFilesParams.t )
       NotificationFileOperationFeature.t
    [@@js.cast]
end
[@@js.scope "DidRenameFilesFeature"]

module DidDeleteFilesFeature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : client:BaseLanguageClient.t -> t [@@js.create]

  val do_send
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
       NotificationFileOperationFeature.t
    [@@js.cast]
end
[@@js.scope "DidDeleteFilesFeature"]

module RequestEvent : sig
  type 'I t

  val t_to_js : ('I -> Ojs.t) -> 'I t -> Ojs.t

  val t_of_js : (Ojs.t -> 'I) -> Ojs.t -> 'I t

  val get_files : 'I t -> 'I list [@@js.get "files"]

  val wait_until : 'I t -> thenable:Code.WorkspaceEdit.t Promise.t -> unit
    [@@js.call "waitUntil"]

  val wait_until' : 'I t -> thenable:any Promise.t -> unit
    [@@js.call "waitUntil"]
end
[@@js.scope "RequestEvent"]

module RequestFileOperationFeature : sig
  type ('I, 'E, 'P) t

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

  val get_request_type : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any
    [@@js.get "_requestType"]

  val set_request_type : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_requestType"]

  val get_access_uri : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any
    [@@js.get "_accessUri"]

  val set_access_uri : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "_accessUri"]

  val get_create_params : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any
    [@@js.get "_createParams"]

  val set_create_params
    :  ('I, 'E, 'P) t
    -> (* FIXME: unknown type *) any
    -> unit
    [@@js.set "_createParams"]

  val create
    :  client:BaseLanguageClient.t
    -> event:'E Code.Event.t
    -> request_type:
         ( 'P
         , Proto.WorkspaceEdit.t or_null
         , never
         , unit
         , Proto.FileOperationRegistrationOptions.t )
         Proto.ProtocolRequestType.t
    -> client_capability:
         (* FIXME: unknown type '?proto.FileOperationClientCapabilities' *) any
    -> server_capability:
         (* FIXME: unknown type '?proto.FileOperationOptions' *) any
    -> access_uri:(i:'I -> Code.Uri.t)
    -> create_params:(e:'I Event.t -> 'P)
    -> ('I, 'E, 'P) t
    [@@js.create]

  val send
    :  ('I, 'E, 'P) t
    -> original_event:('E, 'I RequestEvent.t) intersection2
    -> unit Promise.t
    [@@js.call "send"]

  val get_wait_until : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any
    [@@js.get "waitUntil"]

  val set_wait_until : ('I, 'E, 'P) t -> (* FIXME: unknown type *) any -> unit
    [@@js.set "waitUntil"]

  val do_send
    :  ('I, 'E, 'P) t
    -> event:'E
    -> next:
         (event:'I Event.t
          -> (Code.WorkspaceEdit.t Promise.t, any Promise.t) union2)
    -> (Code.WorkspaceEdit.t Promise.t, any Promise.t) union2
    [@@js.call "doSend"]

  val cast : ('I, 'E, 'P) t -> ('I, 'E) FileOperationFeature.t [@@js.cast]
end
[@@js.scope "RequestFileOperationFeature"]

module WillCreateFilesFeature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : client:BaseLanguageClient.t -> t [@@js.create]

  val do_send
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
       RequestFileOperationFeature.t
    [@@js.cast]
end
[@@js.scope "WillCreateFilesFeature"]

module WillRenameFilesFeature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : client:BaseLanguageClient.t -> t [@@js.create]

  val do_send
    :  t
    -> event:Code.FileWillRenameEvent.t
    -> next:
         (event:Code.FileRenameEvent.t
          -> (Code.WorkspaceEdit.t Promise.t, any Promise.t) union2)
    -> (Code.WorkspaceEdit.t Promise.t, any Promise.t) union2
    [@@js.call "doSend"]

  val cast
    :  t
    -> ( AnonymousInterface1.t
       , Code.FileWillRenameEvent.t
       , Proto.RenameFilesParams.t )
       RequestFileOperationFeature.t
    [@@js.cast]
end
[@@js.scope "WillRenameFilesFeature"]

module WillDeleteFilesFeature : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : client:BaseLanguageClient.t -> t [@@js.create]

  val do_send
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
       RequestFileOperationFeature.t
    [@@js.cast]
end
[@@js.scope "WillDeleteFilesFeature"]
(* export {}; *)
