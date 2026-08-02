# Local Lean cache

Committed SnarkPack Lean evidence is generated only on a developer machine:

```sh
just snarkpack-lean-cache
```

The command builds every declared `Ipp.ProofAudit*` root in one single-threaded
Lake invocation, refreshes its raw axiom diagnostics, and writes content-addressed files
under `lean-cache-v1/`. Commit those files with every change to their Lean
source closure or pinned Lean environment.

Pull-request and merge-queue CI never invoke Lake or Lean for SnarkPack. They
recompute each selected root's fingerprint from committed sources, require an
exact marker, verify each raw audit log digest, and rerun the repository's axiom
parser. Missing, stale, or tampered evidence fails closed with the local refresh
command.

The scheduled release audit independently rebuilds every declared audit root
with the pinned single-threaded Lean toolchain, regenerates raw diagnostics in a
temporary directory, and requires exact equality with the committed cache. It
never records or updates evidence. The audit runs nightly for `dev`, weekly for
`main`, and on demand through `snarkpack-release-audit.yml`.

The committed cache remains a reviewed local-build record. Repository review
and branch protection protect publication, while the scheduled read-only replay
checks that the record remains reproducible.
