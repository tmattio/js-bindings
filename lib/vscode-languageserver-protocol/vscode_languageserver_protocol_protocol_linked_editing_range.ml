[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es5
open Vscode_jsonrpc
open Vscode_languageserver_types
open Vscode_languageserver_protocol_messages
open Vscode_languageserver_protocol_protocol
module LinkedEditingRangeClientCapabilities =
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
  end
module LinkedEditingRangeParams =
  struct
    type t = Ojs.t
    let rec t_of_js : Ojs.t -> t = fun (x7 : Ojs.t) -> x7
    and t_to_js : t -> Ojs.t = fun (x6 : Ojs.t) -> x6
    let (cast : t -> TextDocumentPositionParams.t) =
      fun (x8 : t) -> TextDocumentPositionParams.t_of_js (t_to_js x8)
    let (cast' : t -> WorkDoneProgressParams.t) =
      fun (x9 : t) -> WorkDoneProgressParams.t_of_js (t_to_js x9)
  end
module LinkedEditingRangeOptions =
  struct
    type t = Ojs.t
    let rec t_of_js : Ojs.t -> t = fun (x11 : Ojs.t) -> x11
    and t_to_js : t -> Ojs.t = fun (x10 : Ojs.t) -> x10
    let (cast : t -> WorkDoneProgressOptions.t) =
      fun (x12 : t) -> WorkDoneProgressOptions.t_of_js (t_to_js x12)
  end
module LinkedEditingRangeRegistrationOptions =
  struct
    type t = Ojs.t
    let rec t_of_js : Ojs.t -> t = fun (x14 : Ojs.t) -> x14
    and t_to_js : t -> Ojs.t = fun (x13 : Ojs.t) -> x13
    let (cast : t -> TextDocumentRegistrationOptions.t) =
      fun (x15 : t) -> TextDocumentRegistrationOptions.t_of_js (t_to_js x15)
    let (cast' : t -> LinkedEditingRangeOptions.t) =
      fun (x16 : t) -> LinkedEditingRangeOptions.t_of_js (t_to_js x16)
    let (cast'' : t -> StaticRegistrationOptions.t) =
      fun (x17 : t) -> StaticRegistrationOptions.t_of_js (t_to_js x17)
  end
module LinkedEditingRanges =
  struct
    type t = Ojs.t
    let rec t_of_js : Ojs.t -> t = fun (x19 : Ojs.t) -> x19
    and t_to_js : t -> Ojs.t = fun (x18 : Ojs.t) -> x18
    let (get_ranges : t -> Range.t list) =
      fun (x20 : t) ->
        Ojs.list_of_js Range.t_of_js
          (Ojs.get_prop_ascii (t_to_js x20) "ranges")
    let (set_ranges : t -> Range.t list -> unit) =
      fun (x22 : t) ->
        fun (x23 : Range.t list) ->
          Ojs.set_prop_ascii (t_to_js x22) "ranges"
            (Ojs.list_to_js Range.t_to_js x23)
    let (get_word_pattern : t -> string) =
      fun (x25 : t) ->
        Ojs.string_of_js (Ojs.get_prop_ascii (t_to_js x25) "wordPattern")
    let (set_word_pattern : t -> string -> unit) =
      fun (x26 : t) ->
        fun (x27 : string) ->
          Ojs.set_prop_ascii (t_to_js x26) "wordPattern"
            (Ojs.string_to_js x27)
  end
module LinkedEditingRangeRequest =
  struct
    let (method_ : [ `L_s0_textDocument_linkedEditingRange ]) =
      let x28 =
        Ojs.get_prop_ascii
          (Ojs.get_prop_ascii Ojs.global "LinkedEditingRangeRequest")
          "method" in
      match Ojs.string_of_js x28 with
      | "textDocument/linkedEditingRange" ->
          `L_s0_textDocument_linkedEditingRange
      | _ -> assert false
    let (type_ :
      (LinkedEditingRangeParams.t, LinkedEditingRanges.t or_null, unit, 
        any, LinkedEditingRangeRegistrationOptions.t) ProtocolRequestType.t)
      =
      ProtocolRequestType.t_of_js LinkedEditingRangeParams.t_of_js
        (fun (x30 : Ojs.t) -> or_null_of_js LinkedEditingRanges.t_of_js x30)
        Ojs.unit_of_js any_of_js
        LinkedEditingRangeRegistrationOptions.t_of_js
        (Ojs.get_prop_ascii
           (Ojs.get_prop_ascii Ojs.global "LinkedEditingRangeRequest") "type")
    module HandlerSignature =
      struct
        type t =
          (LinkedEditingRangeParams.t, LinkedEditingRanges.t or_null, 
            unit) RequestHandler.t
        let rec t_of_js : Ojs.t -> t =
          fun (x40 : Ojs.t) ->
            RequestHandler.t_of_js LinkedEditingRangeParams.t_of_js
              (fun (x42 : Ojs.t) ->
                 or_null_of_js LinkedEditingRanges.t_of_js x42)
              Ojs.unit_of_js x40
        and t_to_js : t -> Ojs.t =
          fun
            (x35 :
              (LinkedEditingRangeParams.t, LinkedEditingRanges.t or_null,
                unit) RequestHandler.t)
            ->
            RequestHandler.t_to_js LinkedEditingRangeParams.t_to_js
              (fun (x37 : LinkedEditingRanges.t or_null) ->
                 or_null_to_js LinkedEditingRanges.t_to_js x37)
              Ojs.unit_to_js x35
      end
  end
