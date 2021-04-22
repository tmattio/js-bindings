[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_entryTypes : t -> perf_hooks_EntryType list [@@js.get "entryTypes"]

  val set_entryTypes : t -> perf_hooks_EntryType list -> unit
    [@@js.set "entryTypes"]

  val get_buffered : t -> bool [@@js.get "buffered"]

  val set_buffered : t -> bool -> unit [@@js.set "buffered"]
end

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

  module PerformanceEntry : sig
    type t = perf_hooks_PerformanceEntry

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_duration : t -> int [@@js.get "duration"]

    val get_name : t -> string [@@js.get "name"]

    val get_startTime : t -> int [@@js.get "startTime"]

    val get_entryType : t -> perf_hooks_EntryType [@@js.get "entryType"]

    val get_kind : t -> int [@@js.get "kind"]

    val get_flags : t -> int [@@js.get "flags"]
  end
  [@@js.scope "PerformanceEntry"]

  module PerformanceNodeTiming : sig
    type t = perf_hooks_PerformanceNodeTiming

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_bootstrapComplete : t -> int [@@js.get "bootstrapComplete"]

    val get_environment : t -> int [@@js.get "environment"]

    val get_idleTime : t -> int [@@js.get "idleTime"]

    val get_loopExit : t -> int [@@js.get "loopExit"]

    val get_loopStart : t -> int [@@js.get "loopStart"]

    val get_v8Start : t -> int [@@js.get "v8Start"]

    val cast : t -> perf_hooks_PerformanceEntry [@@js.cast]
  end
  [@@js.scope "PerformanceNodeTiming"]

  module EventLoopUtilization : sig
    type t = perf_hooks_EventLoopUtilization

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
    type t = perf_hooks_Performance

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val clearMarks : t -> ?name:string -> unit -> unit [@@js.call "clearMarks"]

    val mark : t -> ?name:string -> unit -> unit [@@js.call "mark"]

    val measure : t -> name:string -> startMark:string -> endMark:string -> unit
      [@@js.call "measure"]

    val get_nodeTiming : t -> perf_hooks_PerformanceNodeTiming
      [@@js.get "nodeTiming"]

    val now : t -> int [@@js.call "now"]

    val get_timeOrigin : t -> int [@@js.get "timeOrigin"]

    val timerify : t -> fn:'T -> 'T [@@js.call "timerify"]

    val eventLoopUtilization
      :  t
      -> ?util1:perf_hooks_EventLoopUtilization
      -> ?util2:perf_hooks_EventLoopUtilization
      -> unit
      -> perf_hooks_EventLoopUtilization
      [@@js.call "eventLoopUtilization"]
  end
  [@@js.scope "Performance"]

  module PerformanceObserverEntryList : sig
    type t = perf_hooks_PerformanceObserverEntryList

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val getEntries : t -> perf_hooks_PerformanceEntry list
      [@@js.call "getEntries"]

    val getEntriesByName
      :  t
      -> name:string
      -> ?type_:perf_hooks_EntryType
      -> unit
      -> perf_hooks_PerformanceEntry list
      [@@js.call "getEntriesByName"]

    val getEntriesByType
      :  t
      -> type_:perf_hooks_EntryType
      -> perf_hooks_PerformanceEntry list
      [@@js.call "getEntriesByType"]
  end
  [@@js.scope "PerformanceObserverEntryList"]

  module PerformanceObserverCallback : sig
    type t = perf_hooks_PerformanceObserverCallback

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply
      :  t
      -> list:perf_hooks_PerformanceObserverEntryList
      -> observer:perf_hooks_PerformanceObserver
      -> unit
      [@@js.apply]
  end
  [@@js.scope "PerformanceObserverCallback"]

  module PerformanceObserver : sig
    type t = perf_hooks_PerformanceObserver

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : callback:perf_hooks_PerformanceObserverCallback -> t
      [@@js.create]

    val disconnect : t -> unit [@@js.call "disconnect"]

    val observe : t -> options:AnonymousInterface0.t -> unit
      [@@js.call "observe"]

    val cast : t -> Node_async_hooks.Async_hooks.AsyncResource.t [@@js.cast]
  end
  [@@js.scope "PerformanceObserver"]

  module Constants : sig
    val nODE_PERFORMANCE_GC_MAJOR : int
      [@@js.global "NODE_PERFORMANCE_GC_MAJOR"]

    val nODE_PERFORMANCE_GC_MINOR : int
      [@@js.global "NODE_PERFORMANCE_GC_MINOR"]

    val nODE_PERFORMANCE_GC_INCREMENTAL : int
      [@@js.global "NODE_PERFORMANCE_GC_INCREMENTAL"]

    val nODE_PERFORMANCE_GC_WEAKCB : int
      [@@js.global "NODE_PERFORMANCE_GC_WEAKCB"]

    val nODE_PERFORMANCE_GC_FLAGS_NO : int
      [@@js.global "NODE_PERFORMANCE_GC_FLAGS_NO"]

    val nODE_PERFORMANCE_GC_FLAGS_CONSTRUCT_RETAINED : int
      [@@js.global "NODE_PERFORMANCE_GC_FLAGS_CONSTRUCT_RETAINED"]

    val nODE_PERFORMANCE_GC_FLAGS_FORCED : int
      [@@js.global "NODE_PERFORMANCE_GC_FLAGS_FORCED"]

    val nODE_PERFORMANCE_GC_FLAGS_SYNCHRONOUS_PHANTOM_PROCESSING : int
      [@@js.global "NODE_PERFORMANCE_GC_FLAGS_SYNCHRONOUS_PHANTOM_PROCESSING"]

    val nODE_PERFORMANCE_GC_FLAGS_ALL_AVAILABLE_GARBAGE : int
      [@@js.global "NODE_PERFORMANCE_GC_FLAGS_ALL_AVAILABLE_GARBAGE"]

    val nODE_PERFORMANCE_GC_FLAGS_ALL_EXTERNAL_MEMORY : int
      [@@js.global "NODE_PERFORMANCE_GC_FLAGS_ALL_EXTERNAL_MEMORY"]

    val nODE_PERFORMANCE_GC_FLAGS_SCHEDULE_IDLE : int
      [@@js.global "NODE_PERFORMANCE_GC_FLAGS_SCHEDULE_IDLE"]
  end
  [@@js.scope "constants"]

  val performance : perf_hooks_Performance [@@js.global "performance"]

  module EventLoopMonitorOptions : sig
    type t = perf_hooks_EventLoopMonitorOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_resolution : t -> int [@@js.get "resolution"]

    val set_resolution : t -> int -> unit [@@js.set "resolution"]
  end
  [@@js.scope "EventLoopMonitorOptions"]

  module EventLoopDelayMonitor : sig
    type t = perf_hooks_EventLoopDelayMonitor

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

  val monitorEventLoopDelay
    :  ?options:perf_hooks_EventLoopMonitorOptions
    -> unit
    -> perf_hooks_EventLoopDelayMonitor
    [@@js.global "monitorEventLoopDelay"]
end
[@@js.scope Import.perf_hooks]
