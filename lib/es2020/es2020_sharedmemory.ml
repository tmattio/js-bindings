[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es2019
open Es2020_bigint
module Atomics =
  struct
    include struct include Atomics end
    let (add :
      t ->
        typedArray:(BigInt64Array.t, BigUint64Array.t) union2 ->
          index:int -> value:bigint -> bigint)
      =
      fun (x6 : t) ->
        fun ~typedArray:(x1 : (BigInt64Array.t, BigUint64Array.t) union2) ->
          fun ~index:(x4 : int) ->
            fun ~value:(x5 : bigint) ->
              bigint_of_js
                (Ojs.call (t_to_js x6) "add"
                   [|(union2_to_js BigInt64Array.t_to_js
                        BigUint64Array.t_to_js x1);(Ojs.int_to_js x4);(
                     bigint_to_js x5)|])
    let (and_ :
      t ->
        typedArray:(BigInt64Array.t, BigUint64Array.t) union2 ->
          index:int -> value:bigint -> bigint)
      =
      fun (x12 : t) ->
        fun ~typedArray:(x7 : (BigInt64Array.t, BigUint64Array.t) union2) ->
          fun ~index:(x10 : int) ->
            fun ~value:(x11 : bigint) ->
              bigint_of_js
                (Ojs.call (t_to_js x12) "and"
                   [|(union2_to_js BigInt64Array.t_to_js
                        BigUint64Array.t_to_js x7);(Ojs.int_to_js x10);(
                     bigint_to_js x11)|])
    let (compareExchange :
      t ->
        typedArray:(BigInt64Array.t, BigUint64Array.t) union2 ->
          index:int ->
            expectedValue:bigint -> replacementValue:bigint -> bigint)
      =
      fun (x19 : t) ->
        fun ~typedArray:(x13 : (BigInt64Array.t, BigUint64Array.t) union2) ->
          fun ~index:(x16 : int) ->
            fun ~expectedValue:(x17 : bigint) ->
              fun ~replacementValue:(x18 : bigint) ->
                bigint_of_js
                  (Ojs.call (t_to_js x19) "compareExchange"
                     [|(union2_to_js BigInt64Array.t_to_js
                          BigUint64Array.t_to_js x13);(Ojs.int_to_js x16);(
                       bigint_to_js x17);(bigint_to_js x18)|])
    let (exchange :
      t ->
        typedArray:(BigInt64Array.t, BigUint64Array.t) union2 ->
          index:int -> value:bigint -> bigint)
      =
      fun (x25 : t) ->
        fun ~typedArray:(x20 : (BigInt64Array.t, BigUint64Array.t) union2) ->
          fun ~index:(x23 : int) ->
            fun ~value:(x24 : bigint) ->
              bigint_of_js
                (Ojs.call (t_to_js x25) "exchange"
                   [|(union2_to_js BigInt64Array.t_to_js
                        BigUint64Array.t_to_js x20);(Ojs.int_to_js x23);(
                     bigint_to_js x24)|])
    let (load :
      t ->
        typedArray:(BigInt64Array.t, BigUint64Array.t) union2 ->
          index:int -> bigint)
      =
      fun (x30 : t) ->
        fun ~typedArray:(x26 : (BigInt64Array.t, BigUint64Array.t) union2) ->
          fun ~index:(x29 : int) ->
            bigint_of_js
              (Ojs.call (t_to_js x30) "load"
                 [|(union2_to_js BigInt64Array.t_to_js BigUint64Array.t_to_js
                      x26);(Ojs.int_to_js x29)|])
    let (or_ :
      t ->
        typedArray:(BigInt64Array.t, BigUint64Array.t) union2 ->
          index:int -> value:bigint -> bigint)
      =
      fun (x36 : t) ->
        fun ~typedArray:(x31 : (BigInt64Array.t, BigUint64Array.t) union2) ->
          fun ~index:(x34 : int) ->
            fun ~value:(x35 : bigint) ->
              bigint_of_js
                (Ojs.call (t_to_js x36) "or"
                   [|(union2_to_js BigInt64Array.t_to_js
                        BigUint64Array.t_to_js x31);(Ojs.int_to_js x34);(
                     bigint_to_js x35)|])
    let (store :
      t ->
        typedArray:(BigInt64Array.t, BigUint64Array.t) union2 ->
          index:int -> value:bigint -> bigint)
      =
      fun (x42 : t) ->
        fun ~typedArray:(x37 : (BigInt64Array.t, BigUint64Array.t) union2) ->
          fun ~index:(x40 : int) ->
            fun ~value:(x41 : bigint) ->
              bigint_of_js
                (Ojs.call (t_to_js x42) "store"
                   [|(union2_to_js BigInt64Array.t_to_js
                        BigUint64Array.t_to_js x37);(Ojs.int_to_js x40);(
                     bigint_to_js x41)|])
    let (sub :
      t ->
        typedArray:(BigInt64Array.t, BigUint64Array.t) union2 ->
          index:int -> value:bigint -> bigint)
      =
      fun (x48 : t) ->
        fun ~typedArray:(x43 : (BigInt64Array.t, BigUint64Array.t) union2) ->
          fun ~index:(x46 : int) ->
            fun ~value:(x47 : bigint) ->
              bigint_of_js
                (Ojs.call (t_to_js x48) "sub"
                   [|(union2_to_js BigInt64Array.t_to_js
                        BigUint64Array.t_to_js x43);(Ojs.int_to_js x46);(
                     bigint_to_js x47)|])
    let (wait :
      t ->
        typedArray:BigInt64Array.t ->
          index:int ->
            value:bigint ->
              ?timeout:int -> unit -> [ `not_equal  | `ok  | `timed_out ])
      =
      fun (x55 : t) ->
        fun ~typedArray:(x49 : BigInt64Array.t) ->
          fun ~index:(x50 : int) ->
            fun ~value:(x51 : bigint) ->
              fun ?timeout:(x52 : int option) ->
                fun () ->
                  let x57 =
                    let x56 = t_to_js x55 in
                    Ojs.call (Ojs.get_prop_ascii x56 "wait") "apply"
                      [|x56;((let x53 =
                                Ojs.new_obj
                                  (Ojs.get_prop_ascii Ojs.global "Array")
                                  [||] in
                              ignore
                                (Ojs.call x53 "push"
                                   [|(BigInt64Array.t_to_js x49)|]);
                              ignore
                                (Ojs.call x53 "push" [|(Ojs.int_to_js x50)|]);
                              ignore
                                (Ojs.call x53 "push" [|(bigint_to_js x51)|]);
                              (match x52 with
                               | Some x54 ->
                                   ignore
                                     (Ojs.call x53 "push"
                                        [|(Ojs.int_to_js x54)|])
                               | None -> ());
                              x53))|] in
                  match Ojs.string_of_js x57 with
                  | "not-equal" -> `not_equal
                  | "ok" -> `ok
                  | "timed-out" -> `timed_out
                  | _ -> assert false
    let (notify :
      t ->
        typedArray:BigInt64Array.t -> index:int -> ?count:int -> unit -> int)
      =
      fun (x63 : t) ->
        fun ~typedArray:(x58 : BigInt64Array.t) ->
          fun ~index:(x59 : int) ->
            fun ?count:(x60 : int option) ->
              fun () ->
                Ojs.int_of_js
                  (let x64 = t_to_js x63 in
                   Ojs.call (Ojs.get_prop_ascii x64 "notify") "apply"
                     [|x64;((let x61 =
                               Ojs.new_obj
                                 (Ojs.get_prop_ascii Ojs.global "Array") 
                                 [||] in
                             ignore
                               (Ojs.call x61 "push"
                                  [|(BigInt64Array.t_to_js x58)|]);
                             ignore
                               (Ojs.call x61 "push" [|(Ojs.int_to_js x59)|]);
                             (match x60 with
                              | Some x62 ->
                                  ignore
                                    (Ojs.call x61 "push"
                                       [|(Ojs.int_to_js x62)|])
                              | None -> ());
                             x61))|])
    let (xor :
      t ->
        typedArray:(BigInt64Array.t, BigUint64Array.t) union2 ->
          index:int -> value:bigint -> bigint)
      =
      fun (x70 : t) ->
        fun ~typedArray:(x65 : (BigInt64Array.t, BigUint64Array.t) union2) ->
          fun ~index:(x68 : int) ->
            fun ~value:(x69 : bigint) ->
              bigint_of_js
                (Ojs.call (t_to_js x70) "xor"
                   [|(union2_to_js BigInt64Array.t_to_js
                        BigUint64Array.t_to_js x65);(Ojs.int_to_js x68);(
                     bigint_to_js x69)|])
  end
