[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Globals

module Internal : sig
  module AnonymousInterfaces : sig end

  module Types : sig
    open AnonymousInterfaces

    type v8_DefaultDeserializer =
      [ `V8_DefaultDeserializer | `V8_Deserializer ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and v8_DefaultSerializer = [ `V8_DefaultSerializer | `V8_Serializer ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and v8_Deserializer = [ `V8_Deserializer ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and v8_DoesZapCodeSpaceFlag =
      ([ `L_n_0 [@js 0]
       | `L_n_1 [@js 1]
       ]
      [@js.enum])

    and v8_HeapCodeStatistics = [ `V8_HeapCodeStatistics ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and v8_HeapInfo = [ `V8_HeapInfo ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and v8_HeapSpaceInfo = [ `V8_HeapSpaceInfo ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]

    and v8_Serializer = [ `V8_Serializer ] intf
    [@@js.custom { of_js = Obj.magic; to_js = Obj.magic }]
  end
end

open Internal
open AnonymousInterfaces
open Types

module V8 : sig
  open Stream

  module HeapSpaceInfo : sig
    type t = v8_HeapSpaceInfo

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_space_name : t -> string [@@js.get "space_name"]

    val set_space_name : t -> string -> unit [@@js.set "space_name"]

    val get_space_size : t -> float [@@js.get "space_size"]

    val set_space_size : t -> float -> unit [@@js.set "space_size"]

    val get_space_used_size : t -> float [@@js.get "space_used_size"]

    val set_space_used_size : t -> float -> unit [@@js.set "space_used_size"]

    val get_space_available_size : t -> float [@@js.get "space_available_size"]

    val set_space_available_size : t -> float -> unit
      [@@js.set "space_available_size"]

    val get_physical_space_size : t -> float [@@js.get "physical_space_size"]

    val set_physical_space_size : t -> float -> unit
      [@@js.set "physical_space_size"]
  end
  [@@js.scope "HeapSpaceInfo"]

  module DoesZapCodeSpaceFlag : sig
    type t = v8_DoesZapCodeSpaceFlag

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t
  end

  module HeapInfo : sig
    type t = v8_HeapInfo

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_total_heap_size : t -> float [@@js.get "total_heap_size"]

    val set_total_heap_size : t -> float -> unit [@@js.set "total_heap_size"]

    val get_total_heap_size_executable : t -> float
      [@@js.get "total_heap_size_executable"]

    val set_total_heap_size_executable : t -> float -> unit
      [@@js.set "total_heap_size_executable"]

    val get_total_physical_size : t -> float [@@js.get "total_physical_size"]

    val set_total_physical_size : t -> float -> unit
      [@@js.set "total_physical_size"]

    val get_total_available_size : t -> float [@@js.get "total_available_size"]

    val set_total_available_size : t -> float -> unit
      [@@js.set "total_available_size"]

    val get_used_heap_size : t -> float [@@js.get "used_heap_size"]

    val set_used_heap_size : t -> float -> unit [@@js.set "used_heap_size"]

    val get_heap_size_limit : t -> float [@@js.get "heap_size_limit"]

    val set_heap_size_limit : t -> float -> unit [@@js.set "heap_size_limit"]

    val get_malloced_memory : t -> float [@@js.get "malloced_memory"]

    val set_malloced_memory : t -> float -> unit [@@js.set "malloced_memory"]

    val get_peak_malloced_memory : t -> float [@@js.get "peak_malloced_memory"]

    val set_peak_malloced_memory : t -> float -> unit
      [@@js.set "peak_malloced_memory"]

    val get_does_zap_garbage : t -> v8_DoesZapCodeSpaceFlag
      [@@js.get "does_zap_garbage"]

    val set_does_zap_garbage : t -> v8_DoesZapCodeSpaceFlag -> unit
      [@@js.set "does_zap_garbage"]

    val get_number_of_native_contexts : t -> float
      [@@js.get "number_of_native_contexts"]

    val set_number_of_native_contexts : t -> float -> unit
      [@@js.set "number_of_native_contexts"]

    val get_number_of_detached_contexts : t -> float
      [@@js.get "number_of_detached_contexts"]

    val set_number_of_detached_contexts : t -> float -> unit
      [@@js.set "number_of_detached_contexts"]
  end
  [@@js.scope "HeapInfo"]

  module HeapCodeStatistics : sig
    type t = v8_HeapCodeStatistics

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val get_code_and_metadata_size : t -> float
      [@@js.get "code_and_metadata_size"]

    val set_code_and_metadata_size : t -> float -> unit
      [@@js.set "code_and_metadata_size"]

    val get_bytecode_and_metadata_size : t -> float
      [@@js.get "bytecode_and_metadata_size"]

    val set_bytecode_and_metadata_size : t -> float -> unit
      [@@js.set "bytecode_and_metadata_size"]

    val get_external_script_source_size : t -> float
      [@@js.get "external_script_source_size"]

    val set_external_script_source_size : t -> float -> unit
      [@@js.set "external_script_source_size"]
  end
  [@@js.scope "HeapCodeStatistics"]

  val cachedDataVersionTag : unit -> float [@@js.global "cachedDataVersionTag"]

  val getHeapStatistics : unit -> v8_HeapInfo [@@js.global "getHeapStatistics"]

  val getHeapSpaceStatistics : unit -> v8_HeapSpaceInfo list
    [@@js.global "getHeapSpaceStatistics"]

  val setFlagsFromString : flags:string -> unit
    [@@js.global "setFlagsFromString"]

  val getHeapSnapshot : unit -> Stream.Readable.t
    [@@js.global "getHeapSnapshot"]

  val writeHeapSnapshot : ?fileName:string -> unit -> string
    [@@js.global "writeHeapSnapshot"]

  val getHeapCodeStatistics : unit -> v8_HeapCodeStatistics
    [@@js.global "getHeapCodeStatistics"]

  module Serializer : sig
    type t = v8_Serializer

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val writeHeader : t -> unit [@@js.call "writeHeader"]

    val writeValue : t -> val_:any -> bool [@@js.call "writeValue"]

    val releaseBuffer : t -> Buffer.t [@@js.call "releaseBuffer"]

    val transferArrayBuffer : t -> id:float -> arrayBuffer:ArrayBuffer.t -> unit
      [@@js.call "transferArrayBuffer"]

    val writeUint32 : t -> value:float -> unit [@@js.call "writeUint32"]

    val writeUint64 : t -> hi:float -> lo:float -> unit
      [@@js.call "writeUint64"]

    val writeDouble : t -> value:float -> unit [@@js.call "writeDouble"]

    val writeRawBytes : t -> buffer:TypedArray.t -> unit
      [@@js.call "writeRawBytes"]
  end
  [@@js.scope "Serializer"]

  module DefaultSerializer : sig
    type t = v8_DefaultSerializer

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> v8_Serializer [@@js.cast]
  end
  [@@js.scope "DefaultSerializer"]

  module Deserializer : sig
    type t = v8_Deserializer

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val create : data:TypedArray.t -> t [@@js.create]

    val readHeader : t -> bool [@@js.call "readHeader"]

    val readValue : t -> any [@@js.call "readValue"]

    val transferArrayBuffer : t -> id:float -> arrayBuffer:ArrayBuffer.t -> unit
      [@@js.call "transferArrayBuffer"]

    val getWireFormatVersion : t -> float [@@js.call "getWireFormatVersion"]

    val readUint32 : t -> float [@@js.call "readUint32"]

    val readUint64 : t -> float * float [@@js.call "readUint64"]

    val readDouble : t -> float [@@js.call "readDouble"]

    val readRawBytes : t -> length:float -> Buffer.t [@@js.call "readRawBytes"]
  end
  [@@js.scope "Deserializer"]

  module DefaultDeserializer : sig
    type t = v8_DefaultDeserializer

    val t_to_js : t -> Ojs.t

    val t_of_js : Ojs.t -> t

    val cast : t -> v8_Deserializer [@@js.cast]
  end
  [@@js.scope "DefaultDeserializer"]

  val serialize : value:any -> Buffer.t [@@js.global "serialize"]

  val deserialize : data:TypedArray.t -> any [@@js.global "deserialize"]
end
[@@js.scope Import.v8]
