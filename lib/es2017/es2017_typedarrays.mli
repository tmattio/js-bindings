[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2016

module Int8Array : sig
  include module type of struct
    include Int8Array
  end

  (* Constructor *)

  (* The spec introduces a constructor without any parameter, so we make the
     length optional on the existing constructor *)
  val create : ?length:int -> unit -> Int8Array.t [@@js.new "Int8Array"]
end

module Int8ArrayConstructor : sig
  include module type of struct
    include Int8ArrayConstructor
  end

  val create : t -> ?length:int -> unit -> Int8Array.t [@@js.apply_newable]
end
[@@js.scope "Int8ArrayConstructor"]

module Uint8Array : sig
  include module type of struct
    include Uint8Array
  end

  (* Constructor *)

  (* The spec introduces a constructor without any parameter, so we make the
     length optional on the existing constructor *)
  val create : ?length:int -> unit -> Uint8Array.t [@@js.new "Uint8Array"]
end

module Uint8ArrayConstructor : sig
  include module type of struct
    include Uint8ArrayConstructor
  end

  val create : t -> ?length:int -> unit -> Uint8Array.t [@@js.apply_newable]
end
[@@js.scope "Uint8ArrayConstructor"]

module Uint8ClampedArray : sig
  include module type of struct
    include Uint8ClampedArray
  end

  (* Constructor *)

  (* The spec introduces a constructor without any parameter, so we make the
     length optional on the existing constructor *)
  val create : ?length:int -> unit -> Uint8ClampedArray.t
    [@@js.new "Uint8ClampedArray"]
end

module Uint8ClampedArrayConstructor : sig
  include module type of struct
    include Uint8ClampedArrayConstructor
  end

  val create : t -> ?length:int -> unit -> Uint8ClampedArray.t
    [@@js.apply_newable]
end
[@@js.scope "Uint8ClampedArrayConstructor"]

module Int16Array : sig
  include module type of struct
    include Int16Array
  end

  (* Constructor *)

  (* The spec introduces a constructor without any parameter, so we make the
     length optional on the existing constructor *)
  val create : ?length:int -> unit -> Int16Array.t [@@js.new "Int16Array"]
end

module Int16ArrayConstructor : sig
  include module type of struct
    include Int16ArrayConstructor
  end

  val create : t -> ?length:int -> unit -> Int16Array.t [@@js.apply_newable]
end
[@@js.scope "Int16ArrayConstructor"]

module Uint16Array : sig
  include module type of struct
    include Uint16Array
  end

  (* Constructor *)

  (* The spec introduces a constructor without any parameter, so we make the
     length optional on the existing constructor *)
  val create : ?length:int -> unit -> Uint16Array.t [@@js.new "Uint16Array"]
end

module Uint16ArrayConstructor : sig
  include module type of struct
    include Uint16ArrayConstructor
  end

  val create : t -> ?length:int -> unit -> Uint16Array.t [@@js.apply_newable]
end
[@@js.scope "Uint16ArrayConstructor"]

module Int32Array : sig
  include module type of struct
    include Int32Array
  end

  (* Constructor *)

  (* The spec introduces a constructor without any parameter, so we make the
     length optional on the existing constructor *)
  val create : ?length:int -> unit -> Int32Array.t [@@js.new "Int32Array"]
end

module Int32ArrayConstructor : sig
  include module type of struct
    include Int32ArrayConstructor
  end

  val create : t -> ?length:int -> unit -> Int32Array.t [@@js.apply_newable]
end
[@@js.scope "Int32ArrayConstructor"]

module Uint32Array : sig
  include module type of struct
    include Uint32Array
  end

  (* Constructor *)

  (* The spec introduces a constructor without any parameter, so we make the
     length optional on the existing constructor *)
  val create : ?length:int -> unit -> Uint32Array.t [@@js.new "Uint32Array"]
end

module Uint32ArrayConstructor : sig
  include module type of struct
    include Uint32ArrayConstructor
  end

  val create : t -> ?length:int -> unit -> Uint32Array.t [@@js.apply_newable]
end
[@@js.scope "Uint32ArrayConstructor"]

module Float32Array : sig
  include module type of struct
    include Float32Array
  end

  (* Constructor *)

  (* The spec introduces a constructor without any parameter, so we make the
     length optional on the existing constructor *)
  val create : ?length:int -> unit -> Float32Array.t [@@js.new "Float32Array"]
end

module Float32ArrayConstructor : sig
  include module type of struct
    include Float32ArrayConstructor
  end

  val create : t -> ?length:int -> unit -> Float32Array.t [@@js.apply_newable]
end
[@@js.scope "Float32ArrayConstructor"]

module Float64Array : sig
  include module type of struct
    include Float64Array
  end

  (* Constructor *)

  (* The spec introduces a constructor without any parameter, so we make the
     length optional on the existing constructor *)
  val create : ?length:int -> unit -> Float64Array.t [@@js.new "Float64Array"]
end

module Float64ArrayConstructor : sig
  include module type of struct
    include Float64ArrayConstructor
  end

  val create : t -> ?length:int -> unit -> Float64Array.t [@@js.apply_newable]
end
[@@js.scope "Float64ArrayConstructor"]
