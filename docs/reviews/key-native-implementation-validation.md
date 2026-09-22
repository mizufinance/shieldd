# Shared payload key and native prover implementation validation

Implementation baseline: `1dc62a7a09480d966b29e7ecfbe8caa3c309c933`.
Status: implemented and locally verified. External Orbis/PET integration remains unavailable.

Constant outlining is retained in isolated patch 0005. The
[follow-up validation](constant-outline-validation.md) records the resulting
registry and measurements; the original measurements below are for the compiler
without outlining.

## Changes

Audit bundles now contain epoch, payload and checking (73 bytes). All ordinary
payload fields and recovery capsules use the effective asset payload key; flags
retain issuer disclosure for ordinary tiers. Unregulated creation selects the
fixed sink. CAPK, its address derivation and persistence fields are removed.
Release requests bind payload/epoch to an exact authority-approved public note
opening. RNK and host seizure gates remain separate. Private capsule collection
and external Orbis release/PET remain unavailable.

Commonware supplies native witness/prove/verify/codec/FFT/MSM APIs. Compiler
changes remain isolated in the patch queue. Retained patches
repair the Poly/Domain build, expose exact VK relation matching, preserve native
decoder regressions, correct two-sided square assertions and outline the constant
one into a constrained private witness. No prepared prover or replacement
FFT/MSM/codec layer remains. Registry publication validates shared
bounds, loads the complete staging registry, then loads the published directory.

APP_VERSION is 18; wallet schema hash changes with CAPK removal; asset-policy
encoding is ASP5. Removed protobuf tags are reserved. Release request domain is
v2 and new key/epoch fields are required. Existing keys/stores are not migrated.

## Independent implementation reviews

Three previously authorized independent Astra reviewers performed read-only
reviews of the implementation while root owned edits and all heavy verification.

- Mendel: native boundary review found missing portable key-decoder regressions
  and direct SDK exact VK shape validation. Both restored; stale prepared-path
  documentation corrected.
- Nietzsche: security review found no concrete bypass in key selection, RNK or
  seizure gates. Flagged stale signing fixtures for regeneration.
- Laplace: simplicity/general review found no substantive integration issue.
  Duplicate validation-only test removed; obsolete capability/prepared wording
  corrected. Existing encryption tests now cover shared-key independent openings.

## Evidence collected

- Shared-key reproduction failed on the baseline's distinct-audit-role check.
- RNK derivation source is byte-identical to baseline; SHA-256
  `3c02d63d803a61f06d98153623e01ba689cf29298b1fd3464f915221a31456e4`.
- Final workspace all-target/all-feature check and workspace doctests passed.
- Final Rust/Go protobuf reproduction check and formatting check passed;
  Commonware source inventory and exact source reproduction passed.
- Tooling suites: 5 + 9 + 2 tests passed.
- Final circuit suite: 55 passed, including real proofs for every family and the
  valid-wrong-owner seizure mutation. SDK proof-envelope and batch tests passed.
- The full workspace run passed preceding suites (including 98 app, 235
  compliance and 111 shielded-pool tests, integration transactions and signing
  vectors), then exposed three view failures from the old SQL audit-key length.
  Corrected `137` to `73`; the complete view rerun passed 84 tests. Unaffected
  expensive proof results are reused; the final workspace doctest run passed.
- Signing and handoff fixtures regenerated successfully; canonical checks passed
  in the workspace run. Commonware final release tests: 29 Pari + 6 compiler.
  Final pinned-source reproduction passed.
- `just pari-proof-tests` passed all 16 gated tests with the new explicit
  registry: actual host seizure, disclosure/CLI verification, registry mutation,
  both reshape families, withdrawal variants, regulated/unregulated transfers,
  native batching, concurrent history proving and failed-proof/restart recovery.
  All eight final proving-key artifacts were used for real proofs.

Logs are retained locally under `/tmp/shieldd-native-key-impl/` during this task.
No external Orbis, ACP, Ledger or Bankd integration is claimed by local tests.
Independent crate feature-matrix and Wasm builds were not rerun in this task.
Commonware tests ran in `release`; application/circuit/prover tests ran in the
optimized `ci` profile with debug assertions enabled. No heavy jobs overlapped;
no swap or memory-pressure interruption occurred.

## Final development registry

Generated once in `target/shared-payload-native-pari-keys-20260921`; existing
registries and stores were not overwritten. Suite: `shieldd-jubjub-pari-v1`.
Registry ID: `2d6e02d8b31ab6f382ef20b9b32007b78b90ba1d917342576c40753d74503ce3`.
Setup plus its build and both registry loads took 410.21 s; process peak RSS was
3.82 GiB. All families expose one public scalar and one single-column committed
block; proof envelopes remain 244 bytes, framed by suite, family and relation.
The largest VK is 4,390,381 bytes. Generation and loading use an 8 MiB VK limit,
512 MiB PK limit and domain ceiling 2^21; the VK ceiling allows the measured
native public columns with bounded headroom.

| Family | Domain | PK bytes | VK bytes |
| --- | ---: | ---: | ---: |
| transfer | 262,144 | 65,752,899 | 4,390,381 |
| reshape_one_to_eight | 262,144 | 61,695,799 | 3,200,509 |
| reshape_eight_to_one | 262,144 | 64,385,775 | 4,365,793 |
| withdrawal | 131,072 | 33,983,171 | 2,621,593 |
| seizure | 32,768 | 7,589,614 | 430,272 |
| disclosure | 262,144 | 62,923,479 | 4,370,833 |
| history_generation | 16,384 | 4,327,509 | 392,832 |
| history_chunk | 262,144 | 61,516,103 | 3,709,657 |

| Family | Relation digest | VK identity |
| --- | --- | --- |
| transfer | `0b4c177603eae6f7170b25cb0305b24a16d49674d03cccba6b08b6826a870e5f` | `01e7dc9a39bb7dfb0e56d2fbc64555b223d0eca054f88fbed638e49a881af555` |
| reshape_one_to_eight | `241205494541bdcf5a0789628e79430969e86baec5cc0041f18e58bf6c157048` | `0bddffeae8f728024159e337cfee7cff69d0cfb5e28a5523fde0aa1fdca77ebd` |
| reshape_eight_to_one | `09321dd877de9635d56cafcc9acd5c0e425f4560670a672d53ae0c85a328c7e8` | `4292006c9a3a3aa81ec560390723b385b8ea487a3ba7c05d963ddcde5444af96` |
| withdrawal | `3ad602245d00b5ba9589cf10c60e2c8c9fbd85fa71ed897dace0087df338018d` | `9a9e812127808e0ee52e53a46ffb7148b4bbb93372df2fa1deaf799307c8ef98` |
| seizure | `2c53d8e27bf7d7546d3b9a632682807cefadec4e959b03470414ec2fd32954e7` | `c9edb88304e2dddee6f1ea5643d6db95a669644bb9b333182670549e3413ab3e` |
| disclosure | `9eae825ccefbcf2d7ad6bcd41d20a8787067718731377db8efc8d8071d60e0c0` | `4b5f1329c2367ee8bb2f1b5d30bcb8b4cd989badd1da0be0f6055965581e221e` |
| history_generation | `60b4f35932ad5cee917d52b25a3dfb997a62f032fc3acc8d303beb11e7bd3221` | `baf159ed3ae64faf0e5adacbcc6e3247f0114c69dae8d89bb2c6126a40cbb91b` |
| history_chunk | `f5435362b4b7e6bd4c8566cb8d581664292fae73ad1c67bb55dd3baba72dee68` | `12f4b8ed13173baaccf59a1302163e31ba540e7c3e8651d2afcb5901fb9a82de` |

## Performance outcome

All four isolated native strategy runs passed (16 verified proofs total). Warm
Transfer averaged 8.503 s sequential and 6.253 s with two workers; history
generation averaged 0.719 s and 0.538 s. Registry loads took 12.442–12.562 s;
process peak RSS was 3.58–3.60 GiB. The two-worker native strategy remains default.

The eight-transfer workload completed all three runs. Corpus creation took
106.65 s. Individual proof batches averaged 449.552 ms, the same-family batch
442.116 ms, and all three uncached application passes 1,802.317 ms. The
historical batch/application totals were 1.700/472.198 ms: this is a material
verification regression. Current relations differ, so this is not a paired
attribution to individual removed patches. No private Commonware optimization
was reintroduced. See [full measurements](../benchmarks.md).

## Reproduction commands

Select the fresh registry above with `SHIELDD_PARI_KEYS`. All commands ran with
`CARGO_BUILD_JOBS=2`, `RAYON_NUM_THREADS=2`, and `GOMAXPROCS=2`; tests were serial.

```sh
python3 scripts/commonware.py reproduce
just commonware-test
cargo check --locked --profile ci --workspace --all-targets --all-features
cargo test --locked --profile ci --workspace --all-features -- --test-threads=1
cargo test --locked --profile ci -p shieldd-sdk-view --all-features -- --test-threads=1
cargo test --locked --profile ci --workspace --all-features --doc -- --test-threads=1
just pari-proof-tests
python3 scripts/protobuf_codegen.py --check
cargo fmt --all -- --check
```

The workspace command's SQL failure and focused corrective rerun are described
above; the full expensive suite was not redundantly repeated after that isolated
schema correction. The final schema SHA-256 is `80ce64afec214bc6a698a4322c12a7aff0cde1fd34f2e93c41c6f2469c4dcb14`.

## Verification-cost follow-up

A [subsequent profile](native-verifier-regression-investigation.md) reproduced
and localized the cost to dense public constant columns. The batch verifier was
already native and is byte-identical to baseline. The constant-layout regression
must be treated separately from removing the prepared prover; calling it a
general cost of native Commonware was misleading. No runtime changes were made
by that investigation.
