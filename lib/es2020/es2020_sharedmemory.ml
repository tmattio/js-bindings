[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es2019
open Es2020_bigint
module Internal =
  struct
    module AnonymousInterfaces = struct  end
    module Types =
      struct
        open AnonymousInterfaces
        type _Atomics = [ `Atomics ] intf
        let rec _Atomics_of_js : Ojs.t -> _Atomics = Obj.magic
        and _Atomics_to_js : _Atomics -> Ojs.t = Obj.magic
      end
  end
open Internal
open AnonymousInterfaces
open Types
module Atomics =
  struct
    type t = _Atomics
    let rec t_of_js : Ojs.t -> t = fun (x2 : Ojs.t) -> _Atomics_of_js x2
    and t_to_js : t -> Ojs.t = fun (x1 : _Atomics) -> _Atomics_to_js x1
    let (add :
      t ->
        typedArray:(BigInt64Array.t, BigUint64Array.t) union2 ->
          index:float -> value:bigint -> bigint)
      =
      fun (x8 : t) ->
        fun ~typedArray:(x3 : (BigInt64Array.t, BigUint64Array.t) union2) ->
          fun ~index:(x6 : float) ->
            fun ~value:(x7 : bigint) ->
              bigint_of_js
                (Ojs.call (t_to_js x8) "add"
                   [|(union2_to_js BigInt64Array.t_to_js
                        BigUint64Array.t_to_js x3);(Ojs.float_to_js x6);(
                     bigint_to_js x7)|])
    let (and_ :
      t ->
        typedArray:(BigInt64Array.t, BigUint64Array.t) union2 ->
          index:float -> value:bigint -> bigint)
      =
      fun (x14 : t) ->
        fun ~typedArray:(x9 : (BigInt64Array.t, BigUint64Array.t) union2) ->
          fun ~index:(x12 : float) ->
            fun ~value:(x13 : bigint) ->
              bigint_of_js
                (Ojs.call (t_to_js x14) "and"
                   [|(union2_to_js BigInt64Array.t_to_js
                        BigUint64Array.t_to_js x9);(Ojs.float_to_js x12);(
                     bigint_to_js x13)|])
    let (compareExchange :
      t ->
        typedArray:(BigInt64Array.t, BigUint64Array.t) union2 ->
          index:float ->
            expectedValue:bigint -> replacementValue:bigint -> bigint)
      =
      fun (x21 : t) ->
        fun ~typedArray:(x15 : (BigInt64Array.t, BigUint64Array.t) union2) ->
          fun ~index:(x18 : float) ->
            fun ~expectedValue:(x19 : bigint) ->
              fun ~replacementValue:(x20 : bigint) ->
                bigint_of_js
                  (Ojs.call (t_to_js x21) "compareExchange"
                     [|(union2_to_js BigInt64Array.t_to_js
                          BigUint64Array.t_to_js x15);(Ojs.float_to_js x18);(
                       bigint_to_js x19);(bigint_to_js x20)|])
    let (exchange :
      t ->
        typedArray:(BigInt64Array.t, BigUint64Array.t) union2 ->
          index:float -> value:bigint -> bigint)
      =
      fun (x27 : t) ->
        fun ~typedArray:(x22 : (BigInt64Array.t, BigUint64Array.t) union2) ->
          fun ~index:(x25 : float) ->
            fun ~value:(x26 : bigint) ->
              bigint_of_js
                (Ojs.call (t_to_js x27) "exchange"
                   [|(union2_to_js BigInt64Array.t_to_js
                        BigUint64Array.t_to_js x22);(Ojs.float_to_js x25);(
                     bigint_to_js x26)|])
    let (load :
      t ->
        typedArray:(BigInt64Array.t, BigUint64Array.t) union2 ->
          index:float -> bigint)
      =
      fun (x32 : t) ->
        fun ~typedArray:(x28 : (BigInt64Array.t, BigUint64Array.t) union2) ->
          fun ~index:(x31 : float) ->
            bigint_of_js
              (Ojs.call (t_to_js x32) "load"
                 [|(union2_to_js BigInt64Array.t_to_js BigUint64Array.t_to_js
                      x28);(Ojs.float_to_js x31)|])
    let (or_ :
      t ->
        typedArray:(BigInt64Array.t, BigUint64Array.t) union2 ->
          index:float -> value:bigint -> bigint)
      =
      fun (x38 : t) ->
        fun ~typedArray:(x33 : (BigInt64Array.t, BigUint64Array.t) union2) ->
          fun ~index:(x36 : float) ->
            fun ~value:(x37 : bigint) ->
              bigint_of_js
                (Ojs.call (t_to_js x38) "or"
                   [|(union2_to_js BigInt64Array.t_to_js
                        BigUint64Array.t_to_js x33);(Ojs.float_to_js x36);(
                     bigint_to_js x37)|])
    let (store :
      t ->
        typedArray:(BigInt64Array.t, BigUint64Array.t) union2 ->
          index:float -> value:bigint -> bigint)
      =
      fun (x44 : t) ->
        fun ~typedArray:(x39 : (BigInt64Array.t, BigUint64Array.t) union2) ->
          fun ~index:(x42 : float) ->
            fun ~value:(x43 : bigint) ->
              bigint_of_js
                (Ojs.call (t_to_js x44) "store"
                   [|(union2_to_js BigInt64Array.t_to_js
                        BigUint64Array.t_to_js x39);(Ojs.float_to_js x42);(
                     bigint_to_js x43)|])
    let (sub :
      t ->
        typedArray:(BigInt64Array.t, BigUint64Array.t) union2 ->
          index:float -> value:bigint -> bigint)
      =
      fun (x50 : t) ->
        fun ~typedArray:(x45 : (BigInt64Array.t, BigUint64Array.t) union2) ->
          fun ~index:(x48 : float) ->
            fun ~value:(x49 : bigint) ->
              bigint_of_js
                (Ojs.call (t_to_js x50) "sub"
                   [|(union2_to_js BigInt64Array.t_to_js
                        BigUint64Array.t_to_js x45);(Ojs.float_to_js x48);(
                     bigint_to_js x49)|])
    let (wait :
      t ->
        typedArray:BigInt64Array.t ->
          index:float ->
            value:bigint ->
              ?timeout:float -> unit -> [ `not_equal  | `ok  | `timed_out ])
      =
      fun (x57 : t) ->
        fun ~typedArray:(x51 : BigInt64Array.t) ->
          fun ~index:(x52 : float) ->
            fun ~value:(x53 : bigint) ->
              fun ?timeout:(x54 : float option) ->
                fun () ->
                  let x59 =
                    let x58 = t_to_js x57 in
                    Ojs.call (Ojs.get_prop_ascii x58 "wait") "apply"
                      [|x58;((let x55 =
                                Ojs.new_obj
                                  (Ojs.get_prop_ascii Ojs.global "Array")
                                  [||] in
                              ignore
                                (Ojs.call x55 "push"
                                   [|(BigInt64Array.t_to_js x51)|]);
                              ignore
                                (Ojs.call x55 "push"
                                   [|(Ojs.float_to_js x52)|]);
                              ignore
                                (Ojs.call x55 "push" [|(bigint_to_js x53)|]);
                              (match x54 with
                               | Some x56 ->
                                   ignore
                                     (Ojs.call x55 "push"
                                        [|(Ojs.float_to_js x56)|])
                               | None -> ());
                              x55))|] in
                  match Ojs.string_of_js x59 with
                  | "not-equal" -> `not_equal
                  | "ok" -> `ok
                  | "timed-out" -> `timed_out
                  | _ -> assert false
    let (notify :
      t ->
        typedArray:BigInt64Array.t ->
          index:float -> ?count:float -> unit -> float)
      =
      fun (x65 : t) ->
        fun ~typedArray:(x60 : BigInt64Array.t) ->
          fun ~index:(x61 : float) ->
            fun ?count:(x62 : float option) ->
              fun () ->
                Ojs.float_of_js
                  (let x66 = t_to_js x65 in
                   Ojs.call (Ojs.get_prop_ascii x66 "notify") "apply"
                     [|x66;((let x63 =
                               Ojs.new_obj
                                 (Ojs.get_prop_ascii Ojs.global "Array") 
                                 [||] in
                             ignore
                               (Ojs.call x63 "push"
                                  [|(BigInt64Array.t_to_js x60)|]);
                             ignore
                               (Ojs.call x63 "push" [|(Ojs.float_to_js x61)|]);
                             (match x62 with
                              | Some x64 ->
                                  ignore
                                    (Ojs.call x63 "push"
                                       [|(Ojs.float_to_js x64)|])
                              | None -> ());
                             x63))|])
    let (xor :
      t ->
        typedArray:(BigInt64Array.t, BigUint64Array.t) union2 ->
          index:float -> value:bigint -> bigint)
      =
      fun (x72 : t) ->
        fun ~typedArray:(x67 : (BigInt64Array.t, BigUint64Array.t) union2) ->
          fun ~index:(x70 : float) ->
            fun ~value:(x71 : bigint) ->
              bigint_of_js
                (Ojs.call (t_to_js x72) "xor"
                   [|(union2_to_js BigInt64Array.t_to_js
                        BigUint64Array.t_to_js x67);(Ojs.float_to_js x70);(
                     bigint_to_js x71)|])
  end