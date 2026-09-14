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
    require(len(sys.argv)==3,"usage: report_selected.py COMPLETED_CACHE REPORT_MARKDOWN")
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
    analysis={'schema':'shieldd.proving_experiment.selected_desktop_analysis.v1','results':results,'footprints':[asdict(f) for f in footprints],'phases':[asdict(p) for p in phases],'resources':resource_summary,'conditions':{'machine':identity['cpu'],'ram_bytes':identity['ram_bytes'],'platform':identity['platform'],'workers':2,'power':'AC, battery100%; observed during run','thermal':'pmset reported no recorded thermal/performance warning during run','physical_phones':'No adb device attached; Apple developer path is CommandLineTools, not full Xcode. No physical phone measured.'}}
    base_manifest=json.loads((CACHE/'gnark-msm-operands/manifest.json').read_text())
    analysis['additional_encoded_arithmetic_base_bytes']={'A':0,'B':sum(Path(op['bases']['path']).stat().st_size for op in base_manifest['operations']),'C':0}
    analysis['reporting_source_sha256']=digest(Path(__file__).read_bytes())
    (cache/'analysis.json').write_text(json.dumps(analysis,indent=2)+'\n')
    med={r['candidate']:r['warm_median_s'] for r in results['rows']}
    labels={'A':'Current Shieldd Groth16','B':'ZK-Pari377, combined gnark arithmetic','C':'Native Commonware381, prepared blst'}
    lines=['# Selected Transfer provers — matched desktop results', '',
        f'**Groth16 remains the fastest prover.** ZK-Pari377 takes {med["B"]/med["A"]:.2f}× its warm time; native Commonware381 takes {med["C"]/med["A"]:.2f}×. These are complete encoded-witness API measurements on the same desktop session.', '',
        f'{identity["cpu"]}, {identity["ram_bytes"]/2**30:.0f} GiB RAM, {identity["platform"]}, AC power. Two Go/Rayon workers, one active proof at a time. Standard regulated Transfer; two warmups and five measured warm samples plus one fresh-process first proof per backend. All 18 measured proofs and six warmups verify and have unique proof bytes.', '',
        '| Backend | Five warm values (s) | Warm median (s) | First proof (s) | Warm peak RSS (GiB) |',
        '|---|---|---:|---:|---:|']
    for row, footprint in zip(results['rows'], footprints):
        lines.append(f'| {labels[row["candidate"]]} | {", ".join(f"{x:.4f}" for x in row["warm_values_s"])} | {row["warm_median_s"]:.4f} | {row["first_s"]:.4f} | {footprint.warm_peak_rss_bytes/2**30:.3f} |')
    lines += ['', 'Warm requests include witness decoding, solving/construction, checked mapping, proving and encoding. B includes both Go solver and MSM transport. C includes scalar preparation and its complete native circuit. First proof includes fresh-process initialization, checked key loading and arithmetic-table/base preparation; offline key generation is excluded. The OS page cache was not flushed. One first proof and five warm observations support descriptive medians and ranges, not cold-tail/p95 or confidence claims.', '',
        '![Warm latency, first-proof time and memory](transfer-proving-selected.png)', '',
        '## Startup and footprint', '',
        '| Backend | Prover preparation (s) | Arithmetic preparation (s) | Additional resident bases/tables (MiB) | First peak RSS (GiB) | Key (MiB) | Witness / proof package bytes |',
        '|---|---:|---:|---:|---:|---:|---:|']
    for phase, footprint in zip(phases, footprints):
        c=phase.candidate; init=phase.first_initialization
        if c=='A':
            prep=(init['compile_ns']+init['key_load_ns'])/1e9; arithmetic=0; bases=0
        else:
            prep=init['prover']['total_ns']/1e9; arithmetic=init['arithmetic_preparation_ns']/1e9; bases=init['resident_base_bytes']/2**20
        lines.append(f'| {c} | {prep:.3f} | {arithmetic:.3f} | {bases:.2f} | {footprint.first_peak_rss_bytes/2**30:.3f} | {footprint.proving_key_bytes/2**20:.2f} | {footprint.encoded_request_bytes} / {footprint.encoded_proof_package_bytes} |')
    binit=phases[1].first_initialization
    lines += ['', f'B arithmetic preparation includes actual-key/base hash binding and Go checked loading; the Go child reports {binit["go_initialization_ns"]/1e9:.3f} s within that preparation. This extra loading is charged to first proof. C prepares its affine/index tables once from the checked key. The ordinary proving APIs retain fresh random masks and the required transcript/commitment work.', '',
        f'RSS is sampled every 100 ms per process tree; B includes both Go children. It is an observed peak, not an allocator guarantee. All workers remain resident for warm comparison; shared pages may be counted more than once. Combined campaign peak is {resource_summary["peak_all_resident_workers_rss_bytes"]/2**30:.3f} GiB, minimum reclaimable memory {resource_summary["minimum_reclaimable_memory_bytes"]/2**30:.3f} GiB, maximum swap {resource_summary["maximum_swap_bytes"]} bytes, with no competing heavy workload or resource interruption.', '',
        f'B currently requires an additional {analysis["additional_encoded_arithmetic_base_bytes"]["B"]/2**20:.2f} MiB of encoded arithmetic base files ({analysis["additional_encoded_arithmetic_base_bytes"]["B"]:,} bytes), derived from its key, in this development runner. Their checked loading is included above. C derives its prepared tables in memory and needs no additional encoded base files. These are startup/storage costs, separate from transmitted proof packages.', '',
        'Proof packages retain each measured API encoding: A uses its shipping wrapper, B includes its statement and compressed proof, C includes the claim and required committed-input commitment. Package bytes are not normalized theoretical proof sizes.', '',
        '## Decision and correctness', '',
        'Retain Groth16 as the proving baseline. B is the stronger proving candidate among these two ZK-Pari routes, but its startup and memory cost must be included in a device decision. Native C does not establish a proving advantage sufficient to justify replacing the stack. Validator verification and SnarkPack aggregation are separate costs; this proving run does not decide the protocol-throughput tradeoff.', '',
        'B retains the exact BLS12-377 gnark Transfer relation and statement; only development arithmetic changes. C retains the previously checked complete native Transfer obligations, field-specific hashes, circuit and keys. The first B transport gate rejected an older helper without combined operations; no proof or timing was admitted. A reproducing binary-identity test caught that configuration, and the corrected gate uses the previously validated combined helper. Both selected worker binaries pass all six real-proof scenario gates plus altered proof, wrong statement, truncation and invalid-witness checks before measurement. Every timed and warmup proof is individually checked outside its proving timer.', '',
        'This pass ran eight B release example tests, one C release transport test, six focused Python checks, and both selected six-scenario real-proof gates. Prior original/converted relation, wrong-key, semantic and arithmetic-parity gates remain recorded in the optimization ledger. Production release-gated prover suites and formal certification were not run; formal work belongs in shieldd-security.', '',
        'The one gnark381 arithmetic control is closed: its 0.146576 s summed saving would project only about 4.9% off the earlier C API, and does not justify another Go runtime in the selected implementation. It is not a full-proof result. Affine/shared-square gadgets, corrected hinted multiplication, alternative domains and Edwards MSM remain deferred; no unmeasured circuit saving is added to these results.', '',
        '**Physical-phone acceptability remains unknown.** No Android device is attached and full Xcode is absent on this host. Desktop ARM results are not phone measurements. No payment TPS or production-readiness claim follows.', '',
        'The earlier desktop-final report and frozen sources remain unchanged. Its samples are a historical checkpoint, not pooled with this session. The stopped SnarkPack/ZK-Pari campaign and its 4,096-proof corpora were not resumed.', '',
        '## Reproduction and evidence', '',
        '- [Raw samples](../../tools/proving-experiment/cache/desktop-selected/samples.jsonl), [machine-readable analysis](../../tools/proving-experiment/cache/desktop-selected/analysis.json), [completion hashes](../../tools/proving-experiment/cache/desktop-selected/complete.json).',
        '- [Selected source archive manifest](../../tools/proving-experiment/cache/desktop-selected-source/manifest.json), [worker/gate commands](../../tools/proving-experiment/README.md), [optimization ledger](../../tools/proving-experiment/optimization-ledger.md).',
        '- [Earlier desktop checkpoint](transfer-proving-results.md), [B arithmetic evidence](../../tools/proving-experiment/gnark-msm-probe.md), [C arithmetic evidence](../../tools/proving-experiment/native-prepared-msm.md).', '',
        'Cache evidence is local and ignored by Git. Analysis reads and validates the completed run without regenerating proofs. Source archives, exact binary hashes, locks, keys, fixture hashes, raw samples and the guarded resource logs are retained.', '']
    report.parent.mkdir(parents=True,exist_ok=True); report.write_text('\n'.join(lines))
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    colors=['#3975a6','#148779','#b67a25']
    fig, axes=plt.subplots(1,3,figsize=(12,4.3))
    short=['Groth16','Pari377','Native381']; positions=list(range(3))
    columns=[([r['warm_median_s'] for r in results['rows']], 'Warm proof', 'Seconds'),([r['first_s'] for r in results['rows']], 'First proof', 'Seconds'),([f.warm_peak_rss_bytes/2**30 for f in footprints], 'Warm process-tree peak', 'GiB')]
    for ax,(values,title,ylabel) in zip(axes,columns):
        ax.bar(positions,values,color=colors,width=.62)
        ax.set_xticks(positions,short); ax.set_title(title); ax.set_ylabel(ylabel)
        ax.spines[['top','right']].set_visible(False); ax.set_ylim(0,max(values)*1.22)
        for x,v in zip(positions,values): ax.text(x,v+max(values)*.035,f'{v:.2f}',ha='center',fontsize=10)
    for i,row in enumerate(results['rows']): axes[0].scatter([i]*5,row['warm_values_s'],s=12,color='#202b33',zorder=3)
    fig.suptitle('Complete Transfer proving — M4 Pro, two workers',fontsize=14)
    fig.text(.5,.015,'Five warm samples; one fresh-process first proof. Desktop measurements; phones pending.',ha='center',fontsize=9)
    fig.tight_layout(rect=(0,.06,1,.94))
    fig.savefig(report.with_name('transfer-proving-selected.png'),dpi=180)
    fig.savefig(report.with_name('transfer-proving-selected.svg'))
    plt.close(fig)

if __name__=='__main__': main()
