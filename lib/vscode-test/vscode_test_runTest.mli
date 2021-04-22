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
  type t = _TestOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_vscodeExecutablePath : t -> string [@@js.get "vscodeExecutablePath"]

  val set_vscodeExecutablePath : t -> string -> unit
    [@@js.set "vscodeExecutablePath"]

  val get_version : t -> DownloadVersion.t [@@js.get "version"]

  val set_version : t -> DownloadVersion.t -> unit [@@js.set "version"]

  val get_platform : t -> DownloadPlatform.t [@@js.get "platform"]

  val set_platform : t -> DownloadPlatform.t -> unit [@@js.set "platform"]

  val get_extensionDevelopmentPath : t -> string
    [@@js.get "extensionDevelopmentPath"]

  val set_extensionDevelopmentPath : t -> string -> unit
    [@@js.set "extensionDevelopmentPath"]

  val get_extensionTestsPath : t -> string [@@js.get "extensionTestsPath"]

  val set_extensionTestsPath : t -> string -> unit
    [@@js.set "extensionTestsPath"]

  val get_extensionTestsEnv : t -> AnonymousInterface0.t
    [@@js.get "extensionTestsEnv"]

  val set_extensionTestsEnv : t -> AnonymousInterface0.t -> unit
    [@@js.set "extensionTestsEnv"]

  val get_launchArgs : t -> string list [@@js.get "launchArgs"]

  val set_launchArgs : t -> string list -> unit [@@js.set "launchArgs"]
end
[@@js.scope "TestOptions"]

val runTests : options:_TestOptions -> int Promise.t [@@js.global "runTests"]
