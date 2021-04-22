[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { NotificationHandler, RequestHandler } from 'vscode-jsonrpc'; *)
(* import { WorkspaceEdit } from 'vscode-languageserver-types'; *)
(* import { ProtocolNotificationType, ProtocolRequestType } from './messages'; *)
module FileOperationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_did_create : t -> FileOperationRegistrationOptions.t
    [@@js.get "didCreate"]

  val set_did_create : t -> FileOperationRegistrationOptions.t -> unit
    [@@js.set "didCreate"]

  val get_will_create : t -> FileOperationRegistrationOptions.t
    [@@js.get "willCreate"]

  val set_will_create : t -> FileOperationRegistrationOptions.t -> unit
    [@@js.set "willCreate"]

  val get_did_rename : t -> FileOperationRegistrationOptions.t
    [@@js.get "didRename"]

  val set_did_rename : t -> FileOperationRegistrationOptions.t -> unit
    [@@js.set "didRename"]

  val get_will_rename : t -> FileOperationRegistrationOptions.t
    [@@js.get "willRename"]

  val set_will_rename : t -> FileOperationRegistrationOptions.t -> unit
    [@@js.set "willRename"]

  val get_did_delete : t -> FileOperationRegistrationOptions.t
    [@@js.get "didDelete"]

  val set_did_delete : t -> FileOperationRegistrationOptions.t -> unit
    [@@js.set "didDelete"]

  val get_will_delete : t -> FileOperationRegistrationOptions.t
    [@@js.get "willDelete"]

  val set_will_delete : t -> FileOperationRegistrationOptions.t -> unit
    [@@js.set "willDelete"]
end
[@@js.scope "FileOperationOptions"]

module FileOperationRegistrationOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_filters : t -> FileOperationFilter.t list [@@js.get "filters"]

  val set_filters : t -> FileOperationFilter.t list -> unit [@@js.set "filters"]
end
[@@js.scope "FileOperationRegistrationOptions"]

module FileOperationPatternKind : sig
  val file : ([ `L_s0_file [@js "file"] ][@js.enum]) [@@js.global "file"]

  val folder : ([ `L_s1_folder [@js "folder"] ][@js.enum])
    [@@js.global "folder"]
end
[@@js.scope "FileOperationPatternKind"]

module FileOperationPatternKind : sig
  type t =
    ([ `L_s0_file [@js "file"]
     | `L_s1_folder [@js "folder"]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module FileOperationPatternOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_ignore_case : t -> bool [@@js.get "ignoreCase"]

  val set_ignore_case : t -> bool -> unit [@@js.set "ignoreCase"]
end
[@@js.scope "FileOperationPatternOptions"]

module FileOperationPattern : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_glob : t -> string [@@js.get "glob"]

  val set_glob : t -> string -> unit [@@js.set "glob"]

  val get_matches : t -> FileOperationPatternKind.t [@@js.get "matches"]

  val set_matches : t -> FileOperationPatternKind.t -> unit [@@js.set "matches"]

  val get_options : t -> FileOperationPatternOptions.t [@@js.get "options"]

  val set_options : t -> FileOperationPatternOptions.t -> unit
    [@@js.set "options"]
end
[@@js.scope "FileOperationPattern"]

module FileOperationFilter : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_scheme : t -> string [@@js.get "scheme"]

  val set_scheme : t -> string -> unit [@@js.set "scheme"]

  val get_pattern : t -> FileOperationPattern.t [@@js.get "pattern"]

  val set_pattern : t -> FileOperationPattern.t -> unit [@@js.set "pattern"]
end
[@@js.scope "FileOperationFilter"]

module FileOperationClientCapabilities : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamic_registration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamic_registration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_did_create : t -> bool [@@js.get "didCreate"]

  val set_did_create : t -> bool -> unit [@@js.set "didCreate"]

  val get_will_create : t -> bool [@@js.get "willCreate"]

  val set_will_create : t -> bool -> unit [@@js.set "willCreate"]

  val get_did_rename : t -> bool [@@js.get "didRename"]

  val set_did_rename : t -> bool -> unit [@@js.set "didRename"]

  val get_will_rename : t -> bool [@@js.get "willRename"]

  val set_will_rename : t -> bool -> unit [@@js.set "willRename"]

  val get_did_delete : t -> bool [@@js.get "didDelete"]

  val set_did_delete : t -> bool -> unit [@@js.set "didDelete"]

  val get_will_delete : t -> bool [@@js.get "willDelete"]

  val set_will_delete : t -> bool -> unit [@@js.set "willDelete"]
end
[@@js.scope "FileOperationClientCapabilities"]

module CreateFilesParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_files : t -> FileCreate.t list [@@js.get "files"]

  val set_files : t -> FileCreate.t list -> unit [@@js.set "files"]
end
[@@js.scope "CreateFilesParams"]

module FileCreate : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> string [@@js.get "uri"]

  val set_uri : t -> string -> unit [@@js.set "uri"]
end
[@@js.scope "FileCreate"]

module RenameFilesParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_files : t -> FileRename.t list [@@js.get "files"]

  val set_files : t -> FileRename.t list -> unit [@@js.set "files"]
end
[@@js.scope "RenameFilesParams"]

module FileRename : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_old_uri : t -> string [@@js.get "oldUri"]

  val set_old_uri : t -> string -> unit [@@js.set "oldUri"]

  val get_new_uri : t -> string [@@js.get "newUri"]

  val set_new_uri : t -> string -> unit [@@js.set "newUri"]
end
[@@js.scope "FileRename"]

module DeleteFilesParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_files : t -> FileDelete.t list [@@js.get "files"]

  val set_files : t -> FileDelete.t list -> unit [@@js.set "files"]
end
[@@js.scope "DeleteFilesParams"]

module FileDelete : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> string [@@js.get "uri"]

  val set_uri : t -> string -> unit [@@js.set "uri"]
end
[@@js.scope "FileDelete"]

module WillCreateFilesRequest : sig
  val method_
    : ([ `L_s5_workspace_willCreateFiles [@js "workspace/willCreateFiles"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( CreateFilesParams.t
      , WorkspaceEdit.t or_null
      , never
      , unit
      , FileOperationRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( CreateFilesParams.t
      , WorkspaceEdit.t or_null_or_undefined
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "WillCreateFilesRequest"]

module DidCreateFilesNotification : sig
  val method_
    : ([ `L_s2_workspace_didCreateFiles [@js "workspace/didCreateFiles"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( CreateFilesParams.t
      , FileOperationRegistrationOptions.t )
      ProtocolNotificationType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = CreateFilesParams.t NotificationHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "DidCreateFilesNotification"]

module WillRenameFilesRequest : sig
  val method_
    : ([ `L_s7_workspace_willRenameFiles [@js "workspace/willRenameFiles"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( RenameFilesParams.t
      , WorkspaceEdit.t or_null
      , never
      , unit
      , FileOperationRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( RenameFilesParams.t
      , WorkspaceEdit.t or_null_or_undefined
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "WillRenameFilesRequest"]

module DidRenameFilesNotification : sig
  val method_
    : ([ `L_s4_workspace_didRenameFiles [@js "workspace/didRenameFiles"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( RenameFilesParams.t
      , FileOperationRegistrationOptions.t )
      ProtocolNotificationType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = RenameFilesParams.t NotificationHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "DidRenameFilesNotification"]

module DidDeleteFilesNotification : sig
  val method_
    : ([ `L_s3_workspace_didDeleteFiles [@js "workspace/didDeleteFiles"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( DeleteFilesParams.t
      , FileOperationRegistrationOptions.t )
      ProtocolNotificationType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = DeleteFilesParams.t NotificationHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "DidDeleteFilesNotification"]

module WillDeleteFilesRequest : sig
  val method_
    : ([ `L_s6_workspace_willDeleteFiles [@js "workspace/willDeleteFiles"] ]
      [@js.enum])
    [@@js.global "method"]

  val type_
    : ( DeleteFilesParams.t
      , WorkspaceEdit.t or_null
      , never
      , unit
      , FileOperationRegistrationOptions.t )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( DeleteFilesParams.t
      , WorkspaceEdit.t or_null_or_undefined
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "WillDeleteFilesRequest"]
(* export {}; *)
