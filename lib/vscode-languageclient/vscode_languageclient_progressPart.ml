[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es5
module Internal =
  struct
    module AnonymousInterfaces = struct  end
    module Types =
      struct
        open AnonymousInterfaces
        type _ProgressContext = [ `ProgressContext ] intf
        and _ProgressPart = [ `ProgressPart ] intf
        let rec _ProgressContext_of_js : Ojs.t -> _ProgressContext =
          Obj.magic
        and _ProgressContext_to_js : _ProgressContext -> Ojs.t = Obj.magic
        and _ProgressPart_of_js : Ojs.t -> _ProgressPart = Obj.magic
        and _ProgressPart_to_js : _ProgressPart -> Ojs.t = Obj.magic
      end
  end
open Internal
open AnonymousInterfaces
open Types
module ProgressContext =
  struct
    type t = _ProgressContext
    let rec t_of_js : Ojs.t -> t =
      fun (x2 : Ojs.t) -> _ProgressContext_of_js x2
    and t_to_js : t -> Ojs.t =
      fun (x1 : _ProgressContext) -> _ProgressContext_to_js x1
    let (onProgress :
      t ->
        type_:'P ProgressType.t_1 ->
          token:string or_number ->
            handler:'P NotificationHandler.t_1 -> Disposable.t)
      =
      fun (x9 : t) ->
        fun ~type_:(x3 : 'P ProgressType.t_1) ->
          fun ~token:(x5 : string or_number) ->
            fun ~handler:(x7 : 'P NotificationHandler.t_1) ->
              Disposable.t_of_js
                (Ojs.call (t_to_js x9) "onProgress"
                   [|(ProgressType.t_1_to_js Obj.magic x3);(or_number_to_js
                                                              Ojs.string_to_js
                                                              x5);(NotificationHandler.t_1_to_js
                                                                    Obj.magic
                                                                    x7)|])
    let (sendNotification :
      t ->
        type_:('P, 'RO) ProtocolNotificationType.t_2 ->
          ?params:'P -> unit -> unit)
      =
      fun (x16 : t) ->
        fun ~type_:(x10 : ('P, 'RO) ProtocolNotificationType.t_2) ->
          fun ?params:(x11 : 'P option) ->
            fun () ->
              ignore
                (let x17 = t_to_js x16 in
                 Ojs.call (Ojs.get_prop_ascii x17 "sendNotification") "apply"
                   [|x17;((let x12 =
                             Ojs.new_obj
                               (Ojs.get_prop_ascii Ojs.global "Array") 
                               [||] in
                           ignore
                             (Ojs.call x12 "push"
                                [|(ProtocolNotificationType.t_2_to_js
                                     Obj.magic Obj.magic x10)|]);
                           (match x11 with
                            | Some x13 ->
                                ignore
                                  (Ojs.call x12 "push" [|(Obj.magic x13)|])
                            | None -> ());
                           x12))|])
  end
module ProgressPart =
  struct
    type t = _ProgressPart
    let rec t_of_js : Ojs.t -> t =
      fun (x19 : Ojs.t) -> _ProgressPart_of_js x19
    and t_to_js : t -> Ojs.t =
      fun (x18 : _ProgressPart) -> _ProgressPart_to_js x18
    let (get__client : t -> any) =
      fun (x20 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x20) "_client")
    let (set__client : t -> any -> unit) =
      fun (x21 : t) ->
        fun (x22 : any) ->
          Ojs.set_prop_ascii (t_to_js x21) "_client" (any_to_js x22)
    let (get__token : t -> any) =
      fun (x23 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x23) "_token")
    let (set__token : t -> any -> unit) =
      fun (x24 : t) ->
        fun (x25 : any) ->
          Ojs.set_prop_ascii (t_to_js x24) "_token" (any_to_js x25)
    let (get__infinite : t -> any) =
      fun (x26 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x26) "_infinite")
    let (set__infinite : t -> any -> unit) =
      fun (x27 : t) ->
        fun (x28 : any) ->
          Ojs.set_prop_ascii (t_to_js x27) "_infinite" (any_to_js x28)
    let (get__reported : t -> any) =
      fun (x29 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x29) "_reported")
    let (set__reported : t -> any -> unit) =
      fun (x30 : t) ->
        fun (x31 : any) ->
          Ojs.set_prop_ascii (t_to_js x30) "_reported" (any_to_js x31)
    let (get__progress : t -> any) =
      fun (x32 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x32) "_progress")
    let (set__progress : t -> any -> unit) =
      fun (x33 : t) ->
        fun (x34 : any) ->
          Ojs.set_prop_ascii (t_to_js x33) "_progress" (any_to_js x34)
    let (get__cancellationToken : t -> any) =
      fun (x35 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x35) "_cancellationToken")
    let (set__cancellationToken : t -> any -> unit) =
      fun (x36 : t) ->
        fun (x37 : any) ->
          Ojs.set_prop_ascii (t_to_js x36) "_cancellationToken"
            (any_to_js x37)
    let (get__disposable : t -> any) =
      fun (x38 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x38) "_disposable")
    let (set__disposable : t -> any -> unit) =
      fun (x39 : t) ->
        fun (x40 : any) ->
          Ojs.set_prop_ascii (t_to_js x39) "_disposable" (any_to_js x40)
    let (get__resolve : t -> any) =
      fun (x41 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x41) "_resolve")
    let (set__resolve : t -> any -> unit) =
      fun (x42 : t) ->
        fun (x43 : any) ->
          Ojs.set_prop_ascii (t_to_js x42) "_resolve" (any_to_js x43)
    let (get__reject : t -> any) =
      fun (x44 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x44) "_reject")
    let (set__reject : t -> any -> unit) =
      fun (x45 : t) ->
        fun (x46 : any) ->
          Ojs.set_prop_ascii (t_to_js x45) "_reject" (any_to_js x46)
    let (create :
      _client:_ProgressContext ->
        _token:ProgressToken.t -> ?done_:(part:t -> unit) -> unit -> t)
      =
      fun ~_client:(x47 : _ProgressContext) ->
        fun ~_token:(x48 : ProgressToken.t) ->
          fun ?done_:(x49 : (part:t -> unit) option) ->
            fun () ->
              t_of_js
                (Ojs.new_obj_arr
                   (Ojs.get_prop_ascii Ojs.global "ProgressPart")
                   (let x50 =
                      Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array")
                        [||] in
                    ignore
                      (Ojs.call x50 "push" [|(_ProgressContext_to_js x47)|]);
                    ignore
                      (Ojs.call x50 "push" [|(ProgressToken.t_to_js x48)|]);
                    (match x49 with
                     | Some x51 ->
                         ignore
                           (Ojs.call x50 "push"
                              [|(Ojs.fun_to_js 1
                                   (fun (x52 : Ojs.t) ->
                                      x51 ~part:(t_of_js x52)))|])
                     | None -> ());
                    x50))
    let (get_begin : t -> any) =
      fun (x53 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x53) "begin")
    let (set_begin : t -> any -> unit) =
      fun (x54 : t) ->
        fun (x55 : any) ->
          Ojs.set_prop_ascii (t_to_js x54) "begin" (any_to_js x55)
    let (get_report : t -> any) =
      fun (x56 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x56) "report")
    let (set_report : t -> any -> unit) =
      fun (x57 : t) ->
        fun (x58 : any) ->
          Ojs.set_prop_ascii (t_to_js x57) "report" (any_to_js x58)
    let (cancel : t -> unit) =
      fun (x59 : t) -> ignore (Ojs.call (t_to_js x59) "cancel" [||])
    let (done_ : t -> unit) =
      fun (x60 : t) -> ignore (Ojs.call (t_to_js x60) "done" [||])
  end
