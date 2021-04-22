[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@ocaml.warning "-7-11-32-33-39"]
open Es5
module Internal =
  struct module Types = struct open AnonymousInterfaces end end
module ProvideTypeDefinitionSignature =
  struct
    type t = _ProvideTypeDefinitionSignature
    let rec t_of_js : Ojs.t -> t =
      fun (x2 : Ojs.t) -> _ProvideTypeDefinitionSignature_of_js x2
    and t_to_js : t -> Ojs.t =
      fun (x1 : _ProvideTypeDefinitionSignature) ->
        _ProvideTypeDefinitionSignature_to_js x1
    let (apply :
      t ->
        this:unit ->
          document:TextDocument.t ->
            position:VPosition.t ->
              token:CancellationToken.t ->
                (VDefinition.t, VDefinitionLink.t) or_array ProviderResult.t)
      =
      fun (x7 : t) ->
        fun ~this:(x3 : unit) ->
          fun ~document:(x4 : TextDocument.t) ->
            fun ~position:(x5 : VPosition.t) ->
              fun ~token:(x6 : CancellationToken.t) ->
                ProviderResult.t_of_js
                  (fun (x8 : Ojs.t) ->
                     or_array_of_js VDefinition.t_of_js
                       VDefinitionLink.t_of_js x8)
                  (Ojs.apply (t_to_js x7)
                     [|(Ojs.unit_to_js x3);(TextDocument.t_to_js x4);(
                       VPosition.t_to_js x5);(CancellationToken.t_to_js x6)|])
  end
module TypeDefinitionMiddleware =
  struct
    type t = _TypeDefinitionMiddleware
    let rec t_of_js : Ojs.t -> t =
      fun (x12 : Ojs.t) -> _TypeDefinitionMiddleware_of_js x12
    and t_to_js : t -> Ojs.t =
      fun (x11 : _TypeDefinitionMiddleware) ->
        _TypeDefinitionMiddleware_to_js x11
    let (provideTypeDefinition :
      t ->
        this:unit ->
          document:TextDocument.t ->
            position:VPosition.t ->
              token:CancellationToken.t ->
                next:_ProvideTypeDefinitionSignature ->
                  (VDefinition.t, VDefinitionLink.t) or_array
                    ProviderResult.t)
      =
      fun (x18 : t) ->
        fun ~this:(x13 : unit) ->
          fun ~document:(x14 : TextDocument.t) ->
            fun ~position:(x15 : VPosition.t) ->
              fun ~token:(x16 : CancellationToken.t) ->
                fun ~next:(x17 : _ProvideTypeDefinitionSignature) ->
                  ProviderResult.t_of_js
                    (fun (x19 : Ojs.t) ->
                       or_array_of_js VDefinition.t_of_js
                         VDefinitionLink.t_of_js x19)
                    (Ojs.call (t_to_js x18) "provideTypeDefinition"
                       [|(Ojs.unit_to_js x13);(TextDocument.t_to_js x14);(
                         VPosition.t_to_js x15);(CancellationToken.t_to_js
                                                   x16);(_ProvideTypeDefinitionSignature_to_js
                                                           x17)|])
  end
module TypeDefinitionFeature =
  struct
    type t = _TypeDefinitionFeature
    let rec t_of_js : Ojs.t -> t =
      fun (x23 : Ojs.t) -> _TypeDefinitionFeature_of_js x23
    and t_to_js : t -> Ojs.t =
      fun (x22 : _TypeDefinitionFeature) -> _TypeDefinitionFeature_to_js x22
    let (create : client:BaseLanguageClient.t -> t) =
      fun ~client:(x24 : BaseLanguageClient.t) ->
        t_of_js
          (Ojs.new_obj
             (Ojs.get_prop_ascii Ojs.global "TypeDefinitionFeature")
             [|(BaseLanguageClient.t_to_js x24)|])
    let (fillClientCapabilities :
      t -> capabilities:ClientCapabilities.t -> unit) =
      fun (x26 : t) ->
        fun ~capabilities:(x25 : ClientCapabilities.t) ->
          ignore
            (Ojs.call (t_to_js x26) "fillClientCapabilities"
               [|(ClientCapabilities.t_to_js x25)|])
    let (initialize :
      t ->
        capabilities:ServerCapabilities.t ->
          documentSelector:DocumentSelector.t -> unit)
      =
      fun (x29 : t) ->
        fun ~capabilities:(x27 : ServerCapabilities.t) ->
          fun ~documentSelector:(x28 : DocumentSelector.t) ->
            ignore
              (Ojs.call (t_to_js x29) "initialize"
                 [|(ServerCapabilities.t_to_js x27);(DocumentSelector.t_to_js
                                                       x28)|])
    let (registerLanguageProvider :
      t ->
        options:TypeDefinitionRegistrationOptions.t ->
          (Disposable.t * TypeDefinitionProvider.t))
      =
      fun (x31 : t) ->
        fun ~options:(x30 : TypeDefinitionRegistrationOptions.t) ->
          let x32 =
            Ojs.call (t_to_js x31) "registerLanguageProvider"
              [|(TypeDefinitionRegistrationOptions.t_to_js x30)|] in
          ((Disposable.t_of_js (Ojs.array_get x32 0)),
            (TypeDefinitionProvider.t_of_js (Ojs.array_get x32 1)))
    let (cast :
      t ->
        (TypeDefinitionOptions.t or_boolean,
          TypeDefinitionRegistrationOptions.t, TypeDefinitionProvider.t)
          TextDocumentFeature.t)
      =
      fun (x33 : t) ->
        TextDocumentFeature.t_of_js
          (fun (x34 : Ojs.t) ->
             or_boolean_of_js TypeDefinitionOptions.t_of_js x34)
          TypeDefinitionRegistrationOptions.t_of_js
          TypeDefinitionProvider.t_of_js (t_to_js x33)
  end
