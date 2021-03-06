[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es2020
open Node_globals
module Module =
  struct
    module Module =
      struct
        module SourceMapPayload =
          struct
            type t = Ojs.t
            let rec t_of_js : Ojs.t -> t = fun (x2 : Ojs.t) -> x2
            and t_to_js : t -> Ojs.t = fun (x1 : Ojs.t) -> x1
            let (get_file : t -> string) =
              fun (x3 : t) ->
                Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x3) "file")
            let (set_file : t -> string -> unit) =
              fun (x4 : t) ->
                fun (x5 : string) ->
                  Ojs.set_prop_ascii (t_to_js x4) "file"
                    (Ojs.string_to_js x5)
            let (get_version : t -> int) =
              fun (x6 : t) ->
                Ojs.int_of_js (Ojs.get_prop_ascii (t_to_js x6) "version")
            let (set_version : t -> int -> unit) =
              fun (x7 : t) ->
                fun (x8 : int) ->
                  Ojs.set_prop_ascii (t_to_js x7) "version"
                    (Ojs.int_to_js x8)
            let (get_sources : t -> string list) =
              fun (x9 : t) ->
                Ojs.list_of_js Ojs.string_of_js
                  (Ojs.get_prop_ascii (t_to_js x9) "sources")
            let (set_sources : t -> string list -> unit) =
              fun (x11 : t) ->
                fun (x12 : string list) ->
                  Ojs.set_prop_ascii (t_to_js x11) "sources"
                    (Ojs.list_to_js Ojs.string_to_js x12)
            let (get_sources_content : t -> string list) =
              fun (x14 : t) ->
                Ojs.list_of_js Ojs.string_of_js
                  (Ojs.get_prop_ascii (t_to_js x14) "sourcesContent")
            let (set_sources_content : t -> string list -> unit) =
              fun (x16 : t) ->
                fun (x17 : string list) ->
                  Ojs.set_prop_ascii (t_to_js x16) "sourcesContent"
                    (Ojs.list_to_js Ojs.string_to_js x17)
            let (get_names : t -> string list) =
              fun (x19 : t) ->
                Ojs.list_of_js Ojs.string_of_js
                  (Ojs.get_prop_ascii (t_to_js x19) "names")
            let (set_names : t -> string list -> unit) =
              fun (x21 : t) ->
                fun (x22 : string list) ->
                  Ojs.set_prop_ascii (t_to_js x21) "names"
                    (Ojs.list_to_js Ojs.string_to_js x22)
            let (get_mappings : t -> string) =
              fun (x24 : t) ->
                Ojs.string_of_js
                  (Ojs.get_prop_ascii (t_to_js x24) "mappings")
            let (set_mappings : t -> string -> unit) =
              fun (x25 : t) ->
                fun (x26 : string) ->
                  Ojs.set_prop_ascii (t_to_js x25) "mappings"
                    (Ojs.string_to_js x26)
            let (get_source_root : t -> string) =
              fun (x27 : t) ->
                Ojs.string_of_js
                  (Ojs.get_prop_ascii (t_to_js x27) "sourceRoot")
            let (set_source_root : t -> string -> unit) =
              fun (x28 : t) ->
                fun (x29 : string) ->
                  Ojs.set_prop_ascii (t_to_js x28) "sourceRoot"
                    (Ojs.string_to_js x29)
          end
        module SourceMapping =
          struct
            type t = Ojs.t
            let rec t_of_js : Ojs.t -> t = fun (x31 : Ojs.t) -> x31
            and t_to_js : t -> Ojs.t = fun (x30 : Ojs.t) -> x30
            let (get_generated_line : t -> int) =
              fun (x32 : t) ->
                Ojs.int_of_js
                  (Ojs.get_prop_ascii (t_to_js x32) "generatedLine")
            let (set_generated_line : t -> int -> unit) =
              fun (x33 : t) ->
                fun (x34 : int) ->
                  Ojs.set_prop_ascii (t_to_js x33) "generatedLine"
                    (Ojs.int_to_js x34)
            let (get_generated_column : t -> int) =
              fun (x35 : t) ->
                Ojs.int_of_js
                  (Ojs.get_prop_ascii (t_to_js x35) "generatedColumn")
            let (set_generated_column : t -> int -> unit) =
              fun (x36 : t) ->
                fun (x37 : int) ->
                  Ojs.set_prop_ascii (t_to_js x36) "generatedColumn"
                    (Ojs.int_to_js x37)
            let (get_original_source : t -> string) =
              fun (x38 : t) ->
                Ojs.string_of_js
                  (Ojs.get_prop_ascii (t_to_js x38) "originalSource")
            let (set_original_source : t -> string -> unit) =
              fun (x39 : t) ->
                fun (x40 : string) ->
                  Ojs.set_prop_ascii (t_to_js x39) "originalSource"
                    (Ojs.string_to_js x40)
            let (get_original_line : t -> int) =
              fun (x41 : t) ->
                Ojs.int_of_js
                  (Ojs.get_prop_ascii (t_to_js x41) "originalLine")
            let (set_original_line : t -> int -> unit) =
              fun (x42 : t) ->
                fun (x43 : int) ->
                  Ojs.set_prop_ascii (t_to_js x42) "originalLine"
                    (Ojs.int_to_js x43)
            let (get_original_column : t -> int) =
              fun (x44 : t) ->
                Ojs.int_of_js
                  (Ojs.get_prop_ascii (t_to_js x44) "originalColumn")
            let (set_original_column : t -> int -> unit) =
              fun (x45 : t) ->
                fun (x46 : int) ->
                  Ojs.set_prop_ascii (t_to_js x45) "originalColumn"
                    (Ojs.int_to_js x46)
          end
        module SourceMap =
          struct
            type t = Ojs.t
            let rec t_of_js : Ojs.t -> t = fun (x48 : Ojs.t) -> x48
            and t_to_js : t -> Ojs.t = fun (x47 : Ojs.t) -> x47
            let (get_payload : t -> SourceMapPayload.t) =
              fun (x49 : t) ->
                SourceMapPayload.t_of_js
                  (Ojs.get_prop_ascii (t_to_js x49) "payload")
            let (create : payload:SourceMapPayload.t -> t) =
              fun ~payload:(x50 : SourceMapPayload.t) ->
                t_of_js
                  (Ojs.new_obj
                     (Ojs.get_prop_ascii
                        (Ojs.get_prop_ascii Import.module_ "Module")
                        "SourceMap") [|(SourceMapPayload.t_to_js x50)|])
            let (find_entry : t -> line:int -> column:int -> SourceMapping.t)
              =
              fun (x53 : t) ->
                fun ~line:(x51 : int) ->
                  fun ~column:(x52 : int) ->
                    SourceMapping.t_of_js
                      (Ojs.call (t_to_js x53) "findEntry"
                         [|(Ojs.int_to_js x51);(Ojs.int_to_js x52)|])
          end
        type t = Ojs.t
        let rec t_of_js : Ojs.t -> t = fun (x55 : Ojs.t) -> x55
        and t_to_js : t -> Ojs.t = fun (x54 : Ojs.t) -> x54
        let (run_main : unit -> unit) =
          fun () ->
            ignore
              (Ojs.call (Ojs.get_prop_ascii Import.module_ "Module")
                 "runMain" [||])
        let (wrap : code:string -> string) =
          fun ~code:(x56 : string) ->
            Ojs.string_of_js
              (Ojs.call (Ojs.get_prop_ascii Import.module_ "Module") "wrap"
                 [|(Ojs.string_to_js x56)|])
        let (create_require_from_path : path:string -> NodeRequire.t) =
          fun ~path:(x57 : string) ->
            NodeRequire.t_of_js
              (Ojs.call (Ojs.get_prop_ascii Import.module_ "Module")
                 "createRequireFromPath" [|(Ojs.string_to_js x57)|])
        let (create_require :
          path:Node_url.Url.Url.t or_string -> NodeRequire.t) =
          fun ~path:(x58 : Node_url.Url.Url.t or_string) ->
            NodeRequire.t_of_js
              (Ojs.call (Ojs.get_prop_ascii Import.module_ "Module")
                 "createRequire"
                 [|(or_string_to_js Node_url.Url.Url.t_to_js x58)|])
        let (get_builtin_modules : unit -> string list) =
          fun () ->
            Ojs.list_of_js Ojs.string_of_js
              (Ojs.get_prop_ascii
                 (Ojs.get_prop_ascii Import.module_ "Module")
                 "builtinModules")
        let (set_builtin_modules : string list -> unit) =
          fun (x61 : string list) ->
            Ojs.set_prop_ascii (Ojs.get_prop_ascii Import.module_ "Module")
              "builtinModules" (Ojs.list_to_js Ojs.string_to_js x61)
        let (get_module : unit -> any) =
          fun () ->
            any_of_js
              (Ojs.get_prop_ascii
                 (Ojs.get_prop_ascii Import.module_ "Module") "Module")
        let (set_module : any -> unit) =
          fun (x63 : any) ->
            Ojs.set_prop_ascii (Ojs.get_prop_ascii Import.module_ "Module")
              "Module" (any_to_js x63)
        let (create : id:string -> ?parent:t -> unit -> t) =
          fun ~id:(x64 : string) ->
            fun ?parent:(x65 : t option) ->
              fun () ->
                t_of_js
                  (Ojs.new_obj_arr
                     (Ojs.get_prop_ascii Import.module_ "Module")
                     (let x66 =
                        Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array")
                          [||] in
                      ignore (Ojs.call x66 "push" [|(Ojs.string_to_js x64)|]);
                      (match x65 with
                       | Some x67 ->
                           ignore (Ojs.call x66 "push" [|(t_to_js x67)|])
                       | None -> ());
                      x66))
        let (sync_builtin_esm_exports : unit -> unit) =
          fun () ->
            ignore
              (Ojs.call (Ojs.get_prop_ascii Import.module_ "Module")
                 "syncBuiltinESMExports" [||])
        let (find_source_map :
          path:string -> ?error:Error.t -> unit -> SourceMap.t) =
          fun ~path:(x68 : string) ->
            fun ?error:(x69 : Error.t option) ->
              fun () ->
                SourceMap.t_of_js
                  (let x72 = Ojs.get_prop_ascii Import.module_ "Module" in
                   Ojs.call (Ojs.get_prop_ascii x72 "findSourceMap") "apply"
                     [|x72;((let x70 =
                               Ojs.new_obj
                                 (Ojs.get_prop_ascii Ojs.global "Array") 
                                 [||] in
                             ignore
                               (Ojs.call x70 "push"
                                  [|(Ojs.string_to_js x68)|]);
                             (match x69 with
                              | Some x71 ->
                                  ignore
                                    (Ojs.call x70 "push"
                                       [|(Error.t_to_js x71)|])
                              | None -> ());
                             x70))|])
      end
  end
