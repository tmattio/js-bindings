[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es2020
open Node_globals
module Internal =
  struct
    module AnonymousInterfaces =
      struct
        type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
        let rec anonymous_interface_0_of_js : Ojs.t -> anonymous_interface_0
          = Obj.magic
        and anonymous_interface_0_to_js : anonymous_interface_0 -> Ojs.t =
          Obj.magic
        type anonymous_interface_1 = [ `anonymous_interface_1 ] intf
        let rec anonymous_interface_1_of_js : Ojs.t -> anonymous_interface_1
          = Obj.magic
        and anonymous_interface_1_to_js : anonymous_interface_1 -> Ojs.t =
          Obj.magic
      end
    module Types =
      struct
        open AnonymousInterfaces
        type vm_BaseOptions = [ `Vm_BaseOptions ] intf
        and vm_CompileFunctionOptions =
          [ `Vm_CompileFunctionOptions  | `Vm_BaseOptions ] intf
        and vm_Context = [ `Vm_Context ] intf
        and vm_CreateContextOptions = [ `Vm_CreateContextOptions ] intf
        and vm_MeasureMemoryMode = [ `detailed  | `summary ]
        and vm_MeasureMemoryOptions = [ `Vm_MeasureMemoryOptions ] intf
        and vm_MemoryMeasurement = [ `Vm_MemoryMeasurement ] intf
        and vm_RunningScriptOptions =
          [ `Vm_RunningScriptOptions  | `Vm_BaseOptions ] intf
        and vm_Script = [ `Vm_Script ] intf
        and vm_ScriptOptions = [ `Vm_ScriptOptions  | `Vm_BaseOptions ] intf
        let rec vm_BaseOptions_of_js : Ojs.t -> vm_BaseOptions = Obj.magic
        and vm_BaseOptions_to_js : vm_BaseOptions -> Ojs.t = Obj.magic
        and vm_CompileFunctionOptions_of_js :
          Ojs.t -> vm_CompileFunctionOptions = Obj.magic
        and vm_CompileFunctionOptions_to_js :
          vm_CompileFunctionOptions -> Ojs.t = Obj.magic
        and vm_Context_of_js : Ojs.t -> vm_Context = Obj.magic
        and vm_Context_to_js : vm_Context -> Ojs.t = Obj.magic
        and vm_CreateContextOptions_of_js : Ojs.t -> vm_CreateContextOptions
          = Obj.magic
        and vm_CreateContextOptions_to_js : vm_CreateContextOptions -> Ojs.t
          = Obj.magic
        and vm_MeasureMemoryMode_of_js : Ojs.t -> vm_MeasureMemoryMode =
          fun (x2 : Ojs.t) ->
            let x3 = x2 in
            match Ojs.string_of_js x3 with
            | "detailed" -> `detailed
            | "summary" -> `summary
            | _ -> assert false
        and vm_MeasureMemoryMode_to_js : vm_MeasureMemoryMode -> Ojs.t =
          fun (x1 : [ `detailed  | `summary ]) ->
            match x1 with
            | `detailed -> Ojs.string_to_js "detailed"
            | `summary -> Ojs.string_to_js "summary"
        and vm_MeasureMemoryOptions_of_js : Ojs.t -> vm_MeasureMemoryOptions
          = Obj.magic
        and vm_MeasureMemoryOptions_to_js : vm_MeasureMemoryOptions -> Ojs.t
          = Obj.magic
        and vm_MemoryMeasurement_of_js : Ojs.t -> vm_MemoryMeasurement =
          Obj.magic
        and vm_MemoryMeasurement_to_js : vm_MemoryMeasurement -> Ojs.t =
          Obj.magic
        and vm_RunningScriptOptions_of_js : Ojs.t -> vm_RunningScriptOptions
          = Obj.magic
        and vm_RunningScriptOptions_to_js : vm_RunningScriptOptions -> Ojs.t
          = Obj.magic
        and vm_Script_of_js : Ojs.t -> vm_Script = Obj.magic
        and vm_Script_to_js : vm_Script -> Ojs.t = Obj.magic
        and vm_ScriptOptions_of_js : Ojs.t -> vm_ScriptOptions = Obj.magic
        and vm_ScriptOptions_to_js : vm_ScriptOptions -> Ojs.t = Obj.magic
      end
  end
open Internal
open AnonymousInterfaces
open Types
module AnonymousInterface0 =
  struct
    type t = anonymous_interface_0
    let rec t_of_js : Ojs.t -> t =
      fun (x5 : Ojs.t) -> anonymous_interface_0_of_js x5
    and t_to_js : t -> Ojs.t =
      fun (x4 : anonymous_interface_0) -> anonymous_interface_0_to_js x4
    let (get_jsMemoryEstimate : t -> int) =
      fun (x6 : t) ->
        Ojs.int_of_js (Ojs.get_prop_ascii (t_to_js x6) "jsMemoryEstimate")
    let (set_jsMemoryEstimate : t -> int -> unit) =
      fun (x7 : t) ->
        fun (x8 : int) ->
          Ojs.set_prop_ascii (t_to_js x7) "jsMemoryEstimate"
            (Ojs.int_to_js x8)
    let (get_jsMemoryRange : t -> (int * int)) =
      fun (x9 : t) ->
        let x10 = Ojs.get_prop_ascii (t_to_js x9) "jsMemoryRange" in
        ((Ojs.int_of_js (Ojs.array_get x10 0)),
          (Ojs.int_of_js (Ojs.array_get x10 1)))
    let (set_jsMemoryRange : t -> (int * int) -> unit) =
      fun (x11 : t) ->
        fun (x12 : (int * int)) ->
          Ojs.set_prop_ascii (t_to_js x11) "jsMemoryRange"
            (let (x13, x14) = x12 in
             let x15 = Ojs.array_make 2 in
             Ojs.array_set x15 0 (Ojs.int_to_js x13);
             Ojs.array_set x15 1 (Ojs.int_to_js x14);
             x15)
  end
module AnonymousInterface1 =
  struct
    type t = anonymous_interface_1
    let rec t_of_js : Ojs.t -> t =
      fun (x17 : Ojs.t) -> anonymous_interface_1_of_js x17
    and t_to_js : t -> Ojs.t =
      fun (x16 : anonymous_interface_1) -> anonymous_interface_1_to_js x16
    let (get_strings : t -> bool) =
      fun (x18 : t) ->
        Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x18) "strings")
    let (set_strings : t -> bool -> unit) =
      fun (x19 : t) ->
        fun (x20 : bool) ->
          Ojs.set_prop_ascii (t_to_js x19) "strings" (Ojs.bool_to_js x20)
    let (get_wasm : t -> bool) =
      fun (x21 : t) ->
        Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x21) "wasm")
    let (set_wasm : t -> bool -> unit) =
      fun (x22 : t) ->
        fun (x23 : bool) ->
          Ojs.set_prop_ascii (t_to_js x22) "wasm" (Ojs.bool_to_js x23)
  end
module Vm =
  struct
    module Context =
      struct
        type t = vm_Context
        let rec t_of_js : Ojs.t -> t =
          fun (x25 : Ojs.t) -> vm_Context_of_js x25
        and t_to_js : t -> Ojs.t =
          fun (x24 : vm_Context) -> vm_Context_to_js x24
        let (cast : t -> any Dict.t) =
          fun (x26 : t) -> Dict.t_of_js any_of_js (t_to_js x26)
      end
    module BaseOptions =
      struct
        type t = vm_BaseOptions
        let rec t_of_js : Ojs.t -> t =
          fun (x29 : Ojs.t) -> vm_BaseOptions_of_js x29
        and t_to_js : t -> Ojs.t =
          fun (x28 : vm_BaseOptions) -> vm_BaseOptions_to_js x28
        let (get_filename : t -> string) =
          fun (x30 : t) ->
            Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x30) "filename")
        let (set_filename : t -> string -> unit) =
          fun (x31 : t) ->
            fun (x32 : string) ->
              Ojs.set_prop_ascii (t_to_js x31) "filename"
                (Ojs.string_to_js x32)
        let (get_lineOffset : t -> int) =
          fun (x33 : t) ->
            Ojs.int_of_js (Ojs.get_prop_ascii (t_to_js x33) "lineOffset")
        let (set_lineOffset : t -> int -> unit) =
          fun (x34 : t) ->
            fun (x35 : int) ->
              Ojs.set_prop_ascii (t_to_js x34) "lineOffset"
                (Ojs.int_to_js x35)
        let (get_columnOffset : t -> int) =
          fun (x36 : t) ->
            Ojs.int_of_js (Ojs.get_prop_ascii (t_to_js x36) "columnOffset")
        let (set_columnOffset : t -> int -> unit) =
          fun (x37 : t) ->
            fun (x38 : int) ->
              Ojs.set_prop_ascii (t_to_js x37) "columnOffset"
                (Ojs.int_to_js x38)
      end
    module ScriptOptions =
      struct
        type t = vm_ScriptOptions
        let rec t_of_js : Ojs.t -> t =
          fun (x40 : Ojs.t) -> vm_ScriptOptions_of_js x40
        and t_to_js : t -> Ojs.t =
          fun (x39 : vm_ScriptOptions) -> vm_ScriptOptions_to_js x39
        let (get_displayErrors : t -> bool) =
          fun (x41 : t) ->
            Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x41) "displayErrors")
        let (set_displayErrors : t -> bool -> unit) =
          fun (x42 : t) ->
            fun (x43 : bool) ->
              Ojs.set_prop_ascii (t_to_js x42) "displayErrors"
                (Ojs.bool_to_js x43)
        let (get_timeout : t -> int) =
          fun (x44 : t) ->
            Ojs.int_of_js (Ojs.get_prop_ascii (t_to_js x44) "timeout")
        let (set_timeout : t -> int -> unit) =
          fun (x45 : t) ->
            fun (x46 : int) ->
              Ojs.set_prop_ascii (t_to_js x45) "timeout" (Ojs.int_to_js x46)
        let (get_cachedData : t -> Buffer.t) =
          fun (x47 : t) ->
            Buffer.t_of_js (Ojs.get_prop_ascii (t_to_js x47) "cachedData")
        let (set_cachedData : t -> Buffer.t -> unit) =
          fun (x48 : t) ->
            fun (x49 : Buffer.t) ->
              Ojs.set_prop_ascii (t_to_js x48) "cachedData"
                (Buffer.t_to_js x49)
        let (get_produceCachedData : t -> bool) =
          fun (x50 : t) ->
            Ojs.bool_of_js
              (Ojs.get_prop_ascii (t_to_js x50) "produceCachedData")
        let (set_produceCachedData : t -> bool -> unit) =
          fun (x51 : t) ->
            fun (x52 : bool) ->
              Ojs.set_prop_ascii (t_to_js x51) "produceCachedData"
                (Ojs.bool_to_js x52)
        let (cast : t -> vm_BaseOptions) =
          fun (x53 : t) -> vm_BaseOptions_of_js (t_to_js x53)
      end
    module RunningScriptOptions =
      struct
        type t = vm_RunningScriptOptions
        let rec t_of_js : Ojs.t -> t =
          fun (x55 : Ojs.t) -> vm_RunningScriptOptions_of_js x55
        and t_to_js : t -> Ojs.t =
          fun (x54 : vm_RunningScriptOptions) ->
            vm_RunningScriptOptions_to_js x54
        let (get_displayErrors : t -> bool) =
          fun (x56 : t) ->
            Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x56) "displayErrors")
        let (set_displayErrors : t -> bool -> unit) =
          fun (x57 : t) ->
            fun (x58 : bool) ->
              Ojs.set_prop_ascii (t_to_js x57) "displayErrors"
                (Ojs.bool_to_js x58)
        let (get_timeout : t -> int) =
          fun (x59 : t) ->
            Ojs.int_of_js (Ojs.get_prop_ascii (t_to_js x59) "timeout")
        let (set_timeout : t -> int -> unit) =
          fun (x60 : t) ->
            fun (x61 : int) ->
              Ojs.set_prop_ascii (t_to_js x60) "timeout" (Ojs.int_to_js x61)
        let (get_breakOnSigint : t -> bool) =
          fun (x62 : t) ->
            Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x62) "breakOnSigint")
        let (set_breakOnSigint : t -> bool -> unit) =
          fun (x63 : t) ->
            fun (x64 : bool) ->
              Ojs.set_prop_ascii (t_to_js x63) "breakOnSigint"
                (Ojs.bool_to_js x64)
        let (get_microtaskMode : t -> [ `afterEvaluate ]) =
          fun (x65 : t) ->
            let x66 = Ojs.get_prop_ascii (t_to_js x65) "microtaskMode" in
            match Ojs.string_of_js x66 with
            | "afterEvaluate" -> `afterEvaluate
            | _ -> assert false
        let (set_microtaskMode : t -> [ `afterEvaluate ] -> unit) =
          fun (x67 : t) ->
            fun (x68 : [ `afterEvaluate ]) ->
              Ojs.set_prop_ascii (t_to_js x67) "microtaskMode"
                (match x68 with
                 | `afterEvaluate -> Ojs.string_to_js "afterEvaluate")
        let (cast : t -> vm_BaseOptions) =
          fun (x69 : t) -> vm_BaseOptions_of_js (t_to_js x69)
      end
    module CompileFunctionOptions =
      struct
        type t = vm_CompileFunctionOptions
        let rec t_of_js : Ojs.t -> t =
          fun (x71 : Ojs.t) -> vm_CompileFunctionOptions_of_js x71
        and t_to_js : t -> Ojs.t =
          fun (x70 : vm_CompileFunctionOptions) ->
            vm_CompileFunctionOptions_to_js x70
        let (get_cachedData : t -> Buffer.t) =
          fun (x72 : t) ->
            Buffer.t_of_js (Ojs.get_prop_ascii (t_to_js x72) "cachedData")
        let (set_cachedData : t -> Buffer.t -> unit) =
          fun (x73 : t) ->
            fun (x74 : Buffer.t) ->
              Ojs.set_prop_ascii (t_to_js x73) "cachedData"
                (Buffer.t_to_js x74)
        let (get_produceCachedData : t -> bool) =
          fun (x75 : t) ->
            Ojs.bool_of_js
              (Ojs.get_prop_ascii (t_to_js x75) "produceCachedData")
        let (set_produceCachedData : t -> bool -> unit) =
          fun (x76 : t) ->
            fun (x77 : bool) ->
              Ojs.set_prop_ascii (t_to_js x76) "produceCachedData"
                (Ojs.bool_to_js x77)
        let (get_parsingContext : t -> vm_Context) =
          fun (x78 : t) ->
            vm_Context_of_js
              (Ojs.get_prop_ascii (t_to_js x78) "parsingContext")
        let (set_parsingContext : t -> vm_Context -> unit) =
          fun (x79 : t) ->
            fun (x80 : vm_Context) ->
              Ojs.set_prop_ascii (t_to_js x79) "parsingContext"
                (vm_Context_to_js x80)
        let (get_contextExtensions : t -> untyped_object list) =
          fun (x81 : t) ->
            Ojs.list_of_js untyped_object_of_js
              (Ojs.get_prop_ascii (t_to_js x81) "contextExtensions")
        let (set_contextExtensions : t -> untyped_object list -> unit) =
          fun (x83 : t) ->
            fun (x84 : untyped_object list) ->
              Ojs.set_prop_ascii (t_to_js x83) "contextExtensions"
                (Ojs.list_to_js untyped_object_to_js x84)
        let (cast : t -> vm_BaseOptions) =
          fun (x86 : t) -> vm_BaseOptions_of_js (t_to_js x86)
      end
    module CreateContextOptions =
      struct
        type t = vm_CreateContextOptions
        let rec t_of_js : Ojs.t -> t =
          fun (x88 : Ojs.t) -> vm_CreateContextOptions_of_js x88
        and t_to_js : t -> Ojs.t =
          fun (x87 : vm_CreateContextOptions) ->
            vm_CreateContextOptions_to_js x87
        let (get_name : t -> string) =
          fun (x89 : t) ->
            Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x89) "name")
        let (set_name : t -> string -> unit) =
          fun (x90 : t) ->
            fun (x91 : string) ->
              Ojs.set_prop_ascii (t_to_js x90) "name" (Ojs.string_to_js x91)
        let (get_origin : t -> string) =
          fun (x92 : t) ->
            Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x92) "origin")
        let (set_origin : t -> string -> unit) =
          fun (x93 : t) ->
            fun (x94 : string) ->
              Ojs.set_prop_ascii (t_to_js x93) "origin"
                (Ojs.string_to_js x94)
        let (get_codeGeneration : t -> anonymous_interface_1) =
          fun (x95 : t) ->
            anonymous_interface_1_of_js
              (Ojs.get_prop_ascii (t_to_js x95) "codeGeneration")
        let (set_codeGeneration : t -> anonymous_interface_1 -> unit) =
          fun (x96 : t) ->
            fun (x97 : anonymous_interface_1) ->
              Ojs.set_prop_ascii (t_to_js x96) "codeGeneration"
                (anonymous_interface_1_to_js x97)
        let (get_microtaskMode : t -> [ `afterEvaluate ]) =
          fun (x98 : t) ->
            let x99 = Ojs.get_prop_ascii (t_to_js x98) "microtaskMode" in
            match Ojs.string_of_js x99 with
            | "afterEvaluate" -> `afterEvaluate
            | _ -> assert false
        let (set_microtaskMode : t -> [ `afterEvaluate ] -> unit) =
          fun (x100 : t) ->
            fun (x101 : [ `afterEvaluate ]) ->
              Ojs.set_prop_ascii (t_to_js x100) "microtaskMode"
                (match x101 with
                 | `afterEvaluate -> Ojs.string_to_js "afterEvaluate")
      end
    module MeasureMemoryMode =
      struct
        type t = vm_MeasureMemoryMode
        let rec t_of_js : Ojs.t -> t =
          fun (x103 : Ojs.t) -> vm_MeasureMemoryMode_of_js x103
        and t_to_js : t -> Ojs.t =
          fun (x102 : vm_MeasureMemoryMode) ->
            vm_MeasureMemoryMode_to_js x102
      end
    module MeasureMemoryOptions =
      struct
        type t = vm_MeasureMemoryOptions
        let rec t_of_js : Ojs.t -> t =
          fun (x105 : Ojs.t) -> vm_MeasureMemoryOptions_of_js x105
        and t_to_js : t -> Ojs.t =
          fun (x104 : vm_MeasureMemoryOptions) ->
            vm_MeasureMemoryOptions_to_js x104
        let (get_mode : t -> vm_MeasureMemoryMode) =
          fun (x106 : t) ->
            vm_MeasureMemoryMode_of_js
              (Ojs.get_prop_ascii (t_to_js x106) "mode")
        let (set_mode : t -> vm_MeasureMemoryMode -> unit) =
          fun (x107 : t) ->
            fun (x108 : vm_MeasureMemoryMode) ->
              Ojs.set_prop_ascii (t_to_js x107) "mode"
                (vm_MeasureMemoryMode_to_js x108)
        let (get_context : t -> vm_Context) =
          fun (x109 : t) ->
            vm_Context_of_js (Ojs.get_prop_ascii (t_to_js x109) "context")
        let (set_context : t -> vm_Context -> unit) =
          fun (x110 : t) ->
            fun (x111 : vm_Context) ->
              Ojs.set_prop_ascii (t_to_js x110) "context"
                (vm_Context_to_js x111)
      end
    module MemoryMeasurement =
      struct
        type t = vm_MemoryMeasurement
        let rec t_of_js : Ojs.t -> t =
          fun (x113 : Ojs.t) -> vm_MemoryMeasurement_of_js x113
        and t_to_js : t -> Ojs.t =
          fun (x112 : vm_MemoryMeasurement) ->
            vm_MemoryMeasurement_to_js x112
        let (get_total : t -> anonymous_interface_0) =
          fun (x114 : t) ->
            anonymous_interface_0_of_js
              (Ojs.get_prop_ascii (t_to_js x114) "total")
        let (set_total : t -> anonymous_interface_0 -> unit) =
          fun (x115 : t) ->
            fun (x116 : anonymous_interface_0) ->
              Ojs.set_prop_ascii (t_to_js x115) "total"
                (anonymous_interface_0_to_js x116)
      end
    module Script =
      struct
        type t = vm_Script
        let rec t_of_js : Ojs.t -> t =
          fun (x118 : Ojs.t) -> vm_Script_of_js x118
        and t_to_js : t -> Ojs.t =
          fun (x117 : vm_Script) -> vm_Script_to_js x117
        let (create : code:string -> ?options:vm_ScriptOptions -> unit -> t)
          =
          fun ~code:(x119 : string) ->
            fun ?options:(x120 : vm_ScriptOptions option) ->
              fun () ->
                t_of_js
                  (Ojs.new_obj_arr (Ojs.get_prop_ascii Import.vm "Script")
                     (let x121 =
                        Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array")
                          [||] in
                      ignore
                        (Ojs.call x121 "push" [|(Ojs.string_to_js x119)|]);
                      (match x120 with
                       | Some x122 ->
                           ignore
                             (Ojs.call x121 "push"
                                [|(vm_ScriptOptions_to_js x122)|])
                       | None -> ());
                      x121))
        let (runInContext :
          t ->
            contextifiedSandbox:vm_Context ->
              ?options:vm_RunningScriptOptions -> unit -> any)
          =
          fun (x127 : t) ->
            fun ~contextifiedSandbox:(x123 : vm_Context) ->
              fun ?options:(x124 : vm_RunningScriptOptions option) ->
                fun () ->
                  any_of_js
                    (let x128 = t_to_js x127 in
                     Ojs.call (Ojs.get_prop_ascii x128 "runInContext")
                       "apply"
                       [|x128;((let x125 =
                                  Ojs.new_obj
                                    (Ojs.get_prop_ascii Ojs.global "Array")
                                    [||] in
                                ignore
                                  (Ojs.call x125 "push"
                                     [|(vm_Context_to_js x123)|]);
                                (match x124 with
                                 | Some x126 ->
                                     ignore
                                       (Ojs.call x125 "push"
                                          [|(vm_RunningScriptOptions_to_js
                                               x126)|])
                                 | None -> ());
                                x125))|])
        let (runInNewContext :
          t ->
            ?sandbox:vm_Context ->
              ?options:vm_RunningScriptOptions -> unit -> any)
          =
          fun (x134 : t) ->
            fun ?sandbox:(x129 : vm_Context option) ->
              fun ?options:(x130 : vm_RunningScriptOptions option) ->
                fun () ->
                  any_of_js
                    (let x135 = t_to_js x134 in
                     Ojs.call (Ojs.get_prop_ascii x135 "runInNewContext")
                       "apply"
                       [|x135;((let x131 =
                                  Ojs.new_obj
                                    (Ojs.get_prop_ascii Ojs.global "Array")
                                    [||] in
                                (match x129 with
                                 | Some x133 ->
                                     ignore
                                       (Ojs.call x131 "push"
                                          [|(vm_Context_to_js x133)|])
                                 | None -> ());
                                (match x130 with
                                 | Some x132 ->
                                     ignore
                                       (Ojs.call x131 "push"
                                          [|(vm_RunningScriptOptions_to_js
                                               x132)|])
                                 | None -> ());
                                x131))|])
        let (runInThisContext :
          t -> ?options:vm_RunningScriptOptions -> unit -> any) =
          fun (x139 : t) ->
            fun ?options:(x136 : vm_RunningScriptOptions option) ->
              fun () ->
                any_of_js
                  (let x140 = t_to_js x139 in
                   Ojs.call (Ojs.get_prop_ascii x140 "runInThisContext")
                     "apply"
                     [|x140;((let x137 =
                                Ojs.new_obj
                                  (Ojs.get_prop_ascii Ojs.global "Array")
                                  [||] in
                              (match x136 with
                               | Some x138 ->
                                   ignore
                                     (Ojs.call x137 "push"
                                        [|(vm_RunningScriptOptions_to_js x138)|])
                               | None -> ());
                              x137))|])
        let (createCachedData : t -> Buffer.t) =
          fun (x141 : t) ->
            Buffer.t_of_js (Ojs.call (t_to_js x141) "createCachedData" [||])
        let (get_cachedDataRejected : t -> bool) =
          fun (x142 : t) ->
            Ojs.bool_of_js
              (Ojs.get_prop_ascii (t_to_js x142) "cachedDataRejected")
        let (set_cachedDataRejected : t -> bool -> unit) =
          fun (x143 : t) ->
            fun (x144 : bool) ->
              Ojs.set_prop_ascii (t_to_js x143) "cachedDataRejected"
                (Ojs.bool_to_js x144)
      end
    let (createContext :
      ?sandbox:vm_Context ->
        ?options:vm_CreateContextOptions -> unit -> vm_Context)
      =
      fun ?sandbox:(x145 : vm_Context option) ->
        fun ?options:(x146 : vm_CreateContextOptions option) ->
          fun () ->
            vm_Context_of_js
              (let x150 = Import.vm in
               Ojs.call (Ojs.get_prop_ascii x150 "createContext") "apply"
                 [|x150;((let x147 =
                            Ojs.new_obj
                              (Ojs.get_prop_ascii Ojs.global "Array") 
                              [||] in
                          (match x145 with
                           | Some x149 ->
                               ignore
                                 (Ojs.call x147 "push"
                                    [|(vm_Context_to_js x149)|])
                           | None -> ());
                          (match x146 with
                           | Some x148 ->
                               ignore
                                 (Ojs.call x147 "push"
                                    [|(vm_CreateContextOptions_to_js x148)|])
                           | None -> ());
                          x147))|])
    let (isContext : sandbox:vm_Context -> bool) =
      fun ~sandbox:(x151 : vm_Context) ->
        Ojs.bool_of_js
          (Ojs.call Import.vm "isContext" [|(vm_Context_to_js x151)|])
    let (runInContext :
      code:string ->
        contextifiedSandbox:vm_Context ->
          ?options:vm_RunningScriptOptions or_string -> unit -> any)
      =
      fun ~code:(x152 : string) ->
        fun ~contextifiedSandbox:(x153 : vm_Context) ->
          fun ?options:(x154 : vm_RunningScriptOptions or_string option) ->
            fun () ->
              any_of_js
                (let x158 = Import.vm in
                 Ojs.call (Ojs.get_prop_ascii x158 "runInContext") "apply"
                   [|x158;((let x155 =
                              Ojs.new_obj
                                (Ojs.get_prop_ascii Ojs.global "Array") 
                                [||] in
                            ignore
                              (Ojs.call x155 "push"
                                 [|(Ojs.string_to_js x152)|]);
                            ignore
                              (Ojs.call x155 "push"
                                 [|(vm_Context_to_js x153)|]);
                            (match x154 with
                             | Some x156 ->
                                 ignore
                                   (Ojs.call x155 "push"
                                      [|(or_string_to_js
                                           vm_RunningScriptOptions_to_js x156)|])
                             | None -> ());
                            x155))|])
    let (runInNewContext :
      code:string ->
        ?sandbox:vm_Context ->
          ?options:vm_RunningScriptOptions or_string -> unit -> any)
      =
      fun ~code:(x159 : string) ->
        fun ?sandbox:(x160 : vm_Context option) ->
          fun ?options:(x161 : vm_RunningScriptOptions or_string option) ->
            fun () ->
              any_of_js
                (let x166 = Import.vm in
                 Ojs.call (Ojs.get_prop_ascii x166 "runInNewContext") "apply"
                   [|x166;((let x162 =
                              Ojs.new_obj
                                (Ojs.get_prop_ascii Ojs.global "Array") 
                                [||] in
                            ignore
                              (Ojs.call x162 "push"
                                 [|(Ojs.string_to_js x159)|]);
                            (match x160 with
                             | Some x165 ->
                                 ignore
                                   (Ojs.call x162 "push"
                                      [|(vm_Context_to_js x165)|])
                             | None -> ());
                            (match x161 with
                             | Some x163 ->
                                 ignore
                                   (Ojs.call x162 "push"
                                      [|(or_string_to_js
                                           vm_RunningScriptOptions_to_js x163)|])
                             | None -> ());
                            x162))|])
    let (runInThisContext :
      code:string ->
        ?options:vm_RunningScriptOptions or_string -> unit -> any)
      =
      fun ~code:(x167 : string) ->
        fun ?options:(x168 : vm_RunningScriptOptions or_string option) ->
          fun () ->
            any_of_js
              (let x172 = Import.vm in
               Ojs.call (Ojs.get_prop_ascii x172 "runInThisContext") "apply"
                 [|x172;((let x169 =
                            Ojs.new_obj
                              (Ojs.get_prop_ascii Ojs.global "Array") 
                              [||] in
                          ignore
                            (Ojs.call x169 "push" [|(Ojs.string_to_js x167)|]);
                          (match x168 with
                           | Some x170 ->
                               ignore
                                 (Ojs.call x169 "push"
                                    [|(or_string_to_js
                                         vm_RunningScriptOptions_to_js x170)|])
                           | None -> ());
                          x169))|])
    let (compileFunction :
      code:string ->
        ?params:string list ->
          ?options:vm_CompileFunctionOptions -> unit -> untyped_function)
      =
      fun ~code:(x173 : string) ->
        fun ?params:(x174 : string list option) ->
          fun ?options:(x175 : vm_CompileFunctionOptions option) ->
            fun () ->
              untyped_function_of_js
                (let x180 = Import.vm in
                 Ojs.call (Ojs.get_prop_ascii x180 "compileFunction") "apply"
                   [|x180;((let x176 =
                              Ojs.new_obj
                                (Ojs.get_prop_ascii Ojs.global "Array") 
                                [||] in
                            ignore
                              (Ojs.call x176 "push"
                                 [|(Ojs.string_to_js x173)|]);
                            (match x174 with
                             | Some x178 ->
                                 ignore
                                   (Ojs.call x176 "push"
                                      [|(Ojs.list_to_js Ojs.string_to_js x178)|])
                             | None -> ());
                            (match x175 with
                             | Some x177 ->
                                 ignore
                                   (Ojs.call x176 "push"
                                      [|(vm_CompileFunctionOptions_to_js x177)|])
                             | None -> ());
                            x176))|])
    let (measureMemory :
      ?options:vm_MeasureMemoryOptions ->
        unit -> vm_MemoryMeasurement Promise.t)
      =
      fun ?options:(x181 : vm_MeasureMemoryOptions option) ->
        fun () ->
          Promise.t_of_js vm_MemoryMeasurement_of_js
            (let x184 = Import.vm in
             Ojs.call (Ojs.get_prop_ascii x184 "measureMemory") "apply"
               [|x184;((let x182 =
                          Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array")
                            [||] in
                        (match x181 with
                         | Some x183 ->
                             ignore
                               (Ojs.call x182 "push"
                                  [|(vm_MeasureMemoryOptions_to_js x183)|])
                         | None -> ());
                        x182))|])
  end
