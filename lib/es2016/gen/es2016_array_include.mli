[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2015

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type 'T _Array = [ `Array of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and _Float32Array = [ `Float32Array ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Float64Array = [ `Float64Array ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Int16Array = [ `Int16Array ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Int32Array = [ `Int32Array ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Int8Array = [ `Int8Array ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and 'T _ReadonlyArray = [ `ReadonlyArray of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]

    and _Uint16Array = [ `Uint16Array ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Uint32Array = [ `Uint32Array ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Uint8Array = [ `Uint8Array ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and _Uint8ClampedArray = [ `Uint8ClampedArray ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module Array : sig
  include module type of struct
    include Array
  end

  val includes : 'T t -> searchElement:'T -> ?fromIndex:float -> unit -> bool
    [@@js.call "includes"]

  val to_ml : 'T t -> 'T list [@@js.cast]

  val of_ml : 'T list -> 'T t [@@js.cast]
end
[@@js.scope "Array"]

module ReadonlyArray : sig
  include module type of struct
    include ReadonlyArray
  end

  val includes : 'T t -> searchElement:'T -> ?fromIndex:float -> unit -> bool
    [@@js.call "includes"]

  val to_ml : 'T t -> 'T list [@@js.cast]

  val of_ml : 'T list -> 'T t [@@js.cast]
end
[@@js.scope "ReadonlyArray"]

module Int8Array : sig
  include module type of struct
    include Int8Array
  end

  val includes : t -> searchElement:float -> ?fromIndex:float -> unit -> bool
    [@@js.call "includes"]
end
[@@js.scope "Int8Array"]

module Uint8Array : sig
  include module type of struct
    include Uint8Array
  end

  val includes : t -> searchElement:float -> ?fromIndex:float -> unit -> bool
    [@@js.call "includes"]
end
[@@js.scope "Uint8Array"]

module Uint8ClampedArray : sig
  include module type of struct
    include Uint8ClampedArray
  end

  val includes : t -> searchElement:float -> ?fromIndex:float -> unit -> bool
    [@@js.call "includes"]
end
[@@js.scope "Uint8ClampedArray"]

module Int16Array : sig
  include module type of struct
    include Int16Array
  end

  val includes : t -> searchElement:float -> ?fromIndex:float -> unit -> bool
    [@@js.call "includes"]
end
[@@js.scope "Int16Array"]

module Uint16Array : sig
  include module type of struct
    include Uint16Array
  end

  val includes : t -> searchElement:float -> ?fromIndex:float -> unit -> bool
    [@@js.call "includes"]
end
[@@js.scope "Uint16Array"]

module Int32Array : sig
  include module type of struct
    include Int32Array
  end

  val includes : t -> searchElement:float -> ?fromIndex:float -> unit -> bool
    [@@js.call "includes"]
end
[@@js.scope "Int32Array"]

module Uint32Array : sig
  include module type of struct
    include Uint32Array
  end

  val includes : t -> searchElement:float -> ?fromIndex:float -> unit -> bool
    [@@js.call "includes"]
end
[@@js.scope "Uint32Array"]

module Float32Array : sig
  include module type of struct
    include Float32Array
  end

  val includes : t -> searchElement:float -> ?fromIndex:float -> unit -> bool
    [@@js.call "includes"]
end
[@@js.scope "Float32Array"]

module Float64Array : sig
  include module type of struct
    include Float64Array
  end

  val includes : t -> searchElement:float -> ?fromIndex:float -> unit -> bool
    [@@js.call "includes"]
end
[@@js.scope "Float64Array"]
