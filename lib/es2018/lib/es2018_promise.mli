[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2017

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type 'T _Promise = [ `Promise of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module Promise : sig
  include module type of struct
    include Promise
  end

  val finally
    :  'T t
    -> ?onfinally:(unit -> unit) or_null_or_undefined
    -> unit
    -> 'T t
    [@@js.call "finally"]
end
[@@js.scope "Promise"]
