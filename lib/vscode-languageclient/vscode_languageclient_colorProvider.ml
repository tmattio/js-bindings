[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es5
module Internal =
  struct
    module AnonymousInterfaces =
      struct
        type anonymous_interface_0 = [ `anonymous_interface_0 ] intf
        let rec anonymous_interface_0_of_js : Ojs.t -> anonymous_interface_0
          = Obj.magic
        and anonymous_interface_0_to_js : anonymous_interface_0 -> Ojs.t =
          Obj.magic
      end
    module Types =
      struct
        open AnonymousInterfaces
        type _ColorProviderFeature = [ `ColorProviderFeature ] intf
        and _ColorProviderMiddleware = [ `ColorProviderMiddleware ] intf
        and _ProvideColorPresentationSignature =
          [ `ProvideColorPresentationSignature ] intf
        and _ProvideDocumentColorsSignature =
          [ `ProvideDocumentColorsSignature ] intf
        let rec _ColorProviderFeature_of_js : Ojs.t -> _ColorProviderFeature
          = Obj.magic
        and _ColorProviderFeature_to_js : _ColorProviderFeature -> Ojs.t =
          Obj.magic
        and _ColorProviderMiddleware_of_js :
          Ojs.t -> _ColorProviderMiddleware = Obj.magic
        and _ColorProviderMiddleware_to_js :
          _ColorProviderMiddleware -> Ojs.t = Obj.magic
        and _ProvideColorPresentationSignature_of_js :
          Ojs.t -> _ProvideColorPresentationSignature = Obj.magic
        and _ProvideColorPresentationSignature_to_js :
          _ProvideColorPresentationSignature -> Ojs.t = Obj.magic
        and _ProvideDocumentColorsSignature_of_js :
          Ojs.t -> _ProvideDocumentColorsSignature = Obj.magic
        and _ProvideDocumentColorsSignature_to_js :
          _ProvideDocumentColorsSignature -> Ojs.t = Obj.magic
      end
  end
open Internal
open AnonymousInterfaces
open Types
module AnonymousInterface0 =
  struct
    type t = anonymous_interface_0
    let rec t_of_js : Ojs.t -> t =
      fun (x2 : Ojs.t) -> anonymous_interface_0_of_js x2
    and t_to_js : t -> Ojs.t =
      fun (x1 : anonymous_interface_0) -> anonymous_interface_0_to_js x1
    let (get_document : t -> TextDocument.t) =
      fun (x3 : t) ->
        TextDocument.t_of_js (Ojs.get_prop_ascii (t_to_js x3) "document")
    let (set_document : t -> TextDocument.t -> unit) =
      fun (x4 : t) ->
        fun (x5 : TextDocument.t) ->
          Ojs.set_prop_ascii (t_to_js x4) "document"
            (TextDocument.t_to_js x5)
    let (get_range : t -> VRange.t) =
      fun (x6 : t) ->
        VRange.t_of_js (Ojs.get_prop_ascii (t_to_js x6) "range")
    let (set_range : t -> VRange.t -> unit) =
      fun (x7 : t) ->
        fun (x8 : VRange.t) ->
          Ojs.set_prop_ascii (t_to_js x7) "range" (VRange.t_to_js x8)
  end
module ProvideDocumentColorsSignature =
  struct
    type t = _ProvideDocumentColorsSignature
    let rec t_of_js : Ojs.t -> t =
      fun (x10 : Ojs.t) -> _ProvideDocumentColorsSignature_of_js x10
    and t_to_js : t -> Ojs.t =
      fun (x9 : _ProvideDocumentColorsSignature) ->
        _ProvideDocumentColorsSignature_to_js x9
    let (apply :
      t ->
        document:TextDocument.t ->
          token:CancellationToken.t ->
            VColorInformation.t list ProviderResult.t_1)
      =
      fun (x13 : t) ->
        fun ~document:(x11 : TextDocument.t) ->
          fun ~token:(x12 : CancellationToken.t) ->
            ProviderResult.t_1_of_js
              (fun (x14 : Ojs.t) ->
                 Ojs.list_of_js VColorInformation.t_of_js x14)
              (Ojs.apply (t_to_js x13)
                 [|(TextDocument.t_to_js x11);(CancellationToken.t_to_js x12)|])
  end
module ProvideColorPresentationSignature =
  struct
    type t = _ProvideColorPresentationSignature
    let rec t_of_js : Ojs.t -> t =
      fun (x17 : Ojs.t) -> _ProvideColorPresentationSignature_of_js x17
    and t_to_js : t -> Ojs.t =
      fun (x16 : _ProvideColorPresentationSignature) ->
        _ProvideColorPresentationSignature_to_js x16
    let (apply :
      t ->
        color:VColor.t ->
          context:anonymous_interface_0 ->
            token:CancellationToken.t ->
              VColorPresentation.t list ProviderResult.t_1)
      =
      fun (x21 : t) ->
        fun ~color:(x18 : VColor.t) ->
          fun ~context:(x19 : anonymous_interface_0) ->
            fun ~token:(x20 : CancellationToken.t) ->
              ProviderResult.t_1_of_js
                (fun (x22 : Ojs.t) ->
                   Ojs.list_of_js VColorPresentation.t_of_js x22)
                (Ojs.apply (t_to_js x21)
                   [|(VColor.t_to_js x18);(anonymous_interface_0_to_js x19);(
                     CancellationToken.t_to_js x20)|])
  end
module ColorProviderMiddleware =
  struct
    type t = _ColorProviderMiddleware
    let rec t_of_js : Ojs.t -> t =
      fun (x25 : Ojs.t) -> _ColorProviderMiddleware_of_js x25
    and t_to_js : t -> Ojs.t =
      fun (x24 : _ColorProviderMiddleware) ->
        _ColorProviderMiddleware_to_js x24
    let (provideDocumentColors :
      t ->
        this:unit ->
          document:TextDocument.t ->
            token:CancellationToken.t ->
              next:_ProvideDocumentColorsSignature ->
                VColorInformation.t list ProviderResult.t_1)
      =
      fun (x30 : t) ->
        fun ~this:(x26 : unit) ->
          fun ~document:(x27 : TextDocument.t) ->
            fun ~token:(x28 : CancellationToken.t) ->
              fun ~next:(x29 : _ProvideDocumentColorsSignature) ->
                ProviderResult.t_1_of_js
                  (fun (x31 : Ojs.t) ->
                     Ojs.list_of_js VColorInformation.t_of_js x31)
                  (Ojs.call (t_to_js x30) "provideDocumentColors"
                     [|(Ojs.unit_to_js x26);(TextDocument.t_to_js x27);(
                       CancellationToken.t_to_js x28);(_ProvideDocumentColorsSignature_to_js
                                                         x29)|])
    let (provideColorPresentations :
      t ->
        this:unit ->
          color:VColor.t ->
            context:anonymous_interface_0 ->
              token:CancellationToken.t ->
                next:_ProvideColorPresentationSignature ->
                  VColorPresentation.t list ProviderResult.t_1)
      =
      fun (x38 : t) ->
        fun ~this:(x33 : unit) ->
          fun ~color:(x34 : VColor.t) ->
            fun ~context:(x35 : anonymous_interface_0) ->
              fun ~token:(x36 : CancellationToken.t) ->
                fun ~next:(x37 : _ProvideColorPresentationSignature) ->
                  ProviderResult.t_1_of_js
                    (fun (x39 : Ojs.t) ->
                       Ojs.list_of_js VColorPresentation.t_of_js x39)
                    (Ojs.call (t_to_js x38) "provideColorPresentations"
                       [|(Ojs.unit_to_js x33);(VColor.t_to_js x34);(anonymous_interface_0_to_js
                                                                    x35);(
                         CancellationToken.t_to_js x36);(_ProvideColorPresentationSignature_to_js
                                                           x37)|])
  end
module ColorProviderFeature =
  struct
    type t = _ColorProviderFeature
    let rec t_of_js : Ojs.t -> t =
      fun (x42 : Ojs.t) -> _ColorProviderFeature_of_js x42
    and t_to_js : t -> Ojs.t =
      fun (x41 : _ColorProviderFeature) -> _ColorProviderFeature_to_js x41
    let (create : client:BaseLanguageClient.t -> t) =
      fun ~client:(x43 : BaseLanguageClient.t) ->
        t_of_js
          (Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "ColorProviderFeature")
             [|(BaseLanguageClient.t_to_js x43)|])
    let (fillClientCapabilities :
      t -> capabilities:ClientCapabilities.t -> unit) =
      fun (x45 : t) ->
        fun ~capabilities:(x44 : ClientCapabilities.t) ->
          ignore
            (Ojs.call (t_to_js x45) "fillClientCapabilities"
               [|(ClientCapabilities.t_to_js x44)|])
    let (initialize :
      t ->
        capabilities:ServerCapabilities.t ->
          documentSelector:DocumentSelector.t -> unit)
      =
      fun (x48 : t) ->
        fun ~capabilities:(x46 : ServerCapabilities.t) ->
          fun ~documentSelector:(x47 : DocumentSelector.t) ->
            ignore
              (Ojs.call (t_to_js x48) "initialize"
                 [|(ServerCapabilities.t_to_js x46);(DocumentSelector.t_to_js
                                                       x47)|])
    let (registerLanguageProvider :
      t ->
        options:DocumentColorRegistrationOptions.t ->
          (Disposable.t * DocumentColorProvider.t))
      =
      fun (x50 : t) ->
        fun ~options:(x49 : DocumentColorRegistrationOptions.t) ->
          let x51 =
            Ojs.call (t_to_js x50) "registerLanguageProvider"
              [|(DocumentColorRegistrationOptions.t_to_js x49)|] in
          ((Disposable.t_of_js (Ojs.array_get x51 0)),
            (DocumentColorProvider.t_of_js (Ojs.array_get x51 1)))
    let (get_asColor : t -> any) =
      fun (x52 : t) -> any_of_js (Ojs.get_prop_ascii (t_to_js x52) "asColor")
    let (set_asColor : t -> any -> unit) =
      fun (x53 : t) ->
        fun (x54 : any) ->
          Ojs.set_prop_ascii (t_to_js x53) "asColor" (any_to_js x54)
    let (get_asColorInformations : t -> any) =
      fun (x55 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x55) "asColorInformations")
    let (set_asColorInformations : t -> any -> unit) =
      fun (x56 : t) ->
        fun (x57 : any) ->
          Ojs.set_prop_ascii (t_to_js x56) "asColorInformations"
            (any_to_js x57)
    let (get_asColorPresentations : t -> any) =
      fun (x58 : t) ->
        any_of_js (Ojs.get_prop_ascii (t_to_js x58) "asColorPresentations")
    let (set_asColorPresentations : t -> any -> unit) =
      fun (x59 : t) ->
        fun (x60 : any) ->
          Ojs.set_prop_ascii (t_to_js x59) "asColorPresentations"
            (any_to_js x60)
    let (cast :
      t ->
        (DocumentColorOptions.t or_boolean,
          DocumentColorRegistrationOptions.t, DocumentColorProvider.t)
          TextDocumentFeature.t_3)
      =
      fun (x61 : t) ->
        TextDocumentFeature.t_3_of_js
          (fun (x62 : Ojs.t) ->
             or_boolean_of_js DocumentColorOptions.t_of_js x62)
          DocumentColorRegistrationOptions.t_of_js
          DocumentColorProvider.t_of_js (t_to_js x61)
  end