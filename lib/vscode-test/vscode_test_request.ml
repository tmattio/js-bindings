[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es5
let (get_stream : api:string -> Node.Http.IncomingMessage.t Promise.t) =
  fun ~api:(x1 : string) ->
    Promise.t_of_js Node.Http.IncomingMessage.t_of_js
      (Ojs.call Ojs.global "getStream" [|(Ojs.string_to_js x1)|])
let (get_json : api:string -> 'T Promise.t) =
  fun ~api:(x3 : string) ->
    Promise.t_of_js Obj.magic
      (Ojs.call Ojs.global "getJSON" [|(Ojs.string_to_js x3)|])
