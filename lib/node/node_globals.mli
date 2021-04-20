[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_end : t -> bool [@@js.get "end"]

  val set_end : t -> bool -> unit [@@js.set "end"]
end

module AnonymousInterface1 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_paths : t -> string list [@@js.get "paths"]

  val set_paths : t -> string list -> unit [@@js.set "paths"]
end

module AnonymousInterface2 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_type : t -> ([ `Buffer [@js "Buffer"] ][@js.enum]) [@@js.get "type"]

  val set_type : t -> ([ `Buffer ][@js.enum]) -> unit [@@js.set "type"]

  val get_data : t -> int list [@@js.get "data"]

  val set_data : t -> int list -> unit [@@js.set "data"]
end

module AnonymousInterface3 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val valueOf : t -> 'T [@@js.call "valueOf"]
end

module CallSite : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val getThis : t -> any [@@js.call "getThis"]

  val getTypeName : t -> string or_null [@@js.call "getTypeName"]

  val getFunction : t -> untyped_function or_undefined [@@js.call "getFunction"]

  val getFunctionName : t -> string or_null [@@js.call "getFunctionName"]

  val getMethodName : t -> string or_null [@@js.call "getMethodName"]

  val getFileName : t -> string or_null [@@js.call "getFileName"]

  val getLineNumber : t -> int or_null [@@js.call "getLineNumber"]

  val getColumnNumber : t -> int or_null [@@js.call "getColumnNumber"]

  val getEvalOrigin : t -> string or_undefined [@@js.call "getEvalOrigin"]

  val isToplevel : t -> bool [@@js.call "isToplevel"]

  val isEval : t -> bool [@@js.call "isEval"]

  val isNative : t -> bool [@@js.call "isNative"]

  val isConstructor : t -> bool [@@js.call "isConstructor"]
end
[@@js.scope "CallSite"]

module ErrorConstructor : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val captureStackTrace
    :  t
    -> targetObject:untyped_object
    -> ?constructorOpt:untyped_function
    -> unit
    -> unit
    [@@js.call "captureStackTrace"]

  val prepareStackTrace : t -> err:Error.t -> stackTraces:CallSite.t list -> any
    [@@js.call "prepareStackTrace"]

  val get_stackTraceLimit : t -> int [@@js.get "stackTraceLimit"]

  val set_stackTraceLimit : t -> int -> unit [@@js.set "stackTraceLimit"]
end
[@@js.scope "ErrorConstructor"]

module String : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val trimLeft : t -> string [@@js.call "trimLeft"]

  val trimRight : t -> string [@@js.call "trimRight"]

  val trimStart : t -> string [@@js.call "trimStart"]

  val trimEnd : t -> string [@@js.call "trimEnd"]

  val to_ml : t -> string [@@js.cast]

  val of_ml : string -> t [@@js.cast]
end
[@@js.scope "String"]

module ImportMeta : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_url : t -> string [@@js.get "url"]

  val set_url : t -> string -> unit [@@js.set "url"]
end
[@@js.scope "ImportMeta"]

module NodeRequire : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> Require.t [@@js.cast]
end
[@@js.scope "NodeRequire"]

module RequireResolve : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> RequireResolve.t [@@js.cast]
end
[@@js.scope "RequireResolve"]

module NodeModule : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> Module.t [@@js.cast]
end
[@@js.scope "NodeModule"]

(* val process : Node_process.Process.t [@@js.global "process"] *)

(* val console : Console.t [@@js.global "console"] *)

[@@@js.stop]

val __filename : unit -> string

val __dirname : unit -> string

[@@@js.start]

[@@@js.implem
let __filename () =
  Ojs.get_prop_ascii Ojs.global "__filename" |> Ojs.string_of_js

let __dirname () = Ojs.get_prop_ascii Ojs.global "__dirname" |> Ojs.string_of_js]

val setTimeout
  :  callback:(args:(any list[@js.variadic]) -> unit)
  -> ?ms:int
  -> args:(any list[@js.variadic])
  -> Timeout.t
  [@@js.global "setTimeout"]

module SetTimeout : sig
  val __promisify__ : ms:int -> unit Promise.t [@@js.global "__promisify__"]

  val __promisify__ : ms:int -> value:'T -> 'T Promise.t
    [@@js.global "__promisify__"]
end
[@@js.scope "setTimeout"]

val clearTimeout : timeoutId:Timeout.t -> unit [@@js.global "clearTimeout"]

val setInterval
  :  callback:(args:(any list[@js.variadic]) -> unit)
  -> ?ms:int
  -> args:(any list[@js.variadic])
  -> Timeout.t
  [@@js.global "setInterval"]

val clearInterval : intervalId:Timeout.t -> unit [@@js.global "clearInterval"]

val setImmediate
  :  callback:(args:(any list[@js.variadic]) -> unit)
  -> args:(any list[@js.variadic])
  -> Immediate.t
  [@@js.global "setImmediate"]

module SetImmediate : sig
  val __promisify__ : unit -> unit Promise.t [@@js.global "__promisify__"]

  val __promisify__ : value:'T -> 'T Promise.t [@@js.global "__promisify__"]
end
[@@js.scope "setImmediate"]

val clearImmediate : immediateId:Immediate.t -> unit
  [@@js.global "clearImmediate"]

val queueMicrotask : callback:(unit -> unit) -> unit
  [@@js.global "queueMicrotask"]

val require : NodeRequire.t [@@js.global "require"]

val module_ : NodeModule.t [@@js.global "module"]

val exports : any [@@js.global "exports"]

module BufferEncoding : sig
  type t =
    ([ `ascii [@js "ascii"]
     | `base64 [@js "base64"]
     | `binary [@js "binary"]
     | `hex [@js "hex"]
     | `latin1 [@js "latin1"]
     | `ucs_2 [@js "ucs-2"]
     | `ucs2 [@js "ucs2"]
     | `utf_8 [@js "utf-8"]
     | `utf16le [@js "utf16le"]
     | `utf8 [@js "utf8"]
     | `buffer [@js "buffer"]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module WithImplicitCoercion : sig
  type 'T t = ('T, AnonymousInterface3.t) union2

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t
end

module Buffer : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create : str:string -> ?encoding:BufferEncoding.t -> unit -> t
    [@@js.create]

  val create' : size:int -> t [@@js.create]

  val create'' : array:Uint8Array.t -> t [@@js.create]

  val create''' : arrayBuffer:(ArrayBuffer.t, SharedArrayBuffer.t) union2 -> t
    [@@js.create]

  val create'''' : array:any list -> t [@@js.create]

  val create''''' : buffer:t -> t [@@js.create]

  val from
    :  arrayBuffer:
         (ArrayBuffer.t, SharedArrayBuffer.t) union2 WithImplicitCoercion.t
    -> ?byteOffset:int
    -> ?length:int
    -> unit
    -> t
    [@@js.global "from"]

  val from' : data:(Uint8Array.t, int list) union2 -> t [@@js.global "from"]

  val from''
    :  data:(Uint8Array.t, int list) union2 or_string WithImplicitCoercion.t
    -> t
    [@@js.global "from"]

  val of_ : (int list[@js.variadic]) -> t [@@js.global "of"]

  val isBuffer : obj:any -> bool [@@js.global "isBuffer"]

  val isEncoding : encoding:string -> bool [@@js.global "isEncoding"]

  val byteLength
    :  string:
         (ArrayBuffer.t, ArrayBufferView.t, SharedArrayBuffer.t) union3
         or_string
    -> ?encoding:BufferEncoding.t
    -> unit
    -> int
    [@@js.global "byteLength"]

  val concat : list:Uint8Array.t list -> ?totalLength:int -> unit -> t
    [@@js.global "concat"]

  val compare : buf1:Uint8Array.t -> buf2:Uint8Array.t -> int
    [@@js.global "compare"]

  val alloc
    :  size:int
    -> ?fill:t or_string or_number
    -> ?encoding:BufferEncoding.t
    -> unit
    -> t
    [@@js.global "alloc"]

  val allocUnsafe : size:int -> t [@@js.global "allocUnsafe"]

  val allocUnsafeSlow : size:int -> t [@@js.global "allocUnsafeSlow"]

  val get_poolSize : unit -> int [@@js.get "poolSize"]

  val set_poolSize : int -> unit [@@js.set "poolSize"]

  val write : t -> string:string -> ?encoding:BufferEncoding.t -> unit -> int
    [@@js.call "write"]

  val write'
    :  t
    -> string:string
    -> offset:int
    -> ?encoding:BufferEncoding.t
    -> unit
    -> int
    [@@js.call "write"]

  val write''
    :  t
    -> string:string
    -> offset:int
    -> length:int
    -> ?encoding:BufferEncoding.t
    -> unit
    -> int
    [@@js.call "write"]

  val toString
    :  t
    -> ?encoding:BufferEncoding.t
    -> ?start:int
    -> ?end_:int
    -> unit
    -> string
    [@@js.call "toString"]

  val toJSON : t -> AnonymousInterface2.t [@@js.call "toJSON"]

  val equals : t -> otherBuffer:Uint8Array.t -> bool [@@js.call "equals"]

  val compare'
    :  t
    -> otherBuffer:Uint8Array.t
    -> ?targetStart:int
    -> ?targetEnd:int
    -> ?sourceStart:int
    -> ?sourceEnd:int
    -> unit
    -> int
    [@@js.call "compare"]

  val copy
    :  t
    -> targetBuffer:Uint8Array.t
    -> ?targetStart:int
    -> ?sourceStart:int
    -> ?sourceEnd:int
    -> unit
    -> int
    [@@js.call "copy"]

  val slice : t -> ?begin_:int -> ?end_:int -> unit -> t [@@js.call "slice"]

  val subarray : t -> ?begin_:int -> ?end_:int -> unit -> t
    [@@js.call "subarray"]

  val writeBigInt64BE : t -> bigint -> ?offset:int -> unit -> int
    [@@js.call "writeBigInt64BE"]

  val writeBigInt64LE : t -> bigint -> ?offset:int -> unit -> int
    [@@js.call "writeBigInt64LE"]

  val writeBigUInt64BE : t -> bigint -> ?offset:int -> unit -> int
    [@@js.call "writeBigUInt64BE"]

  val writeBigUInt64LE : t -> bigint -> ?offset:int -> unit -> int
    [@@js.call "writeBigUInt64LE"]

  val writeUIntLE : t -> value:int -> offset:int -> byteLength:int -> int
    [@@js.call "writeUIntLE"]

  val writeUIntBE : t -> value:int -> offset:int -> byteLength:int -> int
    [@@js.call "writeUIntBE"]

  val writeIntLE : t -> value:int -> offset:int -> byteLength:int -> int
    [@@js.call "writeIntLE"]

  val writeIntBE : t -> value:int -> offset:int -> byteLength:int -> int
    [@@js.call "writeIntBE"]

  val readBigUInt64BE : t -> ?offset:int -> unit -> bigint
    [@@js.call "readBigUInt64BE"]

  val readBigUInt64LE : t -> ?offset:int -> unit -> bigint
    [@@js.call "readBigUInt64LE"]

  val readBigInt64BE : t -> ?offset:int -> unit -> bigint
    [@@js.call "readBigInt64BE"]

  val readBigInt64LE : t -> ?offset:int -> unit -> bigint
    [@@js.call "readBigInt64LE"]

  val readUIntLE : t -> offset:int -> byteLength:int -> int
    [@@js.call "readUIntLE"]

  val readUIntBE : t -> offset:int -> byteLength:int -> int
    [@@js.call "readUIntBE"]

  val readIntLE : t -> offset:int -> byteLength:int -> int
    [@@js.call "readIntLE"]

  val readIntBE : t -> offset:int -> byteLength:int -> int
    [@@js.call "readIntBE"]

  val readUInt8 : t -> ?offset:int -> unit -> int [@@js.call "readUInt8"]

  val readUInt16LE : t -> ?offset:int -> unit -> int [@@js.call "readUInt16LE"]

  val readUInt16BE : t -> ?offset:int -> unit -> int [@@js.call "readUInt16BE"]

  val readUInt32LE : t -> ?offset:int -> unit -> int [@@js.call "readUInt32LE"]

  val readUInt32BE : t -> ?offset:int -> unit -> int [@@js.call "readUInt32BE"]

  val readInt8 : t -> ?offset:int -> unit -> int [@@js.call "readInt8"]

  val readInt16LE : t -> ?offset:int -> unit -> int [@@js.call "readInt16LE"]

  val readInt16BE : t -> ?offset:int -> unit -> int [@@js.call "readInt16BE"]

  val readInt32LE : t -> ?offset:int -> unit -> int [@@js.call "readInt32LE"]

  val readInt32BE : t -> ?offset:int -> unit -> int [@@js.call "readInt32BE"]

  val readFloatLE : t -> ?offset:int -> unit -> int [@@js.call "readFloatLE"]

  val readFloatBE : t -> ?offset:int -> unit -> int [@@js.call "readFloatBE"]

  val readDoubleLE : t -> ?offset:int -> unit -> int [@@js.call "readDoubleLE"]

  val readDoubleBE : t -> ?offset:int -> unit -> int [@@js.call "readDoubleBE"]

  val reverse : t -> t [@@js.call "reverse"]

  val swap16 : t -> t [@@js.call "swap16"]

  val swap32 : t -> t [@@js.call "swap32"]

  val swap64 : t -> t [@@js.call "swap64"]

  val writeUInt8 : t -> int -> ?offset:int -> unit -> int
    [@@js.call "writeUInt8"]

  val writeUInt16LE : t -> int -> ?offset:int -> unit -> int
    [@@js.call "writeUInt16LE"]

  val writeUInt16BE : t -> int -> ?offset:int -> unit -> int
    [@@js.call "writeUInt16BE"]

  val writeUInt32LE : t -> int -> ?offset:int -> unit -> int
    [@@js.call "writeUInt32LE"]

  val writeUInt32BE : t -> int -> ?offset:int -> unit -> int
    [@@js.call "writeUInt32BE"]

  val writeInt8 : t -> int -> ?offset:int -> unit -> int [@@js.call "writeInt8"]

  val writeInt16LE : t -> int -> ?offset:int -> unit -> int
    [@@js.call "writeInt16LE"]

  val writeInt16BE : t -> int -> ?offset:int -> unit -> int
    [@@js.call "writeInt16BE"]

  val writeInt32LE : t -> int -> ?offset:int -> unit -> int
    [@@js.call "writeInt32LE"]

  val writeInt32BE : t -> int -> ?offset:int -> unit -> int
    [@@js.call "writeInt32BE"]

  val writeFloatLE : t -> int -> ?offset:int -> unit -> int
    [@@js.call "writeFloatLE"]

  val writeFloatBE : t -> int -> ?offset:int -> unit -> int
    [@@js.call "writeFloatBE"]

  val writeDoubleLE : t -> int -> ?offset:int -> unit -> int
    [@@js.call "writeDoubleLE"]

  val writeDoubleBE : t -> int -> ?offset:int -> unit -> int
    [@@js.call "writeDoubleBE"]

  val fill
    :  t
    -> value:Uint8Array.t or_string or_number
    -> ?offset:int
    -> ?end_:int
    -> ?encoding:BufferEncoding.t
    -> unit
    -> t
    [@@js.call "fill"]

  val indexOf
    :  t
    -> value:Uint8Array.t or_string or_number
    -> ?byteOffset:int
    -> ?encoding:BufferEncoding.t
    -> unit
    -> int
    [@@js.call "indexOf"]

  val lastIndexOf
    :  t
    -> value:Uint8Array.t or_string or_number
    -> ?byteOffset:int
    -> ?encoding:BufferEncoding.t
    -> unit
    -> int
    [@@js.call "lastIndexOf"]

  val entries : t -> (int * int) IterableIterator.t [@@js.call "entries"]

  val includes
    :  t
    -> value:t or_string or_number
    -> ?byteOffset:int
    -> ?encoding:BufferEncoding.t
    -> unit
    -> bool
    [@@js.call "includes"]

  val keys : t -> int IterableIterator.t [@@js.call "keys"]

  val values : t -> int IterableIterator.t [@@js.call "values"]

  val cast : t -> Uint8Array.t [@@js.cast]
end
[@@js.scope "Buffer"]

module InspectOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_getters
    :  t
    -> ([ `get [@js "get"] | `set [@js "set"] ][@js.enum]) or_boolean
    [@@js.get "getters"]

  val set_getters : t -> ([ `get | `set ][@js.enum]) or_boolean -> unit
    [@@js.set "getters"]

  val get_showHidden : t -> bool [@@js.get "showHidden"]

  val set_showHidden : t -> bool -> unit [@@js.set "showHidden"]

  val get_depth : t -> int or_null [@@js.get "depth"]

  val set_depth : t -> int or_null -> unit [@@js.set "depth"]

  val get_colors : t -> bool [@@js.get "colors"]

  val set_colors : t -> bool -> unit [@@js.set "colors"]

  val get_customInspect : t -> bool [@@js.get "customInspect"]

  val set_customInspect : t -> bool -> unit [@@js.set "customInspect"]

  val get_showProxy : t -> bool [@@js.get "showProxy"]

  val set_showProxy : t -> bool -> unit [@@js.set "showProxy"]

  val get_maxArrayLength : t -> int or_null [@@js.get "maxArrayLength"]

  val set_maxArrayLength : t -> int or_null -> unit [@@js.set "maxArrayLength"]

  val get_maxStringLength : t -> int or_null [@@js.get "maxStringLength"]

  val set_maxStringLength : t -> int or_null -> unit
    [@@js.set "maxStringLength"]

  val get_breakLength : t -> int [@@js.get "breakLength"]

  val set_breakLength : t -> int -> unit [@@js.set "breakLength"]

  val get_compact : t -> bool or_number [@@js.get "compact"]

  val set_compact : t -> bool or_number -> unit [@@js.set "compact"]

  val get_sorted : t -> (a:string -> b:string -> int) or_boolean
    [@@js.get "sorted"]

  val set_sorted : t -> (a:string -> b:string -> int) or_boolean -> unit
    [@@js.set "sorted"]
end
[@@js.scope "InspectOptions"]

module ErrnoException : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_errno : t -> int [@@js.get "errno"]

  val set_errno : t -> int -> unit [@@js.set "errno"]

  val get_code : t -> string [@@js.get "code"]

  val set_code : t -> string -> unit [@@js.set "code"]

  val get_path : t -> string [@@js.get "path"]

  val set_path : t -> string -> unit [@@js.set "path"]

  val get_syscall : t -> string [@@js.get "syscall"]

  val set_syscall : t -> string -> unit [@@js.set "syscall"]

  val get_stack : t -> string [@@js.get "stack"]

  val set_stack : t -> string -> unit [@@js.set "stack"]

  val cast : t -> Error.t [@@js.cast]
end
[@@js.scope "ErrnoException"]

module ReadableStream : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_readable : t -> bool [@@js.get "readable"]

  val set_readable : t -> bool -> unit [@@js.set "readable"]

  val read : t -> ?size:int -> unit -> Buffer.t or_string [@@js.call "read"]

  val setEncoding : t -> encoding:BufferEncoding.t -> t
    [@@js.call "setEncoding"]

  val pause : t -> t [@@js.call "pause"]

  val resume : t -> t [@@js.call "resume"]

  val isPaused : t -> bool [@@js.call "isPaused"]

  val pipe : t -> destination:'T -> ?options:AnonymousInterface0.t -> unit -> 'T
    [@@js.call "pipe"]

  val unpipe : t -> ?destination:WritableStream.t -> unit -> t
    [@@js.call "unpipe"]

  val unshift
    :  t
    -> chunk:Uint8Array.t or_string
    -> ?encoding:BufferEncoding.t
    -> unit
    -> unit
    [@@js.call "unshift"]

  val wrap : t -> oldStream:t -> t [@@js.call "wrap"]

  (* val cast : t -> EventEmitter.t [@@js.cast] *)
end
[@@js.scope "ReadableStream"]

module WritableStream : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_writable : t -> bool [@@js.get "writable"]

  val set_writable : t -> bool -> unit [@@js.set "writable"]

  val write
    :  t
    -> buffer:Uint8Array.t or_string
    -> ?cb:(?err:Error.t or_null -> unit -> unit)
    -> unit
    -> bool
    [@@js.call "write"]

  val write'
    :  t
    -> str:string
    -> ?encoding:BufferEncoding.t
    -> ?cb:(?err:Error.t or_null -> unit -> unit)
    -> unit
    -> bool
    [@@js.call "write"]

  val end_ : t -> ?cb:(unit -> unit) -> unit -> unit [@@js.call "end"]

  val end_'
    :  t
    -> data:Uint8Array.t or_string
    -> ?cb:(unit -> unit)
    -> unit
    -> unit
    [@@js.call "end"]

  val end_''
    :  t
    -> str:string
    -> ?encoding:BufferEncoding.t
    -> ?cb:(unit -> unit)
    -> unit
    -> unit
    [@@js.call "end"]

  (* val cast : t -> EventEmitter.t [@@js.cast] *)
end
[@@js.scope "WritableStream"]

module ReadWriteStream : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cast : t -> ReadableStream.t [@@js.cast]

  val cast' : t -> WritableStream.t [@@js.cast]
end
[@@js.scope "ReadWriteStream"]

module Global : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_Array : t -> (* FIXME: unknown type 'typeof Array' *) any
    [@@js.get "Array"]

  val set_Array : t -> (* FIXME: unknown type 'typeof Array' *) any -> unit
    [@@js.set "Array"]

  val get_ArrayBuffer : t -> (* FIXME: unknown type 'typeof ArrayBuffer' *) any
    [@@js.get "ArrayBuffer"]

  val set_ArrayBuffer
    :  t
    -> (* FIXME: unknown type 'typeof ArrayBuffer' *) any
    -> unit
    [@@js.set "ArrayBuffer"]

  val get_Boolean : t -> (* FIXME: unknown type 'typeof Boolean' *) any
    [@@js.get "Boolean"]

  val set_Boolean : t -> (* FIXME: unknown type 'typeof Boolean' *) any -> unit
    [@@js.set "Boolean"]

  val get_Buffer : t -> (* FIXME: unknown type 'typeof Buffer' *) any
    [@@js.get "Buffer"]

  val set_Buffer : t -> (* FIXME: unknown type 'typeof Buffer' *) any -> unit
    [@@js.set "Buffer"]

  val get_DataView : t -> (* FIXME: unknown type 'typeof DataView' *) any
    [@@js.get "DataView"]

  val set_DataView
    :  t
    -> (* FIXME: unknown type 'typeof DataView' *) any
    -> unit
    [@@js.set "DataView"]

  val get_Date : t -> (* FIXME: unknown type 'typeof Date' *) any
    [@@js.get "Date"]

  val set_Date : t -> (* FIXME: unknown type 'typeof Date' *) any -> unit
    [@@js.set "Date"]

  val get_Error : t -> (* FIXME: unknown type 'typeof Error' *) any
    [@@js.get "Error"]

  val set_Error : t -> (* FIXME: unknown type 'typeof Error' *) any -> unit
    [@@js.set "Error"]

  val get_EvalError : t -> (* FIXME: unknown type 'typeof EvalError' *) any
    [@@js.get "EvalError"]

  val set_EvalError
    :  t
    -> (* FIXME: unknown type 'typeof EvalError' *) any
    -> unit
    [@@js.set "EvalError"]

  val get_Float32Array
    :  t
    -> (* FIXME: unknown type 'typeof Float32Array' *) any
    [@@js.get "Float32Array"]

  val set_Float32Array
    :  t
    -> (* FIXME: unknown type 'typeof Float32Array' *) any
    -> unit
    [@@js.set "Float32Array"]

  val get_Float64Array
    :  t
    -> (* FIXME: unknown type 'typeof Float64Array' *) any
    [@@js.get "Float64Array"]

  val set_Float64Array
    :  t
    -> (* FIXME: unknown type 'typeof Float64Array' *) any
    -> unit
    [@@js.set "Float64Array"]

  val get_Function : t -> (* FIXME: unknown type 'typeof Function' *) any
    [@@js.get "Function"]

  val set_Function
    :  t
    -> (* FIXME: unknown type 'typeof Function' *) any
    -> unit
    [@@js.set "Function"]

  val get_Infinity : t -> (* FIXME: unknown type 'typeof Infinity' *) any
    [@@js.get "Infinity"]

  val set_Infinity
    :  t
    -> (* FIXME: unknown type 'typeof Infinity' *) any
    -> unit
    [@@js.set "Infinity"]

  val get_Int16Array : t -> (* FIXME: unknown type 'typeof Int16Array' *) any
    [@@js.get "Int16Array"]

  val set_Int16Array
    :  t
    -> (* FIXME: unknown type 'typeof Int16Array' *) any
    -> unit
    [@@js.set "Int16Array"]

  val get_Int32Array : t -> (* FIXME: unknown type 'typeof Int32Array' *) any
    [@@js.get "Int32Array"]

  val set_Int32Array
    :  t
    -> (* FIXME: unknown type 'typeof Int32Array' *) any
    -> unit
    [@@js.set "Int32Array"]

  val get_Int8Array : t -> (* FIXME: unknown type 'typeof Int8Array' *) any
    [@@js.get "Int8Array"]

  val set_Int8Array
    :  t
    -> (* FIXME: unknown type 'typeof Int8Array' *) any
    -> unit
    [@@js.set "Int8Array"]

  val get_Intl : t -> (* FIXME: unknown type 'typeof Intl' *) any
    [@@js.get "Intl"]

  val set_Intl : t -> (* FIXME: unknown type 'typeof Intl' *) any -> unit
    [@@js.set "Intl"]

  val get_JSON : t -> (* FIXME: unknown type 'typeof JSON' *) any
    [@@js.get "JSON"]

  val set_JSON : t -> (* FIXME: unknown type 'typeof JSON' *) any -> unit
    [@@js.set "JSON"]

  val get_Map : t -> MapConstructor.t [@@js.get "Map"]

  val set_Map : t -> MapConstructor.t -> unit [@@js.set "Map"]

  val get_Math : t -> (* FIXME: unknown type 'typeof Math' *) any
    [@@js.get "Math"]

  val set_Math : t -> (* FIXME: unknown type 'typeof Math' *) any -> unit
    [@@js.set "Math"]

  val get_NaN : t -> (* FIXME: unknown type 'typeof NaN' *) any [@@js.get "NaN"]

  val set_NaN : t -> (* FIXME: unknown type 'typeof NaN' *) any -> unit
    [@@js.set "NaN"]

  val get_Number : t -> (* FIXME: unknown type 'typeof Number' *) any
    [@@js.get "Number"]

  val set_Number : t -> (* FIXME: unknown type 'typeof Number' *) any -> unit
    [@@js.set "Number"]

  val get_Object : t -> (* FIXME: unknown type 'typeof Object' *) any
    [@@js.get "Object"]

  val set_Object : t -> (* FIXME: unknown type 'typeof Object' *) any -> unit
    [@@js.set "Object"]

  val get_Promise : t -> (* FIXME: unknown type 'typeof Promise' *) any
    [@@js.get "Promise"]

  val set_Promise : t -> (* FIXME: unknown type 'typeof Promise' *) any -> unit
    [@@js.set "Promise"]

  val get_RangeError : t -> (* FIXME: unknown type 'typeof RangeError' *) any
    [@@js.get "RangeError"]

  val set_RangeError
    :  t
    -> (* FIXME: unknown type 'typeof RangeError' *) any
    -> unit
    [@@js.set "RangeError"]

  val get_ReferenceError
    :  t
    -> (* FIXME: unknown type 'typeof ReferenceError' *) any
    [@@js.get "ReferenceError"]

  val set_ReferenceError
    :  t
    -> (* FIXME: unknown type 'typeof ReferenceError' *) any
    -> unit
    [@@js.set "ReferenceError"]

  val get_RegExp : t -> (* FIXME: unknown type 'typeof RegExp' *) any
    [@@js.get "RegExp"]

  val set_RegExp : t -> (* FIXME: unknown type 'typeof RegExp' *) any -> unit
    [@@js.set "RegExp"]

  val get_Set : t -> SetConstructor.t [@@js.get "Set"]

  val set_Set : t -> SetConstructor.t -> unit [@@js.set "Set"]

  val get_String : t -> (* FIXME: unknown type 'typeof String' *) any
    [@@js.get "String"]

  val set_String : t -> (* FIXME: unknown type 'typeof String' *) any -> unit
    [@@js.set "String"]

  val get_Symbol : t -> untyped_function [@@js.get "Symbol"]

  val set_Symbol : t -> untyped_function -> unit [@@js.set "Symbol"]

  val get_SyntaxError : t -> (* FIXME: unknown type 'typeof SyntaxError' *) any
    [@@js.get "SyntaxError"]

  val set_SyntaxError
    :  t
    -> (* FIXME: unknown type 'typeof SyntaxError' *) any
    -> unit
    [@@js.set "SyntaxError"]

  val get_TypeError : t -> (* FIXME: unknown type 'typeof TypeError' *) any
    [@@js.get "TypeError"]

  val set_TypeError
    :  t
    -> (* FIXME: unknown type 'typeof TypeError' *) any
    -> unit
    [@@js.set "TypeError"]

  val get_URIError : t -> (* FIXME: unknown type 'typeof URIError' *) any
    [@@js.get "URIError"]

  val set_URIError
    :  t
    -> (* FIXME: unknown type 'typeof URIError' *) any
    -> unit
    [@@js.set "URIError"]

  val get_Uint16Array : t -> (* FIXME: unknown type 'typeof Uint16Array' *) any
    [@@js.get "Uint16Array"]

  val set_Uint16Array
    :  t
    -> (* FIXME: unknown type 'typeof Uint16Array' *) any
    -> unit
    [@@js.set "Uint16Array"]

  val get_Uint32Array : t -> (* FIXME: unknown type 'typeof Uint32Array' *) any
    [@@js.get "Uint32Array"]

  val set_Uint32Array
    :  t
    -> (* FIXME: unknown type 'typeof Uint32Array' *) any
    -> unit
    [@@js.set "Uint32Array"]

  val get_Uint8Array : t -> (* FIXME: unknown type 'typeof Uint8Array' *) any
    [@@js.get "Uint8Array"]

  val set_Uint8Array
    :  t
    -> (* FIXME: unknown type 'typeof Uint8Array' *) any
    -> unit
    [@@js.set "Uint8Array"]

  val get_Uint8ClampedArray
    :  t
    -> (* FIXME: unknown type 'typeof Uint8ClampedArray' *) any
    [@@js.get "Uint8ClampedArray"]

  val set_Uint8ClampedArray
    :  t
    -> (* FIXME: unknown type 'typeof Uint8ClampedArray' *) any
    -> unit
    [@@js.set "Uint8ClampedArray"]

  val get_WeakMap : t -> WeakMapConstructor.t [@@js.get "WeakMap"]

  val set_WeakMap : t -> WeakMapConstructor.t -> unit [@@js.set "WeakMap"]

  val get_WeakSet : t -> WeakSetConstructor.t [@@js.get "WeakSet"]

  val set_WeakSet : t -> WeakSetConstructor.t -> unit [@@js.set "WeakSet"]

  val clearImmediate : t -> immediateId:Immediate.t -> unit
    [@@js.call "clearImmediate"]

  val clearInterval : t -> intervalId:Timeout.t -> unit
    [@@js.call "clearInterval"]

  val clearTimeout : t -> timeoutId:Timeout.t -> unit [@@js.call "clearTimeout"]

  val get_decodeURI : t -> (* FIXME: unknown type 'typeof decodeURI' *) any
    [@@js.get "decodeURI"]

  val set_decodeURI
    :  t
    -> (* FIXME: unknown type 'typeof decodeURI' *) any
    -> unit
    [@@js.set "decodeURI"]

  val get_decodeURIComponent
    :  t
    -> (* FIXME: unknown type 'typeof decodeURIComponent' *) any
    [@@js.get "decodeURIComponent"]

  val set_decodeURIComponent
    :  t
    -> (* FIXME: unknown type 'typeof decodeURIComponent' *) any
    -> unit
    [@@js.set "decodeURIComponent"]

  val get_encodeURI : t -> (* FIXME: unknown type 'typeof encodeURI' *) any
    [@@js.get "encodeURI"]

  val set_encodeURI
    :  t
    -> (* FIXME: unknown type 'typeof encodeURI' *) any
    -> unit
    [@@js.set "encodeURI"]

  val get_encodeURIComponent
    :  t
    -> (* FIXME: unknown type 'typeof encodeURIComponent' *) any
    [@@js.get "encodeURIComponent"]

  val set_encodeURIComponent
    :  t
    -> (* FIXME: unknown type 'typeof encodeURIComponent' *) any
    -> unit
    [@@js.set "encodeURIComponent"]

  val escape : t -> str:string -> string [@@js.call "escape"]

  val get_eval : t -> (* FIXME: unknown type 'typeof eval' *) any
    [@@js.get "eval"]

  val set_eval : t -> (* FIXME: unknown type 'typeof eval' *) any -> unit
    [@@js.set "eval"]

  val get_global : t -> t [@@js.get "global"]

  val set_global : t -> t -> unit [@@js.set "global"]

  val get_isFinite : t -> (* FIXME: unknown type 'typeof isFinite' *) any
    [@@js.get "isFinite"]

  val set_isFinite
    :  t
    -> (* FIXME: unknown type 'typeof isFinite' *) any
    -> unit
    [@@js.set "isFinite"]

  val get_isNaN : t -> (* FIXME: unknown type 'typeof isNaN' *) any
    [@@js.get "isNaN"]

  val set_isNaN : t -> (* FIXME: unknown type 'typeof isNaN' *) any -> unit
    [@@js.set "isNaN"]

  val get_parseFloat : t -> (* FIXME: unknown type 'typeof parseFloat' *) any
    [@@js.get "parseFloat"]

  val set_parseFloat
    :  t
    -> (* FIXME: unknown type 'typeof parseFloat' *) any
    -> unit
    [@@js.set "parseFloat"]

  val get_parseInt : t -> (* FIXME: unknown type 'typeof parseInt' *) any
    [@@js.get "parseInt"]

  val set_parseInt
    :  t
    -> (* FIXME: unknown type 'typeof parseInt' *) any
    -> unit
    [@@js.set "parseInt"]

  val setImmediate
    :  t
    -> callback:(args:(any list[@js.variadic]) -> unit)
    -> args:(any list[@js.variadic])
    -> Immediate.t
    [@@js.call "setImmediate"]

  val setInterval
    :  t
    -> callback:(args:(any list[@js.variadic]) -> unit)
    -> ?ms:int
    -> args:(any list[@js.variadic])
    -> Timeout.t
    [@@js.call "setInterval"]

  val setTimeout
    :  t
    -> callback:(args:(any list[@js.variadic]) -> unit)
    -> ?ms:int
    -> args:(any list[@js.variadic])
    -> Timeout.t
    [@@js.call "setTimeout"]

  val queueMicrotask : t -> callback:(unit -> unit) -> unit
    [@@js.call "queueMicrotask"]

  val get_undefined : t -> (* FIXME: unknown type 'typeof undefined' *) any
    [@@js.get "undefined"]

  val set_undefined
    :  t
    -> (* FIXME: unknown type 'typeof undefined' *) any
    -> unit
    [@@js.set "undefined"]

  val unescape : t -> str:string -> string [@@js.call "unescape"]

  val gc : t -> unit [@@js.call "gc"]

  val get_v8debug : t -> any [@@js.get "v8debug"]

  val set_v8debug : t -> any -> unit [@@js.set "v8debug"]
end
[@@js.scope "Global"]

module RefCounted : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val ref : t -> t [@@js.call "ref"]

  val unref : t -> t [@@js.call "unref"]
end
[@@js.scope "RefCounted"]

module Timer : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val hasRef : t -> bool [@@js.call "hasRef"]

  val refresh : t -> t [@@js.call "refresh"]

  val cast : t -> RefCounted.t [@@js.cast]
end
[@@js.scope "Timer"]

module Immediate : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val hasRef : t -> bool [@@js.call "hasRef"]

  val get__onImmediate : t -> untyped_function [@@js.get "_onImmediate"]

  val set__onImmediate : t -> untyped_function -> unit [@@js.set "_onImmediate"]

  val cast : t -> RefCounted.t [@@js.cast]
end
[@@js.scope "Immediate"]

module Timeout : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val hasRef : t -> bool [@@js.call "hasRef"]

  val refresh : t -> t [@@js.call "refresh"]

  val cast : t -> Timer.t [@@js.cast]
end
[@@js.scope "Timeout"]

module TypedArray : sig
  type t =
    | Float64Array of Float64Array.t
    | Int16Array of Int16Array.t
    | Int32Array of Int32Array.t
    | Int8Array of Int8Array.t
    | Uint16Array of Uint16Array.t
    | Uint32Array of Uint32Array.t
    | Uint8Array of Uint8Array.t
    | Uint8ClampedArray of Uint8ClampedArray.t
    | Float32Array of Float32Array.t
    | BigUint64Array of BigUint64Array.t
    | BigInt64Array of BigInt64Array.t [@js.enum]

  [@@@js.stop]

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  [@@@js.start]

  [@@@js.implem
  let t_to_js = function
    | Float64Array x
    | Int16Array x
    | Int32Array x
    | Int8Array x
    | Uint16Array x
    | Uint32Array x
    | Uint8Array x
    | Uint8ClampedArray x
    | Float32Array x
    | BigUint64Array x
    | BigInt64Array x ->
      Obj.magic x

  let t_of_js js =
    match Ojs.obj_type js with
    | "Float64Array" ->
      Float64Array (Obj.magic js)
    | "Int16Array" ->
      Int16Array (Obj.magic js)
    | "Int32Array" ->
      Int32Array (Obj.magic js)
    | "Int8Array" ->
      Int8Array (Obj.magic js)
    | "Uint16Array" ->
      Uint16Array (Obj.magic js)
    | "Uint32Array" ->
      Uint32Array (Obj.magic js)
    | "Uint8Array" ->
      Uint8Array (Obj.magic js)
    | "Uint8ClampedArray" ->
      Uint8ClampedArray (Obj.magic js)
    | "Float32Array" ->
      Float32Array (Obj.magic js)
    | "BigUint64Array" ->
      BigUint64Array (Obj.magic js)
    | "BigInt64Array" ->
      BigInt64Array (Obj.magic js)]
end

module ArrayBufferView : sig
  type t = (DataView.t, TypedArray.t) union2

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module Require : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> id:string -> any [@@js.apply]

  val get_resolve : t -> RequireResolve.t [@@js.get "resolve"]

  val set_resolve : t -> RequireResolve.t -> unit [@@js.set "resolve"]

  val get_cache : t -> NodeModule.t Dict.t [@@js.get "cache"]

  val set_cache : t -> NodeModule.t Dict.t -> unit [@@js.set "cache"]

  val get_extensions : t -> RequireExtensions.t [@@js.get "extensions"]

  val set_extensions : t -> RequireExtensions.t -> unit [@@js.set "extensions"]

  val get_main : t -> Module.t or_undefined [@@js.get "main"]

  val set_main : t -> Module.t or_undefined -> unit [@@js.set "main"]
end
[@@js.scope "Require"]

module RequireResolve : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> id:string -> ?options:AnonymousInterface1.t -> unit -> string
    [@@js.apply]

  val paths : t -> request:string -> string list or_null [@@js.call "paths"]
end
[@@js.scope "RequireResolve"]

module RequireExtensions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  (* val js.t : t -> m:Module.t -> filename:string -> any [@@js.call ".js"] *)

  (* val json.t : t -> m:Module.t -> filename:string -> any [@@js.call ".json"] *)

  (* val node.t : t -> m:Module.t -> filename:string -> any [@@js.call ".node"] *)

  val cast : t -> (m:Module.t -> filename:string -> any) Dict.t [@@js.cast]
end
[@@js.scope "RequireExtensions"]

module Module : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_exports : t -> any [@@js.get "exports"]

  val set_exports : t -> any -> unit [@@js.set "exports"]

  val get_require : t -> Require.t [@@js.get "require"]

  val set_require : t -> Require.t -> unit [@@js.set "require"]

  val get_id : t -> string [@@js.get "id"]

  val set_id : t -> string -> unit [@@js.set "id"]

  val get_filename : t -> string [@@js.get "filename"]

  val set_filename : t -> string -> unit [@@js.set "filename"]

  val get_loaded : t -> bool [@@js.get "loaded"]

  val set_loaded : t -> bool -> unit [@@js.set "loaded"]

  val get_parent : t -> t or_null_or_undefined [@@js.get "parent"]

  val set_parent : t -> t or_null_or_undefined -> unit [@@js.set "parent"]

  val get_children : t -> t list [@@js.get "children"]

  val set_children : t -> t list -> unit [@@js.set "children"]

  val get_path : t -> string [@@js.get "path"]

  val set_path : t -> string -> unit [@@js.set "path"]

  val get_paths : t -> string list [@@js.get "paths"]

  val set_paths : t -> string list -> unit [@@js.set "paths"]
end
[@@js.scope "Module"]

module Dict : sig
  type 'T t = 'T Dict.t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val get : 'T t -> string -> 'T or_undefined [@@js.index_get]

  val set : 'T t -> string -> 'T or_undefined -> unit [@@js.index_set]
end
[@@js.scope "Dict"]

module ReadOnlyDict : sig
  type 'T t = 'T ReadOnlyDict.t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val get : 'T t -> string -> 'T or_undefined [@@js.index_get]
end
[@@js.scope "ReadOnlyDict"]
