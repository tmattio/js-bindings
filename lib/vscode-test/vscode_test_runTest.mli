[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get : t -> string -> string or_undefined [@@js.index_get]

  val set : t -> string -> string or_undefined -> unit [@@js.index_set]
end

(* import { DownloadVersion, DownloadPlatform } from './download'; *)
module TestOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_vscode_executable_path : t -> string [@@js.get "vscodeExecutablePath"]

  val set_vscode_executable_path : t -> string -> unit
    [@@js.set "vscodeExecutablePath"]

  val get_version : t -> DownloadVersion.t [@@js.get "version"]

  val set_version : t -> DownloadVersion.t -> unit [@@js.set "version"]

  val get_platform : t -> DownloadPlatform.t [@@js.get "platform"]

  val set_platform : t -> DownloadPlatform.t -> unit [@@js.set "platform"]

  val get_extension_development_path : t -> string
    [@@js.get "extensionDevelopmentPath"]

  val set_extension_development_path : t -> string -> unit
    [@@js.set "extensionDevelopmentPath"]

  val get_extension_tests_path : t -> string [@@js.get "extensionTestsPath"]

  val set_extension_tests_path : t -> string -> unit
    [@@js.set "extensionTestsPath"]

  val get_extension_tests_env : t -> AnonymousInterface0.t
    [@@js.get "extensionTestsEnv"]

  val set_extension_tests_env : t -> AnonymousInterface0.t -> unit
    [@@js.set "extensionTestsEnv"]

  val get_launch_args : t -> string list [@@js.get "launchArgs"]

  val set_launch_args : t -> string list -> unit [@@js.set "launchArgs"]
end
[@@js.scope "TestOptions"]

val run_tests : options:TestOptions.t -> int Promise.t [@@js.global "runTests"]
