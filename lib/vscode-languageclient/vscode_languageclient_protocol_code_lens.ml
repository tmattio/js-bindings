[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es5
module ProtocolCodeLens =
  struct
    type t = Ojs.t
    let rec t_of_js : Ojs.t -> t = fun (x2 : Ojs.t) -> x2
    and t_to_js : t -> Ojs.t = fun (x1 : Ojs.t) -> x1
    let (get_data : t -> any) =
      fun (x3 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x3) "data")
    let (set_data : t -> any -> unit) =
      fun (x4 : t) ->
        fun (x5 : any) ->
          Ojs.set_prop_ascii (t_to_js x4) "data" (any_to_js x5)
    let (create : range:Code.Range.t -> t) =
      fun ~range:(x6 : Code.Range.t) ->
        t_of_js
          (Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "ProtocolCodeLens")
             [|(Code.Range.t_to_js x6)|])
    include struct include Code.CodeLens end
  end
