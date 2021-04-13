open Es2015

module Array : sig
  include module type of struct
    include Array
  end

  val includes : 'T t -> searchElement:'T -> ?fromIndex:float -> unit -> bool

  val to_ml : 'T t -> 'T list

  val of_ml : 'T list -> 'T t
end

module ReadonlyArray : sig
  include module type of struct
    include ReadonlyArray
  end

  val includes : 'T t -> searchElement:'T -> ?fromIndex:float -> unit -> bool

  val to_ml : 'T t -> 'T list

  val of_ml : 'T list -> 'T t
end

module Int8Array : sig
  include module type of struct
    include Int8Array
  end

  val includes : t -> searchElement:float -> ?fromIndex:float -> unit -> bool
end

module Uint8Array : sig
  include module type of struct
    include Uint8Array
  end

  val includes : t -> searchElement:float -> ?fromIndex:float -> unit -> bool
end

module Uint8ClampedArray : sig
  include module type of struct
    include Uint8ClampedArray
  end

  val includes : t -> searchElement:float -> ?fromIndex:float -> unit -> bool
end

module Int16Array : sig
  include module type of struct
    include Int16Array
  end

  val includes : t -> searchElement:float -> ?fromIndex:float -> unit -> bool
end

module Uint16Array : sig
  include module type of struct
    include Uint16Array
  end

  val includes : t -> searchElement:float -> ?fromIndex:float -> unit -> bool
end

module Int32Array : sig
  include module type of struct
    include Int32Array
  end

  val includes : t -> searchElement:float -> ?fromIndex:float -> unit -> bool
end

module Uint32Array : sig
  include module type of struct
    include Uint32Array
  end

  val includes : t -> searchElement:float -> ?fromIndex:float -> unit -> bool
end

module Float32Array : sig
  include module type of struct
    include Float32Array
  end

  val includes : t -> searchElement:float -> ?fromIndex:float -> unit -> bool
end

module Float64Array : sig
  include module type of struct
    include Float64Array
  end

  val includes : t -> searchElement:float -> ?fromIndex:float -> unit -> bool
end
