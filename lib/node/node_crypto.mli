[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_plaintextLength : t -> int [@@js.get "plaintextLength"]

  val set_plaintextLength : t -> int -> unit [@@js.set "plaintextLength"]
end

module AnonymousInterface1 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_privateKey : t -> crypto_KeyObject [@@js.get "privateKey"]

  val set_privateKey : t -> crypto_KeyObject -> unit [@@js.set "privateKey"]

  val get_publicKey : t -> crypto_KeyObject [@@js.get "publicKey"]

  val set_publicKey : t -> crypto_KeyObject -> unit [@@js.set "publicKey"]
end

module AnonymousInterface2 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_publicKey : t -> Buffer.t [@@js.get "publicKey"]

  val set_publicKey : t -> Buffer.t -> unit [@@js.set "publicKey"]

  val get_privateKey : t -> Buffer.t [@@js.get "privateKey"]

  val set_privateKey : t -> Buffer.t -> unit [@@js.set "privateKey"]
end

module AnonymousInterface3 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_publicKey : t -> Buffer.t [@@js.get "publicKey"]

  val set_publicKey : t -> Buffer.t -> unit [@@js.set "publicKey"]

  val get_privateKey : t -> string [@@js.get "privateKey"]

  val set_privateKey : t -> string -> unit [@@js.set "privateKey"]
end

module AnonymousInterface4 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_publicKey : t -> string [@@js.get "publicKey"]

  val set_publicKey : t -> string -> unit [@@js.set "publicKey"]

  val get_privateKey : t -> Buffer.t [@@js.get "privateKey"]

  val set_privateKey : t -> Buffer.t -> unit [@@js.set "privateKey"]
end

module AnonymousInterface5 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_publicKey : t -> string [@@js.get "publicKey"]

  val set_publicKey : t -> string -> unit [@@js.set "publicKey"]

  val get_privateKey : t -> string [@@js.get "privateKey"]

  val set_privateKey : t -> string -> unit [@@js.set "privateKey"]
end

module AnonymousInterface6 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_type : t -> ([ `pkcs8 [@js "pkcs8"] ][@js.enum]) [@@js.get "type"]

  val set_type : t -> ([ `pkcs8 ][@js.enum]) -> unit [@@js.set "type"]
end

module AnonymousInterface7 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_type : t -> ([ `spki [@js "spki"] ][@js.enum]) [@@js.get "type"]

  val set_type : t -> ([ `spki ][@js.enum]) -> unit [@@js.set "type"]

  val get_format : t -> 'PubF [@@js.get "format"]

  val set_format : t -> 'PubF -> unit [@@js.set "format"]
end

module AnonymousInterface8 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_type
    :  t
    -> ([ `pkcs1 [@js "pkcs1"] | `pkcs8 [@js "pkcs8"] ][@js.enum])
    [@@js.get "type"]

  val set_type : t -> ([ `pkcs1 | `pkcs8 ][@js.enum]) -> unit [@@js.set "type"]
end

module AnonymousInterface9 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_type : t -> ([ `pkcs1 [@js "pkcs1"] | `spki [@js "spki"] ][@js.enum])
    [@@js.get "type"]

  val set_type : t -> ([ `pkcs1 | `spki ][@js.enum]) -> unit [@@js.set "type"]

  val get_format : t -> 'PubF [@@js.get "format"]

  val set_format : t -> 'PubF -> unit [@@js.set "format"]
end

module AnonymousInterface10 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_type : t -> ([ `pkcs8 [@js "pkcs8"] | `sec1 [@js "sec1"] ][@js.enum])
    [@@js.get "type"]

  val set_type : t -> ([ `pkcs8 | `sec1 ][@js.enum]) -> unit [@@js.set "type"]
end

module AnonymousInterface11 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : t -> crypto_Certificate [@@js.apply_newable]

  val apply : t -> crypto_Certificate [@@js.apply]
end

module Crypto : sig
  open Node_stream

  module Certificate : sig
    type t = crypto_Certificate

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val exportChallenge : t -> spkac:crypto_BinaryLike -> Buffer.t
      [@@js.call "exportChallenge"]

    val exportPublicKey
      :  t
      -> spkac:crypto_BinaryLike
      -> ?encoding:string
      -> unit
      -> Buffer.t
      [@@js.call "exportPublicKey"]

    val verifySpkac : t -> spkac:ArrayBufferView.t -> bool
      [@@js.call "verifySpkac"]
  end
  [@@js.scope "Certificate"]

  val certificate : (crypto_Certificate, AnonymousInterface11.t) intersection2
    [@@js.global "Certificate"]

  module Constants : sig
    val oPENSSL_VERSION_NUMBER : int [@@js.global "OPENSSL_VERSION_NUMBER"]

    val sSL_OP_ALL : int [@@js.global "SSL_OP_ALL"]

    val sSL_OP_ALLOW_UNSAFE_LEGACY_RENEGOTIATION : int
      [@@js.global "SSL_OP_ALLOW_UNSAFE_LEGACY_RENEGOTIATION"]

    val sSL_OP_CIPHER_SERVER_PREFERENCE : int
      [@@js.global "SSL_OP_CIPHER_SERVER_PREFERENCE"]

    val sSL_OP_CISCO_ANYCONNECT : int [@@js.global "SSL_OP_CISCO_ANYCONNECT"]

    val sSL_OP_COOKIE_EXCHANGE : int [@@js.global "SSL_OP_COOKIE_EXCHANGE"]

    val sSL_OP_CRYPTOPRO_TLSEXT_BUG : int
      [@@js.global "SSL_OP_CRYPTOPRO_TLSEXT_BUG"]

    val sSL_OP_DONT_INSERT_EMPTY_FRAGMENTS : int
      [@@js.global "SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS"]

    val sSL_OP_EPHEMERAL_RSA : int [@@js.global "SSL_OP_EPHEMERAL_RSA"]

    val sSL_OP_LEGACY_SERVER_CONNECT : int
      [@@js.global "SSL_OP_LEGACY_SERVER_CONNECT"]

    val sSL_OP_MICROSOFT_BIG_SSLV3_BUFFER : int
      [@@js.global "SSL_OP_MICROSOFT_BIG_SSLV3_BUFFER"]

    val sSL_OP_MICROSOFT_SESS_ID_BUG : int
      [@@js.global "SSL_OP_MICROSOFT_SESS_ID_BUG"]

    val sSL_OP_MSIE_SSLV2_RSA_PADDING : int
      [@@js.global "SSL_OP_MSIE_SSLV2_RSA_PADDING"]

    val sSL_OP_NETSCAPE_CA_DN_BUG : int
      [@@js.global "SSL_OP_NETSCAPE_CA_DN_BUG"]

    val sSL_OP_NETSCAPE_CHALLENGE_BUG : int
      [@@js.global "SSL_OP_NETSCAPE_CHALLENGE_BUG"]

    val sSL_OP_NETSCAPE_DEMO_CIPHER_CHANGE_BUG : int
      [@@js.global "SSL_OP_NETSCAPE_DEMO_CIPHER_CHANGE_BUG"]

    val sSL_OP_NETSCAPE_REUSE_CIPHER_CHANGE_BUG : int
      [@@js.global "SSL_OP_NETSCAPE_REUSE_CIPHER_CHANGE_BUG"]

    val sSL_OP_NO_COMPRESSION : int [@@js.global "SSL_OP_NO_COMPRESSION"]

    val sSL_OP_NO_QUERY_MTU : int [@@js.global "SSL_OP_NO_QUERY_MTU"]

    val sSL_OP_NO_SESSION_RESUMPTION_ON_RENEGOTIATION : int
      [@@js.global "SSL_OP_NO_SESSION_RESUMPTION_ON_RENEGOTIATION"]

    val sSL_OP_NO_SSLv2 : int [@@js.global "SSL_OP_NO_SSLv2"]

    val sSL_OP_NO_SSLv3 : int [@@js.global "SSL_OP_NO_SSLv3"]

    val sSL_OP_NO_TICKET : int [@@js.global "SSL_OP_NO_TICKET"]

    val sSL_OP_NO_TLSv1 : int [@@js.global "SSL_OP_NO_TLSv1"]

    val sSL_OP_NO_TLSv1_1 : int [@@js.global "SSL_OP_NO_TLSv1_1"]

    val sSL_OP_NO_TLSv1_2 : int [@@js.global "SSL_OP_NO_TLSv1_2"]

    val sSL_OP_PKCS1_CHECK_1 : int [@@js.global "SSL_OP_PKCS1_CHECK_1"]

    val sSL_OP_PKCS1_CHECK_2 : int [@@js.global "SSL_OP_PKCS1_CHECK_2"]

    val sSL_OP_SINGLE_DH_USE : int [@@js.global "SSL_OP_SINGLE_DH_USE"]

    val sSL_OP_SINGLE_ECDH_USE : int [@@js.global "SSL_OP_SINGLE_ECDH_USE"]

    val sSL_OP_SSLEAY_080_CLIENT_DH_BUG : int
      [@@js.global "SSL_OP_SSLEAY_080_CLIENT_DH_BUG"]

    val sSL_OP_SSLREF2_REUSE_CERT_TYPE_BUG : int
      [@@js.global "SSL_OP_SSLREF2_REUSE_CERT_TYPE_BUG"]

    val sSL_OP_TLS_BLOCK_PADDING_BUG : int
      [@@js.global "SSL_OP_TLS_BLOCK_PADDING_BUG"]

    val sSL_OP_TLS_D5_BUG : int [@@js.global "SSL_OP_TLS_D5_BUG"]

    val sSL_OP_TLS_ROLLBACK_BUG : int [@@js.global "SSL_OP_TLS_ROLLBACK_BUG"]

    val eNGINE_METHOD_RSA : int [@@js.global "ENGINE_METHOD_RSA"]

    val eNGINE_METHOD_DSA : int [@@js.global "ENGINE_METHOD_DSA"]

    val eNGINE_METHOD_DH : int [@@js.global "ENGINE_METHOD_DH"]

    val eNGINE_METHOD_RAND : int [@@js.global "ENGINE_METHOD_RAND"]

    val eNGINE_METHOD_EC : int [@@js.global "ENGINE_METHOD_EC"]

    val eNGINE_METHOD_CIPHERS : int [@@js.global "ENGINE_METHOD_CIPHERS"]

    val eNGINE_METHOD_DIGESTS : int [@@js.global "ENGINE_METHOD_DIGESTS"]

    val eNGINE_METHOD_PKEY_METHS : int [@@js.global "ENGINE_METHOD_PKEY_METHS"]

    val eNGINE_METHOD_PKEY_ASN1_METHS : int
      [@@js.global "ENGINE_METHOD_PKEY_ASN1_METHS"]

    val eNGINE_METHOD_ALL : int [@@js.global "ENGINE_METHOD_ALL"]

    val eNGINE_METHOD_NONE : int [@@js.global "ENGINE_METHOD_NONE"]

    val dH_CHECK_P_NOT_SAFE_PRIME : int
      [@@js.global "DH_CHECK_P_NOT_SAFE_PRIME"]

    val dH_CHECK_P_NOT_PRIME : int [@@js.global "DH_CHECK_P_NOT_PRIME"]

    val dH_UNABLE_TO_CHECK_GENERATOR : int
      [@@js.global "DH_UNABLE_TO_CHECK_GENERATOR"]

    val dH_NOT_SUITABLE_GENERATOR : int
      [@@js.global "DH_NOT_SUITABLE_GENERATOR"]

    val aLPN_ENABLED : int [@@js.global "ALPN_ENABLED"]

    val rSA_PKCS1_PADDING : int [@@js.global "RSA_PKCS1_PADDING"]

    val rSA_SSLV23_PADDING : int [@@js.global "RSA_SSLV23_PADDING"]

    val rSA_NO_PADDING : int [@@js.global "RSA_NO_PADDING"]

    val rSA_PKCS1_OAEP_PADDING : int [@@js.global "RSA_PKCS1_OAEP_PADDING"]

    val rSA_X931_PADDING : int [@@js.global "RSA_X931_PADDING"]

    val rSA_PKCS1_PSS_PADDING : int [@@js.global "RSA_PKCS1_PSS_PADDING"]

    val rSA_PSS_SALTLEN_DIGEST : int [@@js.global "RSA_PSS_SALTLEN_DIGEST"]

    val rSA_PSS_SALTLEN_MAX_SIGN : int [@@js.global "RSA_PSS_SALTLEN_MAX_SIGN"]

    val rSA_PSS_SALTLEN_AUTO : int [@@js.global "RSA_PSS_SALTLEN_AUTO"]

    val pOINT_CONVERSION_COMPRESSED : int
      [@@js.global "POINT_CONVERSION_COMPRESSED"]

    val pOINT_CONVERSION_UNCOMPRESSED : int
      [@@js.global "POINT_CONVERSION_UNCOMPRESSED"]

    val pOINT_CONVERSION_HYBRID : int [@@js.global "POINT_CONVERSION_HYBRID"]

    val defaultCoreCipherList : string [@@js.global "defaultCoreCipherList"]

    val defaultCipherList : string [@@js.global "defaultCipherList"]
  end
  [@@js.scope "constants"]

  module HashOptions : sig
    type t = crypto_HashOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_outputLength : t -> int [@@js.get "outputLength"]

    val set_outputLength : t -> int -> unit [@@js.set "outputLength"]

    val cast : t -> Stream.TransformOptions.t [@@js.cast]
  end
  [@@js.scope "HashOptions"]

  val fips : bool [@@js.global "fips"]

  val createHash
    :  algorithm:string
    -> ?options:crypto_HashOptions
    -> unit
    -> crypto_Hash
    [@@js.global "createHash"]

  val createHmac
    :  algorithm:string
    -> key:(crypto_BinaryLike, crypto_KeyObject) union2
    -> ?options:Stream.TransformOptions.t
    -> unit
    -> crypto_Hmac
    [@@js.global "createHmac"]

  module BinaryToTextEncoding : sig
    type t =
      ([ `base64 [@js "base64"]
       | `hex [@js "hex"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module CharacterEncoding : sig
    type t =
      ([ `latin1 [@js "latin1"]
       | `utf_8 [@js "utf-8"]
       | `utf16le [@js "utf16le"]
       | `utf8 [@js "utf8"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module LegacyCharacterEncoding : sig
    type t =
      ([ `ascii [@js "ascii"]
       | `binary [@js "binary"]
       | `ucs_2 [@js "ucs-2"]
       | `ucs2 [@js "ucs2"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Encoding : sig
    type t =
      ( ( crypto_BinaryToTextEncoding
        , crypto_CharacterEncoding
        , crypto_LegacyCharacterEncoding )
        union3
      , ([ `ascii [@js "ascii"]
         | `base64 [@js "base64"]
         | `binary [@js "binary"]
         | `hex [@js "hex"]
         | `latin1 [@js "latin1"]
         | `ucs_2 [@js "ucs-2"]
         | `ucs2 [@js "ucs2"]
         | `utf_8 [@js "utf-8"]
         | `utf16le [@js "utf16le"]
         | `utf8 [@js "utf8"]
         ]
        [@js.enum]) )
      or_enum

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module ECDHKeyFormat : sig
    type t =
      ([ `compressed [@js "compressed"]
       | `hybrid [@js "hybrid"]
       | `uncompressed [@js "uncompressed"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Hash : sig
    type t = crypto_Hash

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]

    val copy : t -> t [@@js.call "copy"]

    val update : t -> data:crypto_BinaryLike -> t [@@js.call "update"]

    val update' : t -> data:string -> input_encoding:crypto_Encoding -> t
      [@@js.call "update"]

    val digest : t -> Buffer.t [@@js.call "digest"]

    val digest' : t -> encoding:crypto_BinaryToTextEncoding -> string
      [@@js.call "digest"]

    val cast : t -> Stream.Transform.t [@@js.cast]
  end
  [@@js.scope "Hash"]

  module Hmac : sig
    type t = crypto_Hmac

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]

    val update : t -> data:crypto_BinaryLike -> t [@@js.call "update"]

    val update' : t -> data:string -> input_encoding:crypto_Encoding -> t
      [@@js.call "update"]

    val digest : t -> Buffer.t [@@js.call "digest"]

    val digest' : t -> encoding:crypto_BinaryToTextEncoding -> string
      [@@js.call "digest"]

    val cast : t -> Stream.Transform.t [@@js.cast]
  end
  [@@js.scope "Hmac"]

  module KeyObjectType : sig
    type t =
      ([ `private_ [@js "private"]
       | `public [@js "public"]
       | `secret [@js "secret"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module KeyExportOptions : sig
    type 'T t = 'T crypto_KeyExportOptions

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val get_type
      :  'T t
      -> ([ `pkcs1 [@js "pkcs1"]
          | `pkcs8 [@js "pkcs8"]
          | `sec1 [@js "sec1"]
          | `spki [@js "spki"]
          ]
         [@js.enum])
      [@@js.get "type"]

    val set_type
      :  'T t
      -> ([ `pkcs1 | `pkcs8 | `sec1 | `spki ][@js.enum])
      -> unit
      [@@js.set "type"]

    val get_format : 'T t -> 'T [@@js.get "format"]

    val set_format : 'T t -> 'T -> unit [@@js.set "format"]

    val get_cipher : 'T t -> string [@@js.get "cipher"]

    val set_cipher : 'T t -> string -> unit [@@js.set "cipher"]

    val get_passphrase : 'T t -> Buffer.t or_string [@@js.get "passphrase"]

    val set_passphrase : 'T t -> Buffer.t or_string -> unit
      [@@js.set "passphrase"]
  end
  [@@js.scope "KeyExportOptions"]

  module KeyObject : sig
    type t = crypto_KeyObject

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]

    val get_asymmetricKeyType : t -> crypto_KeyType
      [@@js.get "asymmetricKeyType"]

    val set_asymmetricKeyType : t -> crypto_KeyType -> unit
      [@@js.set "asymmetricKeyType"]

    val get_asymmetricKeySize : t -> int [@@js.get "asymmetricKeySize"]

    val set_asymmetricKeySize : t -> int -> unit [@@js.set "asymmetricKeySize"]

    val export
      :  t
      -> options:([ `pem ][@js.enum]) crypto_KeyExportOptions
      -> Buffer.t or_string
      [@@js.call "export"]

    val export'
      :  t
      -> ?options:([ `der ][@js.enum]) crypto_KeyExportOptions
      -> unit
      -> Buffer.t
      [@@js.call "export"]

    val get_symmetricKeySize : t -> int [@@js.get "symmetricKeySize"]

    val set_symmetricKeySize : t -> int -> unit [@@js.set "symmetricKeySize"]

    val get_type : t -> crypto_KeyObjectType [@@js.get "type"]

    val set_type : t -> crypto_KeyObjectType -> unit [@@js.set "type"]
  end
  [@@js.scope "KeyObject"]

  module CipherCCMTypes : sig
    type t =
      ([ `aes_128_ccm [@js "aes-128-ccm"]
       | `aes_192_ccm [@js "aes-192-ccm"]
       | `aes_256_ccm [@js "aes-256-ccm"]
       | `chacha20_poly1305 [@js "chacha20-poly1305"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module CipherGCMTypes : sig
    type t =
      ([ `aes_128_gcm [@js "aes-128-gcm"]
       | `aes_192_gcm [@js "aes-192-gcm"]
       | `aes_256_gcm [@js "aes-256-gcm"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module BinaryLike : sig
    type t = crypto_BinaryLike

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module CipherKey : sig
    type t = (crypto_BinaryLike, crypto_KeyObject) union2

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module CipherCCMOptions : sig
    type t = crypto_CipherCCMOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_authTagLength : t -> int [@@js.get "authTagLength"]

    val set_authTagLength : t -> int -> unit [@@js.set "authTagLength"]

    val cast : t -> Stream.TransformOptions.t [@@js.cast]
  end
  [@@js.scope "CipherCCMOptions"]

  module CipherGCMOptions : sig
    type t = crypto_CipherGCMOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_authTagLength : t -> int [@@js.get "authTagLength"]

    val set_authTagLength : t -> int -> unit [@@js.set "authTagLength"]

    val cast : t -> Stream.TransformOptions.t [@@js.cast]
  end
  [@@js.scope "CipherGCMOptions"]

  val createCipher
    :  algorithm:crypto_CipherCCMTypes
    -> password:crypto_BinaryLike
    -> options:crypto_CipherCCMOptions
    -> crypto_CipherCCM
    [@@js.global "createCipher"]

  val createCipher
    :  algorithm:crypto_CipherGCMTypes
    -> password:crypto_BinaryLike
    -> ?options:crypto_CipherGCMOptions
    -> unit
    -> crypto_CipherGCM
    [@@js.global "createCipher"]

  val createCipher
    :  algorithm:string
    -> password:crypto_BinaryLike
    -> ?options:Stream.TransformOptions.t
    -> unit
    -> crypto_Cipher
    [@@js.global "createCipher"]

  val createCipheriv
    :  algorithm:crypto_CipherCCMTypes
    -> key:crypto_CipherKey
    -> iv:crypto_BinaryLike or_null
    -> options:crypto_CipherCCMOptions
    -> crypto_CipherCCM
    [@@js.global "createCipheriv"]

  val createCipheriv
    :  algorithm:crypto_CipherGCMTypes
    -> key:crypto_CipherKey
    -> iv:crypto_BinaryLike or_null
    -> ?options:crypto_CipherGCMOptions
    -> unit
    -> crypto_CipherGCM
    [@@js.global "createCipheriv"]

  val createCipheriv
    :  algorithm:string
    -> key:crypto_CipherKey
    -> iv:crypto_BinaryLike or_null
    -> ?options:Stream.TransformOptions.t
    -> unit
    -> crypto_Cipher
    [@@js.global "createCipheriv"]

  module Cipher : sig
    type t = crypto_Cipher

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]

    val update : t -> data:crypto_BinaryLike -> Buffer.t [@@js.call "update"]

    val update' : t -> data:string -> input_encoding:crypto_Encoding -> Buffer.t
      [@@js.call "update"]

    val update''
      :  t
      -> data:ArrayBufferView.t
      -> input_encoding:never or_undefined
      -> output_encoding:crypto_Encoding
      -> string
      [@@js.call "update"]

    val update'''
      :  t
      -> data:string
      -> input_encoding:crypto_Encoding or_undefined
      -> output_encoding:crypto_Encoding
      -> string
      [@@js.call "update"]

    val final : t -> Buffer.t [@@js.call "final"]

    val final' : t -> output_encoding:BufferEncoding.t -> string
      [@@js.call "final"]

    val setAutoPadding : t -> ?auto_padding:bool -> unit -> t
      [@@js.call "setAutoPadding"]

    val cast : t -> Stream.Transform.t [@@js.cast]
  end
  [@@js.scope "Cipher"]

  module CipherCCM : sig
    type t = crypto_CipherCCM

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val setAAD
      :  t
      -> buffer:ArrayBufferView.t
      -> options:AnonymousInterface0.t
      -> t
      [@@js.call "setAAD"]

    val getAuthTag : t -> Buffer.t [@@js.call "getAuthTag"]

    val cast : t -> crypto_Cipher [@@js.cast]
  end
  [@@js.scope "CipherCCM"]

  module CipherGCM : sig
    type t = crypto_CipherGCM

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val setAAD
      :  t
      -> buffer:ArrayBufferView.t
      -> ?options:AnonymousInterface0.t
      -> unit
      -> t
      [@@js.call "setAAD"]

    val getAuthTag : t -> Buffer.t [@@js.call "getAuthTag"]

    val cast : t -> crypto_Cipher [@@js.cast]
  end
  [@@js.scope "CipherGCM"]

  val createDecipher
    :  algorithm:crypto_CipherCCMTypes
    -> password:crypto_BinaryLike
    -> options:crypto_CipherCCMOptions
    -> crypto_DecipherCCM
    [@@js.global "createDecipher"]

  val createDecipher
    :  algorithm:crypto_CipherGCMTypes
    -> password:crypto_BinaryLike
    -> ?options:crypto_CipherGCMOptions
    -> unit
    -> crypto_DecipherGCM
    [@@js.global "createDecipher"]

  val createDecipher
    :  algorithm:string
    -> password:crypto_BinaryLike
    -> ?options:Stream.TransformOptions.t
    -> unit
    -> crypto_Decipher
    [@@js.global "createDecipher"]

  val createDecipheriv
    :  algorithm:crypto_CipherCCMTypes
    -> key:crypto_CipherKey
    -> iv:crypto_BinaryLike or_null
    -> options:crypto_CipherCCMOptions
    -> crypto_DecipherCCM
    [@@js.global "createDecipheriv"]

  val createDecipheriv
    :  algorithm:crypto_CipherGCMTypes
    -> key:crypto_CipherKey
    -> iv:crypto_BinaryLike or_null
    -> ?options:crypto_CipherGCMOptions
    -> unit
    -> crypto_DecipherGCM
    [@@js.global "createDecipheriv"]

  val createDecipheriv
    :  algorithm:string
    -> key:crypto_CipherKey
    -> iv:crypto_BinaryLike or_null
    -> ?options:Stream.TransformOptions.t
    -> unit
    -> crypto_Decipher
    [@@js.global "createDecipheriv"]

  module Decipher : sig
    type t = crypto_Decipher

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]

    val update : t -> data:ArrayBufferView.t -> Buffer.t [@@js.call "update"]

    val update' : t -> data:string -> input_encoding:crypto_Encoding -> Buffer.t
      [@@js.call "update"]

    val update''
      :  t
      -> data:ArrayBufferView.t
      -> input_encoding:never or_undefined
      -> output_encoding:crypto_Encoding
      -> string
      [@@js.call "update"]

    val update'''
      :  t
      -> data:string
      -> input_encoding:crypto_Encoding or_undefined
      -> output_encoding:crypto_Encoding
      -> string
      [@@js.call "update"]

    val final : t -> Buffer.t [@@js.call "final"]

    val final' : t -> output_encoding:BufferEncoding.t -> string
      [@@js.call "final"]

    val setAutoPadding : t -> ?auto_padding:bool -> unit -> t
      [@@js.call "setAutoPadding"]

    val cast : t -> Stream.Transform.t [@@js.cast]
  end
  [@@js.scope "Decipher"]

  module DecipherCCM : sig
    type t = crypto_DecipherCCM

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val setAuthTag : t -> buffer:ArrayBufferView.t -> t [@@js.call "setAuthTag"]

    val setAAD
      :  t
      -> buffer:ArrayBufferView.t
      -> options:AnonymousInterface0.t
      -> t
      [@@js.call "setAAD"]

    val cast : t -> crypto_Decipher [@@js.cast]
  end
  [@@js.scope "DecipherCCM"]

  module DecipherGCM : sig
    type t = crypto_DecipherGCM

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val setAuthTag : t -> buffer:ArrayBufferView.t -> t [@@js.call "setAuthTag"]

    val setAAD
      :  t
      -> buffer:ArrayBufferView.t
      -> ?options:AnonymousInterface0.t
      -> unit
      -> t
      [@@js.call "setAAD"]

    val cast : t -> crypto_Decipher [@@js.cast]
  end
  [@@js.scope "DecipherGCM"]

  module PrivateKeyInput : sig
    type t = crypto_PrivateKeyInput

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_key : t -> Buffer.t or_string [@@js.get "key"]

    val set_key : t -> Buffer.t or_string -> unit [@@js.set "key"]

    val get_format : t -> crypto_KeyFormat [@@js.get "format"]

    val set_format : t -> crypto_KeyFormat -> unit [@@js.set "format"]

    val get_type
      :  t
      -> ([ `pkcs1 [@js "pkcs1"] | `pkcs8 [@js "pkcs8"] | `sec1 [@js "sec1"] ]
         [@js.enum])
      [@@js.get "type"]

    val set_type : t -> ([ `pkcs1 | `pkcs8 | `sec1 ][@js.enum]) -> unit
      [@@js.set "type"]

    val get_passphrase : t -> Buffer.t or_string [@@js.get "passphrase"]

    val set_passphrase : t -> Buffer.t or_string -> unit [@@js.set "passphrase"]
  end
  [@@js.scope "PrivateKeyInput"]

  module PublicKeyInput : sig
    type t = crypto_PublicKeyInput

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_key : t -> Buffer.t or_string [@@js.get "key"]

    val set_key : t -> Buffer.t or_string -> unit [@@js.set "key"]

    val get_format : t -> crypto_KeyFormat [@@js.get "format"]

    val set_format : t -> crypto_KeyFormat -> unit [@@js.set "format"]

    val get_type
      :  t
      -> ([ `pkcs1 [@js "pkcs1"] | `spki [@js "spki"] ][@js.enum])
      [@@js.get "type"]

    val set_type : t -> ([ `pkcs1 | `spki ][@js.enum]) -> unit [@@js.set "type"]
  end
  [@@js.scope "PublicKeyInput"]

  val createPrivateKey
    :  key:(Buffer.t, crypto_PrivateKeyInput) union2 or_string
    -> crypto_KeyObject
    [@@js.global "createPrivateKey"]

  val createPublicKey
    :  key:
         ( ([ `U_s21_pkcs1 of crypto_PublicKeyInput
            | `U_s23_private of crypto_KeyObject
            | `U_s24_public of crypto_KeyObject
            | `U_s27_secret of crypto_KeyObject
            | `U_s28_spki of crypto_PublicKeyInput
            ]
           [@js.union on_field "type"])
         , Buffer.t )
         or_
         or_string
    -> crypto_KeyObject
    [@@js.global "createPublicKey"]

  val createSecretKey : key:ArrayBufferView.t -> crypto_KeyObject
    [@@js.global "createSecretKey"]

  val createSign
    :  algorithm:string
    -> ?options:Stream.WritableOptions.t
    -> unit
    -> crypto_Signer
    [@@js.global "createSign"]

  module DSAEncoding : sig
    type t =
      ([ `der [@js "der"]
       | `ieee_p1363 [@js "ieee-p1363"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module SigningOptions : sig
    type t = crypto_SigningOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_padding : t -> int [@@js.get "padding"]

    val set_padding : t -> int -> unit [@@js.set "padding"]

    val get_saltLength : t -> int [@@js.get "saltLength"]

    val set_saltLength : t -> int -> unit [@@js.set "saltLength"]

    val get_dsaEncoding : t -> crypto_DSAEncoding [@@js.get "dsaEncoding"]

    val set_dsaEncoding : t -> crypto_DSAEncoding -> unit
      [@@js.set "dsaEncoding"]
  end
  [@@js.scope "SigningOptions"]

  module SignPrivateKeyInput : sig
    type t = crypto_SignPrivateKeyInput

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> crypto_PrivateKeyInput [@@js.cast]

    val cast' : t -> crypto_SigningOptions [@@js.cast]
  end
  [@@js.scope "SignPrivateKeyInput"]

  module SignKeyObjectInput : sig
    type t = crypto_SignKeyObjectInput

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_key : t -> crypto_KeyObject [@@js.get "key"]

    val set_key : t -> crypto_KeyObject -> unit [@@js.set "key"]

    val cast : t -> crypto_SigningOptions [@@js.cast]
  end
  [@@js.scope "SignKeyObjectInput"]

  module VerifyPublicKeyInput : sig
    type t = crypto_VerifyPublicKeyInput

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> crypto_PublicKeyInput [@@js.cast]

    val cast' : t -> crypto_SigningOptions [@@js.cast]
  end
  [@@js.scope "VerifyPublicKeyInput"]

  module VerifyKeyObjectInput : sig
    type t = crypto_VerifyKeyObjectInput

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_key : t -> crypto_KeyObject [@@js.get "key"]

    val set_key : t -> crypto_KeyObject -> unit [@@js.set "key"]

    val cast : t -> crypto_SigningOptions [@@js.cast]
  end
  [@@js.scope "VerifyKeyObjectInput"]

  module KeyLike : sig
    type t = (Buffer.t, crypto_KeyObject) union2 or_string

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Signer : sig
    type t = crypto_Signer

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]

    val update : t -> data:crypto_BinaryLike -> t [@@js.call "update"]

    val update' : t -> data:string -> input_encoding:crypto_Encoding -> t
      [@@js.call "update"]

    val sign
      :  t
      -> private_key:
           ( ([ `U_s11_der of crypto_SignKeyObjectInput
              | `U_s18_ieee_p1363 of crypto_SignKeyObjectInput
              ]
             [@js.union on_field "dsaEncoding"])
           , ([ `U_s21_pkcs1 of crypto_SignPrivateKeyInput
              | `U_s22_pkcs8 of crypto_SignPrivateKeyInput
              | `U_s23_private of crypto_KeyLike
              | `U_s24_public of crypto_KeyLike
              | `U_s26_sec1 of crypto_SignPrivateKeyInput
              | `U_s27_secret of crypto_KeyLike
              ]
             [@js.union on_field "type"]) )
           union2
      -> Buffer.t
      [@@js.call "sign"]

    val sign'
      :  t
      -> private_key:
           ( ([ `U_s11_der of crypto_SignKeyObjectInput
              | `U_s18_ieee_p1363 of crypto_SignKeyObjectInput
              ]
             [@js.union on_field "dsaEncoding"])
           , ([ `U_s21_pkcs1 of crypto_SignPrivateKeyInput
              | `U_s22_pkcs8 of crypto_SignPrivateKeyInput
              | `U_s23_private of crypto_KeyLike
              | `U_s24_public of crypto_KeyLike
              | `U_s26_sec1 of crypto_SignPrivateKeyInput
              | `U_s27_secret of crypto_KeyLike
              ]
             [@js.union on_field "type"]) )
           union2
      -> output_format:crypto_BinaryToTextEncoding
      -> string
      [@@js.call "sign"]

    val cast : t -> Stream.Writable.t [@@js.cast]
  end
  [@@js.scope "Signer"]

  val createVerify
    :  algorithm:string
    -> ?options:Stream.WritableOptions.t
    -> unit
    -> crypto_Verify
    [@@js.global "createVerify"]

  module Verify : sig
    type t = crypto_Verify

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]

    val update : t -> data:crypto_BinaryLike -> t [@@js.call "update"]

    val update' : t -> data:string -> input_encoding:crypto_Encoding -> t
      [@@js.call "update"]

    val verify
      :  t
      -> object_:
           ( ([ `U_s11_der of crypto_VerifyKeyObjectInput
              | `U_s18_ieee_p1363 of crypto_VerifyKeyObjectInput
              ]
             [@js.union on_field "dsaEncoding"])
           , ([ `U_s21_pkcs1 of crypto_VerifyPublicKeyInput
              | `U_s23_private of crypto_KeyLike
              | `U_s24_public of crypto_KeyLike
              | `U_s27_secret of crypto_KeyLike
              | `U_s28_spki of crypto_VerifyPublicKeyInput
              ]
             [@js.union on_field "type"]) )
           union2
      -> signature:ArrayBufferView.t
      -> bool
      [@@js.call "verify"]

    val verify'
      :  t
      -> object_:
           ( ([ `U_s11_der of crypto_VerifyKeyObjectInput
              | `U_s18_ieee_p1363 of crypto_VerifyKeyObjectInput
              ]
             [@js.union on_field "dsaEncoding"])
           , ([ `U_s21_pkcs1 of crypto_VerifyPublicKeyInput
              | `U_s23_private of crypto_KeyLike
              | `U_s24_public of crypto_KeyLike
              | `U_s27_secret of crypto_KeyLike
              | `U_s28_spki of crypto_VerifyPublicKeyInput
              ]
             [@js.union on_field "type"]) )
           union2
      -> signature:string
      -> ?signature_format:crypto_BinaryToTextEncoding
      -> unit
      -> bool
      [@@js.call "verify"]

    val cast : t -> Stream.Writable.t [@@js.cast]
  end
  [@@js.scope "Verify"]

  val createDiffieHellman
    :  prime_length:int
    -> ?generator:ArrayBufferView.t or_number
    -> unit
    -> crypto_DiffieHellman
    [@@js.global "createDiffieHellman"]

  val createDiffieHellman : prime:ArrayBufferView.t -> crypto_DiffieHellman
    [@@js.global "createDiffieHellman"]

  val createDiffieHellman
    :  prime:string
    -> prime_encoding:crypto_BinaryToTextEncoding
    -> crypto_DiffieHellman
    [@@js.global "createDiffieHellman"]

  val createDiffieHellman
    :  prime:string
    -> prime_encoding:crypto_BinaryToTextEncoding
    -> generator:ArrayBufferView.t or_number
    -> crypto_DiffieHellman
    [@@js.global "createDiffieHellman"]

  val createDiffieHellman
    :  prime:string
    -> prime_encoding:crypto_BinaryToTextEncoding
    -> generator:string
    -> generator_encoding:crypto_BinaryToTextEncoding
    -> crypto_DiffieHellman
    [@@js.global "createDiffieHellman"]

  module DiffieHellman : sig
    type t = crypto_DiffieHellman

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]

    val generateKeys : t -> Buffer.t [@@js.call "generateKeys"]

    val generateKeys' : t -> encoding:crypto_BinaryToTextEncoding -> string
      [@@js.call "generateKeys"]

    val computeSecret : t -> other_public_key:ArrayBufferView.t -> Buffer.t
      [@@js.call "computeSecret"]

    val computeSecret'
      :  t
      -> other_public_key:string
      -> input_encoding:crypto_BinaryToTextEncoding
      -> Buffer.t
      [@@js.call "computeSecret"]

    val computeSecret''
      :  t
      -> other_public_key:ArrayBufferView.t
      -> output_encoding:crypto_BinaryToTextEncoding
      -> string
      [@@js.call "computeSecret"]

    val computeSecret'''
      :  t
      -> other_public_key:string
      -> input_encoding:crypto_BinaryToTextEncoding
      -> output_encoding:crypto_BinaryToTextEncoding
      -> string
      [@@js.call "computeSecret"]

    val getPrime : t -> Buffer.t [@@js.call "getPrime"]

    val getPrime' : t -> encoding:crypto_BinaryToTextEncoding -> string
      [@@js.call "getPrime"]

    val getGenerator : t -> Buffer.t [@@js.call "getGenerator"]

    val getGenerator' : t -> encoding:crypto_BinaryToTextEncoding -> string
      [@@js.call "getGenerator"]

    val getPublicKey : t -> Buffer.t [@@js.call "getPublicKey"]

    val getPublicKey' : t -> encoding:crypto_BinaryToTextEncoding -> string
      [@@js.call "getPublicKey"]

    val getPrivateKey : t -> Buffer.t [@@js.call "getPrivateKey"]

    val getPrivateKey' : t -> encoding:crypto_BinaryToTextEncoding -> string
      [@@js.call "getPrivateKey"]

    val setPublicKey : t -> public_key:ArrayBufferView.t -> unit
      [@@js.call "setPublicKey"]

    val setPublicKey'
      :  t
      -> public_key:string
      -> encoding:BufferEncoding.t
      -> unit
      [@@js.call "setPublicKey"]

    val setPrivateKey : t -> private_key:ArrayBufferView.t -> unit
      [@@js.call "setPrivateKey"]

    val setPrivateKey'
      :  t
      -> private_key:string
      -> encoding:BufferEncoding.t
      -> unit
      [@@js.call "setPrivateKey"]

    val get_verifyError : t -> int [@@js.get "verifyError"]

    val set_verifyError : t -> int -> unit [@@js.set "verifyError"]
  end
  [@@js.scope "DiffieHellman"]

  val getDiffieHellman : group_name:string -> crypto_DiffieHellman
    [@@js.global "getDiffieHellman"]

  val pbkdf2
    :  password:crypto_BinaryLike
    -> salt:crypto_BinaryLike
    -> iterations:int
    -> keylen:int
    -> digest:string
    -> callback:(err:Error.t or_null -> derivedKey:Buffer.t -> any)
    -> unit
    [@@js.global "pbkdf2"]

  val pbkdf2Sync
    :  password:crypto_BinaryLike
    -> salt:crypto_BinaryLike
    -> iterations:int
    -> keylen:int
    -> digest:string
    -> Buffer.t
    [@@js.global "pbkdf2Sync"]

  val randomBytes : size:int -> Buffer.t [@@js.global "randomBytes"]

  val randomBytes
    :  size:int
    -> callback:(err:Error.t or_null -> buf:Buffer.t -> unit)
    -> unit
    [@@js.global "randomBytes"]

  val pseudoRandomBytes : size:int -> Buffer.t [@@js.global "pseudoRandomBytes"]

  val pseudoRandomBytes
    :  size:int
    -> callback:(err:Error.t or_null -> buf:Buffer.t -> unit)
    -> unit
    [@@js.global "pseudoRandomBytes"]

  val randomInt : max:int -> int [@@js.global "randomInt"]

  val randomInt : min:int -> max:int -> int [@@js.global "randomInt"]

  val randomInt
    :  max:int
    -> callback:(err:Error.t or_null -> value:int -> unit)
    -> unit
    [@@js.global "randomInt"]

  val randomInt
    :  min:int
    -> max:int
    -> callback:(err:Error.t or_null -> value:int -> unit)
    -> unit
    [@@js.global "randomInt"]

  val randomFillSync : buffer:'T -> ?offset:int -> ?size:int -> unit -> 'T
    [@@js.global "randomFillSync"]

  val randomFill
    :  buffer:'T
    -> callback:(err:Error.t or_null -> buf:'T -> unit)
    -> unit
    [@@js.global "randomFill"]

  val randomFill
    :  buffer:'T
    -> offset:int
    -> callback:(err:Error.t or_null -> buf:'T -> unit)
    -> unit
    [@@js.global "randomFill"]

  val randomFill
    :  buffer:'T
    -> offset:int
    -> size:int
    -> callback:(err:Error.t or_null -> buf:'T -> unit)
    -> unit
    [@@js.global "randomFill"]

  module ScryptOptions : sig
    type t = crypto_ScryptOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_cost : t -> int [@@js.get "cost"]

    val set_cost : t -> int -> unit [@@js.set "cost"]

    val get_blockSize : t -> int [@@js.get "blockSize"]

    val set_blockSize : t -> int -> unit [@@js.set "blockSize"]

    val get_parallelization : t -> int [@@js.get "parallelization"]

    val set_parallelization : t -> int -> unit [@@js.set "parallelization"]

    val get_N : t -> int [@@js.get "N"]

    val set_N : t -> int -> unit [@@js.set "N"]

    val get_r : t -> int [@@js.get "r"]

    val set_r : t -> int -> unit [@@js.set "r"]

    val get_p : t -> int [@@js.get "p"]

    val set_p : t -> int -> unit [@@js.set "p"]

    val get_maxmem : t -> int [@@js.get "maxmem"]

    val set_maxmem : t -> int -> unit [@@js.set "maxmem"]
  end
  [@@js.scope "ScryptOptions"]

  val scrypt
    :  password:crypto_BinaryLike
    -> salt:crypto_BinaryLike
    -> keylen:int
    -> callback:(err:Error.t or_null -> derivedKey:Buffer.t -> unit)
    -> unit
    [@@js.global "scrypt"]

  val scrypt
    :  password:crypto_BinaryLike
    -> salt:crypto_BinaryLike
    -> keylen:int
    -> options:crypto_ScryptOptions
    -> callback:(err:Error.t or_null -> derivedKey:Buffer.t -> unit)
    -> unit
    [@@js.global "scrypt"]

  val scryptSync
    :  password:crypto_BinaryLike
    -> salt:crypto_BinaryLike
    -> keylen:int
    -> ?options:crypto_ScryptOptions
    -> unit
    -> Buffer.t
    [@@js.global "scryptSync"]

  module RsaPublicKey : sig
    type t = crypto_RsaPublicKey

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_key : t -> crypto_KeyLike [@@js.get "key"]

    val set_key : t -> crypto_KeyLike -> unit [@@js.set "key"]

    val get_padding : t -> int [@@js.get "padding"]

    val set_padding : t -> int -> unit [@@js.set "padding"]
  end
  [@@js.scope "RsaPublicKey"]

  module RsaPrivateKey : sig
    type t = crypto_RsaPrivateKey

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_key : t -> crypto_KeyLike [@@js.get "key"]

    val set_key : t -> crypto_KeyLike -> unit [@@js.set "key"]

    val get_passphrase : t -> string [@@js.get "passphrase"]

    val set_passphrase : t -> string -> unit [@@js.set "passphrase"]

    val get_oaepHash : t -> string [@@js.get "oaepHash"]

    val set_oaepHash : t -> string -> unit [@@js.set "oaepHash"]

    val get_oaepLabel : t -> TypedArray.t [@@js.get "oaepLabel"]

    val set_oaepLabel : t -> TypedArray.t -> unit [@@js.set "oaepLabel"]

    val get_padding : t -> int [@@js.get "padding"]

    val set_padding : t -> int -> unit [@@js.set "padding"]
  end
  [@@js.scope "RsaPrivateKey"]

  val publicEncrypt
    :  key:(crypto_KeyLike, crypto_RsaPrivateKey, crypto_RsaPublicKey) union3
    -> buffer:ArrayBufferView.t
    -> Buffer.t
    [@@js.global "publicEncrypt"]

  val publicDecrypt
    :  key:(crypto_KeyLike, crypto_RsaPrivateKey, crypto_RsaPublicKey) union3
    -> buffer:ArrayBufferView.t
    -> Buffer.t
    [@@js.global "publicDecrypt"]

  val privateDecrypt
    :  private_key:(crypto_KeyLike, crypto_RsaPrivateKey) union2
    -> buffer:ArrayBufferView.t
    -> Buffer.t
    [@@js.global "privateDecrypt"]

  val privateEncrypt
    :  private_key:(crypto_KeyLike, crypto_RsaPrivateKey) union2
    -> buffer:ArrayBufferView.t
    -> Buffer.t
    [@@js.global "privateEncrypt"]

  val getCiphers : unit -> string list [@@js.global "getCiphers"]

  val getCurves : unit -> string list [@@js.global "getCurves"]

  val getFips : unit -> ([ `L_n_0 [@js 0] | `L_n_1 [@js 1] ][@js.enum])
    [@@js.global "getFips"]

  val getHashes : unit -> string list [@@js.global "getHashes"]

  module ECDH : sig
    type t = crypto_ECDH

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]

    val convertKey
      :  key:crypto_BinaryLike
      -> curve:string
      -> ?inputEncoding:crypto_BinaryToTextEncoding
      -> ?outputEncoding:([ `base64 | `hex | `latin1 ][@js.enum])
      -> ?format:([ `compressed | `hybrid | `uncompressed ][@js.enum])
      -> unit
      -> Buffer.t or_string
      [@@js.global "convertKey"]

    val generateKeys : t -> Buffer.t [@@js.call "generateKeys"]

    val generateKeys'
      :  t
      -> encoding:crypto_BinaryToTextEncoding
      -> ?format:crypto_ECDHKeyFormat
      -> unit
      -> string
      [@@js.call "generateKeys"]

    val computeSecret : t -> other_public_key:ArrayBufferView.t -> Buffer.t
      [@@js.call "computeSecret"]

    val computeSecret'
      :  t
      -> other_public_key:string
      -> input_encoding:crypto_BinaryToTextEncoding
      -> Buffer.t
      [@@js.call "computeSecret"]

    val computeSecret''
      :  t
      -> other_public_key:ArrayBufferView.t
      -> output_encoding:crypto_BinaryToTextEncoding
      -> string
      [@@js.call "computeSecret"]

    val computeSecret'''
      :  t
      -> other_public_key:string
      -> input_encoding:crypto_BinaryToTextEncoding
      -> output_encoding:crypto_BinaryToTextEncoding
      -> string
      [@@js.call "computeSecret"]

    val getPrivateKey : t -> Buffer.t [@@js.call "getPrivateKey"]

    val getPrivateKey' : t -> encoding:crypto_BinaryToTextEncoding -> string
      [@@js.call "getPrivateKey"]

    val getPublicKey : t -> Buffer.t [@@js.call "getPublicKey"]

    val getPublicKey'
      :  t
      -> encoding:crypto_BinaryToTextEncoding
      -> ?format:crypto_ECDHKeyFormat
      -> unit
      -> string
      [@@js.call "getPublicKey"]

    val setPrivateKey : t -> private_key:ArrayBufferView.t -> unit
      [@@js.call "setPrivateKey"]

    val setPrivateKey'
      :  t
      -> private_key:string
      -> encoding:crypto_BinaryToTextEncoding
      -> unit
      [@@js.call "setPrivateKey"]
  end
  [@@js.scope "ECDH"]

  val createECDH : curve_name:string -> crypto_ECDH [@@js.global "createECDH"]

  val timingSafeEqual : a:ArrayBufferView.t -> b:ArrayBufferView.t -> bool
    [@@js.global "timingSafeEqual"]

  val dEFAULT_ENCODING : BufferEncoding.t [@@js.global "DEFAULT_ENCODING"]

  module KeyType : sig
    type t =
      ([ `dsa [@js "dsa"]
       | `ec [@js "ec"]
       | `ed25519 [@js "ed25519"]
       | `ed448 [@js "ed448"]
       | `rsa [@js "rsa"]
       | `x25519 [@js "x25519"]
       | `x448 [@js "x448"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module KeyFormat : sig
    type t =
      ([ `der [@js "der"]
       | `pem [@js "pem"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module BasePrivateKeyEncodingOptions : sig
    type 'T t = 'T crypto_BasePrivateKeyEncodingOptions

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val get_format : 'T t -> 'T [@@js.get "format"]

    val set_format : 'T t -> 'T -> unit [@@js.set "format"]

    val get_cipher : 'T t -> string [@@js.get "cipher"]

    val set_cipher : 'T t -> string -> unit [@@js.set "cipher"]

    val get_passphrase : 'T t -> string [@@js.get "passphrase"]

    val set_passphrase : 'T t -> string -> unit [@@js.set "passphrase"]
  end
  [@@js.scope "BasePrivateKeyEncodingOptions"]

  module KeyPairKeyObjectResult : sig
    type t = crypto_KeyPairKeyObjectResult

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_publicKey : t -> crypto_KeyObject [@@js.get "publicKey"]

    val set_publicKey : t -> crypto_KeyObject -> unit [@@js.set "publicKey"]

    val get_privateKey : t -> crypto_KeyObject [@@js.get "privateKey"]

    val set_privateKey : t -> crypto_KeyObject -> unit [@@js.set "privateKey"]
  end
  [@@js.scope "KeyPairKeyObjectResult"]

  module ED25519KeyPairKeyObjectOptions : sig
    type t = crypto_ED25519KeyPairKeyObjectOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module ED448KeyPairKeyObjectOptions : sig
    type t = crypto_ED448KeyPairKeyObjectOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module X25519KeyPairKeyObjectOptions : sig
    type t = crypto_X25519KeyPairKeyObjectOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module X448KeyPairKeyObjectOptions : sig
    type t = crypto_X448KeyPairKeyObjectOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module ECKeyPairKeyObjectOptions : sig
    type t = crypto_ECKeyPairKeyObjectOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_namedCurve : t -> string [@@js.get "namedCurve"]

    val set_namedCurve : t -> string -> unit [@@js.set "namedCurve"]
  end
  [@@js.scope "ECKeyPairKeyObjectOptions"]

  module RSAKeyPairKeyObjectOptions : sig
    type t = crypto_RSAKeyPairKeyObjectOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_modulusLength : t -> int [@@js.get "modulusLength"]

    val set_modulusLength : t -> int -> unit [@@js.set "modulusLength"]

    val get_publicExponent : t -> int [@@js.get "publicExponent"]

    val set_publicExponent : t -> int -> unit [@@js.set "publicExponent"]
  end
  [@@js.scope "RSAKeyPairKeyObjectOptions"]

  module DSAKeyPairKeyObjectOptions : sig
    type t = crypto_DSAKeyPairKeyObjectOptions

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_modulusLength : t -> int [@@js.get "modulusLength"]

    val set_modulusLength : t -> int -> unit [@@js.set "modulusLength"]

    val get_divisorLength : t -> int [@@js.get "divisorLength"]

    val set_divisorLength : t -> int -> unit [@@js.set "divisorLength"]
  end
  [@@js.scope "DSAKeyPairKeyObjectOptions"]

  module RSAKeyPairOptions : sig
    type ('PubF, 'PrivF) t = ('PubF, 'PrivF) crypto_RSAKeyPairOptions

    val t_to_js
      :  ('PubF -> Ojs.t)
      -> ('PrivF -> Ojs.t)
      -> ('PubF, 'PrivF) t
      -> Ojs.t

    val t_of_js
      :  (Ojs.t -> 'PubF)
      -> (Ojs.t -> 'PrivF)
      -> Ojs.t
      -> ('PubF, 'PrivF) t

    val get_modulusLength : ('PubF, 'PrivF) t -> int [@@js.get "modulusLength"]

    val set_modulusLength : ('PubF, 'PrivF) t -> int -> unit
      [@@js.set "modulusLength"]

    val get_publicExponent : ('PubF, 'PrivF) t -> int
      [@@js.get "publicExponent"]

    val set_publicExponent : ('PubF, 'PrivF) t -> int -> unit
      [@@js.set "publicExponent"]

    val get_publicKeyEncoding : ('PubF, 'PrivF) t -> AnonymousInterface9.t
      [@@js.get "publicKeyEncoding"]

    val set_publicKeyEncoding
      :  ('PubF, 'PrivF) t
      -> AnonymousInterface9.t
      -> unit
      [@@js.set "publicKeyEncoding"]

    val get_privateKeyEncoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF crypto_BasePrivateKeyEncodingOptions
         , AnonymousInterface8.t )
         intersection2
      [@@js.get "privateKeyEncoding"]

    val set_privateKeyEncoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF crypto_BasePrivateKeyEncodingOptions
         , AnonymousInterface8.t )
         intersection2
      -> unit
      [@@js.set "privateKeyEncoding"]
  end
  [@@js.scope "RSAKeyPairOptions"]

  module DSAKeyPairOptions : sig
    type ('PubF, 'PrivF) t = ('PubF, 'PrivF) crypto_DSAKeyPairOptions

    val t_to_js
      :  ('PubF -> Ojs.t)
      -> ('PrivF -> Ojs.t)
      -> ('PubF, 'PrivF) t
      -> Ojs.t

    val t_of_js
      :  (Ojs.t -> 'PubF)
      -> (Ojs.t -> 'PrivF)
      -> Ojs.t
      -> ('PubF, 'PrivF) t

    val get_modulusLength : ('PubF, 'PrivF) t -> int [@@js.get "modulusLength"]

    val set_modulusLength : ('PubF, 'PrivF) t -> int -> unit
      [@@js.set "modulusLength"]

    val get_divisorLength : ('PubF, 'PrivF) t -> int [@@js.get "divisorLength"]

    val set_divisorLength : ('PubF, 'PrivF) t -> int -> unit
      [@@js.set "divisorLength"]

    val get_publicKeyEncoding : ('PubF, 'PrivF) t -> AnonymousInterface7.t
      [@@js.get "publicKeyEncoding"]

    val set_publicKeyEncoding
      :  ('PubF, 'PrivF) t
      -> AnonymousInterface7.t
      -> unit
      [@@js.set "publicKeyEncoding"]

    val get_privateKeyEncoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF crypto_BasePrivateKeyEncodingOptions
         , AnonymousInterface6.t )
         intersection2
      [@@js.get "privateKeyEncoding"]

    val set_privateKeyEncoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF crypto_BasePrivateKeyEncodingOptions
         , AnonymousInterface6.t )
         intersection2
      -> unit
      [@@js.set "privateKeyEncoding"]
  end
  [@@js.scope "DSAKeyPairOptions"]

  module ECKeyPairOptions : sig
    type ('PubF, 'PrivF) t = ('PubF, 'PrivF) crypto_ECKeyPairOptions

    val t_to_js
      :  ('PubF -> Ojs.t)
      -> ('PrivF -> Ojs.t)
      -> ('PubF, 'PrivF) t
      -> Ojs.t

    val t_of_js
      :  (Ojs.t -> 'PubF)
      -> (Ojs.t -> 'PrivF)
      -> Ojs.t
      -> ('PubF, 'PrivF) t

    val get_namedCurve : ('PubF, 'PrivF) t -> string [@@js.get "namedCurve"]

    val set_namedCurve : ('PubF, 'PrivF) t -> string -> unit
      [@@js.set "namedCurve"]

    val get_publicKeyEncoding : ('PubF, 'PrivF) t -> AnonymousInterface9.t
      [@@js.get "publicKeyEncoding"]

    val set_publicKeyEncoding
      :  ('PubF, 'PrivF) t
      -> AnonymousInterface9.t
      -> unit
      [@@js.set "publicKeyEncoding"]

    val get_privateKeyEncoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF crypto_BasePrivateKeyEncodingOptions
         , AnonymousInterface10.t )
         intersection2
      [@@js.get "privateKeyEncoding"]

    val set_privateKeyEncoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF crypto_BasePrivateKeyEncodingOptions
         , AnonymousInterface10.t )
         intersection2
      -> unit
      [@@js.set "privateKeyEncoding"]
  end
  [@@js.scope "ECKeyPairOptions"]

  module ED25519KeyPairOptions : sig
    type ('PubF, 'PrivF) t = ('PubF, 'PrivF) crypto_ED25519KeyPairOptions

    val t_to_js
      :  ('PubF -> Ojs.t)
      -> ('PrivF -> Ojs.t)
      -> ('PubF, 'PrivF) t
      -> Ojs.t

    val t_of_js
      :  (Ojs.t -> 'PubF)
      -> (Ojs.t -> 'PrivF)
      -> Ojs.t
      -> ('PubF, 'PrivF) t

    val get_publicKeyEncoding : ('PubF, 'PrivF) t -> AnonymousInterface7.t
      [@@js.get "publicKeyEncoding"]

    val set_publicKeyEncoding
      :  ('PubF, 'PrivF) t
      -> AnonymousInterface7.t
      -> unit
      [@@js.set "publicKeyEncoding"]

    val get_privateKeyEncoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF crypto_BasePrivateKeyEncodingOptions
         , AnonymousInterface6.t )
         intersection2
      [@@js.get "privateKeyEncoding"]

    val set_privateKeyEncoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF crypto_BasePrivateKeyEncodingOptions
         , AnonymousInterface6.t )
         intersection2
      -> unit
      [@@js.set "privateKeyEncoding"]
  end
  [@@js.scope "ED25519KeyPairOptions"]

  module ED448KeyPairOptions : sig
    type ('PubF, 'PrivF) t = ('PubF, 'PrivF) crypto_ED448KeyPairOptions

    val t_to_js
      :  ('PubF -> Ojs.t)
      -> ('PrivF -> Ojs.t)
      -> ('PubF, 'PrivF) t
      -> Ojs.t

    val t_of_js
      :  (Ojs.t -> 'PubF)
      -> (Ojs.t -> 'PrivF)
      -> Ojs.t
      -> ('PubF, 'PrivF) t

    val get_publicKeyEncoding : ('PubF, 'PrivF) t -> AnonymousInterface7.t
      [@@js.get "publicKeyEncoding"]

    val set_publicKeyEncoding
      :  ('PubF, 'PrivF) t
      -> AnonymousInterface7.t
      -> unit
      [@@js.set "publicKeyEncoding"]

    val get_privateKeyEncoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF crypto_BasePrivateKeyEncodingOptions
         , AnonymousInterface6.t )
         intersection2
      [@@js.get "privateKeyEncoding"]

    val set_privateKeyEncoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF crypto_BasePrivateKeyEncodingOptions
         , AnonymousInterface6.t )
         intersection2
      -> unit
      [@@js.set "privateKeyEncoding"]
  end
  [@@js.scope "ED448KeyPairOptions"]

  module X25519KeyPairOptions : sig
    type ('PubF, 'PrivF) t = ('PubF, 'PrivF) crypto_X25519KeyPairOptions

    val t_to_js
      :  ('PubF -> Ojs.t)
      -> ('PrivF -> Ojs.t)
      -> ('PubF, 'PrivF) t
      -> Ojs.t

    val t_of_js
      :  (Ojs.t -> 'PubF)
      -> (Ojs.t -> 'PrivF)
      -> Ojs.t
      -> ('PubF, 'PrivF) t

    val get_publicKeyEncoding : ('PubF, 'PrivF) t -> AnonymousInterface7.t
      [@@js.get "publicKeyEncoding"]

    val set_publicKeyEncoding
      :  ('PubF, 'PrivF) t
      -> AnonymousInterface7.t
      -> unit
      [@@js.set "publicKeyEncoding"]

    val get_privateKeyEncoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF crypto_BasePrivateKeyEncodingOptions
         , AnonymousInterface6.t )
         intersection2
      [@@js.get "privateKeyEncoding"]

    val set_privateKeyEncoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF crypto_BasePrivateKeyEncodingOptions
         , AnonymousInterface6.t )
         intersection2
      -> unit
      [@@js.set "privateKeyEncoding"]
  end
  [@@js.scope "X25519KeyPairOptions"]

  module X448KeyPairOptions : sig
    type ('PubF, 'PrivF) t = ('PubF, 'PrivF) crypto_X448KeyPairOptions

    val t_to_js
      :  ('PubF -> Ojs.t)
      -> ('PrivF -> Ojs.t)
      -> ('PubF, 'PrivF) t
      -> Ojs.t

    val t_of_js
      :  (Ojs.t -> 'PubF)
      -> (Ojs.t -> 'PrivF)
      -> Ojs.t
      -> ('PubF, 'PrivF) t

    val get_publicKeyEncoding : ('PubF, 'PrivF) t -> AnonymousInterface7.t
      [@@js.get "publicKeyEncoding"]

    val set_publicKeyEncoding
      :  ('PubF, 'PrivF) t
      -> AnonymousInterface7.t
      -> unit
      [@@js.set "publicKeyEncoding"]

    val get_privateKeyEncoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF crypto_BasePrivateKeyEncodingOptions
         , AnonymousInterface6.t )
         intersection2
      [@@js.get "privateKeyEncoding"]

    val set_privateKeyEncoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF crypto_BasePrivateKeyEncodingOptions
         , AnonymousInterface6.t )
         intersection2
      -> unit
      [@@js.set "privateKeyEncoding"]
  end
  [@@js.scope "X448KeyPairOptions"]

  module KeyPairSyncResult : sig
    type ('T1, 'T2) t = ('T1, 'T2) crypto_KeyPairSyncResult

    val t_to_js : ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t

    val get_publicKey : ('T1, 'T2) t -> 'T1 [@@js.get "publicKey"]

    val set_publicKey : ('T1, 'T2) t -> 'T1 -> unit [@@js.set "publicKey"]

    val get_privateKey : ('T1, 'T2) t -> 'T2 [@@js.get "privateKey"]

    val set_privateKey : ('T1, 'T2) t -> 'T2 -> unit [@@js.set "privateKey"]
  end
  [@@js.scope "KeyPairSyncResult"]

  val generateKeyPairSync
    :  type_:([ `rsa ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) crypto_RSAKeyPairOptions
    -> (string, string) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `rsa ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `der ][@js.enum])) crypto_RSAKeyPairOptions
    -> (string, Buffer.t) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `rsa ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `pem ][@js.enum])) crypto_RSAKeyPairOptions
    -> (Buffer.t, string) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `rsa ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `der ][@js.enum])) crypto_RSAKeyPairOptions
    -> (Buffer.t, Buffer.t) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `rsa ][@js.enum])
    -> options:crypto_RSAKeyPairKeyObjectOptions
    -> crypto_KeyPairKeyObjectResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `dsa ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) crypto_DSAKeyPairOptions
    -> (string, string) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `dsa ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `der ][@js.enum])) crypto_DSAKeyPairOptions
    -> (string, Buffer.t) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `dsa ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `pem ][@js.enum])) crypto_DSAKeyPairOptions
    -> (Buffer.t, string) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `dsa ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `der ][@js.enum])) crypto_DSAKeyPairOptions
    -> (Buffer.t, Buffer.t) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `dsa ][@js.enum])
    -> options:crypto_DSAKeyPairKeyObjectOptions
    -> crypto_KeyPairKeyObjectResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `ec ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) crypto_ECKeyPairOptions
    -> (string, string) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `ec ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `der ][@js.enum])) crypto_ECKeyPairOptions
    -> (string, Buffer.t) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `ec ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `pem ][@js.enum])) crypto_ECKeyPairOptions
    -> (Buffer.t, string) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `ec ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `der ][@js.enum])) crypto_ECKeyPairOptions
    -> (Buffer.t, Buffer.t) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `ec ][@js.enum])
    -> options:crypto_ECKeyPairKeyObjectOptions
    -> crypto_KeyPairKeyObjectResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `ed25519 ][@js.enum])
    -> options:
         ( ([ `pem ][@js.enum])
         , ([ `pem ][@js.enum]) )
         crypto_ED25519KeyPairOptions
    -> (string, string) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `ed25519 ][@js.enum])
    -> options:
         ( ([ `pem ][@js.enum])
         , ([ `der ][@js.enum]) )
         crypto_ED25519KeyPairOptions
    -> (string, Buffer.t) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `ed25519 ][@js.enum])
    -> options:
         ( ([ `der ][@js.enum])
         , ([ `pem ][@js.enum]) )
         crypto_ED25519KeyPairOptions
    -> (Buffer.t, string) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `ed25519 ][@js.enum])
    -> options:
         ( ([ `der ][@js.enum])
         , ([ `der ][@js.enum]) )
         crypto_ED25519KeyPairOptions
    -> (Buffer.t, Buffer.t) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `ed25519 ][@js.enum])
    -> ?options:crypto_ED25519KeyPairKeyObjectOptions
    -> unit
    -> crypto_KeyPairKeyObjectResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `ed448 ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) crypto_ED448KeyPairOptions
    -> (string, string) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `ed448 ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `der ][@js.enum])) crypto_ED448KeyPairOptions
    -> (string, Buffer.t) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `ed448 ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `pem ][@js.enum])) crypto_ED448KeyPairOptions
    -> (Buffer.t, string) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `ed448 ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `der ][@js.enum])) crypto_ED448KeyPairOptions
    -> (Buffer.t, Buffer.t) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `ed448 ][@js.enum])
    -> ?options:crypto_ED448KeyPairKeyObjectOptions
    -> unit
    -> crypto_KeyPairKeyObjectResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `x25519 ][@js.enum])
    -> options:
         ( ([ `pem ][@js.enum])
         , ([ `pem ][@js.enum]) )
         crypto_X25519KeyPairOptions
    -> (string, string) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `x25519 ][@js.enum])
    -> options:
         ( ([ `pem ][@js.enum])
         , ([ `der ][@js.enum]) )
         crypto_X25519KeyPairOptions
    -> (string, Buffer.t) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `x25519 ][@js.enum])
    -> options:
         ( ([ `der ][@js.enum])
         , ([ `pem ][@js.enum]) )
         crypto_X25519KeyPairOptions
    -> (Buffer.t, string) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `x25519 ][@js.enum])
    -> options:
         ( ([ `der ][@js.enum])
         , ([ `der ][@js.enum]) )
         crypto_X25519KeyPairOptions
    -> (Buffer.t, Buffer.t) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `x25519 ][@js.enum])
    -> ?options:crypto_X25519KeyPairKeyObjectOptions
    -> unit
    -> crypto_KeyPairKeyObjectResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `x448 ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) crypto_X448KeyPairOptions
    -> (string, string) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `x448 ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `der ][@js.enum])) crypto_X448KeyPairOptions
    -> (string, Buffer.t) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `x448 ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `pem ][@js.enum])) crypto_X448KeyPairOptions
    -> (Buffer.t, string) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `x448 ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `der ][@js.enum])) crypto_X448KeyPairOptions
    -> (Buffer.t, Buffer.t) crypto_KeyPairSyncResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPairSync
    :  type_:([ `x448 ][@js.enum])
    -> ?options:crypto_X448KeyPairKeyObjectOptions
    -> unit
    -> crypto_KeyPairKeyObjectResult
    [@@js.global "generateKeyPairSync"]

  val generateKeyPair
    :  type_:([ `rsa ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) crypto_RSAKeyPairOptions
    -> callback:
         (err:Error.t or_null -> publicKey:string -> privateKey:string -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `rsa ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `der ][@js.enum])) crypto_RSAKeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:string
          -> privateKey:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `rsa ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `pem ][@js.enum])) crypto_RSAKeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:Buffer.t
          -> privateKey:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `rsa ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `der ][@js.enum])) crypto_RSAKeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:Buffer.t
          -> privateKey:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `rsa ][@js.enum])
    -> options:crypto_RSAKeyPairKeyObjectOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:crypto_KeyObject
          -> privateKey:crypto_KeyObject
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `dsa ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) crypto_DSAKeyPairOptions
    -> callback:
         (err:Error.t or_null -> publicKey:string -> privateKey:string -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `dsa ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `der ][@js.enum])) crypto_DSAKeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:string
          -> privateKey:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `dsa ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `pem ][@js.enum])) crypto_DSAKeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:Buffer.t
          -> privateKey:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `dsa ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `der ][@js.enum])) crypto_DSAKeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:Buffer.t
          -> privateKey:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `dsa ][@js.enum])
    -> options:crypto_DSAKeyPairKeyObjectOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:crypto_KeyObject
          -> privateKey:crypto_KeyObject
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `ec ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) crypto_ECKeyPairOptions
    -> callback:
         (err:Error.t or_null -> publicKey:string -> privateKey:string -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `ec ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `der ][@js.enum])) crypto_ECKeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:string
          -> privateKey:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `ec ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `pem ][@js.enum])) crypto_ECKeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:Buffer.t
          -> privateKey:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `ec ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `der ][@js.enum])) crypto_ECKeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:Buffer.t
          -> privateKey:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `ec ][@js.enum])
    -> options:crypto_ECKeyPairKeyObjectOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:crypto_KeyObject
          -> privateKey:crypto_KeyObject
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `ed25519 ][@js.enum])
    -> options:
         ( ([ `pem ][@js.enum])
         , ([ `pem ][@js.enum]) )
         crypto_ED25519KeyPairOptions
    -> callback:
         (err:Error.t or_null -> publicKey:string -> privateKey:string -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `ed25519 ][@js.enum])
    -> options:
         ( ([ `pem ][@js.enum])
         , ([ `der ][@js.enum]) )
         crypto_ED25519KeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:string
          -> privateKey:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `ed25519 ][@js.enum])
    -> options:
         ( ([ `der ][@js.enum])
         , ([ `pem ][@js.enum]) )
         crypto_ED25519KeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:Buffer.t
          -> privateKey:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `ed25519 ][@js.enum])
    -> options:
         ( ([ `der ][@js.enum])
         , ([ `der ][@js.enum]) )
         crypto_ED25519KeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:Buffer.t
          -> privateKey:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `ed25519 ][@js.enum])
    -> options:crypto_ED25519KeyPairKeyObjectOptions or_undefined
    -> callback:
         (err:Error.t or_null
          -> publicKey:crypto_KeyObject
          -> privateKey:crypto_KeyObject
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `ed448 ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) crypto_ED448KeyPairOptions
    -> callback:
         (err:Error.t or_null -> publicKey:string -> privateKey:string -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `ed448 ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `der ][@js.enum])) crypto_ED448KeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:string
          -> privateKey:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `ed448 ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `pem ][@js.enum])) crypto_ED448KeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:Buffer.t
          -> privateKey:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `ed448 ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `der ][@js.enum])) crypto_ED448KeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:Buffer.t
          -> privateKey:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `ed448 ][@js.enum])
    -> options:crypto_ED448KeyPairKeyObjectOptions or_undefined
    -> callback:
         (err:Error.t or_null
          -> publicKey:crypto_KeyObject
          -> privateKey:crypto_KeyObject
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `x25519 ][@js.enum])
    -> options:
         ( ([ `pem ][@js.enum])
         , ([ `pem ][@js.enum]) )
         crypto_X25519KeyPairOptions
    -> callback:
         (err:Error.t or_null -> publicKey:string -> privateKey:string -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `x25519 ][@js.enum])
    -> options:
         ( ([ `pem ][@js.enum])
         , ([ `der ][@js.enum]) )
         crypto_X25519KeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:string
          -> privateKey:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `x25519 ][@js.enum])
    -> options:
         ( ([ `der ][@js.enum])
         , ([ `pem ][@js.enum]) )
         crypto_X25519KeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:Buffer.t
          -> privateKey:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `x25519 ][@js.enum])
    -> options:
         ( ([ `der ][@js.enum])
         , ([ `der ][@js.enum]) )
         crypto_X25519KeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:Buffer.t
          -> privateKey:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `x25519 ][@js.enum])
    -> options:crypto_X25519KeyPairKeyObjectOptions or_undefined
    -> callback:
         (err:Error.t or_null
          -> publicKey:crypto_KeyObject
          -> privateKey:crypto_KeyObject
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `x448 ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) crypto_X448KeyPairOptions
    -> callback:
         (err:Error.t or_null -> publicKey:string -> privateKey:string -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `x448 ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `der ][@js.enum])) crypto_X448KeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:string
          -> privateKey:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `x448 ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `pem ][@js.enum])) crypto_X448KeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:Buffer.t
          -> privateKey:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `x448 ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `der ][@js.enum])) crypto_X448KeyPairOptions
    -> callback:
         (err:Error.t or_null
          -> publicKey:Buffer.t
          -> privateKey:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generateKeyPair
    :  type_:([ `x448 ][@js.enum])
    -> options:crypto_X448KeyPairKeyObjectOptions or_undefined
    -> callback:
         (err:Error.t or_null
          -> publicKey:crypto_KeyObject
          -> privateKey:crypto_KeyObject
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  module GenerateKeyPair : sig
    val __promisify__
      :  type_:([ `rsa ][@js.enum])
      -> options:
           (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) crypto_RSAKeyPairOptions
      -> AnonymousInterface5.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `rsa ][@js.enum])
      -> options:
           (([ `pem ][@js.enum]), ([ `der ][@js.enum])) crypto_RSAKeyPairOptions
      -> AnonymousInterface4.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `rsa ][@js.enum])
      -> options:
           (([ `der ][@js.enum]), ([ `pem ][@js.enum])) crypto_RSAKeyPairOptions
      -> AnonymousInterface3.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `rsa ][@js.enum])
      -> options:
           (([ `der ][@js.enum]), ([ `der ][@js.enum])) crypto_RSAKeyPairOptions
      -> AnonymousInterface2.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `rsa ][@js.enum])
      -> options:crypto_RSAKeyPairKeyObjectOptions
      -> crypto_KeyPairKeyObjectResult Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `dsa ][@js.enum])
      -> options:
           (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) crypto_DSAKeyPairOptions
      -> AnonymousInterface5.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `dsa ][@js.enum])
      -> options:
           (([ `pem ][@js.enum]), ([ `der ][@js.enum])) crypto_DSAKeyPairOptions
      -> AnonymousInterface4.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `dsa ][@js.enum])
      -> options:
           (([ `der ][@js.enum]), ([ `pem ][@js.enum])) crypto_DSAKeyPairOptions
      -> AnonymousInterface3.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `dsa ][@js.enum])
      -> options:
           (([ `der ][@js.enum]), ([ `der ][@js.enum])) crypto_DSAKeyPairOptions
      -> AnonymousInterface2.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `dsa ][@js.enum])
      -> options:crypto_DSAKeyPairKeyObjectOptions
      -> crypto_KeyPairKeyObjectResult Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ec ][@js.enum])
      -> options:
           (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) crypto_ECKeyPairOptions
      -> AnonymousInterface5.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ec ][@js.enum])
      -> options:
           (([ `pem ][@js.enum]), ([ `der ][@js.enum])) crypto_ECKeyPairOptions
      -> AnonymousInterface4.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ec ][@js.enum])
      -> options:
           (([ `der ][@js.enum]), ([ `pem ][@js.enum])) crypto_ECKeyPairOptions
      -> AnonymousInterface3.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ec ][@js.enum])
      -> options:
           (([ `der ][@js.enum]), ([ `der ][@js.enum])) crypto_ECKeyPairOptions
      -> AnonymousInterface2.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ec ][@js.enum])
      -> options:crypto_ECKeyPairKeyObjectOptions
      -> crypto_KeyPairKeyObjectResult Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ed25519 ][@js.enum])
      -> options:
           ( ([ `pem ][@js.enum])
           , ([ `pem ][@js.enum]) )
           crypto_ED25519KeyPairOptions
      -> AnonymousInterface5.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ed25519 ][@js.enum])
      -> options:
           ( ([ `pem ][@js.enum])
           , ([ `der ][@js.enum]) )
           crypto_ED25519KeyPairOptions
      -> AnonymousInterface4.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ed25519 ][@js.enum])
      -> options:
           ( ([ `der ][@js.enum])
           , ([ `pem ][@js.enum]) )
           crypto_ED25519KeyPairOptions
      -> AnonymousInterface3.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ed25519 ][@js.enum])
      -> options:
           ( ([ `der ][@js.enum])
           , ([ `der ][@js.enum]) )
           crypto_ED25519KeyPairOptions
      -> AnonymousInterface2.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ed25519 ][@js.enum])
      -> ?options:crypto_ED25519KeyPairKeyObjectOptions
      -> unit
      -> crypto_KeyPairKeyObjectResult Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ed448 ][@js.enum])
      -> options:
           ( ([ `pem ][@js.enum])
           , ([ `pem ][@js.enum]) )
           crypto_ED448KeyPairOptions
      -> AnonymousInterface5.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ed448 ][@js.enum])
      -> options:
           ( ([ `pem ][@js.enum])
           , ([ `der ][@js.enum]) )
           crypto_ED448KeyPairOptions
      -> AnonymousInterface4.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ed448 ][@js.enum])
      -> options:
           ( ([ `der ][@js.enum])
           , ([ `pem ][@js.enum]) )
           crypto_ED448KeyPairOptions
      -> AnonymousInterface3.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ed448 ][@js.enum])
      -> options:
           ( ([ `der ][@js.enum])
           , ([ `der ][@js.enum]) )
           crypto_ED448KeyPairOptions
      -> AnonymousInterface2.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ed448 ][@js.enum])
      -> ?options:crypto_ED448KeyPairKeyObjectOptions
      -> unit
      -> crypto_KeyPairKeyObjectResult Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `x25519 ][@js.enum])
      -> options:
           ( ([ `pem ][@js.enum])
           , ([ `pem ][@js.enum]) )
           crypto_X25519KeyPairOptions
      -> AnonymousInterface5.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `x25519 ][@js.enum])
      -> options:
           ( ([ `pem ][@js.enum])
           , ([ `der ][@js.enum]) )
           crypto_X25519KeyPairOptions
      -> AnonymousInterface4.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `x25519 ][@js.enum])
      -> options:
           ( ([ `der ][@js.enum])
           , ([ `pem ][@js.enum]) )
           crypto_X25519KeyPairOptions
      -> AnonymousInterface3.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `x25519 ][@js.enum])
      -> options:
           ( ([ `der ][@js.enum])
           , ([ `der ][@js.enum]) )
           crypto_X25519KeyPairOptions
      -> AnonymousInterface2.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `x25519 ][@js.enum])
      -> ?options:crypto_X25519KeyPairKeyObjectOptions
      -> unit
      -> crypto_KeyPairKeyObjectResult Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `x448 ][@js.enum])
      -> options:
           ( ([ `pem ][@js.enum])
           , ([ `pem ][@js.enum]) )
           crypto_X448KeyPairOptions
      -> AnonymousInterface5.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `x448 ][@js.enum])
      -> options:
           ( ([ `pem ][@js.enum])
           , ([ `der ][@js.enum]) )
           crypto_X448KeyPairOptions
      -> AnonymousInterface4.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `x448 ][@js.enum])
      -> options:
           ( ([ `der ][@js.enum])
           , ([ `pem ][@js.enum]) )
           crypto_X448KeyPairOptions
      -> AnonymousInterface3.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `x448 ][@js.enum])
      -> options:
           ( ([ `der ][@js.enum])
           , ([ `der ][@js.enum]) )
           crypto_X448KeyPairOptions
      -> AnonymousInterface2.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `x448 ][@js.enum])
      -> ?options:crypto_X448KeyPairKeyObjectOptions
      -> unit
      -> crypto_KeyPairKeyObjectResult Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "generateKeyPair"]

  val sign
    :  algorithm:string or_null_or_undefined
    -> data:ArrayBufferView.t
    -> key:
         ( ([ `U_s11_der of crypto_SignKeyObjectInput
            | `U_s18_ieee_p1363 of crypto_SignKeyObjectInput
            ]
           [@js.union on_field "dsaEncoding"])
         , ([ `U_s21_pkcs1 of crypto_SignPrivateKeyInput
            | `U_s22_pkcs8 of crypto_SignPrivateKeyInput
            | `U_s23_private of crypto_KeyLike
            | `U_s24_public of crypto_KeyLike
            | `U_s26_sec1 of crypto_SignPrivateKeyInput
            | `U_s27_secret of crypto_KeyLike
            ]
           [@js.union on_field "type"]) )
         union2
    -> Buffer.t
    [@@js.global "sign"]

  val verify
    :  algorithm:string or_null_or_undefined
    -> data:ArrayBufferView.t
    -> key:
         ( ([ `U_s11_der of crypto_VerifyKeyObjectInput
            | `U_s18_ieee_p1363 of crypto_VerifyKeyObjectInput
            ]
           [@js.union on_field "dsaEncoding"])
         , ([ `U_s21_pkcs1 of crypto_VerifyPublicKeyInput
            | `U_s23_private of crypto_KeyLike
            | `U_s24_public of crypto_KeyLike
            | `U_s27_secret of crypto_KeyLike
            | `U_s28_spki of crypto_VerifyPublicKeyInput
            ]
           [@js.union on_field "type"]) )
         union2
    -> signature:ArrayBufferView.t
    -> bool
    [@@js.global "verify"]

  val diffieHellman : options:AnonymousInterface1.t -> Buffer.t
    [@@js.global "diffieHellman"]
end
[@@js.scope Import.crypto]
