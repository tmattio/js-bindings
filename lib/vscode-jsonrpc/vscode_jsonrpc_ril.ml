[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es5
module Internal =
  struct
    module AnonymousInterfaces =
      struct
        type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
        let rec anonymous_interface_0_of_js : Ojs.t -> anonymous_interface_0
          = Obj.magic
        and anonymous_interface_0_to_js : anonymous_interface_0 -> Ojs.t =
          Obj.magic
      end
    module Types =
      struct
        open AnonymousInterfaces
        type _RIL = [ `RIL ] intf
        let rec _RIL_of_js : Ojs.t -> _RIL = Obj.magic
        and _RIL_to_js : _RIL -> Ojs.t = Obj.magic
      end
  end
open Internal
open AnonymousInterfaces
open Types
module AnonymousInterface0 =
  struct
    type t = anonymous_interface_0
    let rec t_of_js : Ojs.t -> t =
      fun (x2 : Ojs.t) -> anonymous_interface_0_of_js x2
    and t_to_js : t -> Ojs.t =
      fun (x1 : anonymous_interface_0) -> anonymous_interface_0_to_js x1
    let (asReadableStream :
      t -> stream:NodeJS.ReadableStream.t -> RAL.ReadableStream.t) =
      fun (x4 : t) ->
        fun ~stream:(x3 : NodeJS.ReadableStream.t) ->
          RAL.ReadableStream.t_of_js
            (Ojs.call (t_to_js x4) "asReadableStream"
               [|(NodeJS.ReadableStream.t_to_js x3)|])
    let (asWritableStream :
      t -> stream:NodeJS.WritableStream.t -> RAL.WritableStream.t) =
      fun (x6 : t) ->
        fun ~stream:(x5 : NodeJS.WritableStream.t) ->
          RAL.WritableStream.t_of_js
            (Ojs.call (t_to_js x6) "asWritableStream"
               [|(NodeJS.WritableStream.t_to_js x5)|])
  end
module RIL =
  struct
    type t = _RIL
    let rec t_of_js : Ojs.t -> t = fun (x8 : Ojs.t) -> _RIL_of_js x8
    and t_to_js : t -> Ojs.t = fun (x7 : _RIL) -> _RIL_to_js x7
    let (get_stream : t -> anonymous_interface_0) =
      fun (x9 : t) ->
        anonymous_interface_0_of_js
          (Ojs.get_prop_ascii (t_to_js x9) "stream")
    let (cast : t -> RAL.t) = fun (x10 : t) -> RAL.t_of_js (t_to_js x10)
  end
let (rIL : unit -> _RIL) =
  fun () -> _RIL_of_js (Ojs.call Ojs.global "RIL" [||])
module RIL =
  struct
    let (install : unit -> unit) =
      fun () ->
        ignore
          (Ojs.call (Ojs.get_prop_ascii Ojs.global "RIL") "install" [||])
  end