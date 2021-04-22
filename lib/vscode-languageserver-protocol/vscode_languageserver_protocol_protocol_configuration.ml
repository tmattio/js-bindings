[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es5
module Internal =
  struct
    module Types =
      struct
        type _ConfigurationRequest_HandlerSignature =
          (_ConfigurationParams, any list, unit) RequestHandler.t
        let rec _ConfigurationRequest_HandlerSignature_of_js :
          Ojs.t -> _ConfigurationRequest_HandlerSignature =
          fun (x6 : Ojs.t) ->
            RequestHandler.t_of_js _ConfigurationParams_of_js
              (fun (x8 : Ojs.t) -> Ojs.list_of_js any_of_js x8)
              Ojs.unit_of_js x6
        and _ConfigurationRequest_HandlerSignature_to_js :
          _ConfigurationRequest_HandlerSignature -> Ojs.t =
          fun (x1 : (_ConfigurationParams, any list, unit) RequestHandler.t)
            ->
            RequestHandler.t_to_js _ConfigurationParams_to_js
              (fun (x3 : any list) -> Ojs.list_to_js any_to_js x3)
              Ojs.unit_to_js x1
      end
  end
module AnonymousInterface0 =
  struct
    type t = Ojs.t
    let rec t_of_js : Ojs.t -> t = fun (x12 : Ojs.t) -> x12
    and t_to_js : t -> Ojs.t = fun (x11 : Ojs.t) -> x11
    let (get_configuration : t -> bool) =
      fun (x13 : t) ->
        Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x13) "configuration")
    let (set_configuration : t -> bool -> unit) =
      fun (x14 : t) ->
        fun (x15 : bool) ->
          Ojs.set_prop_ascii (t_to_js x14) "configuration"
            (Ojs.bool_to_js x15)
  end
module ConfigurationClientCapabilities =
  struct
    type t = _ConfigurationClientCapabilities
    let rec t_of_js : Ojs.t -> t =
      fun (x17 : Ojs.t) -> _ConfigurationClientCapabilities_of_js x17
    and t_to_js : t -> Ojs.t =
      fun (x16 : _ConfigurationClientCapabilities) ->
        _ConfigurationClientCapabilities_to_js x16
    let (get_workspace : t -> AnonymousInterface0.t) =
      fun (x18 : t) ->
        AnonymousInterface0.t_of_js
          (Ojs.get_prop_ascii (t_to_js x18) "workspace")
    let (set_workspace : t -> AnonymousInterface0.t -> unit) =
      fun (x19 : t) ->
        fun (x20 : AnonymousInterface0.t) ->
          Ojs.set_prop_ascii (t_to_js x19) "workspace"
            (AnonymousInterface0.t_to_js x20)
  end
module ConfigurationRequest =
  struct
    let (type_ :
      ((_ConfigurationParams, PartialResultParams.t) intersection2, any list,
        never, unit, unit) ProtocolRequestType.t)
      =
      ProtocolRequestType.t_of_js
        (fun (x21 : Ojs.t) ->
           intersection2_of_js _ConfigurationParams_of_js
             PartialResultParams.t_of_js x21)
        (fun (x24 : Ojs.t) -> Ojs.list_of_js any_of_js x24) never_of_js
        Ojs.unit_of_js Ojs.unit_of_js
        (Ojs.get_prop_ascii
           (Ojs.get_prop_ascii Ojs.global "ConfigurationRequest") "type")
    module HandlerSignature =
      struct
        type t = _ConfigurationRequest_HandlerSignature
        let rec t_of_js : Ojs.t -> t =
          fun (x30 : Ojs.t) ->
            _ConfigurationRequest_HandlerSignature_of_js x30
        and t_to_js : t -> Ojs.t =
          fun (x29 : _ConfigurationRequest_HandlerSignature) ->
            _ConfigurationRequest_HandlerSignature_to_js x29
      end
    module MiddlewareSignature =
      struct
        type t = _ConfigurationRequest_MiddlewareSignature
        let rec t_of_js : Ojs.t -> t =
          fun (x32 : Ojs.t) ->
            _ConfigurationRequest_MiddlewareSignature_of_js x32
        and t_to_js : t -> Ojs.t =
          fun (x31 : _ConfigurationRequest_MiddlewareSignature) ->
            _ConfigurationRequest_MiddlewareSignature_to_js x31
        let (apply :
          t ->
            params:_ConfigurationParams ->
              token:CancellationToken.t ->
                next:_ConfigurationRequest_HandlerSignature ->
                  (any list, unit) HandlerResult.t)
          =
          fun (x36 : t) ->
            fun ~params:(x33 : _ConfigurationParams) ->
              fun ~token:(x34 : CancellationToken.t) ->
                fun ~next:(x35 : _ConfigurationRequest_HandlerSignature) ->
                  HandlerResult.t_of_js
                    (fun (x37 : Ojs.t) -> Ojs.list_of_js any_of_js x37)
                    Ojs.unit_of_js
                    (Ojs.apply (t_to_js x36)
                       [|(_ConfigurationParams_to_js x33);(CancellationToken.t_to_js
                                                             x34);(_ConfigurationRequest_HandlerSignature_to_js
                                                                    x35)|])
      end
  end
module ConfigurationItem =
  struct
    type t = _ConfigurationItem
    let rec t_of_js : Ojs.t -> t =
      fun (x41 : Ojs.t) -> _ConfigurationItem_of_js x41
    and t_to_js : t -> Ojs.t =
      fun (x40 : _ConfigurationItem) -> _ConfigurationItem_to_js x40
    let (get_scopeUri : t -> string) =
      fun (x42 : t) ->
        Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x42) "scopeUri")
    let (set_scopeUri : t -> string -> unit) =
      fun (x43 : t) ->
        fun (x44 : string) ->
          Ojs.set_prop_ascii (t_to_js x43) "scopeUri" (Ojs.string_to_js x44)
    let (get_section : t -> string) =
      fun (x45 : t) ->
        Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x45) "section")
    let (set_section : t -> string -> unit) =
      fun (x46 : t) ->
        fun (x47 : string) ->
          Ojs.set_prop_ascii (t_to_js x46) "section" (Ojs.string_to_js x47)
  end
module ConfigurationParams =
  struct
    type t = _ConfigurationParams
    let rec t_of_js : Ojs.t -> t =
      fun (x49 : Ojs.t) -> _ConfigurationParams_of_js x49
    and t_to_js : t -> Ojs.t =
      fun (x48 : _ConfigurationParams) -> _ConfigurationParams_to_js x48
    let (get_items : t -> _ConfigurationItem list) =
      fun (x50 : t) ->
        Ojs.list_of_js _ConfigurationItem_of_js
          (Ojs.get_prop_ascii (t_to_js x50) "items")
    let (set_items : t -> _ConfigurationItem list -> unit) =
      fun (x52 : t) ->
        fun (x53 : _ConfigurationItem list) ->
          Ojs.set_prop_ascii (t_to_js x52) "items"
            (Ojs.list_to_js _ConfigurationItem_to_js x53)
  end
