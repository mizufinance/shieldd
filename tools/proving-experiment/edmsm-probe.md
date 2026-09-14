# Edwards-coordinate MSM against selected gnark377

**Keep the selected combined gnark377 implementation.** The independent Edwards route passes all 20 actual-operand equality checks but does not show a material full-proving opportunity.

| Combined operation | Selected gnark median | Edwards median |
|---|---:|---:|
| commitment | 0.745044 s | 0.724871 s |
| opening | 1.281250 s | 1.228405 s |

The summed group medians save 0.073017 s (3.60% of these operations). Applied to the selected B 2.476527 s API result, that would project only 2.95% overall. This is arithmetic evidence, not a measured new full-proof result. Two warmups and three balanced measured pairs per group use the same verified Transfer bases/scalars; all Rust scalar encoding, IPC, Go canonical input decoding and checked output mapping are inside the boundary. No window sweep or historical-reference multiplier is used.

Edwards preparation takes 18.547 s in addition to 18.198 s checked base loading. Its mapped resident bases require 183,990,816 bytes versus 122,660,736 for selected gnark (about 50% more). The two-worker diagnostic process-tree peak is 1.119 GiB, zero swap/competition; this is not isolated phone or full-prover memory.

## Source comparison

The [ZPrize harness at 6ae651b7](https://github.com/gbotrel/zprize-mobile-harness/tree/6ae651b7b1664b81e7dac19c4a038eb014e93237) uses signed-window extended-Edwards buckets. That algorithm is absent from [gnark-crypto v0.20.1 MultiExp](https://github.com/Consensys/gnark-crypto/blob/v0.20.1/ecc/bls12-377/multiexp.go), whose dense windows now use batched affine addition with amortized inversion. The old benchmark compared an older stack, different workload and target, so its advertised speedup is not evidence against this baseline.

[Current gnark ARM64](https://github.com/Consensys/gnark-crypto/blob/v0.20.1/ecc/bls12-377/fp/element_arm64.go) already has Butterfly and shared six-limb assembly multiplication. The old pure-Go CIOS multiplication is not the active current kernel; current ARM64 Square invokes multiplication, so the old dedicated-square implementation is also not active. This experiment changes only bucket coordinates and retains current field arithmetic. [Go 1.25.7 ARM64 rules](https://github.com/golang/go/blob/go1.25.7/src/cmd/compile/internal/ssa/_gen/ARM64.rules) lower selected high/low halves of Mul64uhilo separately to UMULH/MUL, addressing the dead-result issue raised by the harness. These source observations do not establish a performance benefit from restoring any old field kernel.

## Mapping and checks

The isolated `edmsm` Go module pins gnark-crypto0.20.1 and builds with Go1.25.7, matching the actual selected helper binary. Host `go version` alone reported1.25.4; the initial isolated tidy selected1.26.8, so the compiler was explicitly corrected before measurement. The first adapter test compile referenced a removed method; it was corrected before the successful focused checks.

Preparation checks curve/subgroup membership and excludes zero denominators for every nonidentity source point. Identity has a distinct map. The inverse rejects zero projective Z, inconsistent extended coordinates and exceptional denominators, then verifies the resulting SW point and subgroup. It does not copy the old behavior that silently maps Z=0 to infinity. Focused tests cover identity, inverse/doubling, signed and wide scalars, an independent scalar-product sum, off-curve/order-two/order-three inputs, malformed points/scalars and invalid Edwards outputs. These are checked experimental boundaries, not a general completeness proof or production certification.

All resulting combined operations equal the groups captured from the prior genuine Transfer proof. No key, circuit, proof encoding or selected worker changed. The extra initialization/memory and small gain justify closing this route without full-API integration. The deterministic subgroup-check startup investigation is separate.

## Evidence

Raw samples, preparation, completion hashes and `analysis.json` are in `cache/edmsm-comparison`; sources/binaries and compiler metadata are frozen in `cache/edmsm-source`. The guarded run exits zero. Four focused Go checks pass across the adapter and worker packages. Source pin and adaptation boundaries are recorded in `edmsm/upstream.json`. The original selected desktop evidence remains intact.
