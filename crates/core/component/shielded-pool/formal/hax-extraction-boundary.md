# hax Extraction Boundary

The hax boundary is the Rust statement-field encoder module:
`crates/core/component/shielded-pool/src/public_input_hash.rs`.

The extracted functions are the four public statement encoders, their shared
note-reshape helper, and the shape-dependent field-count helpers. The F* proof
artifact currently checks the extracted field-count seam and keeps the full
Rust/Go statement correspondence at `composed`: hax/F* evidence for Rust plus
the Go differential, not a mechanized Go-side theorem.

The full semantic injectivity theorem for the Rust encoders also needs proofs
for every lower-level `to_field_elements`, Decaf377 point/RK conversion, and
shape validator used by the extracted functions.
