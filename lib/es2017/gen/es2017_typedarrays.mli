[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2016

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type _Float32ArrayConstructor = [ `Float32ArrayConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Float64ArrayConstructor = [ `Float64ArrayConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Int16ArrayConstructor = [ `Int16ArrayConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Int32ArrayConstructor = [ `Int32ArrayConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Int8ArrayConstructor = [ `Int8ArrayConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Uint16ArrayConstructor = [ `Uint16ArrayConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Uint32ArrayConstructor = [ `Uint32ArrayConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Uint8ArrayConstructor = [ `Uint8ArrayConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Uint8ClampedArrayConstructor = [ `Uint8ClampedArrayConstructor ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module Int8ArrayConstructor : sig
  type t = _Int8ArrayConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> Int8Array.t [@@js.apply_newable]
end
[@@js.scope "Int8ArrayConstructor"]

module Uint8ArrayConstructor : sig
  type t = _Uint8ArrayConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> Uint8Array.t [@@js.apply_newable]
end
[@@js.scope "Uint8ArrayConstructor"]

module Uint8ClampedArrayConstructor : sig
  type t = _Uint8ClampedArrayConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> Uint8ClampedArray.t [@@js.apply_newable]
end
[@@js.scope "Uint8ClampedArrayConstructor"]

module Int16ArrayConstructor : sig
  type t = _Int16ArrayConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> Int16Array.t [@@js.apply_newable]
end
[@@js.scope "Int16ArrayConstructor"]

module Uint16ArrayConstructor : sig
  type t = _Uint16ArrayConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> Uint16Array.t [@@js.apply_newable]
end
[@@js.scope "Uint16ArrayConstructor"]

module Int32ArrayConstructor : sig
  type t = _Int32ArrayConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> Int32Array.t [@@js.apply_newable]
end
[@@js.scope "Int32ArrayConstructor"]

module Uint32ArrayConstructor : sig
  type t = _Uint32ArrayConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> Uint32Array.t [@@js.apply_newable]
end
[@@js.scope "Uint32ArrayConstructor"]

module Float32ArrayConstructor : sig
  type t = _Float32ArrayConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> Float32Array.t [@@js.apply_newable]
end
[@@js.scope "Float32ArrayConstructor"]

module Float64ArrayConstructor : sig
  type t = _Float64ArrayConstructor

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> Float64Array.t [@@js.apply_newable]
end
[@@js.scope "Float64ArrayConstructor"]
