[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_hostname : t -> string [@@js.get "hostname"]

  val set_hostname : t -> string -> unit [@@js.set "hostname"]

  val get_service : t -> string [@@js.get "service"]

  val set_service : t -> string -> unit [@@js.set "service"]
end

module Dns : sig
  val addrconfig : int [@@js.global "ADDRCONFIG"]

  val v4MAPPED : int [@@js.global "V4MAPPED"]

  val all : int [@@js.global "ALL"]

  module LookupOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_family : t -> int [@@js.get "family"]

    val set_family : t -> int -> unit [@@js.set "family"]

    val get_hints : t -> int [@@js.get "hints"]

    val set_hints : t -> int -> unit [@@js.set "hints"]

    val get_all : t -> bool [@@js.get "all"]

    val set_all : t -> bool -> unit [@@js.set "all"]

    val get_verbatim : t -> bool [@@js.get "verbatim"]

    val set_verbatim : t -> bool -> unit [@@js.set "verbatim"]
  end
  [@@js.scope "LookupOptions"]

  module LookupOneOptions : sig
    include module type of struct
      include LookupOptions
    end

    val get_all : t -> ([ `L_b_false [@js false] ][@js.enum]) [@@js.get "all"]

    val set_all : t -> ([ `L_b_false ][@js.enum]) -> unit [@@js.set "all"]
  end
  [@@js.scope "LookupOneOptions"]

  module LookupAllOptions : sig
    include module type of struct
      include LookupOptions
    end

    val get_all : t -> ([ `L_b_true [@js true] ][@js.enum]) [@@js.get "all"]

    val set_all : t -> ([ `L_b_true ][@js.enum]) -> unit [@@js.set "all"]
  end
  [@@js.scope "LookupAllOptions"]

  module LookupAddress : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_address : t -> string [@@js.get "address"]

    val set_address : t -> string -> unit [@@js.set "address"]

    val get_family : t -> int [@@js.get "family"]

    val set_family : t -> int -> unit [@@js.set "family"]
  end
  [@@js.scope "LookupAddress"]

  val lookup
    :  hostname:string
    -> family:int
    -> callback:
         (err:ErrnoException.t or_null -> address:string -> family:int -> unit)
    -> unit
    [@@js.global "lookup"]

  val lookup
    :  hostname:string
    -> options:LookupOneOptions.t
    -> callback:
         (err:ErrnoException.t or_null -> address:string -> family:int -> unit)
    -> unit
    [@@js.global "lookup"]

  val lookup
    :  hostname:string
    -> options:LookupAllOptions.t
    -> callback:
         (err:ErrnoException.t or_null
          -> addresses:LookupAddress.t list
          -> unit)
    -> unit
    [@@js.global "lookup"]

  val lookup
    :  hostname:string
    -> options:LookupOptions.t
    -> callback:
         (err:ErrnoException.t or_null
          -> address:LookupAddress.t list or_string
          -> family:int
          -> unit)
    -> unit
    [@@js.global "lookup"]

  val lookup
    :  hostname:string
    -> callback:
         (err:ErrnoException.t or_null -> address:string -> family:int -> unit)
    -> unit
    [@@js.global "lookup"]

  module Lookup : sig
    val __promisify__
      :  hostname:string
      -> options:LookupAllOptions.t
      -> LookupAddress.t list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> ?options:LookupOneOptions.t or_number
      -> unit
      -> LookupAddress.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> options:LookupOptions.t
      -> (LookupAddress.t, LookupAddress.t) or_array Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "lookup"]

  val lookup_service
    :  address:string
    -> port:int
    -> callback:
         (err:ErrnoException.t or_null
          -> hostname:string
          -> service:string
          -> unit)
    -> unit
    [@@js.global "lookupService"]

  module LookupService : sig
    val __promisify__
      :  address:string
      -> port:int
      -> AnonymousInterface0.t Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "lookupService"]

  module ResolveOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_ttl : t -> bool [@@js.get "ttl"]

    val set_ttl : t -> bool -> unit [@@js.set "ttl"]
  end
  [@@js.scope "ResolveOptions"]

  module ResolveWithTtlOptions : sig
    include module type of struct
      include ResolveOptions
    end

    val get_ttl : t -> ([ `L_b_true [@js true] ][@js.enum]) [@@js.get "ttl"]

    val set_ttl : t -> ([ `L_b_true ][@js.enum]) -> unit [@@js.set "ttl"]
  end
  [@@js.scope "ResolveWithTtlOptions"]

  module RecordWithTtl : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_address : t -> string [@@js.get "address"]

    val set_address : t -> string -> unit [@@js.set "address"]

    val get_ttl : t -> int [@@js.get "ttl"]

    val set_ttl : t -> int -> unit [@@js.set "ttl"]
  end
  [@@js.scope "RecordWithTtl"]

  module AnyARecord : sig
    include module type of struct
      include RecordWithTtl
    end

    val get_type : t -> ([ `A [@js "A"] ][@js.enum]) [@@js.get "type"]

    val set_type : t -> ([ `A ][@js.enum]) -> unit [@@js.set "type"]
  end
  [@@js.scope "AnyARecord"]

  module AnyAaaaRecord : sig
    include module type of struct
      include RecordWithTtl
    end

    val get_type : t -> ([ `AAAA [@js "AAAA"] ][@js.enum]) [@@js.get "type"]

    val set_type : t -> ([ `AAAA ][@js.enum]) -> unit [@@js.set "type"]
  end
  [@@js.scope "AnyAaaaRecord"]

  module AnyRecordWithTtl : sig
    type t =
      ([ `U_s0_A of AnyARecord.t [@js "A"]
       | `U_s1_AAAA of AnyAaaaRecord.t [@js "AAAA"]
       ]
      [@js.union on_field "type"])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module MxRecord : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_priority : t -> int [@@js.get "priority"]

    val set_priority : t -> int -> unit [@@js.set "priority"]

    val get_exchange : t -> string [@@js.get "exchange"]

    val set_exchange : t -> string -> unit [@@js.set "exchange"]
  end
  [@@js.scope "MxRecord"]

  module AnyMxRecord : sig
    include module type of struct
      include MxRecord
    end

    val get_type : t -> ([ `MX [@js "MX"] ][@js.enum]) [@@js.get "type"]

    val set_type : t -> ([ `MX ][@js.enum]) -> unit [@@js.set "type"]
  end
  [@@js.scope "AnyMxRecord"]

  module NaptrRecord : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_flags : t -> string [@@js.get "flags"]

    val set_flags : t -> string -> unit [@@js.set "flags"]

    val get_service : t -> string [@@js.get "service"]

    val set_service : t -> string -> unit [@@js.set "service"]

    val get_regexp : t -> string [@@js.get "regexp"]

    val set_regexp : t -> string -> unit [@@js.set "regexp"]

    val get_replacement : t -> string [@@js.get "replacement"]

    val set_replacement : t -> string -> unit [@@js.set "replacement"]

    val get_order : t -> int [@@js.get "order"]

    val set_order : t -> int -> unit [@@js.set "order"]

    val get_preference : t -> int [@@js.get "preference"]

    val set_preference : t -> int -> unit [@@js.set "preference"]
  end
  [@@js.scope "NaptrRecord"]

  module AnyNaptrRecord : sig
    include module type of struct
      include NaptrRecord
    end

    val get_type : t -> ([ `NAPTR [@js "NAPTR"] ][@js.enum]) [@@js.get "type"]

    val set_type : t -> ([ `NAPTR ][@js.enum]) -> unit [@@js.set "type"]
  end
  [@@js.scope "AnyNaptrRecord"]

  module SoaRecord : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_nsname : t -> string [@@js.get "nsname"]

    val set_nsname : t -> string -> unit [@@js.set "nsname"]

    val get_hostmaster : t -> string [@@js.get "hostmaster"]

    val set_hostmaster : t -> string -> unit [@@js.set "hostmaster"]

    val get_serial : t -> int [@@js.get "serial"]

    val set_serial : t -> int -> unit [@@js.set "serial"]

    val get_refresh : t -> int [@@js.get "refresh"]

    val set_refresh : t -> int -> unit [@@js.set "refresh"]

    val get_retry : t -> int [@@js.get "retry"]

    val set_retry : t -> int -> unit [@@js.set "retry"]

    val get_expire : t -> int [@@js.get "expire"]

    val set_expire : t -> int -> unit [@@js.set "expire"]

    val get_minttl : t -> int [@@js.get "minttl"]

    val set_minttl : t -> int -> unit [@@js.set "minttl"]
  end
  [@@js.scope "SoaRecord"]

  module AnySoaRecord : sig
    include module type of struct
      include SoaRecord
    end

    val get_type : t -> ([ `SOA [@js "SOA"] ][@js.enum]) [@@js.get "type"]

    val set_type : t -> ([ `SOA ][@js.enum]) -> unit [@@js.set "type"]
  end
  [@@js.scope "AnySoaRecord"]

  module SrvRecord : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_priority : t -> int [@@js.get "priority"]

    val set_priority : t -> int -> unit [@@js.set "priority"]

    val get_weight : t -> int [@@js.get "weight"]

    val set_weight : t -> int -> unit [@@js.set "weight"]

    val get_port : t -> int [@@js.get "port"]

    val set_port : t -> int -> unit [@@js.set "port"]

    val get_name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]
  end
  [@@js.scope "SrvRecord"]

  module AnySrvRecord : sig
    include module type of struct
      include SrvRecord
    end

    val get_type : t -> ([ `SRV [@js "SRV"] ][@js.enum]) [@@js.get "type"]

    val set_type : t -> ([ `SRV ][@js.enum]) -> unit [@@js.set "type"]
  end
  [@@js.scope "AnySrvRecord"]

  module AnyTxtRecord : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type : t -> ([ `TXT [@js "TXT"] ][@js.enum]) [@@js.get "type"]

    val set_type : t -> ([ `TXT ][@js.enum]) -> unit [@@js.set "type"]

    val get_entries : t -> string list [@@js.get "entries"]

    val set_entries : t -> string list -> unit [@@js.set "entries"]
  end
  [@@js.scope "AnyTxtRecord"]

  module AnyNsRecord : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type : t -> ([ `NS [@js "NS"] ][@js.enum]) [@@js.get "type"]

    val set_type : t -> ([ `NS ][@js.enum]) -> unit [@@js.set "type"]

    val get_value : t -> string [@@js.get "value"]

    val set_value : t -> string -> unit [@@js.set "value"]
  end
  [@@js.scope "AnyNsRecord"]

  module AnyPtrRecord : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type : t -> ([ `PTR [@js "PTR"] ][@js.enum]) [@@js.get "type"]

    val set_type : t -> ([ `PTR ][@js.enum]) -> unit [@@js.set "type"]

    val get_value : t -> string [@@js.get "value"]

    val set_value : t -> string -> unit [@@js.set "value"]
  end
  [@@js.scope "AnyPtrRecord"]

  module AnyCnameRecord : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type : t -> ([ `CNAME [@js "CNAME"] ][@js.enum]) [@@js.get "type"]

    val set_type : t -> ([ `CNAME ][@js.enum]) -> unit [@@js.set "type"]

    val get_value : t -> string [@@js.get "value"]

    val set_value : t -> string -> unit [@@js.set "value"]
  end
  [@@js.scope "AnyCnameRecord"]

  module AnyRecord : sig
    type t =
      ([ `U_s0_A of AnyARecord.t [@js "A"]
       | `U_s1_AAAA of AnyAaaaRecord.t [@js "AAAA"]
       | `U_s3_CNAME of AnyCnameRecord.t [@js "CNAME"]
       | `U_s4_MX of AnyMxRecord.t [@js "MX"]
       | `U_s5_NAPTR of AnyNaptrRecord.t [@js "NAPTR"]
       | `U_s6_NS of AnyNsRecord.t [@js "NS"]
       | `U_s7_PTR of AnyPtrRecord.t [@js "PTR"]
       | `U_s8_SOA of AnySoaRecord.t [@js "SOA"]
       | `U_s9_SRV of AnySrvRecord.t [@js "SRV"]
       | `U_s10_TXT of AnyTxtRecord.t [@js "TXT"]
       ]
      [@js.union on_field "type"])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val resolve
    :  hostname:string
    -> callback:(err:ErrnoException.t or_null -> addresses:string list -> unit)
    -> unit
    [@@js.global "resolve"]

  val resolve
    :  hostname:string
    -> rrtype:([ `A ][@js.enum])
    -> callback:(err:ErrnoException.t or_null -> addresses:string list -> unit)
    -> unit
    [@@js.global "resolve"]

  val resolve
    :  hostname:string
    -> rrtype:([ `AAAA ][@js.enum])
    -> callback:(err:ErrnoException.t or_null -> addresses:string list -> unit)
    -> unit
    [@@js.global "resolve"]

  val resolve
    :  hostname:string
    -> rrtype:([ `ANY ][@js.enum])
    -> callback:
         (err:ErrnoException.t or_null -> addresses:AnyRecord.t list -> unit)
    -> unit
    [@@js.global "resolve"]

  val resolve
    :  hostname:string
    -> rrtype:([ `CNAME ][@js.enum])
    -> callback:(err:ErrnoException.t or_null -> addresses:string list -> unit)
    -> unit
    [@@js.global "resolve"]

  val resolve
    :  hostname:string
    -> rrtype:([ `MX ][@js.enum])
    -> callback:
         (err:ErrnoException.t or_null -> addresses:MxRecord.t list -> unit)
    -> unit
    [@@js.global "resolve"]

  val resolve
    :  hostname:string
    -> rrtype:([ `NAPTR ][@js.enum])
    -> callback:
         (err:ErrnoException.t or_null -> addresses:NaptrRecord.t list -> unit)
    -> unit
    [@@js.global "resolve"]

  val resolve
    :  hostname:string
    -> rrtype:([ `NS ][@js.enum])
    -> callback:(err:ErrnoException.t or_null -> addresses:string list -> unit)
    -> unit
    [@@js.global "resolve"]

  val resolve
    :  hostname:string
    -> rrtype:([ `PTR ][@js.enum])
    -> callback:(err:ErrnoException.t or_null -> addresses:string list -> unit)
    -> unit
    [@@js.global "resolve"]

  val resolve
    :  hostname:string
    -> rrtype:([ `SOA ][@js.enum])
    -> callback:(err:ErrnoException.t or_null -> addresses:SoaRecord.t -> unit)
    -> unit
    [@@js.global "resolve"]

  val resolve
    :  hostname:string
    -> rrtype:([ `SRV ][@js.enum])
    -> callback:
         (err:ErrnoException.t or_null -> addresses:SrvRecord.t list -> unit)
    -> unit
    [@@js.global "resolve"]

  val resolve
    :  hostname:string
    -> rrtype:([ `TXT ][@js.enum])
    -> callback:
         (err:ErrnoException.t or_null -> addresses:string list list -> unit)
    -> unit
    [@@js.global "resolve"]

  val resolve
    :  hostname:string
    -> rrtype:string
    -> callback:
         (err:ErrnoException.t or_null
          -> addresses:
               ( SoaRecord.t
               , ( (AnyRecord.t, MxRecord.t, NaptrRecord.t, SrvRecord.t) union4
                 , string )
                 or_array
                 or_string )
               or_array
          -> unit)
    -> unit
    [@@js.global "resolve"]

  module Resolve : sig
    val __promisify__
      :  hostname:string
      -> ?rrtype:([ `A | `AAAA | `CNAME | `NS | `PTR ][@js.enum])
      -> unit
      -> string list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> rrtype:([ `ANY ][@js.enum])
      -> AnyRecord.t list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> rrtype:([ `MX ][@js.enum])
      -> MxRecord.t list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> rrtype:([ `NAPTR ][@js.enum])
      -> NaptrRecord.t list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> rrtype:([ `SOA ][@js.enum])
      -> SoaRecord.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> rrtype:([ `SRV ][@js.enum])
      -> SrvRecord.t list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> rrtype:([ `TXT ][@js.enum])
      -> string list list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> rrtype:string
      -> ( SoaRecord.t
         , ( (AnyRecord.t, MxRecord.t, NaptrRecord.t, SrvRecord.t) union4
           , string )
           or_array
           or_string )
         or_array
         Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolve"]

  val resolve4
    :  hostname:string
    -> callback:(err:ErrnoException.t or_null -> addresses:string list -> unit)
    -> unit
    [@@js.global "resolve4"]

  val resolve4
    :  hostname:string
    -> options:ResolveWithTtlOptions.t
    -> callback:
         (err:ErrnoException.t or_null
          -> addresses:RecordWithTtl.t list
          -> unit)
    -> unit
    [@@js.global "resolve4"]

  val resolve4
    :  hostname:string
    -> options:ResolveOptions.t
    -> callback:
         (err:ErrnoException.t or_null
          -> addresses:RecordWithTtl.t or_string list
          -> unit)
    -> unit
    [@@js.global "resolve4"]

  module Resolve4 : sig
    val __promisify__ : hostname:string -> string list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> options:ResolveWithTtlOptions.t
      -> RecordWithTtl.t list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> ?options:ResolveOptions.t
      -> unit
      -> RecordWithTtl.t or_string list Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolve4"]

  val resolve6
    :  hostname:string
    -> callback:(err:ErrnoException.t or_null -> addresses:string list -> unit)
    -> unit
    [@@js.global "resolve6"]

  val resolve6
    :  hostname:string
    -> options:ResolveWithTtlOptions.t
    -> callback:
         (err:ErrnoException.t or_null
          -> addresses:RecordWithTtl.t list
          -> unit)
    -> unit
    [@@js.global "resolve6"]

  val resolve6
    :  hostname:string
    -> options:ResolveOptions.t
    -> callback:
         (err:ErrnoException.t or_null
          -> addresses:RecordWithTtl.t or_string list
          -> unit)
    -> unit
    [@@js.global "resolve6"]

  module Resolve6 : sig
    val __promisify__ : hostname:string -> string list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> options:ResolveWithTtlOptions.t
      -> RecordWithTtl.t list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> ?options:ResolveOptions.t
      -> unit
      -> RecordWithTtl.t or_string list Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolve6"]

  val resolve_cname
    :  hostname:string
    -> callback:(err:ErrnoException.t or_null -> addresses:string list -> unit)
    -> unit
    [@@js.global "resolveCname"]

  module ResolveCname : sig
    val __promisify__ : hostname:string -> string list Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolveCname"]

  val resolve_mx
    :  hostname:string
    -> callback:
         (err:ErrnoException.t or_null -> addresses:MxRecord.t list -> unit)
    -> unit
    [@@js.global "resolveMx"]

  module ResolveMx : sig
    val __promisify__ : hostname:string -> MxRecord.t list Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolveMx"]

  val resolve_naptr
    :  hostname:string
    -> callback:
         (err:ErrnoException.t or_null -> addresses:NaptrRecord.t list -> unit)
    -> unit
    [@@js.global "resolveNaptr"]

  module ResolveNaptr : sig
    val __promisify__ : hostname:string -> NaptrRecord.t list Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolveNaptr"]

  val resolve_ns
    :  hostname:string
    -> callback:(err:ErrnoException.t or_null -> addresses:string list -> unit)
    -> unit
    [@@js.global "resolveNs"]

  module ResolveNs : sig
    val __promisify__ : hostname:string -> string list Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolveNs"]

  val resolve_ptr
    :  hostname:string
    -> callback:(err:ErrnoException.t or_null -> addresses:string list -> unit)
    -> unit
    [@@js.global "resolvePtr"]

  module ResolvePtr : sig
    val __promisify__ : hostname:string -> string list Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolvePtr"]

  val resolve_soa
    :  hostname:string
    -> callback:(err:ErrnoException.t or_null -> address:SoaRecord.t -> unit)
    -> unit
    [@@js.global "resolveSoa"]

  module ResolveSoa : sig
    val __promisify__ : hostname:string -> SoaRecord.t Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolveSoa"]

  val resolve_srv
    :  hostname:string
    -> callback:
         (err:ErrnoException.t or_null -> addresses:SrvRecord.t list -> unit)
    -> unit
    [@@js.global "resolveSrv"]

  module ResolveSrv : sig
    val __promisify__ : hostname:string -> SrvRecord.t list Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolveSrv"]

  val resolve_txt
    :  hostname:string
    -> callback:
         (err:ErrnoException.t or_null -> addresses:string list list -> unit)
    -> unit
    [@@js.global "resolveTxt"]

  module ResolveTxt : sig
    val __promisify__ : hostname:string -> string list list Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolveTxt"]

  val resolve_any
    :  hostname:string
    -> callback:
         (err:ErrnoException.t or_null -> addresses:AnyRecord.t list -> unit)
    -> unit
    [@@js.global "resolveAny"]

  module ResolveAny : sig
    val __promisify__ : hostname:string -> AnyRecord.t list Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolveAny"]

  val reverse
    :  ip:string
    -> callback:(err:ErrnoException.t or_null -> hostnames:string list -> unit)
    -> unit
    [@@js.global "reverse"]

  val set_servers : servers:string list -> unit [@@js.global "setServers"]

  val get_servers : unit -> string list [@@js.global "getServers"]

  val n_odata : string [@@js.global "NODATA"]

  val f_ormerr : string [@@js.global "FORMERR"]

  val s_ervfail : string [@@js.global "SERVFAIL"]

  val n_otfound : string [@@js.global "NOTFOUND"]

  val n_otimp : string [@@js.global "NOTIMP"]

  val r_efused : string [@@js.global "REFUSED"]

  val b_adquery : string [@@js.global "BADQUERY"]

  val b_adname : string [@@js.global "BADNAME"]

  val b_adfamily : string [@@js.global "BADFAMILY"]

  val b_adresp : string [@@js.global "BADRESP"]

  val c_onnrefused : string [@@js.global "CONNREFUSED"]

  val t_imeout : string [@@js.global "TIMEOUT"]

  val e_of : string [@@js.global "EOF"]

  val f_ile : string [@@js.global "FILE"]

  val n_omem : string [@@js.global "NOMEM"]

  val d_estruction : string [@@js.global "DESTRUCTION"]

  val b_adstr : string [@@js.global "BADSTR"]

  val b_adflags : string [@@js.global "BADFLAGS"]

  val n_oname : string [@@js.global "NONAME"]

  val b_adhints : string [@@js.global "BADHINTS"]

  val n_otinitialized : string [@@js.global "NOTINITIALIZED"]

  val l_oadiphlpapi : string [@@js.global "LOADIPHLPAPI"]

  val a_ddrgetnetworkparams : string [@@js.global "ADDRGETNETWORKPARAMS"]

  val c_ancelled : string [@@js.global "CANCELLED"]

  module ResolverOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_timeout : t -> int [@@js.get "timeout"]

    val set_timeout : t -> int -> unit [@@js.set "timeout"]
  end
  [@@js.scope "ResolverOptions"]

  module Resolver : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : ?options:ResolverOptions.t -> unit -> t [@@js.create]

    val cancel : t -> unit [@@js.call "cancel"]

    val get_servers : t -> string list [@@js.call "getServers"]

    val resolve
      :  t
      -> hostname:string
      -> callback:
           (err:ErrnoException.t or_null -> addresses:string list -> unit)
      -> unit
      [@@js.call "resolve"]

    val resolve4
      :  t
      -> hostname:string
      -> callback:
           (err:ErrnoException.t or_null -> addresses:string list -> unit)
      -> unit
      [@@js.call "resolve4"]

    val resolve6
      :  t
      -> hostname:string
      -> callback:
           (err:ErrnoException.t or_null -> addresses:string list -> unit)
      -> unit
      [@@js.call "resolve6"]

    val resolve_any
      :  t
      -> hostname:string
      -> callback:
           (err:ErrnoException.t or_null -> addresses:AnyRecord.t list -> unit)
      -> unit
      [@@js.call "resolveAny"]

    val resolve_cname
      :  t
      -> hostname:string
      -> callback:
           (err:ErrnoException.t or_null -> addresses:string list -> unit)
      -> unit
      [@@js.call "resolveCname"]

    val resolve_mx
      :  t
      -> hostname:string
      -> callback:
           (err:ErrnoException.t or_null -> addresses:MxRecord.t list -> unit)
      -> unit
      [@@js.call "resolveMx"]

    val resolve_naptr
      :  t
      -> hostname:string
      -> callback:
           (err:ErrnoException.t or_null
            -> addresses:NaptrRecord.t list
            -> unit)
      -> unit
      [@@js.call "resolveNaptr"]

    val resolve_ns
      :  t
      -> hostname:string
      -> callback:
           (err:ErrnoException.t or_null -> addresses:string list -> unit)
      -> unit
      [@@js.call "resolveNs"]

    val resolve_ptr
      :  t
      -> hostname:string
      -> callback:
           (err:ErrnoException.t or_null -> addresses:string list -> unit)
      -> unit
      [@@js.call "resolvePtr"]

    val resolve_soa
      :  t
      -> hostname:string
      -> callback:(err:ErrnoException.t or_null -> address:SoaRecord.t -> unit)
      -> unit
      [@@js.call "resolveSoa"]

    val resolve_srv
      :  t
      -> hostname:string
      -> callback:
           (err:ErrnoException.t or_null -> addresses:SrvRecord.t list -> unit)
      -> unit
      [@@js.call "resolveSrv"]

    val resolve_txt
      :  t
      -> hostname:string
      -> callback:
           (err:ErrnoException.t or_null -> addresses:string list list -> unit)
      -> unit
      [@@js.call "resolveTxt"]

    val reverse
      :  t
      -> ip:string
      -> callback:
           (err:ErrnoException.t or_null -> hostnames:string list -> unit)
      -> unit
      [@@js.call "reverse"]

    val set_local_address : t -> ?ipv4:string -> ?ipv6:string -> unit -> unit
      [@@js.call "setLocalAddress"]

    val set_servers : t -> servers:string list -> unit [@@js.call "setServers"]
  end
  [@@js.scope "Resolver"]

  module Promises : sig
    val get_servers : unit -> string list [@@js.global "getServers"]

    val lookup : hostname:string -> family:int -> LookupAddress.t Promise.t
      [@@js.global "lookup"]

    val lookup
      :  hostname:string
      -> options:LookupOneOptions.t
      -> LookupAddress.t Promise.t
      [@@js.global "lookup"]

    val lookup
      :  hostname:string
      -> options:LookupAllOptions.t
      -> LookupAddress.t list Promise.t
      [@@js.global "lookup"]

    val lookup
      :  hostname:string
      -> options:LookupOptions.t
      -> (LookupAddress.t, LookupAddress.t) or_array Promise.t
      [@@js.global "lookup"]

    val lookup : hostname:string -> LookupAddress.t Promise.t
      [@@js.global "lookup"]

    val lookup_service
      :  address:string
      -> port:int
      -> AnonymousInterface0.t Promise.t
      [@@js.global "lookupService"]

    val resolve : hostname:string -> string list Promise.t
      [@@js.global "resolve"]

    val resolve
      :  hostname:string
      -> rrtype:([ `A ][@js.enum])
      -> string list Promise.t
      [@@js.global "resolve"]

    val resolve
      :  hostname:string
      -> rrtype:([ `AAAA ][@js.enum])
      -> string list Promise.t
      [@@js.global "resolve"]

    val resolve
      :  hostname:string
      -> rrtype:([ `ANY ][@js.enum])
      -> AnyRecord.t list Promise.t
      [@@js.global "resolve"]

    val resolve
      :  hostname:string
      -> rrtype:([ `CNAME ][@js.enum])
      -> string list Promise.t
      [@@js.global "resolve"]

    val resolve
      :  hostname:string
      -> rrtype:([ `MX ][@js.enum])
      -> MxRecord.t list Promise.t
      [@@js.global "resolve"]

    val resolve
      :  hostname:string
      -> rrtype:([ `NAPTR ][@js.enum])
      -> NaptrRecord.t list Promise.t
      [@@js.global "resolve"]

    val resolve
      :  hostname:string
      -> rrtype:([ `NS ][@js.enum])
      -> string list Promise.t
      [@@js.global "resolve"]

    val resolve
      :  hostname:string
      -> rrtype:([ `PTR ][@js.enum])
      -> string list Promise.t
      [@@js.global "resolve"]

    val resolve
      :  hostname:string
      -> rrtype:([ `SOA ][@js.enum])
      -> SoaRecord.t Promise.t
      [@@js.global "resolve"]

    val resolve
      :  hostname:string
      -> rrtype:([ `SRV ][@js.enum])
      -> SrvRecord.t list Promise.t
      [@@js.global "resolve"]

    val resolve
      :  hostname:string
      -> rrtype:([ `TXT ][@js.enum])
      -> string list list Promise.t
      [@@js.global "resolve"]

    val resolve
      :  hostname:string
      -> rrtype:string
      -> ( SoaRecord.t
         , ( (AnyRecord.t, MxRecord.t, NaptrRecord.t, SrvRecord.t) union4
           , string )
           or_array
           or_string )
         or_array
         Promise.t
      [@@js.global "resolve"]

    val resolve4 : hostname:string -> string list Promise.t
      [@@js.global "resolve4"]

    val resolve4
      :  hostname:string
      -> options:ResolveWithTtlOptions.t
      -> RecordWithTtl.t list Promise.t
      [@@js.global "resolve4"]

    val resolve4
      :  hostname:string
      -> options:ResolveOptions.t
      -> RecordWithTtl.t or_string list Promise.t
      [@@js.global "resolve4"]

    val resolve6 : hostname:string -> string list Promise.t
      [@@js.global "resolve6"]

    val resolve6
      :  hostname:string
      -> options:ResolveWithTtlOptions.t
      -> RecordWithTtl.t list Promise.t
      [@@js.global "resolve6"]

    val resolve6
      :  hostname:string
      -> options:ResolveOptions.t
      -> RecordWithTtl.t or_string list Promise.t
      [@@js.global "resolve6"]

    val resolve_any : hostname:string -> AnyRecord.t list Promise.t
      [@@js.global "resolveAny"]

    val resolve_cname : hostname:string -> string list Promise.t
      [@@js.global "resolveCname"]

    val resolve_mx : hostname:string -> MxRecord.t list Promise.t
      [@@js.global "resolveMx"]

    val resolve_naptr : hostname:string -> NaptrRecord.t list Promise.t
      [@@js.global "resolveNaptr"]

    val resolve_ns : hostname:string -> string list Promise.t
      [@@js.global "resolveNs"]

    val resolve_ptr : hostname:string -> string list Promise.t
      [@@js.global "resolvePtr"]

    val resolve_soa : hostname:string -> SoaRecord.t Promise.t
      [@@js.global "resolveSoa"]

    val resolve_srv : hostname:string -> SrvRecord.t list Promise.t
      [@@js.global "resolveSrv"]

    val resolve_txt : hostname:string -> string list list Promise.t
      [@@js.global "resolveTxt"]

    val reverse : ip:string -> string list Promise.t [@@js.global "reverse"]

    val set_servers : servers:string list -> unit [@@js.global "setServers"]

    module Resolver : sig
      type t

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val create : ?options:ResolverOptions.t -> unit -> t [@@js.create]

      val cancel : t -> unit [@@js.call "cancel"]

      val get_servers : t -> string list [@@js.call "getServers"]

      val resolve : t -> hostname:string -> string list Promise.t
        [@@js.call "resolve"]

      val resolve4 : t -> hostname:string -> string list Promise.t
        [@@js.call "resolve4"]

      val resolve6 : t -> hostname:string -> string list Promise.t
        [@@js.call "resolve6"]

      val resolve_any : t -> hostname:string -> AnyRecord.t list Promise.t
        [@@js.call "resolveAny"]

      val resolve_cname : t -> hostname:string -> string list Promise.t
        [@@js.call "resolveCname"]

      val resolve_mx : t -> hostname:string -> MxRecord.t list Promise.t
        [@@js.call "resolveMx"]

      val resolve_naptr : t -> hostname:string -> NaptrRecord.t list Promise.t
        [@@js.call "resolveNaptr"]

      val resolve_ns : t -> hostname:string -> string list Promise.t
        [@@js.call "resolveNs"]

      val resolve_ptr : t -> hostname:string -> string list Promise.t
        [@@js.call "resolvePtr"]

      val resolve_soa : t -> hostname:string -> SoaRecord.t Promise.t
        [@@js.call "resolveSoa"]

      val resolve_srv : t -> hostname:string -> SrvRecord.t list Promise.t
        [@@js.call "resolveSrv"]

      val resolve_txt : t -> hostname:string -> string list list Promise.t
        [@@js.call "resolveTxt"]

      val reverse : t -> ip:string -> string list Promise.t
        [@@js.call "reverse"]

      val set_local_address : t -> ?ipv4:string -> ?ipv6:string -> unit -> unit
        [@@js.call "setLocalAddress"]

      val set_servers : t -> servers:string list -> unit
        [@@js.call "setServers"]
    end
    [@@js.scope "Resolver"]
  end
  [@@js.scope "promises"]
end
[@@js.scope Import.dns]
