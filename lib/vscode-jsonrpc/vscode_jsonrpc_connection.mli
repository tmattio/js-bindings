[@@@ocaml.warning "-7-11-32-33-39"]

[@@@js.implem [@@@ocaml.warning "-7-11-32-33-39"]]

open Es2020
open Vscode_jsonrpc_messages

module AnonymousInterface0 : sig
  type t

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val cancelUndispatched
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
  type 'T t = 'T _ProgressParams

  val t_to_js : ('T -> Ojs.t) -> 'T t -> Ojs.t

  val t_of_js : (Ojs.t -> 'T) -> Ojs.t -> 'T t

  val get_token : 'T t -> _ProgressToken [@@js.get "token"]

  val set_token : 'T t -> _ProgressToken -> unit [@@js.set "token"]

  val get_value : 'T t -> 'T [@@js.get "value"]

  val set_value : 'T t -> 'T -> unit [@@js.set "value"]
end
[@@js.scope "ProgressParams"]

module ProgressType : sig
  type 'PR t = 'PR _ProgressType

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
  type t = _StarRequestHandler

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply
    :  t
    -> method_:string
    -> params:(untyped_object, any) or_array or_undefined
    -> token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> (any, any) _HandlerResult
    [@@js.apply]
end
[@@js.scope "StarRequestHandler"]

module GenericRequestHandler : sig
  type ('R, 'E) t = ('R, 'E) _GenericRequestHandler

  val t_to_js : ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('R, 'E) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('R, 'E) t

  val apply
    :  ('R, 'E) t
    -> params:(any list[@js.variadic])
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "GenericRequestHandler"]

module RequestHandler0 : sig
  type ('R, 'E) t = ('R, 'E) _RequestHandler0

  val t_to_js : ('R -> Ojs.t) -> ('E -> Ojs.t) -> ('R, 'E) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'R) -> (Ojs.t -> 'E) -> Ojs.t -> ('R, 'E) t

  val apply
    :  ('R, 'E) t
    -> token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler0"]

module RequestHandler : sig
  type ('P, 'R, 'E) t = ('P, 'R, 'E) _RequestHandler

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
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler"]

module RequestHandler1 : sig
  type ('P1, 'R, 'E) t = ('P1, 'R, 'E) _RequestHandler1

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
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler1"]

module RequestHandler2 : sig
  type ('P1, 'P2, 'R, 'E) t = ('P1, 'P2, 'R, 'E) _RequestHandler2

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
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler2"]

module RequestHandler3 : sig
  type ('P1, 'P2, 'P3, 'R, 'E) t = ('P1, 'P2, 'P3, 'R, 'E) _RequestHandler3

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
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler3"]

module RequestHandler4 : sig
  type ('P1, 'P2, 'P3, 'P4, 'R, 'E) t =
    ('P1, 'P2, 'P3, 'P4, 'R, 'E) _RequestHandler4

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
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler4"]

module RequestHandler5 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) _RequestHandler5

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
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler5"]

module RequestHandler6 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) _RequestHandler6

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
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler6"]

module RequestHandler7 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) _RequestHandler7

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
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler7"]

module RequestHandler8 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) _RequestHandler8

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
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler8"]

module RequestHandler9 : sig
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) _RequestHandler9

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
    -> ('R, 'E) _HandlerResult
    [@@js.apply]
end
[@@js.scope "RequestHandler9"]

module StarNotificationHandler : sig
  type t = _StarNotificationHandler

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
  type t = _GenericNotificationHandler

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> params:(any list[@js.variadic]) -> unit [@@js.apply]
end
[@@js.scope "GenericNotificationHandler"]

module NotificationHandler0 : sig
  type t = _NotificationHandler0

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val apply : t -> unit [@@js.apply]
end
[@@js.scope "NotificationHandler0"]

module NotificationHandler : sig
  type 'P t = 'P _NotificationHandler

  val t_to_js : ('P -> Ojs.t) -> 'P t -> Ojs.t

  val t_of_js : (Ojs.t -> 'P) -> Ojs.t -> 'P t

  val apply : 'P t -> params:'P -> unit [@@js.apply]
end
[@@js.scope "NotificationHandler"]

module NotificationHandler1 : sig
  type 'P1 t = 'P1 _NotificationHandler1

  val t_to_js : ('P1 -> Ojs.t) -> 'P1 t -> Ojs.t

  val t_of_js : (Ojs.t -> 'P1) -> Ojs.t -> 'P1 t

  val apply : 'P1 t -> p1:'P1 -> unit [@@js.apply]
end
[@@js.scope "NotificationHandler1"]

module NotificationHandler2 : sig
  type ('P1, 'P2) t = ('P1, 'P2) _NotificationHandler2

  val t_to_js : ('P1 -> Ojs.t) -> ('P2 -> Ojs.t) -> ('P1, 'P2) t -> Ojs.t

  val t_of_js : (Ojs.t -> 'P1) -> (Ojs.t -> 'P2) -> Ojs.t -> ('P1, 'P2) t

  val apply : ('P1, 'P2) t -> p1:'P1 -> p2:'P2 -> unit [@@js.apply]
end
[@@js.scope "NotificationHandler2"]

module NotificationHandler3 : sig
  type ('P1, 'P2, 'P3) t = ('P1, 'P2, 'P3) _NotificationHandler3

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
  type ('P1, 'P2, 'P3, 'P4) t = ('P1, 'P2, 'P3, 'P4) _NotificationHandler4

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
  type ('P1, 'P2, 'P3, 'P4, 'P5) t =
    ('P1, 'P2, 'P3, 'P4, 'P5) _NotificationHandler5

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
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6) _NotificationHandler6

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
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) _NotificationHandler7

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
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) _NotificationHandler8

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
  type ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) t =
    ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) _NotificationHandler9

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
  type t = _Logger

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val error : t -> message:string -> unit [@@js.call "error"]

  val warn : t -> message:string -> unit [@@js.call "warn"]

  val info : t -> message:string -> unit [@@js.call "info"]

  val log : t -> message:string -> unit [@@js.call "log"]
end
[@@js.scope "Logger"]

val nullLogger : _Logger [@@js.global "NullLogger"]

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

  val fromString : value:string -> _Trace [@@js.global "fromString"]

  val toString : value:_Trace -> _TraceValues [@@js.global "toString"]
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

  val fromString : value:string -> _TraceFormat [@@js.global "fromString"]
end
[@@js.scope "TraceFormat"]

module TraceOptions : sig
  type t = _TraceOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_sendNotification : t -> bool [@@js.get "sendNotification"]

  val set_sendNotification : t -> bool -> unit [@@js.set "sendNotification"]

  val get_traceFormat : t -> _TraceFormat [@@js.get "traceFormat"]

  val set_traceFormat : t -> _TraceFormat -> unit [@@js.set "traceFormat"]
end
[@@js.scope "TraceOptions"]

module SetTraceParams : sig
  type t = _SetTraceParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_value : t -> _TraceValues [@@js.get "value"]

  val set_value : t -> _TraceValues -> unit [@@js.set "value"]
end
[@@js.scope "SetTraceParams"]

module SetTraceNotification : sig
  val type_ : _SetTraceParams NotificationType.t [@@js.global "type"]
end
[@@js.scope "SetTraceNotification"]

module LogTraceParams : sig
  type t = _LogTraceParams

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_message : t -> string [@@js.get "message"]

  val set_message : t -> string -> unit [@@js.set "message"]

  val get_verbose : t -> string [@@js.get "verbose"]

  val set_verbose : t -> string -> unit [@@js.set "verbose"]
end
[@@js.scope "LogTraceParams"]

module LogTraceNotification : sig
  val type_ : _LogTraceParams NotificationType.t [@@js.global "type"]
end
[@@js.scope "LogTraceNotification"]

module Tracer : sig
  type t = _Tracer

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val log : t -> dataObject:any -> unit [@@js.call "log"]

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
  type t = _ConnectionError

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_code : t -> _ConnectionErrors [@@js.get "code"]

  val create : code:_ConnectionErrors -> message:string -> t [@@js.create]

  val cast : t -> Error.t [@@js.cast]
end
[@@js.scope "ConnectionError"]

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
  type t = _CancellationReceiverStrategy

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val createCancellationTokenSource
    :  t
    -> id:_CancellationId
    -> Vscode_jsonrpc_cancellation.AbstractCancellationTokenSource.t
    [@@js.call "createCancellationTokenSource"]

  val dispose : t -> unit [@@js.call "dispose"]

  val message : _CancellationReceiverStrategy [@@js.global "Message"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "CancellationReceiverStrategy"]

module CancellationSenderStrategy : sig
  type t = _CancellationSenderStrategy

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val sendCancellation
    :  t
    -> conn:_MessageConnection
    -> id:_CancellationId
    -> unit
    [@@js.call "sendCancellation"]

  val cleanup : t -> id:_CancellationId -> unit [@@js.call "cleanup"]

  val dispose : t -> unit [@@js.call "dispose"]

  val message : _CancellationSenderStrategy [@@js.global "Message"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "CancellationSenderStrategy"]

module CancellationStrategy : sig
  type t = _CancellationStrategy

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_receiver : t -> _CancellationReceiverStrategy [@@js.get "receiver"]

  val set_receiver : t -> _CancellationReceiverStrategy -> unit
    [@@js.set "receiver"]

  val get_sender : t -> _CancellationSenderStrategy [@@js.get "sender"]

  val set_sender : t -> _CancellationSenderStrategy -> unit [@@js.set "sender"]

  val message : _CancellationStrategy [@@js.global "Message"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "CancellationStrategy"]

module ConnectionOptions : sig
  type t = _ConnectionOptions

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val get_cancellationStrategy : t -> _CancellationStrategy
    [@@js.get "cancellationStrategy"]

  val set_cancellationStrategy : t -> _CancellationStrategy -> unit
    [@@js.set "cancellationStrategy"]

  val get_connectionStrategy : t -> _ConnectionStrategy
    [@@js.get "connectionStrategy"]

  val set_connectionStrategy : t -> _ConnectionStrategy -> unit
    [@@js.set "connectionStrategy"]

  val is : value:any -> bool [@@js.global "is"]
end
[@@js.scope "ConnectionOptions"]

module MessageConnection : sig
  type t = _MessageConnection

  val t_to_js : t -> Ojs.t

  val t_of_js : Ojs.t -> t

  val sendRequest
    :  t
    -> type_:('R, 'E) RequestType0.t
    -> ?token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest'
    :  t
    -> type_:('P, 'R, 'E) RequestType.t
    -> params:'P
    -> ?token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest''
    :  t
    -> type_:('P1, 'R, 'E) RequestType1.t
    -> p1:'P1
    -> ?token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest'''
    :  t
    -> type_:('P1, 'P2, 'R, 'E) RequestType2.t
    -> p1:'P1
    -> p2:'P2
    -> ?token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'R, 'E) RequestType3.t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> ?token:Vscode_jsonrpc_cancellation.CancellationToken.t
    -> unit
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val sendRequest'''''
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

  val sendRequest''''''
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

  val sendRequest'''''''
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

  val sendRequest''''''''
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

  val sendRequest'''''''''
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

  val sendRequest''''''''''
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

  val sendRequest'''''''''''
    :  t
    -> method_:string
    -> ?r0:(ParameterStructures.t, any) union2
    -> rest:(any list[@js.variadic])
    -> 'R Promise.t
    [@@js.call "sendRequest"]

  val onRequest
    :  t
    -> type_:('R, 'E) RequestType0.t
    -> handler:('R, 'E) _RequestHandler0
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val onRequest'
    :  t
    -> type_:('P, 'R, 'E) RequestType.t
    -> handler:('P, 'R, 'E) _RequestHandler
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val onRequest''
    :  t
    -> type_:('P1, 'R, 'E) RequestType1.t
    -> handler:('P1, 'R, 'E) _RequestHandler1
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val onRequest'''
    :  t
    -> type_:('P1, 'P2, 'R, 'E) RequestType2.t
    -> handler:('P1, 'P2, 'R, 'E) _RequestHandler2
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val onRequest''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'R, 'E) RequestType3.t
    -> handler:('P1, 'P2, 'P3, 'R, 'E) _RequestHandler3
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val onRequest'''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'R, 'E) RequestType4.t
    -> handler:('P1, 'P2, 'P3, 'P4, 'R, 'E) _RequestHandler4
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val onRequest''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) RequestType5.t
    -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'R, 'E) _RequestHandler5
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val onRequest'''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) RequestType6.t
    -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'R, 'E) _RequestHandler6
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val onRequest''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) RequestType7.t
    -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'R, 'E) _RequestHandler7
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val onRequest'''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) RequestType8.t
    -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'R, 'E) _RequestHandler8
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val onRequest''''''''''
    :  t
    -> type_:
         ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) RequestType9.t
    -> handler:
         ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9, 'R, 'E) _RequestHandler9
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val onRequest'''''''''''
    :  t
    -> method_:string
    -> handler:('R, 'E) _GenericRequestHandler
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val onRequest''''''''''''
    :  t
    -> handler:_StarRequestHandler
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onRequest"]

  val sendNotification : t -> type_:NotificationType0.t -> unit
    [@@js.call "sendNotification"]

  val sendNotification'
    :  t
    -> type_:'P NotificationType.t
    -> ?params:'P
    -> unit
    -> unit
    [@@js.call "sendNotification"]

  val sendNotification'' : t -> type_:'P1 NotificationType1.t -> p1:'P1 -> unit
    [@@js.call "sendNotification"]

  val sendNotification'''
    :  t
    -> type_:('P1, 'P2) NotificationType2.t
    -> p1:'P1
    -> p2:'P2
    -> unit
    [@@js.call "sendNotification"]

  val sendNotification''''
    :  t
    -> type_:('P1, 'P2, 'P3) NotificationType3.t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> unit
    [@@js.call "sendNotification"]

  val sendNotification'''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4) NotificationType4.t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> unit
    [@@js.call "sendNotification"]

  val sendNotification''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5) NotificationType5.t
    -> p1:'P1
    -> p2:'P2
    -> p3:'P3
    -> p4:'P4
    -> p5:'P5
    -> unit
    [@@js.call "sendNotification"]

  val sendNotification'''''''
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

  val sendNotification''''''''
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

  val sendNotification'''''''''
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

  val sendNotification''''''''''
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

  val sendNotification'''''''''''
    :  t
    -> method_:string
    -> ?r0:(ParameterStructures.t, any) union2
    -> rest:(any list[@js.variadic])
    -> unit
    [@@js.call "sendNotification"]

  val onNotification
    :  t
    -> type_:NotificationType0.t
    -> handler:_NotificationHandler0
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val onNotification'
    :  t
    -> type_:'P NotificationType.t
    -> handler:'P _NotificationHandler
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val onNotification''
    :  t
    -> type_:'P1 NotificationType1.t
    -> handler:'P1 _NotificationHandler1
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val onNotification'''
    :  t
    -> type_:('P1, 'P2) NotificationType2.t
    -> handler:('P1, 'P2) _NotificationHandler2
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val onNotification''''
    :  t
    -> type_:('P1, 'P2, 'P3) NotificationType3.t
    -> handler:('P1, 'P2, 'P3) _NotificationHandler3
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val onNotification'''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4) NotificationType4.t
    -> handler:('P1, 'P2, 'P3, 'P4) _NotificationHandler4
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val onNotification''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5) NotificationType5.t
    -> handler:('P1, 'P2, 'P3, 'P4, 'P5) _NotificationHandler5
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val onNotification'''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6) NotificationType6.t
    -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6) _NotificationHandler6
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val onNotification''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) NotificationType7.t
    -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7) _NotificationHandler7
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val onNotification'''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) NotificationType8.t
    -> handler:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8) _NotificationHandler8
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val onNotification''''''''''
    :  t
    -> type_:('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) NotificationType9.t
    -> handler:
         ('P1, 'P2, 'P3, 'P4, 'P5, 'P6, 'P7, 'P8, 'P9) _NotificationHandler9
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val onNotification'''''''''''
    :  t
    -> method_:string
    -> handler:_GenericNotificationHandler
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val onNotification''''''''''''
    :  t
    -> handler:_StarNotificationHandler
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onNotification"]

  val get_onUnhandledNotification
    :  t
    -> NotificationMessage.t Vscode_jsonrpc_events.Event.t
    [@@js.get "onUnhandledNotification"]

  val set_onUnhandledNotification
    :  t
    -> NotificationMessage.t Vscode_jsonrpc_events.Event.t
    -> unit
    [@@js.set "onUnhandledNotification"]

  val onProgress
    :  t
    -> type_:'P _ProgressType
    -> token:string or_number
    -> handler:'P _NotificationHandler
    -> Vscode_jsonrpc_disposable.Disposable.t
    [@@js.call "onProgress"]

  val sendProgress
    :  t
    -> type_:'P _ProgressType
    -> token:string or_number
    -> value:'P
    -> unit
    [@@js.call "sendProgress"]

  val get_onUnhandledProgress
    :  t
    -> any _ProgressParams Vscode_jsonrpc_events.Event.t
    [@@js.get "onUnhandledProgress"]

  val set_onUnhandledProgress
    :  t
    -> any _ProgressParams Vscode_jsonrpc_events.Event.t
    -> unit
    [@@js.set "onUnhandledProgress"]

  val trace
    :  t
    -> value:_Trace
    -> tracer:_Tracer
    -> ?sendNotification:bool
    -> unit
    -> unit
    [@@js.call "trace"]

  val trace'
    :  t
    -> value:_Trace
    -> tracer:_Tracer
    -> ?traceOptions:_TraceOptions
    -> unit
    -> unit
    [@@js.call "trace"]

  val get_onError
    :  t
    -> (Error.t * Message.t or_undefined * int or_undefined)
       Vscode_jsonrpc_events.Event.t
    [@@js.get "onError"]

  val set_onError
    :  t
    -> (Error.t * Message.t or_undefined * int or_undefined)
       Vscode_jsonrpc_events.Event.t
    -> unit
    [@@js.set "onError"]

  val get_onClose : t -> unit Vscode_jsonrpc_events.Event.t [@@js.get "onClose"]

  val set_onClose : t -> unit Vscode_jsonrpc_events.Event.t -> unit
    [@@js.set "onClose"]

  val listen : t -> unit [@@js.call "listen"]

  val end_ : t -> unit [@@js.call "end"]

  val get_onDispose : t -> unit Vscode_jsonrpc_events.Event.t
    [@@js.get "onDispose"]

  val set_onDispose : t -> unit Vscode_jsonrpc_events.Event.t -> unit
    [@@js.set "onDispose"]

  val dispose : t -> unit [@@js.call "dispose"]

  val inspect : t -> unit [@@js.call "inspect"]
end
[@@js.scope "MessageConnection"]

val createMessageConnection
  :  messageReader:Vscode_jsonrpc_messageReader.MessageReader.t
  -> messageWriter:Vscode_jsonrpc_messageWriter.MessageWriter.t
  -> ?_logger:_Logger
  -> ?options:_ConnectionOptions
  -> unit
  -> _MessageConnection
  [@@js.global "createMessageConnection"]
(* export {}; *)
