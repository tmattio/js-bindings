[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es2020
module Internal =
  struct module Types = struct open AnonymousInterfaces end end
module Path =
  struct
    module Path =
      struct
        module ParsedPath =
          struct
            type t = path_path_ParsedPath
            let rec t_of_js : Ojs.t -> t =
              fun (x2 : Ojs.t) -> path_path_ParsedPath_of_js x2
            and t_to_js : t -> Ojs.t =
              fun (x1 : path_path_ParsedPath) ->
                path_path_ParsedPath_to_js x1
            let (get_root : t -> string) =
              fun (x3 : t) ->
                Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x3) "root")
            let (set_root : t -> string -> unit) =
              fun (x4 : t) ->
                fun (x5 : string) ->
                  Ojs.set_prop_ascii (t_to_js x4) "root"
                    (Ojs.string_to_js x5)
            let (get_dir : t -> string) =
              fun (x6 : t) ->
                Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x6) "dir")
            let (set_dir : t -> string -> unit) =
              fun (x7 : t) ->
                fun (x8 : string) ->
                  Ojs.set_prop_ascii (t_to_js x7) "dir" (Ojs.string_to_js x8)
            let (get_base : t -> string) =
              fun (x9 : t) ->
                Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x9) "base")
            let (set_base : t -> string -> unit) =
              fun (x10 : t) ->
                fun (x11 : string) ->
                  Ojs.set_prop_ascii (t_to_js x10) "base"
                    (Ojs.string_to_js x11)
            let (get_ext : t -> string) =
              fun (x12 : t) ->
                Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x12) "ext")
            let (set_ext : t -> string -> unit) =
              fun (x13 : t) ->
                fun (x14 : string) ->
                  Ojs.set_prop_ascii (t_to_js x13) "ext"
                    (Ojs.string_to_js x14)
            let (get_name : t -> string) =
              fun (x15 : t) ->
                Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x15) "name")
            let (set_name : t -> string -> unit) =
              fun (x16 : t) ->
                fun (x17 : string) ->
                  Ojs.set_prop_ascii (t_to_js x16) "name"
                    (Ojs.string_to_js x17)
          end
        module FormatInputPathObject =
          struct
            type t = path_path_FormatInputPathObject
            let rec t_of_js : Ojs.t -> t =
              fun (x19 : Ojs.t) -> path_path_FormatInputPathObject_of_js x19
            and t_to_js : t -> Ojs.t =
              fun (x18 : path_path_FormatInputPathObject) ->
                path_path_FormatInputPathObject_to_js x18
            let (get_root : t -> string) =
              fun (x20 : t) ->
                Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x20) "root")
            let (set_root : t -> string -> unit) =
              fun (x21 : t) ->
                fun (x22 : string) ->
                  Ojs.set_prop_ascii (t_to_js x21) "root"
                    (Ojs.string_to_js x22)
            let (get_dir : t -> string) =
              fun (x23 : t) ->
                Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x23) "dir")
            let (set_dir : t -> string -> unit) =
              fun (x24 : t) ->
                fun (x25 : string) ->
                  Ojs.set_prop_ascii (t_to_js x24) "dir"
                    (Ojs.string_to_js x25)
            let (get_base : t -> string) =
              fun (x26 : t) ->
                Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x26) "base")
            let (set_base : t -> string -> unit) =
              fun (x27 : t) ->
                fun (x28 : string) ->
                  Ojs.set_prop_ascii (t_to_js x27) "base"
                    (Ojs.string_to_js x28)
            let (get_ext : t -> string) =
              fun (x29 : t) ->
                Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x29) "ext")
            let (set_ext : t -> string -> unit) =
              fun (x30 : t) ->
                fun (x31 : string) ->
                  Ojs.set_prop_ascii (t_to_js x30) "ext"
                    (Ojs.string_to_js x31)
            let (get_name : t -> string) =
              fun (x32 : t) ->
                Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x32) "name")
            let (set_name : t -> string -> unit) =
              fun (x33 : t) ->
                fun (x34 : string) ->
                  Ojs.set_prop_ascii (t_to_js x33) "name"
                    (Ojs.string_to_js x34)
          end
        module PlatformPath =
          struct
            type t = path_path_PlatformPath
            let rec t_of_js : Ojs.t -> t =
              fun (x36 : Ojs.t) -> path_path_PlatformPath_of_js x36
            and t_to_js : t -> Ojs.t =
              fun (x35 : path_path_PlatformPath) ->
                path_path_PlatformPath_to_js x35
            let (normalize : t -> p:string -> string) =
              fun (x38 : t) ->
                fun ~p:(x37 : string) ->
                  Ojs.string_of_js
                    (Ojs.call (t_to_js x38) "normalize"
                       [|(Ojs.string_to_js x37)|])
            let (join : t -> paths:string list -> string) =
              fun (x42 : t) ->
                fun ~paths:(x39 : string list) ->
                  Ojs.string_of_js
                    (let x43 = t_to_js x42 in
                     Ojs.call (Ojs.get_prop_ascii x43 "join") "apply"
                       [|x43;((let x40 =
                                 Ojs.new_obj
                                   (Ojs.get_prop_ascii Ojs.global "Array")
                                   [||] in
                               List.iter
                                 (fun (x41 : string) ->
                                    ignore
                                      (Ojs.call x40 "push"
                                         [|(Ojs.string_to_js x41)|])) x39;
                               x40))|])
            let (resolve : t -> pathSegments:string list -> string) =
              fun (x47 : t) ->
                fun ~pathSegments:(x44 : string list) ->
                  Ojs.string_of_js
                    (let x48 = t_to_js x47 in
                     Ojs.call (Ojs.get_prop_ascii x48 "resolve") "apply"
                       [|x48;((let x45 =
                                 Ojs.new_obj
                                   (Ojs.get_prop_ascii Ojs.global "Array")
                                   [||] in
                               List.iter
                                 (fun (x46 : string) ->
                                    ignore
                                      (Ojs.call x45 "push"
                                         [|(Ojs.string_to_js x46)|])) x44;
                               x45))|])
            let (isAbsolute : t -> p:string -> bool) =
              fun (x50 : t) ->
                fun ~p:(x49 : string) ->
                  Ojs.bool_of_js
                    (Ojs.call (t_to_js x50) "isAbsolute"
                       [|(Ojs.string_to_js x49)|])
            let (relative : t -> from:string -> to_:string -> string) =
              fun (x53 : t) ->
                fun ~from:(x51 : string) ->
                  fun ~to_:(x52 : string) ->
                    Ojs.string_of_js
                      (Ojs.call (t_to_js x53) "relative"
                         [|(Ojs.string_to_js x51);(Ojs.string_to_js x52)|])
            let (dirname : t -> p:string -> string) =
              fun (x55 : t) ->
                fun ~p:(x54 : string) ->
                  Ojs.string_of_js
                    (Ojs.call (t_to_js x55) "dirname"
                       [|(Ojs.string_to_js x54)|])
            let (basename : t -> p:string -> ?ext:string -> unit -> string) =
              fun (x60 : t) ->
                fun ~p:(x56 : string) ->
                  fun ?ext:(x57 : string option) ->
                    fun () ->
                      Ojs.string_of_js
                        (let x61 = t_to_js x60 in
                         Ojs.call (Ojs.get_prop_ascii x61 "basename") "apply"
                           [|x61;((let x58 =
                                     Ojs.new_obj
                                       (Ojs.get_prop_ascii Ojs.global "Array")
                                       [||] in
                                   ignore
                                     (Ojs.call x58 "push"
                                        [|(Ojs.string_to_js x56)|]);
                                   (match x57 with
                                    | Some x59 ->
                                        ignore
                                          (Ojs.call x58 "push"
                                             [|(Ojs.string_to_js x59)|])
                                    | None -> ());
                                   x58))|])
            let (extname : t -> p:string -> string) =
              fun (x63 : t) ->
                fun ~p:(x62 : string) ->
                  Ojs.string_of_js
                    (Ojs.call (t_to_js x63) "extname"
                       [|(Ojs.string_to_js x62)|])
            let (get_sep : t -> string) =
              fun (x64 : t) ->
                Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x64) "sep")
            let (get_delimiter : t -> string) =
              fun (x65 : t) ->
                Ojs.string_of_js
                  (Ojs.get_prop_ascii (t_to_js x65) "delimiter")
            let (parse : t -> p:string -> path_path_ParsedPath) =
              fun (x67 : t) ->
                fun ~p:(x66 : string) ->
                  path_path_ParsedPath_of_js
                    (Ojs.call (t_to_js x67) "parse"
                       [|(Ojs.string_to_js x66)|])
            let (format : t -> pP:path_path_FormatInputPathObject -> string)
              =
              fun (x69 : t) ->
                fun ~pP:(x68 : path_path_FormatInputPathObject) ->
                  Ojs.string_of_js
                    (Ojs.call (t_to_js x69) "format"
                       [|(path_path_FormatInputPathObject_to_js x68)|])
            let (toNamespacedPath : t -> path:string -> string) =
              fun (x71 : t) ->
                fun ~path:(x70 : string) ->
                  Ojs.string_of_js
                    (Ojs.call (t_to_js x71) "toNamespacedPath"
                       [|(Ojs.string_to_js x70)|])
            let (get_posix : t -> t) =
              fun (x72 : t) ->
                t_of_js (Ojs.get_prop_ascii (t_to_js x72) "posix")
            let (get_win32 : t -> t) =
              fun (x73 : t) ->
                t_of_js (Ojs.get_prop_ascii (t_to_js x73) "win32")
          end
      end
    let (path : path_path_PlatformPath) =
      path_path_PlatformPath_of_js (Ojs.get_prop_ascii Import.path "path")
  end
