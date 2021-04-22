[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module Inspector : sig
  module InspectorNotification : sig
    type 'T t

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val get_method : 'T t -> string [@@js.get "method"]

    val set_method : 'T t -> string -> unit [@@js.set "method"]

    val get_params : 'T t -> 'T [@@js.get "params"]

    val set_params : 'T t -> 'T -> unit [@@js.set "params"]
  end
  [@@js.scope "InspectorNotification"]

  module Schema : sig
    module Domain : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_name : t -> string [@@js.get "name"]

      val set_name : t -> string -> unit [@@js.set "name"]

      val get_version : t -> string [@@js.get "version"]

      val set_version : t -> string -> unit [@@js.set "version"]
    end
    [@@js.scope "Domain"]

    module GetDomainsReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_domains : t -> Domain.t list [@@js.get "domains"]

      val set_domains : t -> Domain.t list -> unit [@@js.set "domains"]
    end
    [@@js.scope "GetDomainsReturnType"]
  end
  [@@js.scope "Schema"]

  module Runtime : sig
    module ScriptId : sig
      type t = string

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module RemoteObjectId : sig
      type t = string

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module UnserializableValue : sig
      type t = string

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module CustomPreview : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_header : t -> string [@@js.get "header"]

      val set_header : t -> string -> unit [@@js.set "header"]

      val get_has_body : t -> bool [@@js.get "hasBody"]

      val set_has_body : t -> bool -> unit [@@js.set "hasBody"]

      val get_formatter_object_id : t -> RemoteObjectId.t
        [@@js.get "formatterObjectId"]

      val set_formatter_object_id : t -> RemoteObjectId.t -> unit
        [@@js.set "formatterObjectId"]

      val get_bind_remote_object_function_id : t -> RemoteObjectId.t
        [@@js.get "bindRemoteObjectFunctionId"]

      val set_bind_remote_object_function_id : t -> RemoteObjectId.t -> unit
        [@@js.set "bindRemoteObjectFunctionId"]

      val get_config_object_id : t -> RemoteObjectId.t
        [@@js.get "configObjectId"]

      val set_config_object_id : t -> RemoteObjectId.t -> unit
        [@@js.set "configObjectId"]
    end
    [@@js.scope "CustomPreview"]

    module PropertyPreview : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_name : t -> string [@@js.get "name"]

      val set_name : t -> string -> unit [@@js.set "name"]

      val get_type : t -> string [@@js.get "type"]

      val set_type : t -> string -> unit [@@js.set "type"]

      val get_value : t -> string [@@js.get "value"]

      val set_value : t -> string -> unit [@@js.set "value"]

      (* val get_value_preview : t -> ObjectPreview.t [@@js.get "valuePreview"] *)

      (* val set_value_preview : t -> ObjectPreview.t -> unit [@@js.set
         "valuePreview"] *)

      val get_subtype : t -> string [@@js.get "subtype"]

      val set_subtype : t -> string -> unit [@@js.set "subtype"]
    end
    [@@js.scope "PropertyPreview"]

    module EntryPreview : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      (* val get_key : t -> ObjectPreview.t [@@js.get "key"] *)

      (* val set_key : t -> ObjectPreview.t -> unit [@@js.set "key"] *)

      (* val get_value : t -> ObjectPreview.t [@@js.get "value"] *)

      (* val set_value : t -> ObjectPreview.t -> unit [@@js.set "value"] *)
    end
    (* [@@js.scope "EntryPreview"] *)

    module ObjectPreview : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_type : t -> string [@@js.get "type"]

      val set_type : t -> string -> unit [@@js.set "type"]

      val get_subtype : t -> string [@@js.get "subtype"]

      val set_subtype : t -> string -> unit [@@js.set "subtype"]

      val get_description : t -> string [@@js.get "description"]

      val set_description : t -> string -> unit [@@js.set "description"]

      val get_overflow : t -> bool [@@js.get "overflow"]

      val set_overflow : t -> bool -> unit [@@js.set "overflow"]

      val get_properties : t -> PropertyPreview.t list [@@js.get "properties"]

      val set_properties : t -> PropertyPreview.t list -> unit
        [@@js.set "properties"]

      val get_entries : t -> EntryPreview.t list [@@js.get "entries"]

      val set_entries : t -> EntryPreview.t list -> unit [@@js.set "entries"]
    end
    [@@js.scope "ObjectPreview"]

    module RemoteObject : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_type : t -> string [@@js.get "type"]

      val set_type : t -> string -> unit [@@js.set "type"]

      val get_subtype : t -> string [@@js.get "subtype"]

      val set_subtype : t -> string -> unit [@@js.set "subtype"]

      val get_class_name : t -> string [@@js.get "className"]

      val set_class_name : t -> string -> unit [@@js.set "className"]

      val get_value : t -> any [@@js.get "value"]

      val set_value : t -> any -> unit [@@js.set "value"]

      val get_unserializable_value : t -> UnserializableValue.t
        [@@js.get "unserializableValue"]

      val set_unserializable_value : t -> UnserializableValue.t -> unit
        [@@js.set "unserializableValue"]

      val get_description : t -> string [@@js.get "description"]

      val set_description : t -> string -> unit [@@js.set "description"]

      val get_object_id : t -> RemoteObjectId.t [@@js.get "objectId"]

      val set_object_id : t -> RemoteObjectId.t -> unit [@@js.set "objectId"]

      val get_preview : t -> ObjectPreview.t [@@js.get "preview"]

      val set_preview : t -> ObjectPreview.t -> unit [@@js.set "preview"]

      val get_custom_preview : t -> CustomPreview.t [@@js.get "customPreview"]

      val set_custom_preview : t -> CustomPreview.t -> unit
        [@@js.set "customPreview"]
    end
    [@@js.scope "RemoteObject"]

    module PropertyDescriptor : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_name : t -> string [@@js.get "name"]

      val set_name : t -> string -> unit [@@js.set "name"]

      val get_value : t -> RemoteObject.t [@@js.get "value"]

      val set_value : t -> RemoteObject.t -> unit [@@js.set "value"]

      val get_writable : t -> bool [@@js.get "writable"]

      val set_writable : t -> bool -> unit [@@js.set "writable"]

      val get_get : t -> RemoteObject.t [@@js.get "get"]

      val set_get : t -> RemoteObject.t -> unit [@@js.set "get"]

      val get_set : t -> RemoteObject.t [@@js.get "set"]

      val set_set : t -> RemoteObject.t -> unit [@@js.set "set"]

      val get_configurable : t -> bool [@@js.get "configurable"]

      val set_configurable : t -> bool -> unit [@@js.set "configurable"]

      val get_enumerable : t -> bool [@@js.get "enumerable"]

      val set_enumerable : t -> bool -> unit [@@js.set "enumerable"]

      val get_was_thrown : t -> bool [@@js.get "wasThrown"]

      val set_was_thrown : t -> bool -> unit [@@js.set "wasThrown"]

      val get_is_own : t -> bool [@@js.get "isOwn"]

      val set_is_own : t -> bool -> unit [@@js.set "isOwn"]

      val get_symbol : t -> RemoteObject.t [@@js.get "symbol"]

      val set_symbol : t -> RemoteObject.t -> unit [@@js.set "symbol"]
    end
    [@@js.scope "PropertyDescriptor"]

    module InternalPropertyDescriptor : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_name : t -> string [@@js.get "name"]

      val set_name : t -> string -> unit [@@js.set "name"]

      val get_value : t -> RemoteObject.t [@@js.get "value"]

      val set_value : t -> RemoteObject.t -> unit [@@js.set "value"]
    end
    [@@js.scope "InternalPropertyDescriptor"]

    module CallArgument : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_value : t -> any [@@js.get "value"]

      val set_value : t -> any -> unit [@@js.set "value"]

      val get_unserializable_value : t -> UnserializableValue.t
        [@@js.get "unserializableValue"]

      val set_unserializable_value : t -> UnserializableValue.t -> unit
        [@@js.set "unserializableValue"]

      val get_object_id : t -> RemoteObjectId.t [@@js.get "objectId"]

      val set_object_id : t -> RemoteObjectId.t -> unit [@@js.set "objectId"]
    end
    [@@js.scope "CallArgument"]

    module ExecutionContextId : sig
      type t = int

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module ExecutionContextDescription : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_id : t -> ExecutionContextId.t [@@js.get "id"]

      val set_id : t -> ExecutionContextId.t -> unit [@@js.set "id"]

      val get_origin : t -> string [@@js.get "origin"]

      val set_origin : t -> string -> unit [@@js.set "origin"]

      val get_name : t -> string [@@js.get "name"]

      val set_name : t -> string -> unit [@@js.set "name"]

      val get_aux_data : t -> AnonymousInterface0.t [@@js.get "auxData"]

      val set_aux_data : t -> AnonymousInterface0.t -> unit [@@js.set "auxData"]
    end
    [@@js.scope "ExecutionContextDescription"]

    module Timestamp : sig
      type t = int

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module CallFrame : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_function_name : t -> string [@@js.get "functionName"]

      val set_function_name : t -> string -> unit [@@js.set "functionName"]

      val get_script_id : t -> ScriptId.t [@@js.get "scriptId"]

      val set_script_id : t -> ScriptId.t -> unit [@@js.set "scriptId"]

      val get_url : t -> string [@@js.get "url"]

      val set_url : t -> string -> unit [@@js.set "url"]

      val get_line_number : t -> int [@@js.get "lineNumber"]

      val set_line_number : t -> int -> unit [@@js.set "lineNumber"]

      val get_column_number : t -> int [@@js.get "columnNumber"]

      val set_column_number : t -> int -> unit [@@js.set "columnNumber"]
    end
    [@@js.scope "CallFrame"]

    module UniqueDebuggerId : sig
      type t = string

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module StackTraceId : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_id : t -> string [@@js.get "id"]

      val set_id : t -> string -> unit [@@js.set "id"]

      val get_debugger_id : t -> UniqueDebuggerId.t [@@js.get "debuggerId"]

      val set_debugger_id : t -> UniqueDebuggerId.t -> unit
        [@@js.set "debuggerId"]
    end
    [@@js.scope "StackTraceId"]

    module StackTrace : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_description : t -> string [@@js.get "description"]

      val set_description : t -> string -> unit [@@js.set "description"]

      val get_call_frames : t -> CallFrame.t list [@@js.get "callFrames"]

      val set_call_frames : t -> CallFrame.t list -> unit
        [@@js.set "callFrames"]

      val get_parent : t -> t [@@js.get "parent"]

      val set_parent : t -> t -> unit [@@js.set "parent"]

      val get_parent_id : t -> StackTraceId.t [@@js.get "parentId"]

      val set_parent_id : t -> StackTraceId.t -> unit [@@js.set "parentId"]
    end
    [@@js.scope "StackTrace"]

    module ExceptionDetails : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_exception_id : t -> int [@@js.get "exceptionId"]

      val set_exception_id : t -> int -> unit [@@js.set "exceptionId"]

      val get_text : t -> string [@@js.get "text"]

      val set_text : t -> string -> unit [@@js.set "text"]

      val get_line_number : t -> int [@@js.get "lineNumber"]

      val set_line_number : t -> int -> unit [@@js.set "lineNumber"]

      val get_column_number : t -> int [@@js.get "columnNumber"]

      val set_column_number : t -> int -> unit [@@js.set "columnNumber"]

      val get_script_id : t -> ScriptId.t [@@js.get "scriptId"]

      val set_script_id : t -> ScriptId.t -> unit [@@js.set "scriptId"]

      val get_url : t -> string [@@js.get "url"]

      val set_url : t -> string -> unit [@@js.set "url"]

      val get_stack_trace : t -> StackTrace.t [@@js.get "stackTrace"]

      val set_stack_trace : t -> StackTrace.t -> unit [@@js.set "stackTrace"]

      val get_exception : t -> RemoteObject.t [@@js.get "exception"]

      val set_exception : t -> RemoteObject.t -> unit [@@js.set "exception"]

      val get_execution_context_id : t -> ExecutionContextId.t
        [@@js.get "executionContextId"]

      val set_execution_context_id : t -> ExecutionContextId.t -> unit
        [@@js.set "executionContextId"]
    end
    [@@js.scope "ExceptionDetails"]

    module EvaluateParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_expression : t -> string [@@js.get "expression"]

      val set_expression : t -> string -> unit [@@js.set "expression"]

      val get_object_group : t -> string [@@js.get "objectGroup"]

      val set_object_group : t -> string -> unit [@@js.set "objectGroup"]

      val get_include_command_line_api : t -> bool
        [@@js.get "includeCommandLineAPI"]

      val set_include_command_line_api : t -> bool -> unit
        [@@js.set "includeCommandLineAPI"]

      val get_silent : t -> bool [@@js.get "silent"]

      val set_silent : t -> bool -> unit [@@js.set "silent"]

      val get_context_id : t -> ExecutionContextId.t [@@js.get "contextId"]

      val set_context_id : t -> ExecutionContextId.t -> unit
        [@@js.set "contextId"]

      val get_return_by_value : t -> bool [@@js.get "returnByValue"]

      val set_return_by_value : t -> bool -> unit [@@js.set "returnByValue"]

      val get_generate_preview : t -> bool [@@js.get "generatePreview"]

      val set_generate_preview : t -> bool -> unit [@@js.set "generatePreview"]

      val get_user_gesture : t -> bool [@@js.get "userGesture"]

      val set_user_gesture : t -> bool -> unit [@@js.set "userGesture"]

      val get_await_promise : t -> bool [@@js.get "awaitPromise"]

      val set_await_promise : t -> bool -> unit [@@js.set "awaitPromise"]
    end
    [@@js.scope "EvaluateParameterType"]

    module AwaitPromiseParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_promise_object_id : t -> RemoteObjectId.t
        [@@js.get "promiseObjectId"]

      val set_promise_object_id : t -> RemoteObjectId.t -> unit
        [@@js.set "promiseObjectId"]

      val get_return_by_value : t -> bool [@@js.get "returnByValue"]

      val set_return_by_value : t -> bool -> unit [@@js.set "returnByValue"]

      val get_generate_preview : t -> bool [@@js.get "generatePreview"]

      val set_generate_preview : t -> bool -> unit [@@js.set "generatePreview"]
    end
    [@@js.scope "AwaitPromiseParameterType"]

    module CallFunctionOnParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_function_declaration : t -> string
        [@@js.get "functionDeclaration"]

      val set_function_declaration : t -> string -> unit
        [@@js.set "functionDeclaration"]

      val get_object_id : t -> RemoteObjectId.t [@@js.get "objectId"]

      val set_object_id : t -> RemoteObjectId.t -> unit [@@js.set "objectId"]

      val get_arguments : t -> CallArgument.t list [@@js.get "arguments"]

      val set_arguments : t -> CallArgument.t list -> unit
        [@@js.set "arguments"]

      val get_silent : t -> bool [@@js.get "silent"]

      val set_silent : t -> bool -> unit [@@js.set "silent"]

      val get_return_by_value : t -> bool [@@js.get "returnByValue"]

      val set_return_by_value : t -> bool -> unit [@@js.set "returnByValue"]

      val get_generate_preview : t -> bool [@@js.get "generatePreview"]

      val set_generate_preview : t -> bool -> unit [@@js.set "generatePreview"]

      val get_user_gesture : t -> bool [@@js.get "userGesture"]

      val set_user_gesture : t -> bool -> unit [@@js.set "userGesture"]

      val get_await_promise : t -> bool [@@js.get "awaitPromise"]

      val set_await_promise : t -> bool -> unit [@@js.set "awaitPromise"]

      val get_execution_context_id : t -> ExecutionContextId.t
        [@@js.get "executionContextId"]

      val set_execution_context_id : t -> ExecutionContextId.t -> unit
        [@@js.set "executionContextId"]

      val get_object_group : t -> string [@@js.get "objectGroup"]

      val set_object_group : t -> string -> unit [@@js.set "objectGroup"]
    end
    [@@js.scope "CallFunctionOnParameterType"]

    module GetPropertiesParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_object_id : t -> RemoteObjectId.t [@@js.get "objectId"]

      val set_object_id : t -> RemoteObjectId.t -> unit [@@js.set "objectId"]

      val get_own_properties : t -> bool [@@js.get "ownProperties"]

      val set_own_properties : t -> bool -> unit [@@js.set "ownProperties"]

      val get_accessor_properties_only : t -> bool
        [@@js.get "accessorPropertiesOnly"]

      val set_accessor_properties_only : t -> bool -> unit
        [@@js.set "accessorPropertiesOnly"]

      val get_generate_preview : t -> bool [@@js.get "generatePreview"]

      val set_generate_preview : t -> bool -> unit [@@js.set "generatePreview"]
    end
    [@@js.scope "GetPropertiesParameterType"]

    module ReleaseObjectParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_object_id : t -> RemoteObjectId.t [@@js.get "objectId"]

      val set_object_id : t -> RemoteObjectId.t -> unit [@@js.set "objectId"]
    end
    [@@js.scope "ReleaseObjectParameterType"]

    module ReleaseObjectGroupParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_object_group : t -> string [@@js.get "objectGroup"]

      val set_object_group : t -> string -> unit [@@js.set "objectGroup"]
    end
    [@@js.scope "ReleaseObjectGroupParameterType"]

    module SetCustomObjectFormatterEnabledParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_enabled : t -> bool [@@js.get "enabled"]

      val set_enabled : t -> bool -> unit [@@js.set "enabled"]
    end
    [@@js.scope "SetCustomObjectFormatterEnabledParameterType"]

    module CompileScriptParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_expression : t -> string [@@js.get "expression"]

      val set_expression : t -> string -> unit [@@js.set "expression"]

      val get_source_url : t -> string [@@js.get "sourceURL"]

      val set_source_url : t -> string -> unit [@@js.set "sourceURL"]

      val get_persist_script : t -> bool [@@js.get "persistScript"]

      val set_persist_script : t -> bool -> unit [@@js.set "persistScript"]

      val get_execution_context_id : t -> ExecutionContextId.t
        [@@js.get "executionContextId"]

      val set_execution_context_id : t -> ExecutionContextId.t -> unit
        [@@js.set "executionContextId"]
    end
    [@@js.scope "CompileScriptParameterType"]

    module RunScriptParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_script_id : t -> ScriptId.t [@@js.get "scriptId"]

      val set_script_id : t -> ScriptId.t -> unit [@@js.set "scriptId"]

      val get_execution_context_id : t -> ExecutionContextId.t
        [@@js.get "executionContextId"]

      val set_execution_context_id : t -> ExecutionContextId.t -> unit
        [@@js.set "executionContextId"]

      val get_object_group : t -> string [@@js.get "objectGroup"]

      val set_object_group : t -> string -> unit [@@js.set "objectGroup"]

      val get_silent : t -> bool [@@js.get "silent"]

      val set_silent : t -> bool -> unit [@@js.set "silent"]

      val get_include_command_line_api : t -> bool
        [@@js.get "includeCommandLineAPI"]

      val set_include_command_line_api : t -> bool -> unit
        [@@js.set "includeCommandLineAPI"]

      val get_return_by_value : t -> bool [@@js.get "returnByValue"]

      val set_return_by_value : t -> bool -> unit [@@js.set "returnByValue"]

      val get_generate_preview : t -> bool [@@js.get "generatePreview"]

      val set_generate_preview : t -> bool -> unit [@@js.set "generatePreview"]

      val get_await_promise : t -> bool [@@js.get "awaitPromise"]

      val set_await_promise : t -> bool -> unit [@@js.set "awaitPromise"]
    end
    [@@js.scope "RunScriptParameterType"]

    module QueryObjectsParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_prototype_object_id : t -> RemoteObjectId.t
        [@@js.get "prototypeObjectId"]

      val set_prototype_object_id : t -> RemoteObjectId.t -> unit
        [@@js.set "prototypeObjectId"]
    end
    [@@js.scope "QueryObjectsParameterType"]

    module GlobalLexicalScopeNamesParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_execution_context_id : t -> ExecutionContextId.t
        [@@js.get "executionContextId"]

      val set_execution_context_id : t -> ExecutionContextId.t -> unit
        [@@js.set "executionContextId"]
    end
    [@@js.scope "GlobalLexicalScopeNamesParameterType"]

    module EvaluateReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> RemoteObject.t [@@js.get "result"]

      val set_result : t -> RemoteObject.t -> unit [@@js.set "result"]

      val get_exception_details : t -> ExceptionDetails.t
        [@@js.get "exceptionDetails"]

      val set_exception_details : t -> ExceptionDetails.t -> unit
        [@@js.set "exceptionDetails"]
    end
    [@@js.scope "EvaluateReturnType"]

    module AwaitPromiseReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> RemoteObject.t [@@js.get "result"]

      val set_result : t -> RemoteObject.t -> unit [@@js.set "result"]

      val get_exception_details : t -> ExceptionDetails.t
        [@@js.get "exceptionDetails"]

      val set_exception_details : t -> ExceptionDetails.t -> unit
        [@@js.set "exceptionDetails"]
    end
    [@@js.scope "AwaitPromiseReturnType"]

    module CallFunctionOnReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> RemoteObject.t [@@js.get "result"]

      val set_result : t -> RemoteObject.t -> unit [@@js.set "result"]

      val get_exception_details : t -> ExceptionDetails.t
        [@@js.get "exceptionDetails"]

      val set_exception_details : t -> ExceptionDetails.t -> unit
        [@@js.set "exceptionDetails"]
    end
    [@@js.scope "CallFunctionOnReturnType"]

    module GetPropertiesReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> PropertyDescriptor.t list [@@js.get "result"]

      val set_result : t -> PropertyDescriptor.t list -> unit
        [@@js.set "result"]

      val get_internal_properties : t -> InternalPropertyDescriptor.t list
        [@@js.get "internalProperties"]

      val set_internal_properties
        :  t
        -> InternalPropertyDescriptor.t list
        -> unit
        [@@js.set "internalProperties"]

      val get_exception_details : t -> ExceptionDetails.t
        [@@js.get "exceptionDetails"]

      val set_exception_details : t -> ExceptionDetails.t -> unit
        [@@js.set "exceptionDetails"]
    end
    [@@js.scope "GetPropertiesReturnType"]

    module CompileScriptReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_script_id : t -> ScriptId.t [@@js.get "scriptId"]

      val set_script_id : t -> ScriptId.t -> unit [@@js.set "scriptId"]

      val get_exception_details : t -> ExceptionDetails.t
        [@@js.get "exceptionDetails"]

      val set_exception_details : t -> ExceptionDetails.t -> unit
        [@@js.set "exceptionDetails"]
    end
    [@@js.scope "CompileScriptReturnType"]

    module RunScriptReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> RemoteObject.t [@@js.get "result"]

      val set_result : t -> RemoteObject.t -> unit [@@js.set "result"]

      val get_exception_details : t -> ExceptionDetails.t
        [@@js.get "exceptionDetails"]

      val set_exception_details : t -> ExceptionDetails.t -> unit
        [@@js.set "exceptionDetails"]
    end
    [@@js.scope "RunScriptReturnType"]

    module QueryObjectsReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_objects : t -> RemoteObject.t [@@js.get "objects"]

      val set_objects : t -> RemoteObject.t -> unit [@@js.set "objects"]
    end
    [@@js.scope "QueryObjectsReturnType"]

    module GlobalLexicalScopeNamesReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_names : t -> string list [@@js.get "names"]

      val set_names : t -> string list -> unit [@@js.set "names"]
    end
    [@@js.scope "GlobalLexicalScopeNamesReturnType"]

    module ExecutionContextCreatedEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_context : t -> ExecutionContextDescription.t [@@js.get "context"]

      val set_context : t -> ExecutionContextDescription.t -> unit
        [@@js.set "context"]
    end
    [@@js.scope "ExecutionContextCreatedEventDataType"]

    module ExecutionContextDestroyedEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_execution_context_id : t -> ExecutionContextId.t
        [@@js.get "executionContextId"]

      val set_execution_context_id : t -> ExecutionContextId.t -> unit
        [@@js.set "executionContextId"]
    end
    [@@js.scope "ExecutionContextDestroyedEventDataType"]

    module ExceptionThrownEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_timestamp : t -> Timestamp.t [@@js.get "timestamp"]

      val set_timestamp : t -> Timestamp.t -> unit [@@js.set "timestamp"]

      val get_exception_details : t -> ExceptionDetails.t
        [@@js.get "exceptionDetails"]

      val set_exception_details : t -> ExceptionDetails.t -> unit
        [@@js.set "exceptionDetails"]
    end
    [@@js.scope "ExceptionThrownEventDataType"]

    module ExceptionRevokedEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_reason : t -> string [@@js.get "reason"]

      val set_reason : t -> string -> unit [@@js.set "reason"]

      val get_exception_id : t -> int [@@js.get "exceptionId"]

      val set_exception_id : t -> int -> unit [@@js.set "exceptionId"]
    end
    [@@js.scope "ExceptionRevokedEventDataType"]

    module ConsoleAPICalledEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_type : t -> string [@@js.get "type"]

      val set_type : t -> string -> unit [@@js.set "type"]

      val get_args : t -> RemoteObject.t list [@@js.get "args"]

      val set_args : t -> RemoteObject.t list -> unit [@@js.set "args"]

      val get_execution_context_id : t -> ExecutionContextId.t
        [@@js.get "executionContextId"]

      val set_execution_context_id : t -> ExecutionContextId.t -> unit
        [@@js.set "executionContextId"]

      val get_timestamp : t -> Timestamp.t [@@js.get "timestamp"]

      val set_timestamp : t -> Timestamp.t -> unit [@@js.set "timestamp"]

      val get_stack_trace : t -> StackTrace.t [@@js.get "stackTrace"]

      val set_stack_trace : t -> StackTrace.t -> unit [@@js.set "stackTrace"]

      val get_context : t -> string [@@js.get "context"]

      val set_context : t -> string -> unit [@@js.set "context"]
    end
    [@@js.scope "ConsoleAPICalledEventDataType"]

    module InspectRequestedEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_object : t -> RemoteObject.t [@@js.get "object"]

      val set_object : t -> RemoteObject.t -> unit [@@js.set "object"]

      val get_hints : t -> AnonymousInterface0.t [@@js.get "hints"]

      val set_hints : t -> AnonymousInterface0.t -> unit [@@js.set "hints"]
    end
    [@@js.scope "InspectRequestedEventDataType"]
  end
  [@@js.scope "Runtime"]

  module Debugger : sig
    module BreakpointId : sig
      type t = string

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module CallFrameId : sig
      type t = string

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module Location : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_script_id : t -> Runtime.ScriptId.t [@@js.get "scriptId"]

      val set_script_id : t -> Runtime.ScriptId.t -> unit [@@js.set "scriptId"]

      val get_line_number : t -> int [@@js.get "lineNumber"]

      val set_line_number : t -> int -> unit [@@js.set "lineNumber"]

      val get_column_number : t -> int [@@js.get "columnNumber"]

      val set_column_number : t -> int -> unit [@@js.set "columnNumber"]
    end
    [@@js.scope "Location"]

    module ScriptPosition : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_line_number : t -> int [@@js.get "lineNumber"]

      val set_line_number : t -> int -> unit [@@js.set "lineNumber"]

      val get_column_number : t -> int [@@js.get "columnNumber"]

      val set_column_number : t -> int -> unit [@@js.set "columnNumber"]
    end
    [@@js.scope "ScriptPosition"]

    module Scope : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_type : t -> string [@@js.get "type"]

      val set_type : t -> string -> unit [@@js.set "type"]

      val get_object : t -> Runtime.RemoteObject.t [@@js.get "object"]

      val set_object : t -> Runtime.RemoteObject.t -> unit [@@js.set "object"]

      val get_name : t -> string [@@js.get "name"]

      val set_name : t -> string -> unit [@@js.set "name"]

      val get_start_location : t -> Location.t [@@js.get "startLocation"]

      val set_start_location : t -> Location.t -> unit
        [@@js.set "startLocation"]

      val get_end_location : t -> Location.t [@@js.get "endLocation"]

      val set_end_location : t -> Location.t -> unit [@@js.set "endLocation"]
    end
    [@@js.scope "Scope"]

    module CallFrame : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_call_frame_id : t -> CallFrameId.t [@@js.get "callFrameId"]

      val set_call_frame_id : t -> CallFrameId.t -> unit
        [@@js.set "callFrameId"]

      val get_function_name : t -> string [@@js.get "functionName"]

      val set_function_name : t -> string -> unit [@@js.set "functionName"]

      val get_function_location : t -> Location.t [@@js.get "functionLocation"]

      val set_function_location : t -> Location.t -> unit
        [@@js.set "functionLocation"]

      val get_location : t -> Location.t [@@js.get "location"]

      val set_location : t -> Location.t -> unit [@@js.set "location"]

      val get_url : t -> string [@@js.get "url"]

      val set_url : t -> string -> unit [@@js.set "url"]

      val get_scope_chain : t -> Scope.t list [@@js.get "scopeChain"]

      val set_scope_chain : t -> Scope.t list -> unit [@@js.set "scopeChain"]

      val get_this : t -> Runtime.RemoteObject.t [@@js.get "this"]

      val set_this : t -> Runtime.RemoteObject.t -> unit [@@js.set "this"]

      val get_return_value : t -> Runtime.RemoteObject.t
        [@@js.get "returnValue"]

      val set_return_value : t -> Runtime.RemoteObject.t -> unit
        [@@js.set "returnValue"]
    end
    [@@js.scope "CallFrame"]

    module SearchMatch : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_line_number : t -> int [@@js.get "lineNumber"]

      val set_line_number : t -> int -> unit [@@js.set "lineNumber"]

      val get_line_content : t -> string [@@js.get "lineContent"]

      val set_line_content : t -> string -> unit [@@js.set "lineContent"]
    end
    [@@js.scope "SearchMatch"]

    module BreakLocation : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_script_id : t -> Runtime.ScriptId.t [@@js.get "scriptId"]

      val set_script_id : t -> Runtime.ScriptId.t -> unit [@@js.set "scriptId"]

      val get_line_number : t -> int [@@js.get "lineNumber"]

      val set_line_number : t -> int -> unit [@@js.set "lineNumber"]

      val get_column_number : t -> int [@@js.get "columnNumber"]

      val set_column_number : t -> int -> unit [@@js.set "columnNumber"]

      val get_type : t -> string [@@js.get "type"]

      val set_type : t -> string -> unit [@@js.set "type"]
    end
    [@@js.scope "BreakLocation"]

    module SetBreakpointsActiveParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_active : t -> bool [@@js.get "active"]

      val set_active : t -> bool -> unit [@@js.set "active"]
    end
    [@@js.scope "SetBreakpointsActiveParameterType"]

    module SetSkipAllPausesParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_skip : t -> bool [@@js.get "skip"]

      val set_skip : t -> bool -> unit [@@js.set "skip"]
    end
    [@@js.scope "SetSkipAllPausesParameterType"]

    module SetBreakpointByUrlParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_line_number : t -> int [@@js.get "lineNumber"]

      val set_line_number : t -> int -> unit [@@js.set "lineNumber"]

      val get_url : t -> string [@@js.get "url"]

      val set_url : t -> string -> unit [@@js.set "url"]

      val get_url_regex : t -> string [@@js.get "urlRegex"]

      val set_url_regex : t -> string -> unit [@@js.set "urlRegex"]

      val get_script_hash : t -> string [@@js.get "scriptHash"]

      val set_script_hash : t -> string -> unit [@@js.set "scriptHash"]

      val get_column_number : t -> int [@@js.get "columnNumber"]

      val set_column_number : t -> int -> unit [@@js.set "columnNumber"]

      val get_condition : t -> string [@@js.get "condition"]

      val set_condition : t -> string -> unit [@@js.set "condition"]
    end
    [@@js.scope "SetBreakpointByUrlParameterType"]

    module SetBreakpointParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_location : t -> Location.t [@@js.get "location"]

      val set_location : t -> Location.t -> unit [@@js.set "location"]

      val get_condition : t -> string [@@js.get "condition"]

      val set_condition : t -> string -> unit [@@js.set "condition"]
    end
    [@@js.scope "SetBreakpointParameterType"]

    module RemoveBreakpointParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_breakpoint_id : t -> BreakpointId.t [@@js.get "breakpointId"]

      val set_breakpoint_id : t -> BreakpointId.t -> unit
        [@@js.set "breakpointId"]
    end
    [@@js.scope "RemoveBreakpointParameterType"]

    module GetPossibleBreakpointsParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_start : t -> Location.t [@@js.get "start"]

      val set_start : t -> Location.t -> unit [@@js.set "start"]

      val get_end : t -> Location.t [@@js.get "end"]

      val set_end : t -> Location.t -> unit [@@js.set "end"]

      val get_restrict_to_function : t -> bool [@@js.get "restrictToFunction"]

      val set_restrict_to_function : t -> bool -> unit
        [@@js.set "restrictToFunction"]
    end
    [@@js.scope "GetPossibleBreakpointsParameterType"]

    module ContinueToLocationParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_location : t -> Location.t [@@js.get "location"]

      val set_location : t -> Location.t -> unit [@@js.set "location"]

      val get_target_call_frames : t -> string [@@js.get "targetCallFrames"]

      val set_target_call_frames : t -> string -> unit
        [@@js.set "targetCallFrames"]
    end
    [@@js.scope "ContinueToLocationParameterType"]

    module PauseOnAsyncCallParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_parent_stack_trace_id : t -> Runtime.StackTraceId.t
        [@@js.get "parentStackTraceId"]

      val set_parent_stack_trace_id : t -> Runtime.StackTraceId.t -> unit
        [@@js.set "parentStackTraceId"]
    end
    [@@js.scope "PauseOnAsyncCallParameterType"]

    module StepIntoParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_break_on_async_call : t -> bool [@@js.get "breakOnAsyncCall"]

      val set_break_on_async_call : t -> bool -> unit
        [@@js.set "breakOnAsyncCall"]
    end
    [@@js.scope "StepIntoParameterType"]

    module GetStackTraceParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_stack_trace_id : t -> Runtime.StackTraceId.t
        [@@js.get "stackTraceId"]

      val set_stack_trace_id : t -> Runtime.StackTraceId.t -> unit
        [@@js.set "stackTraceId"]
    end
    [@@js.scope "GetStackTraceParameterType"]

    module SearchInContentParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_script_id : t -> Runtime.ScriptId.t [@@js.get "scriptId"]

      val set_script_id : t -> Runtime.ScriptId.t -> unit [@@js.set "scriptId"]

      val get_query : t -> string [@@js.get "query"]

      val set_query : t -> string -> unit [@@js.set "query"]

      val get_case_sensitive : t -> bool [@@js.get "caseSensitive"]

      val set_case_sensitive : t -> bool -> unit [@@js.set "caseSensitive"]

      val get_is_regex : t -> bool [@@js.get "isRegex"]

      val set_is_regex : t -> bool -> unit [@@js.set "isRegex"]
    end
    [@@js.scope "SearchInContentParameterType"]

    module SetScriptSourceParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_script_id : t -> Runtime.ScriptId.t [@@js.get "scriptId"]

      val set_script_id : t -> Runtime.ScriptId.t -> unit [@@js.set "scriptId"]

      val get_script_source : t -> string [@@js.get "scriptSource"]

      val set_script_source : t -> string -> unit [@@js.set "scriptSource"]

      val get_dry_run : t -> bool [@@js.get "dryRun"]

      val set_dry_run : t -> bool -> unit [@@js.set "dryRun"]
    end
    [@@js.scope "SetScriptSourceParameterType"]

    module RestartFrameParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_call_frame_id : t -> CallFrameId.t [@@js.get "callFrameId"]

      val set_call_frame_id : t -> CallFrameId.t -> unit
        [@@js.set "callFrameId"]
    end
    [@@js.scope "RestartFrameParameterType"]

    module GetScriptSourceParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_script_id : t -> Runtime.ScriptId.t [@@js.get "scriptId"]

      val set_script_id : t -> Runtime.ScriptId.t -> unit [@@js.set "scriptId"]
    end
    [@@js.scope "GetScriptSourceParameterType"]

    module SetPauseOnExceptionsParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_state : t -> string [@@js.get "state"]

      val set_state : t -> string -> unit [@@js.set "state"]
    end
    [@@js.scope "SetPauseOnExceptionsParameterType"]

    module EvaluateOnCallFrameParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_call_frame_id : t -> CallFrameId.t [@@js.get "callFrameId"]

      val set_call_frame_id : t -> CallFrameId.t -> unit
        [@@js.set "callFrameId"]

      val get_expression : t -> string [@@js.get "expression"]

      val set_expression : t -> string -> unit [@@js.set "expression"]

      val get_object_group : t -> string [@@js.get "objectGroup"]

      val set_object_group : t -> string -> unit [@@js.set "objectGroup"]

      val get_include_command_line_api : t -> bool
        [@@js.get "includeCommandLineAPI"]

      val set_include_command_line_api : t -> bool -> unit
        [@@js.set "includeCommandLineAPI"]

      val get_silent : t -> bool [@@js.get "silent"]

      val set_silent : t -> bool -> unit [@@js.set "silent"]

      val get_return_by_value : t -> bool [@@js.get "returnByValue"]

      val set_return_by_value : t -> bool -> unit [@@js.set "returnByValue"]

      val get_generate_preview : t -> bool [@@js.get "generatePreview"]

      val set_generate_preview : t -> bool -> unit [@@js.set "generatePreview"]

      val get_throw_on_side_effect : t -> bool [@@js.get "throwOnSideEffect"]

      val set_throw_on_side_effect : t -> bool -> unit
        [@@js.set "throwOnSideEffect"]
    end
    [@@js.scope "EvaluateOnCallFrameParameterType"]

    module SetVariableValueParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_scope_number : t -> int [@@js.get "scopeNumber"]

      val set_scope_number : t -> int -> unit [@@js.set "scopeNumber"]

      val get_variable_name : t -> string [@@js.get "variableName"]

      val set_variable_name : t -> string -> unit [@@js.set "variableName"]

      val get_new_value : t -> Runtime.CallArgument.t [@@js.get "newValue"]

      val set_new_value : t -> Runtime.CallArgument.t -> unit
        [@@js.set "newValue"]

      val get_call_frame_id : t -> CallFrameId.t [@@js.get "callFrameId"]

      val set_call_frame_id : t -> CallFrameId.t -> unit
        [@@js.set "callFrameId"]
    end
    [@@js.scope "SetVariableValueParameterType"]

    module SetReturnValueParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_new_value : t -> Runtime.CallArgument.t [@@js.get "newValue"]

      val set_new_value : t -> Runtime.CallArgument.t -> unit
        [@@js.set "newValue"]
    end
    [@@js.scope "SetReturnValueParameterType"]

    module SetAsyncCallStackDepthParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_max_depth : t -> int [@@js.get "maxDepth"]

      val set_max_depth : t -> int -> unit [@@js.set "maxDepth"]
    end
    [@@js.scope "SetAsyncCallStackDepthParameterType"]

    module SetBlackboxPatternsParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_patterns : t -> string list [@@js.get "patterns"]

      val set_patterns : t -> string list -> unit [@@js.set "patterns"]
    end
    [@@js.scope "SetBlackboxPatternsParameterType"]

    module SetBlackboxedRangesParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_script_id : t -> Runtime.ScriptId.t [@@js.get "scriptId"]

      val set_script_id : t -> Runtime.ScriptId.t -> unit [@@js.set "scriptId"]

      val get_positions : t -> ScriptPosition.t list [@@js.get "positions"]

      val set_positions : t -> ScriptPosition.t list -> unit
        [@@js.set "positions"]
    end
    [@@js.scope "SetBlackboxedRangesParameterType"]

    module EnableReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_debugger_id : t -> Runtime.UniqueDebuggerId.t
        [@@js.get "debuggerId"]

      val set_debugger_id : t -> Runtime.UniqueDebuggerId.t -> unit
        [@@js.set "debuggerId"]
    end
    [@@js.scope "EnableReturnType"]

    module SetBreakpointByUrlReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_breakpoint_id : t -> BreakpointId.t [@@js.get "breakpointId"]

      val set_breakpoint_id : t -> BreakpointId.t -> unit
        [@@js.set "breakpointId"]

      val get_locations : t -> Location.t list [@@js.get "locations"]

      val set_locations : t -> Location.t list -> unit [@@js.set "locations"]
    end
    [@@js.scope "SetBreakpointByUrlReturnType"]

    module SetBreakpointReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_breakpoint_id : t -> BreakpointId.t [@@js.get "breakpointId"]

      val set_breakpoint_id : t -> BreakpointId.t -> unit
        [@@js.set "breakpointId"]

      val get_actual_location : t -> Location.t [@@js.get "actualLocation"]

      val set_actual_location : t -> Location.t -> unit
        [@@js.set "actualLocation"]
    end
    [@@js.scope "SetBreakpointReturnType"]

    module GetPossibleBreakpointsReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_locations : t -> BreakLocation.t list [@@js.get "locations"]

      val set_locations : t -> BreakLocation.t list -> unit
        [@@js.set "locations"]
    end
    [@@js.scope "GetPossibleBreakpointsReturnType"]

    module GetStackTraceReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_stack_trace : t -> Runtime.StackTrace.t [@@js.get "stackTrace"]

      val set_stack_trace : t -> Runtime.StackTrace.t -> unit
        [@@js.set "stackTrace"]
    end
    [@@js.scope "GetStackTraceReturnType"]

    module SearchInContentReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> SearchMatch.t list [@@js.get "result"]

      val set_result : t -> SearchMatch.t list -> unit [@@js.set "result"]
    end
    [@@js.scope "SearchInContentReturnType"]

    module SetScriptSourceReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_call_frames : t -> CallFrame.t list [@@js.get "callFrames"]

      val set_call_frames : t -> CallFrame.t list -> unit
        [@@js.set "callFrames"]

      val get_stack_changed : t -> bool [@@js.get "stackChanged"]

      val set_stack_changed : t -> bool -> unit [@@js.set "stackChanged"]

      val get_async_stack_trace : t -> Runtime.StackTrace.t
        [@@js.get "asyncStackTrace"]

      val set_async_stack_trace : t -> Runtime.StackTrace.t -> unit
        [@@js.set "asyncStackTrace"]

      val get_async_stack_trace_id : t -> Runtime.StackTraceId.t
        [@@js.get "asyncStackTraceId"]

      val set_async_stack_trace_id : t -> Runtime.StackTraceId.t -> unit
        [@@js.set "asyncStackTraceId"]

      val get_exception_details : t -> Runtime.ExceptionDetails.t
        [@@js.get "exceptionDetails"]

      val set_exception_details : t -> Runtime.ExceptionDetails.t -> unit
        [@@js.set "exceptionDetails"]
    end
    [@@js.scope "SetScriptSourceReturnType"]

    module RestartFrameReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_call_frames : t -> CallFrame.t list [@@js.get "callFrames"]

      val set_call_frames : t -> CallFrame.t list -> unit
        [@@js.set "callFrames"]

      val get_async_stack_trace : t -> Runtime.StackTrace.t
        [@@js.get "asyncStackTrace"]

      val set_async_stack_trace : t -> Runtime.StackTrace.t -> unit
        [@@js.set "asyncStackTrace"]

      val get_async_stack_trace_id : t -> Runtime.StackTraceId.t
        [@@js.get "asyncStackTraceId"]

      val set_async_stack_trace_id : t -> Runtime.StackTraceId.t -> unit
        [@@js.set "asyncStackTraceId"]
    end
    [@@js.scope "RestartFrameReturnType"]

    module GetScriptSourceReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_script_source : t -> string [@@js.get "scriptSource"]

      val set_script_source : t -> string -> unit [@@js.set "scriptSource"]
    end
    [@@js.scope "GetScriptSourceReturnType"]

    module EvaluateOnCallFrameReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> Runtime.RemoteObject.t [@@js.get "result"]

      val set_result : t -> Runtime.RemoteObject.t -> unit [@@js.set "result"]

      val get_exception_details : t -> Runtime.ExceptionDetails.t
        [@@js.get "exceptionDetails"]

      val set_exception_details : t -> Runtime.ExceptionDetails.t -> unit
        [@@js.set "exceptionDetails"]
    end
    [@@js.scope "EvaluateOnCallFrameReturnType"]

    module ScriptParsedEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_script_id : t -> Runtime.ScriptId.t [@@js.get "scriptId"]

      val set_script_id : t -> Runtime.ScriptId.t -> unit [@@js.set "scriptId"]

      val get_url : t -> string [@@js.get "url"]

      val set_url : t -> string -> unit [@@js.set "url"]

      val get_start_line : t -> int [@@js.get "startLine"]

      val set_start_line : t -> int -> unit [@@js.set "startLine"]

      val get_start_column : t -> int [@@js.get "startColumn"]

      val set_start_column : t -> int -> unit [@@js.set "startColumn"]

      val get_end_line : t -> int [@@js.get "endLine"]

      val set_end_line : t -> int -> unit [@@js.set "endLine"]

      val get_end_column : t -> int [@@js.get "endColumn"]

      val set_end_column : t -> int -> unit [@@js.set "endColumn"]

      val get_execution_context_id : t -> Runtime.ExecutionContextId.t
        [@@js.get "executionContextId"]

      val set_execution_context_id : t -> Runtime.ExecutionContextId.t -> unit
        [@@js.set "executionContextId"]

      val get_hash : t -> string [@@js.get "hash"]

      val set_hash : t -> string -> unit [@@js.set "hash"]

      val get_execution_context_aux_data : t -> AnonymousInterface0.t
        [@@js.get "executionContextAuxData"]

      val set_execution_context_aux_data : t -> AnonymousInterface0.t -> unit
        [@@js.set "executionContextAuxData"]

      val get_is_live_edit : t -> bool [@@js.get "isLiveEdit"]

      val set_is_live_edit : t -> bool -> unit [@@js.set "isLiveEdit"]

      val get_source_map_url : t -> string [@@js.get "sourceMapURL"]

      val set_source_map_url : t -> string -> unit [@@js.set "sourceMapURL"]

      val get_has_source_url : t -> bool [@@js.get "hasSourceURL"]

      val set_has_source_url : t -> bool -> unit [@@js.set "hasSourceURL"]

      val get_is_module : t -> bool [@@js.get "isModule"]

      val set_is_module : t -> bool -> unit [@@js.set "isModule"]

      val get_length : t -> int [@@js.get "length"]

      val set_length : t -> int -> unit [@@js.set "length"]

      val get_stack_trace : t -> Runtime.StackTrace.t [@@js.get "stackTrace"]

      val set_stack_trace : t -> Runtime.StackTrace.t -> unit
        [@@js.set "stackTrace"]
    end
    [@@js.scope "ScriptParsedEventDataType"]

    module ScriptFailedToParseEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_script_id : t -> Runtime.ScriptId.t [@@js.get "scriptId"]

      val set_script_id : t -> Runtime.ScriptId.t -> unit [@@js.set "scriptId"]

      val get_url : t -> string [@@js.get "url"]

      val set_url : t -> string -> unit [@@js.set "url"]

      val get_start_line : t -> int [@@js.get "startLine"]

      val set_start_line : t -> int -> unit [@@js.set "startLine"]

      val get_start_column : t -> int [@@js.get "startColumn"]

      val set_start_column : t -> int -> unit [@@js.set "startColumn"]

      val get_end_line : t -> int [@@js.get "endLine"]

      val set_end_line : t -> int -> unit [@@js.set "endLine"]

      val get_end_column : t -> int [@@js.get "endColumn"]

      val set_end_column : t -> int -> unit [@@js.set "endColumn"]

      val get_execution_context_id : t -> Runtime.ExecutionContextId.t
        [@@js.get "executionContextId"]

      val set_execution_context_id : t -> Runtime.ExecutionContextId.t -> unit
        [@@js.set "executionContextId"]

      val get_hash : t -> string [@@js.get "hash"]

      val set_hash : t -> string -> unit [@@js.set "hash"]

      val get_execution_context_aux_data : t -> AnonymousInterface0.t
        [@@js.get "executionContextAuxData"]

      val set_execution_context_aux_data : t -> AnonymousInterface0.t -> unit
        [@@js.set "executionContextAuxData"]

      val get_source_map_url : t -> string [@@js.get "sourceMapURL"]

      val set_source_map_url : t -> string -> unit [@@js.set "sourceMapURL"]

      val get_has_source_url : t -> bool [@@js.get "hasSourceURL"]

      val set_has_source_url : t -> bool -> unit [@@js.set "hasSourceURL"]

      val get_is_module : t -> bool [@@js.get "isModule"]

      val set_is_module : t -> bool -> unit [@@js.set "isModule"]

      val get_length : t -> int [@@js.get "length"]

      val set_length : t -> int -> unit [@@js.set "length"]

      val get_stack_trace : t -> Runtime.StackTrace.t [@@js.get "stackTrace"]

      val set_stack_trace : t -> Runtime.StackTrace.t -> unit
        [@@js.set "stackTrace"]
    end
    [@@js.scope "ScriptFailedToParseEventDataType"]

    module BreakpointResolvedEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_breakpoint_id : t -> BreakpointId.t [@@js.get "breakpointId"]

      val set_breakpoint_id : t -> BreakpointId.t -> unit
        [@@js.set "breakpointId"]

      val get_location : t -> Location.t [@@js.get "location"]

      val set_location : t -> Location.t -> unit [@@js.set "location"]
    end
    [@@js.scope "BreakpointResolvedEventDataType"]

    module PausedEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_call_frames : t -> CallFrame.t list [@@js.get "callFrames"]

      val set_call_frames : t -> CallFrame.t list -> unit
        [@@js.set "callFrames"]

      val get_reason : t -> string [@@js.get "reason"]

      val set_reason : t -> string -> unit [@@js.set "reason"]

      val get_data : t -> AnonymousInterface0.t [@@js.get "data"]

      val set_data : t -> AnonymousInterface0.t -> unit [@@js.set "data"]

      val get_hit_breakpoints : t -> string list [@@js.get "hitBreakpoints"]

      val set_hit_breakpoints : t -> string list -> unit
        [@@js.set "hitBreakpoints"]

      val get_async_stack_trace : t -> Runtime.StackTrace.t
        [@@js.get "asyncStackTrace"]

      val set_async_stack_trace : t -> Runtime.StackTrace.t -> unit
        [@@js.set "asyncStackTrace"]

      val get_async_stack_trace_id : t -> Runtime.StackTraceId.t
        [@@js.get "asyncStackTraceId"]

      val set_async_stack_trace_id : t -> Runtime.StackTraceId.t -> unit
        [@@js.set "asyncStackTraceId"]

      val get_async_call_stack_trace_id : t -> Runtime.StackTraceId.t
        [@@js.get "asyncCallStackTraceId"]

      val set_async_call_stack_trace_id : t -> Runtime.StackTraceId.t -> unit
        [@@js.set "asyncCallStackTraceId"]
    end
    [@@js.scope "PausedEventDataType"]
  end
  [@@js.scope "Debugger"]

  module Console : sig
    module ConsoleMessage : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_source : t -> string [@@js.get "source"]

      val set_source : t -> string -> unit [@@js.set "source"]

      val get_level : t -> string [@@js.get "level"]

      val set_level : t -> string -> unit [@@js.set "level"]

      val get_text : t -> string [@@js.get "text"]

      val set_text : t -> string -> unit [@@js.set "text"]

      val get_url : t -> string [@@js.get "url"]

      val set_url : t -> string -> unit [@@js.set "url"]

      val get_line : t -> int [@@js.get "line"]

      val set_line : t -> int -> unit [@@js.set "line"]

      val get_column : t -> int [@@js.get "column"]

      val set_column : t -> int -> unit [@@js.set "column"]
    end
    [@@js.scope "ConsoleMessage"]

    module MessageAddedEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_message : t -> ConsoleMessage.t [@@js.get "message"]

      val set_message : t -> ConsoleMessage.t -> unit [@@js.set "message"]
    end
    [@@js.scope "MessageAddedEventDataType"]
  end
  [@@js.scope "Console"]

  module Profiler : sig
    module PositionTickInfo : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_line : t -> int [@@js.get "line"]

      val set_line : t -> int -> unit [@@js.set "line"]

      val get_ticks : t -> int [@@js.get "ticks"]

      val set_ticks : t -> int -> unit [@@js.set "ticks"]
    end
    [@@js.scope "PositionTickInfo"]

    module ProfileNode : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_id : t -> int [@@js.get "id"]

      val set_id : t -> int -> unit [@@js.set "id"]

      val get_call_frame : t -> Runtime.CallFrame.t [@@js.get "callFrame"]

      val set_call_frame : t -> Runtime.CallFrame.t -> unit
        [@@js.set "callFrame"]

      val get_hit_count : t -> int [@@js.get "hitCount"]

      val set_hit_count : t -> int -> unit [@@js.set "hitCount"]

      val get_children : t -> int list [@@js.get "children"]

      val set_children : t -> int list -> unit [@@js.set "children"]

      val get_deopt_reason : t -> string [@@js.get "deoptReason"]

      val set_deopt_reason : t -> string -> unit [@@js.set "deoptReason"]

      val get_position_ticks : t -> PositionTickInfo.t list
        [@@js.get "positionTicks"]

      val set_position_ticks : t -> PositionTickInfo.t list -> unit
        [@@js.set "positionTicks"]
    end
    [@@js.scope "ProfileNode"]

    module Profile : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_nodes : t -> ProfileNode.t list [@@js.get "nodes"]

      val set_nodes : t -> ProfileNode.t list -> unit [@@js.set "nodes"]

      val get_start_time : t -> int [@@js.get "startTime"]

      val set_start_time : t -> int -> unit [@@js.set "startTime"]

      val get_end_time : t -> int [@@js.get "endTime"]

      val set_end_time : t -> int -> unit [@@js.set "endTime"]

      val get_samples : t -> int list [@@js.get "samples"]

      val set_samples : t -> int list -> unit [@@js.set "samples"]

      val get_time_deltas : t -> int list [@@js.get "timeDeltas"]

      val set_time_deltas : t -> int list -> unit [@@js.set "timeDeltas"]
    end
    [@@js.scope "Profile"]

    module CoverageRange : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_start_offset : t -> int [@@js.get "startOffset"]

      val set_start_offset : t -> int -> unit [@@js.set "startOffset"]

      val get_end_offset : t -> int [@@js.get "endOffset"]

      val set_end_offset : t -> int -> unit [@@js.set "endOffset"]

      val get_count : t -> int [@@js.get "count"]

      val set_count : t -> int -> unit [@@js.set "count"]
    end
    [@@js.scope "CoverageRange"]

    module FunctionCoverage : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_function_name : t -> string [@@js.get "functionName"]

      val set_function_name : t -> string -> unit [@@js.set "functionName"]

      val get_ranges : t -> CoverageRange.t list [@@js.get "ranges"]

      val set_ranges : t -> CoverageRange.t list -> unit [@@js.set "ranges"]

      val get_is_block_coverage : t -> bool [@@js.get "isBlockCoverage"]

      val set_is_block_coverage : t -> bool -> unit [@@js.set "isBlockCoverage"]
    end
    [@@js.scope "FunctionCoverage"]

    module ScriptCoverage : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_script_id : t -> Runtime.ScriptId.t [@@js.get "scriptId"]

      val set_script_id : t -> Runtime.ScriptId.t -> unit [@@js.set "scriptId"]

      val get_url : t -> string [@@js.get "url"]

      val set_url : t -> string -> unit [@@js.set "url"]

      val get_functions : t -> FunctionCoverage.t list [@@js.get "functions"]

      val set_functions : t -> FunctionCoverage.t list -> unit
        [@@js.set "functions"]
    end
    [@@js.scope "ScriptCoverage"]

    module TypeObject : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_name : t -> string [@@js.get "name"]

      val set_name : t -> string -> unit [@@js.set "name"]
    end
    [@@js.scope "TypeObject"]

    module TypeProfileEntry : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_offset : t -> int [@@js.get "offset"]

      val set_offset : t -> int -> unit [@@js.set "offset"]

      val get_types : t -> TypeObject.t list [@@js.get "types"]

      val set_types : t -> TypeObject.t list -> unit [@@js.set "types"]
    end
    [@@js.scope "TypeProfileEntry"]

    module ScriptTypeProfile : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_script_id : t -> Runtime.ScriptId.t [@@js.get "scriptId"]

      val set_script_id : t -> Runtime.ScriptId.t -> unit [@@js.set "scriptId"]

      val get_url : t -> string [@@js.get "url"]

      val set_url : t -> string -> unit [@@js.set "url"]

      val get_entries : t -> TypeProfileEntry.t list [@@js.get "entries"]

      val set_entries : t -> TypeProfileEntry.t list -> unit
        [@@js.set "entries"]
    end
    [@@js.scope "ScriptTypeProfile"]

    module SetSamplingIntervalParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_interval : t -> int [@@js.get "interval"]

      val set_interval : t -> int -> unit [@@js.set "interval"]
    end
    [@@js.scope "SetSamplingIntervalParameterType"]

    module StartPreciseCoverageParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_call_count : t -> bool [@@js.get "callCount"]

      val set_call_count : t -> bool -> unit [@@js.set "callCount"]

      val get_detailed : t -> bool [@@js.get "detailed"]

      val set_detailed : t -> bool -> unit [@@js.set "detailed"]
    end
    [@@js.scope "StartPreciseCoverageParameterType"]

    module StopReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_profile : t -> Profile.t [@@js.get "profile"]

      val set_profile : t -> Profile.t -> unit [@@js.set "profile"]
    end
    [@@js.scope "StopReturnType"]

    module TakePreciseCoverageReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> ScriptCoverage.t list [@@js.get "result"]

      val set_result : t -> ScriptCoverage.t list -> unit [@@js.set "result"]
    end
    [@@js.scope "TakePreciseCoverageReturnType"]

    module GetBestEffortCoverageReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> ScriptCoverage.t list [@@js.get "result"]

      val set_result : t -> ScriptCoverage.t list -> unit [@@js.set "result"]
    end
    [@@js.scope "GetBestEffortCoverageReturnType"]

    module TakeTypeProfileReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> ScriptTypeProfile.t list [@@js.get "result"]

      val set_result : t -> ScriptTypeProfile.t list -> unit [@@js.set "result"]
    end
    [@@js.scope "TakeTypeProfileReturnType"]

    module ConsoleProfileStartedEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_id : t -> string [@@js.get "id"]

      val set_id : t -> string -> unit [@@js.set "id"]

      val get_location : t -> Debugger.Location.t [@@js.get "location"]

      val set_location : t -> Debugger.Location.t -> unit [@@js.set "location"]

      val get_title : t -> string [@@js.get "title"]

      val set_title : t -> string -> unit [@@js.set "title"]
    end
    [@@js.scope "ConsoleProfileStartedEventDataType"]

    module ConsoleProfileFinishedEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_id : t -> string [@@js.get "id"]

      val set_id : t -> string -> unit [@@js.set "id"]

      val get_location : t -> Debugger.Location.t [@@js.get "location"]

      val set_location : t -> Debugger.Location.t -> unit [@@js.set "location"]

      val get_profile : t -> Profile.t [@@js.get "profile"]

      val set_profile : t -> Profile.t -> unit [@@js.set "profile"]

      val get_title : t -> string [@@js.get "title"]

      val set_title : t -> string -> unit [@@js.set "title"]
    end
    [@@js.scope "ConsoleProfileFinishedEventDataType"]
  end
  [@@js.scope "Profiler"]

  module HeapProfiler : sig
    module HeapSnapshotObjectId : sig
      type t = string

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module SamplingHeapProfileNode : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_call_frame : t -> Runtime.CallFrame.t [@@js.get "callFrame"]

      val set_call_frame : t -> Runtime.CallFrame.t -> unit
        [@@js.set "callFrame"]

      val get_self_size : t -> int [@@js.get "selfSize"]

      val set_self_size : t -> int -> unit [@@js.set "selfSize"]

      val get_children : t -> t list [@@js.get "children"]

      val set_children : t -> t list -> unit [@@js.set "children"]
    end
    [@@js.scope "SamplingHeapProfileNode"]

    module SamplingHeapProfile : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_head : t -> SamplingHeapProfileNode.t [@@js.get "head"]

      val set_head : t -> SamplingHeapProfileNode.t -> unit [@@js.set "head"]
    end
    [@@js.scope "SamplingHeapProfile"]

    module StartTrackingHeapObjectsParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_track_allocations : t -> bool [@@js.get "trackAllocations"]

      val set_track_allocations : t -> bool -> unit
        [@@js.set "trackAllocations"]
    end
    [@@js.scope "StartTrackingHeapObjectsParameterType"]

    module StopTrackingHeapObjectsParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_report_progress : t -> bool [@@js.get "reportProgress"]

      val set_report_progress : t -> bool -> unit [@@js.set "reportProgress"]
    end
    [@@js.scope "StopTrackingHeapObjectsParameterType"]

    module TakeHeapSnapshotParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_report_progress : t -> bool [@@js.get "reportProgress"]

      val set_report_progress : t -> bool -> unit [@@js.set "reportProgress"]
    end
    [@@js.scope "TakeHeapSnapshotParameterType"]

    module GetObjectByHeapObjectIdParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_object_id : t -> HeapSnapshotObjectId.t [@@js.get "objectId"]

      val set_object_id : t -> HeapSnapshotObjectId.t -> unit
        [@@js.set "objectId"]

      val get_object_group : t -> string [@@js.get "objectGroup"]

      val set_object_group : t -> string -> unit [@@js.set "objectGroup"]
    end
    [@@js.scope "GetObjectByHeapObjectIdParameterType"]

    module AddInspectedHeapObjectParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_heap_object_id : t -> HeapSnapshotObjectId.t
        [@@js.get "heapObjectId"]

      val set_heap_object_id : t -> HeapSnapshotObjectId.t -> unit
        [@@js.set "heapObjectId"]
    end
    [@@js.scope "AddInspectedHeapObjectParameterType"]

    module GetHeapObjectIdParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_object_id : t -> Runtime.RemoteObjectId.t [@@js.get "objectId"]

      val set_object_id : t -> Runtime.RemoteObjectId.t -> unit
        [@@js.set "objectId"]
    end
    [@@js.scope "GetHeapObjectIdParameterType"]

    module StartSamplingParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_sampling_interval : t -> int [@@js.get "samplingInterval"]

      val set_sampling_interval : t -> int -> unit [@@js.set "samplingInterval"]
    end
    [@@js.scope "StartSamplingParameterType"]

    module GetObjectByHeapObjectIdReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_result : t -> Runtime.RemoteObject.t [@@js.get "result"]

      val set_result : t -> Runtime.RemoteObject.t -> unit [@@js.set "result"]
    end
    [@@js.scope "GetObjectByHeapObjectIdReturnType"]

    module GetHeapObjectIdReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_heap_snapshot_object_id : t -> HeapSnapshotObjectId.t
        [@@js.get "heapSnapshotObjectId"]

      val set_heap_snapshot_object_id : t -> HeapSnapshotObjectId.t -> unit
        [@@js.set "heapSnapshotObjectId"]
    end
    [@@js.scope "GetHeapObjectIdReturnType"]

    module StopSamplingReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_profile : t -> SamplingHeapProfile.t [@@js.get "profile"]

      val set_profile : t -> SamplingHeapProfile.t -> unit [@@js.set "profile"]
    end
    [@@js.scope "StopSamplingReturnType"]

    module GetSamplingProfileReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_profile : t -> SamplingHeapProfile.t [@@js.get "profile"]

      val set_profile : t -> SamplingHeapProfile.t -> unit [@@js.set "profile"]
    end
    [@@js.scope "GetSamplingProfileReturnType"]

    module AddHeapSnapshotChunkEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_chunk : t -> string [@@js.get "chunk"]

      val set_chunk : t -> string -> unit [@@js.set "chunk"]
    end
    [@@js.scope "AddHeapSnapshotChunkEventDataType"]

    module ReportHeapSnapshotProgressEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_done : t -> int [@@js.get "done"]

      val set_done : t -> int -> unit [@@js.set "done"]

      val get_total : t -> int [@@js.get "total"]

      val set_total : t -> int -> unit [@@js.set "total"]

      val get_finished : t -> bool [@@js.get "finished"]

      val set_finished : t -> bool -> unit [@@js.set "finished"]
    end
    [@@js.scope "ReportHeapSnapshotProgressEventDataType"]

    module LastSeenObjectIdEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_last_seen_object_id : t -> int [@@js.get "lastSeenObjectId"]

      val set_last_seen_object_id : t -> int -> unit
        [@@js.set "lastSeenObjectId"]

      val get_timestamp : t -> int [@@js.get "timestamp"]

      val set_timestamp : t -> int -> unit [@@js.set "timestamp"]
    end
    [@@js.scope "LastSeenObjectIdEventDataType"]

    module HeapStatsUpdateEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_stats_update : t -> int list [@@js.get "statsUpdate"]

      val set_stats_update : t -> int list -> unit [@@js.set "statsUpdate"]
    end
    [@@js.scope "HeapStatsUpdateEventDataType"]
  end
  [@@js.scope "HeapProfiler"]

  module NodeTracing : sig
    module TraceConfig : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_record_mode : t -> string [@@js.get "recordMode"]

      val set_record_mode : t -> string -> unit [@@js.set "recordMode"]

      val get_included_categories : t -> string list
        [@@js.get "includedCategories"]

      val set_included_categories : t -> string list -> unit
        [@@js.set "includedCategories"]
    end
    [@@js.scope "TraceConfig"]

    module StartParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_trace_config : t -> TraceConfig.t [@@js.get "traceConfig"]

      val set_trace_config : t -> TraceConfig.t -> unit [@@js.set "traceConfig"]
    end
    [@@js.scope "StartParameterType"]

    module GetCategoriesReturnType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_categories : t -> string list [@@js.get "categories"]

      val set_categories : t -> string list -> unit [@@js.set "categories"]
    end
    [@@js.scope "GetCategoriesReturnType"]

    module DataCollectedEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_value : t -> AnonymousInterface0.t list [@@js.get "value"]

      val set_value : t -> AnonymousInterface0.t list -> unit [@@js.set "value"]
    end
    [@@js.scope "DataCollectedEventDataType"]
  end
  [@@js.scope "NodeTracing"]

  module NodeWorker : sig
    module WorkerID : sig
      type t = string

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module SessionID : sig
      type t = string

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t
    end

    module WorkerInfo : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_worker_id : t -> WorkerID.t [@@js.get "workerId"]

      val set_worker_id : t -> WorkerID.t -> unit [@@js.set "workerId"]

      val get_type : t -> string [@@js.get "type"]

      val set_type : t -> string -> unit [@@js.set "type"]

      val get_title : t -> string [@@js.get "title"]

      val set_title : t -> string -> unit [@@js.set "title"]

      val get_url : t -> string [@@js.get "url"]

      val set_url : t -> string -> unit [@@js.set "url"]
    end
    [@@js.scope "WorkerInfo"]

    module SendMessageToWorkerParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_message : t -> string [@@js.get "message"]

      val set_message : t -> string -> unit [@@js.set "message"]

      val get_session_id : t -> SessionID.t [@@js.get "sessionId"]

      val set_session_id : t -> SessionID.t -> unit [@@js.set "sessionId"]
    end
    [@@js.scope "SendMessageToWorkerParameterType"]

    module EnableParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_wait_for_debugger_on_start : t -> bool
        [@@js.get "waitForDebuggerOnStart"]

      val set_wait_for_debugger_on_start : t -> bool -> unit
        [@@js.set "waitForDebuggerOnStart"]
    end
    [@@js.scope "EnableParameterType"]

    module DetachParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_session_id : t -> SessionID.t [@@js.get "sessionId"]

      val set_session_id : t -> SessionID.t -> unit [@@js.set "sessionId"]
    end
    [@@js.scope "DetachParameterType"]

    module AttachedToWorkerEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_session_id : t -> SessionID.t [@@js.get "sessionId"]

      val set_session_id : t -> SessionID.t -> unit [@@js.set "sessionId"]

      val get_worker_info : t -> WorkerInfo.t [@@js.get "workerInfo"]

      val set_worker_info : t -> WorkerInfo.t -> unit [@@js.set "workerInfo"]

      val get_waiting_for_debugger : t -> bool [@@js.get "waitingForDebugger"]

      val set_waiting_for_debugger : t -> bool -> unit
        [@@js.set "waitingForDebugger"]
    end
    [@@js.scope "AttachedToWorkerEventDataType"]

    module DetachedFromWorkerEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_session_id : t -> SessionID.t [@@js.get "sessionId"]

      val set_session_id : t -> SessionID.t -> unit [@@js.set "sessionId"]
    end
    [@@js.scope "DetachedFromWorkerEventDataType"]

    module ReceivedMessageFromWorkerEventDataType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_session_id : t -> SessionID.t [@@js.get "sessionId"]

      val set_session_id : t -> SessionID.t -> unit [@@js.set "sessionId"]

      val get_message : t -> string [@@js.get "message"]

      val set_message : t -> string -> unit [@@js.set "message"]
    end
    [@@js.scope "ReceivedMessageFromWorkerEventDataType"]
  end
  [@@js.scope "NodeWorker"]

  module NodeRuntime : sig
    module NotifyWhenWaitingForDisconnectParameterType : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_enabled : t -> bool [@@js.get "enabled"]

      val set_enabled : t -> bool -> unit [@@js.set "enabled"]
    end
    [@@js.scope "NotifyWhenWaitingForDisconnectParameterType"]
  end
  [@@js.scope "NodeRuntime"]

  module Session : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]

    val connect : t -> unit [@@js.call "connect"]

    val disconnect : t -> unit [@@js.call "disconnect"]

    val post
      :  t
      -> method_:string
      -> ?params:AnonymousInterface0.t
      -> ?callback:
           (err:Error.t or_null
            -> ?params:AnonymousInterface0.t
            -> unit
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'
      :  t
      -> method_:string
      -> ?callback:
           (err:Error.t or_null
            -> ?params:AnonymousInterface0.t
            -> unit
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''
      :  t
      -> method_:([ `Schema_getDomains ][@js.enum])
      -> ?callback:
           (err:Error.t or_null -> params:Schema.GetDomainsReturnType.t -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''
      :  t
      -> method_:([ `Runtime_evaluate ][@js.enum])
      -> ?params:Runtime.EvaluateParameterType.t
      -> ?callback:
           (err:Error.t or_null -> params:Runtime.EvaluateReturnType.t -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''
      :  t
      -> method_:([ `Runtime_evaluate ][@js.enum])
      -> ?callback:
           (err:Error.t or_null -> params:Runtime.EvaluateReturnType.t -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''
      :  t
      -> method_:([ `Runtime_awaitPromise ][@js.enum])
      -> ?params:Runtime.AwaitPromiseParameterType.t
      -> ?callback:
           (err:Error.t or_null
            -> params:Runtime.AwaitPromiseReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''
      :  t
      -> method_:([ `Runtime_awaitPromise ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:Runtime.AwaitPromiseReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''
      :  t
      -> method_:([ `Runtime_callFunctionOn ][@js.enum])
      -> ?params:Runtime.CallFunctionOnParameterType.t
      -> ?callback:
           (err:Error.t or_null
            -> params:Runtime.CallFunctionOnReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''
      :  t
      -> method_:([ `Runtime_callFunctionOn ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:Runtime.CallFunctionOnReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''
      :  t
      -> method_:([ `Runtime_getProperties ][@js.enum])
      -> ?params:Runtime.GetPropertiesParameterType.t
      -> ?callback:
           (err:Error.t or_null
            -> params:Runtime.GetPropertiesReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''
      :  t
      -> method_:([ `Runtime_getProperties ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:Runtime.GetPropertiesReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''
      :  t
      -> method_:([ `Runtime_releaseObject ][@js.enum])
      -> ?params:Runtime.ReleaseObjectParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''
      :  t
      -> method_:([ `Runtime_releaseObject ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''
      :  t
      -> method_:([ `Runtime_releaseObjectGroup ][@js.enum])
      -> ?params:Runtime.ReleaseObjectGroupParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''
      :  t
      -> method_:([ `Runtime_releaseObjectGroup ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''
      :  t
      -> method_:([ `Runtime_runIfWaitingForDebugger ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''
      :  t
      -> method_:([ `Runtime_enable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''
      :  t
      -> method_:([ `Runtime_disable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''
      :  t
      -> method_:([ `Runtime_discardConsoleEntries ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''
      :  t
      -> method_:([ `Runtime_setCustomObjectFormatterEnabled ][@js.enum])
      -> ?params:Runtime.SetCustomObjectFormatterEnabledParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''
      :  t
      -> method_:([ `Runtime_setCustomObjectFormatterEnabled ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''
      :  t
      -> method_:([ `Runtime_compileScript ][@js.enum])
      -> ?params:Runtime.CompileScriptParameterType.t
      -> ?callback:
           (err:Error.t or_null
            -> params:Runtime.CompileScriptReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''
      :  t
      -> method_:([ `Runtime_compileScript ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:Runtime.CompileScriptReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''
      :  t
      -> method_:([ `Runtime_runScript ][@js.enum])
      -> ?params:Runtime.RunScriptParameterType.t
      -> ?callback:
           (err:Error.t or_null -> params:Runtime.RunScriptReturnType.t -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''
      :  t
      -> method_:([ `Runtime_runScript ][@js.enum])
      -> ?callback:
           (err:Error.t or_null -> params:Runtime.RunScriptReturnType.t -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''
      :  t
      -> method_:([ `Runtime_queryObjects ][@js.enum])
      -> ?params:Runtime.QueryObjectsParameterType.t
      -> ?callback:
           (err:Error.t or_null
            -> params:Runtime.QueryObjectsReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''
      :  t
      -> method_:([ `Runtime_queryObjects ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:Runtime.QueryObjectsReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''
      :  t
      -> method_:([ `Runtime_globalLexicalScopeNames ][@js.enum])
      -> ?params:Runtime.GlobalLexicalScopeNamesParameterType.t
      -> ?callback:
           (err:Error.t or_null
            -> params:Runtime.GlobalLexicalScopeNamesReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Runtime_globalLexicalScopeNames ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:Runtime.GlobalLexicalScopeNamesReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_enable ][@js.enum])
      -> ?callback:
           (err:Error.t or_null -> params:Debugger.EnableReturnType.t -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_disable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setBreakpointsActive ][@js.enum])
      -> ?params:Debugger.SetBreakpointsActiveParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setBreakpointsActive ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setSkipAllPauses ][@js.enum])
      -> ?params:Debugger.SetSkipAllPausesParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setSkipAllPauses ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setBreakpointByUrl ][@js.enum])
      -> ?params:Debugger.SetBreakpointByUrlParameterType.t
      -> ?callback:
           (err:Error.t or_null
            -> params:Debugger.SetBreakpointByUrlReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setBreakpointByUrl ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:Debugger.SetBreakpointByUrlReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setBreakpoint ][@js.enum])
      -> ?params:Debugger.SetBreakpointParameterType.t
      -> ?callback:
           (err:Error.t or_null
            -> params:Debugger.SetBreakpointReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setBreakpoint ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:Debugger.SetBreakpointReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_removeBreakpoint ][@js.enum])
      -> ?params:Debugger.RemoveBreakpointParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_removeBreakpoint ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_getPossibleBreakpoints ][@js.enum])
      -> ?params:Debugger.GetPossibleBreakpointsParameterType.t
      -> ?callback:
           (err:Error.t or_null
            -> params:Debugger.GetPossibleBreakpointsReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_getPossibleBreakpoints ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:Debugger.GetPossibleBreakpointsReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_continueToLocation ][@js.enum])
      -> ?params:Debugger.ContinueToLocationParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_continueToLocation ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_pauseOnAsyncCall ][@js.enum])
      -> ?params:Debugger.PauseOnAsyncCallParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_pauseOnAsyncCall ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_stepOver ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_stepInto ][@js.enum])
      -> ?params:Debugger.StepIntoParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_stepInto ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_stepOut ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_pause ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_scheduleStepIntoAsync ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_resume ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_getStackTrace ][@js.enum])
      -> ?params:Debugger.GetStackTraceParameterType.t
      -> ?callback:
           (err:Error.t or_null
            -> params:Debugger.GetStackTraceReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_getStackTrace ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:Debugger.GetStackTraceReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_searchInContent ][@js.enum])
      -> ?params:Debugger.SearchInContentParameterType.t
      -> ?callback:
           (err:Error.t or_null
            -> params:Debugger.SearchInContentReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_searchInContent ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:Debugger.SearchInContentReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setScriptSource ][@js.enum])
      -> ?params:Debugger.SetScriptSourceParameterType.t
      -> ?callback:
           (err:Error.t or_null
            -> params:Debugger.SetScriptSourceReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setScriptSource ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:Debugger.SetScriptSourceReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_restartFrame ][@js.enum])
      -> ?params:Debugger.RestartFrameParameterType.t
      -> ?callback:
           (err:Error.t or_null
            -> params:Debugger.RestartFrameReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_restartFrame ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:Debugger.RestartFrameReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_getScriptSource ][@js.enum])
      -> ?params:Debugger.GetScriptSourceParameterType.t
      -> ?callback:
           (err:Error.t or_null
            -> params:Debugger.GetScriptSourceReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_getScriptSource ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:Debugger.GetScriptSourceReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setPauseOnExceptions ][@js.enum])
      -> ?params:Debugger.SetPauseOnExceptionsParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setPauseOnExceptions ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_evaluateOnCallFrame ][@js.enum])
      -> ?params:Debugger.EvaluateOnCallFrameParameterType.t
      -> ?callback:
           (err:Error.t or_null
            -> params:Debugger.EvaluateOnCallFrameReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_evaluateOnCallFrame ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:Debugger.EvaluateOnCallFrameReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setVariableValue ][@js.enum])
      -> ?params:Debugger.SetVariableValueParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setVariableValue ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setReturnValue ][@js.enum])
      -> ?params:Debugger.SetReturnValueParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setReturnValue ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setAsyncCallStackDepth ][@js.enum])
      -> ?params:Debugger.SetAsyncCallStackDepthParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setAsyncCallStackDepth ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setBlackboxPatterns ][@js.enum])
      -> ?params:Debugger.SetBlackboxPatternsParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setBlackboxPatterns ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setBlackboxedRanges ][@js.enum])
      -> ?params:Debugger.SetBlackboxedRangesParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Debugger_setBlackboxedRanges ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Console_enable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Console_disable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Console_clearMessages ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_enable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_disable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_setSamplingInterval ][@js.enum])
      -> ?params:Profiler.SetSamplingIntervalParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_setSamplingInterval ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_start ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_stop ][@js.enum])
      -> ?callback:
           (err:Error.t or_null -> params:Profiler.StopReturnType.t -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_startPreciseCoverage ][@js.enum])
      -> ?params:Profiler.StartPreciseCoverageParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_startPreciseCoverage ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_stopPreciseCoverage ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_takePreciseCoverage ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:Profiler.TakePreciseCoverageReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_getBestEffortCoverage ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:Profiler.GetBestEffortCoverageReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_startTypeProfile ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_stopTypeProfile ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `Profiler_takeTypeProfile ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:Profiler.TakeTypeProfileReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_enable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_disable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_startTrackingHeapObjects ][@js.enum])
      -> ?params:HeapProfiler.StartTrackingHeapObjectsParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_startTrackingHeapObjects ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_stopTrackingHeapObjects ][@js.enum])
      -> ?params:HeapProfiler.StopTrackingHeapObjectsParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_stopTrackingHeapObjects ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_takeHeapSnapshot ][@js.enum])
      -> ?params:HeapProfiler.TakeHeapSnapshotParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_takeHeapSnapshot ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_collectGarbage ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_getObjectByHeapObjectId ][@js.enum])
      -> ?params:HeapProfiler.GetObjectByHeapObjectIdParameterType.t
      -> ?callback:
           (err:Error.t or_null
            -> params:HeapProfiler.GetObjectByHeapObjectIdReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_getObjectByHeapObjectId ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:HeapProfiler.GetObjectByHeapObjectIdReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_addInspectedHeapObject ][@js.enum])
      -> ?params:HeapProfiler.AddInspectedHeapObjectParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_addInspectedHeapObject ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_getHeapObjectId ][@js.enum])
      -> ?params:HeapProfiler.GetHeapObjectIdParameterType.t
      -> ?callback:
           (err:Error.t or_null
            -> params:HeapProfiler.GetHeapObjectIdReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_getHeapObjectId ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:HeapProfiler.GetHeapObjectIdReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_startSampling ][@js.enum])
      -> ?params:HeapProfiler.StartSamplingParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_startSampling ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_stopSampling ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:HeapProfiler.StopSamplingReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `HeapProfiler_getSamplingProfile ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:HeapProfiler.GetSamplingProfileReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeTracing_getCategories ][@js.enum])
      -> ?callback:
           (err:Error.t or_null
            -> params:NodeTracing.GetCategoriesReturnType.t
            -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeTracing_start ][@js.enum])
      -> ?params:NodeTracing.StartParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeTracing_start ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeTracing_stop ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeWorker_sendMessageToWorker ][@js.enum])
      -> ?params:NodeWorker.SendMessageToWorkerParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeWorker_sendMessageToWorker ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeWorker_enable ][@js.enum])
      -> ?params:NodeWorker.EnableParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeWorker_enable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeWorker_disable ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeWorker_detach ][@js.enum])
      -> ?params:NodeWorker.DetachParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeWorker_detach ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeRuntime_notifyWhenWaitingForDisconnect ][@js.enum])
      -> ?params:NodeRuntime.NotifyWhenWaitingForDisconnectParameterType.t
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val post''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      :  t
      -> method_:([ `NodeRuntime_notifyWhenWaitingForDisconnect ][@js.enum])
      -> ?callback:(err:Error.t or_null -> unit)
      -> unit
      -> unit
      [@@js.call "post"]

    val add_listener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'
      :  t
      -> event:([ `inspectorNotification ][@js.enum])
      -> listener:
           (message:AnonymousInterface0.t InspectorNotification.t -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''
      :  t
      -> event:([ `Runtime_executionContextCreated ][@js.enum])
      -> listener:
           (message:
              Runtime.ExecutionContextCreatedEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''
      :  t
      -> event:([ `Runtime_executionContextDestroyed ][@js.enum])
      -> listener:
           (message:
              Runtime.ExecutionContextDestroyedEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''
      :  t
      -> event:([ `Runtime_executionContextsCleared ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''
      :  t
      -> event:([ `Runtime_exceptionThrown ][@js.enum])
      -> listener:
           (message:
              Runtime.ExceptionThrownEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''
      :  t
      -> event:([ `Runtime_exceptionRevoked ][@js.enum])
      -> listener:
           (message:
              Runtime.ExceptionRevokedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''
      :  t
      -> event:([ `Runtime_consoleAPICalled ][@js.enum])
      -> listener:
           (message:
              Runtime.ConsoleAPICalledEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''
      :  t
      -> event:([ `Runtime_inspectRequested ][@js.enum])
      -> listener:
           (message:
              Runtime.InspectRequestedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''''
      :  t
      -> event:([ `Debugger_scriptParsed ][@js.enum])
      -> listener:
           (message:Debugger.ScriptParsedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''''
      :  t
      -> event:([ `Debugger_scriptFailedToParse ][@js.enum])
      -> listener:
           (message:
              Debugger.ScriptFailedToParseEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''''''
      :  t
      -> event:([ `Debugger_breakpointResolved ][@js.enum])
      -> listener:
           (message:
              Debugger.BreakpointResolvedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''''''
      :  t
      -> event:([ `Debugger_paused ][@js.enum])
      -> listener:
           (message:Debugger.PausedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''''''''
      :  t
      -> event:([ `Debugger_resumed ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''''''''
      :  t
      -> event:([ `Console_messageAdded ][@js.enum])
      -> listener:
           (message:Console.MessageAddedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileStarted ][@js.enum])
      -> listener:
           (message:
              Profiler.ConsoleProfileStartedEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileFinished ][@js.enum])
      -> listener:
           (message:
              Profiler.ConsoleProfileFinishedEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_addHeapSnapshotChunk ][@js.enum])
      -> listener:
           (message:
              HeapProfiler.AddHeapSnapshotChunkEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_resetProfiles ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_reportHeapSnapshotProgress ][@js.enum])
      -> listener:
           (message:
              HeapProfiler.ReportHeapSnapshotProgressEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_lastSeenObjectId ][@js.enum])
      -> listener:
           (message:
              HeapProfiler.LastSeenObjectIdEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_heapStatsUpdate ][@js.enum])
      -> listener:
           (message:
              HeapProfiler.HeapStatsUpdateEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_dataCollected ][@js.enum])
      -> listener:
           (message:
              NodeTracing.DataCollectedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_tracingComplete ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_attachedToWorker ][@js.enum])
      -> listener:
           (message:
              NodeWorker.AttachedToWorkerEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_detachedFromWorker ][@js.enum])
      -> listener:
           (message:
              NodeWorker.DetachedFromWorkerEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_receivedMessageFromWorker ][@js.enum])
      -> listener:
           (message:
              NodeWorker.ReceivedMessageFromWorkerEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeRuntime_waitingForDisconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val emit
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val emit'
      :  t
      -> event:([ `inspectorNotification ][@js.enum])
      -> message:AnonymousInterface0.t InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit''
      :  t
      -> event:([ `Runtime_executionContextCreated ][@js.enum])
      -> message:
           Runtime.ExecutionContextCreatedEventDataType.t
           InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit'''
      :  t
      -> event:([ `Runtime_executionContextDestroyed ][@js.enum])
      -> message:
           Runtime.ExecutionContextDestroyedEventDataType.t
           InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit''''
      :  t
      -> event:([ `Runtime_executionContextsCleared ][@js.enum])
      -> bool
      [@@js.call "emit"]

    val emit'''''
      :  t
      -> event:([ `Runtime_exceptionThrown ][@js.enum])
      -> message:Runtime.ExceptionThrownEventDataType.t InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit''''''
      :  t
      -> event:([ `Runtime_exceptionRevoked ][@js.enum])
      -> message:Runtime.ExceptionRevokedEventDataType.t InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit'''''''
      :  t
      -> event:([ `Runtime_consoleAPICalled ][@js.enum])
      -> message:Runtime.ConsoleAPICalledEventDataType.t InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit''''''''
      :  t
      -> event:([ `Runtime_inspectRequested ][@js.enum])
      -> message:Runtime.InspectRequestedEventDataType.t InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit'''''''''
      :  t
      -> event:([ `Debugger_scriptParsed ][@js.enum])
      -> message:Debugger.ScriptParsedEventDataType.t InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit''''''''''
      :  t
      -> event:([ `Debugger_scriptFailedToParse ][@js.enum])
      -> message:
           Debugger.ScriptFailedToParseEventDataType.t InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit'''''''''''
      :  t
      -> event:([ `Debugger_breakpointResolved ][@js.enum])
      -> message:
           Debugger.BreakpointResolvedEventDataType.t InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit''''''''''''
      :  t
      -> event:([ `Debugger_paused ][@js.enum])
      -> message:Debugger.PausedEventDataType.t InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit''''''''''''' : t -> event:([ `Debugger_resumed ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit''''''''''''''
      :  t
      -> event:([ `Console_messageAdded ][@js.enum])
      -> message:Console.MessageAddedEventDataType.t InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit'''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileStarted ][@js.enum])
      -> message:
           Profiler.ConsoleProfileStartedEventDataType.t InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit''''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileFinished ][@js.enum])
      -> message:
           Profiler.ConsoleProfileFinishedEventDataType.t
           InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit'''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_addHeapSnapshotChunk ][@js.enum])
      -> message:
           HeapProfiler.AddHeapSnapshotChunkEventDataType.t
           InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_resetProfiles ][@js.enum])
      -> bool
      [@@js.call "emit"]

    val emit'''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_reportHeapSnapshotProgress ][@js.enum])
      -> message:
           HeapProfiler.ReportHeapSnapshotProgressEventDataType.t
           InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_lastSeenObjectId ][@js.enum])
      -> message:
           HeapProfiler.LastSeenObjectIdEventDataType.t InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit'''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_heapStatsUpdate ][@js.enum])
      -> message:
           HeapProfiler.HeapStatsUpdateEventDataType.t InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_dataCollected ][@js.enum])
      -> message:
           NodeTracing.DataCollectedEventDataType.t InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit'''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_tracingComplete ][@js.enum])
      -> bool
      [@@js.call "emit"]

    val emit''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_attachedToWorker ][@js.enum])
      -> message:
           NodeWorker.AttachedToWorkerEventDataType.t InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit'''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_detachedFromWorker ][@js.enum])
      -> message:
           NodeWorker.DetachedFromWorkerEventDataType.t InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_receivedMessageFromWorker ][@js.enum])
      -> message:
           NodeWorker.ReceivedMessageFromWorkerEventDataType.t
           InspectorNotification.t
      -> bool
      [@@js.call "emit"]

    val emit'''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeRuntime_waitingForDisconnect ][@js.enum])
      -> bool
      [@@js.call "emit"]

    val on
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `inspectorNotification ][@js.enum])
      -> listener:
           (message:AnonymousInterface0.t InspectorNotification.t -> unit)
      -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `Runtime_executionContextCreated ][@js.enum])
      -> listener:
           (message:
              Runtime.ExecutionContextCreatedEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `Runtime_executionContextDestroyed ][@js.enum])
      -> listener:
           (message:
              Runtime.ExecutionContextDestroyedEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `Runtime_executionContextsCleared ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''''
      :  t
      -> event:([ `Runtime_exceptionThrown ][@js.enum])
      -> listener:
           (message:
              Runtime.ExceptionThrownEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''
      :  t
      -> event:([ `Runtime_exceptionRevoked ][@js.enum])
      -> listener:
           (message:
              Runtime.ExceptionRevokedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''
      :  t
      -> event:([ `Runtime_consoleAPICalled ][@js.enum])
      -> listener:
           (message:
              Runtime.ConsoleAPICalledEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''
      :  t
      -> event:([ `Runtime_inspectRequested ][@js.enum])
      -> listener:
           (message:
              Runtime.InspectRequestedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''
      :  t
      -> event:([ `Debugger_scriptParsed ][@js.enum])
      -> listener:
           (message:Debugger.ScriptParsedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''
      :  t
      -> event:([ `Debugger_scriptFailedToParse ][@js.enum])
      -> listener:
           (message:
              Debugger.ScriptFailedToParseEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''
      :  t
      -> event:([ `Debugger_breakpointResolved ][@js.enum])
      -> listener:
           (message:
              Debugger.BreakpointResolvedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''''
      :  t
      -> event:([ `Debugger_paused ][@js.enum])
      -> listener:
           (message:Debugger.PausedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''''
      :  t
      -> event:([ `Debugger_resumed ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''''''
      :  t
      -> event:([ `Console_messageAdded ][@js.enum])
      -> listener:
           (message:Console.MessageAddedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileStarted ][@js.enum])
      -> listener:
           (message:
              Profiler.ConsoleProfileStartedEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileFinished ][@js.enum])
      -> listener:
           (message:
              Profiler.ConsoleProfileFinishedEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_addHeapSnapshotChunk ][@js.enum])
      -> listener:
           (message:
              HeapProfiler.AddHeapSnapshotChunkEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_resetProfiles ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_reportHeapSnapshotProgress ][@js.enum])
      -> listener:
           (message:
              HeapProfiler.ReportHeapSnapshotProgressEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_lastSeenObjectId ][@js.enum])
      -> listener:
           (message:
              HeapProfiler.LastSeenObjectIdEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_heapStatsUpdate ][@js.enum])
      -> listener:
           (message:
              HeapProfiler.HeapStatsUpdateEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_dataCollected ][@js.enum])
      -> listener:
           (message:
              NodeTracing.DataCollectedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_tracingComplete ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_attachedToWorker ][@js.enum])
      -> listener:
           (message:
              NodeWorker.AttachedToWorkerEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_detachedFromWorker ][@js.enum])
      -> listener:
           (message:
              NodeWorker.DetachedFromWorkerEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_receivedMessageFromWorker ][@js.enum])
      -> listener:
           (message:
              NodeWorker.ReceivedMessageFromWorkerEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeRuntime_waitingForDisconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val once
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "once"]

    val once'
      :  t
      -> event:([ `inspectorNotification ][@js.enum])
      -> listener:
           (message:AnonymousInterface0.t InspectorNotification.t -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `Runtime_executionContextCreated ][@js.enum])
      -> listener:
           (message:
              Runtime.ExecutionContextCreatedEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `Runtime_executionContextDestroyed ][@js.enum])
      -> listener:
           (message:
              Runtime.ExecutionContextDestroyedEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `Runtime_executionContextsCleared ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''''
      :  t
      -> event:([ `Runtime_exceptionThrown ][@js.enum])
      -> listener:
           (message:
              Runtime.ExceptionThrownEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''
      :  t
      -> event:([ `Runtime_exceptionRevoked ][@js.enum])
      -> listener:
           (message:
              Runtime.ExceptionRevokedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''
      :  t
      -> event:([ `Runtime_consoleAPICalled ][@js.enum])
      -> listener:
           (message:
              Runtime.ConsoleAPICalledEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''
      :  t
      -> event:([ `Runtime_inspectRequested ][@js.enum])
      -> listener:
           (message:
              Runtime.InspectRequestedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''
      :  t
      -> event:([ `Debugger_scriptParsed ][@js.enum])
      -> listener:
           (message:Debugger.ScriptParsedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''
      :  t
      -> event:([ `Debugger_scriptFailedToParse ][@js.enum])
      -> listener:
           (message:
              Debugger.ScriptFailedToParseEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''
      :  t
      -> event:([ `Debugger_breakpointResolved ][@js.enum])
      -> listener:
           (message:
              Debugger.BreakpointResolvedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''''
      :  t
      -> event:([ `Debugger_paused ][@js.enum])
      -> listener:
           (message:Debugger.PausedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''''
      :  t
      -> event:([ `Debugger_resumed ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''''''
      :  t
      -> event:([ `Console_messageAdded ][@js.enum])
      -> listener:
           (message:Console.MessageAddedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileStarted ][@js.enum])
      -> listener:
           (message:
              Profiler.ConsoleProfileStartedEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileFinished ][@js.enum])
      -> listener:
           (message:
              Profiler.ConsoleProfileFinishedEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_addHeapSnapshotChunk ][@js.enum])
      -> listener:
           (message:
              HeapProfiler.AddHeapSnapshotChunkEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_resetProfiles ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_reportHeapSnapshotProgress ][@js.enum])
      -> listener:
           (message:
              HeapProfiler.ReportHeapSnapshotProgressEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_lastSeenObjectId ][@js.enum])
      -> listener:
           (message:
              HeapProfiler.LastSeenObjectIdEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_heapStatsUpdate ][@js.enum])
      -> listener:
           (message:
              HeapProfiler.HeapStatsUpdateEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_dataCollected ][@js.enum])
      -> listener:
           (message:
              NodeTracing.DataCollectedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_tracingComplete ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_attachedToWorker ][@js.enum])
      -> listener:
           (message:
              NodeWorker.AttachedToWorkerEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_detachedFromWorker ][@js.enum])
      -> listener:
           (message:
              NodeWorker.DetachedFromWorkerEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_receivedMessageFromWorker ][@js.enum])
      -> listener:
           (message:
              NodeWorker.ReceivedMessageFromWorkerEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeRuntime_waitingForDisconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val prepend_listener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'
      :  t
      -> event:([ `inspectorNotification ][@js.enum])
      -> listener:
           (message:AnonymousInterface0.t InspectorNotification.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''
      :  t
      -> event:([ `Runtime_executionContextCreated ][@js.enum])
      -> listener:
           (message:
              Runtime.ExecutionContextCreatedEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''
      :  t
      -> event:([ `Runtime_executionContextDestroyed ][@js.enum])
      -> listener:
           (message:
              Runtime.ExecutionContextDestroyedEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''
      :  t
      -> event:([ `Runtime_executionContextsCleared ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''
      :  t
      -> event:([ `Runtime_exceptionThrown ][@js.enum])
      -> listener:
           (message:
              Runtime.ExceptionThrownEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''
      :  t
      -> event:([ `Runtime_exceptionRevoked ][@js.enum])
      -> listener:
           (message:
              Runtime.ExceptionRevokedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''
      :  t
      -> event:([ `Runtime_consoleAPICalled ][@js.enum])
      -> listener:
           (message:
              Runtime.ConsoleAPICalledEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''
      :  t
      -> event:([ `Runtime_inspectRequested ][@js.enum])
      -> listener:
           (message:
              Runtime.InspectRequestedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''''
      :  t
      -> event:([ `Debugger_scriptParsed ][@js.enum])
      -> listener:
           (message:Debugger.ScriptParsedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''''
      :  t
      -> event:([ `Debugger_scriptFailedToParse ][@js.enum])
      -> listener:
           (message:
              Debugger.ScriptFailedToParseEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''''''
      :  t
      -> event:([ `Debugger_breakpointResolved ][@js.enum])
      -> listener:
           (message:
              Debugger.BreakpointResolvedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''''''
      :  t
      -> event:([ `Debugger_paused ][@js.enum])
      -> listener:
           (message:Debugger.PausedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''''''''
      :  t
      -> event:([ `Debugger_resumed ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''''''''
      :  t
      -> event:([ `Console_messageAdded ][@js.enum])
      -> listener:
           (message:Console.MessageAddedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileStarted ][@js.enum])
      -> listener:
           (message:
              Profiler.ConsoleProfileStartedEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileFinished ][@js.enum])
      -> listener:
           (message:
              Profiler.ConsoleProfileFinishedEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_addHeapSnapshotChunk ][@js.enum])
      -> listener:
           (message:
              HeapProfiler.AddHeapSnapshotChunkEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_resetProfiles ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_reportHeapSnapshotProgress ][@js.enum])
      -> listener:
           (message:
              HeapProfiler.ReportHeapSnapshotProgressEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_lastSeenObjectId ][@js.enum])
      -> listener:
           (message:
              HeapProfiler.LastSeenObjectIdEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_heapStatsUpdate ][@js.enum])
      -> listener:
           (message:
              HeapProfiler.HeapStatsUpdateEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_dataCollected ][@js.enum])
      -> listener:
           (message:
              NodeTracing.DataCollectedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_tracingComplete ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_attachedToWorker ][@js.enum])
      -> listener:
           (message:
              NodeWorker.AttachedToWorkerEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_detachedFromWorker ][@js.enum])
      -> listener:
           (message:
              NodeWorker.DetachedFromWorkerEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_receivedMessageFromWorker ][@js.enum])
      -> listener:
           (message:
              NodeWorker.ReceivedMessageFromWorkerEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeRuntime_waitingForDisconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prepend_once_listener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'
      :  t
      -> event:([ `inspectorNotification ][@js.enum])
      -> listener:
           (message:AnonymousInterface0.t InspectorNotification.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''
      :  t
      -> event:([ `Runtime_executionContextCreated ][@js.enum])
      -> listener:
           (message:
              Runtime.ExecutionContextCreatedEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''
      :  t
      -> event:([ `Runtime_executionContextDestroyed ][@js.enum])
      -> listener:
           (message:
              Runtime.ExecutionContextDestroyedEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''
      :  t
      -> event:([ `Runtime_executionContextsCleared ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''
      :  t
      -> event:([ `Runtime_exceptionThrown ][@js.enum])
      -> listener:
           (message:
              Runtime.ExceptionThrownEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''
      :  t
      -> event:([ `Runtime_exceptionRevoked ][@js.enum])
      -> listener:
           (message:
              Runtime.ExceptionRevokedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''
      :  t
      -> event:([ `Runtime_consoleAPICalled ][@js.enum])
      -> listener:
           (message:
              Runtime.ConsoleAPICalledEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''
      :  t
      -> event:([ `Runtime_inspectRequested ][@js.enum])
      -> listener:
           (message:
              Runtime.InspectRequestedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''''
      :  t
      -> event:([ `Debugger_scriptParsed ][@js.enum])
      -> listener:
           (message:Debugger.ScriptParsedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''''
      :  t
      -> event:([ `Debugger_scriptFailedToParse ][@js.enum])
      -> listener:
           (message:
              Debugger.ScriptFailedToParseEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''''''
      :  t
      -> event:([ `Debugger_breakpointResolved ][@js.enum])
      -> listener:
           (message:
              Debugger.BreakpointResolvedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''''''
      :  t
      -> event:([ `Debugger_paused ][@js.enum])
      -> listener:
           (message:Debugger.PausedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''''''''
      :  t
      -> event:([ `Debugger_resumed ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''''''''
      :  t
      -> event:([ `Console_messageAdded ][@js.enum])
      -> listener:
           (message:Console.MessageAddedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileStarted ][@js.enum])
      -> listener:
           (message:
              Profiler.ConsoleProfileStartedEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''''''''''
      :  t
      -> event:([ `Profiler_consoleProfileFinished ][@js.enum])
      -> listener:
           (message:
              Profiler.ConsoleProfileFinishedEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_addHeapSnapshotChunk ][@js.enum])
      -> listener:
           (message:
              HeapProfiler.AddHeapSnapshotChunkEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_resetProfiles ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_reportHeapSnapshotProgress ][@js.enum])
      -> listener:
           (message:
              HeapProfiler.ReportHeapSnapshotProgressEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_lastSeenObjectId ][@js.enum])
      -> listener:
           (message:
              HeapProfiler.LastSeenObjectIdEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''''''''''''''''
      :  t
      -> event:([ `HeapProfiler_heapStatsUpdate ][@js.enum])
      -> listener:
           (message:
              HeapProfiler.HeapStatsUpdateEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_dataCollected ][@js.enum])
      -> listener:
           (message:
              NodeTracing.DataCollectedEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''''''''''''''''''
      :  t
      -> event:([ `NodeTracing_tracingComplete ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_attachedToWorker ][@js.enum])
      -> listener:
           (message:
              NodeWorker.AttachedToWorkerEventDataType.t InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_detachedFromWorker ][@js.enum])
      -> listener:
           (message:
              NodeWorker.DetachedFromWorkerEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeWorker_receivedMessageFromWorker ][@js.enum])
      -> listener:
           (message:
              NodeWorker.ReceivedMessageFromWorkerEventDataType.t
              InspectorNotification.t
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''''''''''''''''''''''
      :  t
      -> event:([ `NodeRuntime_waitingForDisconnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> Node_events.Events.EventEmitter.t [@@js.cast]
  end
  [@@js.scope "Session"]

  val open_ : ?port:int -> ?host:string -> ?wait:bool -> unit -> unit
    [@@js.global "open"]

  val close : unit -> unit [@@js.global "close"]

  val url : unit -> string or_undefined [@@js.global "url"]

  val wait_for_debugger : unit -> unit [@@js.global "waitForDebugger"]
end
[@@js.scope Import.inspector]
