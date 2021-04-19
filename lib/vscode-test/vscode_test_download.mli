[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type _DownloadPlatform =
      ( ([ `L_s0_darwin [@js "darwin"]
         | `L_s2_linux_x64 [@js "linux-x64"]
         | `L_s4_win32_archive [@js "win32-archive"]
         | `L_s5_win32_x64_archive [@js "win32-x64-archive"]
         ]
        [@js.enum])
      , string )
      _StringLiteralUnion

    and _DownloadVersion =
      ( ([ `L_s1_insiders [@js "insiders"] | `L_s3_stable [@js "stable"] ]
        [@js.enum])
      , string )
      _StringLiteralUnion

    and ('T, 'U) _StringLiteralUnion = 'T
  end
end

open Internal
open AnonymousInterfaces
open Types

module AnonymousInterface0 : sig
  type t = anonymous_interface_0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module StringLiteralUnion : sig
  type ('T, 'U) t = ('T, 'U) _StringLiteralUnion

  val t_to_js : ('T -> Ojs.t) -> ('U -> Ojs.t) -> ('T, 'U) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> (Ojs.t -> 'U) -> Ojs.t -> ('T, 'U) t
end

module DownloadVersion : sig
  type t = _DownloadVersion

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module DownloadPlatform : sig
  type t = _DownloadPlatform

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

val downloadAndUnzipVSCode
  :  ?version:_DownloadVersion
  -> ?platform:_DownloadPlatform
  -> unit
  -> string Promise.t
  [@@js.global "downloadAndUnzipVSCode"]
(* export {}; *)
