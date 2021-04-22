[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

  val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]
end

module AnonymousInterface1 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_encoding : t -> ([ `buffer [@js "buffer"] ][@js.enum])
    [@@js.get "encoding"]

  val set_encoding : t -> ([ `buffer ][@js.enum]) -> unit [@@js.set "encoding"]
end

module AnonymousInterface2 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_user : t -> int [@@js.get "user"]

  val set_user : t -> int -> unit [@@js.set "user"]

  val get_nice : t -> int [@@js.get "nice"]

  val set_nice : t -> int -> unit [@@js.set "nice"]

  val get_sys : t -> int [@@js.get "sys"]

  val set_sys : t -> int -> unit [@@js.set "sys"]

  val get_idle : t -> int [@@js.get "idle"]

  val set_idle : t -> int -> unit [@@js.set "idle"]

  val get_irq : t -> int [@@js.get "irq"]

  val set_irq : t -> int -> unit [@@js.set "irq"]
end

module Os : sig
  module CpuInfo : sig
    type t = os_CpuInfo

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_model : t -> string [@@js.get "model"]

    val set_model : t -> string -> unit [@@js.set "model"]

    val get_speed : t -> int [@@js.get "speed"]

    val set_speed : t -> int -> unit [@@js.set "speed"]

    val get_times : t -> AnonymousInterface2.t [@@js.get "times"]

    val set_times : t -> AnonymousInterface2.t -> unit [@@js.set "times"]
  end
  [@@js.scope "CpuInfo"]

  module NetworkInterfaceBase : sig
    type t = os_NetworkInterfaceBase

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_address : t -> string [@@js.get "address"]

    val set_address : t -> string -> unit [@@js.set "address"]

    val get_netmask : t -> string [@@js.get "netmask"]

    val set_netmask : t -> string -> unit [@@js.set "netmask"]

    val get_mac : t -> string [@@js.get "mac"]

    val set_mac : t -> string -> unit [@@js.set "mac"]

    val get_internal : t -> bool [@@js.get "internal"]

    val set_internal : t -> bool -> unit [@@js.set "internal"]

    val get_cidr : t -> string or_null [@@js.get "cidr"]

    val set_cidr : t -> string or_null -> unit [@@js.set "cidr"]
  end
  [@@js.scope "NetworkInterfaceBase"]

  module NetworkInterfaceInfoIPv4 : sig
    type t = os_NetworkInterfaceInfoIPv4

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_family : t -> ([ `IPv4 [@js "IPv4"] ][@js.enum]) [@@js.get "family"]

    val set_family : t -> ([ `IPv4 ][@js.enum]) -> unit [@@js.set "family"]

    val cast : t -> os_NetworkInterfaceBase [@@js.cast]
  end
  [@@js.scope "NetworkInterfaceInfoIPv4"]

  module NetworkInterfaceInfoIPv6 : sig
    type t = os_NetworkInterfaceInfoIPv6

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_family : t -> ([ `IPv6 [@js "IPv6"] ][@js.enum]) [@@js.get "family"]

    val set_family : t -> ([ `IPv6 ][@js.enum]) -> unit [@@js.set "family"]

    val get_scopeid : t -> int [@@js.get "scopeid"]

    val set_scopeid : t -> int -> unit [@@js.set "scopeid"]

    val cast : t -> os_NetworkInterfaceBase [@@js.cast]
  end
  [@@js.scope "NetworkInterfaceInfoIPv6"]

  module UserInfo : sig
    type 'T t = 'T os_UserInfo

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val get_username : 'T t -> 'T [@@js.get "username"]

    val set_username : 'T t -> 'T -> unit [@@js.set "username"]

    val get_uid : 'T t -> int [@@js.get "uid"]

    val set_uid : 'T t -> int -> unit [@@js.set "uid"]

    val get_gid : 'T t -> int [@@js.get "gid"]

    val set_gid : 'T t -> int -> unit [@@js.set "gid"]

    val get_shell : 'T t -> 'T [@@js.get "shell"]

    val set_shell : 'T t -> 'T -> unit [@@js.set "shell"]

    val get_homedir : 'T t -> 'T [@@js.get "homedir"]

    val set_homedir : 'T t -> 'T -> unit [@@js.set "homedir"]
  end
  [@@js.scope "UserInfo"]

  module NetworkInterfaceInfo : sig
    type t =
      ([ `U_s1_IPv4 of os_NetworkInterfaceInfoIPv4 [@js "IPv4"]
       | `U_s2_IPv6 of os_NetworkInterfaceInfoIPv6 [@js "IPv6"]
       ]
      [@js.union on_field "family"])

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val hostname : unit -> string [@@js.global "hostname"]

  val loadavg : unit -> int list [@@js.global "loadavg"]

  val uptime : unit -> int [@@js.global "uptime"]

  val freemem : unit -> int [@@js.global "freemem"]

  val totalmem : unit -> int [@@js.global "totalmem"]

  val cpus : unit -> os_CpuInfo list [@@js.global "cpus"]

  val type_ : unit -> string [@@js.global "type"]

  val release : unit -> string [@@js.global "release"]

  val networkInterfaces : unit -> os_NetworkInterfaceInfo list Dict.t
    [@@js.global "networkInterfaces"]

  val homedir : unit -> string [@@js.global "homedir"]

  val userInfo : options:AnonymousInterface1.t -> Buffer.t os_UserInfo
    [@@js.global "userInfo"]

  val userInfo : ?options:AnonymousInterface0.t -> unit -> string os_UserInfo
    [@@js.global "userInfo"]

  module SignalConstants : sig
    type t = (* FIXME: unknown type '{ [key in Signals]: number; }' *) any

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Constants : sig
    val uV_UDP_REUSEADDR : int [@@js.global "UV_UDP_REUSEADDR"]

    val signals : os_SignalConstants [@@js.global "signals"]

    module Errno : sig
      val e2BIG : int [@@js.global "E2BIG"]

      val eACCES : int [@@js.global "EACCES"]

      val eADDRINUSE : int [@@js.global "EADDRINUSE"]

      val eADDRNOTAVAIL : int [@@js.global "EADDRNOTAVAIL"]

      val eAFNOSUPPORT : int [@@js.global "EAFNOSUPPORT"]

      val eAGAIN : int [@@js.global "EAGAIN"]

      val eALREADY : int [@@js.global "EALREADY"]

      val eBADF : int [@@js.global "EBADF"]

      val eBADMSG : int [@@js.global "EBADMSG"]

      val eBUSY : int [@@js.global "EBUSY"]

      val eCANCELED : int [@@js.global "ECANCELED"]

      val eCHILD : int [@@js.global "ECHILD"]

      val eCONNABORTED : int [@@js.global "ECONNABORTED"]

      val eCONNREFUSED : int [@@js.global "ECONNREFUSED"]

      val eCONNRESET : int [@@js.global "ECONNRESET"]

      val eDEADLK : int [@@js.global "EDEADLK"]

      val eDESTADDRREQ : int [@@js.global "EDESTADDRREQ"]

      val eDOM : int [@@js.global "EDOM"]

      val eDQUOT : int [@@js.global "EDQUOT"]

      val eEXIST : int [@@js.global "EEXIST"]

      val eFAULT : int [@@js.global "EFAULT"]

      val eFBIG : int [@@js.global "EFBIG"]

      val eHOSTUNREACH : int [@@js.global "EHOSTUNREACH"]

      val eIDRM : int [@@js.global "EIDRM"]

      val eILSEQ : int [@@js.global "EILSEQ"]

      val eINPROGRESS : int [@@js.global "EINPROGRESS"]

      val eINTR : int [@@js.global "EINTR"]

      val eINVAL : int [@@js.global "EINVAL"]

      val eIO : int [@@js.global "EIO"]

      val eISCONN : int [@@js.global "EISCONN"]

      val eISDIR : int [@@js.global "EISDIR"]

      val eLOOP : int [@@js.global "ELOOP"]

      val eMFILE : int [@@js.global "EMFILE"]

      val eMLINK : int [@@js.global "EMLINK"]

      val eMSGSIZE : int [@@js.global "EMSGSIZE"]

      val eMULTIHOP : int [@@js.global "EMULTIHOP"]

      val eNAMETOOLONG : int [@@js.global "ENAMETOOLONG"]

      val eNETDOWN : int [@@js.global "ENETDOWN"]

      val eNETRESET : int [@@js.global "ENETRESET"]

      val eNETUNREACH : int [@@js.global "ENETUNREACH"]

      val eNFILE : int [@@js.global "ENFILE"]

      val eNOBUFS : int [@@js.global "ENOBUFS"]

      val eNODATA : int [@@js.global "ENODATA"]

      val eNODEV : int [@@js.global "ENODEV"]

      val eNOENT : int [@@js.global "ENOENT"]

      val eNOEXEC : int [@@js.global "ENOEXEC"]

      val eNOLCK : int [@@js.global "ENOLCK"]

      val eNOLINK : int [@@js.global "ENOLINK"]

      val eNOMEM : int [@@js.global "ENOMEM"]

      val eNOMSG : int [@@js.global "ENOMSG"]

      val eNOPROTOOPT : int [@@js.global "ENOPROTOOPT"]

      val eNOSPC : int [@@js.global "ENOSPC"]

      val eNOSR : int [@@js.global "ENOSR"]

      val eNOSTR : int [@@js.global "ENOSTR"]

      val eNOSYS : int [@@js.global "ENOSYS"]

      val eNOTCONN : int [@@js.global "ENOTCONN"]

      val eNOTDIR : int [@@js.global "ENOTDIR"]

      val eNOTEMPTY : int [@@js.global "ENOTEMPTY"]

      val eNOTSOCK : int [@@js.global "ENOTSOCK"]

      val eNOTSUP : int [@@js.global "ENOTSUP"]

      val eNOTTY : int [@@js.global "ENOTTY"]

      val eNXIO : int [@@js.global "ENXIO"]

      val eOPNOTSUPP : int [@@js.global "EOPNOTSUPP"]

      val eOVERFLOW : int [@@js.global "EOVERFLOW"]

      val ePERM : int [@@js.global "EPERM"]

      val ePIPE : int [@@js.global "EPIPE"]

      val ePROTO : int [@@js.global "EPROTO"]

      val ePROTONOSUPPORT : int [@@js.global "EPROTONOSUPPORT"]

      val ePROTOTYPE : int [@@js.global "EPROTOTYPE"]

      val eRANGE : int [@@js.global "ERANGE"]

      val eROFS : int [@@js.global "EROFS"]

      val eSPIPE : int [@@js.global "ESPIPE"]

      val eSRCH : int [@@js.global "ESRCH"]

      val eSTALE : int [@@js.global "ESTALE"]

      val eTIME : int [@@js.global "ETIME"]

      val eTIMEDOUT : int [@@js.global "ETIMEDOUT"]

      val eTXTBSY : int [@@js.global "ETXTBSY"]

      val eWOULDBLOCK : int [@@js.global "EWOULDBLOCK"]

      val eXDEV : int [@@js.global "EXDEV"]

      val wSAEINTR : int [@@js.global "WSAEINTR"]

      val wSAEBADF : int [@@js.global "WSAEBADF"]

      val wSAEACCES : int [@@js.global "WSAEACCES"]

      val wSAEFAULT : int [@@js.global "WSAEFAULT"]

      val wSAEINVAL : int [@@js.global "WSAEINVAL"]

      val wSAEMFILE : int [@@js.global "WSAEMFILE"]

      val wSAEWOULDBLOCK : int [@@js.global "WSAEWOULDBLOCK"]

      val wSAEINPROGRESS : int [@@js.global "WSAEINPROGRESS"]

      val wSAEALREADY : int [@@js.global "WSAEALREADY"]

      val wSAENOTSOCK : int [@@js.global "WSAENOTSOCK"]

      val wSAEDESTADDRREQ : int [@@js.global "WSAEDESTADDRREQ"]

      val wSAEMSGSIZE : int [@@js.global "WSAEMSGSIZE"]

      val wSAEPROTOTYPE : int [@@js.global "WSAEPROTOTYPE"]

      val wSAENOPROTOOPT : int [@@js.global "WSAENOPROTOOPT"]

      val wSAEPROTONOSUPPORT : int [@@js.global "WSAEPROTONOSUPPORT"]

      val wSAESOCKTNOSUPPORT : int [@@js.global "WSAESOCKTNOSUPPORT"]

      val wSAEOPNOTSUPP : int [@@js.global "WSAEOPNOTSUPP"]

      val wSAEPFNOSUPPORT : int [@@js.global "WSAEPFNOSUPPORT"]

      val wSAEAFNOSUPPORT : int [@@js.global "WSAEAFNOSUPPORT"]

      val wSAEADDRINUSE : int [@@js.global "WSAEADDRINUSE"]

      val wSAEADDRNOTAVAIL : int [@@js.global "WSAEADDRNOTAVAIL"]

      val wSAENETDOWN : int [@@js.global "WSAENETDOWN"]

      val wSAENETUNREACH : int [@@js.global "WSAENETUNREACH"]

      val wSAENETRESET : int [@@js.global "WSAENETRESET"]

      val wSAECONNABORTED : int [@@js.global "WSAECONNABORTED"]

      val wSAECONNRESET : int [@@js.global "WSAECONNRESET"]

      val wSAENOBUFS : int [@@js.global "WSAENOBUFS"]

      val wSAEISCONN : int [@@js.global "WSAEISCONN"]

      val wSAENOTCONN : int [@@js.global "WSAENOTCONN"]

      val wSAESHUTDOWN : int [@@js.global "WSAESHUTDOWN"]

      val wSAETOOMANYREFS : int [@@js.global "WSAETOOMANYREFS"]

      val wSAETIMEDOUT : int [@@js.global "WSAETIMEDOUT"]

      val wSAECONNREFUSED : int [@@js.global "WSAECONNREFUSED"]

      val wSAELOOP : int [@@js.global "WSAELOOP"]

      val wSAENAMETOOLONG : int [@@js.global "WSAENAMETOOLONG"]

      val wSAEHOSTDOWN : int [@@js.global "WSAEHOSTDOWN"]

      val wSAEHOSTUNREACH : int [@@js.global "WSAEHOSTUNREACH"]

      val wSAENOTEMPTY : int [@@js.global "WSAENOTEMPTY"]

      val wSAEPROCLIM : int [@@js.global "WSAEPROCLIM"]

      val wSAEUSERS : int [@@js.global "WSAEUSERS"]

      val wSAEDQUOT : int [@@js.global "WSAEDQUOT"]

      val wSAESTALE : int [@@js.global "WSAESTALE"]

      val wSAEREMOTE : int [@@js.global "WSAEREMOTE"]

      val wSASYSNOTREADY : int [@@js.global "WSASYSNOTREADY"]

      val wSAVERNOTSUPPORTED : int [@@js.global "WSAVERNOTSUPPORTED"]

      val wSANOTINITIALISED : int [@@js.global "WSANOTINITIALISED"]

      val wSAEDISCON : int [@@js.global "WSAEDISCON"]

      val wSAENOMORE : int [@@js.global "WSAENOMORE"]

      val wSAECANCELLED : int [@@js.global "WSAECANCELLED"]

      val wSAEINVALIDPROCTABLE : int [@@js.global "WSAEINVALIDPROCTABLE"]

      val wSAEINVALIDPROVIDER : int [@@js.global "WSAEINVALIDPROVIDER"]

      val wSAEPROVIDERFAILEDINIT : int [@@js.global "WSAEPROVIDERFAILEDINIT"]

      val wSASYSCALLFAILURE : int [@@js.global "WSASYSCALLFAILURE"]

      val wSASERVICE_NOT_FOUND : int [@@js.global "WSASERVICE_NOT_FOUND"]

      val wSATYPE_NOT_FOUND : int [@@js.global "WSATYPE_NOT_FOUND"]

      val wSA_E_NO_MORE : int [@@js.global "WSA_E_NO_MORE"]

      val wSA_E_CANCELLED : int [@@js.global "WSA_E_CANCELLED"]

      val wSAEREFUSED : int [@@js.global "WSAEREFUSED"]
    end
    [@@js.scope "errno"]

    module Priority : sig
      val pRIORITY_LOW : int [@@js.global "PRIORITY_LOW"]

      val pRIORITY_BELOW_NORMAL : int [@@js.global "PRIORITY_BELOW_NORMAL"]

      val pRIORITY_NORMAL : int [@@js.global "PRIORITY_NORMAL"]

      val pRIORITY_ABOVE_NORMAL : int [@@js.global "PRIORITY_ABOVE_NORMAL"]

      val pRIORITY_HIGH : int [@@js.global "PRIORITY_HIGH"]

      val pRIORITY_HIGHEST : int [@@js.global "PRIORITY_HIGHEST"]
    end
    [@@js.scope "priority"]
  end
  [@@js.scope "constants"]

  val arch : unit -> string [@@js.global "arch"]

  val version : unit -> string [@@js.global "version"]

  val platform : unit -> Node_process.Process.Platform.t
    [@@js.global "platform"]

  val tmpdir : unit -> string [@@js.global "tmpdir"]

  val eOL : string [@@js.global "EOL"]

  val endianness : unit -> ([ `BE [@js "BE"] | `LE [@js "LE"] ][@js.enum])
    [@@js.global "endianness"]

  val getPriority : ?pid:int -> unit -> int [@@js.global "getPriority"]

  val setPriority : priority:int -> unit [@@js.global "setPriority"]

  val setPriority : pid:int -> priority:int -> unit [@@js.global "setPriority"]
end
[@@js.scope Import.os]
