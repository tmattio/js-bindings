[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es5
open Vscode_jsonrpc
open Vscode_languageserver_types
open Vscode_languageserver_protocol_messages
open Vscode_languageserver_protocol_protocol
module ImplementationClientCapabilities =
  struct
    type t = Ojs.t
    let rec t_of_js : Ojs.t -> t = fun (x2 : Ojs.t) -> x2
    and t_to_js : t -> Ojs.t = fun (x1 : Ojs.t) -> x1
    let (get_dynamic_registration : t -> bool) =
      fun (x3 : t) ->
        Ojs.bool_of_js
          (Ojs.get_prop_ascii (t_to_js x3) "dynamicRegistration")
    let (set_dynamic_registration : t -> bool -> unit) =
      fun (x4 : t) ->
        fun (x5 : bool) ->
          Ojs.set_prop_ascii (t_to_js x4) "dynamicRegistration"
            (Ojs.bool_to_js x5)
    let (get_link_support : t -> bool) =
      fun (x6 : t) ->
        Ojs.bool_of_js (Ojs.get_prop_ascii (t_to_js x6) "linkSupport")
    let (set_link_support : t -> bool -> unit) =
      fun (x7 : t) ->
        fun (x8 : bool) ->
          Ojs.set_prop_ascii (t_to_js x7) "linkSupport" (Ojs.bool_to_js x8)
  end
module ImplementationOptions =
  struct
    type t = Ojs.t
    let rec t_of_js : Ojs.t -> t = fun (x10 : Ojs.t) -> x10
    and t_to_js : t -> Ojs.t = fun (x9 : Ojs.t) -> x9
    let (cast : t -> WorkDoneProgressOptions.t) =
      fun (x11 : t) -> WorkDoneProgressOptions.t_of_js (t_to_js x11)
  end
module ImplementationRegistrationOptions =
  struct
    type t = Ojs.t
    let rec t_of_js : Ojs.t -> t = fun (x13 : Ojs.t) -> x13
    and t_to_js : t -> Ojs.t = fun (x12 : Ojs.t) -> x12
    let (cast : t -> TextDocumentRegistrationOptions.t) =
      fun (x14 : t) -> TextDocumentRegistrationOptions.t_of_js (t_to_js x14)
    let (cast' : t -> ImplementationOptions.t) =
      fun (x15 : t) -> ImplementationOptions.t_of_js (t_to_js x15)
    let (cast'' : t -> StaticRegistrationOptions.t) =
      fun (x16 : t) -> StaticRegistrationOptions.t_of_js (t_to_js x16)
  end
module ImplementationParams =
  struct
    type t = Ojs.t
    let rec t_of_js : Ojs.t -> t = fun (x18 : Ojs.t) -> x18
    and t_to_js : t -> Ojs.t = fun (x17 : Ojs.t) -> x17
    let (cast : t -> TextDocumentPositionParams.t) =
      fun (x19 : t) -> TextDocumentPositionParams.t_of_js (t_to_js x19)
    let (cast' : t -> WorkDoneProgressParams.t) =
      fun (x20 : t) -> WorkDoneProgressParams.t_of_js (t_to_js x20)
    let (cast'' : t -> PartialResultParams.t) =
      fun (x21 : t) -> PartialResultParams.t_of_js (t_to_js x21)
  end
module ImplementationRequest =
  struct
    let (method_ : [ `L_s0_textDocument_implementation ]) =
      let x22 =
        Ojs.get_prop_ascii
          (Ojs.get_prop_ascii Ojs.global "ImplementationRequest") "method" in
      match Ojs.string_of_js x22 with
      | "textDocument/implementation" -> `L_s0_textDocument_implementation
      | _ -> assert false
    let (type_ :
      (ImplementationParams.t,
        (Location.t, (Location.t, LocationLink.t) union2) or_array or_null,
        (Location.t, LocationLink.t) union2 list, unit,
        ImplementationRegistrationOptions.t) ProtocolRequestType.t)
      =
      ProtocolRequestType.t_of_js ImplementationParams.t_of_js
        (fun (x24 : Ojs.t) ->
           or_null_of_js
             (fun (x25 : Ojs.t) ->
                or_array_of_js Location.t_of_js
                  (fun (x27 : Ojs.t) ->
                     union2_of_js Location.t_of_js LocationLink.t_of_js x27)
                  x25) x24)
        (fun (x30 : Ojs.t) ->
           Ojs.list_of_js
             (fun (x31 : Ojs.t) ->
                union2_of_js Location.t_of_js LocationLink.t_of_js x31) x30)
        Ojs.unit_of_js ImplementationRegistrationOptions.t_of_js
        (Ojs.get_prop_ascii
           (Ojs.get_prop_ascii Ojs.global "ImplementationRequest") "type")
    module HandlerSignature =
      struct
        type t =
          (ImplementationParams.t,
            (Definition.t, DefinitionLink.t) or_array or_null, unit)
            RequestHandler.t
        let rec t_of_js : Ojs.t -> t =
          fun (x43 : Ojs.t) ->
            RequestHandler.t_of_js ImplementationParams.t_of_js
              (fun (x45 : Ojs.t) ->
                 or_null_of_js
                   (fun (x46 : Ojs.t) ->
                      or_array_of_js Definition.t_of_js
                        DefinitionLink.t_of_js x46) x45) Ojs.unit_of_js x43
        and t_to_js : t -> Ojs.t =
          fun
            (x36 :
              (ImplementationParams.t,
                (Definition.t, DefinitionLink.t) or_array or_null, unit)
                RequestHandler.t)
            ->
            RequestHandler.t_to_js ImplementationParams.t_to_js
              (fun (x38 : (Definition.t, DefinitionLink.t) or_array or_null)
                 ->
                 or_null_to_js
                   (fun (x39 : (Definition.t, DefinitionLink.t) or_array) ->
                      or_array_to_js Definition.t_to_js
                        DefinitionLink.t_to_js x39) x38) Ojs.unit_to_js x36
      end
  end
