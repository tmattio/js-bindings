[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type wasi_WASI = [ `Wasi_WASI ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and wasi_WASIOptions = [ `Wasi_WASIOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module Wasi : sig
  module WASIOptions : sig
    type t = wasi_WASIOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_args : t -> string list [@@js.get "args"]

    val set_args : t -> string list -> unit [@@js.set "args"]

    val get_env : t -> untyped_object [@@js.get "env"]

    val set_env : t -> untyped_object -> unit [@@js.set "env"]

    val get_preopens : t -> string Dict.t [@@js.get "preopens"]

    val set_preopens : t -> string Dict.t -> unit [@@js.set "preopens"]

    val get_returnOnExit : t -> bool [@@js.get "returnOnExit"]

    val set_returnOnExit : t -> bool -> unit [@@js.set "returnOnExit"]

    val get_stdin : t -> float [@@js.get "stdin"]

    val set_stdin : t -> float -> unit [@@js.set "stdin"]

    val get_stdout : t -> float [@@js.get "stdout"]

    val set_stdout : t -> float -> unit [@@js.set "stdout"]

    val get_stderr : t -> float [@@js.get "stderr"]

    val set_stderr : t -> float -> unit [@@js.set "stderr"]
  end
  [@@js.scope "WASIOptions"]

  module WASI : sig
    type t = wasi_WASI

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : ?options:wasi_WASIOptions -> unit -> t [@@js.create]

    val start : t -> instance:untyped_object -> unit [@@js.call "start"]

    val initialize : t -> instance:untyped_object -> unit
      [@@js.call "initialize"]

    val get_wasiImport : t -> any Dict.t [@@js.get "wasiImport"]
  end
  [@@js.scope "WASI"]
end
[@@js.scope Import.wasi]
