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

  val cflags : t -> any list [@@js.get "cflags"]

  val set_cflags : t -> any list -> unit [@@js.set "cflags"]

  val default_configuration : t -> string [@@js.get "default_configuration"]

  val set_default_configuration : t -> string -> unit
    [@@js.set "default_configuration"]

  val defines : t -> string list [@@js.get "defines"]

  val set_defines : t -> string list -> unit [@@js.set "defines"]

  val include_dirs : t -> string list [@@js.get "include_dirs"]

  val set_include_dirs : t -> string list -> unit [@@js.set "include_dirs"]

  val libraries : t -> string list [@@js.get "libraries"]

  val set_libraries : t -> string list -> unit [@@js.set "libraries"]
end

module AnonymousInterface2 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val clang : t -> int [@@js.get "clang"]

  val set_clang : t -> int -> unit [@@js.set "clang"]

  val host_arch : t -> string [@@js.get "host_arch"]

  val set_host_arch : t -> string -> unit [@@js.set "host_arch"]

  val node_install_npm : t -> bool [@@js.get "node_install_npm"]

  val set_node_install_npm : t -> bool -> unit [@@js.set "node_install_npm"]

  val node_install_waf : t -> bool [@@js.get "node_install_waf"]

  val set_node_install_waf : t -> bool -> unit [@@js.set "node_install_waf"]

  val node_prefix : t -> string [@@js.get "node_prefix"]

  val set_node_prefix : t -> string -> unit [@@js.set "node_prefix"]

  val node_shared_openssl : t -> bool [@@js.get "node_shared_openssl"]

  val set_node_shared_openssl : t -> bool -> unit
    [@@js.set "node_shared_openssl"]

  val node_shared_v8 : t -> bool [@@js.get "node_shared_v8"]

  val set_node_shared_v8 : t -> bool -> unit [@@js.set "node_shared_v8"]

  val node_shared_zlib : t -> bool [@@js.get "node_shared_zlib"]

  val set_node_shared_zlib : t -> bool -> unit [@@js.set "node_shared_zlib"]

  val node_use_dtrace : t -> bool [@@js.get "node_use_dtrace"]

  val set_node_use_dtrace : t -> bool -> unit [@@js.set "node_use_dtrace"]

  val node_use_etw : t -> bool [@@js.get "node_use_etw"]

  val set_node_use_etw : t -> bool -> unit [@@js.set "node_use_etw"]

  val node_use_openssl : t -> bool [@@js.get "node_use_openssl"]

  val set_node_use_openssl : t -> bool -> unit [@@js.set "node_use_openssl"]

  val tararch : t -> string [@@js.get "tararch"]

  val set_tararch : t -> string -> unit [@@js.set "tararch"]

  val v8_no_strict_aliasing : t -> int [@@js.get "v8_no_strict_aliasing"]

  val set_v8_no_strict_aliasing : t -> int -> unit
    [@@js.set "v8_no_strict_aliasing"]

  val v8_use_snapshot : t -> bool [@@js.get "v8_use_snapshot"]

  val set_v8_use_snapshot : t -> bool -> unit [@@js.set "v8_use_snapshot"]

  val visibility : t -> string [@@js.get "visibility"]

  val set_visibility : t -> string -> unit [@@js.set "visibility"]
end

module AnonymousInterface3 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val fd : t -> ([ `L_n_0 [@js 0] ][@js.enum]) [@@js.get "fd"]

  val set_fd : t -> ([ `L_n_0 ][@js.enum]) -> unit [@@js.set "fd"]
end

module AnonymousInterface4 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val fd : t -> ([ `L_n_1 [@js 1] ][@js.enum]) [@@js.get "fd"]

  val set_fd : t -> ([ `L_n_1 ][@js.enum]) -> unit [@@js.set "fd"]
end

module AnonymousInterface5 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val fd : t -> ([ `L_n_2 [@js 2] ][@js.enum]) [@@js.get "fd"]

  val set_fd : t -> ([ `L_n_2 ][@js.enum]) -> unit [@@js.set "fd"]
end

module AnonymousInterface6 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val inspector : t -> bool [@@js.get "inspector"]

  val set_inspector : t -> bool -> unit [@@js.set "inspector"]

  val debug : t -> bool [@@js.get "debug"]

  val set_debug : t -> bool -> unit [@@js.set "debug"]

  val uv : t -> bool [@@js.get "uv"]

  val set_uv : t -> bool -> unit [@@js.set "uv"]

  val ipv6 : t -> bool [@@js.get "ipv6"]

  val set_ipv6 : t -> bool -> unit [@@js.set "ipv6"]

  val tls_alpn : t -> bool [@@js.get "tls_alpn"]

  val set_tls_alpn : t -> bool -> unit [@@js.set "tls_alpn"]

  val tls_sni : t -> bool [@@js.get "tls_sni"]

  val set_tls_sni : t -> bool -> unit [@@js.set "tls_sni"]

  val tls_ocsp : t -> bool [@@js.get "tls_ocsp"]

  val set_tls_ocsp : t -> bool -> unit [@@js.set "tls_ocsp"]

  val tls : t -> bool [@@js.get "tls"]

  val set_tls : t -> bool -> unit [@@js.set "tls"]
end

module AnonymousInterface7 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val swallow_errors : t -> bool [@@js.get "swallowErrors"]

  val set_swallow_errors : t -> bool -> unit [@@js.set "swallowErrors"]
end

module AnonymousInterface8 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val tardefaults : t -> AnonymousInterface1.t [@@js.get "tardefaults"]

  val set_tardefaults : t -> AnonymousInterface1.t -> unit
    [@@js.set "tardefaults"]

  val variables : t -> AnonymousInterface2.t [@@js.get "variables"]

  val set_variables : t -> AnonymousInterface2.t -> unit [@@js.set "variables"]
end

module Process : sig
  open Node_tty

  module ReadStream : sig
    include module type of struct
      include Tty.ReadStream
    end
  end

  module WriteStream : sig
    include module type of struct
      include Tty.WriteStream
    end
  end

  module MemoryUsage : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val rss : t -> int [@@js.get "rss"]

    val set_rss : t -> int -> unit [@@js.set "rss"]

    val heap_total : t -> int [@@js.get "heapTotal"]

    val set_heap_total : t -> int -> unit [@@js.set "heapTotal"]

    val heap_used : t -> int [@@js.get "heapUsed"]

    val set_heap_used : t -> int -> unit [@@js.set "heapUsed"]

    val external_ : t -> int [@@js.get "external"]

    val set_external : t -> int -> unit [@@js.set "external"]

    val array_buffers : t -> int [@@js.get "arrayBuffers"]

    val set_array_buffers : t -> int -> unit [@@js.set "arrayBuffers"]
  end
  [@@js.scope "MemoryUsage"]

  module CpuUsage : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val user : t -> int [@@js.get "user"]

    val set_user : t -> int -> unit [@@js.set "user"]

    val system : t -> int [@@js.get "system"]

    val set_system : t -> int -> unit [@@js.set "system"]
  end
  [@@js.scope "CpuUsage"]

  module ProcessRelease : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]

    val source_url : t -> string [@@js.get "sourceUrl"]

    val set_source_url : t -> string -> unit [@@js.set "sourceUrl"]

    val headers_url : t -> string [@@js.get "headersUrl"]

    val set_headers_url : t -> string -> unit [@@js.set "headersUrl"]

    val lib_url : t -> string [@@js.get "libUrl"]

    val set_lib_url : t -> string -> unit [@@js.set "libUrl"]

    val lts : t -> string [@@js.get "lts"]

    val set_lts : t -> string -> unit [@@js.set "lts"]
  end
  [@@js.scope "ProcessRelease"]

  module ProcessVersions : sig
    type t = string Dict.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val http_parser : t -> string [@@js.get "http_parser"]

    val set_http_parser : t -> string -> unit [@@js.set "http_parser"]

    val node : t -> string [@@js.get "node"]

    val set_node : t -> string -> unit [@@js.set "node"]

    val v8 : t -> string [@@js.get "v8"]

    val set_v8 : t -> string -> unit [@@js.set "v8"]

    val ares : t -> string [@@js.get "ares"]

    val set_ares : t -> string -> unit [@@js.set "ares"]

    val uv : t -> string [@@js.get "uv"]

    val set_uv : t -> string -> unit [@@js.set "uv"]

    val zlib : t -> string [@@js.get "zlib"]

    val set_zlib : t -> string -> unit [@@js.set "zlib"]

    val modules : t -> string [@@js.get "modules"]

    val set_modules : t -> string -> unit [@@js.set "modules"]

    val openssl : t -> string [@@js.get "openssl"]

    val set_openssl : t -> string -> unit [@@js.set "openssl"]
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

  module MultipleResolvesType : sig
    type t =
      ([ `reject [@js "reject"]
       | `resolve [@js "resolve"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module BeforeExitListener : sig
    type t = code:int -> unit

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module DisconnectListener : sig
    type t = unit -> unit

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module ExitListener : sig
    type t = code:int -> unit

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module RejectionHandledListener : sig
    type t = promise:any Promise.t -> unit

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module UncaughtExceptionListener : sig
    type t = error:Error.t -> unit

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module UnhandledRejectionListener : sig
    type t =
      reason:AnonymousInterface0.t or_null_or_undefined
      -> promise:any Promise.t
      -> unit

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module WarningListener : sig
    type t = warning:Error.t -> unit

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module MessageListener : sig
    type t = message:any -> send_handle:any -> unit

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module SignalsListener : sig
    type t = signal:Signals.t -> unit

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module NewListenerListener : sig
    type t =
      type_:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> unit

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module RemoveListenerListener : sig
    type t =
      type_:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> unit

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module MultipleResolvesListener : sig
    type t =
      type_:MultipleResolvesType.t -> promise:any Promise.t -> value:any -> unit

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  type listener =
    ([ `BeforeExit of BeforeExitListener.t
     | `Disconnect of DisconnectListener.t
     | `Exit of ExitListener.t
     | `RejectionHandled of RejectionHandledListener.t
     | `UncaughtException of UncaughtExceptionListener.t
     | `UnhandledRejection of UnhandledRejectionListener.t
     | `Warning of WarningListener.t
     | `Message of MessageListener.t
     | `NewListener of NewListenerListener.t
     | `RemoveListener of RemoveListenerListener.t
     | `MultipleResolves of MultipleResolvesListener.t
     ]
    [@js.union])

  module Socket : sig
    include module type of struct
      include ReadWriteStream
    end

    val is_tty : t -> ([ `L_b_true [@js true] ][@js.enum]) [@@js.get "isTTY"]

    val set_is_tty : t -> ([ `L_b_true ][@js.enum]) -> unit [@@js.set "isTTY"]
  end
  [@@js.scope "Socket"]

  module ProcessEnv : sig
    type t = string Dict.t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module HRTime : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val apply : t -> ?time:int * int -> unit -> int * int [@@js.apply]

    val bigint : t -> bigint [@@js.call "bigint"]
  end
  [@@js.scope "HRTime"]

  module ProcessReport : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val directory : t -> string [@@js.get "directory"]

    val set_directory : t -> string -> unit [@@js.set "directory"]

    val filename : t -> string [@@js.get "filename"]

    val set_filename : t -> string -> unit [@@js.set "filename"]

    val get_report : t -> ?err:Error.t -> unit -> string [@@js.call "getReport"]

    val report_on_fatal_error : t -> bool [@@js.get "reportOnFatalError"]

    val set_report_on_fatal_error : t -> bool -> unit
      [@@js.set "reportOnFatalError"]

    val report_on_signal : t -> bool [@@js.get "reportOnSignal"]

    val set_report_on_signal : t -> bool -> unit [@@js.set "reportOnSignal"]

    val report_on_uncaught_exception : t -> bool
      [@@js.get "reportOnUncaughtException"]

    val set_report_on_uncaught_exception : t -> bool -> unit
      [@@js.set "reportOnUncaughtException"]

    val signal : t -> Signals.t [@@js.get "signal"]

    val set_signal : t -> Signals.t -> unit [@@js.set "signal"]

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
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val fs_read : t -> int [@@js.get "fsRead"]

    val set_fs_read : t -> int -> unit [@@js.set "fsRead"]

    val fs_write : t -> int [@@js.get "fsWrite"]

    val set_fs_write : t -> int -> unit [@@js.set "fsWrite"]

    val involuntary_context_switches : t -> int
      [@@js.get "involuntaryContextSwitches"]

    val set_involuntary_context_switches : t -> int -> unit
      [@@js.set "involuntaryContextSwitches"]

    val ipc_received : t -> int [@@js.get "ipcReceived"]

    val set_ipc_received : t -> int -> unit [@@js.set "ipcReceived"]

    val ipc_sent : t -> int [@@js.get "ipcSent"]

    val set_ipc_sent : t -> int -> unit [@@js.set "ipcSent"]

    val major_page_fault : t -> int [@@js.get "majorPageFault"]

    val set_major_page_fault : t -> int -> unit [@@js.set "majorPageFault"]

    val max_rss : t -> int [@@js.get "maxRSS"]

    val set_max_rss : t -> int -> unit [@@js.set "maxRSS"]

    val minor_page_fault : t -> int [@@js.get "minorPageFault"]

    val set_minor_page_fault : t -> int -> unit [@@js.set "minorPageFault"]

    val shared_memory_size : t -> int [@@js.get "sharedMemorySize"]

    val set_shared_memory_size : t -> int -> unit [@@js.set "sharedMemorySize"]

    val signals_count : t -> int [@@js.get "signalsCount"]

    val set_signals_count : t -> int -> unit [@@js.set "signalsCount"]

    val swapped_out : t -> int [@@js.get "swappedOut"]

    val set_swapped_out : t -> int -> unit [@@js.set "swappedOut"]

    val system_cpu_time : t -> int [@@js.get "systemCPUTime"]

    val set_system_cpu_time : t -> int -> unit [@@js.set "systemCPUTime"]

    val unshared_data_size : t -> int [@@js.get "unsharedDataSize"]

    val set_unshared_data_size : t -> int -> unit [@@js.set "unsharedDataSize"]

    val unshared_stack_size : t -> int [@@js.get "unsharedStackSize"]

    val set_unshared_stack_size : t -> int -> unit
      [@@js.set "unsharedStackSize"]

    val user_cpu_time : t -> int [@@js.get "userCPUTime"]

    val set_user_cpu_time : t -> int -> unit [@@js.set "userCPUTime"]

    val voluntary_context_switches : t -> int
      [@@js.get "voluntaryContextSwitches"]

    val set_voluntary_context_switches : t -> int -> unit
      [@@js.set "voluntaryContextSwitches"]
  end
  [@@js.scope "ResourceUsage"]

  module Process : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val stdout : t -> WriteStream.t [@@js.get "stdout"]

    val set_stdout : t -> WriteStream.t -> unit [@@js.set "stdout"]

    val stderr : t -> WriteStream.t [@@js.get "stderr"]

    val set_stderr : t -> WriteStream.t -> unit [@@js.set "stderr"]

    val stdin : t -> ReadStream.t [@@js.get "stdin"]

    val set_stdin : t -> ReadStream.t -> unit [@@js.set "stdin"]

    val open_stdin : t -> Socket.t [@@js.call "openStdin"]

    val argv : t -> string list [@@js.get "argv"]

    val set_argv : t -> string list -> unit [@@js.set "argv"]

    val argv0 : t -> string [@@js.get "argv0"]

    val set_argv0 : t -> string -> unit [@@js.set "argv0"]

    val exec_argv : t -> string list [@@js.get "execArgv"]

    val set_exec_argv : t -> string list -> unit [@@js.set "execArgv"]

    val exec_path : t -> string [@@js.get "execPath"]

    val set_exec_path : t -> string -> unit [@@js.set "execPath"]

    val abort : t -> never [@@js.call "abort"]

    val chdir : t -> directory:string -> unit [@@js.call "chdir"]

    val cwd : t -> string [@@js.call "cwd"]

    val debug_port : t -> int [@@js.get "debugPort"]

    val set_debug_port : t -> int -> unit [@@js.set "debugPort"]

    val emit_warning
      :  t
      -> event:([ `warning ][@js.enum])
      -> warning:Error.t or_string
      -> ?name:string
      -> ?ctor:untyped_function
      -> unit
      -> unit
      [@@js.call "emitWarning"]

    val env : t -> ProcessEnv.t [@@js.get "env"]

    val set_env : t -> ProcessEnv.t -> unit [@@js.set "env"]

    val exit : t -> ?code:int -> unit -> never [@@js.call "exit"]

    val exit_code : t -> int [@@js.get "exitCode"]

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

    val version : t -> string [@@js.get "version"]

    val set_version : t -> string -> unit [@@js.set "version"]

    val versions : t -> ProcessVersions.t [@@js.get "versions"]

    val set_versions : t -> ProcessVersions.t -> unit [@@js.set "versions"]

    val config : t -> AnonymousInterface8.t [@@js.get "config"]

    val set_config : t -> AnonymousInterface8.t -> unit [@@js.set "config"]

    val kill
      :  t
      -> pid:int
      -> ?signal:string or_number
      -> unit
      -> ([ `L_b_true [@js true] ][@js.enum])
      [@@js.call "kill"]

    val pid : t -> int [@@js.get "pid"]

    val set_pid : t -> int -> unit [@@js.set "pid"]

    val ppid : t -> int [@@js.get "ppid"]

    val set_ppid : t -> int -> unit [@@js.set "ppid"]

    val title : t -> string [@@js.get "title"]

    val set_title : t -> string -> unit [@@js.set "title"]

    val arch : t -> string [@@js.get "arch"]

    val set_arch : t -> string -> unit [@@js.set "arch"]

    val platform : t -> Platform.t [@@js.get "platform"]

    val set_platform : t -> Platform.t -> unit [@@js.set "platform"]

    val main_module : t -> Module.t [@@js.get "mainModule"]

    val set_main_module : t -> Module.t -> unit [@@js.set "mainModule"]

    val memory_usage : t -> MemoryUsage.t [@@js.call "memoryUsage"]

    val cpu_usage : t -> ?previous_value:CpuUsage.t -> unit -> CpuUsage.t
      [@@js.call "cpuUsage"]

    val next_tick
      :  t
      -> callback:untyped_function
      -> args:(any list[@js.variadic])
      -> unit
      [@@js.call "nextTick"]

    val release : t -> ProcessRelease.t [@@js.get "release"]

    val set_release : t -> ProcessRelease.t -> unit [@@js.set "release"]

    val features : t -> AnonymousInterface6.t [@@js.get "features"]

    val set_features : t -> AnonymousInterface6.t -> unit [@@js.set "features"]

    val umask : t -> int [@@js.call "umask"]

    val umask' : t -> mask:string or_number -> int [@@js.call "umask"]

    val uptime : t -> int [@@js.call "uptime"]

    val hrtime : t -> HRTime.t [@@js.get "hrtime"]

    val set_hrtime : t -> HRTime.t -> unit [@@js.set "hrtime"]

    val domain : t -> Node_domain.Domain.Domain.t [@@js.get "domain"]

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

    val connected : t -> bool [@@js.get "connected"]

    val set_connected : t -> bool -> unit [@@js.set "connected"]

    val allowed_node_environment_flags : t -> string ReadonlySet.t
      [@@js.get "allowedNodeEnvironmentFlags"]

    val set_allowed_node_environment_flags : t -> string ReadonlySet.t -> unit
      [@@js.set "allowedNodeEnvironmentFlags"]

    val report : t -> ProcessReport.t [@@js.get "report"]

    val set_report : t -> ProcessReport.t -> unit [@@js.set "report"]

    val resource_usage : t -> ResourceUsage.t [@@js.call "resourceUsage"]

    val trace_deprecation : t -> bool [@@js.get "traceDeprecation"]

    val set_trace_deprecation : t -> bool -> unit [@@js.set "traceDeprecation"]

    [@@@js.stop]

    val on : t -> listener -> unit

    val add_listener : t -> listener -> unit

    val once : t -> listener -> unit

    val prepend_listener : t -> listener -> unit

    val listeners_before_exit : t -> BeforeExitListener.t list

    val listeners_disconnect : t -> DisconnectListener.t list

    val listeners_exit : t -> ExitListener.t list

    val listeners_rejection_handled : t -> RejectionHandledListener.t list

    val listeners_uncaught_exception : t -> UncaughtExceptionListener.t list

    val listeners_uncaught_exception : t -> UncaughtExceptionListener.t list

    val listeners_unhandled_rejection : t -> UnhandledRejectionListener.t list

    val listeners_warning : t -> WarningListener.t list

    val listeners_message : t -> MessageListener.t list

    val listeners_new_listener : t -> NewListenerListener.t list

    val listeners_remove_listener : t -> RemoveListenerListener.t list

    val listeners_multiple_resolves : t -> MultipleResolvesListener.t list

    [@@@js.start]

    [@@@js.implem
    val on : t -> string -> Ojs.t -> unit [@@js.call "on"]

    val add_listener : t -> string -> Ojs.t -> unit [@@js.call "addListener"]

    val once : t -> string -> Ojs.t -> unit [@@js.call "once"]

    val prepend_listener : t -> string -> Ojs.t -> unit
      [@@js.call "prependListener"]

    val prepend_once_listener : t -> string -> Ojs.t -> unit
      [@@js.call "prependOnceListener"]

    val listeners : t -> string -> Ojs.t list [@@js.call "listeners"]

    let with_listener_fn fn t = function
      | `BeforeExit f ->
        fn t "beforeExit" @@ [%js.of: BeforeExitListener.t] f
      | `Disconnect f ->
        fn t "disconnect" @@ [%js.of: DisconnectListener.t] f
      | `Exit f ->
        fn t "exit" @@ [%js.of: ExitListener.t] f
      | `RejectionHandled f ->
        fn t "rejectionHandled" @@ [%js.of: RejectionHandledListener.t] f
      | `UncaughtException f ->
        fn t "uncaughtException" @@ [%js.of: UncaughtExceptionListener.t] f
      | `UnhandledRejection f ->
        fn t "unhandledRejection" @@ [%js.of: UnhandledRejectionListener.t] f
      | `Warning f ->
        fn t "warning" @@ [%js.of: WarningListener.t] f
      | `Message f ->
        fn t "message" @@ [%js.of: MessageListener.t] f
      | `NewListener f ->
        fn t "newListener" @@ [%js.of: NewListenerListener.t] f
      | `RemoveListener f ->
        fn t "removeListener" @@ [%js.of: RemoveListenerListener.t] f
      | `MultipleResolves f ->
        fn t "multipleResolves" @@ [%js.of: MultipleResolvesListener.t] f

    let on = with_listener_fn on

    let add_listener = with_listener_fn add_listener

    let once = with_listener_fn once

    let prepend_listener = with_listener_fn prepend_listener

    let prepend_once_listener = with_listener_fn prepend_once_listener

    let listeners_before_exit t =
      listeners t "beforeExit" |> List.map BeforeExitListener.t_of_js

    let listeners_disconnect t =
      listeners t "disconnect" |> List.map DisconnectListener.t_of_js

    let listeners_exit t = listeners t "exit" |> List.map ExitListener.t_of_js

    let listeners_rejection_handled t =
      listeners t "rejectionHandled"
      |> List.map RejectionHandledListener.t_of_js

    let listeners_uncaught_exception t =
      listeners t "uncaughtException"
      |> List.map UncaughtExceptionListener.t_of_js

    let listeners_uncaught_exception t =
      listeners t "uncaughtException"
      |> List.map UncaughtExceptionListener.t_of_js

    let listeners_unhandled_rejection t =
      listeners t "unhandledRejection"
      |> List.map UnhandledRejectionListener.t_of_js

    let listeners_warning t =
      listeners t "warning" |> List.map WarningListener.t_of_js

    let listeners_message t =
      listeners t "message" |> List.map MessageListener.t_of_js

    let listeners_signals t =
      listeners t "signals" |> List.map SignalsListener.t_of_js

    let listeners_new_listener t =
      listeners t "newListener" |> List.map NewListenerListener.t_of_js

    let listeners_remove_listener t =
      listeners t "removeListener" |> List.map RemoveListenerListener.t_of_js

    let listeners_multiple_resolves t =
      listeners t "multipleResolves"
      |> List.map MultipleResolvesListener.t_of_js]

    val emit_before_exit
      :  t
      -> event:([ `beforeExit ][@js.enum])
      -> code:int
      -> bool
      [@@js.call "emit"]

    val emit_disconnect : t -> event:([ `disconnect ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit_exit : t -> event:([ `exit ][@js.enum]) -> code:int -> bool
      [@@js.call "emit"]

    val emit_rejection_handled
      :  t
      -> event:([ `rejectionHandled ][@js.enum])
      -> promise:any Promise.t
      -> bool
      [@@js.call "emit"]

    val emit_uncaught_exception
      :  t
      -> event:([ `uncaughtException ][@js.enum])
      -> error:Error.t
      -> bool
      [@@js.call "emit"]

    val emit_uncaught_exception_monitor
      :  t
      -> event:([ `uncaughtExceptionMonitor ][@js.enum])
      -> error:Error.t
      -> bool
      [@@js.call "emit"]

    val emit_unhandled_rejection
      :  t
      -> event:([ `unhandledRejection ][@js.enum])
      -> reason:any
      -> promise:any Promise.t
      -> bool
      [@@js.call "emit"]

    val emit_warning
      :  t
      -> event:([ `warning ][@js.enum])
      -> warning:Error.t
      -> bool
      [@@js.call "emit"]

    val emit_message
      :  t
      -> event:([ `message ][@js.enum])
      -> message:any
      -> send_handle:any
      -> t
      [@@js.call "emit"]

    val emit_new_listener
      :  t
      -> event:([ `newListener ][@js.enum])
      -> event_name:symbol or_string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "emit"]

    val emit_remove_listener
      :  t
      -> event:([ `removeListener ][@js.enum])
      -> event_name:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "emit"]

    val emit_multiple_resolves
      :  t
      -> event:([ `multipleResolves ][@js.enum])
      -> listener:MultipleResolvesListener.t
      -> t
      [@@js.call "emit"]
  end
  [@@js.scope "Process"]

  val stdout : WriteStream.t [@@js.global "stdout"]

  val set_stdout : WriteStream.t -> unit [@@js.global "stdout"]

  val stderr : WriteStream.t [@@js.global "stderr"]

  val set_stderr : WriteStream.t -> unit [@@js.global "stderr"]

  val stdin : ReadStream.t [@@js.global "stdin"]

  val set_stdin : ReadStream.t -> unit [@@js.global "stdin"]

  val open_stdin : Socket.t [@@js.global "openStdin"]

  val argv : string list [@@js.global "argv"]

  val set_argv : string list -> unit [@@js.global "argv"]

  val argv0 : string [@@js.global "argv0"]

  val set_argv0 : string -> unit [@@js.global "argv0"]

  val exec_argv : string list [@@js.global "execArgv"]

  val set_exec_argv : string list -> unit [@@js.global "execArgv"]

  val exec_path : string [@@js.global "execPath"]

  val set_exec_path : string -> unit [@@js.global "execPath"]

  val abort : never [@@js.global "abort"]

  val chdir : directory:string -> unit [@@js.global "chdir"]

  val cwd : string [@@js.global "cwd"]

  val debug_port : int [@@js.global "debugPort"]

  val set_debug_port : int -> unit [@@js.global "debugPort"]

  val emit_warning
    :  warning:Error.t or_string
    -> ?name:string
    -> ?ctor:untyped_function
    -> unit
    -> unit
    [@@js.global "emitWarning"]

  val env : ProcessEnv.t [@@js.global "env"]

  val set_env : ProcessEnv.t -> unit [@@js.global "env"]

  val exit : ?code:int -> unit -> never [@@js.global "exit"]

  val exit_code : int [@@js.global "exitCode"]

  val set_exit_code : int -> unit [@@js.global "exitCode"]

  val getgid : int [@@js.global "getgid"]

  val setgid : id:string or_number -> unit [@@js.global "setgid"]

  val getuid : int [@@js.global "getuid"]

  val setuid : id:string or_number -> unit [@@js.global "setuid"]

  val geteuid : int [@@js.global "geteuid"]

  val seteuid : id:string or_number -> unit [@@js.global "seteuid"]

  val getegid : int [@@js.global "getegid"]

  val setegid : id:string or_number -> unit [@@js.global "setegid"]

  val getgroups : int list [@@js.global "getgroups"]

  val setgroups : groups:string or_number list -> unit [@@js.global "setgroups"]

  val set_uncaught_exception_capture_callback
    :  cb:(err:Error.t -> unit) or_null
    -> unit
    [@@js.global "setUncaughtExceptionCaptureCallback"]

  val has_uncaught_exception_capture_callback : bool
    [@@js.global "hasUncaughtExceptionCaptureCallback"]

  val version : string [@@js.global "version"]

  val set_version : string -> unit [@@js.global "version"]

  val versions : ProcessVersions.t [@@js.global "versions"]

  val set_versions : ProcessVersions.t -> unit [@@js.global "versions"]

  val config : AnonymousInterface8.t [@@js.global "config"]

  val set_config : AnonymousInterface8.t -> unit [@@js.global "config"]

  val kill
    :  pid:int
    -> ?signal:string or_number
    -> unit
    -> ([ `L_b_true [@js true] ][@js.enum])
    [@@js.global "kill"]

  val pid : int [@@js.global "pid"]

  val set_pid : int -> unit [@@js.global "pid"]

  val ppid : int [@@js.global "ppid"]

  val set_ppid : int -> unit [@@js.global "ppid"]

  val title : string [@@js.global "title"]

  val set_title : string -> unit [@@js.global "title"]

  val arch : string [@@js.global "arch"]

  val set_arch : string -> unit [@@js.global "arch"]

  val platform : Platform.t [@@js.global "platform"]

  val set_platform : Platform.t -> unit [@@js.global "platform"]

  val main_module : Module.t [@@js.global "mainModule"]

  val set_main_module : Module.t -> unit [@@js.global "mainModule"]

  val memory_usage : MemoryUsage.t [@@js.global "memoryUsage"]

  val cpu_usage : ?previous_value:CpuUsage.t -> unit -> CpuUsage.t
    [@@js.global "cpuUsage"]

  val next_tick
    :  callback:untyped_function
    -> args:(any list[@js.variadic])
    -> unit
    [@@js.global "nextTick"]

  val release : ProcessRelease.t [@@js.global "release"]

  val set_release : ProcessRelease.t -> unit [@@js.global "release"]

  val features : AnonymousInterface6.t [@@js.global "features"]

  val set_features : AnonymousInterface6.t -> unit [@@js.global "features"]

  val umask : int [@@js.global "umask"]

  val umask' : mask:string or_number -> int [@@js.global "umask"]

  val uptime : int [@@js.global "uptime"]

  val hrtime : HRTime.t [@@js.global "hrtime"]

  val set_hrtime : HRTime.t -> unit [@@js.global "hrtime"]

  val domain : Node_domain.Domain.Domain.t [@@js.global "domain"]

  val set_domain : Node_domain.Domain.Domain.t -> unit [@@js.global "domain"]

  val send
    :  message:any
    -> ?send_handle:any
    -> ?options:AnonymousInterface7.t
    -> ?callback:(error:Error.t or_null -> unit)
    -> unit
    -> bool
    [@@js.global "send"]

  val disconnect : unit [@@js.global "disconnect"]

  val connected : bool [@@js.global "connected"]

  val set_connected : bool -> unit [@@js.global "connected"]

  val allowed_node_environment_flags : string ReadonlySet.t
    [@@js.global "allowedNodeEnvironmentFlags"]

  val set_allowed_node_environment_flags : string ReadonlySet.t -> unit
    [@@js.global "allowedNodeEnvironmentFlags"]

  val report : ProcessReport.t [@@js.global "report"]

  val set_report : ProcessReport.t -> unit [@@js.global "report"]

  val resource_usage : ResourceUsage.t [@@js.global "resourceUsage"]

  val trace_deprecation : bool [@@js.global "traceDeprecation"]

  val set_trace_deprecation : bool -> unit [@@js.global "traceDeprecation"]

  [@@@js.stop]

  val on : listener -> unit

  val add_listener : listener -> unit

  val once : listener -> unit

  val prepend_listener : listener -> unit

  (* val listeners_before_exit : BeforeExitListener.t list

     val listeners_disconnect : DisconnectListener.t list

     val listeners_exit : ExitListener.t list

     val listeners_rejection_handled : RejectionHandledListener.t list

     val listeners_uncaught_exception : UncaughtExceptionListener.t list

     val listeners_uncaught_exception : UncaughtExceptionListener.t list

     val listeners_unhandled_rejection : UnhandledRejectionListener.t list

     val listeners_warning : WarningListener.t list

     val listeners_message : MessageListener.t list

     val listeners_new_listener : NewListenerListener.t list

     val listeners_remove_listener : RemoveListenerListener.t list

     val listeners_multiple_resolves : MultipleResolvesListener.t list *)

  [@@@js.start]

  [@@@js.implem
  val on : string -> Ojs.t -> unit [@@js.global "on"]

  val add_listener : string -> Ojs.t -> unit [@@js.global "addListener"]

  val once : string -> Ojs.t -> unit [@@js.global "once"]

  val prepend_listener : string -> Ojs.t -> unit [@@js.global "prependListener"]

  val prepend_once_listener : string -> Ojs.t -> unit
    [@@js.global "prependOnceListener"]

  (* val listeners : string -> Ojs.t list [@@js.global "listeners"] *)

  let with_listener_fn fn = function
    | `BeforeExit f ->
      fn "beforeExit" @@ [%js.of: BeforeExitListener.t] f
    | `Disconnect f ->
      fn "disconnect" @@ [%js.of: DisconnectListener.t] f
    | `Exit f ->
      fn "exit" @@ [%js.of: ExitListener.t] f
    | `RejectionHandled f ->
      fn "rejectionHandled" @@ [%js.of: RejectionHandledListener.t] f
    | `UncaughtException f ->
      fn "uncaughtException" @@ [%js.of: UncaughtExceptionListener.t] f
    | `UnhandledRejection f ->
      fn "unhandledRejection" @@ [%js.of: UnhandledRejectionListener.t] f
    | `Warning f ->
      fn "warning" @@ [%js.of: WarningListener.t] f
    | `Message f ->
      fn "message" @@ [%js.of: MessageListener.t] f
    | `NewListener f ->
      fn "newListener" @@ [%js.of: NewListenerListener.t] f
    | `RemoveListener f ->
      fn "removeListener" @@ [%js.of: RemoveListenerListener.t] f
    | `MultipleResolves f ->
      fn "multipleResolves" @@ [%js.of: MultipleResolvesListener.t] f

  let on = with_listener_fn on

  let add_listener = with_listener_fn add_listener

  let once = with_listener_fn once

  let prepend_listener = with_listener_fn prepend_listener

  let prepend_once_listener = with_listener_fn prepend_once_listener

  (* let listeners_before_exit = listeners "beforeExit" |> List.map
     BeforeExitListener.t_of_js

     let listeners_disconnect = listeners "disconnect" |> List.map
     DisconnectListener.t_of_js

     let listeners_exit = listeners "exit" |> List.map ExitListener.t_of_js

     let listeners_rejection_handled = listeners "rejectionHandled" |> List.map
     RejectionHandledListener.t_of_js

     let listeners_uncaught_exception = listeners "uncaughtException" |>
     List.map UncaughtExceptionListener.t_of_js

     let listeners_uncaught_exception = listeners "uncaughtException" |>
     List.map UncaughtExceptionListener.t_of_js

     let listeners_unhandled_rejection = listeners "unhandledRejection" |>
     List.map UnhandledRejectionListener.t_of_js

     let listeners_warning = listeners "warning" |> List.map
     WarningListener.t_of_js

     let listeners_message = listeners "message" |> List.map
     MessageListener.t_of_js

     let listeners_signals = listeners "signals" |> List.map
     SignalsListener.t_of_js

     let listeners_new_listener = listeners "newListener" |> List.map
     NewListenerListener.t_of_js

     let listeners_remove_listener = listeners "removeListener" |> List.map
     RemoveListenerListener.t_of_js

     let listeners_multiple_resolves = listeners "multipleResolves" |> List.map
     MultipleResolvesListener.t_of_js *)]

  val emit_before_exit : event:([ `beforeExit ][@js.enum]) -> code:int -> bool
    [@@js.global "emit"]

  val emit_disconnect : event:([ `disconnect ][@js.enum]) -> bool
    [@@js.global "emit"]

  val emit_exit : event:([ `exit ][@js.enum]) -> code:int -> bool
    [@@js.global "emit"]

  val emit_rejection_handled
    :  event:([ `rejectionHandled ][@js.enum])
    -> promise:any Promise.t
    -> bool
    [@@js.global "emit"]

  val emit_uncaught_exception
    :  event:([ `uncaughtException ][@js.enum])
    -> error:Error.t
    -> bool
    [@@js.global "emit"]

  val emit_uncaught_exception_monitor
    :  event:([ `uncaughtExceptionMonitor ][@js.enum])
    -> error:Error.t
    -> bool
    [@@js.global "emit"]

  val emit_unhandled_rejection
    :  event:([ `unhandledRejection ][@js.enum])
    -> reason:any
    -> promise:any Promise.t
    -> bool
    [@@js.global "emit"]

  val emit_warning : event:([ `warning ][@js.enum]) -> warning:Error.t -> bool
    [@@js.global "emit"]

  val emit_message
    :  event:([ `message ][@js.enum])
    -> message:any
    -> send_handle:any
    -> Process.t
    [@@js.global "emit"]

  val emit_new_listener
    :  event:([ `newListener ][@js.enum])
    -> event_name:symbol or_string
    -> listener:(args:(any list[@js.variadic]) -> unit)
    -> Process.t
    [@@js.global "emit"]

  val emit_remove_listener
    :  event:([ `removeListener ][@js.enum])
    -> event_name:string
    -> listener:(args:(any list[@js.variadic]) -> unit)
    -> Process.t
    [@@js.global "emit"]

  val emit_multiple_resolves
    :  event:([ `multipleResolves ][@js.enum])
    -> listener:MultipleResolvesListener.t
    -> Process.t
    [@@js.global "emit"]
end
[@@js.scope Import.process]

val process : Process.Process.t [@@js.global "process"]
