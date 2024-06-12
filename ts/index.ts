import * as wasm from "rust_client_wasm";

export function super_foo(): string {
  return `hello from rust: ${wasm.rust_foo()} and hello from ts: ${ts_hello()}`;
}

export function ts_hello(): string {
  return ":wave_in_ts:";
}

async function init() {
  await wasm.default();
  console.log(super_foo());
}

init();
