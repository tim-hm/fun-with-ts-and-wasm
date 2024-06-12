use wasm_bindgen::prelude::*;

#[wasm_bindgen]
pub fn rust_foo() -> String {
    ":wave_from_rust:".to_string()
}
