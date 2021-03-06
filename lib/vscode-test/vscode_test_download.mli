[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module StringLiteralUnion : sig
  type ('T, 'U) t = 'T

  val t_to_js : ('T -> Ojs.t) -> ('U -> Ojs.t) -> ('T, 'U) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> (Ojs.t -> 'U) -> Ojs.t -> ('T, 'U) t
end

module DownloadVersion : sig
  type t =
    ( ([ `L_s1_insiders [@js "insiders"] | `L_s3_stable [@js "stable"] ]
      [@js.enum])
    , string )
    StringLiteralUnion.t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module DownloadPlatform : sig
  type t =
    ( ([ `L_s0_darwin [@js "darwin"]
       | `L_s2_linux_x64 [@js "linux-x64"]
       | `L_s4_win32_archive [@js "win32-archive"]
       | `L_s5_win32_x64_archive [@js "win32-x64-archive"]
       ]
      [@js.enum])
    , string )
    StringLiteralUnion.t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

val download_and_unzip_vs_code
  :  ?version:DownloadVersion.t
  -> ?platform:DownloadPlatform.t
  -> unit
  -> string Promise.t
  [@@js.global "downloadAndUnzipVSCode"]
(* export {}; *)
