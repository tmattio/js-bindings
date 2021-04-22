[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2015

module Array : sig
  include module type of struct
    include Array
  end

  val includes : 'T t -> search_element:'T -> ?from_index:int -> unit -> bool
    [@@js.call "includes"]

  val to_ml : 'T t -> 'T list [@@js.cast]

  val of_ml : 'T list -> 'T t [@@js.cast]
end
[@@js.scope "Array"]

module ReadonlyArray : sig
  include module type of struct
    include ReadonlyArray
  end

  val includes : 'T t -> search_element:'T -> ?from_index:int -> unit -> bool
    [@@js.call "includes"]

  val to_ml : 'T t -> 'T list [@@js.cast]

  val of_ml : 'T list -> 'T t [@@js.cast]
end
[@@js.scope "ReadonlyArray"]

module Int8Array : sig
  include module type of struct
    include Int8Array
  end

  val includes : t -> search_element:int -> ?from_index:int -> unit -> bool
    [@@js.call "includes"]
end
[@@js.scope "Int8Array"]

module Uint8Array : sig
  include module type of struct
    include Uint8Array
  end

  val includes : t -> search_element:int -> ?from_index:int -> unit -> bool
    [@@js.call "includes"]
end
[@@js.scope "Uint8Array"]

module Uint8ClampedArray : sig
  include module type of struct
    include Uint8ClampedArray
  end

  val includes : t -> search_element:int -> ?from_index:int -> unit -> bool
    [@@js.call "includes"]
end
[@@js.scope "Uint8ClampedArray"]

module Int16Array : sig
  include module type of struct
    include Int16Array
  end

  val includes : t -> search_element:int -> ?from_index:int -> unit -> bool
    [@@js.call "includes"]
end
[@@js.scope "Int16Array"]

module Uint16Array : sig
  include module type of struct
    include Uint16Array
  end

  val includes : t -> search_element:int -> ?from_index:int -> unit -> bool
    [@@js.call "includes"]
end
[@@js.scope "Uint16Array"]

module Int32Array : sig
  include module type of struct
    include Int32Array
  end

  val includes : t -> search_element:int -> ?from_index:int -> unit -> bool
    [@@js.call "includes"]
end
[@@js.scope "Int32Array"]

module Uint32Array : sig
  include module type of struct
    include Uint32Array
  end

  val includes : t -> search_element:int -> ?from_index:int -> unit -> bool
    [@@js.call "includes"]
end
[@@js.scope "Uint32Array"]

module Float32Array : sig
  include module type of struct
    include Float32Array
  end

  val includes : t -> search_element:int -> ?from_index:int -> unit -> bool
    [@@js.call "includes"]
end
[@@js.scope "Float32Array"]

module Float64Array : sig
  include module type of struct
    include Float64Array
  end

  val includes : t -> search_element:int -> ?from_index:int -> unit -> bool
    [@@js.call "includes"]
end
[@@js.scope "Float64Array"]
