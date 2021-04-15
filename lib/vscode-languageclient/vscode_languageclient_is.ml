[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es5
module Internal =
  struct
    module AnonymousInterfaces = struct  end
    module Types = struct open AnonymousInterfaces end
  end
open Internal
open AnonymousInterfaces
open Types
let (boolean : value:any -> bool) =
  fun ~value:(x1 : any) ->
    Ojs.bool_of_js (Ojs.call Ojs.global "boolean" [|(any_to_js x1)|])
let (string : value:any -> bool) =
  fun ~value:(x2 : any) ->
    Ojs.bool_of_js (Ojs.call Ojs.global "string" [|(any_to_js x2)|])
let (number : value:any -> bool) =
  fun ~value:(x3 : any) ->
    Ojs.bool_of_js (Ojs.call Ojs.global "number" [|(any_to_js x3)|])
let (error : value:any -> bool) =
  fun ~value:(x4 : any) ->
    Ojs.bool_of_js (Ojs.call Ojs.global "error" [|(any_to_js x4)|])
let (func : value:any -> bool) =
  fun ~value:(x5 : any) ->
    Ojs.bool_of_js (Ojs.call Ojs.global "func" [|(any_to_js x5)|])
let (array : value:any -> bool) =
  fun ~value:(x6 : any) ->
    Ojs.bool_of_js (Ojs.call Ojs.global "array" [|(any_to_js x6)|])
let (stringArray : value:any -> bool) =
  fun ~value:(x7 : any) ->
    Ojs.bool_of_js (Ojs.call Ojs.global "stringArray" [|(any_to_js x7)|])
let (typedArray : value:any -> check:(value:any -> bool) -> bool) =
  fun ~value:(x8 : any) ->
    fun ~check:(x9 : value:any -> bool) ->
      Ojs.bool_of_js
        (Ojs.call Ojs.global "typedArray"
           [|(any_to_js x8);(Ojs.fun_to_js 1
                               (fun (x10 : Ojs.t) ->
                                  Ojs.bool_to_js (x9 ~value:(any_of_js x10))))|])
let (thenable : value:any -> bool) =
  fun ~value:(x11 : any) ->
    Ojs.bool_of_js (Ojs.call Ojs.global "thenable" [|(any_to_js x11)|])
let (asPromise : value:'T Promise.t -> 'T Promise.t) =
  fun ~value:(x12 : 'T Promise.t) ->
    Promise.t_of_js Obj.magic
      (Ojs.call Ojs.global "asPromise" [|(Promise.t_to_js Obj.magic x12)|])
let (asPromise : value:'T Promise.t -> 'T Promise.t) =
  fun ~value:(x15 : 'T Promise.t) ->
    Promise.t_of_js Obj.magic
      (Ojs.call Ojs.global "asPromise" [|(Promise.t_to_js Obj.magic x15)|])
let (asPromise : value:'T -> 'T Promise.t) =
  fun ~value:(x18 : 'T) ->
    Promise.t_of_js Obj.magic
      (Ojs.call Ojs.global "asPromise" [|(Obj.magic x18)|])
