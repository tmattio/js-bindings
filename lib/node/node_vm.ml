[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es2020
open Node_globals
module AnonymousInterface0 =
  struct
    type t = Ojs.t
    let rec t_of_js : Ojs.t -> t = fun (x2 : Ojs.t) -> x2
    and t_to_js : t -> Ojs.t = fun (x1 : Ojs.t) -> x1
    let (get_js_memory_estimate : t -> int) =
      fun (x3 : t) ->
        Ojs.int_of_js (Ojs.get_prop_ascii (t_to_js x3) "jsMemoryEstimate")
    let (set_js_memory_estimate : t -> int -> unit) =
      fun (x4 : t) ->
        fun (x5 : int) ->
          Ojs.set_prop_ascii (t_to_js x4) "jsMemoryEstimate"
            (Ojs.int_to_js x5)
    let (get_js_memory_range : t -> (int * int)) =
      fun (x6 : t) ->
        let x7 = Ojs.get_prop_ascii (t_to_js x6) "jsMemoryRange" in
        ((Ojs.int_of_js (Ojs.array_get x7 0)),
          (Ojs.int_of_js (Ojs.array_get x7 1)))
    let (set_js_memory_range : t -> (int * int) -> unit) =
      fun (x8 : t) ->
        fun (x9 : (int * int)) ->
          Ojs.set_prop_ascii (t_to_js x8) "jsMemoryRange"
            (let (x10, x11) = x9 in
             let x12 = Ojs.array_make 2 in
             Ojs.array_set x12 0 (Ojs.int_to_js x10);
             Ojs.array_set x12 1 (Ojs.int_to_js x11);
             x12)
  end
module AnonymousInterface1 =
  struct
    type t = Ojs.t
    let rec t_of_js : Ojs.t -> t = fun (x14 : Ojs.t) -> x14
    and t_to_js : t -> Ojs.t = fun (x13 : Ojs.t) -> x13
    let (get_strings : t -> bool) =
      fun (x15 : t) ->
        Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x15) "strings")
    let (set_strings : t -> bool -> unit) =
      fun (x16 : t) ->
        fun (x17 : bool) ->
          Ojs.set_prop_ascii (t_to_js x16) "strings" (Ojs.bool_to_js x17)
    let (get_wasm : t -> bool) =
      fun (x18 : t) ->
        Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x18) "wasm")
    let (set_wasm : t -> bool -> unit) =
      fun (x19 : t) ->
        fun (x20 : bool) ->
          Ojs.set_prop_ascii (t_to_js x19) "wasm" (Ojs.bool_to_js x20)
  end
module Vm =
  struct
    module Context =
      struct
        type t = Ojs.t
        let rec t_of_js : Ojs.t -> t = fun (x22 : Ojs.t) -> x22
        and t_to_js : t -> Ojs.t = fun (x21 : Ojs.t) -> x21
        let (cast : t -> any Dict.t) =
          fun (x23 : t) -> Dict.t_of_js any_of_js (t_to_js x23)
      end
    module BaseOptions =
      struct
        type t = Ojs.t
        let rec t_of_js : Ojs.t -> t = fun (x26 : Ojs.t) -> x26
        and t_to_js : t -> Ojs.t = fun (x25 : Ojs.t) -> x25
        let (get_filename : t -> string) =
          fun (x27 : t) ->
            Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x27) "filename")
        let (set_filename : t -> string -> unit) =
          fun (x28 : t) ->
            fun (x29 : string) ->
              Ojs.set_prop_ascii (t_to_js x28) "filename"
                (Ojs.string_to_js x29)
        let (get_line_offset : t -> int) =
          fun (x30 : t) ->
            Ojs.int_of_js (Ojs.get_prop_ascii (t_to_js x30) "lineOffset")
        let (set_line_offset : t -> int -> unit) =
          fun (x31 : t) ->
            fun (x32 : int) ->
              Ojs.set_prop_ascii (t_to_js x31) "lineOffset"
                (Ojs.int_to_js x32)
        let (get_column_offset : t -> int) =
          fun (x33 : t) ->
            Ojs.int_of_js (Ojs.get_prop_ascii (t_to_js x33) "columnOffset")
        let (set_column_offset : t -> int -> unit) =
          fun (x34 : t) ->
            fun (x35 : int) ->
              Ojs.set_prop_ascii (t_to_js x34) "columnOffset"
                (Ojs.int_to_js x35)
      end
    module ScriptOptions =
      struct
        include struct include BaseOptions end
        let (get_display_errors : t -> bool) =
          fun (x36 : t) ->
            Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x36) "displayErrors")
        let (set_display_errors : t -> bool -> unit) =
          fun (x37 : t) ->
            fun (x38 : bool) ->
              Ojs.set_prop_ascii (t_to_js x37) "displayErrors"
                (Ojs.bool_to_js x38)
        let (get_timeout : t -> int) =
          fun (x39 : t) ->
            Ojs.int_of_js (Ojs.get_prop_ascii (t_to_js x39) "timeout")
        let (set_timeout : t -> int -> unit) =
          fun (x40 : t) ->
            fun (x41 : int) ->
              Ojs.set_prop_ascii (t_to_js x40) "timeout" (Ojs.int_to_js x41)
        let (get_cached_data : t -> Buffer.t) =
          fun (x42 : t) ->
            Buffer.t_of_js (Ojs.get_prop_ascii (t_to_js x42) "cachedData")
        let (set_cached_data : t -> Buffer.t -> unit) =
          fun (x43 : t) ->
            fun (x44 : Buffer.t) ->
              Ojs.set_prop_ascii (t_to_js x43) "cachedData"
                (Buffer.t_to_js x44)
        let (get_produce_cached_data : t -> bool) =
          fun (x45 : t) ->
            Ojs.bool_of_js
              (Ojs.get_prop_ascii (t_to_js x45) "produceCachedData")
        let (set_produce_cached_data : t -> bool -> unit) =
          fun (x46 : t) ->
            fun (x47 : bool) ->
              Ojs.set_prop_ascii (t_to_js x46) "produceCachedData"
                (Ojs.bool_to_js x47)
      end
    module RunningScriptOptions =
      struct
        include struct include BaseOptions end
        let (get_display_errors : t -> bool) =
          fun (x48 : t) ->
            Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x48) "displayErrors")
        let (set_display_errors : t -> bool -> unit) =
          fun (x49 : t) ->
            fun (x50 : bool) ->
              Ojs.set_prop_ascii (t_to_js x49) "displayErrors"
                (Ojs.bool_to_js x50)
        let (get_timeout : t -> int) =
          fun (x51 : t) ->
            Ojs.int_of_js (Ojs.get_prop_ascii (t_to_js x51) "timeout")
        let (set_timeout : t -> int -> unit) =
          fun (x52 : t) ->
            fun (x53 : int) ->
              Ojs.set_prop_ascii (t_to_js x52) "timeout" (Ojs.int_to_js x53)
        let (get_break_on_sigint : t -> bool) =
          fun (x54 : t) ->
            Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x54) "breakOnSigint")
        let (set_break_on_sigint : t -> bool -> unit) =
          fun (x55 : t) ->
            fun (x56 : bool) ->
              Ojs.set_prop_ascii (t_to_js x55) "breakOnSigint"
                (Ojs.bool_to_js x56)
        let (get_microtask_mode : t -> [ `afterEvaluate ]) =
          fun (x57 : t) ->
            let x58 = Ojs.get_prop_ascii (t_to_js x57) "microtaskMode" in
            match Ojs.string_of_js x58 with
            | "afterEvaluate" -> `afterEvaluate
            | _ -> assert false
        let (set_microtask_mode : t -> [ `afterEvaluate ] -> unit) =
          fun (x59 : t) ->
            fun (x60 : [ `afterEvaluate ]) ->
              Ojs.set_prop_ascii (t_to_js x59) "microtaskMode"
                (match x60 with
                 | `afterEvaluate -> Ojs.string_to_js "afterEvaluate")
      end
    module CompileFunctionOptions =
      struct
        include struct include BaseOptions end
        let (get_cached_data : t -> Buffer.t) =
          fun (x61 : t) ->
            Buffer.t_of_js (Ojs.get_prop_ascii (t_to_js x61) "cachedData")
        let (set_cached_data : t -> Buffer.t -> unit) =
          fun (x62 : t) ->
            fun (x63 : Buffer.t) ->
              Ojs.set_prop_ascii (t_to_js x62) "cachedData"
                (Buffer.t_to_js x63)
        let (get_produce_cached_data : t -> bool) =
          fun (x64 : t) ->
            Ojs.bool_of_js
              (Ojs.get_prop_ascii (t_to_js x64) "produceCachedData")
        let (set_produce_cached_data : t -> bool -> unit) =
          fun (x65 : t) ->
            fun (x66 : bool) ->
              Ojs.set_prop_ascii (t_to_js x65) "produceCachedData"
                (Ojs.bool_to_js x66)
        let (get_parsing_context : t -> Context.t) =
          fun (x67 : t) ->
            Context.t_of_js
              (Ojs.get_prop_ascii (t_to_js x67) "parsingContext")
        let (set_parsing_context : t -> Context.t -> unit) =
          fun (x68 : t) ->
            fun (x69 : Context.t) ->
              Ojs.set_prop_ascii (t_to_js x68) "parsingContext"
                (Context.t_to_js x69)
        let (get_context_extensions : t -> untyped_object list) =
          fun (x70 : t) ->
            Ojs.list_of_js untyped_object_of_js
              (Ojs.get_prop_ascii (t_to_js x70) "contextExtensions")
        let (set_context_extensions : t -> untyped_object list -> unit) =
          fun (x72 : t) ->
            fun (x73 : untyped_object list) ->
              Ojs.set_prop_ascii (t_to_js x72) "contextExtensions"
                (Ojs.list_to_js untyped_object_to_js x73)
      end
    module CreateContextOptions =
      struct
        type t = Ojs.t
        let rec t_of_js : Ojs.t -> t = fun (x76 : Ojs.t) -> x76
        and t_to_js : t -> Ojs.t = fun (x75 : Ojs.t) -> x75
        let (get_name : t -> string) =
          fun (x77 : t) ->
            Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x77) "name")
        let (set_name : t -> string -> unit) =
          fun (x78 : t) ->
            fun (x79 : string) ->
              Ojs.set_prop_ascii (t_to_js x78) "name" (Ojs.string_to_js x79)
        let (get_origin : t -> string) =
          fun (x80 : t) ->
            Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x80) "origin")
        let (set_origin : t -> string -> unit) =
          fun (x81 : t) ->
            fun (x82 : string) ->
              Ojs.set_prop_ascii (t_to_js x81) "origin"
                (Ojs.string_to_js x82)
        let (get_code_generation : t -> AnonymousInterface1.t) =
          fun (x83 : t) ->
            AnonymousInterface1.t_of_js
              (Ojs.get_prop_ascii (t_to_js x83) "codeGeneration")
        let (set_code_generation : t -> AnonymousInterface1.t -> unit) =
          fun (x84 : t) ->
            fun (x85 : AnonymousInterface1.t) ->
              Ojs.set_prop_ascii (t_to_js x84) "codeGeneration"
                (AnonymousInterface1.t_to_js x85)
        let (get_microtask_mode : t -> [ `afterEvaluate ]) =
          fun (x86 : t) ->
            let x87 = Ojs.get_prop_ascii (t_to_js x86) "microtaskMode" in
            match Ojs.string_of_js x87 with
            | "afterEvaluate" -> `afterEvaluate
            | _ -> assert false
        let (set_microtask_mode : t -> [ `afterEvaluate ] -> unit) =
          fun (x88 : t) ->
            fun (x89 : [ `afterEvaluate ]) ->
              Ojs.set_prop_ascii (t_to_js x88) "microtaskMode"
                (match x89 with
                 | `afterEvaluate -> Ojs.string_to_js "afterEvaluate")
      end
    module MeasureMemoryMode =
      struct
        type t = [ `detailed  | `summary ]
        let rec t_of_js : Ojs.t -> t =
          fun (x91 : Ojs.t) ->
            let x92 = x91 in
            match Ojs.string_of_js x92 with
            | "detailed" -> `detailed
            | "summary" -> `summary
            | _ -> assert false
        and t_to_js : t -> Ojs.t =
          fun (x90 : [ `detailed  | `summary ]) ->
            match x90 with
            | `detailed -> Ojs.string_to_js "detailed"
            | `summary -> Ojs.string_to_js "summary"
      end
    module MeasureMemoryOptions =
      struct
        type t = Ojs.t
        let rec t_of_js : Ojs.t -> t = fun (x94 : Ojs.t) -> x94
        and t_to_js : t -> Ojs.t = fun (x93 : Ojs.t) -> x93
        let (get_mode : t -> MeasureMemoryMode.t) =
          fun (x95 : t) ->
            MeasureMemoryMode.t_of_js
              (Ojs.get_prop_ascii (t_to_js x95) "mode")
        let (set_mode : t -> MeasureMemoryMode.t -> unit) =
          fun (x96 : t) ->
            fun (x97 : MeasureMemoryMode.t) ->
              Ojs.set_prop_ascii (t_to_js x96) "mode"
                (MeasureMemoryMode.t_to_js x97)
        let (get_context : t -> Context.t) =
          fun (x98 : t) ->
            Context.t_of_js (Ojs.get_prop_ascii (t_to_js x98) "context")
        let (set_context : t -> Context.t -> unit) =
          fun (x99 : t) ->
            fun (x100 : Context.t) ->
              Ojs.set_prop_ascii (t_to_js x99) "context"
                (Context.t_to_js x100)
      end
    module MemoryMeasurement =
      struct
        type t = Ojs.t
        let rec t_of_js : Ojs.t -> t = fun (x102 : Ojs.t) -> x102
        and t_to_js : t -> Ojs.t = fun (x101 : Ojs.t) -> x101
        let (get_total : t -> AnonymousInterface0.t) =
          fun (x103 : t) ->
            AnonymousInterface0.t_of_js
              (Ojs.get_prop_ascii (t_to_js x103) "total")
        let (set_total : t -> AnonymousInterface0.t -> unit) =
          fun (x104 : t) ->
            fun (x105 : AnonymousInterface0.t) ->
              Ojs.set_prop_ascii (t_to_js x104) "total"
                (AnonymousInterface0.t_to_js x105)
      end
    module Script =
      struct
        type t = Ojs.t
        let rec t_of_js : Ojs.t -> t = fun (x107 : Ojs.t) -> x107
        and t_to_js : t -> Ojs.t = fun (x106 : Ojs.t) -> x106
        let (create : code:string -> ?options:ScriptOptions.t -> unit -> t) =
          fun ~code:(x108 : string) ->
            fun ?options:(x109 : ScriptOptions.t option) ->
              fun () ->
                t_of_js
                  (Ojs.new_obj_arr (Ojs.get_prop_ascii Import.vm "Script")
                     (let x110 =
                        Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array")
                          [||] in
                      ignore
                        (Ojs.call x110 "push" [|(Ojs.string_to_js x108)|]);
                      (match x109 with
                       | Some x111 ->
                           ignore
                             (Ojs.call x110 "push"
                                [|(ScriptOptions.t_to_js x111)|])
                       | None -> ());
                      x110))
        let (run_in_context :
          t ->
            contextified_sandbox:Context.t ->
              ?options:RunningScriptOptions.t -> unit -> any)
          =
          fun (x116 : t) ->
            fun ~contextified_sandbox:(x112 : Context.t) ->
              fun ?options:(x113 : RunningScriptOptions.t option) ->
                fun () ->
                  any_of_js
                    (let x117 = t_to_js x116 in
                     Ojs.call (Ojs.get_prop_ascii x117 "runInContext")
                       "apply"
                       [|x117;((let x114 =
                                  Ojs.new_obj
                                    (Ojs.get_prop_ascii Ojs.global "Array")
                                    [||] in
                                ignore
                                  (Ojs.call x114 "push"
                                     [|(Context.t_to_js x112)|]);
                                (match x113 with
                                 | Some x115 ->
                                     ignore
                                       (Ojs.call x114 "push"
                                          [|(RunningScriptOptions.t_to_js
                                               x115)|])
                                 | None -> ());
                                x114))|])
        let (run_in_new_context :
          t ->
            ?sandbox:Context.t ->
              ?options:RunningScriptOptions.t -> unit -> any)
          =
          fun (x123 : t) ->
            fun ?sandbox:(x118 : Context.t option) ->
              fun ?options:(x119 : RunningScriptOptions.t option) ->
                fun () ->
                  any_of_js
                    (let x124 = t_to_js x123 in
                     Ojs.call (Ojs.get_prop_ascii x124 "runInNewContext")
                       "apply"
                       [|x124;((let x120 =
                                  Ojs.new_obj
                                    (Ojs.get_prop_ascii Ojs.global "Array")
                                    [||] in
                                (match x118 with
                                 | Some x122 ->
                                     ignore
                                       (Ojs.call x120 "push"
                                          [|(Context.t_to_js x122)|])
                                 | None -> ());
                                (match x119 with
                                 | Some x121 ->
                                     ignore
                                       (Ojs.call x120 "push"
                                          [|(RunningScriptOptions.t_to_js
                                               x121)|])
                                 | None -> ());
                                x120))|])
        let (run_in_this_context :
          t -> ?options:RunningScriptOptions.t -> unit -> any) =
          fun (x128 : t) ->
            fun ?options:(x125 : RunningScriptOptions.t option) ->
              fun () ->
                any_of_js
                  (let x129 = t_to_js x128 in
                   Ojs.call (Ojs.get_prop_ascii x129 "runInThisContext")
                     "apply"
                     [|x129;((let x126 =
                                Ojs.new_obj
                                  (Ojs.get_prop_ascii Ojs.global "Array")
                                  [||] in
                              (match x125 with
                               | Some x127 ->
                                   ignore
                                     (Ojs.call x126 "push"
                                        [|(RunningScriptOptions.t_to_js x127)|])
                               | None -> ());
                              x126))|])
        let (create_cached_data : t -> Buffer.t) =
          fun (x130 : t) ->
            Buffer.t_of_js (Ojs.call (t_to_js x130) "createCachedData" [||])
        let (get_cached_data_rejected : t -> bool) =
          fun (x131 : t) ->
            Ojs.bool_of_js
              (Ojs.get_prop_ascii (t_to_js x131) "cachedDataRejected")
        let (set_cached_data_rejected : t -> bool -> unit) =
          fun (x132 : t) ->
            fun (x133 : bool) ->
              Ojs.set_prop_ascii (t_to_js x132) "cachedDataRejected"
                (Ojs.bool_to_js x133)
      end
    let (create_context :
      ?sandbox:Context.t ->
        ?options:CreateContextOptions.t -> unit -> Context.t)
      =
      fun ?sandbox:(x134 : Context.t option) ->
        fun ?options:(x135 : CreateContextOptions.t option) ->
          fun () ->
            Context.t_of_js
              (let x139 = Import.vm in
               Ojs.call (Ojs.get_prop_ascii x139 "createContext") "apply"
                 [|x139;((let x136 =
                            Ojs.new_obj
                              (Ojs.get_prop_ascii Ojs.global "Array") 
                              [||] in
                          (match x134 with
                           | Some x138 ->
                               ignore
                                 (Ojs.call x136 "push"
                                    [|(Context.t_to_js x138)|])
                           | None -> ());
                          (match x135 with
                           | Some x137 ->
                               ignore
                                 (Ojs.call x136 "push"
                                    [|(CreateContextOptions.t_to_js x137)|])
                           | None -> ());
                          x136))|])
    let (is_context : sandbox:Context.t -> bool) =
      fun ~sandbox:(x140 : Context.t) ->
        Ojs.bool_of_js
          (Ojs.call Import.vm "isContext" [|(Context.t_to_js x140)|])
    let (run_in_context :
      code:string ->
        contextified_sandbox:Context.t ->
          ?options:RunningScriptOptions.t or_string -> unit -> any)
      =
      fun ~code:(x141 : string) ->
        fun ~contextified_sandbox:(x142 : Context.t) ->
          fun ?options:(x143 : RunningScriptOptions.t or_string option) ->
            fun () ->
              any_of_js
                (let x147 = Import.vm in
                 Ojs.call (Ojs.get_prop_ascii x147 "runInContext") "apply"
                   [|x147;((let x144 =
                              Ojs.new_obj
                                (Ojs.get_prop_ascii Ojs.global "Array") 
                                [||] in
                            ignore
                              (Ojs.call x144 "push"
                                 [|(Ojs.string_to_js x141)|]);
                            ignore
                              (Ojs.call x144 "push"
                                 [|(Context.t_to_js x142)|]);
                            (match x143 with
                             | Some x145 ->
                                 ignore
                                   (Ojs.call x144 "push"
                                      [|(or_string_to_js
                                           RunningScriptOptions.t_to_js x145)|])
                             | None -> ());
                            x144))|])
    let (run_in_new_context :
      code:string ->
        ?sandbox:Context.t ->
          ?options:RunningScriptOptions.t or_string -> unit -> any)
      =
      fun ~code:(x148 : string) ->
        fun ?sandbox:(x149 : Context.t option) ->
          fun ?options:(x150 : RunningScriptOptions.t or_string option) ->
            fun () ->
              any_of_js
                (let x155 = Import.vm in
                 Ojs.call (Ojs.get_prop_ascii x155 "runInNewContext") "apply"
                   [|x155;((let x151 =
                              Ojs.new_obj
                                (Ojs.get_prop_ascii Ojs.global "Array") 
                                [||] in
                            ignore
                              (Ojs.call x151 "push"
                                 [|(Ojs.string_to_js x148)|]);
                            (match x149 with
                             | Some x154 ->
                                 ignore
                                   (Ojs.call x151 "push"
                                      [|(Context.t_to_js x154)|])
                             | None -> ());
                            (match x150 with
                             | Some x152 ->
                                 ignore
                                   (Ojs.call x151 "push"
                                      [|(or_string_to_js
                                           RunningScriptOptions.t_to_js x152)|])
                             | None -> ());
                            x151))|])
    let (run_in_this_context :
      code:string -> ?options:RunningScriptOptions.t or_string -> unit -> any)
      =
      fun ~code:(x156 : string) ->
        fun ?options:(x157 : RunningScriptOptions.t or_string option) ->
          fun () ->
            any_of_js
              (let x161 = Import.vm in
               Ojs.call (Ojs.get_prop_ascii x161 "runInThisContext") "apply"
                 [|x161;((let x158 =
                            Ojs.new_obj
                              (Ojs.get_prop_ascii Ojs.global "Array") 
                              [||] in
                          ignore
                            (Ojs.call x158 "push" [|(Ojs.string_to_js x156)|]);
                          (match x157 with
                           | Some x159 ->
                               ignore
                                 (Ojs.call x158 "push"
                                    [|(or_string_to_js
                                         RunningScriptOptions.t_to_js x159)|])
                           | None -> ());
                          x158))|])
    let (compile_function :
      code:string ->
        ?params:string list ->
          ?options:CompileFunctionOptions.t -> unit -> untyped_function)
      =
      fun ~code:(x162 : string) ->
        fun ?params:(x163 : string list option) ->
          fun ?options:(x164 : CompileFunctionOptions.t option) ->
            fun () ->
              untyped_function_of_js
                (let x169 = Import.vm in
                 Ojs.call (Ojs.get_prop_ascii x169 "compileFunction") "apply"
                   [|x169;((let x165 =
                              Ojs.new_obj
                                (Ojs.get_prop_ascii Ojs.global "Array") 
                                [||] in
                            ignore
                              (Ojs.call x165 "push"
                                 [|(Ojs.string_to_js x162)|]);
                            (match x163 with
                             | Some x167 ->
                                 ignore
                                   (Ojs.call x165 "push"
                                      [|(Ojs.list_to_js Ojs.string_to_js x167)|])
                             | None -> ());
                            (match x164 with
                             | Some x166 ->
                                 ignore
                                   (Ojs.call x165 "push"
                                      [|(CompileFunctionOptions.t_to_js x166)|])
                             | None -> ());
                            x165))|])
    let (measure_memory :
      ?options:MeasureMemoryOptions.t ->
        unit -> MemoryMeasurement.t Promise.t)
      =
      fun ?options:(x170 : MeasureMemoryOptions.t option) ->
        fun () ->
          Promise.t_of_js MemoryMeasurement.t_of_js
            (let x173 = Import.vm in
             Ojs.call (Ojs.get_prop_ascii x173 "measureMemory") "apply"
               [|x173;((let x171 =
                          Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array")
                            [||] in
                        (match x170 with
                         | Some x172 ->
                             ignore
                               (Ojs.call x171 "push"
                                  [|(MeasureMemoryOptions.t_to_js x172)|])
                         | None -> ());
                        x171))|])
  end
