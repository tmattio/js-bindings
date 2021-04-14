[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es2020
open Globals
module Internal =
  struct
    module AnonymousInterfaces =
      struct
        type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
        let rec anonymous_interface_0_of_js : Ojs.t -> anonymous_interface_0
          = Obj.magic
        and anonymous_interface_0_to_js : anonymous_interface_0 -> Ojs.t =
          Obj.magic
      end
    module Types =
      struct
        open AnonymousInterfaces
        type events_DOMEventTarget = [ `Events_DOMEventTarget ] intf
        and events_EventEmitter = [ `Events_EventEmitter ] intf
        and events_EventEmitterOptions = [ `Events_EventEmitterOptions ] intf
        and events_NodeEventTarget = [ `Events_NodeEventTarget ] intf
        and events_global_NodeJS_EventEmitter =
          [ `Events_global_NodeJS_EventEmitter ] intf
        let rec events_DOMEventTarget_of_js : Ojs.t -> events_DOMEventTarget
          = Obj.magic
        and events_DOMEventTarget_to_js : events_DOMEventTarget -> Ojs.t =
          Obj.magic
        and events_EventEmitter_of_js : Ojs.t -> events_EventEmitter =
          Obj.magic
        and events_EventEmitter_to_js : events_EventEmitter -> Ojs.t =
          Obj.magic
        and events_EventEmitterOptions_of_js :
          Ojs.t -> events_EventEmitterOptions = Obj.magic
        and events_EventEmitterOptions_to_js :
          events_EventEmitterOptions -> Ojs.t = Obj.magic
        and events_NodeEventTarget_of_js : Ojs.t -> events_NodeEventTarget =
          Obj.magic
        and events_NodeEventTarget_to_js : events_NodeEventTarget -> Ojs.t =
          Obj.magic
        and events_global_NodeJS_EventEmitter_of_js :
          Ojs.t -> events_global_NodeJS_EventEmitter = Obj.magic
        and events_global_NodeJS_EventEmitter_to_js :
          events_global_NodeJS_EventEmitter -> Ojs.t = Obj.magic
      end
  end
open Internal
open AnonymousInterfaces
open Types
module AnonymousInterface0 =
  struct
    type t = anonymous_interface_0
    let rec t_of_js : Ojs.t -> t =
      fun (x2 : Ojs.t) -> anonymous_interface_0_of_js x2
    and t_to_js : t -> Ojs.t =
      fun (x1 : anonymous_interface_0) -> anonymous_interface_0_to_js x1
    let (get_once : t -> bool) =
      fun (x3 : t) -> Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x3) "once")
    let (set_once : t -> bool -> unit) =
      fun (x4 : t) ->
        fun (x5 : bool) ->
          Ojs.set_prop_ascii (t_to_js x4) "once" (Ojs.bool_to_js x5)
  end
module Events =
  struct
    module EventEmitterOptions =
      struct
        type t = events_EventEmitterOptions
        let rec t_of_js : Ojs.t -> t =
          fun (x7 : Ojs.t) -> events_EventEmitterOptions_of_js x7
        and t_to_js : t -> Ojs.t =
          fun (x6 : events_EventEmitterOptions) ->
            events_EventEmitterOptions_to_js x6
        let (get_captureRejections : t -> bool) =
          fun (x8 : t) ->
            Ojs.bool_of_js
              (Ojs.get_prop_ascii (t_to_js x8) "captureRejections")
        let (set_captureRejections : t -> bool -> unit) =
          fun (x9 : t) ->
            fun (x10 : bool) ->
              Ojs.set_prop_ascii (t_to_js x9) "captureRejections"
                (Ojs.bool_to_js x10)
      end
    module NodeEventTarget =
      struct
        type t = events_NodeEventTarget
        let rec t_of_js : Ojs.t -> t =
          fun (x12 : Ojs.t) -> events_NodeEventTarget_of_js x12
        and t_to_js : t -> Ojs.t =
          fun (x11 : events_NodeEventTarget) ->
            events_NodeEventTarget_to_js x11
        let (once :
          t ->
            event:symbol or_string -> listener:(args:any list -> unit) -> t)
          =
          fun (x18 : t) ->
            fun ~event:(x13 : symbol or_string) ->
              fun ~listener:(x15 : args:any list -> unit) ->
                t_of_js
                  (Ojs.call (t_to_js x18) "once"
                     [|(or_string_to_js symbol_to_js x13);(Ojs.fun_to_js_args
                                                             (fun (x16 : _)
                                                                ->
                                                                x15
                                                                  ~args:(
                                                                  Ojs.list_of_js_from
                                                                    any_of_js
                                                                    x16 0)))|])
      end
    module DOMEventTarget =
      struct
        type t = events_DOMEventTarget
        let rec t_of_js : Ojs.t -> t =
          fun (x20 : Ojs.t) -> events_DOMEventTarget_of_js x20
        and t_to_js : t -> Ojs.t =
          fun (x19 : events_DOMEventTarget) ->
            events_DOMEventTarget_to_js x19
        let (addEventListener :
          t ->
            event:string ->
              listener:(args:any list -> unit) ->
                ?opts:anonymous_interface_0 -> unit -> any)
          =
          fun (x28 : t) ->
            fun ~event:(x21 : string) ->
              fun ~listener:(x22 : args:any list -> unit) ->
                fun ?opts:(x23 : anonymous_interface_0 option) ->
                  fun () ->
                    any_of_js
                      (let x29 = t_to_js x28 in
                       Ojs.call (Ojs.get_prop_ascii x29 "addEventListener")
                         "apply"
                         [|x29;((let x24 =
                                   Ojs.new_obj
                                     (Ojs.get_prop_ascii Ojs.global "Array")
                                     [||] in
                                 ignore
                                   (Ojs.call x24 "push"
                                      [|(Ojs.string_to_js x21)|]);
                                 ignore
                                   (Ojs.call x24 "push"
                                      [|(Ojs.fun_to_js_args
                                           (fun (x26 : _) ->
                                              x22
                                                ~args:(Ojs.list_of_js_from
                                                         any_of_js x26 0)))|]);
                                 (match x23 with
                                  | Some x25 ->
                                      ignore
                                        (Ojs.call x24 "push"
                                           [|(anonymous_interface_0_to_js x25)|])
                                  | None -> ());
                                 x24))|])
      end
    module EventEmitter =
      struct
        type t = events_EventEmitter
        let rec t_of_js : Ojs.t -> t =
          fun (x31 : Ojs.t) -> events_EventEmitter_of_js x31
        and t_to_js : t -> Ojs.t =
          fun (x30 : events_EventEmitter) -> events_EventEmitter_to_js x30
        let (create : ?options:events_EventEmitterOptions -> unit -> t) =
          fun ?options:(x32 : events_EventEmitterOptions option) ->
            fun () ->
              t_of_js
                (Ojs.new_obj_arr
                   (Ojs.get_prop_ascii Import.events "EventEmitter")
                   (let x33 =
                      Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array")
                        [||] in
                    (match x32 with
                     | Some x34 ->
                         ignore
                           (Ojs.call x33 "push"
                              [|(events_EventEmitterOptions_to_js x34)|])
                     | None -> ());
                    x33))
        let (once :
          emitter:events_NodeEventTarget ->
            event:symbol or_string -> any list Promise.t)
          =
          fun ~emitter:(x35 : events_NodeEventTarget) ->
            fun ~event:(x36 : symbol or_string) ->
              Promise.t_of_js
                (fun (x38 : Ojs.t) -> Ojs.list_of_js any_of_js x38)
                (Ojs.call (Ojs.get_prop_ascii Import.events "EventEmitter")
                   "once"
                   [|(events_NodeEventTarget_to_js x35);(or_string_to_js
                                                           symbol_to_js x36)|])
        let (once' :
          emitter:events_DOMEventTarget -> event:string -> any list Promise.t)
          =
          fun ~emitter:(x40 : events_DOMEventTarget) ->
            fun ~event:(x41 : string) ->
              Promise.t_of_js
                (fun (x42 : Ojs.t) -> Ojs.list_of_js any_of_js x42)
                (Ojs.call (Ojs.get_prop_ascii Import.events "EventEmitter")
                   "once"
                   [|(events_DOMEventTarget_to_js x40);(Ojs.string_to_js x41)|])
        let (on : emitter:t -> event:string -> any AsyncIterableIterator.t) =
          fun ~emitter:(x44 : t) ->
            fun ~event:(x45 : string) ->
              AsyncIterableIterator.t_of_js any_of_js
                (Ojs.call (Ojs.get_prop_ascii Import.events "EventEmitter")
                   "on" [|(t_to_js x44);(Ojs.string_to_js x45)|])
        let (listenerCount : emitter:t -> event:symbol or_string -> float) =
          fun ~emitter:(x47 : t) ->
            fun ~event:(x48 : symbol or_string) ->
              Ojs.float_of_js
                (Ojs.call (Ojs.get_prop_ascii Import.events "EventEmitter")
                   "listenerCount"
                   [|(t_to_js x47);(or_string_to_js symbol_to_js x48)|])
        let (get_errorMonitor : unit -> any) =
          fun () ->
            any_of_js
              (Ojs.get_prop_ascii
                 (Ojs.get_prop_ascii Import.events "EventEmitter")
                 "errorMonitor")
        let (get_captureRejectionSymbol : unit -> any) =
          fun () ->
            any_of_js
              (Ojs.get_prop_ascii
                 (Ojs.get_prop_ascii Import.events "EventEmitter")
                 "captureRejectionSymbol")
        let (get_captureRejections : unit -> bool) =
          fun () ->
            Ojs.bool_of_js
              (Ojs.get_prop_ascii
                 (Ojs.get_prop_ascii Import.events "EventEmitter")
                 "captureRejections")
        let (set_captureRejections : bool -> unit) =
          fun (x50 : bool) ->
            Ojs.set_prop_ascii
              (Ojs.get_prop_ascii Import.events "EventEmitter")
              "captureRejections" (Ojs.bool_to_js x50)
        let (get_defaultMaxListeners : unit -> float) =
          fun () ->
            Ojs.float_of_js
              (Ojs.get_prop_ascii
                 (Ojs.get_prop_ascii Import.events "EventEmitter")
                 "defaultMaxListeners")
        let (set_defaultMaxListeners : float -> unit) =
          fun (x51 : float) ->
            Ojs.set_prop_ascii
              (Ojs.get_prop_ascii Import.events "EventEmitter")
              "defaultMaxListeners" (Ojs.float_to_js x51)
      end
  end
module EventEmitter =
  struct
    type t = events_global_NodeJS_EventEmitter
    let rec t_of_js : Ojs.t -> t =
      fun (x53 : Ojs.t) -> events_global_NodeJS_EventEmitter_of_js x53
    and t_to_js : t -> Ojs.t =
      fun (x52 : events_global_NodeJS_EventEmitter) ->
        events_global_NodeJS_EventEmitter_to_js x52
    let (addListener :
      t -> event:symbol or_string -> listener:(args:any list -> unit) -> t) =
      fun (x59 : t) ->
        fun ~event:(x54 : symbol or_string) ->
          fun ~listener:(x56 : args:any list -> unit) ->
            t_of_js
              (Ojs.call (t_to_js x59) "addListener"
                 [|(or_string_to_js symbol_to_js x54);(Ojs.fun_to_js_args
                                                         (fun (x57 : _) ->
                                                            x56
                                                              ~args:(
                                                              Ojs.list_of_js_from
                                                                any_of_js x57
                                                                0)))|])
    let (on :
      t -> event:symbol or_string -> listener:(args:any list -> unit) -> t) =
      fun (x65 : t) ->
        fun ~event:(x60 : symbol or_string) ->
          fun ~listener:(x62 : args:any list -> unit) ->
            t_of_js
              (Ojs.call (t_to_js x65) "on"
                 [|(or_string_to_js symbol_to_js x60);(Ojs.fun_to_js_args
                                                         (fun (x63 : _) ->
                                                            x62
                                                              ~args:(
                                                              Ojs.list_of_js_from
                                                                any_of_js x63
                                                                0)))|])
    let (once :
      t -> event:symbol or_string -> listener:(args:any list -> unit) -> t) =
      fun (x71 : t) ->
        fun ~event:(x66 : symbol or_string) ->
          fun ~listener:(x68 : args:any list -> unit) ->
            t_of_js
              (Ojs.call (t_to_js x71) "once"
                 [|(or_string_to_js symbol_to_js x66);(Ojs.fun_to_js_args
                                                         (fun (x69 : _) ->
                                                            x68
                                                              ~args:(
                                                              Ojs.list_of_js_from
                                                                any_of_js x69
                                                                0)))|])
    let (removeListener :
      t -> event:symbol or_string -> listener:(args:any list -> unit) -> t) =
      fun (x77 : t) ->
        fun ~event:(x72 : symbol or_string) ->
          fun ~listener:(x74 : args:any list -> unit) ->
            t_of_js
              (Ojs.call (t_to_js x77) "removeListener"
                 [|(or_string_to_js symbol_to_js x72);(Ojs.fun_to_js_args
                                                         (fun (x75 : _) ->
                                                            x74
                                                              ~args:(
                                                              Ojs.list_of_js_from
                                                                any_of_js x75
                                                                0)))|])
    let (off :
      t -> event:symbol or_string -> listener:(args:any list -> unit) -> t) =
      fun (x83 : t) ->
        fun ~event:(x78 : symbol or_string) ->
          fun ~listener:(x80 : args:any list -> unit) ->
            t_of_js
              (Ojs.call (t_to_js x83) "off"
                 [|(or_string_to_js symbol_to_js x78);(Ojs.fun_to_js_args
                                                         (fun (x81 : _) ->
                                                            x80
                                                              ~args:(
                                                              Ojs.list_of_js_from
                                                                any_of_js x81
                                                                0)))|])
    let (removeAllListeners : t -> ?event:symbol or_string -> unit -> t) =
      fun (x88 : t) ->
        fun ?event:(x84 : symbol or_string option) ->
          fun () ->
            t_of_js
              (let x89 = t_to_js x88 in
               Ojs.call (Ojs.get_prop_ascii x89 "removeAllListeners") "apply"
                 [|x89;((let x85 =
                           Ojs.new_obj
                             (Ojs.get_prop_ascii Ojs.global "Array") 
                             [||] in
                         (match x84 with
                          | Some x86 ->
                              ignore
                                (Ojs.call x85 "push"
                                   [|(or_string_to_js symbol_to_js x86)|])
                          | None -> ());
                         x85))|])
    let (setMaxListeners : t -> n:float -> t) =
      fun (x91 : t) ->
        fun ~n:(x90 : float) ->
          t_of_js
            (Ojs.call (t_to_js x91) "setMaxListeners"
               [|(Ojs.float_to_js x90)|])
    let (getMaxListeners : t -> float) =
      fun (x92 : t) ->
        Ojs.float_of_js (Ojs.call (t_to_js x92) "getMaxListeners" [||])
    let (listeners : t -> event:symbol or_string -> untyped_function list) =
      fun (x95 : t) ->
        fun ~event:(x93 : symbol or_string) ->
          Ojs.list_of_js untyped_function_of_js
            (Ojs.call (t_to_js x95) "listeners"
               [|(or_string_to_js symbol_to_js x93)|])
    let (rawListeners : t -> event:symbol or_string -> untyped_function list)
      =
      fun (x99 : t) ->
        fun ~event:(x97 : symbol or_string) ->
          Ojs.list_of_js untyped_function_of_js
            (Ojs.call (t_to_js x99) "rawListeners"
               [|(or_string_to_js symbol_to_js x97)|])
    let (emit : t -> event:symbol or_string -> args:any list -> bool) =
      fun (x106 : t) ->
        fun ~event:(x101 : symbol or_string) ->
          fun ~args:(x102 : any list) ->
            Ojs.bool_of_js
              (let x107 = t_to_js x106 in
               Ojs.call (Ojs.get_prop_ascii x107 "emit") "apply"
                 [|x107;((let x103 =
                            Ojs.new_obj
                              (Ojs.get_prop_ascii Ojs.global "Array") 
                              [||] in
                          ignore
                            (Ojs.call x103 "push"
                               [|(or_string_to_js symbol_to_js x101)|]);
                          List.iter
                            (fun (x104 : any) ->
                               ignore
                                 (Ojs.call x103 "push" [|(any_to_js x104)|]))
                            x102;
                          x103))|])
    let (listenerCount : t -> event:symbol or_string -> float) =
      fun (x110 : t) ->
        fun ~event:(x108 : symbol or_string) ->
          Ojs.float_of_js
            (Ojs.call (t_to_js x110) "listenerCount"
               [|(or_string_to_js symbol_to_js x108)|])
    let (prependListener :
      t -> event:symbol or_string -> listener:(args:any list -> unit) -> t) =
      fun (x116 : t) ->
        fun ~event:(x111 : symbol or_string) ->
          fun ~listener:(x113 : args:any list -> unit) ->
            t_of_js
              (Ojs.call (t_to_js x116) "prependListener"
                 [|(or_string_to_js symbol_to_js x111);(Ojs.fun_to_js_args
                                                          (fun (x114 : _) ->
                                                             x113
                                                               ~args:(
                                                               Ojs.list_of_js_from
                                                                 any_of_js
                                                                 x114 0)))|])
    let (prependOnceListener :
      t -> event:symbol or_string -> listener:(args:any list -> unit) -> t) =
      fun (x122 : t) ->
        fun ~event:(x117 : symbol or_string) ->
          fun ~listener:(x119 : args:any list -> unit) ->
            t_of_js
              (Ojs.call (t_to_js x122) "prependOnceListener"
                 [|(or_string_to_js symbol_to_js x117);(Ojs.fun_to_js_args
                                                          (fun (x120 : _) ->
                                                             x119
                                                               ~args:(
                                                               Ojs.list_of_js_from
                                                                 any_of_js
                                                                 x120 0)))|])
    let (eventNames : t -> symbol or_string list) =
      fun (x123 : t) ->
        Ojs.list_of_js
          (fun (x124 : Ojs.t) -> or_string_of_js symbol_of_js x124)
          (Ojs.call (t_to_js x123) "eventNames" [||])
  end
