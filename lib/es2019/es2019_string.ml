[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es2018
module String =
  struct
    include struct include String end
    let (trim_end : t -> string) =
      fun (x1 : t) -> Ojs.string_of_js (Ojs.call (t_to_js x1) "trimEnd" [||])
    let (trim_start : t -> string) =
      fun (x2 : t) ->
        Ojs.string_of_js (Ojs.call (t_to_js x2) "trimStart" [||])
    let (trim_left : t -> string) =
      fun (x3 : t) ->
        Ojs.string_of_js (Ojs.call (t_to_js x3) "trimLeft" [||])
    let (trim_right : t -> string) =
      fun (x4 : t) ->
        Ojs.string_of_js (Ojs.call (t_to_js x4) "trimRight" [||])
    let (to_ml : t -> string) = fun (x5 : t) -> Ojs.string_of_js (t_to_js x5)
    let (of_ml : string -> t) =
      fun (x6 : string) -> t_of_js (Ojs.string_to_js x6)
  end
