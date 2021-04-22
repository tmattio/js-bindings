[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Perf_hooks : sig
  module EntryType : sig
    type t =
      ([ `function_ [@js "function"]
       | `gc [@js "gc"]
       | `http [@js "http"]
       | `http2 [@js "http2"]
       | `mark [@js "mark"]
       | `measure [@js "measure"]
       | `node [@js "node"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module AnonymousInterface0 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_entry_types : t -> EntryType.t list [@@js.get "entryTypes"]

    val set_entry_types : t -> EntryType.t list -> unit [@@js.set "entryTypes"]

    val get_buffered : t -> bool [@@js.get "buffered"]

    val set_buffered : t -> bool -> unit [@@js.set "buffered"]
  end

  module PerformanceEntry : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_duration : t -> int [@@js.get "duration"]

    val get_name : t -> string [@@js.get "name"]

    val get_start_time : t -> int [@@js.get "startTime"]

    val get_entry_type : t -> EntryType.t [@@js.get "entryType"]

    val get_kind : t -> int [@@js.get "kind"]

    val get_flags : t -> int [@@js.get "flags"]
  end
  [@@js.scope "PerformanceEntry"]

  module PerformanceNodeTiming : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_bootstrap_complete : t -> int [@@js.get "bootstrapComplete"]

    val get_environment : t -> int [@@js.get "environment"]

    val get_idle_time : t -> int [@@js.get "idleTime"]

    val get_loop_exit : t -> int [@@js.get "loopExit"]

    val get_loop_start : t -> int [@@js.get "loopStart"]

    val get_v8Start : t -> int [@@js.get "v8Start"]

    val cast : t -> PerformanceEntry.t [@@js.cast]
  end
  [@@js.scope "PerformanceNodeTiming"]

  module EventLoopUtilization : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_idle : t -> int [@@js.get "idle"]

    val set_idle : t -> int -> unit [@@js.set "idle"]

    val get_active : t -> int [@@js.get "active"]

    val set_active : t -> int -> unit [@@js.set "active"]

    val get_utilization : t -> int [@@js.get "utilization"]

    val set_utilization : t -> int -> unit [@@js.set "utilization"]
  end
  [@@js.scope "EventLoopUtilization"]

  module Performance : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val clear_marks : t -> ?name:string -> unit -> unit [@@js.call "clearMarks"]

    val mark : t -> ?name:string -> unit -> unit [@@js.call "mark"]

    val measure
      :  t
      -> name:string
      -> start_mark:string
      -> end_mark:string
      -> unit
      [@@js.call "measure"]

    val get_node_timing : t -> PerformanceNodeTiming.t [@@js.get "nodeTiming"]

    val now : t -> int [@@js.call "now"]

    val get_time_origin : t -> int [@@js.get "timeOrigin"]

    val timerify : t -> fn:'T -> 'T [@@js.call "timerify"]

    val event_loop_utilization
      :  t
      -> ?util1:EventLoopUtilization.t
      -> ?util2:EventLoopUtilization.t
      -> unit
      -> EventLoopUtilization.t
      [@@js.call "eventLoopUtilization"]
  end
  [@@js.scope "Performance"]

  module PerformanceObserverEntryList : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_entries : t -> PerformanceEntry.t list [@@js.call "getEntries"]

    val get_entries_by_name
      :  t
      -> name:string
      -> ?type_:EntryType.t
      -> unit
      -> PerformanceEntry.t list
      [@@js.call "getEntriesByName"]

    val get_entries_by_type : t -> type_:EntryType.t -> PerformanceEntry.t list
      [@@js.call "getEntriesByType"]
  end
  [@@js.scope "PerformanceObserverEntryList"]

  module PerformanceObserverCallback : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    (* val apply : t -> list:PerformanceObserverEntryList.t ->
       observer:PerformanceObserver.t -> unit [@@js.apply] *)
  end
  (* [@@js.scope "PerformanceObserverCallback"] *)

  module PerformanceObserver : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : callback:PerformanceObserverCallback.t -> t [@@js.create]

    val disconnect : t -> unit [@@js.call "disconnect"]

    val observe : t -> options:AnonymousInterface0.t -> unit
      [@@js.call "observe"]

    val cast : t -> Node_async_hooks.Async_hooks.AsyncResource.t [@@js.cast]
  end
  [@@js.scope "PerformanceObserver"]

  module Constants : sig
    val node_performance_gc_major : int
      [@@js.global "NODE_PERFORMANCE_GC_MAJOR"]

    val node_performance_gc_minor : int
      [@@js.global "NODE_PERFORMANCE_GC_MINOR"]

    val node_performance_gc_incremental : int
      [@@js.global "NODE_PERFORMANCE_GC_INCREMENTAL"]

    val node_performance_gc_weakcb : int
      [@@js.global "NODE_PERFORMANCE_GC_WEAKCB"]

    val node_performance_gc_flags_no : int
      [@@js.global "NODE_PERFORMANCE_GC_FLAGS_NO"]

    val node_performance_gc_flags_construct_retained : int
      [@@js.global "NODE_PERFORMANCE_GC_FLAGS_CONSTRUCT_RETAINED"]

    val node_performance_gc_flags_forced : int
      [@@js.global "NODE_PERFORMANCE_GC_FLAGS_FORCED"]

    val node_performance_gc_flags_synchronous_phantom_processing : int
      [@@js.global "NODE_PERFORMANCE_GC_FLAGS_SYNCHRONOUS_PHANTOM_PROCESSING"]

    val node_performance_gc_flags_all_available_garbage : int
      [@@js.global "NODE_PERFORMANCE_GC_FLAGS_ALL_AVAILABLE_GARBAGE"]

    val node_performance_gc_flags_all_external_memory : int
      [@@js.global "NODE_PERFORMANCE_GC_FLAGS_ALL_EXTERNAL_MEMORY"]

    val node_performance_gc_flags_schedule_idle : int
      [@@js.global "NODE_PERFORMANCE_GC_FLAGS_SCHEDULE_IDLE"]
  end
  [@@js.scope "constants"]

  val performance : Performance.t [@@js.global "performance"]

  module EventLoopMonitorOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_resolution : t -> int [@@js.get "resolution"]

    val set_resolution : t -> int -> unit [@@js.set "resolution"]
  end
  [@@js.scope "EventLoopMonitorOptions"]

  module EventLoopDelayMonitor : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val enable : t -> bool [@@js.call "enable"]

    val disable : t -> bool [@@js.call "disable"]

    val reset : t -> unit [@@js.call "reset"]

    val percentile : t -> percentile:int -> int [@@js.call "percentile"]

    val get_percentiles : t -> (int, int) Map.t [@@js.get "percentiles"]

    val get_exceeds : t -> int [@@js.get "exceeds"]

    val get_min : t -> int [@@js.get "min"]

    val get_max : t -> int [@@js.get "max"]

    val get_mean : t -> int [@@js.get "mean"]

    val get_stddev : t -> int [@@js.get "stddev"]
  end
  [@@js.scope "EventLoopDelayMonitor"]

  val monitor_event_loop_delay
    :  ?options:EventLoopMonitorOptions.t
    -> unit
    -> EventLoopDelayMonitor.t
    [@@js.global "monitorEventLoopDelay"]
end
[@@js.scope Import.perf_hooks]
