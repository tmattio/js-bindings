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
        type _DocumentRangeSemanticTokensSignature =
          [ `DocumentRangeSemanticTokensSignature ] intf
        and _DocumentSemanticsTokensEditsSignature =
          [ `DocumentSemanticsTokensEditsSignature ] intf
        and _DocumentSemanticsTokensSignature =
          [ `DocumentSemanticsTokensSignature ] intf
        and _SemanticTokensFeature = [ `SemanticTokensFeature ] intf
        and _SemanticTokensMiddleware = [ `SemanticTokensMiddleware ] intf
        and _SemanticTokensProviders = [ `SemanticTokensProviders ] intf
        let rec _DocumentRangeSemanticTokensSignature_of_js :
          Ojs.t -> _DocumentRangeSemanticTokensSignature = Obj.magic
        and _DocumentRangeSemanticTokensSignature_to_js :
          _DocumentRangeSemanticTokensSignature -> Ojs.t = Obj.magic
        and _DocumentSemanticsTokensEditsSignature_of_js :
          Ojs.t -> _DocumentSemanticsTokensEditsSignature = Obj.magic
        and _DocumentSemanticsTokensEditsSignature_to_js :
          _DocumentSemanticsTokensEditsSignature -> Ojs.t = Obj.magic
        and _DocumentSemanticsTokensSignature_of_js :
          Ojs.t -> _DocumentSemanticsTokensSignature = Obj.magic
        and _DocumentSemanticsTokensSignature_to_js :
          _DocumentSemanticsTokensSignature -> Ojs.t = Obj.magic
        and _SemanticTokensFeature_of_js : Ojs.t -> _SemanticTokensFeature =
          Obj.magic
        and _SemanticTokensFeature_to_js : _SemanticTokensFeature -> Ojs.t =
          Obj.magic
        and _SemanticTokensMiddleware_of_js :
          Ojs.t -> _SemanticTokensMiddleware = Obj.magic
        and _SemanticTokensMiddleware_to_js :
          _SemanticTokensMiddleware -> Ojs.t = Obj.magic
        and _SemanticTokensProviders_of_js :
          Ojs.t -> _SemanticTokensProviders = Obj.magic
        and _SemanticTokensProviders_to_js :
          _SemanticTokensProviders -> Ojs.t = Obj.magic
      end
  end
open Internal
open AnonymousInterfaces
open Types
module DocumentSemanticsTokensSignature =
  struct
    type t = _DocumentSemanticsTokensSignature
    let rec t_of_js : Ojs.t -> t =
      fun (x2 : Ojs.t) -> _DocumentSemanticsTokensSignature_of_js x2
    and t_to_js : t -> Ojs.t =
      fun (x1 : _DocumentSemanticsTokensSignature) ->
        _DocumentSemanticsTokensSignature_to_js x1
    let (apply :
      t ->
        this:unit ->
          document:Vscode.TextDocument.t ->
            token:Vscode.CancellationToken.t ->
              Vscode.SemanticTokens.t Vscode.ProviderResult.t_1)
      =
      fun (x6 : t) ->
        fun ~this:(x3 : unit) ->
          fun ~document:(x4 : Vscode.TextDocument.t) ->
            fun ~token:(x5 : Vscode.CancellationToken.t) ->
              Vscode.ProviderResult.t_1_of_js Vscode.SemanticTokens.t_of_js
                (Ojs.apply (t_to_js x6)
                   [|(Ojs.unit_to_js x3);(Vscode.TextDocument.t_to_js x4);(
                     Vscode.CancellationToken.t_to_js x5)|])
  end
module DocumentSemanticsTokensEditsSignature =
  struct
    type t = _DocumentSemanticsTokensEditsSignature
    let rec t_of_js : Ojs.t -> t =
      fun (x9 : Ojs.t) -> _DocumentSemanticsTokensEditsSignature_of_js x9
    and t_to_js : t -> Ojs.t =
      fun (x8 : _DocumentSemanticsTokensEditsSignature) ->
        _DocumentSemanticsTokensEditsSignature_to_js x8
    let (apply :
      t ->
        this:unit ->
          document:Vscode.TextDocument.t ->
            previousResultId:string ->
              token:Vscode.CancellationToken.t ->
                (Vscode.SemanticTokens.t, Vscode.SemanticTokensEdits.t)
                  union2 Vscode.ProviderResult.t_1)
      =
      fun (x14 : t) ->
        fun ~this:(x10 : unit) ->
          fun ~document:(x11 : Vscode.TextDocument.t) ->
            fun ~previousResultId:(x12 : string) ->
              fun ~token:(x13 : Vscode.CancellationToken.t) ->
                Vscode.ProviderResult.t_1_of_js
                  (fun (x15 : Ojs.t) ->
                     union2_of_js Vscode.SemanticTokens.t_of_js
                       Vscode.SemanticTokensEdits.t_of_js x15)
                  (Ojs.apply (t_to_js x14)
                     [|(Ojs.unit_to_js x10);(Vscode.TextDocument.t_to_js x11);(
                       Ojs.string_to_js x12);(Vscode.CancellationToken.t_to_js
                                                x13)|])
  end
module DocumentRangeSemanticTokensSignature =
  struct
    type t = _DocumentRangeSemanticTokensSignature
    let rec t_of_js : Ojs.t -> t =
      fun (x19 : Ojs.t) -> _DocumentRangeSemanticTokensSignature_of_js x19
    and t_to_js : t -> Ojs.t =
      fun (x18 : _DocumentRangeSemanticTokensSignature) ->
        _DocumentRangeSemanticTokensSignature_to_js x18
    let (apply :
      t ->
        this:unit ->
          document:Vscode.TextDocument.t ->
            range:Vscode.Range.t ->
              token:Vscode.CancellationToken.t ->
                Vscode.SemanticTokens.t Vscode.ProviderResult.t_1)
      =
      fun (x24 : t) ->
        fun ~this:(x20 : unit) ->
          fun ~document:(x21 : Vscode.TextDocument.t) ->
            fun ~range:(x22 : Vscode.Range.t) ->
              fun ~token:(x23 : Vscode.CancellationToken.t) ->
                Vscode.ProviderResult.t_1_of_js Vscode.SemanticTokens.t_of_js
                  (Ojs.apply (t_to_js x24)
                     [|(Ojs.unit_to_js x20);(Vscode.TextDocument.t_to_js x21);(
                       Vscode.Range.t_to_js x22);(Vscode.CancellationToken.t_to_js
                                                    x23)|])
  end
module SemanticTokensMiddleware =
  struct
    type t = _SemanticTokensMiddleware
    let rec t_of_js : Ojs.t -> t =
      fun (x27 : Ojs.t) -> _SemanticTokensMiddleware_of_js x27
    and t_to_js : t -> Ojs.t =
      fun (x26 : _SemanticTokensMiddleware) ->
        _SemanticTokensMiddleware_to_js x26
    let (provideDocumentSemanticTokens :
      t ->
        this:unit ->
          document:Vscode.TextDocument.t ->
            token:Vscode.CancellationToken.t ->
              next:_DocumentSemanticsTokensSignature ->
                Vscode.SemanticTokens.t Vscode.ProviderResult.t_1)
      =
      fun (x32 : t) ->
        fun ~this:(x28 : unit) ->
          fun ~document:(x29 : Vscode.TextDocument.t) ->
            fun ~token:(x30 : Vscode.CancellationToken.t) ->
              fun ~next:(x31 : _DocumentSemanticsTokensSignature) ->
                Vscode.ProviderResult.t_1_of_js Vscode.SemanticTokens.t_of_js
                  (Ojs.call (t_to_js x32) "provideDocumentSemanticTokens"
                     [|(Ojs.unit_to_js x28);(Vscode.TextDocument.t_to_js x29);(
                       Vscode.CancellationToken.t_to_js x30);(_DocumentSemanticsTokensSignature_to_js
                                                                x31)|])
    let (provideDocumentSemanticTokensEdits :
      t ->
        this:unit ->
          document:Vscode.TextDocument.t ->
            previousResultId:string ->
              token:Vscode.CancellationToken.t ->
                next:_DocumentSemanticsTokensEditsSignature ->
                  (Vscode.SemanticTokens.t, Vscode.SemanticTokensEdits.t)
                    union2 Vscode.ProviderResult.t_1)
      =
      fun (x39 : t) ->
        fun ~this:(x34 : unit) ->
          fun ~document:(x35 : Vscode.TextDocument.t) ->
            fun ~previousResultId:(x36 : string) ->
              fun ~token:(x37 : Vscode.CancellationToken.t) ->
                fun ~next:(x38 : _DocumentSemanticsTokensEditsSignature) ->
                  Vscode.ProviderResult.t_1_of_js
                    (fun (x40 : Ojs.t) ->
                       union2_of_js Vscode.SemanticTokens.t_of_js
                         Vscode.SemanticTokensEdits.t_of_js x40)
                    (Ojs.call (t_to_js x39)
                       "provideDocumentSemanticTokensEdits"
                       [|(Ojs.unit_to_js x34);(Vscode.TextDocument.t_to_js
                                                 x35);(Ojs.string_to_js x36);(
                         Vscode.CancellationToken.t_to_js x37);(_DocumentSemanticsTokensEditsSignature_to_js
                                                                  x38)|])
    let (provideDocumentRangeSemanticTokens :
      t ->
        this:unit ->
          document:Vscode.TextDocument.t ->
            range:Vscode.Range.t ->
              token:Vscode.CancellationToken.t ->
                next:_DocumentRangeSemanticTokensSignature ->
                  Vscode.SemanticTokens.t Vscode.ProviderResult.t_1)
      =
      fun (x48 : t) ->
        fun ~this:(x43 : unit) ->
          fun ~document:(x44 : Vscode.TextDocument.t) ->
            fun ~range:(x45 : Vscode.Range.t) ->
              fun ~token:(x46 : Vscode.CancellationToken.t) ->
                fun ~next:(x47 : _DocumentRangeSemanticTokensSignature) ->
                  Vscode.ProviderResult.t_1_of_js
                    Vscode.SemanticTokens.t_of_js
                    (Ojs.call (t_to_js x48)
                       "provideDocumentRangeSemanticTokens"
                       [|(Ojs.unit_to_js x43);(Vscode.TextDocument.t_to_js
                                                 x44);(Vscode.Range.t_to_js
                                                         x45);(Vscode.CancellationToken.t_to_js
                                                                 x46);(
                         _DocumentRangeSemanticTokensSignature_to_js x47)|])
  end
module SemanticTokensProviders =
  struct
    type t = _SemanticTokensProviders
    let rec t_of_js : Ojs.t -> t =
      fun (x51 : Ojs.t) -> _SemanticTokensProviders_of_js x51
    and t_to_js : t -> Ojs.t =
      fun (x50 : _SemanticTokensProviders) ->
        _SemanticTokensProviders_to_js x50
    let (get_range : t -> Vscode.DocumentRangeSemanticTokensProvider.t) =
      fun (x52 : t) ->
        Vscode.DocumentRangeSemanticTokensProvider.t_of_js
          (Ojs.get_prop_ascii (t_to_js x52) "range")
    let (set_range :
      t -> Vscode.DocumentRangeSemanticTokensProvider.t -> unit) =
      fun (x53 : t) ->
        fun (x54 : Vscode.DocumentRangeSemanticTokensProvider.t) ->
          Ojs.set_prop_ascii (t_to_js x53) "range"
            (Vscode.DocumentRangeSemanticTokensProvider.t_to_js x54)
    let (get_full : t -> Vscode.DocumentSemanticTokensProvider.t) =
      fun (x55 : t) ->
        Vscode.DocumentSemanticTokensProvider.t_of_js
          (Ojs.get_prop_ascii (t_to_js x55) "full")
    let (set_full : t -> Vscode.DocumentSemanticTokensProvider.t -> unit) =
      fun (x56 : t) ->
        fun (x57 : Vscode.DocumentSemanticTokensProvider.t) ->
          Ojs.set_prop_ascii (t_to_js x56) "full"
            (Vscode.DocumentSemanticTokensProvider.t_to_js x57)
    let (get_onDidChangeSemanticTokensEmitter :
      t -> unit Vscode.EventEmitter.t_1) =
      fun (x58 : t) ->
        Vscode.EventEmitter.t_1_of_js Ojs.unit_of_js
          (Ojs.get_prop_ascii (t_to_js x58)
             "onDidChangeSemanticTokensEmitter")
    let (set_onDidChangeSemanticTokensEmitter :
      t -> unit Vscode.EventEmitter.t_1 -> unit) =
      fun (x60 : t) ->
        fun (x61 : unit Vscode.EventEmitter.t_1) ->
          Ojs.set_prop_ascii (t_to_js x60) "onDidChangeSemanticTokensEmitter"
            (Vscode.EventEmitter.t_1_to_js Ojs.unit_to_js x61)
  end
module SemanticTokensFeature =
  struct
    type t = _SemanticTokensFeature
    let rec t_of_js : Ojs.t -> t =
      fun (x64 : Ojs.t) -> _SemanticTokensFeature_of_js x64
    and t_to_js : t -> Ojs.t =
      fun (x63 : _SemanticTokensFeature) -> _SemanticTokensFeature_to_js x63
    let (create : client:BaseLanguageClient.t -> t) =
      fun ~client:(x65 : BaseLanguageClient.t) ->
        t_of_js
          (Ojs.new_obj
             (Ojs.get_prop_ascii Ojs.global "SemanticTokensFeature")
             [|(BaseLanguageClient.t_to_js x65)|])
    let (fillClientCapabilities :
      t -> capabilities:ClientCapabilities.t -> unit) =
      fun (x67 : t) ->
        fun ~capabilities:(x66 : ClientCapabilities.t) ->
          ignore
            (Ojs.call (t_to_js x67) "fillClientCapabilities"
               [|(ClientCapabilities.t_to_js x66)|])
    let (initialize :
      t ->
        capabilities:ServerCapabilities.t ->
          documentSelector:DocumentSelector.t -> unit)
      =
      fun (x70 : t) ->
        fun ~capabilities:(x68 : ServerCapabilities.t) ->
          fun ~documentSelector:(x69 : DocumentSelector.t) ->
            ignore
              (Ojs.call (t_to_js x70) "initialize"
                 [|(ServerCapabilities.t_to_js x68);(DocumentSelector.t_to_js
                                                       x69)|])
    let (registerLanguageProvider :
      t ->
        options:SemanticTokensRegistrationOptions.t ->
          (Vscode.Disposable.t * _SemanticTokensProviders))
      =
      fun (x72 : t) ->
        fun ~options:(x71 : SemanticTokensRegistrationOptions.t) ->
          let x73 =
            Ojs.call (t_to_js x72) "registerLanguageProvider"
              [|(SemanticTokensRegistrationOptions.t_to_js x71)|] in
          ((Vscode.Disposable.t_of_js (Ojs.array_get x73 0)),
            (_SemanticTokensProviders_of_js (Ojs.array_get x73 1)))
    let (cast :
      t ->
        (SemanticTokensOptions.t or_boolean,
          SemanticTokensRegistrationOptions.t, _SemanticTokensProviders)
          TextDocumentFeature.t_3)
      =
      fun (x74 : t) ->
        TextDocumentFeature.t_3_of_js
          (fun (x75 : Ojs.t) ->
             or_boolean_of_js SemanticTokensOptions.t_of_js x75)
          SemanticTokensRegistrationOptions.t_of_js
          _SemanticTokensProviders_of_js (t_to_js x74)
  end
