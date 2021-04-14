open Es2017

module Promise : sig
  include module type of struct
    include Promise
  end

  val finally
    :  'T t
    -> ?onfinally:(unit -> unit) or_null_or_undefined
    -> unit
    -> 'T t
end
