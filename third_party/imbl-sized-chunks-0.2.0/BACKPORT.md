# imbl-sized-chunks 0.2.0 safety fixes

This is the crates.io 0.2.0 archive, SHA-256
`2a0813be332553f857953298749fa19549e8b61b80589757c29b4e2a804fa9c6`,
with corrections to the panic-safety implementation shared with the
[0.1 backport](../imbl-sized-chunks-0.1.3/BACKPORT.md).

InlineArray calculates the element offset in header-sized units, handles zero
capacity with an aligned dangling pointer, and derives data and length from
one borrow for both clearing and truncation. RingBuffer right truncation records
the surviving length before dropping elements. The drop guard uses `core::ptr`
to retain `no_std` support. The optional Arbitrary implementation uses the current
recursion-guard API with the same conservative depth-limit result.

The shared panic-safety tests cover ordinary removal, destructor panic,
surviving elements, reuse and exactly-once destruction. This retains the 0.2 API
and bitmap implementation used by Shieldd's direct `imbl` dependency.
Remove this directory and its Cargo patch when upstream releases these fixes.
