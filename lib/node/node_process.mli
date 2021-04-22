[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module AnonymousInterface1 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_cflags : t -> any list [@@js.get "cflags"]

  val set_cflags : t -> any list -> unit [@@js.set "cflags"]

  val get_default_configuration : t -> string [@@js.get "default_configuration"]

  val set_default_configuration : t -> string -> unit
    [@@js.set "default_configuration"]

  val get_defines : t -> string list [@@js.get "defines"]

  val set_defines : t -> string list -> unit [@@js.set "defines"]

  val get_include_dirs : t -> string list [@@js.get "include_dirs"]

  val set_include_dirs : t -> string list -> unit [@@js.set "include_dirs"]

  val get_libraries : t -> string list [@@js.get "libraries"]

  val set_libraries : t -> string list -> unit [@@js.set "libraries"]
end

module AnonymousInterface2 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_clang : t -> int [@@js.get "clang"]

  val set_clang : t -> int -> unit [@@js.set "clang"]

  val get_host_arch : t -> string [@@js.get "host_arch"]

  val set_host_arch : t -> string -> unit [@@js.set "host_arch"]

  val get_node_install_npm : t -> bool [@@js.get "node_install_npm"]

  val set_node_install_npm : t -> bool -> unit [@@js.set "node_install_npm"]

  val get_node_install_waf : t -> bool [@@js.get "node_install_waf"]

  val set_node_install_waf : t -> bool -> unit [@@js.set "node_install_waf"]

  val get_node_prefix : t -> string [@@js.get "node_prefix"]

  val set_node_prefix : t -> string -> unit [@@js.set "node_prefix"]

  val get_node_shared_openssl : t -> bool [@@js.get "node_shared_openssl"]

  val set_node_shared_openssl : t -> bool -> unit
    [@@js.set "node_shared_openssl"]

  val get_node_shared_v8 : t -> bool [@@js.get "node_shared_v8"]

  val set_node_shared_v8 : t -> bool -> unit [@@js.set "node_shared_v8"]

  val get_node_shared_zlib : t -> bool [@@js.get "node_shared_zlib"]

  val set_node_shared_zlib : t -> bool -> unit [@@js.set "node_shared_zlib"]

  val get_node_use_dtrace : t -> bool [@@js.get "node_use_dtrace"]

  val set_node_use_dtrace : t -> bool -> unit [@@js.set "node_use_dtrace"]

  val get_node_use_etw : t -> bool [@@js.get "node_use_etw"]

  val set_node_use_etw : t -> bool -> unit [@@js.set "node_use_etw"]

  val get_node_use_openssl : t -> bool [@@js.get "node_use_openssl"]

  val set_node_use_openssl : t -> bool -> unit [@@js.set "node_use_openssl"]

  val get_target_arch : t -> string [@@js.get "target_arch"]

  val set_target_arch : t -> string -> unit [@@js.set "target_arch"]

  val get_v8_no_strict_aliasing : t -> int [@@js.get "v8_no_strict_aliasing"]

  val set_v8_no_strict_aliasing : t -> int -> unit
    [@@js.set "v8_no_strict_aliasing"]

  val get_v8_use_snapshot : t -> bool [@@js.get "v8_use_snapshot"]

  val set_v8_use_snapshot : t -> bool -> unit [@@js.set "v8_use_snapshot"]

  val get_visibility : t -> string [@@js.get "visibility"]

  val set_visibility : t -> string -> unit [@@js.set "visibility"]
end

module AnonymousInterface3 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_fd : t -> ([ `L_n_0 [@js 0] ][@js.enum]) [@@js.get "fd"]

  val set_fd : t -> ([ `L_n_0 ][@js.enum]) -> unit [@@js.set "fd"]
end

module AnonymousInterface4 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_fd : t -> ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.get "fd"]

  val set_fd : t -> ([ `L_n_1 ][@js.enum]) -> unit [@@js.set "fd"]
end

module AnonymousInterface5 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_fd : t -> ([ `L_n_2 [@js 2] ][@js.enum]) [@@js.get "fd"]

  val set_fd : t -> ([ `L_n_2 ][@js.enum]) -> unit [@@js.set "fd"]
end

module AnonymousInterface6 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_inspector : t -> bool [@@js.get "inspector"]

  val set_inspector : t -> bool -> unit [@@js.set "inspector"]

  val get_debug : t -> bool [@@js.get "debug"]

  val set_debug : t -> bool -> unit [@@js.set "debug"]

  val get_uv : t -> bool [@@js.get "uv"]

  val set_uv : t -> bool -> unit [@@js.set "uv"]

  val get_ipv6 : t -> bool [@@js.get "ipv6"]

  val set_ipv6 : t -> bool -> unit [@@js.set "ipv6"]

  val get_tls_alpn : t -> bool [@@js.get "tls_alpn"]

  val set_tls_alpn : t -> bool -> unit [@@js.set "tls_alpn"]

  val get_tls_sni : t -> bool [@@js.get "tls_sni"]

  val set_tls_sni : t -> bool -> unit [@@js.set "tls_sni"]

  val get_tls_ocsp : t -> bool [@@js.get "tls_ocsp"]

  val set_tls_ocsp : t -> bool -> unit [@@js.set "tls_ocsp"]

  val get_tls : t -> bool [@@js.get "tls"]

  val set_tls : t -> bool -> unit [@@js.set "tls"]
end

module AnonymousInterface7 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_swallow_errors : t -> bool [@@js.get "swallowErrors"]

  val set_swallow_errors : t -> bool -> unit [@@js.set "swallowErrors"]
end

module AnonymousInterface8 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_target_defaults : t -> AnonymousInterface1.t
    [@@js.get "target_defaults"]

  val set_target_defaults : t -> AnonymousInterface1.t -> unit
    [@@js.set "target_defaults"]

  val get_variables : t -> AnonymousInterface2.t [@@js.get "variables"]

  val set_variables : t -> AnonymousInterface2.t -> unit [@@js.set "variables"]
end

val process : process_global_NodeJS_Process [@@js.global "process"]

module Process : sig
  open Node_tty

  module ReadStream : sig
    type t = process_global_NodeJS_ReadStream

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> Tty.ReadStream.t [@@js.cast]
  end
  [@@js.scope "ReadStream"]

  module WriteStream : sig
    type t = process_global_NodeJS_WriteStream

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> Tty.WriteStream.t [@@js.cast]
  end
  [@@js.scope "WriteStream"]

  module MemoryUsage : sig
    type t = process_global_NodeJS_MemoryUsage

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_rss : t -> int [@@js.get "rss"]

    val set_rss : t -> int -> unit [@@js.set "rss"]

    val get_heap_total : t -> int [@@js.get "heapTotal"]

    val set_heap_total : t -> int -> unit [@@js.set "heapTotal"]

    val get_heap_used : t -> int [@@js.get "heapUsed"]

    val set_heap_used : t -> int -> unit [@@js.set "heapUsed"]

    val get_external : t -> int [@@js.get "external"]

    val set_external : t -> int -> unit [@@js.set "external"]

    val get_array_buffers : t -> int [@@js.get "arrayBuffers"]

    val set_array_buffers : t -> int -> unit [@@js.set "arrayBuffers"]
  end
  [@@js.scope "MemoryUsage"]

  module CpuUsage : sig
    type t = process_global_NodeJS_CpuUsage

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_user : t -> int [@@js.get "user"]

    val set_user : t -> int -> unit [@@js.set "user"]

    val get_system : t -> int [@@js.get "system"]

    val set_system : t -> int -> unit [@@js.set "system"]
  end
  [@@js.scope "CpuUsage"]

  module ProcessRelease : sig
    type t = process_global_NodeJS_ProcessRelease

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]

    val get_source_url : t -> string [@@js.get "sourceUrl"]

    val set_source_url : t -> string -> unit [@@js.set "sourceUrl"]

    val get_headers_url : t -> string [@@js.get "headersUrl"]

    val set_headers_url : t -> string -> unit [@@js.set "headersUrl"]

    val get_lib_url : t -> string [@@js.get "libUrl"]

    val set_lib_url : t -> string -> unit [@@js.set "libUrl"]

    val get_lts : t -> string [@@js.get "lts"]

    val set_lts : t -> string -> unit [@@js.set "lts"]
  end
  [@@js.scope "ProcessRelease"]

  module ProcessVersions : sig
    type t = process_global_NodeJS_ProcessVersions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_http_parser : t -> string [@@js.get "http_parser"]

    val set_http_parser : t -> string -> unit [@@js.set "http_parser"]

    val get_node : t -> string [@@js.get "node"]

    val set_node : t -> string -> unit [@@js.set "node"]

    val get_v8 : t -> string [@@js.get "v8"]

    val set_v8 : t -> string -> unit [@@js.set "v8"]

    val get_ares : t -> string [@@js.get "ares"]

    val set_ares : t -> string -> unit [@@js.set "ares"]

    val get_uv : t -> string [@@js.get "uv"]

    val set_uv : t -> string -> unit [@@js.set "uv"]

    val get_zlib : t -> string [@@js.get "zlib"]

    val set_zlib : t -> string -> unit [@@js.set "zlib"]

    val get_modules : t -> string [@@js.get "modules"]

    val set_modules : t -> string -> unit [@@js.set "modules"]

    val get_openssl : t -> string [@@js.get "openssl"]

    val set_openssl : t -> string -> unit [@@js.set "openssl"]

    val cast : t -> string Dict.t [@@js.cast]
  end
  [@@js.scope "ProcessVersions"]

  module Platform : sig
    type t =
      ([ `aix [@js "aix"]
       | `android [@js "android"]
       | `cygwin [@js "cygwin"]
       | `darwin [@js "darwin"]
       | `freebsd [@js "freebsd"]
       | `linux [@js "linux"]
       | `netbsd [@js "netbsd"]
       | `openbsd [@js "openbsd"]
       | `sunos [@js "sunos"]
       | `win32 [@js "win32"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Signals : sig
    type t =
      ([ `SIGABRT [@js "SIGABRT"]
       | `SIGALRM [@js "SIGALRM"]
       | `SIGBREAK [@js "SIGBREAK"]
       | `SIGBUS [@js "SIGBUS"]
       | `SIGCHLD [@js "SIGCHLD"]
       | `SIGCONT [@js "SIGCONT"]
       | `SIGFPE [@js "SIGFPE"]
       | `SIGHUP [@js "SIGHUP"]
       | `SIGILL [@js "SIGILL"]
       | `SIGINFO [@js "SIGINFO"]
       | `SIGINT [@js "SIGINT"]
       | `SIGIO [@js "SIGIO"]
       | `SIGIOT [@js "SIGIOT"]
       | `SIGKILL [@js "SIGKILL"]
       | `SIGLOST [@js "SIGLOST"]
       | `SIGPIPE [@js "SIGPIPE"]
       | `SIGPOLL [@js "SIGPOLL"]
       | `SIGPROF [@js "SIGPROF"]
       | `SIGPWR [@js "SIGPWR"]
       | `SIGQUIT [@js "SIGQUIT"]
       | `SIGSEGV [@js "SIGSEGV"]
       | `SIGSTKFLT [@js "SIGSTKFLT"]
       | `SIGSTOP [@js "SIGSTOP"]
       | `SIGSYS [@js "SIGSYS"]
       | `SIGTERM [@js "SIGTERM"]
       | `SIGTRAP [@js "SIGTRAP"]
       | `SIGTSTP [@js "SIGTSTP"]
       | `SIGTTIN [@js "SIGTTIN"]
       | `SIGTTOU [@js "SIGTTOU"]
       | `SIGUNUSED [@js "SIGUNUSED"]
       | `SIGURG [@js "SIGURG"]
       | `SIGUSR1 [@js "SIGUSR1"]
       | `SIGUSR2 [@js "SIGUSR2"]
       | `SIGVTALRM [@js "SIGVTALRM"]
       | `SIGWINCH [@js "SIGWINCH"]
       | `SIGXCPU [@js "SIGXCPU"]
       | `SIGXFSZ [@js "SIGXFSZ"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module MultipleResolveType : sig
    type t =
      ([ `reject [@js "reject"]
       | `resolve [@js "resolve"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module BeforeExitListener : sig
    type t = process_global_NodeJS_BeforeExitListener

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply : t -> code:int -> unit [@@js.apply]
  end
  [@@js.scope "BeforeExitListener"]

  module DisconnectListener : sig
    type t = process_global_NodeJS_DisconnectListener

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply : t -> unit [@@js.apply]
  end
  [@@js.scope "DisconnectListener"]

  module ExitListener : sig
    type t = process_global_NodeJS_ExitListener

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply : t -> code:int -> unit [@@js.apply]
  end
  [@@js.scope "ExitListener"]

  module RejectionHandledListener : sig
    type t = process_global_NodeJS_RejectionHandledListener

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply : t -> promise:any Promise.t -> unit [@@js.apply]
  end
  [@@js.scope "RejectionHandledListener"]

  module UncaughtExceptionListener : sig
    type t = process_global_NodeJS_UncaughtExceptionListener

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply : t -> error:Error.t -> unit [@@js.apply]
  end
  [@@js.scope "UncaughtExceptionListener"]

  module UnhandledRejectionListener : sig
    type t = process_global_NodeJS_UnhandledRejectionListener

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply
      :  t
      -> reason:AnonymousInterface0.t or_null_or_undefined
      -> promise:any Promise.t
      -> unit
      [@@js.apply]
  end
  [@@js.scope "UnhandledRejectionListener"]

  module WarningListener : sig
    type t = process_global_NodeJS_WarningListener

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply : t -> warning:Error.t -> unit [@@js.apply]
  end
  [@@js.scope "WarningListener"]

  module MessageListener : sig
    type t = process_global_NodeJS_MessageListener

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply : t -> message:any -> send_handle:any -> unit [@@js.apply]
  end
  [@@js.scope "MessageListener"]

  module SignalsListener : sig
    type t = process_global_NodeJS_SignalsListener

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply : t -> signal:NodeJS_Signals.t -> unit [@@js.apply]
  end
  [@@js.scope "SignalsListener"]

  module NewListenerListener : sig
    type t = process_global_NodeJS_NewListenerListener

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply
      :  t
      -> type_:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> unit
      [@@js.apply]
  end
  [@@js.scope "NewListenerListener"]

  module RemoveListenerListener : sig
    type t = process_global_NodeJS_RemoveListenerListener

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply
      :  t
      -> type_:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> unit
      [@@js.apply]
  end
  [@@js.scope "RemoveListenerListener"]

  module MultipleResolveListener : sig
    type t = process_global_NodeJS_MultipleResolveListener

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply
      :  t
      -> type_:NodeJS_MultipleResolveType.t
      -> promise:any Promise.t
      -> value:any
      -> unit
      [@@js.apply]
  end
  [@@js.scope "MultipleResolveListener"]

  module Socket : sig
    type t = process_global_NodeJS_Socket

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_is_tty : t -> ([ `L_b_true [@js true] ][@js.enum])
      [@@js.get "isTTY"]

    val set_is_tty : t -> ([ `L_b_true ][@js.enum]) -> unit [@@js.set "isTTY"]

    val cast : t -> ReadWriteStream.t [@@js.cast]
  end
  [@@js.scope "Socket"]

  module ProcessEnv : sig
    type t = process_global_NodeJS_ProcessEnv

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> string Dict.t [@@js.cast]
  end
  [@@js.scope "ProcessEnv"]

  module HRTime : sig
    type t = process_global_NodeJS_HRTime

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply : t -> ?time:int * int -> unit -> int * int [@@js.apply]

    val bigint : t -> bigint [@@js.call "bigint"]
  end
  [@@js.scope "HRTime"]

  module ProcessReport : sig
    type t = process_global_NodeJS_ProcessReport

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_directory : t -> string [@@js.get "directory"]

    val set_directory : t -> string -> unit [@@js.set "directory"]

    val get_filename : t -> string [@@js.get "filename"]

    val set_filename : t -> string -> unit [@@js.set "filename"]

    val get_report : t -> ?err:Error.t -> unit -> string [@@js.call "getReport"]

    val get_report_on_fatal_error : t -> bool [@@js.get "reportOnFatalError"]

    val set_report_on_fatal_error : t -> bool -> unit
      [@@js.set "reportOnFatalError"]

    val get_report_on_signal : t -> bool [@@js.get "reportOnSignal"]

    val set_report_on_signal : t -> bool -> unit [@@js.set "reportOnSignal"]

    val get_report_on_uncaught_exception : t -> bool
      [@@js.get "reportOnUncaughtException"]

    val set_report_on_uncaught_exception : t -> bool -> unit
      [@@js.set "reportOnUncaughtException"]

    val get_signal : t -> NodeJS_Signals.t [@@js.get "signal"]

    val set_signal : t -> NodeJS_Signals.t -> unit [@@js.set "signal"]

    val write_report : t -> ?file_name:string -> unit -> string
      [@@js.call "writeReport"]

    val write_report' : t -> ?error:Error.t -> unit -> string
      [@@js.call "writeReport"]

    val write_report''
      :  t
      -> ?file_name:string
      -> ?err:Error.t
      -> unit
      -> string
      [@@js.call "writeReport"]
  end
  [@@js.scope "ProcessReport"]

  module ResourceUsage : sig
    type t = process_global_NodeJS_ResourceUsage

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_fs_read : t -> int [@@js.get "fsRead"]

    val set_fs_read : t -> int -> unit [@@js.set "fsRead"]

    val get_fs_write : t -> int [@@js.get "fsWrite"]

    val set_fs_write : t -> int -> unit [@@js.set "fsWrite"]

    val get_involuntary_context_switches : t -> int
      [@@js.get "involuntaryContextSwitches"]

    val set_involuntary_context_switches : t -> int -> unit
      [@@js.set "involuntaryContextSwitches"]

    val get_ipc_received : t -> int [@@js.get "ipcReceived"]

    val set_ipc_received : t -> int -> unit [@@js.set "ipcReceived"]

    val get_ipc_sent : t -> int [@@js.get "ipcSent"]

    val set_ipc_sent : t -> int -> unit [@@js.set "ipcSent"]

    val get_major_page_fault : t -> int [@@js.get "majorPageFault"]

    val set_major_page_fault : t -> int -> unit [@@js.set "majorPageFault"]

    val get_max_rss : t -> int [@@js.get "maxRSS"]

    val set_max_rss : t -> int -> unit [@@js.set "maxRSS"]

    val get_minor_page_fault : t -> int [@@js.get "minorPageFault"]

    val set_minor_page_fault : t -> int -> unit [@@js.set "minorPageFault"]

    val get_shared_memory_size : t -> int [@@js.get "sharedMemorySize"]

    val set_shared_memory_size : t -> int -> unit [@@js.set "sharedMemorySize"]

    val get_signals_count : t -> int [@@js.get "signalsCount"]

    val set_signals_count : t -> int -> unit [@@js.set "signalsCount"]

    val get_swapped_out : t -> int [@@js.get "swappedOut"]

    val set_swapped_out : t -> int -> unit [@@js.set "swappedOut"]

    val get_system_cpu_time : t -> int [@@js.get "systemCPUTime"]

    val set_system_cpu_time : t -> int -> unit [@@js.set "systemCPUTime"]

    val get_unshared_data_size : t -> int [@@js.get "unsharedDataSize"]

    val set_unshared_data_size : t -> int -> unit [@@js.set "unsharedDataSize"]

    val get_unshared_stack_size : t -> int [@@js.get "unsharedStackSize"]

    val set_unshared_stack_size : t -> int -> unit
      [@@js.set "unsharedStackSize"]

    val get_user_cpu_time : t -> int [@@js.get "userCPUTime"]

    val set_user_cpu_time : t -> int -> unit [@@js.set "userCPUTime"]

    val get_voluntary_context_switches : t -> int
      [@@js.get "voluntaryContextSwitches"]

    val set_voluntary_context_switches : t -> int -> unit
      [@@js.set "voluntaryContextSwitches"]
  end
  [@@js.scope "ResourceUsage"]

  module Process : sig
    type t = process_global_NodeJS_Process

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_stdout
      :  t
      -> ( process_global_NodeJS_WriteStream
         , AnonymousInterface4.t )
         intersection2
      [@@js.get "stdout"]

    val set_stdout
      :  t
      -> ( process_global_NodeJS_WriteStream
         , AnonymousInterface4.t )
         intersection2
      -> unit
      [@@js.set "stdout"]

    val get_stderr
      :  t
      -> ( process_global_NodeJS_WriteStream
         , AnonymousInterface5.t )
         intersection2
      [@@js.get "stderr"]

    val set_stderr
      :  t
      -> ( process_global_NodeJS_WriteStream
         , AnonymousInterface5.t )
         intersection2
      -> unit
      [@@js.set "stderr"]

    val get_stdin
      :  t
      -> (NodeJS_ReadStream.t, AnonymousInterface3.t) intersection2
      [@@js.get "stdin"]

    val set_stdin
      :  t
      -> (NodeJS_ReadStream.t, AnonymousInterface3.t) intersection2
      -> unit
      [@@js.set "stdin"]

    val open_stdin : t -> NodeJS_Socket.t [@@js.call "openStdin"]

    val get_argv : t -> string list [@@js.get "argv"]

    val set_argv : t -> string list -> unit [@@js.set "argv"]

    val get_argv0 : t -> string [@@js.get "argv0"]

    val set_argv0 : t -> string -> unit [@@js.set "argv0"]

    val get_exec_argv : t -> string list [@@js.get "execArgv"]

    val set_exec_argv : t -> string list -> unit [@@js.set "execArgv"]

    val get_exec_path : t -> string [@@js.get "execPath"]

    val set_exec_path : t -> string -> unit [@@js.set "execPath"]

    val abort : t -> never [@@js.call "abort"]

    val chdir : t -> directory:string -> unit [@@js.call "chdir"]

    val cwd : t -> string [@@js.call "cwd"]

    val get_debug_port : t -> int [@@js.get "debugPort"]

    val set_debug_port : t -> int -> unit [@@js.set "debugPort"]

    val emit_warning
      :  t
      -> warning:Error.t or_string
      -> ?name:string
      -> ?ctor:untyped_function
      -> unit
      -> unit
      [@@js.call "emitWarning"]

    val get_env : t -> NodeJS_ProcessEnv.t [@@js.get "env"]

    val set_env : t -> NodeJS_ProcessEnv.t -> unit [@@js.set "env"]

    val exit : t -> ?code:int -> unit -> never [@@js.call "exit"]

    val get_exit_code : t -> int [@@js.get "exitCode"]

    val set_exit_code : t -> int -> unit [@@js.set "exitCode"]

    val getgid : t -> int [@@js.call "getgid"]

    val setgid : t -> id:string or_number -> unit [@@js.call "setgid"]

    val getuid : t -> int [@@js.call "getuid"]

    val setuid : t -> id:string or_number -> unit [@@js.call "setuid"]

    val geteuid : t -> int [@@js.call "geteuid"]

    val seteuid : t -> id:string or_number -> unit [@@js.call "seteuid"]

    val getegid : t -> int [@@js.call "getegid"]

    val setegid : t -> id:string or_number -> unit [@@js.call "setegid"]

    val getgroups : t -> int list [@@js.call "getgroups"]

    val setgroups : t -> groups:string or_number list -> unit
      [@@js.call "setgroups"]

    val set_uncaught_exception_capture_callback
      :  t
      -> cb:(err:Error.t -> unit) or_null
      -> unit
      [@@js.call "setUncaughtExceptionCaptureCallback"]

    val has_uncaught_exception_capture_callback : t -> bool
      [@@js.call "hasUncaughtExceptionCaptureCallback"]

    val get_version : t -> string [@@js.get "version"]

    val set_version : t -> string -> unit [@@js.set "version"]

    val get_versions : t -> NodeJS_ProcessVersions.t [@@js.get "versions"]

    val set_versions : t -> NodeJS_ProcessVersions.t -> unit
      [@@js.set "versions"]

    val get_config : t -> AnonymousInterface8.t [@@js.get "config"]

    val set_config : t -> AnonymousInterface8.t -> unit [@@js.set "config"]

    val kill
      :  t
      -> pid:int
      -> ?signal:string or_number
      -> unit
      -> ([ `L_b_true [@js true] ][@js.enum])
      [@@js.call "kill"]

    val get_pid : t -> int [@@js.get "pid"]

    val set_pid : t -> int -> unit [@@js.set "pid"]

    val get_ppid : t -> int [@@js.get "ppid"]

    val set_ppid : t -> int -> unit [@@js.set "ppid"]

    val get_title : t -> string [@@js.get "title"]

    val set_title : t -> string -> unit [@@js.set "title"]

    val get_arch : t -> string [@@js.get "arch"]

    val set_arch : t -> string -> unit [@@js.set "arch"]

    val get_platform : t -> NodeJS_Platform.t [@@js.get "platform"]

    val set_platform : t -> NodeJS_Platform.t -> unit [@@js.set "platform"]

    val get_main_module : t -> Module.t [@@js.get "mainModule"]

    val set_main_module : t -> Module.t -> unit [@@js.set "mainModule"]

    val memory_usage : t -> NodeJS_MemoryUsage.t [@@js.call "memoryUsage"]

    val cpu_usage
      :  t
      -> ?previous_value:NodeJS_CpuUsage.t
      -> unit
      -> NodeJS_CpuUsage.t
      [@@js.call "cpuUsage"]

    val next_tick
      :  t
      -> callback:untyped_function
      -> args:(any list[@js.variadic])
      -> unit
      [@@js.call "nextTick"]

    val get_release : t -> NodeJS_ProcessRelease.t [@@js.get "release"]

    val set_release : t -> NodeJS_ProcessRelease.t -> unit [@@js.set "release"]

    val get_features : t -> AnonymousInterface6.t [@@js.get "features"]

    val set_features : t -> AnonymousInterface6.t -> unit [@@js.set "features"]

    val umask : t -> int [@@js.call "umask"]

    val umask' : t -> mask:string or_number -> int [@@js.call "umask"]

    val uptime : t -> int [@@js.call "uptime"]

    val get_hrtime : t -> NodeJS_HRTime.t [@@js.get "hrtime"]

    val set_hrtime : t -> NodeJS_HRTime.t -> unit [@@js.set "hrtime"]

    val get_domain : t -> Node_domain.Domain.Domain.t [@@js.get "domain"]

    val set_domain : t -> Node_domain.Domain.Domain.t -> unit
      [@@js.set "domain"]

    val send
      :  t
      -> message:any
      -> ?send_handle:any
      -> ?options:AnonymousInterface7.t
      -> ?callback:(error:Error.t or_null -> unit)
      -> unit
      -> bool
      [@@js.call "send"]

    val disconnect : t -> unit [@@js.call "disconnect"]

    val get_connected : t -> bool [@@js.get "connected"]

    val set_connected : t -> bool -> unit [@@js.set "connected"]

    val get_allowed_node_environment_flags : t -> string ReadonlySet.t
      [@@js.get "allowedNodeEnvironmentFlags"]

    val set_allowed_node_environment_flags : t -> string ReadonlySet.t -> unit
      [@@js.set "allowedNodeEnvironmentFlags"]

    val get_report : t -> NodeJS_ProcessReport.t [@@js.get "report"]

    val set_report : t -> NodeJS_ProcessReport.t -> unit [@@js.set "report"]

    val resource_usage : t -> NodeJS_ResourceUsage.t [@@js.call "resourceUsage"]

    val get_trace_deprecation : t -> bool [@@js.get "traceDeprecation"]

    val set_trace_deprecation : t -> bool -> unit [@@js.set "traceDeprecation"]

    val add_listener
      :  t
      -> event:([ `beforeExit ][@js.enum])
      -> listener:NodeJS_BeforeExitListener.t
      -> t
      [@@js.call "addListener"]

    val add_listener'
      :  t
      -> event:([ `disconnect ][@js.enum])
      -> listener:NodeJS_DisconnectListener.t
      -> t
      [@@js.call "addListener"]

    val add_listener''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:NodeJS_ExitListener.t
      -> t
      [@@js.call "addListener"]

    val add_listener'''
      :  t
      -> event:([ `rejectionHandled ][@js.enum])
      -> listener:NodeJS_RejectionHandledListener.t
      -> t
      [@@js.call "addListener"]

    val add_listener''''
      :  t
      -> event:([ `uncaughtException ][@js.enum])
      -> listener:NodeJS_UncaughtExceptionListener.t
      -> t
      [@@js.call "addListener"]

    val add_listener'''''
      :  t
      -> event:([ `uncaughtExceptionMonitor ][@js.enum])
      -> listener:NodeJS_UncaughtExceptionListener.t
      -> t
      [@@js.call "addListener"]

    val add_listener''''''
      :  t
      -> event:([ `unhandledRejection ][@js.enum])
      -> listener:NodeJS_UnhandledRejectionListener.t
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''
      :  t
      -> event:([ `warning ][@js.enum])
      -> listener:NodeJS_WarningListener.t
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:NodeJS_MessageListener.t
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''''
      :  t
      -> event:NodeJS_Signals.t
      -> listener:NodeJS_SignalsListener.t
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''''
      :  t
      -> event:([ `newListener ][@js.enum])
      -> listener:NodeJS_NewListenerListener.t
      -> t
      [@@js.call "addListener"]

    val add_listener'''''''''''
      :  t
      -> event:([ `removeListener ][@js.enum])
      -> listener:NodeJS_RemoveListenerListener.t
      -> t
      [@@js.call "addListener"]

    val add_listener''''''''''''
      :  t
      -> event:([ `multipleResolves ][@js.enum])
      -> listener:NodeJS_MultipleResolveListener.t
      -> t
      [@@js.call "addListener"]

    val emit : t -> event:([ `beforeExit ][@js.enum]) -> code:int -> bool
      [@@js.call "emit"]

    val emit' : t -> event:([ `disconnect ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit'' : t -> event:([ `exit ][@js.enum]) -> code:int -> bool
      [@@js.call "emit"]

    val emit'''
      :  t
      -> event:([ `rejectionHandled ][@js.enum])
      -> promise:any Promise.t
      -> bool
      [@@js.call "emit"]

    val emit''''
      :  t
      -> event:([ `uncaughtException ][@js.enum])
      -> error:Error.t
      -> bool
      [@@js.call "emit"]

    val emit'''''
      :  t
      -> event:([ `uncaughtExceptionMonitor ][@js.enum])
      -> error:Error.t
      -> bool
      [@@js.call "emit"]

    val emit''''''
      :  t
      -> event:([ `unhandledRejection ][@js.enum])
      -> reason:any
      -> promise:any Promise.t
      -> bool
      [@@js.call "emit"]

    val emit'''''''
      :  t
      -> event:([ `warning ][@js.enum])
      -> warning:Error.t
      -> bool
      [@@js.call "emit"]

    val emit''''''''
      :  t
      -> event:([ `message ][@js.enum])
      -> message:any
      -> send_handle:any
      -> t
      [@@js.call "emit"]

    val emit'''''''''
      :  t
      -> event:NodeJS_Signals.t
      -> signal:NodeJS_Signals.t
      -> bool
      [@@js.call "emit"]

    val emit''''''''''
      :  t
      -> event:([ `newListener ][@js.enum])
      -> event_name:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "emit"]

    val emit'''''''''''
      :  t
      -> event:([ `removeListener ][@js.enum])
      -> event_name:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "emit"]

    val emit''''''''''''
      :  t
      -> event:([ `multipleResolves ][@js.enum])
      -> listener:NodeJS_MultipleResolveListener.t
      -> t
      [@@js.call "emit"]

    val on
      :  t
      -> event:([ `beforeExit ][@js.enum])
      -> listener:NodeJS_BeforeExitListener.t
      -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `disconnect ][@js.enum])
      -> listener:NodeJS_DisconnectListener.t
      -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:NodeJS_ExitListener.t
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `rejectionHandled ][@js.enum])
      -> listener:NodeJS_RejectionHandledListener.t
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `uncaughtException ][@js.enum])
      -> listener:NodeJS_UncaughtExceptionListener.t
      -> t
      [@@js.call "on"]

    val on'''''
      :  t
      -> event:([ `uncaughtExceptionMonitor ][@js.enum])
      -> listener:NodeJS_UncaughtExceptionListener.t
      -> t
      [@@js.call "on"]

    val on''''''
      :  t
      -> event:([ `unhandledRejection ][@js.enum])
      -> listener:NodeJS_UnhandledRejectionListener.t
      -> t
      [@@js.call "on"]

    val on'''''''
      :  t
      -> event:([ `warning ][@js.enum])
      -> listener:NodeJS_WarningListener.t
      -> t
      [@@js.call "on"]

    val on''''''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:NodeJS_MessageListener.t
      -> t
      [@@js.call "on"]

    val on'''''''''
      :  t
      -> event:NodeJS_Signals.t
      -> listener:NodeJS_SignalsListener.t
      -> t
      [@@js.call "on"]

    val on''''''''''
      :  t
      -> event:([ `newListener ][@js.enum])
      -> listener:NodeJS_NewListenerListener.t
      -> t
      [@@js.call "on"]

    val on'''''''''''
      :  t
      -> event:([ `removeListener ][@js.enum])
      -> listener:NodeJS_RemoveListenerListener.t
      -> t
      [@@js.call "on"]

    val on''''''''''''
      :  t
      -> event:([ `multipleResolves ][@js.enum])
      -> listener:NodeJS_MultipleResolveListener.t
      -> t
      [@@js.call "on"]

    val on'''''''''''''
      :  t
      -> event:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val once
      :  t
      -> event:([ `beforeExit ][@js.enum])
      -> listener:NodeJS_BeforeExitListener.t
      -> t
      [@@js.call "once"]

    val once'
      :  t
      -> event:([ `disconnect ][@js.enum])
      -> listener:NodeJS_DisconnectListener.t
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:NodeJS_ExitListener.t
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `rejectionHandled ][@js.enum])
      -> listener:NodeJS_RejectionHandledListener.t
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `uncaughtException ][@js.enum])
      -> listener:NodeJS_UncaughtExceptionListener.t
      -> t
      [@@js.call "once"]

    val once'''''
      :  t
      -> event:([ `uncaughtExceptionMonitor ][@js.enum])
      -> listener:NodeJS_UncaughtExceptionListener.t
      -> t
      [@@js.call "once"]

    val once''''''
      :  t
      -> event:([ `unhandledRejection ][@js.enum])
      -> listener:NodeJS_UnhandledRejectionListener.t
      -> t
      [@@js.call "once"]

    val once'''''''
      :  t
      -> event:([ `warning ][@js.enum])
      -> listener:NodeJS_WarningListener.t
      -> t
      [@@js.call "once"]

    val once''''''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:NodeJS_MessageListener.t
      -> t
      [@@js.call "once"]

    val once'''''''''
      :  t
      -> event:NodeJS_Signals.t
      -> listener:NodeJS_SignalsListener.t
      -> t
      [@@js.call "once"]

    val once''''''''''
      :  t
      -> event:([ `newListener ][@js.enum])
      -> listener:NodeJS_NewListenerListener.t
      -> t
      [@@js.call "once"]

    val once'''''''''''
      :  t
      -> event:([ `removeListener ][@js.enum])
      -> listener:NodeJS_RemoveListenerListener.t
      -> t
      [@@js.call "once"]

    val once''''''''''''
      :  t
      -> event:([ `multipleResolves ][@js.enum])
      -> listener:NodeJS_MultipleResolveListener.t
      -> t
      [@@js.call "once"]

    val prepend_listener
      :  t
      -> event:([ `beforeExit ][@js.enum])
      -> listener:NodeJS_BeforeExitListener.t
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'
      :  t
      -> event:([ `disconnect ][@js.enum])
      -> listener:NodeJS_DisconnectListener.t
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:NodeJS_ExitListener.t
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''
      :  t
      -> event:([ `rejectionHandled ][@js.enum])
      -> listener:NodeJS_RejectionHandledListener.t
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''
      :  t
      -> event:([ `uncaughtException ][@js.enum])
      -> listener:NodeJS_UncaughtExceptionListener.t
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''
      :  t
      -> event:([ `uncaughtExceptionMonitor ][@js.enum])
      -> listener:NodeJS_UncaughtExceptionListener.t
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''
      :  t
      -> event:([ `unhandledRejection ][@js.enum])
      -> listener:NodeJS_UnhandledRejectionListener.t
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''
      :  t
      -> event:([ `warning ][@js.enum])
      -> listener:NodeJS_WarningListener.t
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:NodeJS_MessageListener.t
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''''
      :  t
      -> event:NodeJS_Signals.t
      -> listener:NodeJS_SignalsListener.t
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''''
      :  t
      -> event:([ `newListener ][@js.enum])
      -> listener:NodeJS_NewListenerListener.t
      -> t
      [@@js.call "prependListener"]

    val prepend_listener'''''''''''
      :  t
      -> event:([ `removeListener ][@js.enum])
      -> listener:NodeJS_RemoveListenerListener.t
      -> t
      [@@js.call "prependListener"]

    val prepend_listener''''''''''''
      :  t
      -> event:([ `multipleResolves ][@js.enum])
      -> listener:NodeJS_MultipleResolveListener.t
      -> t
      [@@js.call "prependListener"]

    val prepend_once_listener
      :  t
      -> event:([ `beforeExit ][@js.enum])
      -> listener:NodeJS_BeforeExitListener.t
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'
      :  t
      -> event:([ `disconnect ][@js.enum])
      -> listener:NodeJS_DisconnectListener.t
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''
      :  t
      -> event:([ `exit ][@js.enum])
      -> listener:NodeJS_ExitListener.t
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''
      :  t
      -> event:([ `rejectionHandled ][@js.enum])
      -> listener:NodeJS_RejectionHandledListener.t
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''
      :  t
      -> event:([ `uncaughtException ][@js.enum])
      -> listener:NodeJS_UncaughtExceptionListener.t
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''
      :  t
      -> event:([ `uncaughtExceptionMonitor ][@js.enum])
      -> listener:NodeJS_UncaughtExceptionListener.t
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''
      :  t
      -> event:([ `unhandledRejection ][@js.enum])
      -> listener:NodeJS_UnhandledRejectionListener.t
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''
      :  t
      -> event:([ `warning ][@js.enum])
      -> listener:NodeJS_WarningListener.t
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''
      :  t
      -> event:([ `message ][@js.enum])
      -> listener:NodeJS_MessageListener.t
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''''
      :  t
      -> event:NodeJS_Signals.t
      -> listener:NodeJS_SignalsListener.t
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''''
      :  t
      -> event:([ `newListener ][@js.enum])
      -> listener:NodeJS_NewListenerListener.t
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener'''''''''''
      :  t
      -> event:([ `removeListener ][@js.enum])
      -> listener:NodeJS_RemoveListenerListener.t
      -> t
      [@@js.call "prependOnceListener"]

    val prepend_once_listener''''''''''''
      :  t
      -> event:([ `multipleResolves ][@js.enum])
      -> listener:NodeJS_MultipleResolveListener.t
      -> t
      [@@js.call "prependOnceListener"]

    val listeners
      :  t
      -> event:([ `beforeExit ][@js.enum])
      -> NodeJS_BeforeExitListener.t list
      [@@js.call "listeners"]

    val listeners'
      :  t
      -> event:([ `disconnect ][@js.enum])
      -> NodeJS_DisconnectListener.t list
      [@@js.call "listeners"]

    val listeners''
      :  t
      -> event:([ `exit ][@js.enum])
      -> NodeJS_ExitListener.t list
      [@@js.call "listeners"]

    val listeners'''
      :  t
      -> event:([ `rejectionHandled ][@js.enum])
      -> NodeJS_RejectionHandledListener.t list
      [@@js.call "listeners"]

    val listeners''''
      :  t
      -> event:([ `uncaughtException ][@js.enum])
      -> NodeJS_UncaughtExceptionListener.t list
      [@@js.call "listeners"]

    val listeners'''''
      :  t
      -> event:([ `uncaughtExceptionMonitor ][@js.enum])
      -> NodeJS_UncaughtExceptionListener.t list
      [@@js.call "listeners"]

    val listeners''''''
      :  t
      -> event:([ `unhandledRejection ][@js.enum])
      -> NodeJS_UnhandledRejectionListener.t list
      [@@js.call "listeners"]

    val listeners'''''''
      :  t
      -> event:([ `warning ][@js.enum])
      -> NodeJS_WarningListener.t list
      [@@js.call "listeners"]

    val listeners''''''''
      :  t
      -> event:([ `message ][@js.enum])
      -> NodeJS_MessageListener.t list
      [@@js.call "listeners"]

    val listeners'''''''''
      :  t
      -> event:NodeJS_Signals.t
      -> NodeJS_SignalsListener.t list
      [@@js.call "listeners"]

    val listeners''''''''''
      :  t
      -> event:([ `newListener ][@js.enum])
      -> NodeJS_NewListenerListener.t list
      [@@js.call "listeners"]

    val listeners'''''''''''
      :  t
      -> event:([ `removeListener ][@js.enum])
      -> NodeJS_RemoveListenerListener.t list
      [@@js.call "listeners"]

    val listeners''''''''''''
      :  t
      -> event:([ `multipleResolves ][@js.enum])
      -> NodeJS_MultipleResolveListener.t list
      [@@js.call "listeners"]

    val cast : t -> Node_events.Events.EventEmitter.t [@@js.cast]
  end
  [@@js.scope "Process"]

  module Global : sig
    type t = process_global_NodeJS_Global

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_process : t -> NodeJS_Process.t [@@js.get "process"]

    val set_process : t -> NodeJS_Process.t -> unit [@@js.set "process"]
  end
  [@@js.scope "Global"]
end
[@@js.scope Import.process]
