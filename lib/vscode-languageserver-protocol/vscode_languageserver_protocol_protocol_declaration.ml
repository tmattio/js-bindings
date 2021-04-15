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
        type _DeclarationClientCapabilities =
          [ `DeclarationClientCapabilities ] intf
        and _DeclarationOptions = [ `DeclarationOptions ] intf
        and _DeclarationParams = [ `DeclarationParams ] intf
        and _DeclarationRegistrationOptions =
          [ `DeclarationRegistrationOptions  | `DeclarationOptions ] intf
        and _DeclarationRequest_HandlerSignature =
          (_DeclarationParams,
            (Declaration.t, DeclarationLink.t) or_array or_null, unit)
            RequestHandler.t_3
        let rec _DeclarationClientCapabilities_of_js :
          Ojs.t -> _DeclarationClientCapabilities = Obj.magic
        and _DeclarationClientCapabilities_to_js :
          _DeclarationClientCapabilities -> Ojs.t = Obj.magic
        and _DeclarationOptions_of_js : Ojs.t -> _DeclarationOptions =
          Obj.magic
        and _DeclarationOptions_to_js : _DeclarationOptions -> Ojs.t =
          Obj.magic
        and _DeclarationParams_of_js : Ojs.t -> _DeclarationParams =
          Obj.magic
        and _DeclarationParams_to_js : _DeclarationParams -> Ojs.t =
          Obj.magic
        and _DeclarationRegistrationOptions_of_js :
          Ojs.t -> _DeclarationRegistrationOptions = Obj.magic
        and _DeclarationRegistrationOptions_to_js :
          _DeclarationRegistrationOptions -> Ojs.t = Obj.magic
        and _DeclarationRequest_HandlerSignature_of_js :
          Ojs.t -> _DeclarationRequest_HandlerSignature =
          fun (x8 : Ojs.t) ->
            RequestHandler.t_3_of_js _DeclarationParams_of_js
              (fun (x10 : Ojs.t) ->
                 or_null_of_js
                   (fun (x11 : Ojs.t) ->
                      or_array_of_js Declaration.t_of_js
                        DeclarationLink.t_of_js x11) x10) Ojs.unit_of_js x8
        and _DeclarationRequest_HandlerSignature_to_js :
          _DeclarationRequest_HandlerSignature -> Ojs.t =
          fun
            (x1 :
              (_DeclarationParams,
                (Declaration.t, DeclarationLink.t) or_array or_null, 
                unit) RequestHandler.t_3)
            ->
            RequestHandler.t_3_to_js _DeclarationParams_to_js
              (fun (x3 : (Declaration.t, DeclarationLink.t) or_array or_null)
                 ->
                 or_null_to_js
                   (fun (x4 : (Declaration.t, DeclarationLink.t) or_array) ->
                      or_array_to_js Declaration.t_to_js
                        DeclarationLink.t_to_js x4) x3) Ojs.unit_to_js x1
      end
  end
open Internal
open AnonymousInterfaces
open Types
module DeclarationClientCapabilities =
  struct
    type t = _DeclarationClientCapabilities
    let rec t_of_js : Ojs.t -> t =
      fun (x16 : Ojs.t) -> _DeclarationClientCapabilities_of_js x16
    and t_to_js : t -> Ojs.t =
      fun (x15 : _DeclarationClientCapabilities) ->
        _DeclarationClientCapabilities_to_js x15
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
module DeclarationOptions =
  struct
    type t = _DeclarationOptions
    let rec t_of_js : Ojs.t -> t =
      fun (x24 : Ojs.t) -> _DeclarationOptions_of_js x24
    and t_to_js : t -> Ojs.t =
      fun (x23 : _DeclarationOptions) -> _DeclarationOptions_to_js x23
    let (cast : t -> WorkDoneProgressOptions.t) =
      fun (x25 : t) -> WorkDoneProgressOptions.t_of_js (t_to_js x25)
  end
module DeclarationRegistrationOptions =
  struct
    type t = _DeclarationRegistrationOptions
    let rec t_of_js : Ojs.t -> t =
      fun (x27 : Ojs.t) -> _DeclarationRegistrationOptions_of_js x27
    and t_to_js : t -> Ojs.t =
      fun (x26 : _DeclarationRegistrationOptions) ->
        _DeclarationRegistrationOptions_to_js x26
    let (cast : t -> _DeclarationOptions) =
      fun (x28 : t) -> _DeclarationOptions_of_js (t_to_js x28)
    let (cast' : t -> TextDocumentRegistrationOptions.t) =
      fun (x29 : t) -> TextDocumentRegistrationOptions.t_of_js (t_to_js x29)
    let (cast'' : t -> StaticRegistrationOptions.t) =
      fun (x30 : t) -> StaticRegistrationOptions.t_of_js (t_to_js x30)
  end
module DeclarationParams =
  struct
    type t = _DeclarationParams
    let rec t_of_js : Ojs.t -> t =
      fun (x32 : Ojs.t) -> _DeclarationParams_of_js x32
    and t_to_js : t -> Ojs.t =
      fun (x31 : _DeclarationParams) -> _DeclarationParams_to_js x31
    let (cast : t -> TextDocumentPositionParams.t) =
      fun (x33 : t) -> TextDocumentPositionParams.t_of_js (t_to_js x33)
    let (cast' : t -> WorkDoneProgressParams.t) =
      fun (x34 : t) -> WorkDoneProgressParams.t_of_js (t_to_js x34)
    let (cast'' : t -> PartialResultParams.t) =
      fun (x35 : t) -> PartialResultParams.t_of_js (t_to_js x35)
  end
module DeclarationRequest =
  struct
    let (method_ : [ `L_s0_textDocument_declaration ]) =
      let x36 =
        Ojs.get_prop_ascii
          (Ojs.get_prop_ascii Ojs.global "DeclarationRequest") "method" in
      match Ojs.string_of_js x36 with
      | "textDocument/declaration" -> `L_s0_textDocument_declaration
      | _ -> assert false
    let (type_ :
      (_DeclarationParams,
        (Location.t, (Location.t, LocationLink.t) union2) or_array or_null,
        (Location.t, LocationLink.t) union2 list, unit,
        _DeclarationRegistrationOptions) ProtocolRequestType.t_5)
      =
      ProtocolRequestType.t_5_of_js _DeclarationParams_of_js
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
        Ojs.unit_of_js _DeclarationRegistrationOptions_of_js
        (Ojs.get_prop_ascii
           (Ojs.get_prop_ascii Ojs.global "DeclarationRequest") "type")
    module HandlerSignature =
      struct
        type t = _DeclarationRequest_HandlerSignature
        let rec t_of_js : Ojs.t -> t =
          fun (x51 : Ojs.t) -> _DeclarationRequest_HandlerSignature_of_js x51
        and t_to_js : t -> Ojs.t =
          fun (x50 : _DeclarationRequest_HandlerSignature) ->
            _DeclarationRequest_HandlerSignature_to_js x50
      end
  end
