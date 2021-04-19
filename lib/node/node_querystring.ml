[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es2020
open Node_globals
module Internal =
  struct
    module AnonymousInterfaces = struct  end
    module Types =
      struct
        open AnonymousInterfaces
        type querystring_ParseOptions = [ `Querystring_ParseOptions ] intf
        and querystring_ParsedUrlQuery = [ `Querystring_ParsedUrlQuery ] intf
        and querystring_ParsedUrlQueryInput =
          [ `Querystring_ParsedUrlQueryInput ] intf
        and querystring_StringifyOptions =
          [ `Querystring_StringifyOptions ] intf
        let rec querystring_ParseOptions_of_js :
          Ojs.t -> querystring_ParseOptions = Obj.magic
        and querystring_ParseOptions_to_js :
          querystring_ParseOptions -> Ojs.t = Obj.magic
        and querystring_ParsedUrlQuery_of_js :
          Ojs.t -> querystring_ParsedUrlQuery = Obj.magic
        and querystring_ParsedUrlQuery_to_js :
          querystring_ParsedUrlQuery -> Ojs.t = Obj.magic
        and querystring_ParsedUrlQueryInput_of_js :
          Ojs.t -> querystring_ParsedUrlQueryInput = Obj.magic
        and querystring_ParsedUrlQueryInput_to_js :
          querystring_ParsedUrlQueryInput -> Ojs.t = Obj.magic
        and querystring_StringifyOptions_of_js :
          Ojs.t -> querystring_StringifyOptions = Obj.magic
        and querystring_StringifyOptions_to_js :
          querystring_StringifyOptions -> Ojs.t = Obj.magic
      end
  end
open Internal
open AnonymousInterfaces
open Types
module Querystring =
  struct
    module StringifyOptions =
      struct
        type t = querystring_StringifyOptions
        let rec t_of_js : Ojs.t -> t =
          fun (x2 : Ojs.t) -> querystring_StringifyOptions_of_js x2
        and t_to_js : t -> Ojs.t =
          fun (x1 : querystring_StringifyOptions) ->
            querystring_StringifyOptions_to_js x1
        let (encodeURIComponent : t -> str:string -> string) =
          fun (x4 : t) ->
            fun ~str:(x3 : string) ->
              Ojs.string_of_js
                (Ojs.call (t_to_js x4) "encodeURIComponent"
                   [|(Ojs.string_to_js x3)|])
      end
    module ParseOptions =
      struct
        type t = querystring_ParseOptions
        let rec t_of_js : Ojs.t -> t =
          fun (x6 : Ojs.t) -> querystring_ParseOptions_of_js x6
        and t_to_js : t -> Ojs.t =
          fun (x5 : querystring_ParseOptions) ->
            querystring_ParseOptions_to_js x5
        let (get_maxKeys : t -> int) =
          fun (x7 : t) ->
            Ojs.int_of_js (Ojs.get_prop_ascii (t_to_js x7) "maxKeys")
        let (set_maxKeys : t -> int -> unit) =
          fun (x8 : t) ->
            fun (x9 : int) ->
              Ojs.set_prop_ascii (t_to_js x8) "maxKeys" (Ojs.int_to_js x9)
        let (decodeURIComponent : t -> str:string -> string) =
          fun (x11 : t) ->
            fun ~str:(x10 : string) ->
              Ojs.string_of_js
                (Ojs.call (t_to_js x11) "decodeURIComponent"
                   [|(Ojs.string_to_js x10)|])
      end
    module ParsedUrlQuery =
      struct
        type t = querystring_ParsedUrlQuery
        let rec t_of_js : Ojs.t -> t =
          fun (x13 : Ojs.t) -> querystring_ParsedUrlQuery_of_js x13
        and t_to_js : t -> Ojs.t =
          fun (x12 : querystring_ParsedUrlQuery) ->
            querystring_ParsedUrlQuery_to_js x12
        let (cast : t -> string list or_string Dict.t) =
          fun (x14 : t) ->
            Dict.t_of_js
              (fun (x15 : Ojs.t) ->
                 or_string_of_js
                   (fun (x16 : Ojs.t) -> Ojs.list_of_js Ojs.string_of_js x16)
                   x15) (t_to_js x14)
      end
    module ParsedUrlQueryInput =
      struct
        type t = querystring_ParsedUrlQueryInput
        let rec t_of_js : Ojs.t -> t =
          fun (x19 : Ojs.t) -> querystring_ParsedUrlQueryInput_of_js x19
        and t_to_js : t -> Ojs.t =
          fun (x18 : querystring_ParsedUrlQueryInput) ->
            querystring_ParsedUrlQueryInput_to_js x18
        let (cast :
          t ->
            (string list, bool list, int list) union3 or_boolean or_string
              or_number or_null Dict.t)
          =
          fun (x20 : t) ->
            Dict.t_of_js
              (fun (x21 : Ojs.t) ->
                 or_null_of_js
                   (fun (x22 : Ojs.t) ->
                      or_number_of_js
                        (fun (x23 : Ojs.t) ->
                           or_string_of_js
                             (fun (x24 : Ojs.t) ->
                                or_boolean_of_js
                                  (fun (x25 : Ojs.t) ->
                                     union3_of_js
                                       (fun (x26 : Ojs.t) ->
                                          Ojs.list_of_js Ojs.string_of_js x26)
                                       (fun (x28 : Ojs.t) ->
                                          Ojs.list_of_js Ojs.bool_of_js x28)
                                       (fun (x30 : Ojs.t) ->
                                          Ojs.list_of_js Ojs.int_of_js x30)
                                       x25) x24) x23) x22) x21) (t_to_js x20)
      end
    let (stringify :
      ?obj:querystring_ParsedUrlQueryInput ->
        ?sep:string ->
          ?eq:string ->
            ?options:querystring_StringifyOptions -> unit -> string)
      =
      fun ?obj:(x32 : querystring_ParsedUrlQueryInput option) ->
        fun ?sep:(x33 : string option) ->
          fun ?eq:(x34 : string option) ->
            fun ?options:(x35 : querystring_StringifyOptions option) ->
              fun () ->
                Ojs.string_of_js
                  (let x41 = Import.querystring in
                   Ojs.call (Ojs.get_prop_ascii x41 "stringify") "apply"
                     [|x41;((let x36 =
                               Ojs.new_obj
                                 (Ojs.get_prop_ascii Ojs.global "Array") 
                                 [||] in
                             (match x32 with
                              | Some x40 ->
                                  ignore
                                    (Ojs.call x36 "push"
                                       [|(querystring_ParsedUrlQueryInput_to_js
                                            x40)|])
                              | None -> ());
                             (match x33 with
                              | Some x39 ->
                                  ignore
                                    (Ojs.call x36 "push"
                                       [|(Ojs.string_to_js x39)|])
                              | None -> ());
                             (match x34 with
                              | Some x38 ->
                                  ignore
                                    (Ojs.call x36 "push"
                                       [|(Ojs.string_to_js x38)|])
                              | None -> ());
                             (match x35 with
                              | Some x37 ->
                                  ignore
                                    (Ojs.call x36 "push"
                                       [|(querystring_StringifyOptions_to_js
                                            x37)|])
                              | None -> ());
                             x36))|])
    let (parse :
      str:string ->
        ?sep:string ->
          ?eq:string ->
            ?options:querystring_ParseOptions ->
              unit -> querystring_ParsedUrlQuery)
      =
      fun ~str:(x42 : string) ->
        fun ?sep:(x43 : string option) ->
          fun ?eq:(x44 : string option) ->
            fun ?options:(x45 : querystring_ParseOptions option) ->
              fun () ->
                querystring_ParsedUrlQuery_of_js
                  (let x50 = Import.querystring in
                   Ojs.call (Ojs.get_prop_ascii x50 "parse") "apply"
                     [|x50;((let x46 =
                               Ojs.new_obj
                                 (Ojs.get_prop_ascii Ojs.global "Array") 
                                 [||] in
                             ignore
                               (Ojs.call x46 "push"
                                  [|(Ojs.string_to_js x42)|]);
                             (match x43 with
                              | Some x49 ->
                                  ignore
                                    (Ojs.call x46 "push"
                                       [|(Ojs.string_to_js x49)|])
                              | None -> ());
                             (match x44 with
                              | Some x48 ->
                                  ignore
                                    (Ojs.call x46 "push"
                                       [|(Ojs.string_to_js x48)|])
                              | None -> ());
                             (match x45 with
                              | Some x47 ->
                                  ignore
                                    (Ojs.call x46 "push"
                                       [|(querystring_ParseOptions_to_js x47)|])
                              | None -> ());
                             x46))|])
    let (encode :
      ?obj:querystring_ParsedUrlQueryInput ->
        ?sep:string ->
          ?eq:string ->
            ?options:querystring_StringifyOptions -> unit -> string)
      =
      fun ?obj:(x51 : querystring_ParsedUrlQueryInput option) ->
        fun ?sep:(x52 : string option) ->
          fun ?eq:(x53 : string option) ->
            fun ?options:(x54 : querystring_StringifyOptions option) ->
              fun () ->
                Ojs.string_of_js
                  (let x60 = Import.querystring in
                   Ojs.call (Ojs.get_prop_ascii x60 "encode") "apply"
                     [|x60;((let x55 =
                               Ojs.new_obj
                                 (Ojs.get_prop_ascii Ojs.global "Array") 
                                 [||] in
                             (match x51 with
                              | Some x59 ->
                                  ignore
                                    (Ojs.call x55 "push"
                                       [|(querystring_ParsedUrlQueryInput_to_js
                                            x59)|])
                              | None -> ());
                             (match x52 with
                              | Some x58 ->
                                  ignore
                                    (Ojs.call x55 "push"
                                       [|(Ojs.string_to_js x58)|])
                              | None -> ());
                             (match x53 with
                              | Some x57 ->
                                  ignore
                                    (Ojs.call x55 "push"
                                       [|(Ojs.string_to_js x57)|])
                              | None -> ());
                             (match x54 with
                              | Some x56 ->
                                  ignore
                                    (Ojs.call x55 "push"
                                       [|(querystring_StringifyOptions_to_js
                                            x56)|])
                              | None -> ());
                             x55))|])
    let (decode :
      str:string ->
        ?sep:string ->
          ?eq:string ->
            ?options:querystring_ParseOptions ->
              unit -> querystring_ParsedUrlQuery)
      =
      fun ~str:(x61 : string) ->
        fun ?sep:(x62 : string option) ->
          fun ?eq:(x63 : string option) ->
            fun ?options:(x64 : querystring_ParseOptions option) ->
              fun () ->
                querystring_ParsedUrlQuery_of_js
                  (let x69 = Import.querystring in
                   Ojs.call (Ojs.get_prop_ascii x69 "decode") "apply"
                     [|x69;((let x65 =
                               Ojs.new_obj
                                 (Ojs.get_prop_ascii Ojs.global "Array") 
                                 [||] in
                             ignore
                               (Ojs.call x65 "push"
                                  [|(Ojs.string_to_js x61)|]);
                             (match x62 with
                              | Some x68 ->
                                  ignore
                                    (Ojs.call x65 "push"
                                       [|(Ojs.string_to_js x68)|])
                              | None -> ());
                             (match x63 with
                              | Some x67 ->
                                  ignore
                                    (Ojs.call x65 "push"
                                       [|(Ojs.string_to_js x67)|])
                              | None -> ());
                             (match x64 with
                              | Some x66 ->
                                  ignore
                                    (Ojs.call x65 "push"
                                       [|(querystring_ParseOptions_to_js x66)|])
                              | None -> ());
                             x65))|])
    let (escape : str:string -> string) =
      fun ~str:(x70 : string) ->
        Ojs.string_of_js
          (Ojs.call Import.querystring "escape" [|(Ojs.string_to_js x70)|])
    let (unescape : str:string -> string) =
      fun ~str:(x71 : string) ->
        Ojs.string_of_js
          (Ojs.call Import.querystring "unescape" [|(Ojs.string_to_js x71)|])
  end
