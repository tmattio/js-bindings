[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Crypto : sig
  open Node_stream

  module BinaryLike : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

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
    type 'T t

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

  module KeyObject : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]

    val get_asymmetric_key_type : t -> KeyType.t [@@js.get "asymmetricKeyType"]

    val set_asymmetric_key_type : t -> KeyType.t -> unit
      [@@js.set "asymmetricKeyType"]

    val get_asymmetric_key_size : t -> int [@@js.get "asymmetricKeySize"]

    val set_asymmetric_key_size : t -> int -> unit
      [@@js.set "asymmetricKeySize"]

    val export
      :  t
      -> options:([ `pem ][@js.enum]) KeyExportOptions.t
      -> Buffer.t or_string
      [@@js.call "export"]

    val export'
      :  t
      -> ?options:([ `der ][@js.enum]) KeyExportOptions.t
      -> unit
      -> Buffer.t
      [@@js.call "export"]

    val get_symmetric_key_size : t -> int [@@js.get "symmetricKeySize"]

    val set_symmetric_key_size : t -> int -> unit [@@js.set "symmetricKeySize"]

    val get_type : t -> KeyObjectType.t [@@js.get "type"]

    val set_type : t -> KeyObjectType.t -> unit [@@js.set "type"]
  end
  [@@js.scope "KeyObject"]

  module CipherKey : sig
    type t = (BinaryLike.t, KeyObject.t) union2

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Certificate : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val export_challenge : t -> spkac:BinaryLike.t -> Buffer.t
      [@@js.call "exportChallenge"]

    val export_public_key
      :  t
      -> spkac:BinaryLike.t
      -> ?encoding:string
      -> unit
      -> Buffer.t
      [@@js.call "exportPublicKey"]

    val verify_spkac : t -> spkac:ArrayBufferView.t -> bool
      [@@js.call "verifySpkac"]
  end
  [@@js.scope "Certificate"]

  module AnonymousInterface11 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : t -> Certificate.t [@@js.apply_newable]

    val apply : t -> Certificate.t [@@js.apply]
  end

  val certificate : (Certificate.t, AnonymousInterface11.t) intersection2
    [@@js.global "Certificate"]

  module Constants : sig
    val o_penssl_version_number : int [@@js.global "OPENSSL_VERSION_NUMBER"]

    val ssl_op_all : int [@@js.global "SSL_OP_ALL"]

    val ssl_op_allow_unsafe_legacy_renegotiation : int
      [@@js.global "SSL_OP_ALLOW_UNSAFE_LEGACY_RENEGOTIATION"]

    val ssl_op_cipher_server_preference : int
      [@@js.global "SSL_OP_CIPHER_SERVER_PREFERENCE"]

    val ssl_op_cisco_anyconnect : int [@@js.global "SSL_OP_CISCO_ANYCONNECT"]

    val ssl_op_cookie_exchange : int [@@js.global "SSL_OP_COOKIE_EXCHANGE"]

    val ssl_op_cryptopro_tlsext_bug : int
      [@@js.global "SSL_OP_CRYPTOPRO_TLSEXT_BUG"]

    val ssl_op_dont_insert_empty_fragments : int
      [@@js.global "SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS"]

    val ssl_op_ephemeral_rsa : int [@@js.global "SSL_OP_EPHEMERAL_RSA"]

    val ssl_op_legacy_server_connect : int
      [@@js.global "SSL_OP_LEGACY_SERVER_CONNECT"]

    val ssl_op_microsoft_big_sslv3_BUFFER : int
      [@@js.global "SSL_OP_MICROSOFT_BIG_SSLV3_BUFFER"]

    val ssl_op_microsoft_sess_id_bug : int
      [@@js.global "SSL_OP_MICROSOFT_SESS_ID_BUG"]

    val ssl_op_msie_sslv2_RSA_PADDING : int
      [@@js.global "SSL_OP_MSIE_SSLV2_RSA_PADDING"]

    val ssl_op_netscape_ca_dn_bug : int
      [@@js.global "SSL_OP_NETSCAPE_CA_DN_BUG"]

    val ssl_op_netscape_challenge_bug : int
      [@@js.global "SSL_OP_NETSCAPE_CHALLENGE_BUG"]

    val ssl_op_netscape_demo_cipher_change_bug : int
      [@@js.global "SSL_OP_NETSCAPE_DEMO_CIPHER_CHANGE_BUG"]

    val ssl_op_netscape_reuse_cipher_change_bug : int
      [@@js.global "SSL_OP_NETSCAPE_REUSE_CIPHER_CHANGE_BUG"]

    val ssl_op_no_compression : int [@@js.global "SSL_OP_NO_COMPRESSION"]

    val ssl_op_no_query_mtu : int [@@js.global "SSL_OP_NO_QUERY_MTU"]

    val ssl_op_no_session_resumption_on_renegotiation : int
      [@@js.global "SSL_OP_NO_SESSION_RESUMPTION_ON_RENEGOTIATION"]

    val ssl_op_no_ss_lv2 : int [@@js.global "SSL_OP_NO_SSLv2"]

    val ssl_op_no_ss_lv3 : int [@@js.global "SSL_OP_NO_SSLv3"]

    val ssl_op_no_ticket : int [@@js.global "SSL_OP_NO_TICKET"]

    val ssl_op_no_tl_sv1 : int [@@js.global "SSL_OP_NO_TLSv1"]

    val ssl_op_no_tl_sv1_1 : int [@@js.global "SSL_OP_NO_TLSv1_1"]

    val ssl_op_no_tl_sv1_2 : int [@@js.global "SSL_OP_NO_TLSv1_2"]

    val ssl_op_pkcs1_CHECK_1 : int [@@js.global "SSL_OP_PKCS1_CHECK_1"]

    val ssl_op_pkcs1_CHECK_2 : int [@@js.global "SSL_OP_PKCS1_CHECK_2"]

    val ssl_op_single_dh_use : int [@@js.global "SSL_OP_SINGLE_DH_USE"]

    val ssl_op_single_ecdh_use : int [@@js.global "SSL_OP_SINGLE_ECDH_USE"]

    val ssl_op_ssleay080_CLIENT_DH_BUG : int
      [@@js.global "SSL_OP_SSLEAY_080_CLIENT_DH_BUG"]

    val ssl_op_sslref2_REUSE_CERT_TYPE_BUG : int
      [@@js.global "SSL_OP_SSLREF2_REUSE_CERT_TYPE_BUG"]

    val ssl_op_tls_block_padding_bug : int
      [@@js.global "SSL_OP_TLS_BLOCK_PADDING_BUG"]

    val ssl_op_tls_d5_BUG : int [@@js.global "SSL_OP_TLS_D5_BUG"]

    val ssl_op_tls_rollback_bug : int [@@js.global "SSL_OP_TLS_ROLLBACK_BUG"]

    val engine_method_rsa : int [@@js.global "ENGINE_METHOD_RSA"]

    val engine_method_dsa : int [@@js.global "ENGINE_METHOD_DSA"]

    val engine_method_dh : int [@@js.global "ENGINE_METHOD_DH"]

    val engine_method_rand : int [@@js.global "ENGINE_METHOD_RAND"]

    val engine_method_ec : int [@@js.global "ENGINE_METHOD_EC"]

    val engine_method_ciphers : int [@@js.global "ENGINE_METHOD_CIPHERS"]

    val engine_method_digests : int [@@js.global "ENGINE_METHOD_DIGESTS"]

    val engine_method_pkey_meths : int [@@js.global "ENGINE_METHOD_PKEY_METHS"]

    val engine_method_pkey_asn1_METHS : int
      [@@js.global "ENGINE_METHOD_PKEY_ASN1_METHS"]

    val engine_method_all : int [@@js.global "ENGINE_METHOD_ALL"]

    val engine_method_none : int [@@js.global "ENGINE_METHOD_NONE"]

    val dh_check_p_not_safe_prime : int
      [@@js.global "DH_CHECK_P_NOT_SAFE_PRIME"]

    val dh_check_p_not_prime : int [@@js.global "DH_CHECK_P_NOT_PRIME"]

    val dh_unable_to_check_generator : int
      [@@js.global "DH_UNABLE_TO_CHECK_GENERATOR"]

    val dh_not_suitable_generator : int
      [@@js.global "DH_NOT_SUITABLE_GENERATOR"]

    val alpn_enabled : int [@@js.global "ALPN_ENABLED"]

    val rsa_pkcs1_PADDING : int [@@js.global "RSA_PKCS1_PADDING"]

    val rsa_sslv23_PADDING : int [@@js.global "RSA_SSLV23_PADDING"]

    val rsa_no_padding : int [@@js.global "RSA_NO_PADDING"]

    val rsa_pkcs1_OAEP_PADDING : int [@@js.global "RSA_PKCS1_OAEP_PADDING"]

    val rsa_x931_PADDING : int [@@js.global "RSA_X931_PADDING"]

    val rsa_pkcs1_PSS_PADDING : int [@@js.global "RSA_PKCS1_PSS_PADDING"]

    val rsa_pss_saltlen_digest : int [@@js.global "RSA_PSS_SALTLEN_DIGEST"]

    val rsa_pss_saltlen_max_sign : int [@@js.global "RSA_PSS_SALTLEN_MAX_SIGN"]

    val rsa_pss_saltlen_auto : int [@@js.global "RSA_PSS_SALTLEN_AUTO"]

    val point_conversion_compressed : int
      [@@js.global "POINT_CONVERSION_COMPRESSED"]

    val point_conversion_uncompressed : int
      [@@js.global "POINT_CONVERSION_UNCOMPRESSED"]

    val point_conversion_hybrid : int [@@js.global "POINT_CONVERSION_HYBRID"]

    val default_core_cipher_list : string [@@js.global "defaultCoreCipherList"]

    val default_cipher_list : string [@@js.global "defaultCipherList"]
  end
  [@@js.scope "constants"]

  module HashOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_output_length : t -> int [@@js.get "outputLength"]

    val set_output_length : t -> int -> unit [@@js.set "outputLength"]

    val cast : t -> Stream.TransformOptions.t [@@js.cast]
  end
  [@@js.scope "HashOptions"]

  val fips : bool [@@js.global "fips"]

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
      ( ( BinaryToTextEncoding.t
        , CharacterEncoding.t
        , LegacyCharacterEncoding.t )
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
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]

    val copy : t -> t [@@js.call "copy"]

    val update : t -> data:BinaryLike.t -> t [@@js.call "update"]

    val update' : t -> data:string -> input_encoding:Encoding.t -> t
      [@@js.call "update"]

    val digest : t -> Buffer.t [@@js.call "digest"]

    val digest' : t -> encoding:BinaryToTextEncoding.t -> string
      [@@js.call "digest"]

    val cast : t -> Stream.Transform.t [@@js.cast]
  end
  [@@js.scope "Hash"]

  module Hmac : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]

    val update : t -> data:BinaryLike.t -> t [@@js.call "update"]

    val update' : t -> data:string -> input_encoding:Encoding.t -> t
      [@@js.call "update"]

    val digest : t -> Buffer.t [@@js.call "digest"]

    val digest' : t -> encoding:BinaryToTextEncoding.t -> string
      [@@js.call "digest"]

    val cast : t -> Stream.Transform.t [@@js.cast]
  end
  [@@js.scope "Hmac"]

  val create_hash : algorithm:string -> ?options:HashOptions.t -> unit -> Hash.t
    [@@js.global "createHash"]

  val create_hmac
    :  algorithm:string
    -> key:(BinaryLike.t, KeyObject.t) union2
    -> ?options:Stream.TransformOptions.t
    -> unit
    -> Hmac.t
    [@@js.global "createHmac"]

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

  module CipherCCMOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_auth_tag_length : t -> int [@@js.get "authTagLength"]

    val set_auth_tag_length : t -> int -> unit [@@js.set "authTagLength"]

    val cast : t -> Stream.TransformOptions.t [@@js.cast]
  end
  [@@js.scope "CipherCCMOptions"]

  module CipherGCMOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_auth_tag_length : t -> int [@@js.get "authTagLength"]

    val set_auth_tag_length : t -> int -> unit [@@js.set "authTagLength"]

    val cast : t -> Stream.TransformOptions.t [@@js.cast]
  end
  [@@js.scope "CipherGCMOptions"]

  module Cipher : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]

    val update : t -> data:BinaryLike.t -> Buffer.t [@@js.call "update"]

    val update' : t -> data:string -> input_encoding:Encoding.t -> Buffer.t
      [@@js.call "update"]

    val update''
      :  t
      -> data:ArrayBufferView.t
      -> input_encoding:never or_undefined
      -> output_encoding:Encoding.t
      -> string
      [@@js.call "update"]

    val update'''
      :  t
      -> data:string
      -> input_encoding:Encoding.t or_undefined
      -> output_encoding:Encoding.t
      -> string
      [@@js.call "update"]

    val final : t -> Buffer.t [@@js.call "final"]

    val final' : t -> output_encoding:BufferEncoding.t -> string
      [@@js.call "final"]

    val set_auto_padding : t -> ?auto_padding:bool -> unit -> t
      [@@js.call "setAutoPadding"]

    val cast : t -> Stream.Transform.t [@@js.cast]
  end
  [@@js.scope "Cipher"]

  module AnonymousInterface0 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_plaintext_length : t -> int [@@js.get "plaintextLength"]

    val set_plaintext_length : t -> int -> unit [@@js.set "plaintextLength"]
  end

  module CipherCCM : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val set_aad
      :  t
      -> buffer:ArrayBufferView.t
      -> options:AnonymousInterface0.t
      -> t
      [@@js.call "setAAD"]

    val get_auth_tag : t -> Buffer.t [@@js.call "getAuthTag"]

    val cast : t -> Cipher.t [@@js.cast]
  end
  [@@js.scope "CipherCCM"]

  module CipherGCM : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val set_aad
      :  t
      -> buffer:ArrayBufferView.t
      -> ?options:AnonymousInterface0.t
      -> unit
      -> t
      [@@js.call "setAAD"]

    val get_auth_tag : t -> Buffer.t [@@js.call "getAuthTag"]

    val cast : t -> Cipher.t [@@js.cast]
  end
  [@@js.scope "CipherGCM"]

  val create_cipher
    :  algorithm:CipherCCMTypes.t
    -> password:BinaryLike.t
    -> options:CipherCCMOptions.t
    -> CipherCCM.t
    [@@js.global "createCipher"]

  val create_cipher
    :  algorithm:CipherGCMTypes.t
    -> password:BinaryLike.t
    -> ?options:CipherGCMOptions.t
    -> unit
    -> CipherGCM.t
    [@@js.global "createCipher"]

  val create_cipher
    :  algorithm:string
    -> password:BinaryLike.t
    -> ?options:Stream.TransformOptions.t
    -> unit
    -> Cipher.t
    [@@js.global "createCipher"]

  val create_cipheriv
    :  algorithm:CipherCCMTypes.t
    -> key:CipherKey.t
    -> iv:BinaryLike.t or_null
    -> options:CipherCCMOptions.t
    -> CipherCCM.t
    [@@js.global "createCipheriv"]

  val create_cipheriv
    :  algorithm:CipherGCMTypes.t
    -> key:CipherKey.t
    -> iv:BinaryLike.t or_null
    -> ?options:CipherGCMOptions.t
    -> unit
    -> CipherGCM.t
    [@@js.global "createCipheriv"]

  val create_cipheriv
    :  algorithm:string
    -> key:CipherKey.t
    -> iv:BinaryLike.t or_null
    -> ?options:Stream.TransformOptions.t
    -> unit
    -> Cipher.t
    [@@js.global "createCipheriv"]

  module Decipher : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]

    val update : t -> data:ArrayBufferView.t -> Buffer.t [@@js.call "update"]

    val update' : t -> data:string -> input_encoding:Encoding.t -> Buffer.t
      [@@js.call "update"]

    val update''
      :  t
      -> data:ArrayBufferView.t
      -> input_encoding:never or_undefined
      -> output_encoding:Encoding.t
      -> string
      [@@js.call "update"]

    val update'''
      :  t
      -> data:string
      -> input_encoding:Encoding.t or_undefined
      -> output_encoding:Encoding.t
      -> string
      [@@js.call "update"]

    val final : t -> Buffer.t [@@js.call "final"]

    val final' : t -> output_encoding:BufferEncoding.t -> string
      [@@js.call "final"]

    val set_auto_padding : t -> ?auto_padding:bool -> unit -> t
      [@@js.call "setAutoPadding"]

    val cast : t -> Stream.Transform.t [@@js.cast]
  end
  [@@js.scope "Decipher"]

  module DecipherCCM : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val set_auth_tag : t -> buffer:ArrayBufferView.t -> t
      [@@js.call "setAuthTag"]

    val set_aad
      :  t
      -> buffer:ArrayBufferView.t
      -> options:AnonymousInterface0.t
      -> t
      [@@js.call "setAAD"]

    val cast : t -> Decipher.t [@@js.cast]
  end
  [@@js.scope "DecipherCCM"]

  module DecipherGCM : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val set_auth_tag : t -> buffer:ArrayBufferView.t -> t
      [@@js.call "setAuthTag"]

    val set_aad
      :  t
      -> buffer:ArrayBufferView.t
      -> ?options:AnonymousInterface0.t
      -> unit
      -> t
      [@@js.call "setAAD"]

    val cast : t -> Decipher.t [@@js.cast]
  end
  [@@js.scope "DecipherGCM"]

  val create_decipher
    :  algorithm:CipherCCMTypes.t
    -> password:BinaryLike.t
    -> options:CipherCCMOptions.t
    -> DecipherCCM.t
    [@@js.global "createDecipher"]

  val create_decipher
    :  algorithm:CipherGCMTypes.t
    -> password:BinaryLike.t
    -> ?options:CipherGCMOptions.t
    -> unit
    -> DecipherGCM.t
    [@@js.global "createDecipher"]

  val create_decipher
    :  algorithm:string
    -> password:BinaryLike.t
    -> ?options:Stream.TransformOptions.t
    -> unit
    -> Decipher.t
    [@@js.global "createDecipher"]

  val create_decipheriv
    :  algorithm:CipherCCMTypes.t
    -> key:CipherKey.t
    -> iv:BinaryLike.t or_null
    -> options:CipherCCMOptions.t
    -> DecipherCCM.t
    [@@js.global "createDecipheriv"]

  val create_decipheriv
    :  algorithm:CipherGCMTypes.t
    -> key:CipherKey.t
    -> iv:BinaryLike.t or_null
    -> ?options:CipherGCMOptions.t
    -> unit
    -> DecipherGCM.t
    [@@js.global "createDecipheriv"]

  val create_decipheriv
    :  algorithm:string
    -> key:CipherKey.t
    -> iv:BinaryLike.t or_null
    -> ?options:Stream.TransformOptions.t
    -> unit
    -> Decipher.t
    [@@js.global "createDecipheriv"]

  module KeyFormat : sig
    type t =
      ([ `der [@js "der"]
       | `pem [@js "pem"]
       ]
      [@js.enum])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module PrivateKeyInput : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_key : t -> Buffer.t or_string [@@js.get "key"]

    val set_key : t -> Buffer.t or_string -> unit [@@js.set "key"]

    val get_format : t -> KeyFormat.t [@@js.get "format"]

    val set_format : t -> KeyFormat.t -> unit [@@js.set "format"]

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
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_key : t -> Buffer.t or_string [@@js.get "key"]

    val set_key : t -> Buffer.t or_string -> unit [@@js.set "key"]

    val get_format : t -> KeyFormat.t [@@js.get "format"]

    val set_format : t -> KeyFormat.t -> unit [@@js.set "format"]

    val get_type
      :  t
      -> ([ `pkcs1 [@js "pkcs1"] | `spki [@js "spki"] ][@js.enum])
      [@@js.get "type"]

    val set_type : t -> ([ `pkcs1 | `spki ][@js.enum]) -> unit [@@js.set "type"]
  end
  [@@js.scope "PublicKeyInput"]

  val create_private_key
    :  key:(Buffer.t, PrivateKeyInput.t) union2 or_string
    -> KeyObject.t
    [@@js.global "createPrivateKey"]

  val create_public_key
    :  key:
         ( ([ `U_s21_pkcs1 of PublicKeyInput.t
            | `U_s23_private of KeyObject.t
            | `U_s24_public of KeyObject.t
            | `U_s27_secret of KeyObject.t
            | `U_s28_spki of PublicKeyInput.t
            ]
           [@js.union on_field "type"])
         , Buffer.t )
         or_
         or_string
    -> KeyObject.t
    [@@js.global "createPublicKey"]

  val create_secret_key : key:ArrayBufferView.t -> KeyObject.t
    [@@js.global "createSecretKey"]

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
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_padding : t -> int [@@js.get "padding"]

    val set_padding : t -> int -> unit [@@js.set "padding"]

    val get_salt_length : t -> int [@@js.get "saltLength"]

    val set_salt_length : t -> int -> unit [@@js.set "saltLength"]

    val get_dsa_encoding : t -> DSAEncoding.t [@@js.get "dsaEncoding"]

    val set_dsa_encoding : t -> DSAEncoding.t -> unit [@@js.set "dsaEncoding"]
  end
  [@@js.scope "SigningOptions"]

  module SignPrivateKeyInput : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> PrivateKeyInput.t [@@js.cast]

    val cast' : t -> SigningOptions.t [@@js.cast]
  end
  [@@js.scope "SignPrivateKeyInput"]

  module SignKeyObjectInput : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_key : t -> KeyObject.t [@@js.get "key"]

    val set_key : t -> KeyObject.t -> unit [@@js.set "key"]

    val cast : t -> SigningOptions.t [@@js.cast]
  end
  [@@js.scope "SignKeyObjectInput"]

  module VerifyPublicKeyInput : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> PublicKeyInput.t [@@js.cast]

    val cast' : t -> SigningOptions.t [@@js.cast]
  end
  [@@js.scope "VerifyPublicKeyInput"]

  module VerifyKeyObjectInput : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_key : t -> KeyObject.t [@@js.get "key"]

    val set_key : t -> KeyObject.t -> unit [@@js.set "key"]

    val cast : t -> SigningOptions.t [@@js.cast]
  end
  [@@js.scope "VerifyKeyObjectInput"]

  module KeyLike : sig
    type t = (Buffer.t, KeyObject.t) union2 or_string

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Signer : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]

    val update : t -> data:BinaryLike.t -> t [@@js.call "update"]

    val update' : t -> data:string -> input_encoding:Encoding.t -> t
      [@@js.call "update"]

    val sign
      :  t
      -> private_key:
           ( ([ `U_s11_der of SignKeyObjectInput.t
              | `U_s18_ieee_p1363 of SignKeyObjectInput.t
              ]
             [@js.union on_field "dsaEncoding"])
           , ([ `U_s21_pkcs1 of SignPrivateKeyInput.t
              | `U_s22_pkcs8 of SignPrivateKeyInput.t
              | `U_s23_private of KeyLike.t
              | `U_s24_public of KeyLike.t
              | `U_s26_sec1 of SignPrivateKeyInput.t
              | `U_s27_secret of KeyLike.t
              ]
             [@js.union on_field "type"]) )
           union2
      -> Buffer.t
      [@@js.call "sign"]

    val sign'
      :  t
      -> private_key:
           ( ([ `U_s11_der of SignKeyObjectInput.t
              | `U_s18_ieee_p1363 of SignKeyObjectInput.t
              ]
             [@js.union on_field "dsaEncoding"])
           , ([ `U_s21_pkcs1 of SignPrivateKeyInput.t
              | `U_s22_pkcs8 of SignPrivateKeyInput.t
              | `U_s23_private of KeyLike.t
              | `U_s24_public of KeyLike.t
              | `U_s26_sec1 of SignPrivateKeyInput.t
              | `U_s27_secret of KeyLike.t
              ]
             [@js.union on_field "type"]) )
           union2
      -> output_format:BinaryToTextEncoding.t
      -> string
      [@@js.call "sign"]

    val cast : t -> Stream.Writable.t [@@js.cast]
  end
  [@@js.scope "Signer"]

  val create_sign
    :  algorithm:string
    -> ?options:Stream.WritableOptions.t
    -> unit
    -> Signer.t
    [@@js.global "createSign"]

  module Verify : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]

    val update : t -> data:BinaryLike.t -> t [@@js.call "update"]

    val update' : t -> data:string -> input_encoding:Encoding.t -> t
      [@@js.call "update"]

    val verify
      :  t
      -> object_:
           ( ([ `U_s11_der of VerifyKeyObjectInput.t
              | `U_s18_ieee_p1363 of VerifyKeyObjectInput.t
              ]
             [@js.union on_field "dsaEncoding"])
           , ([ `U_s21_pkcs1 of VerifyPublicKeyInput.t
              | `U_s23_private of KeyLike.t
              | `U_s24_public of KeyLike.t
              | `U_s27_secret of KeyLike.t
              | `U_s28_spki of VerifyPublicKeyInput.t
              ]
             [@js.union on_field "type"]) )
           union2
      -> signature:ArrayBufferView.t
      -> bool
      [@@js.call "verify"]

    val verify'
      :  t
      -> object_:
           ( ([ `U_s11_der of VerifyKeyObjectInput.t
              | `U_s18_ieee_p1363 of VerifyKeyObjectInput.t
              ]
             [@js.union on_field "dsaEncoding"])
           , ([ `U_s21_pkcs1 of VerifyPublicKeyInput.t
              | `U_s23_private of KeyLike.t
              | `U_s24_public of KeyLike.t
              | `U_s27_secret of KeyLike.t
              | `U_s28_spki of VerifyPublicKeyInput.t
              ]
             [@js.union on_field "type"]) )
           union2
      -> signature:string
      -> ?signature_format:BinaryToTextEncoding.t
      -> unit
      -> bool
      [@@js.call "verify"]

    val cast : t -> Stream.Writable.t [@@js.cast]
  end
  [@@js.scope "Verify"]

  val create_verify
    :  algorithm:string
    -> ?options:Stream.WritableOptions.t
    -> unit
    -> Verify.t
    [@@js.global "createVerify"]

  module DiffieHellman : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]

    val generate_keys : t -> Buffer.t [@@js.call "generateKeys"]

    val generate_keys' : t -> encoding:BinaryToTextEncoding.t -> string
      [@@js.call "generateKeys"]

    val compute_secret : t -> other_public_key:ArrayBufferView.t -> Buffer.t
      [@@js.call "computeSecret"]

    val compute_secret'
      :  t
      -> other_public_key:string
      -> input_encoding:BinaryToTextEncoding.t
      -> Buffer.t
      [@@js.call "computeSecret"]

    val compute_secret''
      :  t
      -> other_public_key:ArrayBufferView.t
      -> output_encoding:BinaryToTextEncoding.t
      -> string
      [@@js.call "computeSecret"]

    val compute_secret'''
      :  t
      -> other_public_key:string
      -> input_encoding:BinaryToTextEncoding.t
      -> output_encoding:BinaryToTextEncoding.t
      -> string
      [@@js.call "computeSecret"]

    val get_prime : t -> Buffer.t [@@js.call "getPrime"]

    val get_prime' : t -> encoding:BinaryToTextEncoding.t -> string
      [@@js.call "getPrime"]

    val get_generator : t -> Buffer.t [@@js.call "getGenerator"]

    val get_generator' : t -> encoding:BinaryToTextEncoding.t -> string
      [@@js.call "getGenerator"]

    val get_public_key : t -> Buffer.t [@@js.call "getPublicKey"]

    val get_public_key' : t -> encoding:BinaryToTextEncoding.t -> string
      [@@js.call "getPublicKey"]

    val get_private_key : t -> Buffer.t [@@js.call "getPrivateKey"]

    val get_private_key' : t -> encoding:BinaryToTextEncoding.t -> string
      [@@js.call "getPrivateKey"]

    val set_public_key : t -> public_key:ArrayBufferView.t -> unit
      [@@js.call "setPublicKey"]

    val set_public_key'
      :  t
      -> public_key:string
      -> encoding:BufferEncoding.t
      -> unit
      [@@js.call "setPublicKey"]

    val set_private_key : t -> private_key:ArrayBufferView.t -> unit
      [@@js.call "setPrivateKey"]

    val set_private_key'
      :  t
      -> private_key:string
      -> encoding:BufferEncoding.t
      -> unit
      [@@js.call "setPrivateKey"]

    val get_verify_error : t -> int [@@js.get "verifyError"]

    val set_verify_error : t -> int -> unit [@@js.set "verifyError"]
  end
  [@@js.scope "DiffieHellman"]

  val create_diffie_hellman
    :  prime_length:int
    -> ?generator:ArrayBufferView.t or_number
    -> unit
    -> DiffieHellman.t
    [@@js.global "createDiffieHellman"]

  val create_diffie_hellman : prime:ArrayBufferView.t -> DiffieHellman.t
    [@@js.global "createDiffieHellman"]

  val create_diffie_hellman
    :  prime:string
    -> prime_encoding:BinaryToTextEncoding.t
    -> DiffieHellman.t
    [@@js.global "createDiffieHellman"]

  val create_diffie_hellman
    :  prime:string
    -> prime_encoding:BinaryToTextEncoding.t
    -> generator:ArrayBufferView.t or_number
    -> DiffieHellman.t
    [@@js.global "createDiffieHellman"]

  val create_diffie_hellman
    :  prime:string
    -> prime_encoding:BinaryToTextEncoding.t
    -> generator:string
    -> generator_encoding:BinaryToTextEncoding.t
    -> DiffieHellman.t
    [@@js.global "createDiffieHellman"]

  val get_diffie_hellman : group_name:string -> DiffieHellman.t
    [@@js.global "getDiffieHellman"]

  val pbkdf2
    :  password:BinaryLike.t
    -> salt:BinaryLike.t
    -> iterations:int
    -> keylen:int
    -> digest:string
    -> callback:(err:Error.t or_null -> derived_key:Buffer.t -> any)
    -> unit
    [@@js.global "pbkdf2"]

  val pbkdf2Sync
    :  password:BinaryLike.t
    -> salt:BinaryLike.t
    -> iterations:int
    -> keylen:int
    -> digest:string
    -> Buffer.t
    [@@js.global "pbkdf2Sync"]

  val random_bytes : size:int -> Buffer.t [@@js.global "randomBytes"]

  val random_bytes
    :  size:int
    -> callback:(err:Error.t or_null -> buf:Buffer.t -> unit)
    -> unit
    [@@js.global "randomBytes"]

  val pseudo_random_bytes : size:int -> Buffer.t
    [@@js.global "pseudoRandomBytes"]

  val pseudo_random_bytes
    :  size:int
    -> callback:(err:Error.t or_null -> buf:Buffer.t -> unit)
    -> unit
    [@@js.global "pseudoRandomBytes"]

  val random_int : max:int -> int [@@js.global "randomInt"]

  val random_int : min:int -> max:int -> int [@@js.global "randomInt"]

  val random_int
    :  max:int
    -> callback:(err:Error.t or_null -> value:int -> unit)
    -> unit
    [@@js.global "randomInt"]

  val random_int
    :  min:int
    -> max:int
    -> callback:(err:Error.t or_null -> value:int -> unit)
    -> unit
    [@@js.global "randomInt"]

  val random_fill_sync : buffer:'T -> ?offset:int -> ?size:int -> unit -> 'T
    [@@js.global "randomFillSync"]

  val random_fill
    :  buffer:'T
    -> callback:(err:Error.t or_null -> buf:'T -> unit)
    -> unit
    [@@js.global "randomFill"]

  val random_fill
    :  buffer:'T
    -> offset:int
    -> callback:(err:Error.t or_null -> buf:'T -> unit)
    -> unit
    [@@js.global "randomFill"]

  val random_fill
    :  buffer:'T
    -> offset:int
    -> size:int
    -> callback:(err:Error.t or_null -> buf:'T -> unit)
    -> unit
    [@@js.global "randomFill"]

  module ScryptOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_cost : t -> int [@@js.get "cost"]

    val set_cost : t -> int -> unit [@@js.set "cost"]

    val get_block_size : t -> int [@@js.get "blockSize"]

    val set_block_size : t -> int -> unit [@@js.set "blockSize"]

    val get_parallelization : t -> int [@@js.get "parallelization"]

    val set_parallelization : t -> int -> unit [@@js.set "parallelization"]

    val get_n : t -> int [@@js.get "N"]

    val set_n : t -> int -> unit [@@js.set "N"]

    val get_r : t -> int [@@js.get "r"]

    val set_r : t -> int -> unit [@@js.set "r"]

    val get_p : t -> int [@@js.get "p"]

    val set_p : t -> int -> unit [@@js.set "p"]

    val get_maxmem : t -> int [@@js.get "maxmem"]

    val set_maxmem : t -> int -> unit [@@js.set "maxmem"]
  end
  [@@js.scope "ScryptOptions"]

  val scrypt
    :  password:BinaryLike.t
    -> salt:BinaryLike.t
    -> keylen:int
    -> callback:(err:Error.t or_null -> derived_key:Buffer.t -> unit)
    -> unit
    [@@js.global "scrypt"]

  val scrypt
    :  password:BinaryLike.t
    -> salt:BinaryLike.t
    -> keylen:int
    -> options:ScryptOptions.t
    -> callback:(err:Error.t or_null -> derived_key:Buffer.t -> unit)
    -> unit
    [@@js.global "scrypt"]

  val scrypt_sync
    :  password:BinaryLike.t
    -> salt:BinaryLike.t
    -> keylen:int
    -> ?options:ScryptOptions.t
    -> unit
    -> Buffer.t
    [@@js.global "scryptSync"]

  module RsaPublicKey : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_key : t -> KeyLike.t [@@js.get "key"]

    val set_key : t -> KeyLike.t -> unit [@@js.set "key"]

    val get_padding : t -> int [@@js.get "padding"]

    val set_padding : t -> int -> unit [@@js.set "padding"]
  end
  [@@js.scope "RsaPublicKey"]

  module RsaPrivateKey : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_key : t -> KeyLike.t [@@js.get "key"]

    val set_key : t -> KeyLike.t -> unit [@@js.set "key"]

    val get_passphrase : t -> string [@@js.get "passphrase"]

    val set_passphrase : t -> string -> unit [@@js.set "passphrase"]

    val get_oaep_hash : t -> string [@@js.get "oaepHash"]

    val set_oaep_hash : t -> string -> unit [@@js.set "oaepHash"]

    val get_oaep_label : t -> TypedArray.t [@@js.get "oaepLabel"]

    val set_oaep_label : t -> TypedArray.t -> unit [@@js.set "oaepLabel"]

    val get_padding : t -> int [@@js.get "padding"]

    val set_padding : t -> int -> unit [@@js.set "padding"]
  end
  [@@js.scope "RsaPrivateKey"]

  val public_encrypt
    :  key:(KeyLike.t, RsaPrivateKey.t, RsaPublicKey.t) union3
    -> buffer:ArrayBufferView.t
    -> Buffer.t
    [@@js.global "publicEncrypt"]

  val public_decrypt
    :  key:(KeyLike.t, RsaPrivateKey.t, RsaPublicKey.t) union3
    -> buffer:ArrayBufferView.t
    -> Buffer.t
    [@@js.global "publicDecrypt"]

  val private_decrypt
    :  private_key:(KeyLike.t, RsaPrivateKey.t) union2
    -> buffer:ArrayBufferView.t
    -> Buffer.t
    [@@js.global "privateDecrypt"]

  val private_encrypt
    :  private_key:(KeyLike.t, RsaPrivateKey.t) union2
    -> buffer:ArrayBufferView.t
    -> Buffer.t
    [@@js.global "privateEncrypt"]

  val get_ciphers : unit -> string list [@@js.global "getCiphers"]

  val get_curves : unit -> string list [@@js.global "getCurves"]

  val get_fips : unit -> ([ `L_n_0 [@js 0] | `L_n_1 [@js 1] ][@js.enum])
    [@@js.global "getFips"]

  val get_hashes : unit -> string list [@@js.global "getHashes"]

  module ECDH : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : unit -> t [@@js.create]

    val convert_key
      :  key:BinaryLike.t
      -> curve:string
      -> ?input_encoding:BinaryToTextEncoding.t
      -> ?output_encoding:([ `base64 | `hex | `latin1 ][@js.enum])
      -> ?format:([ `compressed | `hybrid | `uncompressed ][@js.enum])
      -> unit
      -> Buffer.t or_string
      [@@js.global "convertKey"]

    val generate_keys : t -> Buffer.t [@@js.call "generateKeys"]

    val generate_keys'
      :  t
      -> encoding:BinaryToTextEncoding.t
      -> ?format:ECDHKeyFormat.t
      -> unit
      -> string
      [@@js.call "generateKeys"]

    val compute_secret : t -> other_public_key:ArrayBufferView.t -> Buffer.t
      [@@js.call "computeSecret"]

    val compute_secret'
      :  t
      -> other_public_key:string
      -> input_encoding:BinaryToTextEncoding.t
      -> Buffer.t
      [@@js.call "computeSecret"]

    val compute_secret''
      :  t
      -> other_public_key:ArrayBufferView.t
      -> output_encoding:BinaryToTextEncoding.t
      -> string
      [@@js.call "computeSecret"]

    val compute_secret'''
      :  t
      -> other_public_key:string
      -> input_encoding:BinaryToTextEncoding.t
      -> output_encoding:BinaryToTextEncoding.t
      -> string
      [@@js.call "computeSecret"]

    val get_private_key : t -> Buffer.t [@@js.call "getPrivateKey"]

    val get_private_key' : t -> encoding:BinaryToTextEncoding.t -> string
      [@@js.call "getPrivateKey"]

    val get_public_key : t -> Buffer.t [@@js.call "getPublicKey"]

    val get_public_key'
      :  t
      -> encoding:BinaryToTextEncoding.t
      -> ?format:ECDHKeyFormat.t
      -> unit
      -> string
      [@@js.call "getPublicKey"]

    val set_private_key : t -> private_key:ArrayBufferView.t -> unit
      [@@js.call "setPrivateKey"]

    val set_private_key'
      :  t
      -> private_key:string
      -> encoding:BinaryToTextEncoding.t
      -> unit
      [@@js.call "setPrivateKey"]
  end
  [@@js.scope "ECDH"]

  val create_ecdh : curve_name:string -> ECDH.t [@@js.global "createECDH"]

  val timing_safe_equal : a:ArrayBufferView.t -> b:ArrayBufferView.t -> bool
    [@@js.global "timingSafeEqual"]

  val d_efault_encoding : BufferEncoding.t [@@js.global "DEFAULT_ENCODING"]

  module AnonymousInterface2 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_public_key : t -> Buffer.t [@@js.get "publicKey"]

    val set_public_key : t -> Buffer.t -> unit [@@js.set "publicKey"]

    val get_private_key : t -> Buffer.t [@@js.get "privateKey"]

    val set_private_key : t -> Buffer.t -> unit [@@js.set "privateKey"]
  end

  module AnonymousInterface3 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_public_key : t -> Buffer.t [@@js.get "publicKey"]

    val set_public_key : t -> Buffer.t -> unit [@@js.set "publicKey"]

    val get_private_key : t -> string [@@js.get "privateKey"]

    val set_private_key : t -> string -> unit [@@js.set "privateKey"]
  end

  module AnonymousInterface4 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_public_key : t -> string [@@js.get "publicKey"]

    val set_public_key : t -> string -> unit [@@js.set "publicKey"]

    val get_private_key : t -> Buffer.t [@@js.get "privateKey"]

    val set_private_key : t -> Buffer.t -> unit [@@js.set "privateKey"]
  end

  module AnonymousInterface5 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_public_key : t -> string [@@js.get "publicKey"]

    val set_public_key : t -> string -> unit [@@js.set "publicKey"]

    val get_private_key : t -> string [@@js.get "privateKey"]

    val set_private_key : t -> string -> unit [@@js.set "privateKey"]
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

    val set_type : t -> ([ `pkcs1 | `pkcs8 ][@js.enum]) -> unit
      [@@js.set "type"]
  end

  module AnonymousInterface9 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type
      :  t
      -> ([ `pkcs1 [@js "pkcs1"] | `spki [@js "spki"] ][@js.enum])
      [@@js.get "type"]

    val set_type : t -> ([ `pkcs1 | `spki ][@js.enum]) -> unit [@@js.set "type"]

    val get_format : t -> 'PubF [@@js.get "format"]

    val set_format : t -> 'PubF -> unit [@@js.set "format"]
  end

  module AnonymousInterface10 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_type
      :  t
      -> ([ `pkcs8 [@js "pkcs8"] | `sec1 [@js "sec1"] ][@js.enum])
      [@@js.get "type"]

    val set_type : t -> ([ `pkcs8 | `sec1 ][@js.enum]) -> unit [@@js.set "type"]
  end

  module BasePrivateKeyEncodingOptions : sig
    type 'T t

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
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_public_key : t -> KeyObject.t [@@js.get "publicKey"]

    val set_public_key : t -> KeyObject.t -> unit [@@js.set "publicKey"]

    val get_private_key : t -> KeyObject.t [@@js.get "privateKey"]

    val set_private_key : t -> KeyObject.t -> unit [@@js.set "privateKey"]
  end
  [@@js.scope "KeyPairKeyObjectResult"]

  module ED25519KeyPairKeyObjectOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module ED448KeyPairKeyObjectOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module X25519KeyPairKeyObjectOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module X448KeyPairKeyObjectOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module ECKeyPairKeyObjectOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_named_curve : t -> string [@@js.get "namedCurve"]

    val set_named_curve : t -> string -> unit [@@js.set "namedCurve"]
  end
  [@@js.scope "ECKeyPairKeyObjectOptions"]

  module RSAKeyPairKeyObjectOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_modulus_length : t -> int [@@js.get "modulusLength"]

    val set_modulus_length : t -> int -> unit [@@js.set "modulusLength"]

    val get_public_exponent : t -> int [@@js.get "publicExponent"]

    val set_public_exponent : t -> int -> unit [@@js.set "publicExponent"]
  end
  [@@js.scope "RSAKeyPairKeyObjectOptions"]

  module DSAKeyPairKeyObjectOptions : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_modulus_length : t -> int [@@js.get "modulusLength"]

    val set_modulus_length : t -> int -> unit [@@js.set "modulusLength"]

    val get_divisor_length : t -> int [@@js.get "divisorLength"]

    val set_divisor_length : t -> int -> unit [@@js.set "divisorLength"]
  end
  [@@js.scope "DSAKeyPairKeyObjectOptions"]

  module RSAKeyPairOptions : sig
    type ('PubF, 'PrivF) t

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

    val get_modulus_length : ('PubF, 'PrivF) t -> int [@@js.get "modulusLength"]

    val set_modulus_length : ('PubF, 'PrivF) t -> int -> unit
      [@@js.set "modulusLength"]

    val get_public_exponent : ('PubF, 'PrivF) t -> int
      [@@js.get "publicExponent"]

    val set_public_exponent : ('PubF, 'PrivF) t -> int -> unit
      [@@js.set "publicExponent"]

    val get_public_key_encoding : ('PubF, 'PrivF) t -> AnonymousInterface9.t
      [@@js.get "publicKeyEncoding"]

    val set_public_key_encoding
      :  ('PubF, 'PrivF) t
      -> AnonymousInterface9.t
      -> unit
      [@@js.set "publicKeyEncoding"]

    val get_private_key_encoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF BasePrivateKeyEncodingOptions.t
         , AnonymousInterface8.t )
         intersection2
      [@@js.get "privateKeyEncoding"]

    val set_private_key_encoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF BasePrivateKeyEncodingOptions.t
         , AnonymousInterface8.t )
         intersection2
      -> unit
      [@@js.set "privateKeyEncoding"]
  end
  [@@js.scope "RSAKeyPairOptions"]

  module DSAKeyPairOptions : sig
    type ('PubF, 'PrivF) t

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

    val get_modulus_length : ('PubF, 'PrivF) t -> int [@@js.get "modulusLength"]

    val set_modulus_length : ('PubF, 'PrivF) t -> int -> unit
      [@@js.set "modulusLength"]

    val get_divisor_length : ('PubF, 'PrivF) t -> int [@@js.get "divisorLength"]

    val set_divisor_length : ('PubF, 'PrivF) t -> int -> unit
      [@@js.set "divisorLength"]

    val get_public_key_encoding : ('PubF, 'PrivF) t -> AnonymousInterface7.t
      [@@js.get "publicKeyEncoding"]

    val set_public_key_encoding
      :  ('PubF, 'PrivF) t
      -> AnonymousInterface7.t
      -> unit
      [@@js.set "publicKeyEncoding"]

    val get_private_key_encoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF BasePrivateKeyEncodingOptions.t
         , AnonymousInterface6.t )
         intersection2
      [@@js.get "privateKeyEncoding"]

    val set_private_key_encoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF BasePrivateKeyEncodingOptions.t
         , AnonymousInterface6.t )
         intersection2
      -> unit
      [@@js.set "privateKeyEncoding"]
  end
  [@@js.scope "DSAKeyPairOptions"]

  module ECKeyPairOptions : sig
    type ('PubF, 'PrivF) t

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

    val get_named_curve : ('PubF, 'PrivF) t -> string [@@js.get "namedCurve"]

    val set_named_curve : ('PubF, 'PrivF) t -> string -> unit
      [@@js.set "namedCurve"]

    val get_public_key_encoding : ('PubF, 'PrivF) t -> AnonymousInterface9.t
      [@@js.get "publicKeyEncoding"]

    val set_public_key_encoding
      :  ('PubF, 'PrivF) t
      -> AnonymousInterface9.t
      -> unit
      [@@js.set "publicKeyEncoding"]

    val get_private_key_encoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF BasePrivateKeyEncodingOptions.t
         , AnonymousInterface10.t )
         intersection2
      [@@js.get "privateKeyEncoding"]

    val set_private_key_encoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF BasePrivateKeyEncodingOptions.t
         , AnonymousInterface10.t )
         intersection2
      -> unit
      [@@js.set "privateKeyEncoding"]
  end
  [@@js.scope "ECKeyPairOptions"]

  module ED25519KeyPairOptions : sig
    type ('PubF, 'PrivF) t

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

    val get_public_key_encoding : ('PubF, 'PrivF) t -> AnonymousInterface7.t
      [@@js.get "publicKeyEncoding"]

    val set_public_key_encoding
      :  ('PubF, 'PrivF) t
      -> AnonymousInterface7.t
      -> unit
      [@@js.set "publicKeyEncoding"]

    val get_private_key_encoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF BasePrivateKeyEncodingOptions.t
         , AnonymousInterface6.t )
         intersection2
      [@@js.get "privateKeyEncoding"]

    val set_private_key_encoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF BasePrivateKeyEncodingOptions.t
         , AnonymousInterface6.t )
         intersection2
      -> unit
      [@@js.set "privateKeyEncoding"]
  end
  [@@js.scope "ED25519KeyPairOptions"]

  module ED448KeyPairOptions : sig
    type ('PubF, 'PrivF) t

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

    val get_public_key_encoding : ('PubF, 'PrivF) t -> AnonymousInterface7.t
      [@@js.get "publicKeyEncoding"]

    val set_public_key_encoding
      :  ('PubF, 'PrivF) t
      -> AnonymousInterface7.t
      -> unit
      [@@js.set "publicKeyEncoding"]

    val get_private_key_encoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF BasePrivateKeyEncodingOptions.t
         , AnonymousInterface6.t )
         intersection2
      [@@js.get "privateKeyEncoding"]

    val set_private_key_encoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF BasePrivateKeyEncodingOptions.t
         , AnonymousInterface6.t )
         intersection2
      -> unit
      [@@js.set "privateKeyEncoding"]
  end
  [@@js.scope "ED448KeyPairOptions"]

  module X25519KeyPairOptions : sig
    type ('PubF, 'PrivF) t

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

    val get_public_key_encoding : ('PubF, 'PrivF) t -> AnonymousInterface7.t
      [@@js.get "publicKeyEncoding"]

    val set_public_key_encoding
      :  ('PubF, 'PrivF) t
      -> AnonymousInterface7.t
      -> unit
      [@@js.set "publicKeyEncoding"]

    val get_private_key_encoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF BasePrivateKeyEncodingOptions.t
         , AnonymousInterface6.t )
         intersection2
      [@@js.get "privateKeyEncoding"]

    val set_private_key_encoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF BasePrivateKeyEncodingOptions.t
         , AnonymousInterface6.t )
         intersection2
      -> unit
      [@@js.set "privateKeyEncoding"]
  end
  [@@js.scope "X25519KeyPairOptions"]

  module X448KeyPairOptions : sig
    type ('PubF, 'PrivF) t

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

    val get_public_key_encoding : ('PubF, 'PrivF) t -> AnonymousInterface7.t
      [@@js.get "publicKeyEncoding"]

    val set_public_key_encoding
      :  ('PubF, 'PrivF) t
      -> AnonymousInterface7.t
      -> unit
      [@@js.set "publicKeyEncoding"]

    val get_private_key_encoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF BasePrivateKeyEncodingOptions.t
         , AnonymousInterface6.t )
         intersection2
      [@@js.get "privateKeyEncoding"]

    val set_private_key_encoding
      :  ('PubF, 'PrivF) t
      -> ( 'PrivF BasePrivateKeyEncodingOptions.t
         , AnonymousInterface6.t )
         intersection2
      -> unit
      [@@js.set "privateKeyEncoding"]
  end
  [@@js.scope "X448KeyPairOptions"]

  module KeyPairSyncResult : sig
    type ('T1, 'T2) t

    val t_to_js : ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t

    val get_public_key : ('T1, 'T2) t -> 'T1 [@@js.get "publicKey"]

    val set_public_key : ('T1, 'T2) t -> 'T1 -> unit [@@js.set "publicKey"]

    val get_private_key : ('T1, 'T2) t -> 'T2 [@@js.get "privateKey"]

    val set_private_key : ('T1, 'T2) t -> 'T2 -> unit [@@js.set "privateKey"]
  end
  [@@js.scope "KeyPairSyncResult"]

  val generate_key_pair_sync
    :  type_:([ `rsa ][@js.enum])
    -> options:(([ `pem ][@js.enum]), ([ `pem ][@js.enum])) RSAKeyPairOptions.t
    -> (string, string) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `rsa ][@js.enum])
    -> options:(([ `pem ][@js.enum]), ([ `der ][@js.enum])) RSAKeyPairOptions.t
    -> (string, Buffer.t) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `rsa ][@js.enum])
    -> options:(([ `der ][@js.enum]), ([ `pem ][@js.enum])) RSAKeyPairOptions.t
    -> (Buffer.t, string) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `rsa ][@js.enum])
    -> options:(([ `der ][@js.enum]), ([ `der ][@js.enum])) RSAKeyPairOptions.t
    -> (Buffer.t, Buffer.t) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `rsa ][@js.enum])
    -> options:RSAKeyPairKeyObjectOptions.t
    -> KeyPairKeyObjectResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `dsa ][@js.enum])
    -> options:(([ `pem ][@js.enum]), ([ `pem ][@js.enum])) DSAKeyPairOptions.t
    -> (string, string) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `dsa ][@js.enum])
    -> options:(([ `pem ][@js.enum]), ([ `der ][@js.enum])) DSAKeyPairOptions.t
    -> (string, Buffer.t) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `dsa ][@js.enum])
    -> options:(([ `der ][@js.enum]), ([ `pem ][@js.enum])) DSAKeyPairOptions.t
    -> (Buffer.t, string) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `dsa ][@js.enum])
    -> options:(([ `der ][@js.enum]), ([ `der ][@js.enum])) DSAKeyPairOptions.t
    -> (Buffer.t, Buffer.t) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `dsa ][@js.enum])
    -> options:DSAKeyPairKeyObjectOptions.t
    -> KeyPairKeyObjectResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `ec ][@js.enum])
    -> options:(([ `pem ][@js.enum]), ([ `pem ][@js.enum])) ECKeyPairOptions.t
    -> (string, string) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `ec ][@js.enum])
    -> options:(([ `pem ][@js.enum]), ([ `der ][@js.enum])) ECKeyPairOptions.t
    -> (string, Buffer.t) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `ec ][@js.enum])
    -> options:(([ `der ][@js.enum]), ([ `pem ][@js.enum])) ECKeyPairOptions.t
    -> (Buffer.t, string) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `ec ][@js.enum])
    -> options:(([ `der ][@js.enum]), ([ `der ][@js.enum])) ECKeyPairOptions.t
    -> (Buffer.t, Buffer.t) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `ec ][@js.enum])
    -> options:ECKeyPairKeyObjectOptions.t
    -> KeyPairKeyObjectResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `ed25519 ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) ED25519KeyPairOptions.t
    -> (string, string) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `ed25519 ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `der ][@js.enum])) ED25519KeyPairOptions.t
    -> (string, Buffer.t) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `ed25519 ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `pem ][@js.enum])) ED25519KeyPairOptions.t
    -> (Buffer.t, string) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `ed25519 ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `der ][@js.enum])) ED25519KeyPairOptions.t
    -> (Buffer.t, Buffer.t) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `ed25519 ][@js.enum])
    -> ?options:ED25519KeyPairKeyObjectOptions.t
    -> unit
    -> KeyPairKeyObjectResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `ed448 ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) ED448KeyPairOptions.t
    -> (string, string) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `ed448 ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `der ][@js.enum])) ED448KeyPairOptions.t
    -> (string, Buffer.t) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `ed448 ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `pem ][@js.enum])) ED448KeyPairOptions.t
    -> (Buffer.t, string) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `ed448 ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `der ][@js.enum])) ED448KeyPairOptions.t
    -> (Buffer.t, Buffer.t) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `ed448 ][@js.enum])
    -> ?options:ED448KeyPairKeyObjectOptions.t
    -> unit
    -> KeyPairKeyObjectResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `x25519 ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) X25519KeyPairOptions.t
    -> (string, string) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `x25519 ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `der ][@js.enum])) X25519KeyPairOptions.t
    -> (string, Buffer.t) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `x25519 ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `pem ][@js.enum])) X25519KeyPairOptions.t
    -> (Buffer.t, string) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `x25519 ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `der ][@js.enum])) X25519KeyPairOptions.t
    -> (Buffer.t, Buffer.t) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `x25519 ][@js.enum])
    -> ?options:X25519KeyPairKeyObjectOptions.t
    -> unit
    -> KeyPairKeyObjectResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `x448 ][@js.enum])
    -> options:(([ `pem ][@js.enum]), ([ `pem ][@js.enum])) X448KeyPairOptions.t
    -> (string, string) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `x448 ][@js.enum])
    -> options:(([ `pem ][@js.enum]), ([ `der ][@js.enum])) X448KeyPairOptions.t
    -> (string, Buffer.t) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `x448 ][@js.enum])
    -> options:(([ `der ][@js.enum]), ([ `pem ][@js.enum])) X448KeyPairOptions.t
    -> (Buffer.t, string) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `x448 ][@js.enum])
    -> options:(([ `der ][@js.enum]), ([ `der ][@js.enum])) X448KeyPairOptions.t
    -> (Buffer.t, Buffer.t) KeyPairSyncResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair_sync
    :  type_:([ `x448 ][@js.enum])
    -> ?options:X448KeyPairKeyObjectOptions.t
    -> unit
    -> KeyPairKeyObjectResult.t
    [@@js.global "generateKeyPairSync"]

  val generate_key_pair
    :  type_:([ `rsa ][@js.enum])
    -> options:(([ `pem ][@js.enum]), ([ `pem ][@js.enum])) RSAKeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:string
          -> private_key:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `rsa ][@js.enum])
    -> options:(([ `pem ][@js.enum]), ([ `der ][@js.enum])) RSAKeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:string
          -> private_key:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `rsa ][@js.enum])
    -> options:(([ `der ][@js.enum]), ([ `pem ][@js.enum])) RSAKeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:Buffer.t
          -> private_key:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `rsa ][@js.enum])
    -> options:(([ `der ][@js.enum]), ([ `der ][@js.enum])) RSAKeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:Buffer.t
          -> private_key:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `rsa ][@js.enum])
    -> options:RSAKeyPairKeyObjectOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:KeyObject.t
          -> private_key:KeyObject.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `dsa ][@js.enum])
    -> options:(([ `pem ][@js.enum]), ([ `pem ][@js.enum])) DSAKeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:string
          -> private_key:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `dsa ][@js.enum])
    -> options:(([ `pem ][@js.enum]), ([ `der ][@js.enum])) DSAKeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:string
          -> private_key:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `dsa ][@js.enum])
    -> options:(([ `der ][@js.enum]), ([ `pem ][@js.enum])) DSAKeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:Buffer.t
          -> private_key:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `dsa ][@js.enum])
    -> options:(([ `der ][@js.enum]), ([ `der ][@js.enum])) DSAKeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:Buffer.t
          -> private_key:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `dsa ][@js.enum])
    -> options:DSAKeyPairKeyObjectOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:KeyObject.t
          -> private_key:KeyObject.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `ec ][@js.enum])
    -> options:(([ `pem ][@js.enum]), ([ `pem ][@js.enum])) ECKeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:string
          -> private_key:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `ec ][@js.enum])
    -> options:(([ `pem ][@js.enum]), ([ `der ][@js.enum])) ECKeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:string
          -> private_key:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `ec ][@js.enum])
    -> options:(([ `der ][@js.enum]), ([ `pem ][@js.enum])) ECKeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:Buffer.t
          -> private_key:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `ec ][@js.enum])
    -> options:(([ `der ][@js.enum]), ([ `der ][@js.enum])) ECKeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:Buffer.t
          -> private_key:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `ec ][@js.enum])
    -> options:ECKeyPairKeyObjectOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:KeyObject.t
          -> private_key:KeyObject.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `ed25519 ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) ED25519KeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:string
          -> private_key:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `ed25519 ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `der ][@js.enum])) ED25519KeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:string
          -> private_key:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `ed25519 ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `pem ][@js.enum])) ED25519KeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:Buffer.t
          -> private_key:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `ed25519 ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `der ][@js.enum])) ED25519KeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:Buffer.t
          -> private_key:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `ed25519 ][@js.enum])
    -> options:ED25519KeyPairKeyObjectOptions.t or_undefined
    -> callback:
         (err:Error.t or_null
          -> public_key:KeyObject.t
          -> private_key:KeyObject.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `ed448 ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) ED448KeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:string
          -> private_key:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `ed448 ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `der ][@js.enum])) ED448KeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:string
          -> private_key:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `ed448 ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `pem ][@js.enum])) ED448KeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:Buffer.t
          -> private_key:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `ed448 ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `der ][@js.enum])) ED448KeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:Buffer.t
          -> private_key:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `ed448 ][@js.enum])
    -> options:ED448KeyPairKeyObjectOptions.t or_undefined
    -> callback:
         (err:Error.t or_null
          -> public_key:KeyObject.t
          -> private_key:KeyObject.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `x25519 ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) X25519KeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:string
          -> private_key:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `x25519 ][@js.enum])
    -> options:
         (([ `pem ][@js.enum]), ([ `der ][@js.enum])) X25519KeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:string
          -> private_key:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `x25519 ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `pem ][@js.enum])) X25519KeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:Buffer.t
          -> private_key:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `x25519 ][@js.enum])
    -> options:
         (([ `der ][@js.enum]), ([ `der ][@js.enum])) X25519KeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:Buffer.t
          -> private_key:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `x25519 ][@js.enum])
    -> options:X25519KeyPairKeyObjectOptions.t or_undefined
    -> callback:
         (err:Error.t or_null
          -> public_key:KeyObject.t
          -> private_key:KeyObject.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `x448 ][@js.enum])
    -> options:(([ `pem ][@js.enum]), ([ `pem ][@js.enum])) X448KeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:string
          -> private_key:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `x448 ][@js.enum])
    -> options:(([ `pem ][@js.enum]), ([ `der ][@js.enum])) X448KeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:string
          -> private_key:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `x448 ][@js.enum])
    -> options:(([ `der ][@js.enum]), ([ `pem ][@js.enum])) X448KeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:Buffer.t
          -> private_key:string
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `x448 ][@js.enum])
    -> options:(([ `der ][@js.enum]), ([ `der ][@js.enum])) X448KeyPairOptions.t
    -> callback:
         (err:Error.t or_null
          -> public_key:Buffer.t
          -> private_key:Buffer.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  val generate_key_pair
    :  type_:([ `x448 ][@js.enum])
    -> options:X448KeyPairKeyObjectOptions.t or_undefined
    -> callback:
         (err:Error.t or_null
          -> public_key:KeyObject.t
          -> private_key:KeyObject.t
          -> unit)
    -> unit
    [@@js.global "generateKeyPair"]

  module GenerateKeyPair : sig
    val __promisify__
      :  type_:([ `rsa ][@js.enum])
      -> options:
           (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) RSAKeyPairOptions.t
      -> AnonymousInterface5.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `rsa ][@js.enum])
      -> options:
           (([ `pem ][@js.enum]), ([ `der ][@js.enum])) RSAKeyPairOptions.t
      -> AnonymousInterface4.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `rsa ][@js.enum])
      -> options:
           (([ `der ][@js.enum]), ([ `pem ][@js.enum])) RSAKeyPairOptions.t
      -> AnonymousInterface3.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `rsa ][@js.enum])
      -> options:
           (([ `der ][@js.enum]), ([ `der ][@js.enum])) RSAKeyPairOptions.t
      -> AnonymousInterface2.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `rsa ][@js.enum])
      -> options:RSAKeyPairKeyObjectOptions.t
      -> KeyPairKeyObjectResult.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `dsa ][@js.enum])
      -> options:
           (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) DSAKeyPairOptions.t
      -> AnonymousInterface5.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `dsa ][@js.enum])
      -> options:
           (([ `pem ][@js.enum]), ([ `der ][@js.enum])) DSAKeyPairOptions.t
      -> AnonymousInterface4.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `dsa ][@js.enum])
      -> options:
           (([ `der ][@js.enum]), ([ `pem ][@js.enum])) DSAKeyPairOptions.t
      -> AnonymousInterface3.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `dsa ][@js.enum])
      -> options:
           (([ `der ][@js.enum]), ([ `der ][@js.enum])) DSAKeyPairOptions.t
      -> AnonymousInterface2.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `dsa ][@js.enum])
      -> options:DSAKeyPairKeyObjectOptions.t
      -> KeyPairKeyObjectResult.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ec ][@js.enum])
      -> options:(([ `pem ][@js.enum]), ([ `pem ][@js.enum])) ECKeyPairOptions.t
      -> AnonymousInterface5.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ec ][@js.enum])
      -> options:(([ `pem ][@js.enum]), ([ `der ][@js.enum])) ECKeyPairOptions.t
      -> AnonymousInterface4.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ec ][@js.enum])
      -> options:(([ `der ][@js.enum]), ([ `pem ][@js.enum])) ECKeyPairOptions.t
      -> AnonymousInterface3.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ec ][@js.enum])
      -> options:(([ `der ][@js.enum]), ([ `der ][@js.enum])) ECKeyPairOptions.t
      -> AnonymousInterface2.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ec ][@js.enum])
      -> options:ECKeyPairKeyObjectOptions.t
      -> KeyPairKeyObjectResult.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ed25519 ][@js.enum])
      -> options:
           (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) ED25519KeyPairOptions.t
      -> AnonymousInterface5.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ed25519 ][@js.enum])
      -> options:
           (([ `pem ][@js.enum]), ([ `der ][@js.enum])) ED25519KeyPairOptions.t
      -> AnonymousInterface4.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ed25519 ][@js.enum])
      -> options:
           (([ `der ][@js.enum]), ([ `pem ][@js.enum])) ED25519KeyPairOptions.t
      -> AnonymousInterface3.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ed25519 ][@js.enum])
      -> options:
           (([ `der ][@js.enum]), ([ `der ][@js.enum])) ED25519KeyPairOptions.t
      -> AnonymousInterface2.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ed25519 ][@js.enum])
      -> ?options:ED25519KeyPairKeyObjectOptions.t
      -> unit
      -> KeyPairKeyObjectResult.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ed448 ][@js.enum])
      -> options:
           (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) ED448KeyPairOptions.t
      -> AnonymousInterface5.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ed448 ][@js.enum])
      -> options:
           (([ `pem ][@js.enum]), ([ `der ][@js.enum])) ED448KeyPairOptions.t
      -> AnonymousInterface4.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ed448 ][@js.enum])
      -> options:
           (([ `der ][@js.enum]), ([ `pem ][@js.enum])) ED448KeyPairOptions.t
      -> AnonymousInterface3.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ed448 ][@js.enum])
      -> options:
           (([ `der ][@js.enum]), ([ `der ][@js.enum])) ED448KeyPairOptions.t
      -> AnonymousInterface2.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `ed448 ][@js.enum])
      -> ?options:ED448KeyPairKeyObjectOptions.t
      -> unit
      -> KeyPairKeyObjectResult.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `x25519 ][@js.enum])
      -> options:
           (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) X25519KeyPairOptions.t
      -> AnonymousInterface5.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `x25519 ][@js.enum])
      -> options:
           (([ `pem ][@js.enum]), ([ `der ][@js.enum])) X25519KeyPairOptions.t
      -> AnonymousInterface4.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `x25519 ][@js.enum])
      -> options:
           (([ `der ][@js.enum]), ([ `pem ][@js.enum])) X25519KeyPairOptions.t
      -> AnonymousInterface3.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `x25519 ][@js.enum])
      -> options:
           (([ `der ][@js.enum]), ([ `der ][@js.enum])) X25519KeyPairOptions.t
      -> AnonymousInterface2.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `x25519 ][@js.enum])
      -> ?options:X25519KeyPairKeyObjectOptions.t
      -> unit
      -> KeyPairKeyObjectResult.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `x448 ][@js.enum])
      -> options:
           (([ `pem ][@js.enum]), ([ `pem ][@js.enum])) X448KeyPairOptions.t
      -> AnonymousInterface5.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `x448 ][@js.enum])
      -> options:
           (([ `pem ][@js.enum]), ([ `der ][@js.enum])) X448KeyPairOptions.t
      -> AnonymousInterface4.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `x448 ][@js.enum])
      -> options:
           (([ `der ][@js.enum]), ([ `pem ][@js.enum])) X448KeyPairOptions.t
      -> AnonymousInterface3.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `x448 ][@js.enum])
      -> options:
           (([ `der ][@js.enum]), ([ `der ][@js.enum])) X448KeyPairOptions.t
      -> AnonymousInterface2.t Promise.t
      [@@js.global "__promisify__"]

    val __promisify__
      :  type_:([ `x448 ][@js.enum])
      -> ?options:X448KeyPairKeyObjectOptions.t
      -> unit
      -> KeyPairKeyObjectResult.t Promise.t
      [@@js.global "__promisify__"]
  end
  [@@js.scope "generateKeyPair"]

  val sign
    :  algorithm:string or_null_or_undefined
    -> data:ArrayBufferView.t
    -> key:
         ( ([ `U_s11_der of SignKeyObjectInput.t
            | `U_s18_ieee_p1363 of SignKeyObjectInput.t
            ]
           [@js.union on_field "dsaEncoding"])
         , ([ `U_s21_pkcs1 of SignPrivateKeyInput.t
            | `U_s22_pkcs8 of SignPrivateKeyInput.t
            | `U_s23_private of KeyLike.t
            | `U_s24_public of KeyLike.t
            | `U_s26_sec1 of SignPrivateKeyInput.t
            | `U_s27_secret of KeyLike.t
            ]
           [@js.union on_field "type"]) )
         union2
    -> Buffer.t
    [@@js.global "sign"]

  val verify
    :  algorithm:string or_null_or_undefined
    -> data:ArrayBufferView.t
    -> key:
         ( ([ `U_s11_der of VerifyKeyObjectInput.t
            | `U_s18_ieee_p1363 of VerifyKeyObjectInput.t
            ]
           [@js.union on_field "dsaEncoding"])
         , ([ `U_s21_pkcs1 of VerifyPublicKeyInput.t
            | `U_s23_private of KeyLike.t
            | `U_s24_public of KeyLike.t
            | `U_s27_secret of KeyLike.t
            | `U_s28_spki of VerifyPublicKeyInput.t
            ]
           [@js.union on_field "type"]) )
         union2
    -> signature:ArrayBufferView.t
    -> bool
    [@@js.global "verify"]

  module AnonymousInterface1 : sig
    type t

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_private_key : t -> KeyObject.t [@@js.get "privateKey"]

    val set_private_key : t -> KeyObject.t -> unit [@@js.set "privateKey"]

    val get_public_key : t -> KeyObject.t [@@js.get "publicKey"]

    val set_public_key : t -> KeyObject.t -> unit [@@js.set "publicKey"]
  end

  val diffie_hellman : options:AnonymousInterface1.t -> Buffer.t
    [@@js.global "diffieHellman"]
end
[@@js.scope Import.crypto]
