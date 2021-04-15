[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es5
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
        type anonymous_interface_2 = [ `anonymous_interface_2 ] intf
        let rec anonymous_interface_2_of_js : Ojs.t -> anonymous_interface_2
          = Obj.magic
        and anonymous_interface_2_to_js : anonymous_interface_2 -> Ojs.t =
          Obj.magic
      end
    module Types =
      struct
        open AnonymousInterfaces
        type _DidChangeWorkspaceFoldersNotification_HandlerSignature =
          _DidChangeWorkspaceFoldersParams NotificationHandler.t_1
        and _DidChangeWorkspaceFoldersNotification_MiddlewareSignature =
          [ `DidChangeWorkspaceFoldersNotification_MiddlewareSignature ] intf
        and _DidChangeWorkspaceFoldersParams =
          [ `DidChangeWorkspaceFoldersParams ] intf
        and _WorkspaceFolder = [ `WorkspaceFolder ] intf
        and _WorkspaceFoldersChangeEvent =
          [ `WorkspaceFoldersChangeEvent ] intf
        and _WorkspaceFoldersClientCapabilities =
          [ `WorkspaceFoldersClientCapabilities ] intf
        and _WorkspaceFoldersInitializeParams =
          [ `WorkspaceFoldersInitializeParams ] intf
        and _WorkspaceFoldersRequest_HandlerSignature =
          (_WorkspaceFolder list or_null, unit) RequestHandler0.t_2
        and _WorkspaceFoldersRequest_MiddlewareSignature =
          [ `WorkspaceFoldersRequest_MiddlewareSignature ] intf
        and _WorkspaceFoldersServerCapabilities =
          [ `WorkspaceFoldersServerCapabilities ] intf
        let rec _DidChangeWorkspaceFoldersNotification_HandlerSignature_of_js
          : Ojs.t -> _DidChangeWorkspaceFoldersNotification_HandlerSignature
          =
          fun (x3 : Ojs.t) ->
            NotificationHandler.t_1_of_js
              _DidChangeWorkspaceFoldersParams_of_js x3
        and _DidChangeWorkspaceFoldersNotification_HandlerSignature_to_js :
          _DidChangeWorkspaceFoldersNotification_HandlerSignature -> Ojs.t =
          fun (x1 : _DidChangeWorkspaceFoldersParams NotificationHandler.t_1)
            ->
            NotificationHandler.t_1_to_js
              _DidChangeWorkspaceFoldersParams_to_js x1
        and _DidChangeWorkspaceFoldersNotification_MiddlewareSignature_of_js
          :
          Ojs.t -> _DidChangeWorkspaceFoldersNotification_MiddlewareSignature
          = Obj.magic
        and _DidChangeWorkspaceFoldersNotification_MiddlewareSignature_to_js
          :
          _DidChangeWorkspaceFoldersNotification_MiddlewareSignature -> Ojs.t
          = Obj.magic
        and _DidChangeWorkspaceFoldersParams_of_js :
          Ojs.t -> _DidChangeWorkspaceFoldersParams = Obj.magic
        and _DidChangeWorkspaceFoldersParams_to_js :
          _DidChangeWorkspaceFoldersParams -> Ojs.t = Obj.magic
        and _WorkspaceFolder_of_js : Ojs.t -> _WorkspaceFolder = Obj.magic
        and _WorkspaceFolder_to_js : _WorkspaceFolder -> Ojs.t = Obj.magic
        and _WorkspaceFoldersChangeEvent_of_js :
          Ojs.t -> _WorkspaceFoldersChangeEvent = Obj.magic
        and _WorkspaceFoldersChangeEvent_to_js :
          _WorkspaceFoldersChangeEvent -> Ojs.t = Obj.magic
        and _WorkspaceFoldersClientCapabilities_of_js :
          Ojs.t -> _WorkspaceFoldersClientCapabilities = Obj.magic
        and _WorkspaceFoldersClientCapabilities_to_js :
          _WorkspaceFoldersClientCapabilities -> Ojs.t = Obj.magic
        and _WorkspaceFoldersInitializeParams_of_js :
          Ojs.t -> _WorkspaceFoldersInitializeParams = Obj.magic
        and _WorkspaceFoldersInitializeParams_to_js :
          _WorkspaceFoldersInitializeParams -> Ojs.t = Obj.magic
        and _WorkspaceFoldersRequest_HandlerSignature_of_js :
          Ojs.t -> _WorkspaceFoldersRequest_HandlerSignature =
          fun (x10 : Ojs.t) ->
            RequestHandler0.t_2_of_js
              (fun (x11 : Ojs.t) ->
                 or_null_of_js
                   (fun (x12 : Ojs.t) ->
                      Ojs.list_of_js _WorkspaceFolder_of_js x12) x11)
              Ojs.unit_of_js x10
        and _WorkspaceFoldersRequest_HandlerSignature_to_js :
          _WorkspaceFoldersRequest_HandlerSignature -> Ojs.t =
          fun
            (x5 : (_WorkspaceFolder list or_null, unit) RequestHandler0.t_2)
            ->
            RequestHandler0.t_2_to_js
              (fun (x6 : _WorkspaceFolder list or_null) ->
                 or_null_to_js
                   (fun (x7 : _WorkspaceFolder list) ->
                      Ojs.list_to_js _WorkspaceFolder_to_js x7) x6)
              Ojs.unit_to_js x5
        and _WorkspaceFoldersRequest_MiddlewareSignature_of_js :
          Ojs.t -> _WorkspaceFoldersRequest_MiddlewareSignature = Obj.magic
        and _WorkspaceFoldersRequest_MiddlewareSignature_to_js :
          _WorkspaceFoldersRequest_MiddlewareSignature -> Ojs.t = Obj.magic
        and _WorkspaceFoldersServerCapabilities_of_js :
          Ojs.t -> _WorkspaceFoldersServerCapabilities = Obj.magic
        and _WorkspaceFoldersServerCapabilities_to_js :
          _WorkspaceFoldersServerCapabilities -> Ojs.t = Obj.magic
      end
  end
open Internal
open AnonymousInterfaces
open Types
module AnonymousInterface0 =
  struct
    type t = anonymous_interface_0
    let rec t_of_js : Ojs.t -> t =
      fun (x16 : Ojs.t) -> anonymous_interface_0_of_js x16
    and t_to_js : t -> Ojs.t =
      fun (x15 : anonymous_interface_0) -> anonymous_interface_0_to_js x15
    let (get_supported : t -> bool) =
      fun (x17 : t) ->
        Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x17) "supported")
    let (set_supported : t -> bool -> unit) =
      fun (x18 : t) ->
        fun (x19 : bool) ->
          Ojs.set_prop_ascii (t_to_js x18) "supported" (Ojs.bool_to_js x19)
    let (get_changeNotifications : t -> bool or_string) =
      fun (x20 : t) ->
        or_string_of_js Ojs.bool_of_js
          (Ojs.get_prop_ascii (t_to_js x20) "changeNotifications")
    let (set_changeNotifications : t -> bool or_string -> unit) =
      fun (x22 : t) ->
        fun (x23 : bool or_string) ->
          Ojs.set_prop_ascii (t_to_js x22) "changeNotifications"
            (or_string_to_js Ojs.bool_to_js x23)
  end
module AnonymousInterface1 =
  struct
    type t = anonymous_interface_1
    let rec t_of_js : Ojs.t -> t =
      fun (x26 : Ojs.t) -> anonymous_interface_1_of_js x26
    and t_to_js : t -> Ojs.t =
      fun (x25 : anonymous_interface_1) -> anonymous_interface_1_to_js x25
    let (get_workspaceFolders : t -> bool) =
      fun (x27 : t) ->
        Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x27) "workspaceFolders")
    let (set_workspaceFolders : t -> bool -> unit) =
      fun (x28 : t) ->
        fun (x29 : bool) ->
          Ojs.set_prop_ascii (t_to_js x28) "workspaceFolders"
            (Ojs.bool_to_js x29)
  end
module AnonymousInterface2 =
  struct
    type t = anonymous_interface_2
    let rec t_of_js : Ojs.t -> t =
      fun (x31 : Ojs.t) -> anonymous_interface_2_of_js x31
    and t_to_js : t -> Ojs.t =
      fun (x30 : anonymous_interface_2) -> anonymous_interface_2_to_js x30
    let (get_workspaceFolders : t -> anonymous_interface_0) =
      fun (x32 : t) ->
        anonymous_interface_0_of_js
          (Ojs.get_prop_ascii (t_to_js x32) "workspaceFolders")
    let (set_workspaceFolders : t -> anonymous_interface_0 -> unit) =
      fun (x33 : t) ->
        fun (x34 : anonymous_interface_0) ->
          Ojs.set_prop_ascii (t_to_js x33) "workspaceFolders"
            (anonymous_interface_0_to_js x34)
  end
module WorkspaceFoldersInitializeParams =
  struct
    type t = _WorkspaceFoldersInitializeParams
    let rec t_of_js : Ojs.t -> t =
      fun (x36 : Ojs.t) -> _WorkspaceFoldersInitializeParams_of_js x36
    and t_to_js : t -> Ojs.t =
      fun (x35 : _WorkspaceFoldersInitializeParams) ->
        _WorkspaceFoldersInitializeParams_to_js x35
    let (get_workspaceFolders : t -> _WorkspaceFolder list or_null) =
      fun (x37 : t) ->
        or_null_of_js
          (fun (x38 : Ojs.t) -> Ojs.list_of_js _WorkspaceFolder_of_js x38)
          (Ojs.get_prop_ascii (t_to_js x37) "workspaceFolders")
    let (set_workspaceFolders : t -> _WorkspaceFolder list or_null -> unit) =
      fun (x40 : t) ->
        fun (x41 : _WorkspaceFolder list or_null) ->
          Ojs.set_prop_ascii (t_to_js x40) "workspaceFolders"
            (or_null_to_js
               (fun (x42 : _WorkspaceFolder list) ->
                  Ojs.list_to_js _WorkspaceFolder_to_js x42) x41)
  end
module WorkspaceFoldersClientCapabilities =
  struct
    type t = _WorkspaceFoldersClientCapabilities
    let rec t_of_js : Ojs.t -> t =
      fun (x45 : Ojs.t) -> _WorkspaceFoldersClientCapabilities_of_js x45
    and t_to_js : t -> Ojs.t =
      fun (x44 : _WorkspaceFoldersClientCapabilities) ->
        _WorkspaceFoldersClientCapabilities_to_js x44
    let (get_workspace : t -> anonymous_interface_1) =
      fun (x46 : t) ->
        anonymous_interface_1_of_js
          (Ojs.get_prop_ascii (t_to_js x46) "workspace")
    let (set_workspace : t -> anonymous_interface_1 -> unit) =
      fun (x47 : t) ->
        fun (x48 : anonymous_interface_1) ->
          Ojs.set_prop_ascii (t_to_js x47) "workspace"
            (anonymous_interface_1_to_js x48)
  end
module WorkspaceFoldersServerCapabilities =
  struct
    type t = _WorkspaceFoldersServerCapabilities
    let rec t_of_js : Ojs.t -> t =
      fun (x50 : Ojs.t) -> _WorkspaceFoldersServerCapabilities_of_js x50
    and t_to_js : t -> Ojs.t =
      fun (x49 : _WorkspaceFoldersServerCapabilities) ->
        _WorkspaceFoldersServerCapabilities_to_js x49
    let (get_workspace : t -> anonymous_interface_2) =
      fun (x51 : t) ->
        anonymous_interface_2_of_js
          (Ojs.get_prop_ascii (t_to_js x51) "workspace")
    let (set_workspace : t -> anonymous_interface_2 -> unit) =
      fun (x52 : t) ->
        fun (x53 : anonymous_interface_2) ->
          Ojs.set_prop_ascii (t_to_js x52) "workspace"
            (anonymous_interface_2_to_js x53)
  end
module WorkspaceFolder =
  struct
    type t = _WorkspaceFolder
    let rec t_of_js : Ojs.t -> t =
      fun (x55 : Ojs.t) -> _WorkspaceFolder_of_js x55
    and t_to_js : t -> Ojs.t =
      fun (x54 : _WorkspaceFolder) -> _WorkspaceFolder_to_js x54
    let (get_uri : t -> string) =
      fun (x56 : t) ->
        Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x56) "uri")
    let (set_uri : t -> string -> unit) =
      fun (x57 : t) ->
        fun (x58 : string) ->
          Ojs.set_prop_ascii (t_to_js x57) "uri" (Ojs.string_to_js x58)
    let (get_name : t -> string) =
      fun (x59 : t) ->
        Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x59) "name")
    let (set_name : t -> string -> unit) =
      fun (x60 : t) ->
        fun (x61 : string) ->
          Ojs.set_prop_ascii (t_to_js x60) "name" (Ojs.string_to_js x61)
  end
module WorkspaceFoldersRequest =
  struct
    let (type_ :
      (_WorkspaceFolder list or_null, never, unit, unit)
        ProtocolRequestType0.t_4)
      =
      ProtocolRequestType0.t_4_of_js
        (fun (x62 : Ojs.t) ->
           or_null_of_js
             (fun (x63 : Ojs.t) -> Ojs.list_of_js _WorkspaceFolder_of_js x63)
             x62) never_of_js Ojs.unit_of_js Ojs.unit_of_js
        (Ojs.get_prop_ascii
           (Ojs.get_prop_ascii Ojs.global "WorkspaceFoldersRequest") "type")
    module HandlerSignature =
      struct
        type t = _WorkspaceFoldersRequest_HandlerSignature
        let rec t_of_js : Ojs.t -> t =
          fun (x69 : Ojs.t) ->
            _WorkspaceFoldersRequest_HandlerSignature_of_js x69
        and t_to_js : t -> Ojs.t =
          fun (x68 : _WorkspaceFoldersRequest_HandlerSignature) ->
            _WorkspaceFoldersRequest_HandlerSignature_to_js x68
      end
    module MiddlewareSignature =
      struct
        type t = _WorkspaceFoldersRequest_MiddlewareSignature
        let rec t_of_js : Ojs.t -> t =
          fun (x71 : Ojs.t) ->
            _WorkspaceFoldersRequest_MiddlewareSignature_of_js x71
        and t_to_js : t -> Ojs.t =
          fun (x70 : _WorkspaceFoldersRequest_MiddlewareSignature) ->
            _WorkspaceFoldersRequest_MiddlewareSignature_to_js x70
        let (apply :
          t ->
            token:CancellationToken.t ->
              next:_WorkspaceFoldersRequest_HandlerSignature ->
                (_WorkspaceFolder list or_null, unit) HandlerResult.t_2)
          =
          fun (x74 : t) ->
            fun ~token:(x72 : CancellationToken.t) ->
              fun ~next:(x73 : _WorkspaceFoldersRequest_HandlerSignature) ->
                HandlerResult.t_2_of_js
                  (fun (x75 : Ojs.t) ->
                     or_null_of_js
                       (fun (x76 : Ojs.t) ->
                          Ojs.list_of_js _WorkspaceFolder_of_js x76) x75)
                  Ojs.unit_of_js
                  (Ojs.apply (t_to_js x74)
                     [|(CancellationToken.t_to_js x72);(_WorkspaceFoldersRequest_HandlerSignature_to_js
                                                          x73)|])
      end
  end
module DidChangeWorkspaceFoldersNotification =
  struct
    let (type_ :
      (_DidChangeWorkspaceFoldersParams, unit) ProtocolNotificationType.t_2)
      =
      ProtocolNotificationType.t_2_of_js
        _DidChangeWorkspaceFoldersParams_of_js Ojs.unit_of_js
        (Ojs.get_prop_ascii
           (Ojs.get_prop_ascii Ojs.global
              "DidChangeWorkspaceFoldersNotification") "type")
    module HandlerSignature =
      struct
        type t = _DidChangeWorkspaceFoldersNotification_HandlerSignature
        let rec t_of_js : Ojs.t -> t =
          fun (x82 : Ojs.t) ->
            _DidChangeWorkspaceFoldersNotification_HandlerSignature_of_js x82
        and t_to_js : t -> Ojs.t =
          fun (x81 : _DidChangeWorkspaceFoldersNotification_HandlerSignature)
            ->
            _DidChangeWorkspaceFoldersNotification_HandlerSignature_to_js x81
      end
    module MiddlewareSignature =
      struct
        type t = _DidChangeWorkspaceFoldersNotification_MiddlewareSignature
        let rec t_of_js : Ojs.t -> t =
          fun (x84 : Ojs.t) ->
            _DidChangeWorkspaceFoldersNotification_MiddlewareSignature_of_js
              x84
        and t_to_js : t -> Ojs.t =
          fun
            (x83 :
              _DidChangeWorkspaceFoldersNotification_MiddlewareSignature)
            ->
            _DidChangeWorkspaceFoldersNotification_MiddlewareSignature_to_js
              x83
        let (apply :
          t ->
            params:_DidChangeWorkspaceFoldersParams ->
              next:_DidChangeWorkspaceFoldersNotification_HandlerSignature ->
                unit)
          =
          fun (x87 : t) ->
            fun ~params:(x85 : _DidChangeWorkspaceFoldersParams) ->
              fun
                ~next:(x86 :
                        _DidChangeWorkspaceFoldersNotification_HandlerSignature)
                ->
                ignore
                  (Ojs.apply (t_to_js x87)
                     [|(_DidChangeWorkspaceFoldersParams_to_js x85);(
                       _DidChangeWorkspaceFoldersNotification_HandlerSignature_to_js
                         x86)|])
      end
  end
module DidChangeWorkspaceFoldersParams =
  struct
    type t = _DidChangeWorkspaceFoldersParams
    let rec t_of_js : Ojs.t -> t =
      fun (x89 : Ojs.t) -> _DidChangeWorkspaceFoldersParams_of_js x89
    and t_to_js : t -> Ojs.t =
      fun (x88 : _DidChangeWorkspaceFoldersParams) ->
        _DidChangeWorkspaceFoldersParams_to_js x88
    let (get_event : t -> _WorkspaceFoldersChangeEvent) =
      fun (x90 : t) ->
        _WorkspaceFoldersChangeEvent_of_js
          (Ojs.get_prop_ascii (t_to_js x90) "event")
    let (set_event : t -> _WorkspaceFoldersChangeEvent -> unit) =
      fun (x91 : t) ->
        fun (x92 : _WorkspaceFoldersChangeEvent) ->
          Ojs.set_prop_ascii (t_to_js x91) "event"
            (_WorkspaceFoldersChangeEvent_to_js x92)
  end
module WorkspaceFoldersChangeEvent =
  struct
    type t = _WorkspaceFoldersChangeEvent
    let rec t_of_js : Ojs.t -> t =
      fun (x94 : Ojs.t) -> _WorkspaceFoldersChangeEvent_of_js x94
    and t_to_js : t -> Ojs.t =
      fun (x93 : _WorkspaceFoldersChangeEvent) ->
        _WorkspaceFoldersChangeEvent_to_js x93
    let (get_added : t -> _WorkspaceFolder list) =
      fun (x95 : t) ->
        Ojs.list_of_js _WorkspaceFolder_of_js
          (Ojs.get_prop_ascii (t_to_js x95) "added")
    let (set_added : t -> _WorkspaceFolder list -> unit) =
      fun (x97 : t) ->
        fun (x98 : _WorkspaceFolder list) ->
          Ojs.set_prop_ascii (t_to_js x97) "added"
            (Ojs.list_to_js _WorkspaceFolder_to_js x98)
    let (get_removed : t -> _WorkspaceFolder list) =
      fun (x100 : t) ->
        Ojs.list_of_js _WorkspaceFolder_of_js
          (Ojs.get_prop_ascii (t_to_js x100) "removed")
    let (set_removed : t -> _WorkspaceFolder list -> unit) =
      fun (x102 : t) ->
        fun (x103 : _WorkspaceFolder list) ->
          Ojs.set_prop_ascii (t_to_js x102) "removed"
            (Ojs.list_to_js _WorkspaceFolder_to_js x103)
  end