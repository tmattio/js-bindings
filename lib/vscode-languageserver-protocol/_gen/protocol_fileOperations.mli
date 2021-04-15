[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - NotificationHandler<T1>
  - ProtocolNotificationType<T1, T2>
  - ProtocolRequestType<T1, T2, T3, T4, T5>
  - RequestHandler<T1, T2, T3>
  - WorkspaceEdit
 *)
[@@@js.stop]
module type Missing = sig
  module NotificationHandler : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
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
  module RequestHandler : sig
    type ('T1, 'T2, 'T3) t_3
    val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
  end
  module WorkspaceEdit : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module NotificationHandler : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
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
    module RequestHandler : sig
      type ('T1, 'T2, 'T3) t_3
      val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
      val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
    end
    module WorkspaceEdit : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
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
      type _CreateFilesParams = [`CreateFilesParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DeleteFilesParams = [`DeleteFilesParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _DidCreateFilesNotification_HandlerSignature = _CreateFilesParams NotificationHandler.t_1
      and _DidDeleteFilesNotification_HandlerSignature = _DeleteFilesParams NotificationHandler.t_1
      and _DidRenameFilesNotification_HandlerSignature = _RenameFilesParams NotificationHandler.t_1
      and _FileCreate = [`FileCreate] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _FileDelete = [`FileDelete] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _FileOperationClientCapabilities = [`FileOperationClientCapabilities] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _FileOperationFilter = [`FileOperationFilter] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _FileOperationOptions = [`FileOperationOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _FileOperationPattern = [`FileOperationPattern] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _FileOperationPatternKind = ([`L_s0_file[@js "file"] | `L_s1_folder[@js "folder"]] [@js.enum])
      and _FileOperationPatternOptions = [`FileOperationPatternOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _FileOperationRegistrationOptions = [`FileOperationRegistrationOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _FileRename = [`FileRename] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _RenameFilesParams = [`RenameFilesParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _WillCreateFilesRequest_HandlerSignature = (_CreateFilesParams, WorkspaceEdit.t_0 or_null_or_undefined, unit) RequestHandler.t_3
      and _WillDeleteFilesRequest_HandlerSignature = (_DeleteFilesParams, WorkspaceEdit.t_0 or_null_or_undefined, unit) RequestHandler.t_3
      and _WillRenameFilesRequest_HandlerSignature = (_RenameFilesParams, WorkspaceEdit.t_0 or_null_or_undefined, unit) RequestHandler.t_3
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  (* import { NotificationHandler, RequestHandler } from 'vscode-jsonrpc'; *)
  (* import { WorkspaceEdit } from 'vscode-languageserver-types'; *)
  (* import { ProtocolNotificationType, ProtocolRequestType } from './messages'; *)
  module[@js.scope "FileOperationOptions"] FileOperationOptions : sig
    type t = _FileOperationOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_didCreate: t -> _FileOperationRegistrationOptions [@@js.get "didCreate"]
    val set_didCreate: t -> _FileOperationRegistrationOptions -> unit [@@js.set "didCreate"]
    val get_willCreate: t -> _FileOperationRegistrationOptions [@@js.get "willCreate"]
    val set_willCreate: t -> _FileOperationRegistrationOptions -> unit [@@js.set "willCreate"]
    val get_didRename: t -> _FileOperationRegistrationOptions [@@js.get "didRename"]
    val set_didRename: t -> _FileOperationRegistrationOptions -> unit [@@js.set "didRename"]
    val get_willRename: t -> _FileOperationRegistrationOptions [@@js.get "willRename"]
    val set_willRename: t -> _FileOperationRegistrationOptions -> unit [@@js.set "willRename"]
    val get_didDelete: t -> _FileOperationRegistrationOptions [@@js.get "didDelete"]
    val set_didDelete: t -> _FileOperationRegistrationOptions -> unit [@@js.set "didDelete"]
    val get_willDelete: t -> _FileOperationRegistrationOptions [@@js.get "willDelete"]
    val set_willDelete: t -> _FileOperationRegistrationOptions -> unit [@@js.set "willDelete"]
  end
  module[@js.scope "FileOperationRegistrationOptions"] FileOperationRegistrationOptions : sig
    type t = _FileOperationRegistrationOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_filters: t -> _FileOperationFilter list [@@js.get "filters"]
    val set_filters: t -> _FileOperationFilter list -> unit [@@js.set "filters"]
  end
  module[@js.scope "FileOperationPatternKind"] FileOperationPatternKind : sig
    val file: ([`L_s0_file[@js "file"]] [@js.enum]) [@@js.global "file"]
    val folder: ([`L_s1_folder[@js "folder"]] [@js.enum]) [@@js.global "folder"]
  end
  module FileOperationPatternKind : sig
    type t = _FileOperationPatternKind
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "FileOperationPatternOptions"] FileOperationPatternOptions : sig
    type t = _FileOperationPatternOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_ignoreCase: t -> bool [@@js.get "ignoreCase"]
    val set_ignoreCase: t -> bool -> unit [@@js.set "ignoreCase"]
  end
  module[@js.scope "FileOperationPattern"] FileOperationPattern : sig
    type t = _FileOperationPattern
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_glob: t -> string [@@js.get "glob"]
    val set_glob: t -> string -> unit [@@js.set "glob"]
    val get_matches: t -> _FileOperationPatternKind [@@js.get "matches"]
    val set_matches: t -> _FileOperationPatternKind -> unit [@@js.set "matches"]
    val get_options: t -> _FileOperationPatternOptions [@@js.get "options"]
    val set_options: t -> _FileOperationPatternOptions -> unit [@@js.set "options"]
  end
  module[@js.scope "FileOperationFilter"] FileOperationFilter : sig
    type t = _FileOperationFilter
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_scheme: t -> string [@@js.get "scheme"]
    val set_scheme: t -> string -> unit [@@js.set "scheme"]
    val get_pattern: t -> _FileOperationPattern [@@js.get "pattern"]
    val set_pattern: t -> _FileOperationPattern -> unit [@@js.set "pattern"]
  end
  module[@js.scope "FileOperationClientCapabilities"] FileOperationClientCapabilities : sig
    type t = _FileOperationClientCapabilities
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_dynamicRegistration: t -> bool [@@js.get "dynamicRegistration"]
    val set_dynamicRegistration: t -> bool -> unit [@@js.set "dynamicRegistration"]
    val get_didCreate: t -> bool [@@js.get "didCreate"]
    val set_didCreate: t -> bool -> unit [@@js.set "didCreate"]
    val get_willCreate: t -> bool [@@js.get "willCreate"]
    val set_willCreate: t -> bool -> unit [@@js.set "willCreate"]
    val get_didRename: t -> bool [@@js.get "didRename"]
    val set_didRename: t -> bool -> unit [@@js.set "didRename"]
    val get_willRename: t -> bool [@@js.get "willRename"]
    val set_willRename: t -> bool -> unit [@@js.set "willRename"]
    val get_didDelete: t -> bool [@@js.get "didDelete"]
    val set_didDelete: t -> bool -> unit [@@js.set "didDelete"]
    val get_willDelete: t -> bool [@@js.get "willDelete"]
    val set_willDelete: t -> bool -> unit [@@js.set "willDelete"]
  end
  module[@js.scope "CreateFilesParams"] CreateFilesParams : sig
    type t = _CreateFilesParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_files: t -> _FileCreate list [@@js.get "files"]
    val set_files: t -> _FileCreate list -> unit [@@js.set "files"]
  end
  module[@js.scope "FileCreate"] FileCreate : sig
    type t = _FileCreate
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_uri: t -> string [@@js.get "uri"]
    val set_uri: t -> string -> unit [@@js.set "uri"]
  end
  module[@js.scope "RenameFilesParams"] RenameFilesParams : sig
    type t = _RenameFilesParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_files: t -> _FileRename list [@@js.get "files"]
    val set_files: t -> _FileRename list -> unit [@@js.set "files"]
  end
  module[@js.scope "FileRename"] FileRename : sig
    type t = _FileRename
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_oldUri: t -> string [@@js.get "oldUri"]
    val set_oldUri: t -> string -> unit [@@js.set "oldUri"]
    val get_newUri: t -> string [@@js.get "newUri"]
    val set_newUri: t -> string -> unit [@@js.set "newUri"]
  end
  module[@js.scope "DeleteFilesParams"] DeleteFilesParams : sig
    type t = _DeleteFilesParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_files: t -> _FileDelete list [@@js.get "files"]
    val set_files: t -> _FileDelete list -> unit [@@js.set "files"]
  end
  module[@js.scope "FileDelete"] FileDelete : sig
    type t = _FileDelete
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_uri: t -> string [@@js.get "uri"]
    val set_uri: t -> string -> unit [@@js.set "uri"]
  end
  module[@js.scope "WillCreateFilesRequest"] WillCreateFilesRequest : sig
    val method_: ([`L_s5_workspace_willCreateFiles[@js "workspace/willCreateFiles"]] [@js.enum]) [@@js.global "method"]
    val type_: (_CreateFilesParams, WorkspaceEdit.t_0 or_null, never, unit, _FileOperationRegistrationOptions) ProtocolRequestType.t_5 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _WillCreateFilesRequest_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module[@js.scope "DidCreateFilesNotification"] DidCreateFilesNotification : sig
    val method_: ([`L_s2_workspace_didCreateFiles[@js "workspace/didCreateFiles"]] [@js.enum]) [@@js.global "method"]
    val type_: (_CreateFilesParams, _FileOperationRegistrationOptions) ProtocolNotificationType.t_2 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _DidCreateFilesNotification_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module[@js.scope "WillRenameFilesRequest"] WillRenameFilesRequest : sig
    val method_: ([`L_s7_workspace_willRenameFiles[@js "workspace/willRenameFiles"]] [@js.enum]) [@@js.global "method"]
    val type_: (_RenameFilesParams, WorkspaceEdit.t_0 or_null, never, unit, _FileOperationRegistrationOptions) ProtocolRequestType.t_5 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _WillRenameFilesRequest_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module[@js.scope "DidRenameFilesNotification"] DidRenameFilesNotification : sig
    val method_: ([`L_s4_workspace_didRenameFiles[@js "workspace/didRenameFiles"]] [@js.enum]) [@@js.global "method"]
    val type_: (_RenameFilesParams, _FileOperationRegistrationOptions) ProtocolNotificationType.t_2 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _DidRenameFilesNotification_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module[@js.scope "DidDeleteFilesNotification"] DidDeleteFilesNotification : sig
    val method_: ([`L_s3_workspace_didDeleteFiles[@js "workspace/didDeleteFiles"]] [@js.enum]) [@@js.global "method"]
    val type_: (_DeleteFilesParams, _FileOperationRegistrationOptions) ProtocolNotificationType.t_2 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _DidDeleteFilesNotification_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  module[@js.scope "WillDeleteFilesRequest"] WillDeleteFilesRequest : sig
    val method_: ([`L_s6_workspace_willDeleteFiles[@js "workspace/willDeleteFiles"]] [@js.enum]) [@@js.global "method"]
    val type_: (_DeleteFilesParams, WorkspaceEdit.t_0 or_null, never, unit, _FileOperationRegistrationOptions) ProtocolRequestType.t_5 [@@js.global "type"]
    module HandlerSignature : sig
      type t = _WillDeleteFilesRequest_HandlerSignature
      val t_to_js: t -> Ojs.t
      val t_of_js: Ojs.t -> t
      type t_0 = t
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
  (* export {}; *)
end
