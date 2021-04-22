[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020

module Path : sig
  module Path : sig
    module ParsedPath : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_root : t -> string [@@js.get "root"]

      val set_root : t -> string -> unit [@@js.set "root"]

      val get_dir : t -> string [@@js.get "dir"]

      val set_dir : t -> string -> unit [@@js.set "dir"]

      val get_base : t -> string [@@js.get "base"]

      val set_base : t -> string -> unit [@@js.set "base"]

      val get_ext : t -> string [@@js.get "ext"]

      val set_ext : t -> string -> unit [@@js.set "ext"]

      val get_name : t -> string [@@js.get "name"]

      val set_name : t -> string -> unit [@@js.set "name"]
    end
    [@@js.scope "ParsedPath"]

    module FormatInputPathObject : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val get_root : t -> string [@@js.get "root"]

      val set_root : t -> string -> unit [@@js.set "root"]

      val get_dir : t -> string [@@js.get "dir"]

      val set_dir : t -> string -> unit [@@js.set "dir"]

      val get_base : t -> string [@@js.get "base"]

      val set_base : t -> string -> unit [@@js.set "base"]

      val get_ext : t -> string [@@js.get "ext"]

      val set_ext : t -> string -> unit [@@js.set "ext"]

      val get_name : t -> string [@@js.get "name"]

      val set_name : t -> string -> unit [@@js.set "name"]
    end
    [@@js.scope "FormatInputPathObject"]

    module PlatformPath : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val normalize : t -> string -> string [@@js.call "normalize"]

      val join : t -> paths:(string list[@js.variadic]) -> string
        [@@js.call "join"]

      val resolve : t -> (string list[@js.variadic]) -> string
        [@@js.call "resolve"]

      val is_absolute : t -> string -> bool [@@js.call "isAbsolute"]

      val relative : t -> from:string -> to_:string -> string
        [@@js.call "relative"]

      val dirname : t -> string -> string [@@js.call "dirname"]

      val basename : t -> string -> ?ext:string -> unit -> string
        [@@js.call "basename"]

      val extname : t -> string -> string [@@js.call "extname"]

      val get_sep : t -> string [@@js.get "sep"]

      val get_delimiter : t -> string [@@js.get "delimiter"]

      val parse : t -> string -> ParsedPath.t [@@js.call "parse"]

      val format : t -> FormatInputPathObject.t -> string [@@js.call "format"]

      val to_namespaced_path : t -> string -> string
        [@@js.call "toNamespacedPath"]

      val get_posix : t -> t [@@js.get "posix"]

      val get_win32 : t -> t [@@js.get "win32"]
    end
    [@@js.scope "PlatformPath"]
  end
  [@@js.scope "path"]

  val path : PlatformPath.t [@@js.global "path"]
  (* export = path *)
end
[@@js.scope Import.path]
