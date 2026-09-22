# Cryptography and format experiments

Agent report. For subsequent parent proof timings and final decisions, see
[the consolidated report](../../circuit-state-optimization-experiments.md).

2026-09-21. All variants were installed only temporarily and the live checkout was restored. Commonware compiled full-family relation shapes for fixed-base and prepared-base variants, and isolated gadget relation shapes for hash, address, note and amount changes. The prepared-base variant also passed a native Pari encryption proof and focused semantic tests. Fixed-base variants passed their group boundary test; no full Transfer or Reshape proof was run for them. The hash and format variants had no setup or proof run. `model.json` is an operation model, separate from these measured relations. The full baseline catalogue lives in the parent experiment report.

## Runnable fixed-base width variants

`make_fixed_windows.py` copies the repository's current `group.rs` and replaces only `affine_fixed`. The generated `group_fixed_w3.rs` and `group_fixed_w4.rs` use Commonware's public `Selector::select_constant` and a complete native point table, padded with false bits at the final window. The variants were compared with unchanged width 2 under identical compiler instrumentation. Both compiled and passed `fixed_windows_match_variable_and_independent_group_boundaries`. A full action proof remains to be measured before choosing width 3. The source-model counts for 255 bits are 128/85/64 affine additions at widths 2/3/4; selector size and matrix density can erase any savings. The model records the selector monomial counts and table sizes.

## Reusable variable-base preparation

`affine_variable` currently computes `twice` and `triple` once per scalar multiplication, then uses 2-bit windows. In `encryption::constrain`, each ephemeral scalar is different, while the selected audit key is the same. Hoisting a prepared `{base, twice, triple}` from the `i` loop would remove three repeated preparations. But the selected base is computed inside the loop today; hoisting it also requires proving that the same `flagged`, `detection_key`, and `audit.payload` are used for all four iterations. This is a safe prototype shape, but likely a small win relative to 4 × 126 window additions. The measured variant saved 81 Transfer rows and passed the five encryption tests, including a native proof, as detailed below. This small result does not justify broadening the abstraction to other repeated-base sites.

## Audit coordinates and amount deduplication

Current `encoding::address_words` fully canonical-decomposes both `x` and `y` of each point, then keeps only `x` parity and all `y` bits. Two addresses therefore induce eight full-field decompositions. An affine-coordinate payload uses four field ciphertext words per address versus three current packed words; for the two Transfer extended tiers, that adds 64 raw bytes, plus two stream hashes and statement fields. The receiver must reject noncanonical coordinates, off-curve points, non-subgroup points, and identity where prohibited, before converting to the existing canonical address. Without those checks, the change is invalid. This format changes Orbis decoding but need not change wallet address bytes.

`sender_core` and `output_core` both encrypt `shared.amount` under independent ephemeral values; dropping one core removes one fixed-base multiplication, one variable-base multiplication, seed checks and hashes, and 160 raw bytes. Keeping `sender_core` preserves detection's EPK dependency. Combined with coordinate payloads the raw compliance-byte delta is -96 bytes per Transfer, before envelope overhead. This is **not ready to adopt**: `crates/disclosure/src/issuer.rs` uses both core salts, and `crates/disclosure/src/orbis.rs` exposes tier-specific release scopes. A single amount tier needs explicit role-bound authorization, issuer evidence, PET/ACP and anti-replay review, and exact decoder/fixture updates. Never coalesce independently authorized address or recovery seeds.

## Shared address digest

`Note::fields` is eight fields, so its rate-five wide Poseidon hash uses two permutations. A new design could hash the four address coordinates to a digest and replace them with one field in the note preimage, making five note fields and one permutation per note, plus one digest per distinct owner. Gross savings for eight outputs to the same address: eight wide permutations minus one address digest permutation, conditional on native/circuit reuse. However the note commitment and derived nullifier change throughout acceptance, storage, wallet, and tests. This is a protocol redesign; defer until real end-to-end proving measurements show material gain.

## Hash/arity

Current Poseidon has width 3 or 6, rate `width-1`, 8 full and 57 partial rounds, and uses `arity*256+domain` as capacity IV. For equal 48-bit position capacity, the source model gives binary depth 48, quaternary depth 24, octary depth 16. With a level field, even the binary node has three inputs and `Parameters::hash` therefore selects **width 6**, since width 3 is used only for up to two inputs. Current width-six sponge costs 1/1/2 permutations per node and 48/24/32 per path. At current round counts the S-box totals are 5,040/2,520/3,360, before selectors or matrix entries. The research narrative's illustrative binary `48*81` count omits the level input and is not the current implementation. This model does not establish secure parameter equivalence for a new hash. The existing quaternary shape wins on permutation count among these three. The naive width-6 octary shape was compiled below and was more costly than quaternary; a different compression design would need independent security review.

Poseidon2 has a published BLS12-381 t=3 reference instance and generation recipe, and width-8 reference instances. Width 6 and 9 sets were not identified. Width-8 was compiled in an isolated extraction below, without treating it as an audited Shieldd compression construction. Constant linear layers already fold in Pari, so Poseidon2's advertised arithmetic savings cannot be transferred directly. A full comparison must fix security level, width, rate, domain/level encoding, canonical field vectors, native/circuit parity, matrix nonzeros, compilation/witness/proving time and proof size. Sources: [Poseidon2 paper](https://eprint.iacr.org/2023/323.pdf), [reference parameter generator](https://github.com/HorizenLabs/poseidon2/blob/main/poseidon2_rust_params.sage), [reference BLS12-381 vectors](https://github.com/HorizenLabs/poseidon2/blob/main/plain_implementations/src/poseidon/poseidon.rs).

## Merkle multiproofs and shared ancestry

Eight independent depth-24 paths cost 192 node hashes. Sharing a path requires proving the positions and shared ancestors agree; paths from the same block/epoch do not automatically share a sufficient prefix at the leaf end. A generic fixed-size private-index circuit retains worst-case hash work even if the witness often clusters. A specialized clustered-input family changes the visible family selection and may disclose clustering. A seeded synthetic host trace is reported below. The next useful trace should use real reshape positions and compare witness bytes against independent paths. Only build a circuit family if clustering is common enough and its disclosure is acceptable. Existing host batched tree-update materialization is a different workload.

## Adoption

Advance width-3 fixed-base windows to full action proof timing: it reduced rows in four full-family relation shapes, but the padded domains did not change. Reject width 4; its rows were unchanged and matrix entries increased. Defer the 81-row variable-base preparation change because of added abstraction. Keep the quaternary Poseidon tree; the tested binary, octary, and Poseidon2 path shapes had higher compiled cost. Defer audit-payload and note-commitment format changes until authorization and protocol review plus end-to-end measurements. The amount-core and affine-address results are extracted gadget savings, not deployable full-family results.

## Measured extracted relations and fixed-base family variants

All metrics below are actual Commonware compiler output from isolated temporary variants, `ci` profile. The first table compiles complete circuit-family shapes after changing fixed-base multiplication; the second table compiles extracted gadgets only. Neither table reports proof time or valid full-family witness time. Complete logs: `gadget_shapes.log`, `poseidon2_shapes.log`, `w3.log`, `w4.log`. Temporary files were restored. The fixed-base group boundary test passed for widths 3 and 4. The separate prepared-base native proof appears in “Additional measured variants” below.

| Full family | Baseline rows | Width 3 rows | Width 4 rows | Baseline square NNZ | Width 3 square NNZ | Width 4 square NNZ |
|---|---:|---:|---:|---:|---:|---:|
| Transfer | 212174 | 207554 | 212174 | 2217505 | 2218693 | 2249526 |
| Reshape 1→8 | 157049 | 152849 | 157049 | 1586363 | 1587443 | 1615473 |
| Reshape 8→1 | 185925 | 181725 | 185925 | 2704476 | 2705556 | 2733586 |
| Withdrawal | 119090 | 116990 | 119090 | 1557588 | 1558128 | 1572143 |

Padded domains remained unchanged. Width 3 is a measurable row and column improvement, with a small matrix-density penalty; it should advance to witness/proof timing. Width 4 offers no row saving and increases matrix entries, so reject it.

| Extracted shape | Rows | Columns | Square NNZ | Domain |
|---|---:|---:|---:|---:|
| Current Poseidon binary depth 48, explicit level | 19396 | 19446 | 391246 | 32768 |
| Current Poseidon quaternary depth 24 | 9892 | 9966 | 196918 | 16384 |
| Current Poseidon octary depth 16 | 13316 | 13430 | 264814 | 16384 |
| Poseidon2 reference BLS width 3 binary | 30724 | 30774 | 607528 | 32768 |
| Poseidon2 reference BLS width 8 binary | 23236 | 23286 | 470727 | 32768 |
| Poseidon2 reference BLS width 8 quaternary | 11620 | 11694 | 236439 | 16384 |
| Poseidon2 reference BLS width 8 octary | 15492 | 15606 | 315687 | 16384 |
| One current note hash | 840 | 849 | 16573 | 1024 |
| One note hash plus address digest | 832 | 841 | 16435 | 1024 |
| Eight current note hashes | 7528 | 7593 | 149173 | 8192 |
| Eight notes, shared owner digest ×1 | 4580 | 4617 | 90739 | 8192 |
| Eight notes, owner digests ×2 | 4992 | 5033 | 98929 | 8192 |
| Eight notes, owner digests ×8 | 7464 | 7529 | 148069 | 8192 |
| One packed two-point address plus three stream words | 4424 | 4418 | 37804 | 8192 |
| One affine two-point address plus four stream words | 1680 | 1686 | 34087 | 2048 |

Poseidon2 constants came verbatim from HorizenLabs' BLS12-381 width-3/8 reference. Width 3 output for input `[0,1,2]` matched its published vector; width 8 output for `[0..7]` matched an independent Python port of the published permutation and constants (`poseidon2_kat.py`). This checks implementation parity at two points, not security of Shieldd's proposed sponge/compression/domain construction. Current Poseidon quaternary remains cheaper in the extracted Pari relation. For both current and Poseidon2 examples, binary inputs include an explicit level field. Fixed input variables were not bound to a semantically valid Merkle witness; the shapes reflect hashing and equality gates only.

The packed/affine address difference is large in this extracted format gadget, but the affine case deliberately omits new canonical-coordinate/subgroup/identity validation. Current compressed decode rejects noncanonical bytes and identity where required. A secure affine decoder would have to add validation costs. Thus 2744 rows is an **upper bound** on potential savings for this extraction, not a deployable format result. Likewise shared-address note savings are optimistic: the extraction omits address ownership and reuse-binding constraints. The gains warrant a full prototype only if commitment-format change is otherwise acceptable.

## Bounded host multiproof trace

`multiproof_trace.py` generated 1,000 seeded sets of eight distinct 48-bit positions for each pattern and counted unique quaternary parent hashes plus missing sibling fields across 24 levels. Independent paths always compute 192 node hashes and carry 576 sibling fields. Uniform positions averaged 178.446 unique hashes and 528.338 sibling fields, a modest 7.1% hash reuse. Two complete four-child groups at independent random parents averaged 46.651 hashes and 132.953 siblings. Contiguous eight positions had exactly 25 hashes and 68 sibling fields. The clustered patterns were deliberately constructed; these are potential host witness savings, not evidence that actual reshape transactions cluster. A private fixed-size circuit must constrain and exploit the position structure, and a distinct family can expose clustering. The trace makes no protocol safety claim.

## Additional measured variants

`group_prepared.rs` plus `encryption_prepared.rs` reuse the four audit tiers' selected-key point and its `base/twice/triple` preparation. Any measured delta combines removal of three redundant key selections **and** three redundant preparations. The runner `run_prepared_base.py` validates the five encryption tests, Transfer branch relation binding, and catalogue metrics; it restores both files byte-for-byte. `gadget_shapes.rs` also contains `amount_core_one` and `amount_core_two`, representing one versus two complete amount core encryptions with independent ephemeral scalars and common amount. They compiled as extracted relations; they omit surrounding authorization/ownership policy.

Prepared-base hoisting changed only Transfer: 212,174→212,093 rows and 212,126→212,045 columns; square NNZ 2,217,505→2,217,202 and linear NNZ 269,074→268,975. Domain stayed 262,144. The five encryption tests, including a native Pari proof binding all four tiers, and Transfer's all-branch audit-key relation test passed. This 81-row gain includes hoisting the selected key's conditional coordinate selection as well as its small-multiple table. The added public `PreparedVariable` abstraction is not justified by this small saving; defer it.

The isolated complete amount-core shapes had 20,036 rows/20,040 columns/two cores versus 10,010 rows/10,014 columns/one core, domains 32,768 versus 16,384. Square NNZ dropped from 113,783 to 56,784. This is a gadget-only difference with independent ephemeral scalars, a shared amount, key confirmation, DH seed, stream and ciphertext. It is **not** the net Transfer saving: the full statement sponge and role authorization are omitted, and the action's padded domain may not move. The authorization review described above remains the gating issue.

Poseidon2 width-8 native/circuit parity passed for a real assigned permutation, and a claimed output incremented by one was rejected. The extracted hash-path comparisons still lack setup/proof benchmarks and independent analysis of domain/level encoding; measured compilation speed in this tiny extraction is not a safe adoption basis.
