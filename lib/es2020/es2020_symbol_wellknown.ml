[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es2019
module SymbolConstructor =
  struct
    include struct include SymbolConstructor end
    let (get_match_all : t -> symbol) =
      fun (x1 : t) ->
        symbol_of_js (Ojs.get_prop_ascii (t_to_js x1) "matchAll")
  end
module RegExp = struct include struct include RegExp end end
