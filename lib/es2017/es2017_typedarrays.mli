open Es2016

module Int8Array : sig
  include module type of struct
    include Int8Array
  end

  (* Constructor *)

  (* The spec introduces a constructor without any parameter, so we make the
     length optional on the existing constructor *)
  val create : ?length:int -> unit -> Int8Array.t
end

module Int8ArrayConstructor : sig
  include module type of struct
    include Int8ArrayConstructor
  end

  val create : t -> ?length:int -> unit -> Int8Array.t
end

module Uint8Array : sig
  include module type of struct
    include Uint8Array
  end

  (* Constructor *)

  (* The spec introduces a constructor without any parameter, so we make the
     length optional on the existing constructor *)
  val create : ?length:int -> unit -> Uint8Array.t
end

module Uint8ArrayConstructor : sig
  include module type of struct
    include Uint8ArrayConstructor
  end

  val create : t -> ?length:int -> unit -> Uint8Array.t
end

module Uint8ClampedArray : sig
  include module type of struct
    include Uint8ClampedArray
  end

  (* Constructor *)

  (* The spec introduces a constructor without any parameter, so we make the
     length optional on the existing constructor *)
  val create : ?length:int -> unit -> Uint8ClampedArray.t
end

module Uint8ClampedArrayConstructor : sig
  include module type of struct
    include Uint8ClampedArrayConstructor
  end

  val create : t -> ?length:int -> unit -> Uint8ClampedArray.t
end

module Int16Array : sig
  include module type of struct
    include Int16Array
  end

  (* Constructor *)

  (* The spec introduces a constructor without any parameter, so we make the
     length optional on the existing constructor *)
  val create : ?length:int -> unit -> Int16Array.t
end

module Int16ArrayConstructor : sig
  include module type of struct
    include Int16ArrayConstructor
  end

  val create : t -> ?length:int -> unit -> Int16Array.t
end

module Uint16Array : sig
  include module type of struct
    include Uint16Array
  end

  (* Constructor *)

  (* The spec introduces a constructor without any parameter, so we make the
     length optional on the existing constructor *)
  val create : ?length:int -> unit -> Uint16Array.t
end

module Uint16ArrayConstructor : sig
  include module type of struct
    include Uint16ArrayConstructor
  end

  val create : t -> ?length:int -> unit -> Uint16Array.t
end

module Int32Array : sig
  include module type of struct
    include Int32Array
  end

  (* Constructor *)

  (* The spec introduces a constructor without any parameter, so we make the
     length optional on the existing constructor *)
  val create : ?length:int -> unit -> Int32Array.t
end

module Int32ArrayConstructor : sig
  include module type of struct
    include Int32ArrayConstructor
  end

  val create : t -> ?length:int -> unit -> Int32Array.t
end

module Uint32Array : sig
  include module type of struct
    include Uint32Array
  end

  (* Constructor *)

  (* The spec introduces a constructor without any parameter, so we make the
     length optional on the existing constructor *)
  val create : ?length:int -> unit -> Uint32Array.t
end

module Uint32ArrayConstructor : sig
  include module type of struct
    include Uint32ArrayConstructor
  end

  val create : t -> ?length:int -> unit -> Uint32Array.t
end

module Float32Array : sig
  include module type of struct
    include Float32Array
  end

  (* Constructor *)

  (* The spec introduces a constructor without any parameter, so we make the
     length optional on the existing constructor *)
  val create : ?length:int -> unit -> Float32Array.t
end

module Float32ArrayConstructor : sig
  include module type of struct
    include Float32ArrayConstructor
  end

  val create : t -> ?length:int -> unit -> Float32Array.t
end

module Float64Array : sig
  include module type of struct
    include Float64Array
  end

  (* Constructor *)

  (* The spec introduces a constructor without any parameter, so we make the
     length optional on the existing constructor *)
  val create : ?length:int -> unit -> Float64Array.t
end

module Float64ArrayConstructor : sig
  include module type of struct
    include Float64ArrayConstructor
  end

  val create : t -> ?length:int -> unit -> Float64Array.t
end
