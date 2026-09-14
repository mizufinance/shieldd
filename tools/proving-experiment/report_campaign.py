"""Validate and report the completed optimized circuit matrix; never regenerate proofs."""
from pathlib import Path
import json,statistics,sys
from api_gate import CACHE,ROOT,digest,require
from desktop import load_samples
from campaign_workers import CONFIGURATIONS

def main():
    require(len(sys.argv)==3,'usage: report_campaign.py CACHE REPORT.md')
    cache=Path(sys.argv[1]).resolve();report=Path(sys.argv[2]).resolve();complete=json.loads((cache/'complete.json').read_text())
    for name,value in complete['hashes'].items():require(digest((cache/name).read_bytes())==value,'completion hash mismatch')
    samples,ids,hashes=load_samples(cache);require(complete['all_verified'] and complete['measured_proofs']==18 and len(hashes)==18+complete['warmups'],'invalid sample set')
    rows=json.loads((cache/'results.json').read_text())['rows'];old=json.loads((CACHE/'desktop-selected/results.json').read_text())['rows'];old={r['candidate']:r for r in old}
    raw=[json.loads(s)for s in (cache/'samples.jsonl').read_text().splitlines()];phases=[]
    for r in rows:
        c=r['candidate'];w=[s for s in samples if s.candidate==c and s.kind=='warm'];require(statistics.median(s.wall_ns for s in w)/1e9==r['warm_median_s'],'median differs')
        fields=['witness_ns','prove_ns','encode_ns','request_ns']if c=='A'else(['go_roundtrip_ns','checked_mapping_ns','prove_ns','encoding_ns','cleanup_ns','request_ns']if c=='B'else['checked_witness_decode_ns','construction_solving_ns','assignment_mapping_ns','claim_ns','prove_ns','encoding_ns','cleanup_ns','total_ns'])
        timings=[s.response if c=='A'else s.response['request']for s in w]
        phases.append({'candidate':c,'median_ns':{k:statistics.median(t[k]for t in timings)for k in fields},'initialization':next(x['response']for x in raw if x.get('stage')=='initialization'and x['candidate']==c)})
        r['proving_key_bytes']=CONFIGURATIONS[c].key.stat().st_size;r['historical_warm_reduction_fraction']=1-r['warm_median_s']/old[c]['warm_median_s']
    prefix=cache.with_name(cache.name+'-run');exit_record=json.loads(prefix.with_suffix('.exit.json').read_text());resource=[json.loads(l)for l in prefix.with_suffix('.resources.jsonl').read_text().splitlines()]
    require(exit_record['code']==0 and exit_record['failure']is None and not any(x['competing_heavy_pids']for x in resource),'unclean resource run')
    resources={'peak_all_workers_rss_bytes':max(x['tree_rss_bytes']for x in resource),'min_available_bytes':min(x['available_bytes']for x in resource),'max_swap_bytes':max(x['swap_bytes']for x in resource),'competing_heavy_jobs':False}
    analysis={'schema':'shieldd.proving_experiment.campaign_analysis.v1','rows':rows,'phases':phases,'resources':resources,'reporting_source_sha256':digest(Path(__file__).read_bytes())}
    (cache/'analysis.json').write_text(json.dumps(analysis,indent=2)+'\n')
    labels={'A':'Groth16, improved Transfer','B':'ZK-Pari377, improved Transfer','C':'Native Pari381, affine Transfer'}
    by={r['candidate']:r for r in rows};a=by['A']['warm_median_s']
    lines=['# Transfer proving — circuit and polynomial optimization round','',f'**Groth16 remains the fastest prover in this desktop matrix.** ZK-Pari377 takes {by["B"]["warm_median_s"]/a:.2f}× its warm time; native Pari381 takes {by["C"]["warm_median_s"]/a:.2f}×. This concludes the implemented circuit, checked-loader and same-key polynomial round. Structured-domain protocol work and physical-phone measurements remain pending.','',
     'Apple M4 Pro, 48 GiB RAM, macOS, AC power. Two Go/Rayon workers and one active proof at a time. Standard regulated Transfer; three warmups, five measured warm proofs and one fresh-process first proof per backend. Every measured and warmup proof verifies with unique bytes. First use includes compilation/preparation, checked key loading, arithmetic tables and the first complete witness-to-proof request. The OS page cache was not flushed.','',
     '| Backend | Five warm values (s) | Warm median (s) | First proof (s) | Warm peak RSS (GiB) |','|---|---|---:|---:|---:|']
    for r in rows:lines.append(f'| {labels[r["candidate"]]} | {", ".join(f"{x:.4f}"for x in r["warm_values_s"])} | {r["warm_median_s"]:.4f} | {r["first_s"]:.4f} | {r["warm_peak_rss_bytes"]/2**30:.3f} |')
    lines+=['','Five warm samples support a descriptive comparison, not reliable p95 or confidence-interval claims. Each first-proof result is one observation, not a cold-tail estimate. No desktop result establishes phone acceptability, validator throughput or payment TPS.','','## Changes included','',
     '- A and B share the exact same improved gnark Transfer: three eligible audit tiers select their authenticated key before DH. Sender-core retains unconditional issuer detection. Original R1CS rows fall 163,396→155,122; B conversion has 226,578 rows and 262,144 FFT domain.',
     '- B uses combined gnark377 MSM, deterministic checked G1 loading, prepared public-column polynomials and coset quotient computation. Every original-domain row is checked before coset interpolation. Public statements, canonical encodings and key/relation association remain checked.',
     '- C uses complete affine Jubjub formulas at validated inputs, prepared/combined blst MSM and relation-bound public/coset preparation. Its relation has 220,009 rows and 220,029 columns, still on domain 262,144. The B-side mask remains in the quotient.',
     '- New development keys are confined to the experiment cache. Production circuits, dependencies, keys and acceptance paths were not changed by this round.','','## Footprint and setup','',
     '| Backend | Proving key (MiB) | Encoded proof package (bytes) | First-use peak RSS (GiB) |','|---|---:|---:|---:|']
    for r in rows:lines.append(f'| {r["candidate"]} | {r["proving_key_bytes"]/2**20:.2f} | {r["proof_bytes"]} | {r["first_peak_rss_bytes"]/2**30:.3f} |')
    bases=json.loads((CACHE/'selected-dh-operands/manifest.json').read_text());base_bytes=sum(Path(x['bases']['path']).stat().st_size for x in bases['operations'])
    setup_a=json.loads((CACHE/'selected-dh-a-keys/setup_measurement.json').read_text())['setup_ns']/1e9;setup_b=json.loads((CACHE/'selected-dh-b-gate/gate.json').read_text())['offline_keygen_ns']/1e9;setup_c=json.loads((CACHE/'native-affine-full-gate/keys/setup_ns.json').read_text())/1e9
    lines += ['',f'B additionally stores {base_bytes/2**20:.2f} MiB of encoded arithmetic bases. One-time development setup: A {setup_a:.3f} s, B {setup_b:.3f} s, C {setup_c:.3f} s; these costs are outside proving samples. Prepared public columns and all first-use arithmetic preparation are included in the matrix initialization.',
     f'Across all resident workers, peak process-tree RSS was {resources["peak_all_workers_rss_bytes"]/2**30:.3f} GiB; minimum reclaimable memory {resources["min_available_bytes"]/2**30:.3f} GiB; maximum swap {resources["max_swap_bytes"]/2**20:.0f} MiB. The guard completed without competing heavy jobs.','','## Historical checkpoint','',
     'The prior selected desktop session remains immutable. Its values below are a separate historical session, not paired samples or pooled statistical evidence.','',
     '| Backend | Prior warm median (s) | This round (s) | Observed reduction |','|---|---:|---:|---:|']
    for r in rows:lines.append(f'| {r["candidate"]} | {old[r["candidate"]]["warm_median_s"]:.4f} | {r["warm_median_s"]:.4f} | {100*r["historical_warm_reduction_fraction"]:.1f}% |')
    prior_analysis=json.loads((CACHE/'desktop-selected/analysis.json').read_text())
    old_c=next(f for f in prior_analysis['footprints'] if f['candidate']=='C')['warm_peak_rss_bytes']/2**30
    lines += ['',f'B first-proof observations were {old["B"]["first_s"]:.2f} s previously and {by["B"]["first_s"]:.2f} s here. Native Pari381 warm peak RSS increased from {old_c:.2f} to {by["C"]["warm_peak_rss_bytes"]/2**30:.2f} GiB. This memory tradeoff is material; the session comparison does not isolate allocator effects from retained preparation.']
    lines += ['','## Verification and limits','',
     'All three selected workers passed six complete API scenarios plus altered/truncated/trailing proof, altered statement and invalid-witness rejection before this matrix. Original and converted assignments were checked in full. The gnark DH parity gate covers exact coordinates and encoding; malformed selected/unselected keys and existing tier/EPK/scalar/detection mutations reject.',
     '', 'The native candidate passed 41 release unit tests, including independent Arkworks group parity, relation-bound public preparation, coefficient-helper rejection and paired-mask proof equality. B passed 11 release bin tests and 11 example tests covering canonical decoding, deterministic subgroup checks, every key slice/mask and relation/assignment invariants. Six native full-Transfer paired-randomness comparisons produced identical complete proof bytes; warm measurement proofs used fresh randomness.',
     '', 'The first native control attempt reused the candidate binary through a same-name Cargo-package cache collision. Its timing reports were excluded. Unique package identities, expected circuit digests/row counts and executable hashes now distinguish the controls; a reproducing regression test rejects the recorded failure. Focused build failures and corrected runs are retained. Production release-gated prover suites and formal certification were not run; formal work stays in shieldd-security.',
     '', 'Structured subset domains passed synthetic full-size polynomial identities but are not integrated proof systems. Their extra polynomial work must be weighed against shorter commitments. The synthetic Groth16 product kernel is not the current gnark coset-N implementation, so it is not a production Groth16 slowdown estimate. The stopped SnarkPack/verification campaign and its two 4,096-proof corpora were not resumed.',
     '', '## Evidence','',
     '- [Raw samples](../../tools/proving-experiment/cache/desktop-optimized/samples.jsonl), [analysis](../../tools/proving-experiment/cache/desktop-optimized/analysis.json), [completion hashes](../../tools/proving-experiment/cache/desktop-optimized/complete.json).',
     '- [Source and executable manifest](../../tools/proving-experiment/cache/optimized-circuit-source/final-manifest.json), [campaign plan](zkpari-optimization-campaign.md), [prior desktop report](transfer-proving-selected.md).',
     '', '![Latency and memory](transfer-proving-optimized.png)','']
    report.write_text('\n'.join(lines))
    import matplotlib;matplotlib.use('Agg');import matplotlib.pyplot as plt
    fig,axes=plt.subplots(1,3,figsize=(12,4));colors=['#3975a6','#148779','#b67a25'];names=['Groth16','Pari377','Pari381']
    for ax,key,title,unit,divisor in zip(axes,['warm_median_s','first_s','warm_peak_rss_bytes'],['Warm complete proof','First complete proof','Warm process-tree peak'],['Seconds','Seconds','GiB'],[1,1,2**30]):
        values=[r[key]/divisor for r in rows];ax.bar(range(3),values,color=colors,width=.6);ax.set_xticks(range(3),names);ax.set_title(title);ax.set_ylabel(unit);ax.set_ylim(0,max(values)*1.22);ax.spines[['top','right']].set_visible(False)
        for i,v in enumerate(values):ax.text(i,v+max(values)*.03,f'{v:.2f}',ha='center')
    for i,r in enumerate(rows):axes[0].scatter([i]*5,r['warm_values_s'],color='#202b33',s=12,zorder=3)
    fig.suptitle('Improved Transfer • matched desktop APIs • two workers',fontsize=13);fig.tight_layout();fig.savefig(report.with_suffix('.png'),dpi=180);fig.savefig(report.with_suffix('.svg'));plt.close(fig)
    print(json.dumps(rows,indent=2))
if __name__=='__main__':main()
