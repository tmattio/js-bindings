[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type dns_AnyARecord = [ `Dns_AnyARecord | `Dns_RecordWithTtl ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_AnyAaaaRecord = [ `Dns_AnyAaaaRecord | `Dns_RecordWithTtl ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_AnyCnameRecord = [ `Dns_AnyCnameRecord ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_AnyMxRecord = [ `Dns_AnyMxRecord | `Dns_MxRecord ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_AnyNaptrRecord = [ `Dns_AnyNaptrRecord | `Dns_NaptrRecord ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_AnyNsRecord = [ `Dns_AnyNsRecord ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_AnyPtrRecord = [ `Dns_AnyPtrRecord ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_AnyRecord =
      ([ `U_s0_A of dns_AnyARecord [@js "A"]
       | `U_s1_AAAA of dns_AnyAaaaRecord [@js "AAAA"]
       | `U_s3_CNAME of dns_AnyCnameRecord [@js "CNAME"]
       | `U_s4_MX of dns_AnyMxRecord [@js "MX"]
       | `U_s5_NAPTR of dns_AnyNaptrRecord [@js "NAPTR"]
       | `U_s6_NS of dns_AnyNsRecord [@js "NS"]
       | `U_s7_PTR of dns_AnyPtrRecord [@js "PTR"]
       | `U_s8_SOA of dns_AnySoaRecord [@js "SOA"]
       | `U_s9_SRV of dns_AnySrvRecord [@js "SRV"]
       | `U_s10_TXT of dns_AnyTxtRecord [@js "TXT"]
       ]
      [@js.union on_field "type"])

    and dns_AnyRecordWithTtl =
      ([ `U_s0_A of dns_AnyARecord [@js "A"]
       | `U_s1_AAAA of dns_AnyAaaaRecord [@js "AAAA"]
       ]
      [@js.union on_field "type"])

    and dns_AnySoaRecord = [ `Dns_AnySoaRecord | `Dns_SoaRecord ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_AnySrvRecord = [ `Dns_AnySrvRecord | `Dns_SrvRecord ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_AnyTxtRecord = [ `Dns_AnyTxtRecord ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_LookupAddress = [ `Dns_LookupAddress ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_LookupAllOptions =
      [ `Dns_LookupAllOptions | `Dns_LookupOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_LookupOneOptions =
      [ `Dns_LookupOneOptions | `Dns_LookupOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_LookupOptions = [ `Dns_LookupOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_MxRecord = [ `Dns_MxRecord ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_NaptrRecord = [ `Dns_NaptrRecord ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_RecordWithTtl = [ `Dns_RecordWithTtl ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_ResolveOptions = [ `Dns_ResolveOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_ResolveWithTtlOptions =
      [ `Dns_ResolveWithTtlOptions | `Dns_ResolveOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_Resolver = [ `Dns_Resolver ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_ResolverOptions = [ `Dns_ResolverOptions ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_SoaRecord = [ `Dns_SoaRecord ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_SrvRecord = [ `Dns_SrvRecord ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and dns_promises_Resolver = [ `Dns_promises_Resolver ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module AnonymousInterface0 : sig
  type t = anonymous_interface_0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_hostname : t -> string [@@js.get "hostname"]

  val set_hostname : t -> string -> unit [@@js.set "hostname"]

  val get_service : t -> string [@@js.get "service"]

  val set_service : t -> string -> unit [@@js.set "service"]
end

module Dns : sig
  val aDDRCONFIG : float [@@js.global "ADDRCONFIG"]

  val v4MAPPED : float [@@js.global "V4MAPPED"]

  val aLL : float [@@js.global "ALL"]

  module LookupOptions : sig
    type t = dns_LookupOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_family : t -> float [@@js.get "family"]

    val set_family : t -> float -> unit [@@js.set "family"]

    val get_hints : t -> float [@@js.get "hints"]

    val set_hints : t -> float -> unit [@@js.set "hints"]

    val get_all : t -> bool [@@js.get "all"]

    val set_all : t -> bool -> unit [@@js.set "all"]

    val get_verbatim : t -> bool [@@js.get "verbatim"]

    val set_verbatim : t -> bool -> unit [@@js.set "verbatim"]
  end
  [@@js.scope "LookupOptions"]

  module LookupOneOptions : sig
    type t = dns_LookupOneOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_all : t -> ([ `L_b_false [@js false] ][@js.enum]) [@@js.get "all"]

    val set_all : t -> ([ `L_b_false ][@js.enum]) -> unit [@@js.set "all"]

    val cast : t -> dns_LookupOptions [@@js.cast]
  end
  [@@js.scope "LookupOneOptions"]

  module LookupAllOptions : sig
    type t = dns_LookupAllOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_all : t -> ([ `L_b_true [@js true] ][@js.enum]) [@@js.get "all"]

    val set_all : t -> ([ `L_b_true ][@js.enum]) -> unit [@@js.set "all"]

    val cast : t -> dns_LookupOptions [@@js.cast]
  end
  [@@js.scope "LookupAllOptions"]

  module LookupAddress : sig
    type t = dns_LookupAddress

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_address : t -> string [@@js.get "address"]

    val set_address : t -> string -> unit [@@js.set "address"]

    val get_family : t -> float [@@js.get "family"]

    val set_family : t -> float -> unit [@@js.set "family"]
  end
  [@@js.scope "LookupAddress"]

  val lookup
    :  hostname:string
    -> family:float
    -> callback:
         (err:ErrnoException.t or_null
          -> address:string
          -> family:float
          -> unit)
    -> unit
    [@@js.global "lookup"]

  val lookup
    :  hostname:string
    -> options:dns_LookupOneOptions
    -> callback:
         (err:ErrnoException.t or_null
          -> address:string
          -> family:float
          -> unit)
    -> unit
    [@@js.global "lookup"]

  val lookup
    :  hostname:string
    -> options:dns_LookupAllOptions
    -> callback:
         (err:ErrnoException.t or_null
          -> addresses:dns_LookupAddress list
          -> unit)
    -> unit
    [@@js.global "lookup"]

  val lookup
    :  hostname:string
    -> options:dns_LookupOptions
    -> callback:
         (err:ErrnoException.t or_null
          -> address:dns_LookupAddress list or_string
          -> family:float
          -> unit)
    -> unit
    [@@js.global "lookup"]

  val lookup
    :  hostname:string
    -> callback:
         (err:ErrnoException.t or_null
          -> address:string
          -> family:float
          -> unit)
    -> unit
    [@@js.global "lookup"]

  module Lookup : sig
    val __promisify__
      :  hostname:string
      -> options:dns_LookupAllOptions
      -> dns_LookupAddress list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> ?options:dns_LookupOneOptions or_number
      -> unit
      -> dns_LookupAddress Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> options:dns_LookupOptions
      -> (dns_LookupAddress, dns_LookupAddress) or_array Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "lookup"]

  val lookupService
    :  address:string
    -> port:float
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
      -> port:float
      -> anonymous_interface_0 Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "lookupService"]

  module ResolveOptions : sig
    type t = dns_ResolveOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_ttl : t -> bool [@@js.get "ttl"]

    val set_ttl : t -> bool -> unit [@@js.set "ttl"]
  end
  [@@js.scope "ResolveOptions"]

  module ResolveWithTtlOptions : sig
    type t = dns_ResolveWithTtlOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_ttl : t -> ([ `L_b_true [@js true] ][@js.enum]) [@@js.get "ttl"]

    val set_ttl : t -> ([ `L_b_true ][@js.enum]) -> unit [@@js.set "ttl"]

    val cast : t -> dns_ResolveOptions [@@js.cast]
  end
  [@@js.scope "ResolveWithTtlOptions"]

  module RecordWithTtl : sig
    type t = dns_RecordWithTtl

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_address : t -> string [@@js.get "address"]

    val set_address : t -> string -> unit [@@js.set "address"]

    val get_ttl : t -> float [@@js.get "ttl"]

    val set_ttl : t -> float -> unit [@@js.set "ttl"]
  end
  [@@js.scope "RecordWithTtl"]

  module AnyRecordWithTtl : sig
    type t = dns_AnyRecordWithTtl

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module AnyARecord : sig
    type t = dns_AnyARecord

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type : t -> ([ `A [@js "A"] ][@js.enum]) [@@js.get "type"]

    val set_type : t -> ([ `A ][@js.enum]) -> unit [@@js.set "type"]

    val cast : t -> dns_RecordWithTtl [@@js.cast]
  end
  [@@js.scope "AnyARecord"]

  module AnyAaaaRecord : sig
    type t = dns_AnyAaaaRecord

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type : t -> ([ `AAAA [@js "AAAA"] ][@js.enum]) [@@js.get "type"]

    val set_type : t -> ([ `AAAA ][@js.enum]) -> unit [@@js.set "type"]

    val cast : t -> dns_RecordWithTtl [@@js.cast]
  end
  [@@js.scope "AnyAaaaRecord"]

  module MxRecord : sig
    type t = dns_MxRecord

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_priority : t -> float [@@js.get "priority"]

    val set_priority : t -> float -> unit [@@js.set "priority"]

    val get_exchange : t -> string [@@js.get "exchange"]

    val set_exchange : t -> string -> unit [@@js.set "exchange"]
  end
  [@@js.scope "MxRecord"]

  module AnyMxRecord : sig
    type t = dns_AnyMxRecord

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type : t -> ([ `MX [@js "MX"] ][@js.enum]) [@@js.get "type"]

    val set_type : t -> ([ `MX ][@js.enum]) -> unit [@@js.set "type"]

    val cast : t -> dns_MxRecord [@@js.cast]
  end
  [@@js.scope "AnyMxRecord"]

  module NaptrRecord : sig
    type t = dns_NaptrRecord

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

    val get_order : t -> float [@@js.get "order"]

    val set_order : t -> float -> unit [@@js.set "order"]

    val get_preference : t -> float [@@js.get "preference"]

    val set_preference : t -> float -> unit [@@js.set "preference"]
  end
  [@@js.scope "NaptrRecord"]

  module AnyNaptrRecord : sig
    type t = dns_AnyNaptrRecord

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type : t -> ([ `NAPTR [@js "NAPTR"] ][@js.enum]) [@@js.get "type"]

    val set_type : t -> ([ `NAPTR ][@js.enum]) -> unit [@@js.set "type"]

    val cast : t -> dns_NaptrRecord [@@js.cast]
  end
  [@@js.scope "AnyNaptrRecord"]

  module SoaRecord : sig
    type t = dns_SoaRecord

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_nsname : t -> string [@@js.get "nsname"]

    val set_nsname : t -> string -> unit [@@js.set "nsname"]

    val get_hostmaster : t -> string [@@js.get "hostmaster"]

    val set_hostmaster : t -> string -> unit [@@js.set "hostmaster"]

    val get_serial : t -> float [@@js.get "serial"]

    val set_serial : t -> float -> unit [@@js.set "serial"]

    val get_refresh : t -> float [@@js.get "refresh"]

    val set_refresh : t -> float -> unit [@@js.set "refresh"]

    val get_retry : t -> float [@@js.get "retry"]

    val set_retry : t -> float -> unit [@@js.set "retry"]

    val get_expire : t -> float [@@js.get "expire"]

    val set_expire : t -> float -> unit [@@js.set "expire"]

    val get_minttl : t -> float [@@js.get "minttl"]

    val set_minttl : t -> float -> unit [@@js.set "minttl"]
  end
  [@@js.scope "SoaRecord"]

  module AnySoaRecord : sig
    type t = dns_AnySoaRecord

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type : t -> ([ `SOA [@js "SOA"] ][@js.enum]) [@@js.get "type"]

    val set_type : t -> ([ `SOA ][@js.enum]) -> unit [@@js.set "type"]

    val cast : t -> dns_SoaRecord [@@js.cast]
  end
  [@@js.scope "AnySoaRecord"]

  module SrvRecord : sig
    type t = dns_SrvRecord

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_priority : t -> float [@@js.get "priority"]

    val set_priority : t -> float -> unit [@@js.set "priority"]

    val get_weight : t -> float [@@js.get "weight"]

    val set_weight : t -> float -> unit [@@js.set "weight"]

    val get_port : t -> float [@@js.get "port"]

    val set_port : t -> float -> unit [@@js.set "port"]

    val get_name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]
  end
  [@@js.scope "SrvRecord"]

  module AnySrvRecord : sig
    type t = dns_AnySrvRecord

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type : t -> ([ `SRV [@js "SRV"] ][@js.enum]) [@@js.get "type"]

    val set_type : t -> ([ `SRV ][@js.enum]) -> unit [@@js.set "type"]

    val cast : t -> dns_SrvRecord [@@js.cast]
  end
  [@@js.scope "AnySrvRecord"]

  module AnyTxtRecord : sig
    type t = dns_AnyTxtRecord

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type : t -> ([ `TXT [@js "TXT"] ][@js.enum]) [@@js.get "type"]

    val set_type : t -> ([ `TXT ][@js.enum]) -> unit [@@js.set "type"]

    val get_entries : t -> string list [@@js.get "entries"]

    val set_entries : t -> string list -> unit [@@js.set "entries"]
  end
  [@@js.scope "AnyTxtRecord"]

  module AnyNsRecord : sig
    type t = dns_AnyNsRecord

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type : t -> ([ `NS [@js "NS"] ][@js.enum]) [@@js.get "type"]

    val set_type : t -> ([ `NS ][@js.enum]) -> unit [@@js.set "type"]

    val get_value : t -> string [@@js.get "value"]

    val set_value : t -> string -> unit [@@js.set "value"]
  end
  [@@js.scope "AnyNsRecord"]

  module AnyPtrRecord : sig
    type t = dns_AnyPtrRecord

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type : t -> ([ `PTR [@js "PTR"] ][@js.enum]) [@@js.get "type"]

    val set_type : t -> ([ `PTR ][@js.enum]) -> unit [@@js.set "type"]

    val get_value : t -> string [@@js.get "value"]

    val set_value : t -> string -> unit [@@js.set "value"]
  end
  [@@js.scope "AnyPtrRecord"]

  module AnyCnameRecord : sig
    type t = dns_AnyCnameRecord

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type : t -> ([ `CNAME [@js "CNAME"] ][@js.enum]) [@@js.get "type"]

    val set_type : t -> ([ `CNAME ][@js.enum]) -> unit [@@js.set "type"]

    val get_value : t -> string [@@js.get "value"]

    val set_value : t -> string -> unit [@@js.set "value"]
  end
  [@@js.scope "AnyCnameRecord"]

  module AnyRecord : sig
    type t = dns_AnyRecord

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
         (err:ErrnoException.t or_null -> addresses:dns_AnyRecord list -> unit)
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
         (err:ErrnoException.t or_null -> addresses:dns_MxRecord list -> unit)
    -> unit
    [@@js.global "resolve"]

  val resolve
    :  hostname:string
    -> rrtype:([ `NAPTR ][@js.enum])
    -> callback:
         (err:ErrnoException.t or_null
          -> addresses:dns_NaptrRecord list
          -> unit)
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
    -> callback:
         (err:ErrnoException.t or_null -> addresses:dns_SoaRecord -> unit)
    -> unit
    [@@js.global "resolve"]

  val resolve
    :  hostname:string
    -> rrtype:([ `SRV ][@js.enum])
    -> callback:
         (err:ErrnoException.t or_null -> addresses:dns_SrvRecord list -> unit)
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
               ( dns_SoaRecord
               , ( ( dns_AnyRecord
                   , dns_MxRecord
                   , dns_NaptrRecord
                   , dns_SrvRecord )
                   union4
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
      -> dns_AnyRecord list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> rrtype:([ `MX ][@js.enum])
      -> dns_MxRecord list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> rrtype:([ `NAPTR ][@js.enum])
      -> dns_NaptrRecord list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> rrtype:([ `SOA ][@js.enum])
      -> dns_SoaRecord Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> rrtype:([ `SRV ][@js.enum])
      -> dns_SrvRecord list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> rrtype:([ `TXT ][@js.enum])
      -> string list list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> rrtype:string
      -> ( dns_SoaRecord
         , ( (dns_AnyRecord, dns_MxRecord, dns_NaptrRecord, dns_SrvRecord) union4
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
    -> options:dns_ResolveWithTtlOptions
    -> callback:
         (err:ErrnoException.t or_null
          -> addresses:dns_RecordWithTtl list
          -> unit)
    -> unit
    [@@js.global "resolve4"]

  val resolve4
    :  hostname:string
    -> options:dns_ResolveOptions
    -> callback:
         (err:ErrnoException.t or_null
          -> addresses:dns_RecordWithTtl or_string list
          -> unit)
    -> unit
    [@@js.global "resolve4"]

  module Resolve4 : sig
    val __promisify__ : hostname:string -> string list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> options:dns_ResolveWithTtlOptions
      -> dns_RecordWithTtl list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> ?options:dns_ResolveOptions
      -> unit
      -> dns_RecordWithTtl or_string list Promise.t
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
    -> options:dns_ResolveWithTtlOptions
    -> callback:
         (err:ErrnoException.t or_null
          -> addresses:dns_RecordWithTtl list
          -> unit)
    -> unit
    [@@js.global "resolve6"]

  val resolve6
    :  hostname:string
    -> options:dns_ResolveOptions
    -> callback:
         (err:ErrnoException.t or_null
          -> addresses:dns_RecordWithTtl or_string list
          -> unit)
    -> unit
    [@@js.global "resolve6"]

  module Resolve6 : sig
    val __promisify__ : hostname:string -> string list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> options:dns_ResolveWithTtlOptions
      -> dns_RecordWithTtl list Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  hostname:string
      -> ?options:dns_ResolveOptions
      -> unit
      -> dns_RecordWithTtl or_string list Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolve6"]

  val resolveCname
    :  hostname:string
    -> callback:(err:ErrnoException.t or_null -> addresses:string list -> unit)
    -> unit
    [@@js.global "resolveCname"]

  module ResolveCname : sig
    val __promisify__ : hostname:string -> string list Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolveCname"]

  val resolveMx
    :  hostname:string
    -> callback:
         (err:ErrnoException.t or_null -> addresses:dns_MxRecord list -> unit)
    -> unit
    [@@js.global "resolveMx"]

  module ResolveMx : sig
    val __promisify__ : hostname:string -> dns_MxRecord list Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolveMx"]

  val resolveNaptr
    :  hostname:string
    -> callback:
         (err:ErrnoException.t or_null
          -> addresses:dns_NaptrRecord list
          -> unit)
    -> unit
    [@@js.global "resolveNaptr"]

  module ResolveNaptr : sig
    val __promisify__ : hostname:string -> dns_NaptrRecord list Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolveNaptr"]

  val resolveNs
    :  hostname:string
    -> callback:(err:ErrnoException.t or_null -> addresses:string list -> unit)
    -> unit
    [@@js.global "resolveNs"]

  module ResolveNs : sig
    val __promisify__ : hostname:string -> string list Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolveNs"]

  val resolvePtr
    :  hostname:string
    -> callback:(err:ErrnoException.t or_null -> addresses:string list -> unit)
    -> unit
    [@@js.global "resolvePtr"]

  module ResolvePtr : sig
    val __promisify__ : hostname:string -> string list Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolvePtr"]

  val resolveSoa
    :  hostname:string
    -> callback:(err:ErrnoException.t or_null -> address:dns_SoaRecord -> unit)
    -> unit
    [@@js.global "resolveSoa"]

  module ResolveSoa : sig
    val __promisify__ : hostname:string -> dns_SoaRecord Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolveSoa"]

  val resolveSrv
    :  hostname:string
    -> callback:
         (err:ErrnoException.t or_null -> addresses:dns_SrvRecord list -> unit)
    -> unit
    [@@js.global "resolveSrv"]

  module ResolveSrv : sig
    val __promisify__ : hostname:string -> dns_SrvRecord list Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolveSrv"]

  val resolveTxt
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

  val resolveAny
    :  hostname:string
    -> callback:
         (err:ErrnoException.t or_null -> addresses:dns_AnyRecord list -> unit)
    -> unit
    [@@js.global "resolveAny"]

  module ResolveAny : sig
    val __promisify__ : hostname:string -> dns_AnyRecord list Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "resolveAny"]

  val reverse
    :  ip:string
    -> callback:(err:ErrnoException.t or_null -> hostnames:string list -> unit)
    -> unit
    [@@js.global "reverse"]

  val setServers : servers:string list -> unit [@@js.global "setServers"]

  val getServers : unit -> string list [@@js.global "getServers"]

  val nODATA : string [@@js.global "NODATA"]

  val fORMERR : string [@@js.global "FORMERR"]

  val sERVFAIL : string [@@js.global "SERVFAIL"]

  val nOTFOUND : string [@@js.global "NOTFOUND"]

  val nOTIMP : string [@@js.global "NOTIMP"]

  val rEFUSED : string [@@js.global "REFUSED"]

  val bADQUERY : string [@@js.global "BADQUERY"]

  val bADNAME : string [@@js.global "BADNAME"]

  val bADFAMILY : string [@@js.global "BADFAMILY"]

  val bADRESP : string [@@js.global "BADRESP"]

  val cONNREFUSED : string [@@js.global "CONNREFUSED"]

  val tIMEOUT : string [@@js.global "TIMEOUT"]

  val eOF : string [@@js.global "EOF"]

  val fILE : string [@@js.global "FILE"]

  val nOMEM : string [@@js.global "NOMEM"]

  val dESTRUCTION : string [@@js.global "DESTRUCTION"]

  val bADSTR : string [@@js.global "BADSTR"]

  val bADFLAGS : string [@@js.global "BADFLAGS"]

  val nONAME : string [@@js.global "NONAME"]

  val bADHINTS : string [@@js.global "BADHINTS"]

  val nOTINITIALIZED : string [@@js.global "NOTINITIALIZED"]

  val lOADIPHLPAPI : string [@@js.global "LOADIPHLPAPI"]

  val aDDRGETNETWORKPARAMS : string [@@js.global "ADDRGETNETWORKPARAMS"]

  val cANCELLED : string [@@js.global "CANCELLED"]

  module ResolverOptions : sig
    type t = dns_ResolverOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_timeout : t -> float [@@js.get "timeout"]

    val set_timeout : t -> float -> unit [@@js.set "timeout"]
  end
  [@@js.scope "ResolverOptions"]

  module Resolver : sig
    type t = dns_Resolver

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : ?options:dns_ResolverOptions -> unit -> t [@@js.create]

    val cancel : t -> unit [@@js.call "cancel"]

    val getServers : t -> string list [@@js.call "getServers"]

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

    val resolveAny
      :  t
      -> hostname:string
      -> callback:
           (err:ErrnoException.t or_null
            -> addresses:dns_AnyRecord list
            -> unit)
      -> unit
      [@@js.call "resolveAny"]

    val resolveCname
      :  t
      -> hostname:string
      -> callback:
           (err:ErrnoException.t or_null -> addresses:string list -> unit)
      -> unit
      [@@js.call "resolveCname"]

    val resolveMx
      :  t
      -> hostname:string
      -> callback:
           (err:ErrnoException.t or_null -> addresses:dns_MxRecord list -> unit)
      -> unit
      [@@js.call "resolveMx"]

    val resolveNaptr
      :  t
      -> hostname:string
      -> callback:
           (err:ErrnoException.t or_null
            -> addresses:dns_NaptrRecord list
            -> unit)
      -> unit
      [@@js.call "resolveNaptr"]

    val resolveNs
      :  t
      -> hostname:string
      -> callback:
           (err:ErrnoException.t or_null -> addresses:string list -> unit)
      -> unit
      [@@js.call "resolveNs"]

    val resolvePtr
      :  t
      -> hostname:string
      -> callback:
           (err:ErrnoException.t or_null -> addresses:string list -> unit)
      -> unit
      [@@js.call "resolvePtr"]

    val resolveSoa
      :  t
      -> hostname:string
      -> callback:
           (err:ErrnoException.t or_null -> address:dns_SoaRecord -> unit)
      -> unit
      [@@js.call "resolveSoa"]

    val resolveSrv
      :  t
      -> hostname:string
      -> callback:
           (err:ErrnoException.t or_null
            -> addresses:dns_SrvRecord list
            -> unit)
      -> unit
      [@@js.call "resolveSrv"]

    val resolveTxt
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

    val setLocalAddress : t -> ?ipv4:string -> ?ipv6:string -> unit -> unit
      [@@js.call "setLocalAddress"]

    val setServers : t -> servers:string list -> unit [@@js.call "setServers"]
  end
  [@@js.scope "Resolver"]

  module Promises : sig
    val getServers : unit -> string list [@@js.global "getServers"]

    val lookup : hostname:string -> family:float -> dns_LookupAddress Promise.t
      [@@js.global "lookup"]

    val lookup
      :  hostname:string
      -> options:dns_LookupOneOptions
      -> dns_LookupAddress Promise.t
      [@@js.global "lookup"]

    val lookup
      :  hostname:string
      -> options:dns_LookupAllOptions
      -> dns_LookupAddress list Promise.t
      [@@js.global "lookup"]

    val lookup
      :  hostname:string
      -> options:dns_LookupOptions
      -> (dns_LookupAddress, dns_LookupAddress) or_array Promise.t
      [@@js.global "lookup"]

    val lookup : hostname:string -> dns_LookupAddress Promise.t
      [@@js.global "lookup"]

    val lookupService
      :  address:string
      -> port:float
      -> anonymous_interface_0 Promise.t
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
      -> dns_AnyRecord list Promise.t
      [@@js.global "resolve"]

    val resolve
      :  hostname:string
      -> rrtype:([ `CNAME ][@js.enum])
      -> string list Promise.t
      [@@js.global "resolve"]

    val resolve
      :  hostname:string
      -> rrtype:([ `MX ][@js.enum])
      -> dns_MxRecord list Promise.t
      [@@js.global "resolve"]

    val resolve
      :  hostname:string
      -> rrtype:([ `NAPTR ][@js.enum])
      -> dns_NaptrRecord list Promise.t
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
      -> dns_SoaRecord Promise.t
      [@@js.global "resolve"]

    val resolve
      :  hostname:string
      -> rrtype:([ `SRV ][@js.enum])
      -> dns_SrvRecord list Promise.t
      [@@js.global "resolve"]

    val resolve
      :  hostname:string
      -> rrtype:([ `TXT ][@js.enum])
      -> string list list Promise.t
      [@@js.global "resolve"]

    val resolve
      :  hostname:string
      -> rrtype:string
      -> ( dns_SoaRecord
         , ( (dns_AnyRecord, dns_MxRecord, dns_NaptrRecord, dns_SrvRecord) union4
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
      -> options:dns_ResolveWithTtlOptions
      -> dns_RecordWithTtl list Promise.t
      [@@js.global "resolve4"]

    val resolve4
      :  hostname:string
      -> options:dns_ResolveOptions
      -> dns_RecordWithTtl or_string list Promise.t
      [@@js.global "resolve4"]

    val resolve6 : hostname:string -> string list Promise.t
      [@@js.global "resolve6"]

    val resolve6
      :  hostname:string
      -> options:dns_ResolveWithTtlOptions
      -> dns_RecordWithTtl list Promise.t
      [@@js.global "resolve6"]

    val resolve6
      :  hostname:string
      -> options:dns_ResolveOptions
      -> dns_RecordWithTtl or_string list Promise.t
      [@@js.global "resolve6"]

    val resolveAny : hostname:string -> dns_AnyRecord list Promise.t
      [@@js.global "resolveAny"]

    val resolveCname : hostname:string -> string list Promise.t
      [@@js.global "resolveCname"]

    val resolveMx : hostname:string -> dns_MxRecord list Promise.t
      [@@js.global "resolveMx"]

    val resolveNaptr : hostname:string -> dns_NaptrRecord list Promise.t
      [@@js.global "resolveNaptr"]

    val resolveNs : hostname:string -> string list Promise.t
      [@@js.global "resolveNs"]

    val resolvePtr : hostname:string -> string list Promise.t
      [@@js.global "resolvePtr"]

    val resolveSoa : hostname:string -> dns_SoaRecord Promise.t
      [@@js.global "resolveSoa"]

    val resolveSrv : hostname:string -> dns_SrvRecord list Promise.t
      [@@js.global "resolveSrv"]

    val resolveTxt : hostname:string -> string list list Promise.t
      [@@js.global "resolveTxt"]

    val reverse : ip:string -> string list Promise.t [@@js.global "reverse"]

    val setServers : servers:string list -> unit [@@js.global "setServers"]

    module Resolver : sig
      type t = dns_promises_Resolver

      val t_to_js : t -> Ojs.t

      val t_of_js : Ojs.t -> t

      val create : ?options:dns_ResolverOptions -> unit -> t [@@js.create]

      val cancel : t -> unit [@@js.call "cancel"]

      val getServers : t -> string list [@@js.call "getServers"]

      val resolve : t -> hostname:string -> string list Promise.t
        [@@js.call "resolve"]

      val resolve4 : t -> hostname:string -> string list Promise.t
        [@@js.call "resolve4"]

      val resolve6 : t -> hostname:string -> string list Promise.t
        [@@js.call "resolve6"]

      val resolveAny : t -> hostname:string -> dns_AnyRecord list Promise.t
        [@@js.call "resolveAny"]

      val resolveCname : t -> hostname:string -> string list Promise.t
        [@@js.call "resolveCname"]

      val resolveMx : t -> hostname:string -> dns_MxRecord list Promise.t
        [@@js.call "resolveMx"]

      val resolveNaptr : t -> hostname:string -> dns_NaptrRecord list Promise.t
        [@@js.call "resolveNaptr"]

      val resolveNs : t -> hostname:string -> string list Promise.t
        [@@js.call "resolveNs"]

      val resolvePtr : t -> hostname:string -> string list Promise.t
        [@@js.call "resolvePtr"]

      val resolveSoa : t -> hostname:string -> dns_SoaRecord Promise.t
        [@@js.call "resolveSoa"]

      val resolveSrv : t -> hostname:string -> dns_SrvRecord list Promise.t
        [@@js.call "resolveSrv"]

      val resolveTxt : t -> hostname:string -> string list list Promise.t
        [@@js.call "resolveTxt"]

      val reverse : t -> ip:string -> string list Promise.t
        [@@js.call "reverse"]

      val setLocalAddress : t -> ?ipv4:string -> ?ipv6:string -> unit -> unit
        [@@js.call "setLocalAddress"]

      val setServers : t -> servers:string list -> unit [@@js.call "setServers"]
    end
    [@@js.scope "Resolver"]
  end
  [@@js.scope "promises"]
end
[@@js.scope Import.dns]
