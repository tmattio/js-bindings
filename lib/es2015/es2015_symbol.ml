[@@@ocaml.warning "-7-32-39"]

[@@@ocaml.warning "-7-11-32-33-39"]

open Es5

module Internal = struct
  module AnonymousInterfaces = struct end

  module Types = struct
    open AnonymousInterfaces

    type _SymbolConstructor = [ `SymbolConstructor ] intf

    and _Symbol = symbol

    let rec _SymbolConstructor_of_js : Ojs.t -> _SymbolConstructor = Obj.magic

    and _SymbolConstructor_to_js : _SymbolConstructor -> Ojs.t = Obj.magic

    and _Symbol_of_js : Ojs.t -> _Symbol = fun (x2 : Ojs.t) -> symbol_of_js x2

    and _Symbol_to_js : _Symbol -> Ojs.t = fun (x1 : symbol) -> symbol_to_js x1
  end
end

open Internal
open AnonymousInterfaces
open Types

module Symbol = struct
  include Symbol

  let (for_ : key:string -> symbol) =
   fun ~key:(x5 : string) ->
    symbol_of_js
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Symbol")
         "for"
         [| Ojs.string_to_js x5 |])

  let (keyFor : sym:symbol -> string or_undefined) =
   fun ~sym:(x6 : symbol) ->
    or_undefined_of_js
      Ojs.string_of_js
      (Ojs.call
         (Ojs.get_prop_ascii Ojs.global "Symbol")
         "keyFor"
         [| symbol_to_js x6 |])
end

module SymbolConstructor = struct
  type t = _SymbolConstructor

  let rec t_of_js : Ojs.t -> t = fun (x4 : Ojs.t) -> _SymbolConstructor_of_js x4

  and t_to_js : t -> Ojs.t =
   fun (x3 : _SymbolConstructor) -> _SymbolConstructor_to_js x3

  type t_0 = t

  let rec t_0_of_js : Ojs.t -> t_0 = fun (x6 : Ojs.t) -> t_of_js x6

  and t_0_to_js : t_0 -> Ojs.t = fun (x5 : t) -> t_to_js x5

  let (get_prototype : t -> _Symbol) =
   fun (x7 : t) -> _Symbol_of_js (Ojs.get_prop_ascii (t_to_js x7) "prototype")

  let (apply : t -> ?description:string or_number -> unit -> symbol) =
   fun (x12 : t) ?description:(x8 : string or_number option) () ->
    symbol_of_js
      (Ojs.call
         (t_to_js x12)
         "apply"
         [| Ojs.null
          ; (let x9 =
               Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||]
             in
             (match x8 with
             | Some x10 ->
               ignore
                 (Ojs.call x9 "push" [| or_number_to_js Ojs.string_to_js x10 |])
             | None ->
               ());
             x9)
         |])

  let (for_ : t -> key:string -> symbol) =
   fun (x14 : t) ~key:(x13 : string) ->
    symbol_of_js (Ojs.call (t_to_js x14) "for" [| Ojs.string_to_js x13 |])

  let (keyFor : t -> sym:symbol -> string or_undefined) =
   fun (x16 : t) ~sym:(x15 : symbol) ->
    or_undefined_of_js
      Ojs.string_of_js
      (Ojs.call (t_to_js x16) "keyFor" [| symbol_to_js x15 |])
end

let (symbol : _SymbolConstructor) =
  _SymbolConstructor_of_js (Ojs.get_prop_ascii Ojs.global "Symbol")
