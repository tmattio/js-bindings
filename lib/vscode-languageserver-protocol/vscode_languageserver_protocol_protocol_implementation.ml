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
        type _ImplementationClientCapabilities =
          [ `ImplementationClientCapabilities ] intf
        and _ImplementationOptions = [ `ImplementationOptions ] intf
        and _ImplementationParams = [ `ImplementationParams ] intf
        and _ImplementationRegistrationOptions =
          [ `ImplementationRegistrationOptions  | `ImplementationOptions ]
            intf
        and _ImplementationRequest_HandlerSignature =
          (_ImplementationParams,
            (Definition.t, DefinitionLink.t) or_array or_null, unit)
            RequestHandler.t_3
        let rec _ImplementationClientCapabilities_of_js :
          Ojs.t -> _ImplementationClientCapabilities = Obj.magic
        and _ImplementationClientCapabilities_to_js :
          _ImplementationClientCapabilities -> Ojs.t = Obj.magic
        and _ImplementationOptions_of_js : Ojs.t -> _ImplementationOptions =
          Obj.magic
        and _ImplementationOptions_to_js : _ImplementationOptions -> Ojs.t =
          Obj.magic
        and _ImplementationParams_of_js : Ojs.t -> _ImplementationParams =
          Obj.magic
        and _ImplementationParams_to_js : _ImplementationParams -> Ojs.t =
          Obj.magic
        and _ImplementationRegistrationOptions_of_js :
          Ojs.t -> _ImplementationRegistrationOptions = Obj.magic
        and _ImplementationRegistrationOptions_to_js :
          _ImplementationRegistrationOptions -> Ojs.t = Obj.magic
        and _ImplementationRequest_HandlerSignature_of_js :
          Ojs.t -> _ImplementationRequest_HandlerSignature =
          fun (x8 : Ojs.t) ->
            RequestHandler.t_3_of_js _ImplementationParams_of_js
              (fun (x10 : Ojs.t) ->
                 or_null_of_js
                   (fun (x11 : Ojs.t) ->
                      or_array_of_js Definition.t_of_js
                        DefinitionLink.t_of_js x11) x10) Ojs.unit_of_js x8
        and _ImplementationRequest_HandlerSignature_to_js :
          _ImplementationRequest_HandlerSignature -> Ojs.t =
          fun
            (x1 :
              (_ImplementationParams,
                (Definition.t, DefinitionLink.t) or_array or_null, unit)
                RequestHandler.t_3)
            ->
            RequestHandler.t_3_to_js _ImplementationParams_to_js
              (fun (x3 : (Definition.t, DefinitionLink.t) or_array or_null)
                 ->
                 or_null_to_js
                   (fun (x4 : (Definition.t, DefinitionLink.t) or_array) ->
                      or_array_to_js Definition.t_to_js
                        DefinitionLink.t_to_js x4) x3) Ojs.unit_to_js x1
      end
  end
open Internal
open AnonymousInterfaces
open Types
module ImplementationClientCapabilities =
  struct
    type t = _ImplementationClientCapabilities
    let rec t_of_js : Ojs.t -> t =
      fun (x16 : Ojs.t) -> _ImplementationClientCapabilities_of_js x16
    and t_to_js : t -> Ojs.t =
      fun (x15 : _ImplementationClientCapabilities) ->
        _ImplementationClientCapabilities_to_js x15
    let (get_dynamicRegistration : t -> bool) =
      fun (x17 : t) ->
        Ojs.bool_of_js
          (Ojs.get_prop_ascii (t_to_js x17) "dynamicRegistration")
    let (set_dynamicRegistration : t -> bool -> unit) =
      fun (x18 : t) ->
        fun (x19 : bool) ->
          Ojs.set_prop_ascii (t_to_js x18) "dynamicRegistration"
            (Ojs.bool_to_js x19)
    let (get_linkSupport : t -> bool) =
      fun (x20 : t) ->
        Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x20) "linkSupport")
    let (set_linkSupport : t -> bool -> unit) =
      fun (x21 : t) ->
        fun (x22 : bool) ->
          Ojs.set_prop_ascii (t_to_js x21) "linkSupport" (Ojs.bool_to_js x22)
  end
module ImplementationOptions =
  struct
    type t = _ImplementationOptions
    let rec t_of_js : Ojs.t -> t =
      fun (x24 : Ojs.t) -> _ImplementationOptions_of_js x24
    and t_to_js : t -> Ojs.t =
      fun (x23 : _ImplementationOptions) -> _ImplementationOptions_to_js x23
    let (cast : t -> WorkDoneProgressOptions.t) =
      fun (x25 : t) -> WorkDoneProgressOptions.t_of_js (t_to_js x25)
  end
module ImplementationRegistrationOptions =
  struct
    type t = _ImplementationRegistrationOptions
    let rec t_of_js : Ojs.t -> t =
      fun (x27 : Ojs.t) -> _ImplementationRegistrationOptions_of_js x27
    and t_to_js : t -> Ojs.t =
      fun (x26 : _ImplementationRegistrationOptions) ->
        _ImplementationRegistrationOptions_to_js x26
    let (cast : t -> TextDocumentRegistrationOptions.t) =
      fun (x28 : t) -> TextDocumentRegistrationOptions.t_of_js (t_to_js x28)
    let (cast' : t -> _ImplementationOptions) =
      fun (x29 : t) -> _ImplementationOptions_of_js (t_to_js x29)
    let (cast'' : t -> StaticRegistrationOptions.t) =
      fun (x30 : t) -> StaticRegistrationOptions.t_of_js (t_to_js x30)
  end
module ImplementationParams =
  struct
    type t = _ImplementationParams
    let rec t_of_js : Ojs.t -> t =
      fun (x32 : Ojs.t) -> _ImplementationParams_of_js x32
    and t_to_js : t -> Ojs.t =
      fun (x31 : _ImplementationParams) -> _ImplementationParams_to_js x31
    let (cast : t -> TextDocumentPositionParams.t) =
      fun (x33 : t) -> TextDocumentPositionParams.t_of_js (t_to_js x33)
    let (cast' : t -> WorkDoneProgressParams.t) =
      fun (x34 : t) -> WorkDoneProgressParams.t_of_js (t_to_js x34)
    let (cast'' : t -> PartialResultParams.t) =
      fun (x35 : t) -> PartialResultParams.t_of_js (t_to_js x35)
  end
module ImplementationRequest =
  struct
    let (method_ : [ `L_s0_textDocument_implementation ]) =
      let x36 =
        Ojs.get_prop_ascii
          (Ojs.get_prop_ascii Ojs.global "ImplementationRequest") "method" in
      match Ojs.string_of_js x36 with
      | "textDocument/implementation" -> `L_s0_textDocument_implementation
      | _ -> assert false
    let (type_ :
      (_ImplementationParams,
        (Location.t, (Location.t, LocationLink.t) union2) or_array or_null,
        (Location.t, LocationLink.t) union2 list, unit,
        _ImplementationRegistrationOptions) ProtocolRequestType.t_5)
      =
      ProtocolRequestType.t_5_of_js _ImplementationParams_of_js
        (fun (x38 : Ojs.t) ->
           or_null_of_js
             (fun (x39 : Ojs.t) ->
                or_array_of_js Location.t_of_js
                  (fun (x41 : Ojs.t) ->
                     union2_of_js Location.t_of_js LocationLink.t_of_js x41)
                  x39) x38)
        (fun (x44 : Ojs.t) ->
           Ojs.list_of_js
             (fun (x45 : Ojs.t) ->
                union2_of_js Location.t_of_js LocationLink.t_of_js x45) x44)
        Ojs.unit_of_js _ImplementationRegistrationOptions_of_js
        (Ojs.get_prop_ascii
           (Ojs.get_prop_ascii Ojs.global "ImplementationRequest") "type")
    module HandlerSignature =
      struct
        type t = _ImplementationRequest_HandlerSignature
        let rec t_of_js : Ojs.t -> t =
          fun (x51 : Ojs.t) ->
            _ImplementationRequest_HandlerSignature_of_js x51
        and t_to_js : t -> Ojs.t =
          fun (x50 : _ImplementationRequest_HandlerSignature) ->
            _ImplementationRequest_HandlerSignature_to_js x50
      end
  end
