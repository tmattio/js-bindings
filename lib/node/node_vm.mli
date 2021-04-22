[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_js_memory_estimate : t -> int [@@js.get "jsMemoryEstimate"]

  val set_js_memory_estimate : t -> int -> unit [@@js.set "jsMemoryEstimate"]

  val get_js_memory_range : t -> int * int [@@js.get "jsMemoryRange"]

  val set_js_memory_range : t -> int * int -> unit [@@js.set "jsMemoryRange"]
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
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> any Dict.t [@@js.cast]
  end
  [@@js.scope "Context"]

  module BaseOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_filename : t -> string [@@js.get "filename"]

    val set_filename : t -> string -> unit [@@js.set "filename"]

    val get_line_offset : t -> int [@@js.get "lineOffset"]

    val set_line_offset : t -> int -> unit [@@js.set "lineOffset"]

    val get_column_offset : t -> int [@@js.get "columnOffset"]

    val set_column_offset : t -> int -> unit [@@js.set "columnOffset"]
  end
  [@@js.scope "BaseOptions"]

  module ScriptOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_display_errors : t -> bool [@@js.get "displayErrors"]

    val set_display_errors : t -> bool -> unit [@@js.set "displayErrors"]

    val get_timeout : t -> int [@@js.get "timeout"]

    val set_timeout : t -> int -> unit [@@js.set "timeout"]

    val get_cached_data : t -> Buffer.t [@@js.get "cachedData"]

    val set_cached_data : t -> Buffer.t -> unit [@@js.set "cachedData"]

    val get_produce_cached_data : t -> bool [@@js.get "produceCachedData"]

    val set_produce_cached_data : t -> bool -> unit
      [@@js.set "produceCachedData"]

    val cast : t -> BaseOptions.t [@@js.cast]
  end
  [@@js.scope "ScriptOptions"]

  module RunningScriptOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_display_errors : t -> bool [@@js.get "displayErrors"]

    val set_display_errors : t -> bool -> unit [@@js.set "displayErrors"]

    val get_timeout : t -> int [@@js.get "timeout"]

    val set_timeout : t -> int -> unit [@@js.set "timeout"]

    val get_break_on_sigint : t -> bool [@@js.get "breakOnSigint"]

    val set_break_on_sigint : t -> bool -> unit [@@js.set "breakOnSigint"]

    val get_microtask_mode
      :  t
      -> ([ `afterEvaluate [@js "afterEvaluate"] ][@js.enum])
      [@@js.get "microtaskMode"]

    val set_microtask_mode : t -> ([ `afterEvaluate ][@js.enum]) -> unit
      [@@js.set "microtaskMode"]

    val cast : t -> BaseOptions.t [@@js.cast]
  end
  [@@js.scope "RunningScriptOptions"]

  module CompileFunctionOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_cached_data : t -> Buffer.t [@@js.get "cachedData"]

    val set_cached_data : t -> Buffer.t -> unit [@@js.set "cachedData"]

    val get_produce_cached_data : t -> bool [@@js.get "produceCachedData"]

    val set_produce_cached_data : t -> bool -> unit
      [@@js.set "produceCachedData"]

    val get_parsing_context : t -> Context.t [@@js.get "parsingContext"]

    val set_parsing_context : t -> Context.t -> unit [@@js.set "parsingContext"]

    val get_context_extensions : t -> untyped_object list
      [@@js.get "contextExtensions"]

    val set_context_extensions : t -> untyped_object list -> unit
      [@@js.set "contextExtensions"]

    val cast : t -> BaseOptions.t [@@js.cast]
  end
  [@@js.scope "CompileFunctionOptions"]

  module CreateContextOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]

    val get_origin : t -> string [@@js.get "origin"]

    val set_origin : t -> string -> unit [@@js.set "origin"]

    val get_code_generation : t -> AnonymousInterface1.t
      [@@js.get "codeGeneration"]

    val set_code_generation : t -> AnonymousInterface1.t -> unit
      [@@js.set "codeGeneration"]

    val get_microtask_mode
      :  t
      -> ([ `afterEvaluate [@js "afterEvaluate"] ][@js.enum])
      [@@js.get "microtaskMode"]

    val set_microtask_mode : t -> ([ `afterEvaluate ][@js.enum]) -> unit
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
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_mode : t -> MeasureMemoryMode.t [@@js.get "mode"]

    val set_mode : t -> MeasureMemoryMode.t -> unit [@@js.set "mode"]

    val get_context : t -> Context.t [@@js.get "context"]

    val set_context : t -> Context.t -> unit [@@js.set "context"]
  end
  [@@js.scope "MeasureMemoryOptions"]

  module MemoryMeasurement : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_total : t -> AnonymousInterface0.t [@@js.get "total"]

    val set_total : t -> AnonymousInterface0.t -> unit [@@js.set "total"]
  end
  [@@js.scope "MemoryMeasurement"]

  module Script : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : code:string -> ?options:ScriptOptions.t -> unit -> t
      [@@js.create]

    val run_in_context
      :  t
      -> contextified_sandbox:Context.t
      -> ?options:RunningScriptOptions.t
      -> unit
      -> any
      [@@js.call "runInContext"]

    val run_in_new_context
      :  t
      -> ?sandbox:Context.t
      -> ?options:RunningScriptOptions.t
      -> unit
      -> any
      [@@js.call "runInNewContext"]

    val run_in_this_context
      :  t
      -> ?options:RunningScriptOptions.t
      -> unit
      -> any
      [@@js.call "runInThisContext"]

    val create_cached_data : t -> Buffer.t [@@js.call "createCachedData"]

    val get_cached_data_rejected : t -> bool [@@js.get "cachedDataRejected"]

    val set_cached_data_rejected : t -> bool -> unit
      [@@js.set "cachedDataRejected"]
  end
  [@@js.scope "Script"]

  val create_context
    :  ?sandbox:Context.t
    -> ?options:CreateContextOptions.t
    -> unit
    -> Context.t
    [@@js.global "createContext"]

  val is_context : sandbox:Context.t -> bool [@@js.global "isContext"]

  val run_in_context
    :  code:string
    -> contextified_sandbox:Context.t
    -> ?options:RunningScriptOptions.t or_string
    -> unit
    -> any
    [@@js.global "runInContext"]

  val run_in_new_context
    :  code:string
    -> ?sandbox:Context.t
    -> ?options:RunningScriptOptions.t or_string
    -> unit
    -> any
    [@@js.global "runInNewContext"]

  val run_in_this_context
    :  code:string
    -> ?options:RunningScriptOptions.t or_string
    -> unit
    -> any
    [@@js.global "runInThisContext"]

  val compile_function
    :  code:string
    -> ?params:string list
    -> ?options:CompileFunctionOptions.t
    -> unit
    -> untyped_function
    [@@js.global "compileFunction"]

  val measure_memory
    :  ?options:MeasureMemoryOptions.t
    -> unit
    -> MemoryMeasurement.t Promise.t
    [@@js.global "measureMemory"]
end
[@@js.scope Import.vm]
