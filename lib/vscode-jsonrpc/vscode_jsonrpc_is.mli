[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es5

val boolean : value:any -> bool [@@js.global "boolean"]

val string : value:any -> bool [@@js.global "string"]

val number : value:any -> bool [@@js.global "number"]

val error : value:any -> bool [@@js.global "error"]

val func : value:any -> bool [@@js.global "func"]

val array : value:any -> bool [@@js.global "array"]

val string_array : value:any -> bool [@@js.global "stringArray"]
