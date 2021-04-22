[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es2020
module Internal =
  struct module Types = struct open AnonymousInterfaces end end
module Punycode =
  struct
    let (decode : string:string -> string) =
      fun ~string:(x1 : string) ->
        Ojs.string_of_js
          (Ojs.call Import.punycode "decode" [|(Ojs.string_to_js x1)|])
    let (encode : string:string -> string) =
      fun ~string:(x2 : string) ->
        Ojs.string_of_js
          (Ojs.call Import.punycode "encode" [|(Ojs.string_to_js x2)|])
    let (toUnicode : domain:string -> string) =
      fun ~domain:(x3 : string) ->
        Ojs.string_of_js
          (Ojs.call Import.punycode "toUnicode" [|(Ojs.string_to_js x3)|])
    let (toASCII : domain:string -> string) =
      fun ~domain:(x4 : string) ->
        Ojs.string_of_js
          (Ojs.call Import.punycode "toASCII" [|(Ojs.string_to_js x4)|])
    let (ucs2 : punycode_ucs2) =
      punycode_ucs2_of_js (Ojs.get_prop_ascii Import.punycode "ucs2")
    module Ucs2 =
      struct
        type t = punycode_ucs2
        let rec t_of_js : Ojs.t -> t =
          fun (x6 : Ojs.t) -> punycode_ucs2_of_js x6
        and t_to_js : t -> Ojs.t =
          fun (x5 : punycode_ucs2) -> punycode_ucs2_to_js x5
        let (decode : t -> string:string -> int list) =
          fun (x8 : t) ->
            fun ~string:(x7 : string) ->
              Ojs.list_of_js Ojs.int_of_js
                (Ojs.call (t_to_js x8) "decode" [|(Ojs.string_to_js x7)|])
        let (encode : t -> codePoints:int list -> string) =
          fun (x12 : t) ->
            fun ~codePoints:(x10 : int list) ->
              Ojs.string_of_js
                (Ojs.call (t_to_js x12) "encode"
                   [|(Ojs.list_to_js Ojs.int_to_js x10)|])
      end
    let (version : string) =
      Ojs.string_of_js (Ojs.get_prop_ascii Import.punycode "version")
  end
