# imbl-sized-chunks 0.1.3 security backport

This is the crates.io 0.1.3 archive with the panic-safety fix from upstream
[PR #14](https://github.com/jneem/imbl-sized-chunks/pull/14), merge commit
[`c438e1d`](https://github.com/jneem/imbl-sized-chunks/commit/c438e1d10008137b4076aec7c7d43ab25719742e).
It fixes [RUSTSEC-2026-0292](https://rustsec.org/advisories/RUSTSEC-2026-0292.html)
by recording the surviving elements before calling their destructors, preventing
a panic from leaving already-dropped elements in the live range.

Upstream archive SHA-256:
`8f4241005618a62f8d57b2febd02510fb96e0137304728543dfc5fd6f052c22d`.

The backport retains the 0.1 API and bitmap implementation required by NOMT's
`imbl` 3 dependency. It includes the upstream Chunk, InlineArray and RingBuffer
fixes and uses `core::ptr` in the drop guard to retain `no_std` support.
InlineArray derives both mutable regions from one borrow, measures the element
offset in header-sized units, and preserves the aligned dangling pointer for
zero capacity. RingBuffer right truncation also commits its surviving length
before dropping removed elements. The optional Arbitrary implementation uses
the current recursion-guard API with the same conservative depth-limit result.
The added panic-safety tests cover live-range metadata and exactly-once drops
alongside ordinary removal. No advisory is suppressed in `deny.toml`.

Remove this directory and its Cargo patch when NOMT uses a patched chunks release.
