[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

[@@@js.scope "__LIB__VSCODE_JSONRPC__IMPORTS"]

open Es2020
open Vscode_jsonrpc_messages

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cancel_undispatched
    :  t
    -> message:Message.t
    -> next:(message:Message.t -> ResponseMessage.t or_undefined)
    -> ResponseMessage.t or_undefined
    [@@js.call "cancelUndispatched"]
end

module ProgressToken : sig
  type t = string or_number

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module ProgressParams : sig
  type 'T t

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val get_token : 'T t -> ProgressToken.t [@@js.get "token"]

  val set_token : 'T t -> ProgressToken.t -> unit [@@js.set "token"]

  val get_value : 'T t -> 'T [@@js.get "value"]

  val set_value : 'T t -> 'T -> unit [@@js.set "value"]
end
[@@js.scope "ProgressParams"]

module ProgressType : sig
  type 'PR t

  val t_to_js : ('PR -> Ojs.t) -> 'PR t -> Ojs.t

  val t_of_js : (Ojs.t -> 'PR) -> Ojs.t -> 'PR t

  val get___ : 'PR t -> 'PR * EM.t [@@js.get "__"]

  val get__pr : 'PR t -> 'PR [@@js.get "_pr"]

  val create : unit -> 'PR t [@@js.create]
end
[@@js.scope "ProgressType"]

module HandlerResult : sig
  type ('R, 'E) t =
    ( 'R
    , 'E ResponseError.t
    , 'R Promise.t
    , ('R, 'E ResponseError.t) union2 Promise.t
    , 'E ResponseError.t Promise.t )
    union5

  val t_to_js : ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('R, 'E) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('R, 'E) t
end

module StarRequestHandler : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> method_:string
    -> params:(untyped_object, any) or_array or_undefined
    -> token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> (any, any) HandlerResult.t
    [@@js.apply]
end
[@@js.scope "StarRequestHandler"]

module GenericRequestHandler : sig
  type ('R, 'E) t

  val t_to_js : ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('R, 'E) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('R, 'E) t

  val apply
    :  ('R, 'E) t
    -> params:(any list[@js.variadic])
    -> ('R, 'E) HandlerResult.t
    [@@js.apply]
end
[@@js.scope "GenericRequestHandler"]

module RequestHandler0 : sig
  type ('R, 'E) t

  val t_to_js : ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('R, 'E) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('R, 'E) t

  val apply
    :  ('R, 'E) t
    -> token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> ('R, 'E) HandlerResult.t
    [@@js.apply]
end
[@@js.scope "RequestHandler0"]

module RequestHandler : sig
  type ('P, 'R, 'E) t

  val t_to_js
    :  ('P -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P, 'R, 'E) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'E)
    -> Ojs.t
    -> ('P, 'R, 'E) t

  val apply
    :  ('P, 'R, 'E) t
    -> params:'P
    -> token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> ('R, 'E) HandlerResult.t
    [@@js.apply]
end
[@@js.scope "RequestHandler"]

module RequestHandler1 : sig
  type ('P1, 'R, 'E) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P1, 'R, 'E) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'E)
    -> Ojs.t
    -> ('P1, 'R, 'E) t

  val apply
    :  ('P1, 'R, 'E) t
    -> p1:'P1
    -> token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> ('R, 'E) HandlerResult.t
    [@@js.apply]
end
[@@js.scope "RequestHandler1"]

module RequestHandler2 : sig
  type ('P1, 'P2, 'R, 'E) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P1, 'P2, 'R, 'E) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'E)
    -> Ojs.t
    -> ('P1, 'P2, 'R, 'E) t

  val apply
    :  ('P1, 'P2, 'R, 'E) t
    -> p1:'P1
    -> p2:'P2
    -> token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> ('R, 'E) HandlerResult.t
    [@@js.apply]
end
[@@js.scope "RequestHandler2"]

module RequestHandler3 : sig
  type ('P1, 'P2, 'P3, 'R, 'E) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'R, 'E) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'E)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'R, 'E) t

  val apply
    :  ('P1, 'P2, 'P3, 'R, 'E) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> ('R, 'E) HandlerResult.t
    [@@js.apply]
end
[@@js.scope "RequestHandler3"]

module RequestHandler4 : sig
  type ('P1, 'P2, 'P3, 'P4, 'R, 'E) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'R, 'E) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'E)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'R, 'E) t

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'R, 'E) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> ('R, 'E) HandlerResult.t
    [@@js.apply]
end
[@@js.scope "RequestHandler4"]

module RequestHandler5 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P5 -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'P5)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'E)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> ('R, 'E) HandlerResult.t
    [@@js.apply]
end
[@@js.scope "RequestHandler5"]

module RequestHandler6 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P5 -> Ojs.t)
    -> ('P6 -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'P5)
    -> (Ojs.t -> 'P6)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'E)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> ('R, 'E) HandlerResult.t
    [@@js.apply]
end
[@@js.scope "RequestHandler6"]

module RequestHandler7 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P5 -> Ojs.t)
    -> ('P6 -> Ojs.t)
    -> ('P7 -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'P5)
    -> (Ojs.t -> 'P6)
    -> (Ojs.t -> 'P7)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'E)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> ('R, 'E) HandlerResult.t
    [@@js.apply]
end
[@@js.scope "RequestHandler7"]

module RequestHandler8 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P5 -> Ojs.t)
    -> ('P6 -> Ojs.t)
    -> ('P7 -> Ojs.t)
    -> ('P8 -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'P5)
    -> (Ojs.t -> 'P6)
    -> (Ojs.t -> 'P7)
    -> (Ojs.t -> 'P8)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'E)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> p8:'P8
    -> token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> ('R, 'E) HandlerResult.t
    [@@js.apply]
end
[@@js.scope "RequestHandler8"]

module RequestHandler9 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P5 -> Ojs.t)
    -> ('P6 -> Ojs.t)
    -> ('P7 -> Ojs.t)
    -> ('P8 -> Ojs.t)
    -> ('P9 -> Ojs.t)
    -> ('R -> Ojs.t)
    -> ('E -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'P5)
    -> (Ojs.t -> 'P6)
    -> (Ojs.t -> 'P7)
    -> (Ojs.t -> 'P8)
    -> (Ojs.t -> 'P9)
    -> (Ojs.t -> 'R)
    -> (Ojs.t -> 'E)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> p8:'P8
    -> p9:'P9
    -> token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> ('R, 'E) HandlerResult.t
    [@@js.apply]
end
[@@js.scope "RequestHandler9"]

module StarNotificationHandler : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> method_:string
    -> params:(untyped_object, any) or_array or_undefined
    -> unit
    [@@js.apply]
end
[@@js.scope "StarNotificationHandler"]

module GenericNotificationHandler : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> params:(any list[@js.variadic]) -> unit [@@js.apply]
end
[@@js.scope "GenericNotificationHandler"]

module NotificationHandler0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> unit [@@js.apply]
end
[@@js.scope "NotificationHandler0"]

module NotificationHandler : sig
  type 'P t

  val t_to_js : ('P -> Ojs.t) -> 'P t -> Ojs.t

  val t_of_js : (Ojs.t -> 'P) -> Ojs.t -> 'P t

  val apply : 'P t -> params:'P -> unit [@@js.apply]
end
[@@js.scope "NotificationHandler"]

module NotificationHandler1 : sig
  type 'P1 t

  val t_to_js : ('P1 -> Ojs.t) -> 'P1 t -> Ojs.t

  val t_of_js : (Ojs.t -> 'P1) -> Ojs.t -> 'P1 t

  val apply : 'P1 t -> p1:'P1 -> unit [@@js.apply]
end
[@@js.scope "NotificationHandler1"]

module NotificationHandler2 : sig
  type ('P1, 'P2) t

  val t_to_js : ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P1, 'P2) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> Ojs.t -> ('P1, 'P2) t

  val apply : ('P1, 'P2) t -> p1:'P1 -> p2:'P2 -> unit [@@js.apply]
end
[@@js.scope "NotificationHandler2"]

module NotificationHandler3 : sig
  type ('P1, 'P2, 'P3) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P1, 'P2, 'P3) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> Ojs.t
    -> ('P1, 'P2, 'P3) t

  val apply : ('P1, 'P2, 'P3) t -> p1:'P1 -> p2:'P2 -> p3:'P3 -> unit
    [@@js.apply]
end
[@@js.scope "NotificationHandler3"]

module NotificationHandler4 : sig
  type ('P1, 'P2, 'P3, 'P4) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4) t

  val apply
    :  ('P1, 'P2, 'P3, 'P4) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> unit
    [@@js.apply]
end
[@@js.scope "NotificationHandler4"]

module NotificationHandler5 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P5 -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'P5) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'P5)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'P5) t

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'P5) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> unit
    [@@js.apply]
end
[@@js.scope "NotificationHandler5"]

module NotificationHandler6 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P5 -> Ojs.t)
    -> ('P6 -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'P5)
    -> (Ojs.t -> 'P6)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> unit
    [@@js.apply]
end
[@@js.scope "NotificationHandler6"]

module NotificationHandler7 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P5 -> Ojs.t)
    -> ('P6 -> Ojs.t)
    -> ('P7 -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'P5)
    -> (Ojs.t -> 'P6)
    -> (Ojs.t -> 'P7)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> unit
    [@@js.apply]
end
[@@js.scope "NotificationHandler7"]

module NotificationHandler8 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P5 -> Ojs.t)
    -> ('P6 -> Ojs.t)
    -> ('P7 -> Ojs.t)
    -> ('P8 -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'P5)
    -> (Ojs.t -> 'P6)
    -> (Ojs.t -> 'P7)
    -> (Ojs.t -> 'P8)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> p8:'P8
    -> unit
    [@@js.apply]
end
[@@js.scope "NotificationHandler8"]

module NotificationHandler9 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t

  val t_to_js
    :  ('P1 -> Ojs.t)
    -> ('P2 -> Ojs.t)
    -> ('P3 -> Ojs.t)
    -> ('P4 -> Ojs.t)
    -> ('P5 -> Ojs.t)
    -> ('P6 -> Ojs.t)
    -> ('P7 -> Ojs.t)
    -> ('P8 -> Ojs.t)
    -> ('P9 -> Ojs.t)
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t
    -> Ojs.t

  val t_of_js
    :  (Ojs.t -> 'P1)
    -> (Ojs.t -> 'P2)
    -> (Ojs.t -> 'P3)
    -> (Ojs.t -> 'P4)
    -> (Ojs.t -> 'P5)
    -> (Ojs.t -> 'P6)
    -> (Ojs.t -> 'P7)
    -> (Ojs.t -> 'P8)
    -> (Ojs.t -> 'P9)
    -> Ojs.t
    -> ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t

  val apply
    :  ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> p8:'P8
    -> p9:'P9
    -> unit
    [@@js.apply]
end
[@@js.scope "NotificationHandler9"]

module Logger : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val error : t -> message:string -> unit [@@js.call "error"]

  val warn : t -> message:string -> unit [@@js.call "warn"]

  val info : t -> message:string -> unit [@@js.call "info"]

  val log : t -> message:string -> unit [@@js.call "log"]
end
[@@js.scope "Logger"]

val null_logger : Logger.t [@@js.global "NullLogger"]

module TraceValues : sig
  type t =
    ([ `L_s1_messages [@js "messages"]
     | `L_s2_off [@js "off"]
     | `L_s4_verbose [@js "verbose"]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module Trace : sig
  type t =
    ([ `Off [@js 0]
     | `Messages [@js 1]
     | `Verbose [@js 2]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val from_string : value:string -> t [@@js.global "fromString"]

  val to_string : value:t -> TraceValues.t [@@js.global "toString"]
end
[@@js.scope "Trace"]

module TraceFormat : sig
  type t =
    ([ `Text [@js "text"]
     | `JSON [@js "json"]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val from_string : value:string -> t [@@js.global "fromString"]
end
[@@js.scope "TraceFormat"]

module TraceOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_send_notification : t -> bool [@@js.get "sendNotification"]

  val set_send_notification : t -> bool -> unit [@@js.set "sendNotification"]

  val get_trace_format : t -> TraceFormat.t [@@js.get "traceFormat"]

  val set_trace_format : t -> TraceFormat.t -> unit [@@js.set "traceFormat"]
end
[@@js.scope "TraceOptions"]

module SetTraceParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_value : t -> TraceValues.t [@@js.get "value"]

  val set_value : t -> TraceValues.t -> unit [@@js.set "value"]
end
[@@js.scope "SetTraceParams"]

module SetTraceNotification : sig
  val type_ : SetTraceParams.t NotificationType.t [@@js.global "type"]
end
[@@js.scope "SetTraceNotification"]

module LogTraceParams : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_message : t -> string [@@js.get "message"]

  val set_message : t -> string -> unit [@@js.set "message"]

  val get_verbose : t -> string [@@js.get "verbose"]

  val set_verbose : t -> string -> unit [@@js.set "verbose"]
end
[@@js.scope "LogTraceParams"]

module LogTraceNotification : sig
  val type_ : LogTraceParams.t NotificationType.t [@@js.global "type"]
end
[@@js.scope "LogTraceNotification"]

module Tracer : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val log : t -> data_object:any -> unit [@@js.call "log"]

  val log' : t -> message:string -> ?data:string -> unit -> unit
    [@@js.call "log"]
end
[@@js.scope "Tracer"]

module ConnectionErrors : sig
  type t =
    ([ `Closed [@js 1]
     | `Disposed [@js 2]
     | `AlreadyListening [@js 3]
     ]
    [@js.enum])

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module ConnectionError : sig
  include module type of struct
    include Error
  end

  val get_code : t -> ConnectionErrors.t [@@js.get "code"]

  val create : code:ConnectionErrors.t -> message:string -> t [@@js.create]
end
[@@js.scope "ConnectionError"]

module MessageConnection : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val send_request
    :  t
    -> type_:('R, 'E) RequestType0.t
    -> ?token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request'
    :  t
    -> type_:('P, 'R, 'E) RequestType.t
    -> params:'P
    -> ?token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request''
    :  t
    -> type_:('P1, 'R, 'E) RequestType1.t
    -> p1:'P1
    -> ?token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request'''
    :  t
    -> type_:('P1, 'P2, 'R, 'E) RequestType2.t
    -> p1:'P1
    -> p2:'P2
    -> ?token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'R, 'E) RequestType3.t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> ?token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request'''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'R, 'E) RequestType4.t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> ?token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) RequestType5.t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> ?token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request'''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) RequestType6.t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> ?token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) RequestType7.t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> ?token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request'''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) RequestType8.t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> p8:'P8
    -> ?token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request''''''''''
    :  t
    -> type_:
         ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) RequestType9.t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> p8:'P8
    -> p9:'P9
    -> ?token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val send_request'''''''''''
    :  t
    -> method_:string
    -> ?r0:(ParameterStructures.t, any) union2
    -> rest:(any list[@js.variadic])
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val on_request
    :  t
    -> type_:('R, 'E) RequestType0.t
    -> handler:('R, 'E) RequestHandler0.t
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val on_request'
    :  t
    -> type_:('P, 'R, 'E) RequestType.t
    -> handler:('P, 'R, 'E) RequestHandler.t
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val on_request''
    :  t
    -> type_:('P1, 'R, 'E) RequestType1.t
    -> handler:('P1, 'R, 'E) RequestHandler1.t
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val on_request'''
    :  t
    -> type_:('P1, 'P2, 'R, 'E) RequestType2.t
    -> handler:('P1, 'P2, 'R, 'E) RequestHandler2.t
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val on_request''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'R, 'E) RequestType3.t
    -> handler:('P1, 'P2, 'P3, 'R, 'E) RequestHandler3.t
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val on_request'''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'R, 'E) RequestType4.t
    -> handler:('P1, 'P2, 'P3, 'P4, 'R, 'E) RequestHandler4.t
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val on_request''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) RequestType5.t
    -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) RequestHandler5.t
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val on_request'''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) RequestType6.t
    -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) RequestHandler6.t
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val on_request''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) RequestType7.t
    -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) RequestHandler7.t
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val on_request'''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) RequestType8.t
    -> handler:
         ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) RequestHandler8.t
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val on_request''''''''''
    :  t
    -> type_:
         ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) RequestType9.t
    -> handler:
         ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) RequestHandler9.t
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val on_request'''''''''''
    :  t
    -> method_:string
    -> handler:('R, 'E) GenericRequestHandler.t
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val on_request''''''''''''
    :  t
    -> handler:StarRequestHandler.t
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val send_notification : t -> type_:NotificationType0.t -> unit
    [@@js.call "sendNotification"]

  val send_notification'
    :  t
    -> type_:'P NotificationType.t
    -> ?params:'P
    -> unit
    -> unit
    [@@js.call "sendNotification"]

  val send_notification'' : t -> type_:'P1 NotificationType1.t -> p1:'P1 -> unit
    [@@js.call "sendNotification"]

  val send_notification'''
    :  t
    -> type_:('P1, 'P2) NotificationType2.t
    -> p1:'P1
    -> p2:'P2
    -> unit
    [@@js.call "sendNotification"]

  val send_notification''''
    :  t
    -> type_:('P1, 'P2, 'P3) NotificationType3.t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> unit
    [@@js.call "sendNotification"]

  val send_notification'''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4) NotificationType4.t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> unit
    [@@js.call "sendNotification"]

  val send_notification''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5) NotificationType5.t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> unit
    [@@js.call "sendNotification"]

  val send_notification'''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6) NotificationType6.t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> unit
    [@@js.call "sendNotification"]

  val send_notification''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) NotificationType7.t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> unit
    [@@js.call "sendNotification"]

  val send_notification'''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) NotificationType8.t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> p8:'P8
    -> unit
    [@@js.call "sendNotification"]

  val send_notification''''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) NotificationType9.t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> p6:'P6
    -> p7:'P7
    -> p8:'P8
    -> p9:'P9
    -> unit
    [@@js.call "sendNotification"]

  val send_notification'''''''''''
    :  t
    -> method_:string
    -> ?r0:(ParameterStructures.t, any) union2
    -> rest:(any list[@js.variadic])
    -> unit
    [@@js.call "sendNotification"]

  val on_notification
    :  t
    -> type_:NotificationType0.t
    -> handler:(unit -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val on_notification'
    :  t
    -> type_:'P NotificationType.t
    -> handler:('P -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val on_notification'''
    :  t
    -> type_:('P1, 'P2) NotificationType2.t
    -> handler:('P1 -> 'P2 -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val on_notification''''
    :  t
    -> type_:('P1, 'P2, 'P3) NotificationType3.t
    -> handler:('P1 -> 'P2 -> 'P3 -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val on_notification'''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4) NotificationType4.t
    -> handler:('P1 -> 'P2 -> 'P3 -> 'P4 -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val on_notification''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5) NotificationType5.t
    -> handler:('P1 -> 'P2 -> 'P3 -> 'P4 -> 'P5 -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val on_notification'''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6) NotificationType6.t
    -> handler:('P1 -> 'P2 -> 'P3 -> 'P4 -> 'P5 -> 'P6 -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val on_notification''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) NotificationType7.t
    -> handler:('P1 -> 'P2 -> 'P3 -> 'P4 -> 'P5 -> 'P6 -> 'P7 -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val on_notification'''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) NotificationType8.t
    -> handler:('P1 -> 'P2 -> 'P3 -> 'P4 -> 'P5 -> 'P6 -> 'P7 -> 'P8 -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val on_notification''''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) NotificationType9.t
    -> handler:
         ('P1 -> 'P2 -> 'P3 -> 'P4 -> 'P5 -> 'P6 -> 'P7 -> 'P8 -> 'P9 -> unit)
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val on_notification'''''''''''
    :  t
    -> method_:string
    -> handler:GenericNotificationHandler.t
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val on_notification''''''''''''
    :  t
    -> handler:StarNotificationHandler.t
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val get_on_unhandled_notification
    :  t
    -> NotificationMessage.t Vscode_jsonrpc_events.Event.t
    [@@js.get "onUnhandledNotification"]

  val set_on_unhandled_notification
    :  t
    -> NotificationMessage.t Vscode_jsonrpc_events.Event.t
    -> unit
    [@@js.set "onUnhandledNotification"]

  val on_progress
    :  t
    -> type_:'P ProgressType.t
    -> token:string or_number
    -> handler:'P NotificationHandler.t
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onProgress"]

  val send_progress
    :  t
    -> type_:'P ProgressType.t
    -> token:string or_number
    -> value:'P
    -> unit
    [@@js.call "sendProgress"]

  val get_on_unhandled_progress
    :  t
    -> any ProgressParams.t Vscode_jsonrpc_events.Event.t
    [@@js.get "onUnhandledProgress"]

  val set_on_unhandled_progress
    :  t
    -> any ProgressParams.t Vscode_jsonrpc_events.Event.t
    -> unit
    [@@js.set "onUnhandledProgress"]

  val trace
    :  t
    -> value:Trace.t
    -> tracer:Tracer.t
    -> ?send_notification:bool
    -> unit
    -> unit
    [@@js.call "trace"]

  val trace'
    :  t
    -> value:Trace.t
    -> tracer:Tracer.t
    -> ?trace_options:TraceOptions.t
    -> unit
    -> unit
    [@@js.call "trace"]

  val get_on_error
    :  t
    -> (Error.t * Message.t or_undefined * int or_undefined)
       Vscode_jsonrpc_events.Event.t
    [@@js.get "onError"]

  val set_on_error
    :  t
    -> (Error.t * Message.t or_undefined * int or_undefined)
       Vscode_jsonrpc_events.Event.t
    -> unit
    [@@js.set "onError"]

  val get_on_close : t -> unit Vscode_jsonrpc_events.Event.t
    [@@js.get "onClose"]

  val set_on_close : t -> unit Vscode_jsonrpc_events.Event.t -> unit
    [@@js.set "onClose"]

  val listen : t -> unit [@@js.call "listen"]

  val end_ : t -> unit [@@js.call "end"]

  val get_on_dispose : t -> unit Vscode_jsonrpc_events.Event.t
    [@@js.get "onDispose"]

  val set_on_dispose : t -> unit Vscode_jsonrpc_events.Event.t -> unit
    [@@js.set "onDispose"]

  val dispose : t -> unit [@@js.call "dispose"]

  val inspect : t -> unit [@@js.call "inspect"]
end
[@@js.scope "MessageConnection"]

module ConnectionStrategy : sig
  type t = AnonymousInterface0.t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "ConnectionStrategy"]

module CancellationId : sig
  type t = string or_number

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t
end

module CancellationReceiverStrategy : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val create_cancellation_token_source
    :  t
    -> id:CancellationId.t
    -> Vscode_jsonrpc_cancellation.AbstractCancellationTokenSource.t
    [@@js.call "createCancellationTokenSource"]

  val dispose : t -> unit [@@js.call "dispose"]

  val message : t [@@js.global "Message"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "CancellationReceiverStrategy"]

module CancellationSenderStrategy : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val send_cancellation
    :  t
    -> conn:MessageConnection.t
    -> id:CancellationId.t
    -> unit
    [@@js.call "sendCancellation"]

  val cleanup : t -> id:CancellationId.t -> unit [@@js.call "cleanup"]

  val dispose : t -> unit [@@js.call "dispose"]

  val message : t [@@js.global "Message"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "CancellationSenderStrategy"]

module CancellationStrategy : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_receiver : t -> CancellationReceiverStrategy.t [@@js.get "receiver"]

  val set_receiver : t -> CancellationReceiverStrategy.t -> unit
    [@@js.set "receiver"]

  val get_sender : t -> CancellationSenderStrategy.t [@@js.get "sender"]

  val set_sender : t -> CancellationSenderStrategy.t -> unit [@@js.set "sender"]

  val message : t [@@js.global "Message"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "CancellationStrategy"]

module ConnectionOptions : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_cancellation_strategy : t -> CancellationStrategy.t
    [@@js.get "cancellationStrategy"]

  val set_cancellation_strategy : t -> CancellationStrategy.t -> unit
    [@@js.set "cancellationStrategy"]

  val get_connection_strategy : t -> ConnectionStrategy.t
    [@@js.get "connectionStrategy"]

  val set_connection_strategy : t -> ConnectionStrategy.t -> unit
    [@@js.set "connectionStrategy"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "ConnectionOptions"]

val create_message_connection
  :  message_reader:Vscode_jsonrpc_message_reader.MessageReader.t
  -> message_writer:Vscode_jsonrpc_message_writer.MessageWriter.t
  -> ?_logger:Logger.t
  -> ?options:ConnectionOptions.t
  -> unit
  -> MessageConnection.t
  [@@js.global "createMessageConnection"]
(* export {}; *)
