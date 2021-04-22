[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_rejectUnauthorized : t -> bool [@@js.get "rejectUnauthorized"]

  val set_rejectUnauthorized : t -> bool -> unit [@@js.set "rejectUnauthorized"]

  val get_requestCert : t -> bool [@@js.get "requestCert"]

  val set_requestCert : t -> bool -> unit [@@js.set "requestCert"]
end

module Tls : sig
  open Node_net

  val cLIENT_RENEG_LIMIT : int [@@js.global "CLIENT_RENEG_LIMIT"]

  val cLIENT_RENEG_WINDOW : int [@@js.global "CLIENT_RENEG_WINDOW"]

  module Certificate : sig
    type t = tls_Certificate

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_C : t -> string [@@js.get "C"]

    val set_C : t -> string -> unit [@@js.set "C"]

    val get_ST : t -> string [@@js.get "ST"]

    val set_ST : t -> string -> unit [@@js.set "ST"]

    val get_L : t -> string [@@js.get "L"]

    val set_L : t -> string -> unit [@@js.set "L"]

    val get_O : t -> string [@@js.get "O"]

    val set_O : t -> string -> unit [@@js.set "O"]

    val get_OU : t -> string [@@js.get "OU"]

    val set_OU : t -> string -> unit [@@js.set "OU"]

    val get_CN : t -> string [@@js.get "CN"]

    val set_CN : t -> string -> unit [@@js.set "CN"]
  end
  [@@js.scope "Certificate"]

  module PeerCertificate : sig
    type t = tls_PeerCertificate

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_subject : t -> tls_Certificate [@@js.get "subject"]

    val set_subject : t -> tls_Certificate -> unit [@@js.set "subject"]

    val get_issuer : t -> tls_Certificate [@@js.get "issuer"]

    val set_issuer : t -> tls_Certificate -> unit [@@js.set "issuer"]

    val get_subjectaltname : t -> string [@@js.get "subjectaltname"]

    val set_subjectaltname : t -> string -> unit [@@js.set "subjectaltname"]

    val get_infoAccess : t -> string list Dict.t [@@js.get "infoAccess"]

    val set_infoAccess : t -> string list Dict.t -> unit [@@js.set "infoAccess"]

    val get_modulus : t -> string [@@js.get "modulus"]

    val set_modulus : t -> string -> unit [@@js.set "modulus"]

    val get_exponent : t -> string [@@js.get "exponent"]

    val set_exponent : t -> string -> unit [@@js.set "exponent"]

    val get_valid_from : t -> string [@@js.get "valid_from"]

    val set_valid_from : t -> string -> unit [@@js.set "valid_from"]

    val get_valid_to : t -> string [@@js.get "valid_to"]

    val set_valid_to : t -> string -> unit [@@js.set "valid_to"]

    val get_fingerprint : t -> string [@@js.get "fingerprint"]

    val set_fingerprint : t -> string -> unit [@@js.set "fingerprint"]

    val get_fingerprint256 : t -> string [@@js.get "fingerprint256"]

    val set_fingerprint256 : t -> string -> unit [@@js.set "fingerprint256"]

    val get_ext_key_usage : t -> string list [@@js.get "ext_key_usage"]

    val set_ext_key_usage : t -> string list -> unit [@@js.set "ext_key_usage"]

    val get_serialNumber : t -> string [@@js.get "serialNumber"]

    val set_serialNumber : t -> string -> unit [@@js.set "serialNumber"]

    val get_raw : t -> Buffer.t [@@js.get "raw"]

    val set_raw : t -> Buffer.t -> unit [@@js.set "raw"]
  end
  [@@js.scope "PeerCertificate"]

  module DetailedPeerCertificate : sig
    type t = tls_DetailedPeerCertificate

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_issuerCertificate : t -> t [@@js.get "issuerCertificate"]

    val set_issuerCertificate : t -> t -> unit [@@js.set "issuerCertificate"]

    val cast : t -> tls_PeerCertificate [@@js.cast]
  end
  [@@js.scope "DetailedPeerCertificate"]

  module CipherNameAndProtocol : sig
    type t = tls_CipherNameAndProtocol

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]

    val get_version : t -> string [@@js.get "version"]

    val set_version : t -> string -> unit [@@js.set "version"]

    val get_standardName : t -> string [@@js.get "standardName"]

    val set_standardName : t -> string -> unit [@@js.set "standardName"]
  end
  [@@js.scope "CipherNameAndProtocol"]

  module EphemeralKeyInfo : sig
    type t = tls_EphemeralKeyInfo

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type : t -> string [@@js.get "type"]

    val set_type : t -> string -> unit [@@js.set "type"]

    val get_name : t -> string [@@js.get "name"]

    val set_name : t -> string -> unit [@@js.set "name"]

    val get_size : t -> int [@@js.get "size"]

    val set_size : t -> int -> unit [@@js.set "size"]
  end
  [@@js.scope "EphemeralKeyInfo"]

  module KeyObject : sig
    type t = tls_KeyObject

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_pem : t -> Buffer.t or_string [@@js.get "pem"]

    val set_pem : t -> Buffer.t or_string -> unit [@@js.set "pem"]

    val get_passphrase : t -> string [@@js.get "passphrase"]

    val set_passphrase : t -> string -> unit [@@js.set "passphrase"]
  end
  [@@js.scope "KeyObject"]

  module PxfObject : sig
    type t = tls_PxfObject

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_buf : t -> Buffer.t or_string [@@js.get "buf"]

    val set_buf : t -> Buffer.t or_string -> unit [@@js.set "buf"]

    val get_passphrase : t -> string [@@js.get "passphrase"]

    val set_passphrase : t -> string -> unit [@@js.set "passphrase"]
  end
  [@@js.scope "PxfObject"]

  module TLSSocketOptions : sig
    type t = tls_TLSSocketOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_isServer : t -> bool [@@js.get "isServer"]

    val set_isServer : t -> bool -> unit [@@js.set "isServer"]

    val get_server : t -> Net.Server.t [@@js.get "server"]

    val set_server : t -> Net.Server.t -> unit [@@js.set "server"]

    val get_session : t -> Buffer.t [@@js.get "session"]

    val set_session : t -> Buffer.t -> unit [@@js.set "session"]

    val get_requestOCSP : t -> bool [@@js.get "requestOCSP"]

    val set_requestOCSP : t -> bool -> unit [@@js.set "requestOCSP"]

    val cast : t -> tls_SecureContextOptions [@@js.cast]

    val cast' : t -> tls_CommonConnectionOptions [@@js.cast]
  end
  [@@js.scope "TLSSocketOptions"]

  module TLSSocket : sig
    type t = tls_TLSSocket

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create
      :  socket:Net.Socket.t
      -> ?options:tls_TLSSocketOptions
      -> unit
      -> t
      [@@js.create]

    val get_authorized : t -> bool [@@js.get "authorized"]

    val set_authorized : t -> bool -> unit [@@js.set "authorized"]

    val get_authorizationError : t -> Error.t [@@js.get "authorizationError"]

    val set_authorizationError : t -> Error.t -> unit
      [@@js.set "authorizationError"]

    val get_encrypted : t -> bool [@@js.get "encrypted"]

    val set_encrypted : t -> bool -> unit [@@js.set "encrypted"]

    val get_alpnProtocol : t -> string [@@js.get "alpnProtocol"]

    val set_alpnProtocol : t -> string -> unit [@@js.set "alpnProtocol"]

    val getCertificate
      :  t
      -> (tls_PeerCertificate, untyped_object) union2 or_null
      [@@js.call "getCertificate"]

    val getCipher : t -> tls_CipherNameAndProtocol [@@js.call "getCipher"]

    val getEphemeralKeyInfo
      :  t
      -> (tls_EphemeralKeyInfo, untyped_object) union2 or_null
      [@@js.call "getEphemeralKeyInfo"]

    val getFinished : t -> Buffer.t or_undefined [@@js.call "getFinished"]

    val getPeerCertificate
      :  t
      -> detailed:([ `L_b_true ][@js.enum])
      -> tls_DetailedPeerCertificate
      [@@js.call "getPeerCertificate"]

    val getPeerCertificate'
      :  t
      -> ?detailed:([ `L_b_false ][@js.enum])
      -> unit
      -> tls_PeerCertificate
      [@@js.call "getPeerCertificate"]

    val getPeerCertificate''
      :  t
      -> ?detailed:bool
      -> unit
      -> (tls_DetailedPeerCertificate, tls_PeerCertificate) union2
      [@@js.call "getPeerCertificate"]

    val getPeerFinished : t -> Buffer.t or_undefined
      [@@js.call "getPeerFinished"]

    val getProtocol : t -> string or_null [@@js.call "getProtocol"]

    val getSession : t -> Buffer.t or_undefined [@@js.call "getSession"]

    val getSharedSigalgs : t -> string list [@@js.call "getSharedSigalgs"]

    val getTLSTicket : t -> Buffer.t or_undefined [@@js.call "getTLSTicket"]

    val isSessionReused : t -> bool [@@js.call "isSessionReused"]

    val renegotiate
      :  t
      -> options:AnonymousInterface0.t
      -> callback:(err:Error.t or_null -> unit)
      -> bool or_undefined
      [@@js.call "renegotiate"]

    val setMaxSendFragment : t -> size:int -> bool
      [@@js.call "setMaxSendFragment"]

    val disableRenegotiation : t -> unit [@@js.call "disableRenegotiation"]

    val enableTrace : t -> unit [@@js.call "enableTrace"]

    val exportKeyingMaterial
      :  t
      -> length:int
      -> label:string
      -> context:Buffer.t
      -> Buffer.t
      [@@js.call "exportKeyingMaterial"]

    val addListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `OCSPResponse ][@js.enum])
      -> listener:(response:Buffer.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:([ `secureConnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:Buffer.t -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''
      :  t
      -> event:([ `keylog ][@js.enum])
      -> listener:(line:Buffer.t -> unit)
      -> t
      [@@js.call "addListener"]

    val emit
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val emit'
      :  t
      -> event:([ `OCSPResponse ][@js.enum])
      -> response:Buffer.t
      -> bool
      [@@js.call "emit"]

    val emit'' : t -> event:([ `secureConnect ][@js.enum]) -> bool
      [@@js.call "emit"]

    val emit'''
      :  t
      -> event:([ `session ][@js.enum])
      -> session:Buffer.t
      -> bool
      [@@js.call "emit"]

    val emit'''' : t -> event:([ `keylog ][@js.enum]) -> line:Buffer.t -> bool
      [@@js.call "emit"]

    val on
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `OCSPResponse ][@js.enum])
      -> listener:(response:Buffer.t -> unit)
      -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `secureConnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:Buffer.t -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `keylog ][@js.enum])
      -> listener:(line:Buffer.t -> unit)
      -> t
      [@@js.call "on"]

    val once
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "once"]

    val once'
      :  t
      -> event:([ `OCSPResponse ][@js.enum])
      -> listener:(response:Buffer.t -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `secureConnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:Buffer.t -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `keylog ][@js.enum])
      -> listener:(line:Buffer.t -> unit)
      -> t
      [@@js.call "once"]

    val prependListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'
      :  t
      -> event:([ `OCSPResponse ][@js.enum])
      -> listener:(response:Buffer.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:([ `secureConnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:Buffer.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''
      :  t
      -> event:([ `keylog ][@js.enum])
      -> listener:(line:Buffer.t -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependOnceListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'
      :  t
      -> event:([ `OCSPResponse ][@js.enum])
      -> listener:(response:Buffer.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:([ `secureConnect ][@js.enum])
      -> listener:(unit -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:([ `session ][@js.enum])
      -> listener:(session:Buffer.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''
      :  t
      -> event:([ `keylog ][@js.enum])
      -> listener:(line:Buffer.t -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> Net.Socket.t [@@js.cast]
  end
  [@@js.scope "TLSSocket"]

  module CommonConnectionOptions : sig
    type t = tls_CommonConnectionOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_secureContext : t -> tls_SecureContext [@@js.get "secureContext"]

    val set_secureContext : t -> tls_SecureContext -> unit
      [@@js.set "secureContext"]

    val get_enableTrace : t -> bool [@@js.get "enableTrace"]

    val set_enableTrace : t -> bool -> unit [@@js.set "enableTrace"]

    val get_requestCert : t -> bool [@@js.get "requestCert"]

    val set_requestCert : t -> bool -> unit [@@js.set "requestCert"]

    val get_ALPNProtocols : t -> (Uint8Array.t, Uint8Array.t or_string) or_array
      [@@js.get "ALPNProtocols"]

    val set_ALPNProtocols
      :  t
      -> (Uint8Array.t, Uint8Array.t or_string) or_array
      -> unit
      [@@js.set "ALPNProtocols"]

    val sNICallback
      :  t
      -> servername:string
      -> cb:(err:Error.t or_null -> ctx:tls_SecureContext -> unit)
      -> unit
      [@@js.call "SNICallback"]

    val get_rejectUnauthorized : t -> bool [@@js.get "rejectUnauthorized"]

    val set_rejectUnauthorized : t -> bool -> unit
      [@@js.set "rejectUnauthorized"]
  end
  [@@js.scope "CommonConnectionOptions"]

  module TlsOptions : sig
    type t = tls_TlsOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_handshakeTimeout : t -> int [@@js.get "handshakeTimeout"]

    val set_handshakeTimeout : t -> int -> unit [@@js.set "handshakeTimeout"]

    val get_sessionTimeout : t -> int [@@js.get "sessionTimeout"]

    val set_sessionTimeout : t -> int -> unit [@@js.set "sessionTimeout"]

    val get_ticketKeys : t -> Buffer.t [@@js.get "ticketKeys"]

    val set_ticketKeys : t -> Buffer.t -> unit [@@js.set "ticketKeys"]

    val pskCallback
      :  t
      -> socket:tls_TLSSocket
      -> identity:string
      -> (DataView.t, TypedArray.t) union2 or_null
      [@@js.call "pskCallback"]

    val get_pskIdentityHint : t -> string [@@js.get "pskIdentityHint"]

    val set_pskIdentityHint : t -> string -> unit [@@js.set "pskIdentityHint"]

    val cast : t -> tls_SecureContextOptions [@@js.cast]

    val cast' : t -> tls_CommonConnectionOptions [@@js.cast]

    val cast'' : t -> Net.ServerOpts.t [@@js.cast]
  end
  [@@js.scope "TlsOptions"]

  module PSKCallbackNegotation : sig
    type t = tls_PSKCallbackNegotation

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_psk : t -> (DataView.t, TypedArray.t) union2 [@@js.get "psk"]

    val set_psk : t -> (DataView.t, TypedArray.t) union2 -> unit
      [@@js.set "psk"]

    val get_identity : t -> string [@@js.get "identity"]

    val set_identity : t -> string -> unit [@@js.set "identity"]
  end
  [@@js.scope "PSKCallbackNegotation"]

  module ConnectionOptions : sig
    type t = tls_ConnectionOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_host : t -> string [@@js.get "host"]

    val set_host : t -> string -> unit [@@js.set "host"]

    val get_port : t -> int [@@js.get "port"]

    val set_port : t -> int -> unit [@@js.set "port"]

    val get_path : t -> string [@@js.get "path"]

    val set_path : t -> string -> unit [@@js.set "path"]

    val get_socket : t -> Net.Socket.t [@@js.get "socket"]

    val set_socket : t -> Net.Socket.t -> unit [@@js.set "socket"]

    val checkServerIdentity
      :  t
      -> host:string
      -> cert:tls_PeerCertificate
      -> Error.t or_undefined
      [@@js.call "checkServerIdentity"]

    val get_servername : t -> string [@@js.get "servername"]

    val set_servername : t -> string -> unit [@@js.set "servername"]

    val get_session : t -> Buffer.t [@@js.get "session"]

    val set_session : t -> Buffer.t -> unit [@@js.set "session"]

    val get_minDHSize : t -> int [@@js.get "minDHSize"]

    val set_minDHSize : t -> int -> unit [@@js.set "minDHSize"]

    val get_lookup : t -> Net.LookupFunction.t [@@js.get "lookup"]

    val set_lookup : t -> Net.LookupFunction.t -> unit [@@js.set "lookup"]

    val get_timeout : t -> int [@@js.get "timeout"]

    val set_timeout : t -> int -> unit [@@js.set "timeout"]

    val pskCallback
      :  t
      -> hint:string or_null
      -> tls_PSKCallbackNegotation or_null
      [@@js.call "pskCallback"]

    val cast : t -> tls_SecureContextOptions [@@js.cast]

    val cast' : t -> tls_CommonConnectionOptions [@@js.cast]
  end
  [@@js.scope "ConnectionOptions"]

  module Server : sig
    type t = tls_Server

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create
      :  ?secureConnectionListener:(socket:tls_TLSSocket -> unit)
      -> unit
      -> t
      [@@js.create]

    val create'
      :  options:tls_TlsOptions
      -> ?secureConnectionListener:(socket:tls_TLSSocket -> unit)
      -> unit
      -> t
      [@@js.create]

    val addContext
      :  t
      -> hostName:string
      -> credentials:tls_SecureContextOptions
      -> unit
      [@@js.call "addContext"]

    val getTicketKeys : t -> Buffer.t [@@js.call "getTicketKeys"]

    val setSecureContext : t -> details:tls_SecureContextOptions -> unit
      [@@js.call "setSecureContext"]

    val setTicketKeys : t -> keys:Buffer.t -> unit [@@js.call "setTicketKeys"]

    val addListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'
      :  t
      -> event:([ `tlsClientError ][@js.enum])
      -> listener:(err:Error.t -> tlsSocket:tls_TLSSocket -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''
      :  t
      -> event:([ `newSession ][@js.enum])
      -> listener:
           (sessionId:Buffer.t
            -> sessionData:Buffer.t
            -> callback:(err:Error.t -> resp:Buffer.t -> unit)
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''
      :  t
      -> event:([ `OCSPRequest ][@js.enum])
      -> listener:
           (certificate:Buffer.t
            -> issuer:Buffer.t
            -> callback:(err:Error.t or_null -> resp:Buffer.t -> unit)
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''
      :  t
      -> event:([ `resumeSession ][@js.enum])
      -> listener:
           (sessionId:Buffer.t
            -> callback:(err:Error.t -> sessionData:Buffer.t -> unit)
            -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener'''''
      :  t
      -> event:([ `secureConnection ][@js.enum])
      -> listener:(tlsSocket:tls_TLSSocket -> unit)
      -> t
      [@@js.call "addListener"]

    val addListener''''''
      :  t
      -> event:([ `keylog ][@js.enum])
      -> listener:(line:Buffer.t -> tlsSocket:tls_TLSSocket -> unit)
      -> t
      [@@js.call "addListener"]

    val emit
      :  t
      -> event:symbol or_string
      -> args:(any list[@js.variadic])
      -> bool
      [@@js.call "emit"]

    val emit'
      :  t
      -> event:([ `tlsClientError ][@js.enum])
      -> err:Error.t
      -> tlsSocket:tls_TLSSocket
      -> bool
      [@@js.call "emit"]

    val emit''
      :  t
      -> event:([ `newSession ][@js.enum])
      -> sessionId:Buffer.t
      -> sessionData:Buffer.t
      -> callback:(err:Error.t -> resp:Buffer.t -> unit)
      -> bool
      [@@js.call "emit"]

    val emit'''
      :  t
      -> event:([ `OCSPRequest ][@js.enum])
      -> certificate:Buffer.t
      -> issuer:Buffer.t
      -> callback:(err:Error.t or_null -> resp:Buffer.t -> unit)
      -> bool
      [@@js.call "emit"]

    val emit''''
      :  t
      -> event:([ `resumeSession ][@js.enum])
      -> sessionId:Buffer.t
      -> callback:(err:Error.t -> sessionData:Buffer.t -> unit)
      -> bool
      [@@js.call "emit"]

    val emit'''''
      :  t
      -> event:([ `secureConnection ][@js.enum])
      -> tlsSocket:tls_TLSSocket
      -> bool
      [@@js.call "emit"]

    val emit''''''
      :  t
      -> event:([ `keylog ][@js.enum])
      -> line:Buffer.t
      -> tlsSocket:tls_TLSSocket
      -> bool
      [@@js.call "emit"]

    val on
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "on"]

    val on'
      :  t
      -> event:([ `tlsClientError ][@js.enum])
      -> listener:(err:Error.t -> tlsSocket:tls_TLSSocket -> unit)
      -> t
      [@@js.call "on"]

    val on''
      :  t
      -> event:([ `newSession ][@js.enum])
      -> listener:
           (sessionId:Buffer.t
            -> sessionData:Buffer.t
            -> callback:(err:Error.t -> resp:Buffer.t -> unit)
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''
      :  t
      -> event:([ `OCSPRequest ][@js.enum])
      -> listener:
           (certificate:Buffer.t
            -> issuer:Buffer.t
            -> callback:(err:Error.t or_null -> resp:Buffer.t -> unit)
            -> unit)
      -> t
      [@@js.call "on"]

    val on''''
      :  t
      -> event:([ `resumeSession ][@js.enum])
      -> listener:
           (sessionId:Buffer.t
            -> callback:(err:Error.t -> sessionData:Buffer.t -> unit)
            -> unit)
      -> t
      [@@js.call "on"]

    val on'''''
      :  t
      -> event:([ `secureConnection ][@js.enum])
      -> listener:(tlsSocket:tls_TLSSocket -> unit)
      -> t
      [@@js.call "on"]

    val on''''''
      :  t
      -> event:([ `keylog ][@js.enum])
      -> listener:(line:Buffer.t -> tlsSocket:tls_TLSSocket -> unit)
      -> t
      [@@js.call "on"]

    val once
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "once"]

    val once'
      :  t
      -> event:([ `tlsClientError ][@js.enum])
      -> listener:(err:Error.t -> tlsSocket:tls_TLSSocket -> unit)
      -> t
      [@@js.call "once"]

    val once''
      :  t
      -> event:([ `newSession ][@js.enum])
      -> listener:
           (sessionId:Buffer.t
            -> sessionData:Buffer.t
            -> callback:(err:Error.t -> resp:Buffer.t -> unit)
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''
      :  t
      -> event:([ `OCSPRequest ][@js.enum])
      -> listener:
           (certificate:Buffer.t
            -> issuer:Buffer.t
            -> callback:(err:Error.t or_null -> resp:Buffer.t -> unit)
            -> unit)
      -> t
      [@@js.call "once"]

    val once''''
      :  t
      -> event:([ `resumeSession ][@js.enum])
      -> listener:
           (sessionId:Buffer.t
            -> callback:(err:Error.t -> sessionData:Buffer.t -> unit)
            -> unit)
      -> t
      [@@js.call "once"]

    val once'''''
      :  t
      -> event:([ `secureConnection ][@js.enum])
      -> listener:(tlsSocket:tls_TLSSocket -> unit)
      -> t
      [@@js.call "once"]

    val once''''''
      :  t
      -> event:([ `keylog ][@js.enum])
      -> listener:(line:Buffer.t -> tlsSocket:tls_TLSSocket -> unit)
      -> t
      [@@js.call "once"]

    val prependListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'
      :  t
      -> event:([ `tlsClientError ][@js.enum])
      -> listener:(err:Error.t -> tlsSocket:tls_TLSSocket -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''
      :  t
      -> event:([ `newSession ][@js.enum])
      -> listener:
           (sessionId:Buffer.t
            -> sessionData:Buffer.t
            -> callback:(err:Error.t -> resp:Buffer.t -> unit)
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''
      :  t
      -> event:([ `OCSPRequest ][@js.enum])
      -> listener:
           (certificate:Buffer.t
            -> issuer:Buffer.t
            -> callback:(err:Error.t or_null -> resp:Buffer.t -> unit)
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''
      :  t
      -> event:([ `resumeSession ][@js.enum])
      -> listener:
           (sessionId:Buffer.t
            -> callback:(err:Error.t -> sessionData:Buffer.t -> unit)
            -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener'''''
      :  t
      -> event:([ `secureConnection ][@js.enum])
      -> listener:(tlsSocket:tls_TLSSocket -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependListener''''''
      :  t
      -> event:([ `keylog ][@js.enum])
      -> listener:(line:Buffer.t -> tlsSocket:tls_TLSSocket -> unit)
      -> t
      [@@js.call "prependListener"]

    val prependOnceListener
      :  t
      -> event:string
      -> listener:(args:(any list[@js.variadic]) -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'
      :  t
      -> event:([ `tlsClientError ][@js.enum])
      -> listener:(err:Error.t -> tlsSocket:tls_TLSSocket -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''
      :  t
      -> event:([ `newSession ][@js.enum])
      -> listener:
           (sessionId:Buffer.t
            -> sessionData:Buffer.t
            -> callback:(err:Error.t -> resp:Buffer.t -> unit)
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''
      :  t
      -> event:([ `OCSPRequest ][@js.enum])
      -> listener:
           (certificate:Buffer.t
            -> issuer:Buffer.t
            -> callback:(err:Error.t or_null -> resp:Buffer.t -> unit)
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''
      :  t
      -> event:([ `resumeSession ][@js.enum])
      -> listener:
           (sessionId:Buffer.t
            -> callback:(err:Error.t -> sessionData:Buffer.t -> unit)
            -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener'''''
      :  t
      -> event:([ `secureConnection ][@js.enum])
      -> listener:(tlsSocket:tls_TLSSocket -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val prependOnceListener''''''
      :  t
      -> event:([ `keylog ][@js.enum])
      -> listener:(line:Buffer.t -> tlsSocket:tls_TLSSocket -> unit)
      -> t
      [@@js.call "prependOnceListener"]

    val cast : t -> Net.Server.t [@@js.cast]
  end
  [@@js.scope "Server"]

  module SecurePair : sig
    type t = tls_SecurePair

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_encrypted : t -> tls_TLSSocket [@@js.get "encrypted"]

    val set_encrypted : t -> tls_TLSSocket -> unit [@@js.set "encrypted"]

    val get_cleartext : t -> tls_TLSSocket [@@js.get "cleartext"]

    val set_cleartext : t -> tls_TLSSocket -> unit [@@js.set "cleartext"]
  end
  [@@js.scope "SecurePair"]

  module SecureVersion : sig
    type t =
      ([ `TLSv1 [@js "TLSv1"]
       | `TLSv1_1 [@js "TLSv1.1"]
       | `TLSv1_2 [@js "TLSv1.2"]
       | `TLSv1_3 [@js "TLSv1.3"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module SecureContextOptions : sig
    type t = tls_SecureContextOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_ca : t -> (Buffer.t, Buffer.t or_string list) union2 or_string
      [@@js.get "ca"]

    val set_ca
      :  t
      -> (Buffer.t, Buffer.t or_string list) union2 or_string
      -> unit
      [@@js.set "ca"]

    val get_cert : t -> (Buffer.t, Buffer.t or_string list) union2 or_string
      [@@js.get "cert"]

    val set_cert
      :  t
      -> (Buffer.t, Buffer.t or_string list) union2 or_string
      -> unit
      [@@js.set "cert"]

    val get_sigalgs : t -> string [@@js.get "sigalgs"]

    val set_sigalgs : t -> string -> unit [@@js.set "sigalgs"]

    val get_ciphers : t -> string [@@js.get "ciphers"]

    val set_ciphers : t -> string -> unit [@@js.set "ciphers"]

    val get_clientCertEngine : t -> string [@@js.get "clientCertEngine"]

    val set_clientCertEngine : t -> string -> unit [@@js.set "clientCertEngine"]

    val get_crl : t -> (Buffer.t, Buffer.t or_string list) union2 or_string
      [@@js.get "crl"]

    val set_crl
      :  t
      -> (Buffer.t, Buffer.t or_string list) union2 or_string
      -> unit
      [@@js.set "crl"]

    val get_dhparam : t -> Buffer.t or_string [@@js.get "dhparam"]

    val set_dhparam : t -> Buffer.t or_string -> unit [@@js.set "dhparam"]

    val get_ecdhCurve : t -> string [@@js.get "ecdhCurve"]

    val set_ecdhCurve : t -> string -> unit [@@js.set "ecdhCurve"]

    val get_honorCipherOrder : t -> bool [@@js.get "honorCipherOrder"]

    val set_honorCipherOrder : t -> bool -> unit [@@js.set "honorCipherOrder"]

    val get_key
      :  t
      -> (Buffer.t, (Buffer.t, tls_KeyObject) union2 list) union2 or_string
      [@@js.get "key"]

    val set_key
      :  t
      -> (Buffer.t, (Buffer.t, tls_KeyObject) union2 list) union2 or_string
      -> unit
      [@@js.set "key"]

    val get_privateKeyEngine : t -> string [@@js.get "privateKeyEngine"]

    val set_privateKeyEngine : t -> string -> unit [@@js.set "privateKeyEngine"]

    val get_privateKeyIdentifier : t -> string [@@js.get "privateKeyIdentifier"]

    val set_privateKeyIdentifier : t -> string -> unit
      [@@js.set "privateKeyIdentifier"]

    val get_maxVersion : t -> tls_SecureVersion [@@js.get "maxVersion"]

    val set_maxVersion : t -> tls_SecureVersion -> unit [@@js.set "maxVersion"]

    val get_minVersion : t -> tls_SecureVersion [@@js.get "minVersion"]

    val set_minVersion : t -> tls_SecureVersion -> unit [@@js.set "minVersion"]

    val get_passphrase : t -> string [@@js.get "passphrase"]

    val set_passphrase : t -> string -> unit [@@js.set "passphrase"]

    val get_pfx
      :  t
      -> (Buffer.t, (Buffer.t, tls_PxfObject) union2 or_string list) union2
         or_string
      [@@js.get "pfx"]

    val set_pfx
      :  t
      -> (Buffer.t, (Buffer.t, tls_PxfObject) union2 or_string list) union2
         or_string
      -> unit
      [@@js.set "pfx"]

    val get_secureOptions : t -> int [@@js.get "secureOptions"]

    val set_secureOptions : t -> int -> unit [@@js.set "secureOptions"]

    val get_secureProtocol : t -> string [@@js.get "secureProtocol"]

    val set_secureProtocol : t -> string -> unit [@@js.set "secureProtocol"]

    val get_sessionIdContext : t -> string [@@js.get "sessionIdContext"]

    val set_sessionIdContext : t -> string -> unit [@@js.set "sessionIdContext"]

    val get_ticketKeys : t -> Buffer.t [@@js.get "ticketKeys"]

    val set_ticketKeys : t -> Buffer.t -> unit [@@js.set "ticketKeys"]

    val get_sessionTimeout : t -> int [@@js.get "sessionTimeout"]

    val set_sessionTimeout : t -> int -> unit [@@js.set "sessionTimeout"]
  end
  [@@js.scope "SecureContextOptions"]

  module SecureContext : sig
    type t = tls_SecureContext

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_context : t -> any [@@js.get "context"]

    val set_context : t -> any -> unit [@@js.set "context"]
  end
  [@@js.scope "SecureContext"]

  val checkServerIdentity
    :  host:string
    -> cert:tls_PeerCertificate
    -> Error.t or_undefined
    [@@js.global "checkServerIdentity"]

  val createServer
    :  ?secureConnectionListener:(socket:tls_TLSSocket -> unit)
    -> unit
    -> tls_Server
    [@@js.global "createServer"]

  val createServer
    :  options:tls_TlsOptions
    -> ?secureConnectionListener:(socket:tls_TLSSocket -> unit)
    -> unit
    -> tls_Server
    [@@js.global "createServer"]

  val connect
    :  options:tls_ConnectionOptions
    -> ?secureConnectListener:(unit -> unit)
    -> unit
    -> tls_TLSSocket
    [@@js.global "connect"]

  val connect
    :  port:int
    -> ?host:string
    -> ?options:tls_ConnectionOptions
    -> ?secureConnectListener:(unit -> unit)
    -> unit
    -> tls_TLSSocket
    [@@js.global "connect"]

  val connect
    :  port:int
    -> ?options:tls_ConnectionOptions
    -> ?secureConnectListener:(unit -> unit)
    -> unit
    -> tls_TLSSocket
    [@@js.global "connect"]

  val createSecurePair
    :  ?credentials:tls_SecureContext
    -> ?isServer:bool
    -> ?requestCert:bool
    -> ?rejectUnauthorized:bool
    -> unit
    -> tls_SecurePair
    [@@js.global "createSecurePair"]

  val createSecureContext
    :  ?options:tls_SecureContextOptions
    -> unit
    -> tls_SecureContext
    [@@js.global "createSecureContext"]

  val getCiphers : unit -> string list [@@js.global "getCiphers"]

  val dEFAULT_ECDH_CURVE : string [@@js.global "DEFAULT_ECDH_CURVE"]

  val dEFAULT_MAX_VERSION : tls_SecureVersion
    [@@js.global "DEFAULT_MAX_VERSION"]

  val dEFAULT_MIN_VERSION : tls_SecureVersion
    [@@js.global "DEFAULT_MIN_VERSION"]

  val rootCertificates : string list [@@js.global "rootCertificates"]
end
[@@js.scope Import.tls]
