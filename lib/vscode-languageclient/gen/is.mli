[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - Promise<T1>
  - Thenable<T1>
 *)
[@@@js.stop]
module type Missing = sig
  module Promise : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module Thenable : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module Promise : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module Thenable : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
  end
]
module Make (M: Missing) : sig
  open M
  module Internal : sig
    module AnonymousInterfaces : sig
      
    end
    module Types : sig
      open AnonymousInterfaces
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  val boolean: value:any -> bool [@@js.global "boolean"]
  val string: value:any -> bool [@@js.global "string"]
  val number: value:any -> bool [@@js.global "number"]
  val error: value:any -> bool [@@js.global "error"]
  val func: value:any -> bool [@@js.global "func"]
  val array: value:any -> bool [@@js.global "array"]
  val stringArray: value:any -> bool [@@js.global "stringArray"]
  val typedArray: value:any -> check:(value:any -> bool) -> bool [@@js.global "typedArray"]
  val thenable: value:any -> bool [@@js.global "thenable"]
  val asPromise: value:'T Promise.t_1 -> 'T Promise.t_1 [@@js.global "asPromise"]
  val asPromise: value:'T Thenable.t_1 -> 'T Promise.t_1 [@@js.global "asPromise"]
  val asPromise: value:'T -> 'T Promise.t_1 [@@js.global "asPromise"]
end
