[@@@ocaml.warning "-7-11-32-33-39"]
[@@@js.implem 
  [@@@ocaml.warning "-7-11-32-33-39"]
]
open Ts2ocaml_baselib
(* 
  unknown identifiers:
  - AbstractCancellationTokenSource
  - CancellationToken
  - Disposable
  - Error
  - Event<T1>
  - Message
  - MessageReader
  - MessageWriter
  - NotificationMessage
  - NotificationType<T1>
  - NotificationType0
  - NotificationType1<T1>
  - NotificationType2<T1, T2>
  - NotificationType3<T1, T2, T3>
  - NotificationType4<T1, T2, T3, T4>
  - NotificationType5<T1, T2, T3, T4, T5>
  - NotificationType6<T1, T2, T3, T4, T5, T6>
  - NotificationType7<T1, T2, T3, T4, T5, T6, T7>
  - NotificationType8<T1, T2, T3, T4, T5, T6, T7, T8>
  - NotificationType9<T1, T2, T3, T4, T5, T6, T7, T8, T9>
  - ParameterStructures
  - Promise<T1>
  - RequestType<T1, T2, T3>
  - RequestType0<T1, T2>
  - RequestType1<T1, T2, T3>
  - RequestType2<T1, T2, T3, T4>
  - RequestType3<T1, T2, T3, T4, T5>
  - RequestType4<T1, T2, T3, T4, T5, T6>
  - RequestType5<T1, T2, T3, T4, T5, T6, T7>
  - RequestType6<T1, T2, T3, T4, T5, T6, T7, T8>
  - RequestType7<T1, T2, T3, T4, T5, T6, T7, T8, T9>
  - RequestType8<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>
  - RequestType9<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>
  - ResponseError<T1>
  - ResponseMessage
  - Thenable<T1>
  - _EM
 *)
[@@@js.stop]
module type Missing = sig
  module AbstractCancellationTokenSource : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module CancellationToken : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Disposable : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Error : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Event : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module Message : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module MessageReader : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module MessageWriter : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module NotificationMessage : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module NotificationType : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module NotificationType0 : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module NotificationType1 : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module NotificationType2 : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
  end
  module NotificationType3 : sig
    type ('T1, 'T2, 'T3) t_3
    val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
  end
  module NotificationType4 : sig
    type ('T1, 'T2, 'T3, 'T4) t_4
    val t_4_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4) t_4 -> Ojs.t
    val t_4_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4) t_4
  end
  module NotificationType5 : sig
    type ('T1, 'T2, 'T3, 'T4, 'T5) t_5
    val t_5_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5 -> Ojs.t
    val t_5_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5
  end
  module NotificationType6 : sig
    type ('T1, 'T2, 'T3, 'T4, 'T5, 'T6) t_6
    val t_6_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T6 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6) t_6 -> Ojs.t
    val t_6_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> (Ojs.t -> 'T6) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6) t_6
  end
  module NotificationType7 : sig
    type ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7) t_7
    val t_7_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T6 -> Ojs.t) -> ('T7 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7) t_7 -> Ojs.t
    val t_7_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> (Ojs.t -> 'T6) -> (Ojs.t -> 'T7) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7) t_7
  end
  module NotificationType8 : sig
    type ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8) t_8
    val t_8_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T6 -> Ojs.t) -> ('T7 -> Ojs.t) -> ('T8 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8) t_8 -> Ojs.t
    val t_8_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> (Ojs.t -> 'T6) -> (Ojs.t -> 'T7) -> (Ojs.t -> 'T8) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8) t_8
  end
  module NotificationType9 : sig
    type ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9) t_9
    val t_9_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T6 -> Ojs.t) -> ('T7 -> Ojs.t) -> ('T8 -> Ojs.t) -> ('T9 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9) t_9 -> Ojs.t
    val t_9_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> (Ojs.t -> 'T6) -> (Ojs.t -> 'T7) -> (Ojs.t -> 'T8) -> (Ojs.t -> 'T9) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9) t_9
  end
  module ParameterStructures : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Promise : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module RequestType : sig
    type ('T1, 'T2, 'T3) t_3
    val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
  end
  module RequestType0 : sig
    type ('T1, 'T2) t_2
    val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
  end
  module RequestType1 : sig
    type ('T1, 'T2, 'T3) t_3
    val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
  end
  module RequestType2 : sig
    type ('T1, 'T2, 'T3, 'T4) t_4
    val t_4_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4) t_4 -> Ojs.t
    val t_4_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4) t_4
  end
  module RequestType3 : sig
    type ('T1, 'T2, 'T3, 'T4, 'T5) t_5
    val t_5_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5 -> Ojs.t
    val t_5_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5
  end
  module RequestType4 : sig
    type ('T1, 'T2, 'T3, 'T4, 'T5, 'T6) t_6
    val t_6_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T6 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6) t_6 -> Ojs.t
    val t_6_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> (Ojs.t -> 'T6) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6) t_6
  end
  module RequestType5 : sig
    type ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7) t_7
    val t_7_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T6 -> Ojs.t) -> ('T7 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7) t_7 -> Ojs.t
    val t_7_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> (Ojs.t -> 'T6) -> (Ojs.t -> 'T7) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7) t_7
  end
  module RequestType6 : sig
    type ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8) t_8
    val t_8_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T6 -> Ojs.t) -> ('T7 -> Ojs.t) -> ('T8 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8) t_8 -> Ojs.t
    val t_8_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> (Ojs.t -> 'T6) -> (Ojs.t -> 'T7) -> (Ojs.t -> 'T8) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8) t_8
  end
  module RequestType7 : sig
    type ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9) t_9
    val t_9_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T6 -> Ojs.t) -> ('T7 -> Ojs.t) -> ('T8 -> Ojs.t) -> ('T9 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9) t_9 -> Ojs.t
    val t_9_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> (Ojs.t -> 'T6) -> (Ojs.t -> 'T7) -> (Ojs.t -> 'T8) -> (Ojs.t -> 'T9) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9) t_9
  end
  module RequestType8 : sig
    type ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9, 'T10) t_10
    val t_10_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T6 -> Ojs.t) -> ('T7 -> Ojs.t) -> ('T8 -> Ojs.t) -> ('T9 -> Ojs.t) -> ('T10 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9, 'T10) t_10 -> Ojs.t
    val t_10_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> (Ojs.t -> 'T6) -> (Ojs.t -> 'T7) -> (Ojs.t -> 'T8) -> (Ojs.t -> 'T9) -> (Ojs.t -> 'T10) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9, 'T10) t_10
  end
  module RequestType9 : sig
    type ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9, 'T10, 'T11) t_11
    val t_11_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T6 -> Ojs.t) -> ('T7 -> Ojs.t) -> ('T8 -> Ojs.t) -> ('T9 -> Ojs.t) -> ('T10 -> Ojs.t) -> ('T11 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9, 'T10, 'T11) t_11 -> Ojs.t
    val t_11_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> (Ojs.t -> 'T6) -> (Ojs.t -> 'T7) -> (Ojs.t -> 'T8) -> (Ojs.t -> 'T9) -> (Ojs.t -> 'T10) -> (Ojs.t -> 'T11) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9, 'T10, 'T11) t_11
  end
  module ResponseError : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module ResponseMessage : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module Thenable : sig
    type 'T1 t_1
    val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
  end
  module _EM : sig
    type t_0
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
end
[@@@js.start]
[@@@js.implem 
  module type Missing = sig
    module AbstractCancellationTokenSource : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module CancellationToken : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Disposable : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Error : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Event : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module Message : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module MessageReader : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module MessageWriter : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module NotificationMessage : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module NotificationType : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module NotificationType0 : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module NotificationType1 : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module NotificationType2 : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    end
    module NotificationType3 : sig
      type ('T1, 'T2, 'T3) t_3
      val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
      val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
    end
    module NotificationType4 : sig
      type ('T1, 'T2, 'T3, 'T4) t_4
      val t_4_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4) t_4 -> Ojs.t
      val t_4_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4) t_4
    end
    module NotificationType5 : sig
      type ('T1, 'T2, 'T3, 'T4, 'T5) t_5
      val t_5_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5 -> Ojs.t
      val t_5_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5
    end
    module NotificationType6 : sig
      type ('T1, 'T2, 'T3, 'T4, 'T5, 'T6) t_6
      val t_6_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T6 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6) t_6 -> Ojs.t
      val t_6_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> (Ojs.t -> 'T6) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6) t_6
    end
    module NotificationType7 : sig
      type ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7) t_7
      val t_7_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T6 -> Ojs.t) -> ('T7 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7) t_7 -> Ojs.t
      val t_7_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> (Ojs.t -> 'T6) -> (Ojs.t -> 'T7) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7) t_7
    end
    module NotificationType8 : sig
      type ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8) t_8
      val t_8_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T6 -> Ojs.t) -> ('T7 -> Ojs.t) -> ('T8 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8) t_8 -> Ojs.t
      val t_8_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> (Ojs.t -> 'T6) -> (Ojs.t -> 'T7) -> (Ojs.t -> 'T8) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8) t_8
    end
    module NotificationType9 : sig
      type ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9) t_9
      val t_9_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T6 -> Ojs.t) -> ('T7 -> Ojs.t) -> ('T8 -> Ojs.t) -> ('T9 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9) t_9 -> Ojs.t
      val t_9_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> (Ojs.t -> 'T6) -> (Ojs.t -> 'T7) -> (Ojs.t -> 'T8) -> (Ojs.t -> 'T9) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9) t_9
    end
    module ParameterStructures : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Promise : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module RequestType : sig
      type ('T1, 'T2, 'T3) t_3
      val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
      val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
    end
    module RequestType0 : sig
      type ('T1, 'T2) t_2
      val t_2_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T1, 'T2) t_2 -> Ojs.t
      val t_2_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> Ojs.t -> ('T1, 'T2) t_2
    end
    module RequestType1 : sig
      type ('T1, 'T2, 'T3) t_3
      val t_3_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T1, 'T2, 'T3) t_3 -> Ojs.t
      val t_3_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> Ojs.t -> ('T1, 'T2, 'T3) t_3
    end
    module RequestType2 : sig
      type ('T1, 'T2, 'T3, 'T4) t_4
      val t_4_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4) t_4 -> Ojs.t
      val t_4_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4) t_4
    end
    module RequestType3 : sig
      type ('T1, 'T2, 'T3, 'T4, 'T5) t_5
      val t_5_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5 -> Ojs.t
      val t_5_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5) t_5
    end
    module RequestType4 : sig
      type ('T1, 'T2, 'T3, 'T4, 'T5, 'T6) t_6
      val t_6_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T6 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6) t_6 -> Ojs.t
      val t_6_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> (Ojs.t -> 'T6) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6) t_6
    end
    module RequestType5 : sig
      type ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7) t_7
      val t_7_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T6 -> Ojs.t) -> ('T7 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7) t_7 -> Ojs.t
      val t_7_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> (Ojs.t -> 'T6) -> (Ojs.t -> 'T7) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7) t_7
    end
    module RequestType6 : sig
      type ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8) t_8
      val t_8_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T6 -> Ojs.t) -> ('T7 -> Ojs.t) -> ('T8 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8) t_8 -> Ojs.t
      val t_8_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> (Ojs.t -> 'T6) -> (Ojs.t -> 'T7) -> (Ojs.t -> 'T8) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8) t_8
    end
    module RequestType7 : sig
      type ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9) t_9
      val t_9_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T6 -> Ojs.t) -> ('T7 -> Ojs.t) -> ('T8 -> Ojs.t) -> ('T9 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9) t_9 -> Ojs.t
      val t_9_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> (Ojs.t -> 'T6) -> (Ojs.t -> 'T7) -> (Ojs.t -> 'T8) -> (Ojs.t -> 'T9) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9) t_9
    end
    module RequestType8 : sig
      type ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9, 'T10) t_10
      val t_10_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T6 -> Ojs.t) -> ('T7 -> Ojs.t) -> ('T8 -> Ojs.t) -> ('T9 -> Ojs.t) -> ('T10 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9, 'T10) t_10 -> Ojs.t
      val t_10_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> (Ojs.t -> 'T6) -> (Ojs.t -> 'T7) -> (Ojs.t -> 'T8) -> (Ojs.t -> 'T9) -> (Ojs.t -> 'T10) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9, 'T10) t_10
    end
    module RequestType9 : sig
      type ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9, 'T10, 'T11) t_11
      val t_11_to_js: ('T1 -> Ojs.t) -> ('T2 -> Ojs.t) -> ('T3 -> Ojs.t) -> ('T4 -> Ojs.t) -> ('T5 -> Ojs.t) -> ('T6 -> Ojs.t) -> ('T7 -> Ojs.t) -> ('T8 -> Ojs.t) -> ('T9 -> Ojs.t) -> ('T10 -> Ojs.t) -> ('T11 -> Ojs.t) -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9, 'T10, 'T11) t_11 -> Ojs.t
      val t_11_of_js: (Ojs.t -> 'T1) -> (Ojs.t -> 'T2) -> (Ojs.t -> 'T3) -> (Ojs.t -> 'T4) -> (Ojs.t -> 'T5) -> (Ojs.t -> 'T6) -> (Ojs.t -> 'T7) -> (Ojs.t -> 'T8) -> (Ojs.t -> 'T9) -> (Ojs.t -> 'T10) -> (Ojs.t -> 'T11) -> Ojs.t -> ('T1, 'T2, 'T3, 'T4, 'T5, 'T6, 'T7, 'T8, 'T9, 'T10, 'T11) t_11
    end
    module ResponseError : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module ResponseMessage : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
    module Thenable : sig
      type 'T1 t_1
      val t_1_to_js: ('T1 -> Ojs.t) -> 'T1 t_1 -> Ojs.t
      val t_1_of_js: (Ojs.t -> 'T1) -> Ojs.t -> 'T1 t_1
    end
    module _EM : sig
      type t_0
      val t_0_to_js: t_0 -> Ojs.t
      val t_0_of_js: Ojs.t -> t_0
    end
  end
]
module Make (M: Missing) : sig
  open M
  module Internal : sig
    module AnonymousInterfaces : sig
      type anonymous_interface_0 = [`anonymous_interface_0] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
    module Types : sig
      open AnonymousInterfaces
      type _CancellationId = string or_number
      and _CancellationReceiverStrategy = [`CancellationReceiverStrategy] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _CancellationSenderStrategy = [`CancellationSenderStrategy] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _CancellationStrategy = [`CancellationStrategy] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ConnectionError = [`ConnectionError] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ConnectionErrors = [`Closed[@js 1] | `Disposed[@js 2] | `AlreadyListening[@js 3]] [@js.enum]
      and _ConnectionErrors_Closed = [`Closed[@js 1]] [@js.enum]
      and _ConnectionErrors_Disposed = [`Disposed[@js 2]] [@js.enum]
      and _ConnectionErrors_AlreadyListening = [`AlreadyListening[@js 3]] [@js.enum]
      and _ConnectionOptions = [`ConnectionOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _ConnectionStrategy = anonymous_interface_0
      and _GenericNotificationHandler = [`GenericNotificationHandler] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and ('R, 'E) _GenericRequestHandler = [`GenericRequestHandler of ('R * 'E)] intf
      [@@js.custom { of_js=(fun _R _E -> Obj.magic); to_js=(fun _R _E -> Obj.magic) }]
      and ('R, 'E) _HandlerResult = ('R, 'E ResponseError.t_1, 'R Thenable.t_1, ('R, 'E ResponseError.t_1) union2 Thenable.t_1, 'E ResponseError.t_1 Thenable.t_1) union5
      and _LogTraceParams = [`LogTraceParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Logger = [`Logger] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _MessageConnection = [`MessageConnection] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'P _NotificationHandler = [`NotificationHandler of 'P] intf
      [@@js.custom { of_js=(fun _P -> Obj.magic); to_js=(fun _P -> Obj.magic) }]
      and _NotificationHandler0 = [`NotificationHandler0] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and 'P1 _NotificationHandler1 = [`NotificationHandler1 of 'P1] intf
      [@@js.custom { of_js=(fun _P1 -> Obj.magic); to_js=(fun _P1 -> Obj.magic) }]
      and ('P1, 'P2) _NotificationHandler2 = [`NotificationHandler2 of ('P1 * 'P2)] intf
      [@@js.custom { of_js=(fun _P1 _P2 -> Obj.magic); to_js=(fun _P1 _P2 -> Obj.magic) }]
      and ('P1, 'P2, 'P3) _NotificationHandler3 = [`NotificationHandler3 of ('P1 * 'P2 * 'P3)] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 -> Obj.magic); to_js=(fun _P1 _P2 _P3 -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4) _NotificationHandler4 = [`NotificationHandler4 of ('P1 * 'P2 * 'P3 * 'P4)] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'P5) _NotificationHandler5 = [`NotificationHandler5 of ('P1 * 'P2 * 'P3 * 'P4 * 'P5)] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _P5 -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _P5 -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) _NotificationHandler6 = [`NotificationHandler6 of ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6)] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) _NotificationHandler7 = [`NotificationHandler7 of ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7)] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) _NotificationHandler8 = [`NotificationHandler8 of ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8)] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) _NotificationHandler9 = [`NotificationHandler9 of ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * 'P9)] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 -> Obj.magic) }]
      and 'T _ProgressParams = [`ProgressParams of 'T] intf
      [@@js.custom { of_js=(fun _T -> Obj.magic); to_js=(fun _T -> Obj.magic) }]
      and _ProgressToken = string or_number
      and 'PR _ProgressType = [`ProgressType of 'PR] intf
      [@@js.custom { of_js=(fun _PR -> Obj.magic); to_js=(fun _PR -> Obj.magic) }]
      and ('P, 'R, 'E) _RequestHandler = [`RequestHandler of ('P * 'R * 'E)] intf
      [@@js.custom { of_js=(fun _P _R _E -> Obj.magic); to_js=(fun _P _R _E -> Obj.magic) }]
      and ('R, 'E) _RequestHandler0 = [`RequestHandler0 of ('R * 'E)] intf
      [@@js.custom { of_js=(fun _R _E -> Obj.magic); to_js=(fun _R _E -> Obj.magic) }]
      and ('P1, 'R, 'E) _RequestHandler1 = [`RequestHandler1 of ('P1 * 'R * 'E)] intf
      [@@js.custom { of_js=(fun _P1 _R _E -> Obj.magic); to_js=(fun _P1 _R _E -> Obj.magic) }]
      and ('P1, 'P2, 'R, 'E) _RequestHandler2 = [`RequestHandler2 of ('P1 * 'P2 * 'R * 'E)] intf
      [@@js.custom { of_js=(fun _P1 _P2 _R _E -> Obj.magic); to_js=(fun _P1 _P2 _R _E -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'R, 'E) _RequestHandler3 = [`RequestHandler3 of ('P1 * 'P2 * 'P3 * 'R * 'E)] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _R _E -> Obj.magic); to_js=(fun _P1 _P2 _P3 _R _E -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'R, 'E) _RequestHandler4 = [`RequestHandler4 of ('P1 * 'P2 * 'P3 * 'P4 * 'R * 'E)] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _R _E -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _R _E -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) _RequestHandler5 = [`RequestHandler5 of ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'R * 'E)] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _P5 _R _E -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _P5 _R _E -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) _RequestHandler6 = [`RequestHandler6 of ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'R * 'E)] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _R _E -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _R _E -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) _RequestHandler7 = [`RequestHandler7 of ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'R * 'E)] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _R _E -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _R _E -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) _RequestHandler8 = [`RequestHandler8 of ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * 'R * 'E)] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _R _E -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _R _E -> Obj.magic) }]
      and ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) _RequestHandler9 = [`RequestHandler9 of ('P1 * 'P2 * 'P3 * 'P4 * 'P5 * 'P6 * 'P7 * 'P8 * 'P9 * 'R * 'E)] intf
      [@@js.custom { of_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 _R _E -> Obj.magic); to_js=(fun _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 _R _E -> Obj.magic) }]
      and _SetTraceParams = [`SetTraceParams] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _StarNotificationHandler = [`StarNotificationHandler] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _StarRequestHandler = [`StarRequestHandler] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _Trace = [`Off[@js 0] | `Messages[@js 1] | `Verbose[@js 2]] [@js.enum]
      and _Trace_Off = [`Off[@js 0]] [@js.enum]
      and _Trace_Messages = [`Messages[@js 1]] [@js.enum]
      and _Trace_Verbose = [`Verbose[@js 2]] [@js.enum]
      and _TraceFormat = [`Text[@js "text"] | `JSON[@js "json"]] [@js.enum]
      and _TraceFormat_Text = [`Text[@js "text"]] [@js.enum]
      and _TraceFormat_JSON = [`JSON[@js "json"]] [@js.enum]
      and _TraceOptions = [`TraceOptions] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
      and _TraceValues = ([`L_s1_messages[@js "messages"] | `L_s2_off[@js "off"] | `L_s4_verbose[@js "verbose"]] [@js.enum])
      and _Tracer = [`Tracer] intf
      [@@js.custom { of_js=Obj.magic; to_js=Obj.magic }]
    end
  end
  
  open Internal
  open AnonymousInterfaces
  open Types
  module AnonymousInterface0 : sig
    type t = anonymous_interface_0
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val cancelUndispatched: t -> message:Message.t_0 -> next:(message:Message.t_0 -> ResponseMessage.t_0 or_undefined) -> ResponseMessage.t_0 or_undefined [@@js.call "cancelUndispatched"]
  end
  (* import { Message, RequestType, RequestType0, RequestType1, RequestType2, RequestType3, RequestType4, RequestType5, RequestType6, RequestType7, RequestType8, RequestType9, ResponseMessage, ResponseError, NotificationMessage, NotificationType, NotificationType0, NotificationType1, NotificationType2, NotificationType3, NotificationType4, NotificationType5, NotificationType6, NotificationType7, NotificationType8, NotificationType9, _EM, ParameterStructures } from './messages'; *)
  (* import type { Disposable } from './disposable'; *)
  (* import { Event } from './events'; *)
  (* import { CancellationToken, AbstractCancellationTokenSource } from './cancellation'; *)
  (* import { MessageReader } from './messageReader'; *)
  (* import { MessageWriter } from './messageWriter'; *)
  module ProgressToken : sig
    type t = _ProgressToken
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "ProgressParams"] ProgressParams : sig
    type 'T t = 'T _ProgressParams
    val t_to_js: ('T -> Ojs.t) -> 'T t -> Ojs.t
    val t_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t
    type 'T t_1 = 'T t
    val t_1_to_js: ('T -> Ojs.t) -> 'T t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'T) -> Ojs.t -> 'T t_1
    val get_token: 'T t -> _ProgressToken [@@js.get "token"]
    val set_token: 'T t -> _ProgressToken -> unit [@@js.set "token"]
    val get_value: 'T t -> 'T [@@js.get "value"]
    val set_value: 'T t -> 'T -> unit [@@js.set "value"]
  end
  module[@js.scope "ProgressType"] ProgressType : sig
    type 'PR t = 'PR _ProgressType
    val t_to_js: ('PR -> Ojs.t) -> 'PR t -> Ojs.t
    val t_of_js: (Ojs.t -> 'PR) -> Ojs.t -> 'PR t
    type 'PR t_1 = 'PR t
    val t_1_to_js: ('PR -> Ojs.t) -> 'PR t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'PR) -> Ojs.t -> 'PR t_1
    val get___: 'PR t -> ('PR * _EM.t_0) [@@js.get "__"]
    val get__pr: 'PR t -> 'PR [@@js.get "_pr"]
    val create: unit -> 'PR t [@@js.create]
  end
  module HandlerResult : sig
    type ('R, 'E) t = ('R, 'E) _HandlerResult
    val t_to_js: ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('R, 'E) t
    type ('R, 'E) t_2 = ('R, 'E) t
    val t_2_to_js: ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('R, 'E) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('R, 'E) t_2
  end
  module[@js.scope "StarRequestHandler"] StarRequestHandler : sig
    type t = _StarRequestHandler
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> method_:string -> params:(untyped_object, any) or_array or_undefined -> token:CancellationToken.t_0 -> (any, any) _HandlerResult [@@js.apply]
  end
  module[@js.scope "GenericRequestHandler"] GenericRequestHandler : sig
    type ('R, 'E) t = ('R, 'E) _GenericRequestHandler
    val t_to_js: ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('R, 'E) t
    type ('R, 'E) t_2 = ('R, 'E) t
    val t_2_to_js: ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('R, 'E) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('R, 'E) t_2
    val apply: ('R, 'E) t -> params:(any list [@js.variadic]) -> ('R, 'E) _HandlerResult [@@js.apply]
  end
  module[@js.scope "RequestHandler0"] RequestHandler0 : sig
    type ('R, 'E) t = ('R, 'E) _RequestHandler0
    val t_to_js: ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('R, 'E) t
    type ('R, 'E) t_2 = ('R, 'E) t
    val t_2_to_js: ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('R, 'E) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('R, 'E) t_2
    val apply: ('R, 'E) t -> token:CancellationToken.t_0 -> ('R, 'E) _HandlerResult [@@js.apply]
  end
  module[@js.scope "RequestHandler"] RequestHandler : sig
    type ('P, 'R, 'E) t = ('P, 'R, 'E) _RequestHandler
    val t_to_js: ('P -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P, 'R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P, 'R, 'E) t
    type ('P, 'R, 'E) t_3 = ('P, 'R, 'E) t
    val t_3_to_js: ('P -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P, 'R, 'E) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'P) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P, 'R, 'E) t_3
    val apply: ('P, 'R, 'E) t -> params:'P -> token:CancellationToken.t_0 -> ('R, 'E) _HandlerResult [@@js.apply]
  end
  module[@js.scope "RequestHandler1"] RequestHandler1 : sig
    type ('P1, 'R, 'E) t = ('P1, 'R, 'E) _RequestHandler1
    val t_to_js: ('P1 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'R, 'E) t
    type ('P1, 'R, 'E) t_3 = ('P1, 'R, 'E) t
    val t_3_to_js: ('P1 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'R, 'E) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'R, 'E) t_3
    val apply: ('P1, 'R, 'E) t -> p1:'P1 -> token:CancellationToken.t_0 -> ('R, 'E) _HandlerResult [@@js.apply]
  end
  module[@js.scope "RequestHandler2"] RequestHandler2 : sig
    type ('P1, 'P2, 'R, 'E) t = ('P1, 'P2, 'R, 'E) _RequestHandler2
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'R, 'E) t
    type ('P1, 'P2, 'R, 'E) t_4 = ('P1, 'P2, 'R, 'E) t
    val t_4_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'R, 'E) t_4 -> Ojs.t
    val t_4_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'R, 'E) t_4
    val apply: ('P1, 'P2, 'R, 'E) t -> p1:'P1 -> p2:'P2 -> token:CancellationToken.t_0 -> ('R, 'E) _HandlerResult [@@js.apply]
  end
  module[@js.scope "RequestHandler3"] RequestHandler3 : sig
    type ('P1, 'P2, 'P3, 'R, 'E) t = ('P1, 'P2, 'P3, 'R, 'E) _RequestHandler3
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'R, 'E) t
    type ('P1, 'P2, 'P3, 'R, 'E) t_5 = ('P1, 'P2, 'P3, 'R, 'E) t
    val t_5_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'R, 'E) t_5 -> Ojs.t
    val t_5_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'R, 'E) t_5
    val apply: ('P1, 'P2, 'P3, 'R, 'E) t -> p1:'P1 -> p2:'P2 -> p3:'P3 -> token:CancellationToken.t_0 -> ('R, 'E) _HandlerResult [@@js.apply]
  end
  module[@js.scope "RequestHandler4"] RequestHandler4 : sig
    type ('P1, 'P2, 'P3, 'P4, 'R, 'E) t = ('P1, 'P2, 'P3, 'P4, 'R, 'E) _RequestHandler4
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'R, 'E) t
    type ('P1, 'P2, 'P3, 'P4, 'R, 'E) t_6 = ('P1, 'P2, 'P3, 'P4, 'R, 'E) t
    val t_6_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'R, 'E) t_6 -> Ojs.t
    val t_6_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'R, 'E) t_6
    val apply: ('P1, 'P2, 'P3, 'P4, 'R, 'E) t -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> token:CancellationToken.t_0 -> ('R, 'E) _HandlerResult [@@js.apply]
  end
  module[@js.scope "RequestHandler5"] RequestHandler5 : sig
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t = ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) _RequestHandler5
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t_7 = ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t
    val t_7_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t_7 -> Ojs.t
    val t_7_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t_7
    val apply: ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> p5:'P5 -> token:CancellationToken.t_0 -> ('R, 'E) _HandlerResult [@@js.apply]
  end
  module[@js.scope "RequestHandler6"] RequestHandler6 : sig
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) _RequestHandler6
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t_8 = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t
    val t_8_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t_8 -> Ojs.t
    val t_8_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t_8
    val apply: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> p5:'P5 -> p6:'P6 -> token:CancellationToken.t_0 -> ('R, 'E) _HandlerResult [@@js.apply]
  end
  module[@js.scope "RequestHandler7"] RequestHandler7 : sig
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) _RequestHandler7
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t_9 = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t
    val t_9_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t_9 -> Ojs.t
    val t_9_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t_9
    val apply: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> p5:'P5 -> p6:'P6 -> p7:'P7 -> token:CancellationToken.t_0 -> ('R, 'E) _HandlerResult [@@js.apply]
  end
  module[@js.scope "RequestHandler8"] RequestHandler8 : sig
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) _RequestHandler8
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('P8 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> (Ojs.t -> 'P8) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t_10 = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t
    val t_10_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('P8 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t_10 -> Ojs.t
    val t_10_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> (Ojs.t -> 'P8) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t_10
    val apply: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> p5:'P5 -> p6:'P6 -> p7:'P7 -> p8:'P8 -> token:CancellationToken.t_0 -> ('R, 'E) _HandlerResult [@@js.apply]
  end
  module[@js.scope "RequestHandler9"] RequestHandler9 : sig
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) _RequestHandler9
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('P8 -> Ojs.t) -> ('P9 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> (Ojs.t -> 'P8) -> (Ojs.t -> 'P9) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t_11 = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t
    val t_11_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('P8 -> Ojs.t) -> ('P9 -> Ojs.t) -> ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t_11 -> Ojs.t
    val t_11_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> (Ojs.t -> 'P8) -> (Ojs.t -> 'P9) -> (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t_11
    val apply: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> p5:'P5 -> p6:'P6 -> p7:'P7 -> p8:'P8 -> p9:'P9 -> token:CancellationToken.t_0 -> ('R, 'E) _HandlerResult [@@js.apply]
  end
  module[@js.scope "StarNotificationHandler"] StarNotificationHandler : sig
    type t = _StarNotificationHandler
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> method_:string -> params:(untyped_object, any) or_array or_undefined -> unit [@@js.apply]
  end
  module[@js.scope "GenericNotificationHandler"] GenericNotificationHandler : sig
    type t = _GenericNotificationHandler
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> params:(any list [@js.variadic]) -> unit [@@js.apply]
  end
  module[@js.scope "NotificationHandler0"] NotificationHandler0 : sig
    type t = _NotificationHandler0
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val apply: t -> unit [@@js.apply]
  end
  module[@js.scope "NotificationHandler"] NotificationHandler : sig
    type 'P t = 'P _NotificationHandler
    val t_to_js: ('P -> Ojs.t) -> 'P t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t
    type 'P t_1 = 'P t
    val t_1_to_js: ('P -> Ojs.t) -> 'P t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P) -> Ojs.t -> 'P t_1
    val apply: 'P t -> params:'P -> unit [@@js.apply]
  end
  module[@js.scope "NotificationHandler1"] NotificationHandler1 : sig
    type 'P1 t = 'P1 _NotificationHandler1
    val t_to_js: ('P1 -> Ojs.t) -> 'P1 t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> Ojs.t -> 'P1 t
    type 'P1 t_1 = 'P1 t
    val t_1_to_js: ('P1 -> Ojs.t) -> 'P1 t_1 -> Ojs.t
    val t_1_of_js: (Ojs.t -> 'P1) -> Ojs.t -> 'P1 t_1
    val apply: 'P1 t -> p1:'P1 -> unit [@@js.apply]
  end
  module[@js.scope "NotificationHandler2"] NotificationHandler2 : sig
    type ('P1, 'P2) t = ('P1, 'P2) _NotificationHandler2
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P1, 'P2) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> Ojs.t -> ('P1, 'P2) t
    type ('P1, 'P2) t_2 = ('P1, 'P2) t
    val t_2_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P1, 'P2) t_2 -> Ojs.t
    val t_2_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> Ojs.t -> ('P1, 'P2) t_2
    val apply: ('P1, 'P2) t -> p1:'P1 -> p2:'P2 -> unit [@@js.apply]
  end
  module[@js.scope "NotificationHandler3"] NotificationHandler3 : sig
    type ('P1, 'P2, 'P3) t = ('P1, 'P2, 'P3) _NotificationHandler3
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P1, 'P2, 'P3) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> Ojs.t -> ('P1, 'P2, 'P3) t
    type ('P1, 'P2, 'P3) t_3 = ('P1, 'P2, 'P3) t
    val t_3_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P1, 'P2, 'P3) t_3 -> Ojs.t
    val t_3_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> Ojs.t -> ('P1, 'P2, 'P3) t_3
    val apply: ('P1, 'P2, 'P3) t -> p1:'P1 -> p2:'P2 -> p3:'P3 -> unit [@@js.apply]
  end
  module[@js.scope "NotificationHandler4"] NotificationHandler4 : sig
    type ('P1, 'P2, 'P3, 'P4) t = ('P1, 'P2, 'P3, 'P4) _NotificationHandler4
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4) t
    type ('P1, 'P2, 'P3, 'P4) t_4 = ('P1, 'P2, 'P3, 'P4) t
    val t_4_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4) t_4 -> Ojs.t
    val t_4_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4) t_4
    val apply: ('P1, 'P2, 'P3, 'P4) t -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> unit [@@js.apply]
  end
  module[@js.scope "NotificationHandler5"] NotificationHandler5 : sig
    type ('P1, 'P2, 'P3, 'P4, 'P5) t = ('P1, 'P2, 'P3, 'P4, 'P5) _NotificationHandler5
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5) t
    type ('P1, 'P2, 'P3, 'P4, 'P5) t_5 = ('P1, 'P2, 'P3, 'P4, 'P5) t
    val t_5_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5) t_5 -> Ojs.t
    val t_5_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5) t_5
    val apply: ('P1, 'P2, 'P3, 'P4, 'P5) t -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> p5:'P5 -> unit [@@js.apply]
  end
  module[@js.scope "NotificationHandler6"] NotificationHandler6 : sig
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) _NotificationHandler6
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t_6 = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t
    val t_6_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t_6 -> Ojs.t
    val t_6_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t_6
    val apply: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> p5:'P5 -> p6:'P6 -> unit [@@js.apply]
  end
  module[@js.scope "NotificationHandler7"] NotificationHandler7 : sig
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) _NotificationHandler7
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t_7 = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t
    val t_7_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t_7 -> Ojs.t
    val t_7_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t_7
    val apply: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> p5:'P5 -> p6:'P6 -> p7:'P7 -> unit [@@js.apply]
  end
  module[@js.scope "NotificationHandler8"] NotificationHandler8 : sig
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) _NotificationHandler8
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('P8 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> (Ojs.t -> 'P8) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t_8 = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t
    val t_8_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('P8 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t_8 -> Ojs.t
    val t_8_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> (Ojs.t -> 'P8) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t_8
    val apply: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> p5:'P5 -> p6:'P6 -> p7:'P7 -> p8:'P8 -> unit [@@js.apply]
  end
  module[@js.scope "NotificationHandler9"] NotificationHandler9 : sig
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) _NotificationHandler9
    val t_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('P8 -> Ojs.t) -> ('P9 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t -> Ojs.t
    val t_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> (Ojs.t -> 'P8) -> (Ojs.t -> 'P9) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t
    type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t_9 = ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t
    val t_9_to_js: ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P3 -> Ojs.t) -> ('P4 -> Ojs.t) -> ('P5 -> Ojs.t) -> ('P6 -> Ojs.t) -> ('P7 -> Ojs.t) -> ('P8 -> Ojs.t) -> ('P9 -> Ojs.t) -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t_9 -> Ojs.t
    val t_9_of_js: (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> (Ojs.t -> 'P3) -> (Ojs.t -> 'P4) -> (Ojs.t -> 'P5) -> (Ojs.t -> 'P6) -> (Ojs.t -> 'P7) -> (Ojs.t -> 'P8) -> (Ojs.t -> 'P9) -> Ojs.t -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t_9
    val apply: ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> p5:'P5 -> p6:'P6 -> p7:'P7 -> p8:'P8 -> p9:'P9 -> unit [@@js.apply]
  end
  module[@js.scope "Logger"] Logger : sig
    type t = _Logger
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val error: t -> message:string -> unit [@@js.call "error"]
    val warn: t -> message:string -> unit [@@js.call "warn"]
    val info: t -> message:string -> unit [@@js.call "info"]
    val log: t -> message:string -> unit [@@js.call "log"]
  end
  val nullLogger: _Logger [@@js.global "NullLogger"]
  module Trace : sig
    type t = _Trace
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module TraceValues : sig
    type t = _TraceValues
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "Trace"] Trace : sig
    val fromString: value:string -> _Trace [@@js.global "fromString"]
    val toString: value:_Trace -> _TraceValues [@@js.global "toString"]
  end
  module TraceFormat : sig
    type t = _TraceFormat
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "TraceFormat"] TraceFormat : sig
    val fromString: value:string -> _TraceFormat [@@js.global "fromString"]
  end
  module[@js.scope "TraceOptions"] TraceOptions : sig
    type t = _TraceOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_sendNotification: t -> bool [@@js.get "sendNotification"]
    val set_sendNotification: t -> bool -> unit [@@js.set "sendNotification"]
    val get_traceFormat: t -> _TraceFormat [@@js.get "traceFormat"]
    val set_traceFormat: t -> _TraceFormat -> unit [@@js.set "traceFormat"]
  end
  module[@js.scope "SetTraceParams"] SetTraceParams : sig
    type t = _SetTraceParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_value: t -> _TraceValues [@@js.get "value"]
    val set_value: t -> _TraceValues -> unit [@@js.set "value"]
  end
  module[@js.scope "SetTraceNotification"] SetTraceNotification : sig
    val type_: _SetTraceParams NotificationType.t_1 [@@js.global "type"]
  end
  module[@js.scope "LogTraceParams"] LogTraceParams : sig
    type t = _LogTraceParams
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_message: t -> string [@@js.get "message"]
    val set_message: t -> string -> unit [@@js.set "message"]
    val get_verbose: t -> string [@@js.get "verbose"]
    val set_verbose: t -> string -> unit [@@js.set "verbose"]
  end
  module[@js.scope "LogTraceNotification"] LogTraceNotification : sig
    val type_: _LogTraceParams NotificationType.t_1 [@@js.global "type"]
  end
  module[@js.scope "Tracer"] Tracer : sig
    type t = _Tracer
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val log: t -> dataObject:any -> unit [@@js.call "log"]
    val log': t -> message:string -> ?data:string -> unit -> unit [@@js.call "log"]
  end
  module ConnectionErrors : sig
    type t = _ConnectionErrors
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "ConnectionError"] ConnectionError : sig
    type t = _ConnectionError
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_code: t -> _ConnectionErrors [@@js.get "code"]
    val create: code:_ConnectionErrors -> message:string -> t [@@js.create]
    val cast: t -> Error.t_0 [@@js.cast]
  end
  module ConnectionStrategy : sig
    type t = _ConnectionStrategy
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "ConnectionStrategy"] ConnectionStrategy : sig
    val is: value:any -> bool [@@js.global "is"]
  end
  module CancellationId : sig
    type t = _CancellationId
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
  end
  module[@js.scope "CancellationReceiverStrategy"] CancellationReceiverStrategy : sig
    type t = _CancellationReceiverStrategy
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val createCancellationTokenSource: t -> id:_CancellationId -> AbstractCancellationTokenSource.t_0 [@@js.call "createCancellationTokenSource"]
    val dispose: t -> unit [@@js.call "dispose"]
  end
  module[@js.scope "CancellationReceiverStrategy"] CancellationReceiverStrategy : sig
    val message: _CancellationReceiverStrategy [@@js.global "Message"]
    val is: value:any -> bool [@@js.global "is"]
  end
  module[@js.scope "CancellationSenderStrategy"] CancellationSenderStrategy : sig
    type t = _CancellationSenderStrategy
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val sendCancellation: t -> conn:_MessageConnection -> id:_CancellationId -> unit [@@js.call "sendCancellation"]
    val cleanup: t -> id:_CancellationId -> unit [@@js.call "cleanup"]
    val dispose: t -> unit [@@js.call "dispose"]
  end
  module[@js.scope "CancellationSenderStrategy"] CancellationSenderStrategy : sig
    val message: _CancellationSenderStrategy [@@js.global "Message"]
    val is: value:any -> bool [@@js.global "is"]
  end
  module[@js.scope "CancellationStrategy"] CancellationStrategy : sig
    type t = _CancellationStrategy
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_receiver: t -> _CancellationReceiverStrategy [@@js.get "receiver"]
    val set_receiver: t -> _CancellationReceiverStrategy -> unit [@@js.set "receiver"]
    val get_sender: t -> _CancellationSenderStrategy [@@js.get "sender"]
    val set_sender: t -> _CancellationSenderStrategy -> unit [@@js.set "sender"]
  end
  module[@js.scope "CancellationStrategy"] CancellationStrategy : sig
    val message: _CancellationStrategy [@@js.global "Message"]
    val is: value:any -> bool [@@js.global "is"]
  end
  module[@js.scope "ConnectionOptions"] ConnectionOptions : sig
    type t = _ConnectionOptions
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val get_cancellationStrategy: t -> _CancellationStrategy [@@js.get "cancellationStrategy"]
    val set_cancellationStrategy: t -> _CancellationStrategy -> unit [@@js.set "cancellationStrategy"]
    val get_connectionStrategy: t -> _ConnectionStrategy [@@js.get "connectionStrategy"]
    val set_connectionStrategy: t -> _ConnectionStrategy -> unit [@@js.set "connectionStrategy"]
  end
  module[@js.scope "ConnectionOptions"] ConnectionOptions : sig
    val is: value:any -> bool [@@js.global "is"]
  end
  module[@js.scope "MessageConnection"] MessageConnection : sig
    type t = _MessageConnection
    val t_to_js: t -> Ojs.t
    val t_of_js: Ojs.t -> t
    type t_0 = t
    val t_0_to_js: t_0 -> Ojs.t
    val t_0_of_js: Ojs.t -> t_0
    val sendRequest: t -> type_:('R, 'E) RequestType0.t_2 -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest': t -> type_:('P, 'R, 'E) RequestType.t_3 -> params:'P -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest'': t -> type_:('P1, 'R, 'E) RequestType1.t_3 -> p1:'P1 -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest''': t -> type_:('P1, 'P2, 'R, 'E) RequestType2.t_4 -> p1:'P1 -> p2:'P2 -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest'''': t -> type_:('P1, 'P2, 'P3, 'R, 'E) RequestType3.t_5 -> p1:'P1 -> p2:'P2 -> p3:'P3 -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'R, 'E) RequestType4.t_6 -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest'''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) RequestType5.t_7 -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> p5:'P5 -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest''''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) RequestType6.t_8 -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> p5:'P5 -> p6:'P6 -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest'''''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) RequestType7.t_9 -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> p5:'P5 -> p6:'P6 -> p7:'P7 -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest''''''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) RequestType8.t_10 -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> p5:'P5 -> p6:'P6 -> p7:'P7 -> p8:'P8 -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest'''''''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) RequestType9.t_11 -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> p5:'P5 -> p6:'P6 -> p7:'P7 -> p8:'P8 -> p9:'P9 -> ?token:CancellationToken.t_0 -> unit -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val sendRequest''''''''''': t -> method_:string -> ?r0:(ParameterStructures.t_0, any) union2 -> rest:(any list [@js.variadic]) -> 'R Promise.t_1 [@@js.call "sendRequest"]
    val onRequest: t -> type_:('R, 'E) RequestType0.t_2 -> handler:('R, 'E) _RequestHandler0 -> Disposable.t_0 [@@js.call "onRequest"]
    val onRequest': t -> type_:('P, 'R, 'E) RequestType.t_3 -> handler:('P, 'R, 'E) _RequestHandler -> Disposable.t_0 [@@js.call "onRequest"]
    val onRequest'': t -> type_:('P1, 'R, 'E) RequestType1.t_3 -> handler:('P1, 'R, 'E) _RequestHandler1 -> Disposable.t_0 [@@js.call "onRequest"]
    val onRequest''': t -> type_:('P1, 'P2, 'R, 'E) RequestType2.t_4 -> handler:('P1, 'P2, 'R, 'E) _RequestHandler2 -> Disposable.t_0 [@@js.call "onRequest"]
    val onRequest'''': t -> type_:('P1, 'P2, 'P3, 'R, 'E) RequestType3.t_5 -> handler:('P1, 'P2, 'P3, 'R, 'E) _RequestHandler3 -> Disposable.t_0 [@@js.call "onRequest"]
    val onRequest''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'R, 'E) RequestType4.t_6 -> handler:('P1, 'P2, 'P3, 'P4, 'R, 'E) _RequestHandler4 -> Disposable.t_0 [@@js.call "onRequest"]
    val onRequest'''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) RequestType5.t_7 -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) _RequestHandler5 -> Disposable.t_0 [@@js.call "onRequest"]
    val onRequest''''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) RequestType6.t_8 -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) _RequestHandler6 -> Disposable.t_0 [@@js.call "onRequest"]
    val onRequest'''''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) RequestType7.t_9 -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) _RequestHandler7 -> Disposable.t_0 [@@js.call "onRequest"]
    val onRequest''''''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) RequestType8.t_10 -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) _RequestHandler8 -> Disposable.t_0 [@@js.call "onRequest"]
    val onRequest'''''''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) RequestType9.t_11 -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) _RequestHandler9 -> Disposable.t_0 [@@js.call "onRequest"]
    val onRequest''''''''''': t -> method_:string -> handler:('R, 'E) _GenericRequestHandler -> Disposable.t_0 [@@js.call "onRequest"]
    val onRequest'''''''''''': t -> handler:_StarRequestHandler -> Disposable.t_0 [@@js.call "onRequest"]
    val sendNotification: t -> type_:NotificationType0.t_0 -> unit [@@js.call "sendNotification"]
    val sendNotification': t -> type_:'P NotificationType.t_1 -> ?params:'P -> unit -> unit [@@js.call "sendNotification"]
    val sendNotification'': t -> type_:'P1 NotificationType1.t_1 -> p1:'P1 -> unit [@@js.call "sendNotification"]
    val sendNotification''': t -> type_:('P1, 'P2) NotificationType2.t_2 -> p1:'P1 -> p2:'P2 -> unit [@@js.call "sendNotification"]
    val sendNotification'''': t -> type_:('P1, 'P2, 'P3) NotificationType3.t_3 -> p1:'P1 -> p2:'P2 -> p3:'P3 -> unit [@@js.call "sendNotification"]
    val sendNotification''''': t -> type_:('P1, 'P2, 'P3, 'P4) NotificationType4.t_4 -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> unit [@@js.call "sendNotification"]
    val sendNotification'''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'P5) NotificationType5.t_5 -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> p5:'P5 -> unit [@@js.call "sendNotification"]
    val sendNotification''''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6) NotificationType6.t_6 -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> p5:'P5 -> p6:'P6 -> unit [@@js.call "sendNotification"]
    val sendNotification'''''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) NotificationType7.t_7 -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> p5:'P5 -> p6:'P6 -> p7:'P7 -> unit [@@js.call "sendNotification"]
    val sendNotification''''''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) NotificationType8.t_8 -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> p5:'P5 -> p6:'P6 -> p7:'P7 -> p8:'P8 -> unit [@@js.call "sendNotification"]
    val sendNotification'''''''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) NotificationType9.t_9 -> p1:'P1 -> p2:'P2 -> p3:'P3 -> p4:'P4 -> p5:'P5 -> p6:'P6 -> p7:'P7 -> p8:'P8 -> p9:'P9 -> unit [@@js.call "sendNotification"]
    val sendNotification''''''''''': t -> method_:string -> ?r0:(ParameterStructures.t_0, any) union2 -> rest:(any list [@js.variadic]) -> unit [@@js.call "sendNotification"]
    val onNotification: t -> type_:NotificationType0.t_0 -> handler:_NotificationHandler0 -> Disposable.t_0 [@@js.call "onNotification"]
    val onNotification': t -> type_:'P NotificationType.t_1 -> handler:'P _NotificationHandler -> Disposable.t_0 [@@js.call "onNotification"]
    val onNotification'': t -> type_:'P1 NotificationType1.t_1 -> handler:'P1 _NotificationHandler1 -> Disposable.t_0 [@@js.call "onNotification"]
    val onNotification''': t -> type_:('P1, 'P2) NotificationType2.t_2 -> handler:('P1, 'P2) _NotificationHandler2 -> Disposable.t_0 [@@js.call "onNotification"]
    val onNotification'''': t -> type_:('P1, 'P2, 'P3) NotificationType3.t_3 -> handler:('P1, 'P2, 'P3) _NotificationHandler3 -> Disposable.t_0 [@@js.call "onNotification"]
    val onNotification''''': t -> type_:('P1, 'P2, 'P3, 'P4) NotificationType4.t_4 -> handler:('P1, 'P2, 'P3, 'P4) _NotificationHandler4 -> Disposable.t_0 [@@js.call "onNotification"]
    val onNotification'''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'P5) NotificationType5.t_5 -> handler:('P1, 'P2, 'P3, 'P4, 'P5) _NotificationHandler5 -> Disposable.t_0 [@@js.call "onNotification"]
    val onNotification''''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6) NotificationType6.t_6 -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6) _NotificationHandler6 -> Disposable.t_0 [@@js.call "onNotification"]
    val onNotification'''''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) NotificationType7.t_7 -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) _NotificationHandler7 -> Disposable.t_0 [@@js.call "onNotification"]
    val onNotification''''''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) NotificationType8.t_8 -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) _NotificationHandler8 -> Disposable.t_0 [@@js.call "onNotification"]
    val onNotification'''''''''': t -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) NotificationType9.t_9 -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) _NotificationHandler9 -> Disposable.t_0 [@@js.call "onNotification"]
    val onNotification''''''''''': t -> method_:string -> handler:_GenericNotificationHandler -> Disposable.t_0 [@@js.call "onNotification"]
    val onNotification'''''''''''': t -> handler:_StarNotificationHandler -> Disposable.t_0 [@@js.call "onNotification"]
    val get_onUnhandledNotification: t -> NotificationMessage.t_0 Event.t_1 [@@js.get "onUnhandledNotification"]
    val set_onUnhandledNotification: t -> NotificationMessage.t_0 Event.t_1 -> unit [@@js.set "onUnhandledNotification"]
    val onProgress: t -> type_:'P _ProgressType -> token:string or_number -> handler:'P _NotificationHandler -> Disposable.t_0 [@@js.call "onProgress"]
    val sendProgress: t -> type_:'P _ProgressType -> token:string or_number -> value:'P -> unit [@@js.call "sendProgress"]
    val get_onUnhandledProgress: t -> any _ProgressParams Event.t_1 [@@js.get "onUnhandledProgress"]
    val set_onUnhandledProgress: t -> any _ProgressParams Event.t_1 -> unit [@@js.set "onUnhandledProgress"]
    val trace: t -> value:_Trace -> tracer:_Tracer -> ?sendNotification:bool -> unit -> unit [@@js.call "trace"]
    val trace': t -> value:_Trace -> tracer:_Tracer -> ?traceOptions:_TraceOptions -> unit -> unit [@@js.call "trace"]
    val get_onError: t -> (Error.t_0 * Message.t_0 or_undefined * float or_undefined) Event.t_1 [@@js.get "onError"]
    val set_onError: t -> (Error.t_0 * Message.t_0 or_undefined * float or_undefined) Event.t_1 -> unit [@@js.set "onError"]
    val get_onClose: t -> unit Event.t_1 [@@js.get "onClose"]
    val set_onClose: t -> unit Event.t_1 -> unit [@@js.set "onClose"]
    val listen: t -> unit [@@js.call "listen"]
    val end_: t -> unit [@@js.call "end"]
    val get_onDispose: t -> unit Event.t_1 [@@js.get "onDispose"]
    val set_onDispose: t -> unit Event.t_1 -> unit [@@js.set "onDispose"]
    val dispose: t -> unit [@@js.call "dispose"]
    val inspect: t -> unit [@@js.call "inspect"]
  end
  val createMessageConnection: messageReader:MessageReader.t_0 -> messageWriter:MessageWriter.t_0 -> ?_logger:_Logger -> ?options:_ConnectionOptions -> unit -> _MessageConnection [@@js.global "createMessageConnection"]
  
end
