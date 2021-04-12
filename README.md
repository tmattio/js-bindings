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
