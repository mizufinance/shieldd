"""Verify and summarize a completed compact desktop campaign without rerunning proofs."""
from pathlib import Path
from dataclasses import asdict, dataclass
import json
import statistics
import sys
from api_gate import CACHE, ROOT, SPIKE, digest, require
from desktop import load_samples

@dataclass
class Footprint:
    candidate: str
    first_peak_rss_bytes: int
    warm_peak_rss_bytes: int
    encoded_request_bytes: int
    encoded_proof_package_bytes: int
    proving_key_bytes: int

@dataclass
class Phases:
    candidate: str
    warm_median_ns: dict[str, float]
    first_initialization: dict


def main():
    require(len(sys.argv)==3,"usage: report_desktop.py COMPLETED_CACHE REPORT_MARKDOWN")
    cache=Path(sys.argv[1]).resolve(); report=Path(sys.argv[2]).resolve()
    complete=json.loads((cache/'complete.json').read_text())
    for name,field in [('identity.json','identity_sha256'),('samples.jsonl','samples_sha256'),('results.json','results_sha256')]:
        require(digest((cache/name).read_bytes())==complete[field],"completed record hash mismatch")
    samples,ids,hashes=load_samples(cache)
    require(len(hashes)==24 and complete['measured_proofs']==18 and complete['warmups']==6 and complete['all_verified'],"unexpected campaign size")
    expected={f'first/{c}' for c in 'ABC'}|{f'warm/{i}/{c}' for i in range(5) for c in 'ABC'}
    require({s.sample_id for s in samples if s.measured}==expected,"missing measured ID")
    results=json.loads((cache/'results.json').read_text()); identity=json.loads((cache/'identity.json').read_text())
    raw=[json.loads(l) for l in (cache/'samples.jsonl').read_text().splitlines()]
    keys={'A':ROOT/'tools/gnark/artifacts/transfer/proving_key.bin','B':CACHE/'b-lowered/lowered.pk','C':CACHE/'native-tuned-full-gate/keys/native.pk'}
    witnesses={'A':ROOT/'tools/gnark/internal/testfixtures/vectors/transfer_witness.bin','B':ROOT/'tools/gnark/internal/testfixtures/vectors/transfer_witness.bin','C':CACHE/'native-tuned-witnesses/transfer.witness'}
    footprints=[]; phases=[]
    for c in 'ABC':
        warm=[s for s in samples if s.candidate==c and s.kind=='warm']; first=next(s for s in samples if s.candidate==c and s.kind=='first')
        require(statistics.median(s.wall_ns for s in warm)/1e9==next(r['warm_median_s'] for r in results['rows'] if r['candidate']==c),'median differs from raw data')
        footprints.append(Footprint(c,first.peak_candidate_rss_bytes,max(s.peak_candidate_rss_bytes for s in warm),witnesses[c].stat().st_size,first.proof_bytes,keys[c].stat().st_size))
        fields=['witness_ns','prove_ns','encode_ns','request_ns'] if c=='A' else (['go_roundtrip_ns','checked_mapping_ns','prove_ns','encoding_ns','cleanup_ns','request_ns'] if c=='B' else ['checked_witness_decode_ns','construction_solving_ns','assignment_mapping_ns','claim_ns','prove_ns','encoding_ns','cleanup_ns','total_ns'])
        values=[s.response if c=='A' else s.response['request'] for s in warm]
        phase={f:statistics.median(v[f] for v in values) for f in fields}
        init=next(r['response'] for r in raw if r.get('stage')=='initialization' and r['candidate']==c)
        phases.append(Phases(c,phase,init if c=='A' else init['initialization']))
    resources=[json.loads(l) for l in cache.with_name(cache.name+'-run.resources.jsonl').read_text().splitlines()]
    exit_record=json.loads(cache.with_name(cache.name+'-run.exit.json').read_text())
    require(exit_record['code']==0 and exit_record['failure'] is None and not any(r['competing_heavy_pids'] for r in resources),'interrupted or contended final run')
    resource_summary={'peak_all_resident_workers_rss_bytes':max(r['tree_rss_bytes'] for r in resources),'minimum_reclaimable_memory_bytes':min(r['available_bytes'] for r in resources),'maximum_swap_bytes':max(r['swap_bytes'] for r in resources),'competing_heavy_workloads':False}
    analysis={'schema':'shieldd.proving_experiment.desktop_analysis.v1','results':results,'footprints':[asdict(f) for f in footprints],'phases':[asdict(p) for p in phases],'resources':resource_summary,'conditions':{'machine':identity['cpu'],'ram_bytes':identity['ram_bytes'],'platform':identity['platform'],'workers':2,'power':'AC, battery100%; observed during run','thermal':'pmset reported no recorded thermal/performance warning during run','physical_phones':'No adb device attached; Apple developer path is CommandLineTools, not full Xcode. No physical phone measured.'}}
    (cache/'analysis.json').write_text(json.dumps(analysis,indent=2)+'\n')
    med={r['candidate']:r['warm_median_s'] for r in results['rows']}
    lines=['# Transfer proving results — desktop, 2026-09-13','',f'**Shipping Groth16 remains fastest for warm proving.** Optimized ZK-Pari B takes {med["B"]/med["A"]:.2f}× its warm latency; native Commonware C takes {med["C"]/med["A"]:.2f}×. C is {100*(med["C"]/med["B"]-1):.1f}% slower than B in this run. That small B/C difference is descriptive, not a robust ranking across sessions or devices. Neither candidate reaches A here.','',f'{identity["cpu"]}, 48 GiB RAM, macOS 15.7.7, AC power. Go and Rayon used two workers; Cargo builds were bounded to two jobs. A/B used Rust 1.89 where applicable; native C requires Rust 1.95. One controlled session, standard regulated Transfer, two untimed warmups and five measured warm proofs per candidate. Each candidate also produced one measured first proof in a fresh process. All **18 measured proofs and six warmups verified**, with fresh randomness and unique proof bytes.','', '| Candidate | All five warm values (s) | Median (s) | Range (s) | First proof (s) |','|---|---|---:|---|---:|']
    labels={'A':'A — shipping Groth16','B':'B — optimized ZK-Pari377','C':'C — native Commonware381'}
    for r in results['rows']:
        lines.append(f'| {labels[r["candidate"]]} | {", ".join(f"{v:.4f}" for v in r["warm_values_s"])} | {r["warm_median_s"]:.4f} | {r["warm_min_s"]:.4f}–{r["warm_max_s"]:.4f} | {r["first_s"]:.4f} |')
    lines += ['', 'First-proof time includes process creation, circuit/prepared-state construction, checked key loading, witness handling, solving, proving and output encoding. Setup is offline and excluded. The OS page cache was not flushed. One first-proof observation does not support cold-tail percentiles. Warm timers cover the complete encoded-witness request; verification runs afterward. B includes the actual Go solver transport; C includes synthesis, prepared mapping, commitments and openings.', '', '## Startup, memory and encoding', '', '| Candidate | First-proof peak RSS (GiB) | Warm peak RSS (GiB) | Proving key (MiB) | Encoded witness bytes | Encoded proof package bytes |','|---|---:|---:|---:|---:|---:|']
    for f in footprints:
        lines.append(f'| {f.candidate} | {f.first_peak_rss_bytes/2**30:.3f} | {f.warm_peak_rss_bytes/2**30:.3f} | {f.proving_key_bytes/2**20:.2f} | {f.encoded_request_bytes} | {f.encoded_proof_package_bytes} |')
    lines += ['', 'RSS is sampled every 100 ms per worker process tree, including B’s Go helper; it is an observed maximum, not an allocator high-water guarantee. Shared pages can be counted more than once. All workers stay resident while only one proves at a time. Combined campaign peak RSS was 6.22 GiB, with at least 17.47 GiB reclaimable memory, zero swap and no detected competing heavy workload. Spotlight interrupted an earlier correctness invocation; that invocation was resumed and completed before this successful final campaign.', '', 'A’s first initialization spent 2.008 s compiling and 19.093 s loading keys. B spent 63.388 s in checked key decoding, within 68.435 s preparation. C spent 20.519 s in checked decoding/canonical roundtrip, within 22.960 s preparation. Parallel checked decoding improved B’s targeted diagnostic 75.736→63.249 s and C’s 38.116→20.190 s, with identical canonical keys and all required validation.', '', 'C’s memory is materially higher: about 3.59 GiB warm versus B’s 2.00 GiB and A’s 0.66 GiB. Its lower first-use cost relative to B does not remove this tradeoff. A’s package uses its shipping uncompressed proof wrapper; B/C packages contain their complete checked proof/statement representations, and C also carries the required committed-input commitment. These are measured API bytes, not normalized theoretical proof sizes.', '', '## What the optimizations established', '', '- B preserves the exact gnark relation/field/statement. Prepared square/affine/linear lowering reduces it to 241,626 rows and a 262,144-point domain. Its bounded MSM investigation retained Arkworks because alternatives offered small gains or memory regressions.', '- C preserves all Transfer obligations with native Jubjub and field-specific hashes. The component-guided hash/fixed-base/selected-key bundle reduces 360,396→232,683 rows and halves the domain to 262,144. Prepared mapping and masked-quotient squaring also produced exact-proof-parity gains before the final circuit change. C’s initial approximately 7.75-second kernel is not the final complete API baseline.', '- The old spike’s 13.26-second result used one worker and a different bridge. It cannot be divided by this two-worker result to claim a matched speedup. The final result establishes the remaining gap to shipping A, rather than an unsupported percentage of the old regression recovered.', '- The selected-key DH idea also helps gnark/Groth16. Actual isolated gadget compilation saves 2,758 R1CS rows per non-detection tier, suggesting 8,274 across three tiers. That estimate stays within the existing FFT domain. No changed gnark circuit is adopted or timed here; a matched Groth16/PARI control is required if that source change is pursued. C’s result measures the whole native redesign, not an isolated curve or backend effect.', '', 'Descriptive median ratios (above one means the denominator is faster): '+', '.join(f'{k}={v:.4f}' for k,v in results['ratios'].items())+'. Five samples do not justify p95, bootstrap confidence claims or a precise cross-device B/C ranking.', '', '## Correctness and remaining scope', '', 'All six scenarios pass real-proof and negative gates for each candidate. B validates original/lowered assignments and mapping. C’s regenerated relation passes original/converted checks, wrong statements/commitments/keys, malformed encodings and invalid witnesses. Forty relevant native release checks, eight B release checks, the native transport test, focused Go helper tests, six runner/resource tests and four parameter-screening tests passed across recorded invocations. Production release-gated prover suites and formal certification were not run; formal work remains in shieldd-security.', '', '**Physical-phone results remain pending.** No Android device is attached, and this host has Apple Command Line Tools rather than full Xcode. Desktop ARM timings are not phone measurements. Preserve all three finalized candidates for a physical iPhone/Android comparison; native memory and first-use loading especially need on-device validation.', '', 'This is a proving-performance result. It supports keeping Groth16 as the current proving baseline; it does not independently decide the validator verification/aggregation tradeoff. The stopped SnarkPack/ZK-Pari verification campaign and its 4,096-proof corpora remain intact and were not resumed. No payment-TPS or production-readiness claim follows.', '', '## Evidence and reproduction', '', '- [Raw samples and phases](../../tools/proving-experiment/cache/desktop-final/samples.jsonl), [results JSON](../../tools/proving-experiment/cache/desktop-final/results.json), [memory/phase analysis](../../tools/proving-experiment/cache/desktop-final/analysis.json), [memory samples](../../tools/proving-experiment/cache/desktop-final/memory-0.jsonl).', '- [Source/artifact identity](../../tools/proving-experiment/cache/desktop-final/identity.json), [completion hashes](../../tools/proving-experiment/cache/desktop-final/complete.json), [frozen source archive](../../tools/proving-experiment/cache/desktop-final-source.tar.gz).', '- [Commands and boundaries](../../tools/proving-experiment/README.md), [optimization ledger](../../tools/proving-experiment/optimization-ledger.md), [native semantic obligations](../../tools/proving-experiment/native-obligations.md).', '', 'Cache evidence is local and ignored by Git. Reproduce from the recorded pins/locks and development artifact setup; reuse a completed cache only when its identity and proof hashes validate. The reporting command performs read-only validation of the completed measurements and does not rerun proofs.', '']
    report.parent.mkdir(parents=True,exist_ok=True); report.write_text('\n'.join(lines))

if __name__=='__main__': main()
