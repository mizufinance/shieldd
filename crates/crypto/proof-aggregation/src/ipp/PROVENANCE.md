# RIPP Provenance

This code is Shieldd-owned implementation code forked from
`arkworks-rs/ripp`. The original RIPP code is not treated as a production
security baseline.

Audit scope is the full local implementation, not only local changes. All
security-relevant changes are tracked through normal Shieldd git history and
code review; there is no separate vendor change log.

## Provenance

- upstream repository: `https://github.com/arkworks-rs/ripp`
- upstream commit: `c2c9e80b2ecd6d796bd443adf15bc17a1ee17090`
  (closest clean source; Shieldd import was not an exact upstream tree)
- Shieldd import baseline: `523837547`
- current Arkworks dependency family: `0.5`

## Fork Point Resolution

Resolved on 2026-06-02 during the Filecoin divergence review.

`c2c9e80b2ecd6d796bd443adf15bc17a1ee17090` is the closest clean
`arkworks-rs/ripp` source commit for the imported lineage. It is the upstream
master-layout commit with `ip_proofs`, `gipa`, `tipa`, and
`groth16_aggregation` modules still matching the imported tree shape, and it
already carries the `itertools = "0.12"` update present in the Shieldd import.

The Shieldd import baseline `52383754737b6672b8dc09d4d521e221e886a3c0` was not
an exact checkout of that upstream tree: the imported Cargo manifests had already
been moved to the Arkworks `0.5` dependency family and included local source
edits such as serialization, profiling, prepared-SRS, and challenge plumbing.
A full `arkworks-rs/ripp` history grep found no upstream commit using
`ark-ec = "0.5"` in `ip_proofs/Cargo.toml`, so there is no single exact upstream
commit to name beyond this closest clean source.

The crate package names and Cargo `homepage` / `repository` metadata preserve
the upstream package identity for provenance and license continuity. Security
ownership is Shieldd's.

## License

The original RIPP crates are distributed under MIT OR Apache-2.0. Preserve the
upstream author attribution in the crate manifests and keep
`LICENSE-APACHE` / `LICENSE-MIT` with this fork.
