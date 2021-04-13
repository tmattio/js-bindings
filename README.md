# OCaml ECMAScript

[![Actions Status](https://github.com/tmattio/es5/workflows/CI/badge.svg)](https://github.com/tmattio/es5/actions)

ECMAScript bindings for OCaml

- ES5
- ES2015

The bindings have been generated using `ts2ocaml` from the TypeScript type definitions found in [https://github.com/Microsoft/TypeScript/tree/master/lib](https://github.com/Microsoft/TypeScript/tree/master/lib).
The generated bindings have then been manually modified to improve the API and inline the `gen_js_api` ppx so we only depend on the runtime dependency `ojs`.

## Installation

### Using Opam

```bash
opam install es2015
```

### Using Esy

```bash
esy add @opam/es2015
```

## To do

- [ ] Finish moving constructor APIs to modules (see collection)

## Notes

gen_js_api:
- [@@@js.dummy] failure with `gen_js_api`
- can remove the line `[@@@js.dummy]` from the generated ml file so it can be used without the ppx
- Support array-like accessors e.g. `[Symbol.iterator]` that should not generate a `.[Symbol.iterator]`

ts2ocaml:
- intrinsic types not supported
- Does not generate symbol for `lib.es2015.symbol.d.ts`
- values should create modules e.g. in `lib.es2015.promise.d.ts`, `declare var Promise: PromiseConstructor;` should generate `module Promise = PromiseConstructor`
- Generating comments would be amazing
- What's with all the `t_n`?
- Error when generating from `node/globals.d.ts`
 
    ```
    Error: error: invalid type alias to 'union<'T | {..}>' on line 149, col 22 of globals.d.ts
        at /Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:10272:36
        at /Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:10347:15
        at go$$8 (/Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:20159:29)
        at /Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:3387:12
        at tryPickIndexedAux (/Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:3365:22)
        at tryPickIndexed (/Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:3383:10)
        at tryPick (/Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:3386:10)
        at getLiteralFieldsFromType (/Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:20188:111)
        at /Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:20491:23
        at /Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:3070:12
    ```
- Error when generating `node/assert.d.ts`

    ```
    >             (value: any, message?: string | Error): asserts value;
    /Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:22968
                            throw new Error("impossible_emitTypeImpl_erased");
                            ^

    Error: impossible_emitTypeImpl_erased
        at emitTypeImpl (/Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:22968:33)
        at /Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:22360:42
        at /Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:3268:63
        at fold (/Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:3053:23)
        at map (/Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:3267:18)
        at emitTypeImpl (/Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:22359:140)
        at mapping$$5 (/Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:22548:36)
        at /Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:3268:63
        at fold (/Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:3053:23)
        at map (/Users/tmattio/Workspace/tarides/ts2ocaml/output/ts2ocaml.js:3267:18)
    ```
