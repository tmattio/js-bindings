[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es5
module Internal =
  struct
    module AnonymousInterfaces = struct  end
    module Types =
      struct
        open AnonymousInterfaces
        type _FoldingRangeFeature = [ `FoldingRangeFeature ] intf
        and _FoldingRangeProviderMiddleware =
          [ `FoldingRangeProviderMiddleware ] intf
        and _ProvideFoldingRangeSignature =
          [ `ProvideFoldingRangeSignature ] intf
        let rec _FoldingRangeFeature_of_js : Ojs.t -> _FoldingRangeFeature =
          Obj.magic
        and _FoldingRangeFeature_to_js : _FoldingRangeFeature -> Ojs.t =
          Obj.magic
        and _FoldingRangeProviderMiddleware_of_js :
          Ojs.t -> _FoldingRangeProviderMiddleware = Obj.magic
        and _FoldingRangeProviderMiddleware_to_js :
          _FoldingRangeProviderMiddleware -> Ojs.t = Obj.magic
        and _ProvideFoldingRangeSignature_of_js :
          Ojs.t -> _ProvideFoldingRangeSignature = Obj.magic
        and _ProvideFoldingRangeSignature_to_js :
          _ProvideFoldingRangeSignature -> Ojs.t = Obj.magic
      end
  end
open Internal
open AnonymousInterfaces
open Types
module ProvideFoldingRangeSignature =
  struct
    type t = _ProvideFoldingRangeSignature
    let rec t_of_js : Ojs.t -> t =
      fun (x2 : Ojs.t) -> _ProvideFoldingRangeSignature_of_js x2
    and t_to_js : t -> Ojs.t =
      fun (x1 : _ProvideFoldingRangeSignature) ->
        _ProvideFoldingRangeSignature_to_js x1
    let (apply :
      t ->
        this:unit ->
          document:TextDocument.t ->
            context:FoldingContext.t ->
              token:CancellationToken.t ->
                VFoldingRange.t list ProviderResult.t_1)
      =
      fun (x7 : t) ->
        fun ~this:(x3 : unit) ->
          fun ~document:(x4 : TextDocument.t) ->
            fun ~context:(x5 : FoldingContext.t) ->
              fun ~token:(x6 : CancellationToken.t) ->
                ProviderResult.t_1_of_js
                  (fun (x8 : Ojs.t) ->
                     Ojs.list_of_js VFoldingRange.t_of_js x8)
                  (Ojs.apply (t_to_js x7)
                     [|(Ojs.unit_to_js x3);(TextDocument.t_to_js x4);(
                       FoldingContext.t_to_js x5);(CancellationToken.t_to_js
                                                     x6)|])
  end
module FoldingRangeProviderMiddleware =
  struct
    type t = _FoldingRangeProviderMiddleware
    let rec t_of_js : Ojs.t -> t =
      fun (x11 : Ojs.t) -> _FoldingRangeProviderMiddleware_of_js x11
    and t_to_js : t -> Ojs.t =
      fun (x10 : _FoldingRangeProviderMiddleware) ->
        _FoldingRangeProviderMiddleware_to_js x10
    let (provideFoldingRanges :
      t ->
        this:unit ->
          document:TextDocument.t ->
            context:FoldingContext.t ->
              token:CancellationToken.t ->
                next:_ProvideFoldingRangeSignature ->
                  VFoldingRange.t list ProviderResult.t_1)
      =
      fun (x17 : t) ->
        fun ~this:(x12 : unit) ->
          fun ~document:(x13 : TextDocument.t) ->
            fun ~context:(x14 : FoldingContext.t) ->
              fun ~token:(x15 : CancellationToken.t) ->
                fun ~next:(x16 : _ProvideFoldingRangeSignature) ->
                  ProviderResult.t_1_of_js
                    (fun (x18 : Ojs.t) ->
                       Ojs.list_of_js VFoldingRange.t_of_js x18)
                    (Ojs.call (t_to_js x17) "provideFoldingRanges"
                       [|(Ojs.unit_to_js x12);(TextDocument.t_to_js x13);(
                         FoldingContext.t_to_js x14);(CancellationToken.t_to_js
                                                        x15);(_ProvideFoldingRangeSignature_to_js
                                                                x16)|])
  end
module FoldingRangeFeature =
  struct
    type t = _FoldingRangeFeature
    let rec t_of_js : Ojs.t -> t =
      fun (x21 : Ojs.t) -> _FoldingRangeFeature_of_js x21
    and t_to_js : t -> Ojs.t =
      fun (x20 : _FoldingRangeFeature) -> _FoldingRangeFeature_to_js x20
    let (create : client:BaseLanguageClient.t -> t) =
      fun ~client:(x22 : BaseLanguageClient.t) ->
        t_of_js
          (Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "FoldingRangeFeature")
             [|(BaseLanguageClient.t_to_js x22)|])
    let (fillClientCapabilities :
      t -> capabilities:ClientCapabilities.t -> unit) =
      fun (x24 : t) ->
        fun ~capabilities:(x23 : ClientCapabilities.t) ->
          ignore
            (Ojs.call (t_to_js x24) "fillClientCapabilities"
               [|(ClientCapabilities.t_to_js x23)|])
    let (initialize :
      t ->
        capabilities:ServerCapabilities.t ->
          documentSelector:DocumentSelector.t -> unit)
      =
      fun (x27 : t) ->
        fun ~capabilities:(x25 : ServerCapabilities.t) ->
          fun ~documentSelector:(x26 : DocumentSelector.t) ->
            ignore
              (Ojs.call (t_to_js x27) "initialize"
                 [|(ServerCapabilities.t_to_js x25);(DocumentSelector.t_to_js
                                                       x26)|])
    let (registerLanguageProvider :
      t ->
        options:FoldingRangeRegistrationOptions.t ->
          (Disposable.t * FoldingRangeProvider.t))
      =
      fun (x29 : t) ->
        fun ~options:(x28 : FoldingRangeRegistrationOptions.t) ->
          let x30 =
            Ojs.call (t_to_js x29) "registerLanguageProvider"
              [|(FoldingRangeRegistrationOptions.t_to_js x28)|] in
          ((Disposable.t_of_js (Ojs.array_get x30 0)),
            (FoldingRangeProvider.t_of_js (Ojs.array_get x30 1)))
    let (get_asFoldingRangeKind : unit -> any) =
      fun () ->
        any_of_js
          (Ojs.get_prop_ascii
             (Ojs.get_prop_ascii Ojs.global "FoldingRangeFeature")
             "asFoldingRangeKind")
    let (set_asFoldingRangeKind : any -> unit) =
      fun (x31 : any) ->
        Ojs.set_prop_ascii
          (Ojs.get_prop_ascii Ojs.global "FoldingRangeFeature")
          "asFoldingRangeKind" (any_to_js x31)
    let (get_asFoldingRanges : unit -> any) =
      fun () ->
        any_of_js
          (Ojs.get_prop_ascii
             (Ojs.get_prop_ascii Ojs.global "FoldingRangeFeature")
             "asFoldingRanges")
    let (set_asFoldingRanges : any -> unit) =
      fun (x32 : any) ->
        Ojs.set_prop_ascii
          (Ojs.get_prop_ascii Ojs.global "FoldingRangeFeature")
          "asFoldingRanges" (any_to_js x32)
    let (cast :
      t ->
        (FoldingRangeOptions.t or_boolean, FoldingRangeRegistrationOptions.t,
          FoldingRangeProvider.t) TextDocumentFeature.t_3)
      =
      fun (x33 : t) ->
        TextDocumentFeature.t_3_of_js
          (fun (x34 : Ojs.t) ->
             or_boolean_of_js FoldingRangeOptions.t_of_js x34)
          FoldingRangeRegistrationOptions.t_of_js
          FoldingRangeProvider.t_of_js (t_to_js x33)
  end