[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es2020
module Async_hooks =
  struct
    let (executionAsyncId : unit -> int) =
      fun () ->
        Ojs.int_of_js (Ojs.call Import.async_hooks "executionAsyncId" [||])
    let (executionAsyncResource : unit -> untyped_object) =
      fun () ->
        untyped_object_of_js
          (Ojs.call Import.async_hooks "executionAsyncResource" [||])
    let (triggerAsyncId : unit -> int) =
      fun () ->
        Ojs.int_of_js (Ojs.call Import.async_hooks "triggerAsyncId" [||])
    module HookCallbacks =
      struct
        type t = Ojs.t
        let rec t_of_js : Ojs.t -> t = fun (x2 : Ojs.t) -> x2
        and t_to_js : t -> Ojs.t = fun (x1 : Ojs.t) -> x1
        let (init :
          t ->
            asyncId:int ->
              type_:string ->
                triggerAsyncId:int -> resource:untyped_object -> unit)
          =
          fun (x7 : t) ->
            fun ~asyncId:(x3 : int) ->
              fun ~type_:(x4 : string) ->
                fun ~triggerAsyncId:(x5 : int) ->
                  fun ~resource:(x6 : untyped_object) ->
                    ignore
                      (Ojs.call (t_to_js x7) "init"
                         [|(Ojs.int_to_js x3);(Ojs.string_to_js x4);(
                           Ojs.int_to_js x5);(untyped_object_to_js x6)|])
        let (before : t -> asyncId:int -> unit) =
          fun (x9 : t) ->
            fun ~asyncId:(x8 : int) ->
              ignore (Ojs.call (t_to_js x9) "before" [|(Ojs.int_to_js x8)|])
        let (after : t -> asyncId:int -> unit) =
          fun (x11 : t) ->
            fun ~asyncId:(x10 : int) ->
              ignore (Ojs.call (t_to_js x11) "after" [|(Ojs.int_to_js x10)|])
        let (promiseResolve : t -> asyncId:int -> unit) =
          fun (x13 : t) ->
            fun ~asyncId:(x12 : int) ->
              ignore
                (Ojs.call (t_to_js x13) "promiseResolve"
                   [|(Ojs.int_to_js x12)|])
        let (destroy : t -> asyncId:int -> unit) =
          fun (x15 : t) ->
            fun ~asyncId:(x14 : int) ->
              ignore
                (Ojs.call (t_to_js x15) "destroy" [|(Ojs.int_to_js x14)|])
      end
    module AsyncHook =
      struct
        type t = Ojs.t
        let rec t_of_js : Ojs.t -> t = fun (x17 : Ojs.t) -> x17
        and t_to_js : t -> Ojs.t = fun (x16 : Ojs.t) -> x16
        let (enable : t -> t) =
          fun (x18 : t) -> t_of_js (Ojs.call (t_to_js x18) "enable" [||])
        let (disable : t -> t) =
          fun (x19 : t) -> t_of_js (Ojs.call (t_to_js x19) "disable" [||])
      end
    let (createHook : options:HookCallbacks.t -> AsyncHook.t) =
      fun ~options:(x20 : HookCallbacks.t) ->
        AsyncHook.t_of_js
          (Ojs.call Import.async_hooks "createHook"
             [|(HookCallbacks.t_to_js x20)|])
    module AsyncResourceOptions =
      struct
        type t = Ojs.t
        let rec t_of_js : Ojs.t -> t = fun (x22 : Ojs.t) -> x22
        and t_to_js : t -> Ojs.t = fun (x21 : Ojs.t) -> x21
        let (get_triggerAsyncId : t -> int) =
          fun (x23 : t) ->
            Ojs.int_of_js (Ojs.get_prop_ascii (t_to_js x23) "triggerAsyncId")
        let (set_triggerAsyncId : t -> int -> unit) =
          fun (x24 : t) ->
            fun (x25 : int) ->
              Ojs.set_prop_ascii (t_to_js x24) "triggerAsyncId"
                (Ojs.int_to_js x25)
        let (get_requireManualDestroy : t -> bool) =
          fun (x26 : t) ->
            Ojs.bool_of_js
              (Ojs.get_prop_ascii (t_to_js x26) "requireManualDestroy")
        let (set_requireManualDestroy : t -> bool -> unit) =
          fun (x27 : t) ->
            fun (x28 : bool) ->
              Ojs.set_prop_ascii (t_to_js x27) "requireManualDestroy"
                (Ojs.bool_to_js x28)
      end
    module AsyncResource =
      struct
        type t = Ojs.t
        let rec t_of_js : Ojs.t -> t = fun (x30 : Ojs.t) -> x30
        and t_to_js : t -> Ojs.t = fun (x29 : Ojs.t) -> x29
        let (create :
          type_:string ->
            ?triggerAsyncId:AsyncResourceOptions.t or_number -> unit -> t)
          =
          fun ~type_:(x31 : string) ->
            fun
              ?triggerAsyncId:(x32 : AsyncResourceOptions.t or_number option)
              ->
              fun () ->
                t_of_js
                  (Ojs.new_obj_arr
                     (Ojs.get_prop_ascii Import.async_hooks "AsyncResource")
                     (let x33 =
                        Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array")
                          [||] in
                      ignore (Ojs.call x33 "push" [|(Ojs.string_to_js x31)|]);
                      (match x32 with
                       | Some x34 ->
                           ignore
                             (Ojs.call x33 "push"
                                [|(or_number_to_js
                                     AsyncResourceOptions.t_to_js x34)|])
                       | None -> ());
                      x33))
        module AnonymousInterface0 =
          struct
            type async_resource = t
            let rec async_resource_of_js : Ojs.t -> async_resource =
              fun (x37 : Ojs.t) -> t_of_js x37
            and async_resource_to_js : async_resource -> Ojs.t =
              fun (x36 : t) -> t_to_js x36
            type t = Ojs.t
            let rec t_of_js : Ojs.t -> t = fun (x39 : Ojs.t) -> x39
            and t_to_js : t -> Ojs.t = fun (x38 : Ojs.t) -> x38
            let (get_asyncResource : t -> async_resource) =
              fun (x40 : t) ->
                async_resource_of_js
                  (Ojs.get_prop_ascii (t_to_js x40) "asyncResource")
            let (set_asyncResource : t -> async_resource -> unit) =
              fun (x41 : t) ->
                fun (x42 : async_resource) ->
                  Ojs.set_prop_ascii (t_to_js x41) "asyncResource"
                    (async_resource_to_js x42)
          end
        let (bind :
          fn:'Func ->
            ?type_:string ->
              unit -> ('Func, AnonymousInterface0.t) intersection2)
          =
          fun ~fn:(x43 : 'Func) ->
            fun ?type_:(x44 : string option) ->
              fun () ->
                intersection2_of_js Obj.magic AnonymousInterface0.t_of_js
                  (let x47 =
                     Ojs.get_prop_ascii Import.async_hooks "AsyncResource" in
                   Ojs.call (Ojs.get_prop_ascii x47 "bind") "apply"
                     [|x47;((let x45 =
                               Ojs.new_obj
                                 (Ojs.get_prop_ascii Ojs.global "Array") 
                                 [||] in
                             ignore (Ojs.call x45 "push" [|(Obj.magic x43)|]);
                             (match x44 with
                              | Some x46 ->
                                  ignore
                                    (Ojs.call x45 "push"
                                       [|(Ojs.string_to_js x46)|])
                              | None -> ());
                             x45))|])
        let (bind' :
          t -> fn:'Func -> ('Func, AnonymousInterface0.t) intersection2) =
          fun (x51 : t) ->
            fun ~fn:(x50 : 'Func) ->
              intersection2_of_js Obj.magic AnonymousInterface0.t_of_js
                (Ojs.call (t_to_js x51) "bind" [|(Obj.magic x50)|])
        let (runInAsyncScope :
          t ->
            fn:(this:'This -> args:any list -> 'Result) ->
              ?thisArg:'This -> args:any list -> 'Result)
          =
          fun (x62 : t) ->
            fun ~fn:(x54 : this:'This -> args:any list -> 'Result) ->
              fun ?thisArg:(x55 : 'This option) ->
                fun ~args:(x56 : any list) ->
                  Obj.magic
                    (let x63 = t_to_js x62 in
                     Ojs.call (Ojs.get_prop_ascii x63 "runInAsyncScope")
                       "apply"
                       [|x63;((let x57 =
                                 Ojs.new_obj
                                   (Ojs.get_prop_ascii Ojs.global "Array")
                                   [||] in
                               ignore
                                 (Ojs.call x57 "push"
                                    [|(Ojs.fun_to_js_args
                                         (fun (x60 : _) ->
                                            Obj.magic
                                              (x54
                                                 ~this:(Obj.magic
                                                          (Ojs.array_get x60
                                                             0))
                                                 ~args:(Ojs.list_of_js_from
                                                          any_of_js x60 1))))|]);
                               (match x55 with
                                | Some x59 ->
                                    ignore
                                      (Ojs.call x57 "push"
                                         [|(Obj.magic x59)|])
                                | None -> ());
                               List.iter
                                 (fun (x58 : any) ->
                                    ignore
                                      (Ojs.call x57 "push"
                                         [|(any_to_js x58)|])) x56;
                               x57))|])
        let (emitDestroy : t -> t) =
          fun (x64 : t) ->
            t_of_js (Ojs.call (t_to_js x64) "emitDestroy" [||])
        let (asyncId : t -> int) =
          fun (x65 : t) ->
            Ojs.int_of_js (Ojs.call (t_to_js x65) "asyncId" [||])
        let (triggerAsyncId : t -> int) =
          fun (x66 : t) ->
            Ojs.int_of_js (Ojs.call (t_to_js x66) "triggerAsyncId" [||])
      end
    module AsyncLocalStorage =
      struct
        type 'T t = Ojs.t
        let rec t_of_js : 'T . (Ojs.t -> 'T) -> Ojs.t -> 'T t = fun (type
          __T) -> fun (__T_of_js : Ojs.t -> __T) -> fun (x68 : Ojs.t) -> x68
        and t_to_js : 'T . ('T -> Ojs.t) -> 'T t -> Ojs.t = fun (type __T) ->
          fun (__T_to_js : __T -> Ojs.t) -> fun (x67 : Ojs.t) -> x67
        let (disable : 'T t -> unit) =
          fun (x69 : 'T t) ->
            ignore (Ojs.call (t_to_js Obj.magic x69) "disable" [||])
        let (getStore : 'T t -> 'T or_undefined) =
          fun (x71 : 'T t) ->
            or_undefined_of_js Obj.magic
              (Ojs.call (t_to_js Obj.magic x71) "getStore" [||])
        let (run :
          'T t ->
            store:'T -> callback:(args:any list -> 'R) -> args:any list -> 'R)
          =
          fun (x81 : 'T t) ->
            fun ~store:(x74 : 'T) ->
              fun ~callback:(x75 : args:any list -> 'R) ->
                fun ~args:(x76 : any list) ->
                  Obj.magic
                    (let x83 = t_to_js Obj.magic x81 in
                     Ojs.call (Ojs.get_prop_ascii x83 "run") "apply"
                       [|x83;((let x77 =
                                 Ojs.new_obj
                                   (Ojs.get_prop_ascii Ojs.global "Array")
                                   [||] in
                               ignore
                                 (Ojs.call x77 "push" [|(Obj.magic x74)|]);
                               ignore
                                 (Ojs.call x77 "push"
                                    [|(Ojs.fun_to_js_args
                                         (fun (x79 : _) ->
                                            Obj.magic
                                              (x75
                                                 ~args:(Ojs.list_of_js_from
                                                          any_of_js x79 0))))|]);
                               List.iter
                                 (fun (x78 : any) ->
                                    ignore
                                      (Ojs.call x77 "push"
                                         [|(any_to_js x78)|])) x76;
                               x77))|])
        let (exit :
          'T t -> callback:(args:any list -> 'R) -> args:any list -> 'R) =
          fun (x90 : 'T t) ->
            fun ~callback:(x84 : args:any list -> 'R) ->
              fun ~args:(x85 : any list) ->
                Obj.magic
                  (let x92 = t_to_js Obj.magic x90 in
                   Ojs.call (Ojs.get_prop_ascii x92 "exit") "apply"
                     [|x92;((let x86 =
                               Ojs.new_obj
                                 (Ojs.get_prop_ascii Ojs.global "Array") 
                                 [||] in
                             ignore
                               (Ojs.call x86 "push"
                                  [|(Ojs.fun_to_js_args
                                       (fun (x88 : _) ->
                                          Obj.magic
                                            (x84
                                               ~args:(Ojs.list_of_js_from
                                                        any_of_js x88 0))))|]);
                             List.iter
                               (fun (x87 : any) ->
                                  ignore
                                    (Ojs.call x86 "push" [|(any_to_js x87)|]))
                               x85;
                             x86))|])
        let (enterWith : 'T t -> store:'T -> unit) =
          fun (x94 : 'T t) ->
            fun ~store:(x93 : 'T) ->
              ignore
                (Ojs.call (t_to_js Obj.magic x94) "enterWith"
                   [|(Obj.magic x93)|])
      end
  end
