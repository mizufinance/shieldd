"""Render the bounded complete-API comparator3/4 result from checked raw records."""
from pathlib import Path
import hashlib, json, statistics
ROOT=Path(__file__).resolve().parents[2]
CACHE=ROOT/'tools/proving-experiment/cache'
OUT=ROOT/'docs/research/native-comparator34-proving'

def main():
    run=CACHE/'c-comparator34-quick'
    for name,h in json.loads((run/'complete.json').read_text())['hashes'].items():
        assert hashlib.sha256((run/name).read_bytes()).hexdigest()==h,name
    result=json.loads((run/'results.json').read_text())
    rows={r['candidate']:r for r in result['rows']};control=rows['control'];candidate=rows['candidate']
    improvement=100*(1-candidate['median_s']/control['median_s'])
    keys=json.loads((CACHE/'c-comparator34-full-gate/keys/record.json').read_text())
    result['warm_latency_reduction_percent']=improvement
    result['key_bytes']={'control':60078047,'candidate':keys['pk_bytes']}
    OUT.with_suffix('.json').write_text(json.dumps(result,indent=2)+'\n')
    table='\n'.join(f"| {'Selected native' if k=='control' else 'Comparator + smaller domain'} | {r['median_s']:.6f} | {min(r['warm_values_s']):.6f}–{max(r['warm_values_s']):.6f} | {r['warm_peak_rss_bytes']/2**30:.3f} | {r['proof_bytes']} |" for k,r in [('control',control),('candidate',candidate)])
    OUT.with_suffix('.md').write_text(f'''# Native comparator and smaller-domain proving

Retain the comparator and M196608/N262144 domain: the matched quick desktop screen reduces complete warm proving latency by **{improvement:.2f}%**, from **{control['median_s']:.6f}s to {candidate['median_s']:.6f}s**. The same exact six native Transfer statements remain valid. This is a targeted C comparison; the fair updated A/B comparison remains pending.

| Variant | Warm median(s) | Five-sample range(s) | Warm peak RSS(GiB) | Package bytes |
| --- | ---: | ---: | ---: | ---: |
{table}

M4 Pro, two workers, three warmups and five measured complete witness-API requests per variant. Backend order alternates by block. Every request includes checked decoding, live witness construction/solving, prepared assignment mapping, proving and encoding; every output is individually verified outside the proving clock. Sixteen distinct proofs were generated in the warm invocation. Five observations are a quick optimization screen; no p95 or confidence interval is claimed.

Separate startup observations used the same checked sources, keys, binaries, witnesses and two-worker settings: candidate19.586019s once; control22.894164s and23.011949s. These three proofs were preserved and reverified. The startup invocation stopped intentionally to honor the quick-measurement budget; its raw log and exact executing source remain marked incomplete. The warm comparison ran separately. Fresh-process startup includes initialization and first proof, but does not flush the operating-system page cache. Unequal small counts do not establish cold-tail performance.

The native circuit decreases from220009rows/220029columns to191516rows/191501columns (12.95% fewer rows). Retained roots decrease from229376 to196608 while the FFT stays262144. The new proving key is51671551bytes versus60078047bytes (13.99% smaller). One-time setup took{keys['setup_ns']/1e9:.6f}s; it is excluded from request timing. Encoded proof packages stay218bytes.

The domain excludes FFT root indices1 modulo4. Interpolation, four-term vanishing polynomial, masks, coset division, public columns, query lengths, transcript namespaces and checked key descriptors consistently use that relation. Its digest is `722fba7093a6188bba83708f0abe409a39cf34fa4451b95594e82781b68f3783`. The candidate rejects seven-eighths keys rather than interpreting them under the new domain.

Correctness evidence comprises45 relevant release tests across focused invocations; six original/converted full assignments with independent masked-polynomial division and public-column checks; six fresh-key proofs rejecting changed statements, commitments, keys, domains and malformed encodings; and six persistent full-API gates with invalid-witness rejection. Key descriptor tests exercise both sequential and parallel checked decoders. The first build exposed a missing test trait import; another copied test still requested the old domain. Both were corrected and focused reruns pass. No soundness gate was skipped.

All completed guards exited0 without swap or competing heavy jobs. The earlier startup stop was a sample-budget correction, not resource pressure. The desktop library checks and subsequent WebAssembly cryptography build pass, along with four scoped Commonware domain/batch tests. The follow-up records are in the comparator-selected checkpoint. Production release-gated prover tests and formal certification were not run. Production dependencies, circuits, proof formats and acceptance paths are unchanged. These are desktop proving results, without phone acceptability, validator throughput or payment TPS claims.

[Raw checkpoint](../../tools/proving-experiment/checkpoints/2026-09-14-comparator34/README.md) · [Typed result](native-comparator34-proving.json) · [Quick runner](../../tools/proving-experiment/comparator34_quick.py).

![Matched complete proving latency and warm memory](native-comparator34-proving.png)
''')
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    fig,axes=plt.subplots(1,2,figsize=(9,3.6),constrained_layout=True)
    labels=['Selected native','Comparator + smaller domain'];colors=['#697e93','#187b83']
    for i,r in enumerate([control,candidate]):
        axes[0].scatter([i]*len(r['warm_values_s']),r['warm_values_s'],color=colors[i])
        axes[0].plot([i-.18,i+.18],[r['median_s']]*2,color=colors[i],linewidth=2)
    axes[0].set(xticks=[0,1],xticklabels=labels,ylabel='Seconds',title='Complete warm proving · five samples',ylim=(0,3))
    bars=axes[1].bar(labels,[r['warm_peak_rss_bytes']/2**30 for r in [control,candidate]],color=colors)
    axes[1].bar_label(bars,fmt='%.3f',padding=3)
    axes[1].set(ylabel='GiB',title='Warm peak process RSS',ylim=(0,1.6))
    fig.suptitle('M4 Pro · two workers · standard regulated Transfer')
    for ext in ['png','svg']:fig.savefig(OUT.with_suffix('.'+ext),dpi=170)
    p=OUT.with_suffix('.svg');p.write_text('\n'.join(l.rstrip() for l in p.read_text().splitlines())+'\n')

if __name__=='__main__':main()
