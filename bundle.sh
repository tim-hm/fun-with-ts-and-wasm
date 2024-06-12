#! /usr/bin/env bash

set -uexo -pipefail

cd rust_client_wasm
cargo build --target wasm32-unknown-unknown
wasm-bindgen target/wasm32-unknown-unknown/debug/fun_with_ts_and_wasm.wasm --out-dir pkg --target web
cd ..

npm run proto:generate
npm run build:dev

npm pack
