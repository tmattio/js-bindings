[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

(* import { NotificationHandler, RequestHandler } from 'vscode-jsonrpc'; *)
(* import { WorkspaceEdit } from 'vscode-languageserver-types'; *)
(* import { ProtocolNotificationType, ProtocolRequestType } from './messages'; *)
module FileOperationOptions : sig
  type t = _FileOperationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_didCreate : t -> _FileOperationRegistrationOptions
    [@@js.get "didCreate"]

  val set_didCreate : t -> _FileOperationRegistrationOptions -> unit
    [@@js.set "didCreate"]

  val get_willCreate : t -> _FileOperationRegistrationOptions
    [@@js.get "willCreate"]

  val set_willCreate : t -> _FileOperationRegistrationOptions -> unit
    [@@js.set "willCreate"]

  val get_didRename : t -> _FileOperationRegistrationOptions
    [@@js.get "didRename"]

  val set_didRename : t -> _FileOperationRegistrationOptions -> unit
    [@@js.set "didRename"]

  val get_willRename : t -> _FileOperationRegistrationOptions
    [@@js.get "willRename"]

  val set_willRename : t -> _FileOperationRegistrationOptions -> unit
    [@@js.set "willRename"]

  val get_didDelete : t -> _FileOperationRegistrationOptions
    [@@js.get "didDelete"]

  val set_didDelete : t -> _FileOperationRegistrationOptions -> unit
    [@@js.set "didDelete"]

  val get_willDelete : t -> _FileOperationRegistrationOptions
    [@@js.get "willDelete"]

  val set_willDelete : t -> _FileOperationRegistrationOptions -> unit
    [@@js.set "willDelete"]
end
[@@js.scope "FileOperationOptions"]

module FileOperationRegistrationOptions : sig
  type t = _FileOperationRegistrationOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_filters : t -> _FileOperationFilter list [@@js.get "filters"]

  val set_filters : t -> _FileOperationFilter list -> unit [@@js.set "filters"]
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
  type t = _FileOperationPatternOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_ignoreCase : t -> bool [@@js.get "ignoreCase"]

  val set_ignoreCase : t -> bool -> unit [@@js.set "ignoreCase"]
end
[@@js.scope "FileOperationPatternOptions"]

module FileOperationPattern : sig
  type t = _FileOperationPattern

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_glob : t -> string [@@js.get "glob"]

  val set_glob : t -> string -> unit [@@js.set "glob"]

  val get_matches : t -> _FileOperationPatternKind [@@js.get "matches"]

  val set_matches : t -> _FileOperationPatternKind -> unit [@@js.set "matches"]

  val get_options : t -> _FileOperationPatternOptions [@@js.get "options"]

  val set_options : t -> _FileOperationPatternOptions -> unit
    [@@js.set "options"]
end
[@@js.scope "FileOperationPattern"]

module FileOperationFilter : sig
  type t = _FileOperationFilter

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_scheme : t -> string [@@js.get "scheme"]

  val set_scheme : t -> string -> unit [@@js.set "scheme"]

  val get_pattern : t -> _FileOperationPattern [@@js.get "pattern"]

  val set_pattern : t -> _FileOperationPattern -> unit [@@js.set "pattern"]
end
[@@js.scope "FileOperationFilter"]

module FileOperationClientCapabilities : sig
  type t = _FileOperationClientCapabilities

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_dynamicRegistration : t -> bool [@@js.get "dynamicRegistration"]

  val set_dynamicRegistration : t -> bool -> unit
    [@@js.set "dynamicRegistration"]

  val get_didCreate : t -> bool [@@js.get "didCreate"]

  val set_didCreate : t -> bool -> unit [@@js.set "didCreate"]

  val get_willCreate : t -> bool [@@js.get "willCreate"]

  val set_willCreate : t -> bool -> unit [@@js.set "willCreate"]

  val get_didRename : t -> bool [@@js.get "didRename"]

  val set_didRename : t -> bool -> unit [@@js.set "didRename"]

  val get_willRename : t -> bool [@@js.get "willRename"]

  val set_willRename : t -> bool -> unit [@@js.set "willRename"]

  val get_didDelete : t -> bool [@@js.get "didDelete"]

  val set_didDelete : t -> bool -> unit [@@js.set "didDelete"]

  val get_willDelete : t -> bool [@@js.get "willDelete"]

  val set_willDelete : t -> bool -> unit [@@js.set "willDelete"]
end
[@@js.scope "FileOperationClientCapabilities"]

module CreateFilesParams : sig
  type t = _CreateFilesParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_files : t -> _FileCreate list [@@js.get "files"]

  val set_files : t -> _FileCreate list -> unit [@@js.set "files"]
end
[@@js.scope "CreateFilesParams"]

module FileCreate : sig
  type t = _FileCreate

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_uri : t -> string [@@js.get "uri"]

  val set_uri : t -> string -> unit [@@js.set "uri"]
end
[@@js.scope "FileCreate"]

module RenameFilesParams : sig
  type t = _RenameFilesParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_files : t -> _FileRename list [@@js.get "files"]

  val set_files : t -> _FileRename list -> unit [@@js.set "files"]
end
[@@js.scope "RenameFilesParams"]

module FileRename : sig
  type t = _FileRename

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_oldUri : t -> string [@@js.get "oldUri"]

  val set_oldUri : t -> string -> unit [@@js.set "oldUri"]

  val get_newUri : t -> string [@@js.get "newUri"]

  val set_newUri : t -> string -> unit [@@js.set "newUri"]
end
[@@js.scope "FileRename"]

module DeleteFilesParams : sig
  type t = _DeleteFilesParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_files : t -> _FileDelete list [@@js.get "files"]

  val set_files : t -> _FileDelete list -> unit [@@js.set "files"]
end
[@@js.scope "DeleteFilesParams"]

module FileDelete : sig
  type t = _FileDelete

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
    : ( _CreateFilesParams
      , WorkspaceEdit.t or_null
      , never
      , unit
      , _FileOperationRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( _CreateFilesParams
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
    : ( _CreateFilesParams
      , _FileOperationRegistrationOptions )
      ProtocolNotificationType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = _CreateFilesParams NotificationHandler.t

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
    : ( _RenameFilesParams
      , WorkspaceEdit.t or_null
      , never
      , unit
      , _FileOperationRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( _RenameFilesParams
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
    : ( _RenameFilesParams
      , _FileOperationRegistrationOptions )
      ProtocolNotificationType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = _RenameFilesParams NotificationHandler.t

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
    : ( _DeleteFilesParams
      , _FileOperationRegistrationOptions )
      ProtocolNotificationType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t = _DeleteFilesParams NotificationHandler.t

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
    : ( _DeleteFilesParams
      , WorkspaceEdit.t or_null
      , never
      , unit
      , _FileOperationRegistrationOptions )
      ProtocolRequestType.t
    [@@js.global "type"]

  module HandlerSignature : sig
    type t =
      ( _DeleteFilesParams
      , WorkspaceEdit.t or_null_or_undefined
      , unit )
      RequestHandler.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end
end
[@@js.scope "WillDeleteFilesRequest"]
(* export {}; *)
