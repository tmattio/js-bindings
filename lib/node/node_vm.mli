[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_jsMemoryEstimate : t -> int [@@js.get "jsMemoryEstimate"]

  val set_jsMemoryEstimate : t -> int -> unit [@@js.set "jsMemoryEstimate"]

  val get_jsMemoryRange : t -> int * int [@@js.get "jsMemoryRange"]

  val set_jsMemoryRange : t -> int * int -> unit [@@js.set "jsMemoryRange"]
end

module AnonymousInterface1 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_strings : t -> bool [@@js.get "strings"]

  val set_strings : t -> bool -> unit [@@js.set "strings"]

  val get_wasm : t -> bool [@@js.get "wasm"]

  val set_wasm : t -> bool -> unit [@@js.set "wasm"]
end

module Vm : sig
  module Context : sig
    type t = vm_Context

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> any Dict.t [@@js.cast]
  end
  [@@js.scope "Context"]

  module BaseOptions : sig
    type t = vm_BaseOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_filename : t -> string [@@js.get "filename"]

    val set_filename : t -> string -> unit [@@js.set "filename"]

    val get_lineOffset : t -> int [@@js.get "lineOffset"]

    val set_lineOffset : t -> int -> unit [@@js.set "lineOffset"]

    val get_columnOffset : t -> int [@@js.get "columnOffset"]

    val set_columnOffset : t -> int -> unit [@@js.set "columnOffset"]
  end
  [@@js.scope "BaseOptions"]

  module ScriptOptions : sig
    type t = vm_ScriptOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_displayErrors : t -> bool [@@js.get "displayErrors"]

    val set_displayErrors : t -> bool -> unit [@@js.set "displayErrors"]

    val get_timeout : t -> int [@@js.get "timeout"]

    val set_timeout : t -> int -> unit [@@js.set "timeout"]

    val get_cachedData : t -> Buffer.t [@@js.get "cachedData"]

    val set_cachedData : t -> Buffer.t -> unit [@@js.set "cachedData"]

    val get_produceCachedData : t -> bool [@@js.get "produceCachedData"]

    val set_produceCachedData : t -> bool -> unit [@@js.set "produceCachedData"]

    val cast : t -> vm_BaseOptions [@@js.cast]
  end
  [@@js.scope "ScriptOptions"]

  module RunningScriptOptions : sig
    type t = vm_RunningScriptOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_displayErrors : t -> bool [@@js.get "displayErrors"]

    val set_displayErrors : t -> bool -> unit [@@js.set "displayErrors"]

    val get_timeout : t -> int [@@js.get "timeout"]

    val set_timeout : t -> int -> unit [@@js.set "timeout"]

    val get_breakOnSigint : t -> bool [@@js.get "breakOnSigint"]

    val set_breakOnSigint : t -> bool -> unit [@@js.set "breakOnSigint"]

    val get_microtaskMode
      :  t
      -> ([ `afterEvaluate [@js "afterEvaluate"] ][@js.enum])
      [@@js.get "microtaskMode"]

    val set_microtaskMode : t -> ([ `afterEvaluate ][@js.enum]) -> unit
      [@@js.set "microtaskMode"]

    val cast : t -> vm_BaseOptions [@@js.cast]
  end
  [@@js.scope "RunningScriptOptions"]

  module CompileFunctionOptions : sig
    type t = vm_CompileFunctionOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_cachedData : t -> Buffer.t [@@js.get "cachedData"]

    val set_cachedData : t -> Buffer.t -> unit [@@js.set "cachedData"]

    val get_produceCachedData : t -> bool [@@js.get "produceCachedData"]

    val set_produceCachedData : t -> bool -> unit [@@js.set "produceCachedData"]

    val get_parsingContext : t -> vm_Context [@@js.get "parsingContext"]

    val set_parsingContext : t -> vm_Context -> unit [@@js.set "parsingContext"]

    val get_contextExtensions : t -> untyped_object list
      [@@js.get "contextExtensions"]

    val set_contextExtensions : t -> untyped_object list -> unit
      [@@js.set "contextExtensions"]

    val cast : t -> vm_BaseOptions [@@js.cast]
  end
  [@@js.scope "CompileFunctionOptions"]

  module CreateContextOptions : sig
    type t = vm_CreateContextOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]

    val get_origin : t -> string [@@js.get "origin"]

    val set_origin : t -> string -> unit [@@js.set "origin"]

    val get_codeGeneration : t -> AnonymousInterface1.t
      [@@js.get "codeGeneration"]

    val set_codeGeneration : t -> AnonymousInterface1.t -> unit
      [@@js.set "codeGeneration"]

    val get_microtaskMode
      :  t
      -> ([ `afterEvaluate [@js "afterEvaluate"] ][@js.enum])
      [@@js.get "microtaskMode"]

    val set_microtaskMode : t -> ([ `afterEvaluate ][@js.enum]) -> unit
      [@@js.set "microtaskMode"]
  end
  [@@js.scope "CreateContextOptions"]

  module MeasureMemoryMode : sig
    type t =
      ([ `detailed [@js "detailed"]
       | `summary [@js "summary"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module MeasureMemoryOptions : sig
    type t = vm_MeasureMemoryOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_mode : t -> vm_MeasureMemoryMode [@@js.get "mode"]

    val set_mode : t -> vm_MeasureMemoryMode -> unit [@@js.set "mode"]

    val get_context : t -> vm_Context [@@js.get "context"]

    val set_context : t -> vm_Context -> unit [@@js.set "context"]
  end
  [@@js.scope "MeasureMemoryOptions"]

  module MemoryMeasurement : sig
    type t = vm_MemoryMeasurement

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_total : t -> AnonymousInterface0.t [@@js.get "total"]

    val set_total : t -> AnonymousInterface0.t -> unit [@@js.set "total"]
  end
  [@@js.scope "MemoryMeasurement"]

  module Script : sig
    type t = vm_Script

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : code:string -> ?options:vm_ScriptOptions -> unit -> t
      [@@js.create]

    val runInContext
      :  t
      -> contextifiedSandbox:vm_Context
      -> ?options:vm_RunningScriptOptions
      -> unit
      -> any
      [@@js.call "runInContext"]

    val runInNewContext
      :  t
      -> ?sandbox:vm_Context
      -> ?options:vm_RunningScriptOptions
      -> unit
      -> any
      [@@js.call "runInNewContext"]

    val runInThisContext : t -> ?options:vm_RunningScriptOptions -> unit -> any
      [@@js.call "runInThisContext"]

    val createCachedData : t -> Buffer.t [@@js.call "createCachedData"]

    val get_cachedDataRejected : t -> bool [@@js.get "cachedDataRejected"]

    val set_cachedDataRejected : t -> bool -> unit
      [@@js.set "cachedDataRejected"]
  end
  [@@js.scope "Script"]

  val createContext
    :  ?sandbox:vm_Context
    -> ?options:vm_CreateContextOptions
    -> unit
    -> vm_Context
    [@@js.global "createContext"]

  val isContext : sandbox:vm_Context -> bool [@@js.global "isContext"]

  val runInContext
    :  code:string
    -> contextifiedSandbox:vm_Context
    -> ?options:vm_RunningScriptOptions or_string
    -> unit
    -> any
    [@@js.global "runInContext"]

  val runInNewContext
    :  code:string
    -> ?sandbox:vm_Context
    -> ?options:vm_RunningScriptOptions or_string
    -> unit
    -> any
    [@@js.global "runInNewContext"]

  val runInThisContext
    :  code:string
    -> ?options:vm_RunningScriptOptions or_string
    -> unit
    -> any
    [@@js.global "runInThisContext"]

  val compileFunction
    :  code:string
    -> ?params:string list
    -> ?options:vm_CompileFunctionOptions
    -> unit
    -> untyped_function
    [@@js.global "compileFunction"]

  val measureMemory
    :  ?options:vm_MeasureMemoryOptions
    -> unit
    -> vm_MemoryMeasurement Promise.t
    [@@js.global "measureMemory"]
end
[@@js.scope Import.vm]
