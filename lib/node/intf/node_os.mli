[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Node_globals

module Internal : sig
  module AnonymousInterfaces : sig
    type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_1 = [ `anonymous_interface_1 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    type anonymous_interface_2 = [ `anonymous_interface_2 ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end

  module Types : sig
    open AnonymousInterfaces

    type os_CpuInfo = [ `Os_CpuInfo ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and os_NetworkInterfaceBase = [ `Os_NetworkInterfaceBase ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and os_NetworkInterfaceInfo =
      ([ `U_s1_IPv4 of os_NetworkInterfaceInfoIPv4 [@js "IPv4"]
       | `U_s2_IPv6 of os_NetworkInterfaceInfoIPv6 [@js "IPv6"]
       ]
      [@js.union on_field "family"])

    and os_NetworkInterfaceInfoIPv4 =
      [ `Os_NetworkInterfaceInfoIPv4 | `Os_NetworkInterfaceBase ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and os_NetworkInterfaceInfoIPv6 =
      [ `Os_NetworkInterfaceInfoIPv6 | `Os_NetworkInterfaceBase ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and os_SignalConstants =
      (* FIXME: unknown type '{ [key in Signals]: number; }' *) any

    and 'T os_UserInfo = [ `Os_UserInfo of 'T ] intf
    [@@js.custom
      { of_js = (fun _T -> Obj.magic); to_js = (fun _T -> Obj.magic) }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module AnonymousInterface0 : sig
  type t = anonymous_interface_0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_encoding : t -> BufferEncoding.t [@@js.get "encoding"]

  val set_encoding : t -> BufferEncoding.t -> unit [@@js.set "encoding"]
end

module AnonymousInterface1 : sig
  type t = anonymous_interface_1

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_encoding : t -> ([ `buffer [@js "buffer"] ][@js.enum])
    [@@js.get "encoding"]

  val set_encoding : t -> ([ `buffer ][@js.enum]) -> unit [@@js.set "encoding"]
end

module AnonymousInterface2 : sig
  type t = anonymous_interface_2

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_user : t -> float [@@js.get "user"]

  val set_user : t -> float -> unit [@@js.set "user"]

  val get_nice : t -> float [@@js.get "nice"]

  val set_nice : t -> float -> unit [@@js.set "nice"]

  val get_sys : t -> float [@@js.get "sys"]

  val set_sys : t -> float -> unit [@@js.set "sys"]

  val get_idle : t -> float [@@js.get "idle"]

  val set_idle : t -> float -> unit [@@js.set "idle"]

  val get_irq : t -> float [@@js.get "irq"]

  val set_irq : t -> float -> unit [@@js.set "irq"]
end

module Os : sig
  module CpuInfo : sig
    type t = os_CpuInfo

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_model : t -> string [@@js.get "model"]

    val set_model : t -> string -> unit [@@js.set "model"]

    val get_speed : t -> float [@@js.get "speed"]

    val set_speed : t -> float -> unit [@@js.set "speed"]

    val get_times : t -> anonymous_interface_2 [@@js.get "times"]

    val set_times : t -> anonymous_interface_2 -> unit [@@js.set "times"]
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

    val get_scopeid : t -> float [@@js.get "scopeid"]

    val set_scopeid : t -> float -> unit [@@js.set "scopeid"]

    val cast : t -> os_NetworkInterfaceBase [@@js.cast]
  end
  [@@js.scope "NetworkInterfaceInfoIPv6"]

  module UserInfo : sig
    type 'T t = 'T os_UserInfo

    val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

    val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

    val get_username : 'T t -> 'T [@@js.get "username"]

    val set_username : 'T t -> 'T -> unit [@@js.set "username"]

    val get_uid : 'T t -> float [@@js.get "uid"]

    val set_uid : 'T t -> float -> unit [@@js.set "uid"]

    val get_gid : 'T t -> float [@@js.get "gid"]

    val set_gid : 'T t -> float -> unit [@@js.set "gid"]

    val get_shell : 'T t -> 'T [@@js.get "shell"]

    val set_shell : 'T t -> 'T -> unit [@@js.set "shell"]

    val get_homedir : 'T t -> 'T [@@js.get "homedir"]

    val set_homedir : 'T t -> 'T -> unit [@@js.set "homedir"]
  end
  [@@js.scope "UserInfo"]

  module NetworkInterfaceInfo : sig
    type t = os_NetworkInterfaceInfo

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  val hostname : unit -> string [@@js.global "hostname"]

  val loadavg : unit -> float list [@@js.global "loadavg"]

  val uptime : unit -> float [@@js.global "uptime"]

  val freemem : unit -> float [@@js.global "freemem"]

  val totalmem : unit -> float [@@js.global "totalmem"]

  val cpus : unit -> os_CpuInfo list [@@js.global "cpus"]

  val type_ : unit -> string [@@js.global "type"]

  val release : unit -> string [@@js.global "release"]

  val networkInterfaces : unit -> os_NetworkInterfaceInfo list Dict.t
    [@@js.global "networkInterfaces"]

  val homedir : unit -> string [@@js.global "homedir"]

  val userInfo : options:anonymous_interface_1 -> Buffer.t os_UserInfo
    [@@js.global "userInfo"]

  val userInfo : ?options:anonymous_interface_0 -> unit -> string os_UserInfo
    [@@js.global "userInfo"]

  module SignalConstants : sig
    type t = os_SignalConstants

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module Constants : sig
    val uV_UDP_REUSEADDR : float [@@js.global "UV_UDP_REUSEADDR"]

    val signals : os_SignalConstants [@@js.global "signals"]

    module Errno : sig
      val e2BIG : float [@@js.global "E2BIG"]

      val eACCES : float [@@js.global "EACCES"]

      val eADDRINUSE : float [@@js.global "EADDRINUSE"]

      val eADDRNOTAVAIL : float [@@js.global "EADDRNOTAVAIL"]

      val eAFNOSUPPORT : float [@@js.global "EAFNOSUPPORT"]

      val eAGAIN : float [@@js.global "EAGAIN"]

      val eALREADY : float [@@js.global "EALREADY"]

      val eBADF : float [@@js.global "EBADF"]

      val eBADMSG : float [@@js.global "EBADMSG"]

      val eBUSY : float [@@js.global "EBUSY"]

      val eCANCELED : float [@@js.global "ECANCELED"]

      val eCHILD : float [@@js.global "ECHILD"]

      val eCONNABORTED : float [@@js.global "ECONNABORTED"]

      val eCONNREFUSED : float [@@js.global "ECONNREFUSED"]

      val eCONNRESET : float [@@js.global "ECONNRESET"]

      val eDEADLK : float [@@js.global "EDEADLK"]

      val eDESTADDRREQ : float [@@js.global "EDESTADDRREQ"]

      val eDOM : float [@@js.global "EDOM"]

      val eDQUOT : float [@@js.global "EDQUOT"]

      val eEXIST : float [@@js.global "EEXIST"]

      val eFAULT : float [@@js.global "EFAULT"]

      val eFBIG : float [@@js.global "EFBIG"]

      val eHOSTUNREACH : float [@@js.global "EHOSTUNREACH"]

      val eIDRM : float [@@js.global "EIDRM"]

      val eILSEQ : float [@@js.global "EILSEQ"]

      val eINPROGRESS : float [@@js.global "EINPROGRESS"]

      val eINTR : float [@@js.global "EINTR"]

      val eINVAL : float [@@js.global "EINVAL"]

      val eIO : float [@@js.global "EIO"]

      val eISCONN : float [@@js.global "EISCONN"]

      val eISDIR : float [@@js.global "EISDIR"]

      val eLOOP : float [@@js.global "ELOOP"]

      val eMFILE : float [@@js.global "EMFILE"]

      val eMLINK : float [@@js.global "EMLINK"]

      val eMSGSIZE : float [@@js.global "EMSGSIZE"]

      val eMULTIHOP : float [@@js.global "EMULTIHOP"]

      val eNAMETOOLONG : float [@@js.global "ENAMETOOLONG"]

      val eNETDOWN : float [@@js.global "ENETDOWN"]

      val eNETRESET : float [@@js.global "ENETRESET"]

      val eNETUNREACH : float [@@js.global "ENETUNREACH"]

      val eNFILE : float [@@js.global "ENFILE"]

      val eNOBUFS : float [@@js.global "ENOBUFS"]

      val eNODATA : float [@@js.global "ENODATA"]

      val eNODEV : float [@@js.global "ENODEV"]

      val eNOENT : float [@@js.global "ENOENT"]

      val eNOEXEC : float [@@js.global "ENOEXEC"]

      val eNOLCK : float [@@js.global "ENOLCK"]

      val eNOLINK : float [@@js.global "ENOLINK"]

      val eNOMEM : float [@@js.global "ENOMEM"]

      val eNOMSG : float [@@js.global "ENOMSG"]

      val eNOPROTOOPT : float [@@js.global "ENOPROTOOPT"]

      val eNOSPC : float [@@js.global "ENOSPC"]

      val eNOSR : float [@@js.global "ENOSR"]

      val eNOSTR : float [@@js.global "ENOSTR"]

      val eNOSYS : float [@@js.global "ENOSYS"]

      val eNOTCONN : float [@@js.global "ENOTCONN"]

      val eNOTDIR : float [@@js.global "ENOTDIR"]

      val eNOTEMPTY : float [@@js.global "ENOTEMPTY"]

      val eNOTSOCK : float [@@js.global "ENOTSOCK"]

      val eNOTSUP : float [@@js.global "ENOTSUP"]

      val eNOTTY : float [@@js.global "ENOTTY"]

      val eNXIO : float [@@js.global "ENXIO"]

      val eOPNOTSUPP : float [@@js.global "EOPNOTSUPP"]

      val eOVERFLOW : float [@@js.global "EOVERFLOW"]

      val ePERM : float [@@js.global "EPERM"]

      val ePIPE : float [@@js.global "EPIPE"]

      val ePROTO : float [@@js.global "EPROTO"]

      val ePROTONOSUPPORT : float [@@js.global "EPROTONOSUPPORT"]

      val ePROTOTYPE : float [@@js.global "EPROTOTYPE"]

      val eRANGE : float [@@js.global "ERANGE"]

      val eROFS : float [@@js.global "EROFS"]

      val eSPIPE : float [@@js.global "ESPIPE"]

      val eSRCH : float [@@js.global "ESRCH"]

      val eSTALE : float [@@js.global "ESTALE"]

      val eTIME : float [@@js.global "ETIME"]

      val eTIMEDOUT : float [@@js.global "ETIMEDOUT"]

      val eTXTBSY : float [@@js.global "ETXTBSY"]

      val eWOULDBLOCK : float [@@js.global "EWOULDBLOCK"]

      val eXDEV : float [@@js.global "EXDEV"]

      val wSAEINTR : float [@@js.global "WSAEINTR"]

      val wSAEBADF : float [@@js.global "WSAEBADF"]

      val wSAEACCES : float [@@js.global "WSAEACCES"]

      val wSAEFAULT : float [@@js.global "WSAEFAULT"]

      val wSAEINVAL : float [@@js.global "WSAEINVAL"]

      val wSAEMFILE : float [@@js.global "WSAEMFILE"]

      val wSAEWOULDBLOCK : float [@@js.global "WSAEWOULDBLOCK"]

      val wSAEINPROGRESS : float [@@js.global "WSAEINPROGRESS"]

      val wSAEALREADY : float [@@js.global "WSAEALREADY"]

      val wSAENOTSOCK : float [@@js.global "WSAENOTSOCK"]

      val wSAEDESTADDRREQ : float [@@js.global "WSAEDESTADDRREQ"]

      val wSAEMSGSIZE : float [@@js.global "WSAEMSGSIZE"]

      val wSAEPROTOTYPE : float [@@js.global "WSAEPROTOTYPE"]

      val wSAENOPROTOOPT : float [@@js.global "WSAENOPROTOOPT"]

      val wSAEPROTONOSUPPORT : float [@@js.global "WSAEPROTONOSUPPORT"]

      val wSAESOCKTNOSUPPORT : float [@@js.global "WSAESOCKTNOSUPPORT"]

      val wSAEOPNOTSUPP : float [@@js.global "WSAEOPNOTSUPP"]

      val wSAEPFNOSUPPORT : float [@@js.global "WSAEPFNOSUPPORT"]

      val wSAEAFNOSUPPORT : float [@@js.global "WSAEAFNOSUPPORT"]

      val wSAEADDRINUSE : float [@@js.global "WSAEADDRINUSE"]

      val wSAEADDRNOTAVAIL : float [@@js.global "WSAEADDRNOTAVAIL"]

      val wSAENETDOWN : float [@@js.global "WSAENETDOWN"]

      val wSAENETUNREACH : float [@@js.global "WSAENETUNREACH"]

      val wSAENETRESET : float [@@js.global "WSAENETRESET"]

      val wSAECONNABORTED : float [@@js.global "WSAECONNABORTED"]

      val wSAECONNRESET : float [@@js.global "WSAECONNRESET"]

      val wSAENOBUFS : float [@@js.global "WSAENOBUFS"]

      val wSAEISCONN : float [@@js.global "WSAEISCONN"]

      val wSAENOTCONN : float [@@js.global "WSAENOTCONN"]

      val wSAESHUTDOWN : float [@@js.global "WSAESHUTDOWN"]

      val wSAETOOMANYREFS : float [@@js.global "WSAETOOMANYREFS"]

      val wSAETIMEDOUT : float [@@js.global "WSAETIMEDOUT"]

      val wSAECONNREFUSED : float [@@js.global "WSAECONNREFUSED"]

      val wSAELOOP : float [@@js.global "WSAELOOP"]

      val wSAENAMETOOLONG : float [@@js.global "WSAENAMETOOLONG"]

      val wSAEHOSTDOWN : float [@@js.global "WSAEHOSTDOWN"]

      val wSAEHOSTUNREACH : float [@@js.global "WSAEHOSTUNREACH"]

      val wSAENOTEMPTY : float [@@js.global "WSAENOTEMPTY"]

      val wSAEPROCLIM : float [@@js.global "WSAEPROCLIM"]

      val wSAEUSERS : float [@@js.global "WSAEUSERS"]

      val wSAEDQUOT : float [@@js.global "WSAEDQUOT"]

      val wSAESTALE : float [@@js.global "WSAESTALE"]

      val wSAEREMOTE : float [@@js.global "WSAEREMOTE"]

      val wSASYSNOTREADY : float [@@js.global "WSASYSNOTREADY"]

      val wSAVERNOTSUPPORTED : float [@@js.global "WSAVERNOTSUPPORTED"]

      val wSANOTINITIALISED : float [@@js.global "WSANOTINITIALISED"]

      val wSAEDISCON : float [@@js.global "WSAEDISCON"]

      val wSAENOMORE : float [@@js.global "WSAENOMORE"]

      val wSAECANCELLED : float [@@js.global "WSAECANCELLED"]

      val wSAEINVALIDPROCTABLE : float [@@js.global "WSAEINVALIDPROCTABLE"]

      val wSAEINVALIDPROVIDER : float [@@js.global "WSAEINVALIDPROVIDER"]

      val wSAEPROVIDERFAILEDINIT : float [@@js.global "WSAEPROVIDERFAILEDINIT"]

      val wSASYSCALLFAILURE : float [@@js.global "WSASYSCALLFAILURE"]

      val wSASERVICE_NOT_FOUND : float [@@js.global "WSASERVICE_NOT_FOUND"]

      val wSATYPE_NOT_FOUND : float [@@js.global "WSATYPE_NOT_FOUND"]

      val wSA_E_NO_MORE : float [@@js.global "WSA_E_NO_MORE"]

      val wSA_E_CANCELLED : float [@@js.global "WSA_E_CANCELLED"]

      val wSAEREFUSED : float [@@js.global "WSAEREFUSED"]
    end
    [@@js.scope "errno"]

    module Priority : sig
      val pRIORITY_LOW : float [@@js.global "PRIORITY_LOW"]

      val pRIORITY_BELOW_NORMAL : float [@@js.global "PRIORITY_BELOW_NORMAL"]

      val pRIORITY_NORMAL : float [@@js.global "PRIORITY_NORMAL"]

      val pRIORITY_ABOVE_NORMAL : float [@@js.global "PRIORITY_ABOVE_NORMAL"]

      val pRIORITY_HIGH : float [@@js.global "PRIORITY_HIGH"]

      val pRIORITY_HIGHEST : float [@@js.global "PRIORITY_HIGHEST"]
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

  val getPriority : ?pid:float -> unit -> float [@@js.global "getPriority"]

  val setPriority : priority:float -> unit [@@js.global "setPriority"]

  val setPriority : pid:float -> priority:float -> unit
    [@@js.global "setPriority"]
end
[@@js.scope Import.os]
