[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es5
module ProtocolCodeAction =
  struct
    type t = Ojs.t
    let rec t_of_js : Ojs.t -> t = fun (x2 : Ojs.t) -> x2
    and t_to_js : t -> Ojs.t = fun (x1 : Ojs.t) -> x1
    let (get_data : t -> unknown or_undefined) =
      fun (x3 : t) ->
        or_undefined_of_js unknown_of_js
          (Ojs.get_prop_ascii (t_to_js x3) "data")
    let (create : title:string -> data:unknown or_undefined -> t) =
      fun ~title:(x5 : string) ->
        fun ~data:(x6 : unknown or_undefined) ->
          t_of_js
            (Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "ProtocolCodeAction")
               [|(Ojs.string_to_js x5);(or_undefined_to_js unknown_to_js x6)|])
    include struct include Vscode.CodeAction end
  end
