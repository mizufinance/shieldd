"""Render the bounded matched comparator A/B/C proving matrix."""
from pathlib import Path
import hashlib,json
ROOT=Path(__file__).resolve().parents[2]
CACHE=ROOT/'tools/proving-experiment/cache'
OUT=ROOT/'docs/research/transfer-proving-comparator-selected'
LABELS={'A':'Groth16/BLS12-377','B':'ZK-Pari/BLS12-377','C':'Native Pari/BLS12-381'}

def main():
    directory=CACHE/'comparator-selected-desktop'
    for name,h in json.loads((directory/'complete.json').read_text())['hashes'].items():
        assert hashlib.sha256((directory/name).read_bytes()).hexdigest()==h,name
    result=json.loads((directory/'results.json').read_text());rows={r['candidate']:r for r in result['rows']}
    assert result['distinct_proofs']==27 and result['all_verified'] and set(rows)==set('ABC')
    for row in rows.values():assert len(row['warm_values_s'])==5
    result['proving_regression_vs_A_percent']={k:100*(r['median_s']/rows['A']['median_s']-1) for k,r in rows.items()}
    result['key_bytes']={'A':json.loads((CACHE/'a-comparator377-keys/circuit_metadata.json').read_text())['proving_key_size_bytes'],'B':(CACHE/'b-comparator377-keys/subset.pk').stat().st_size,'C':(CACHE/'c-comparator34-full-gate/keys/native.pk').stat().st_size}
    OUT.with_suffix('.json').write_text(json.dumps(result,indent=2)+'\n')
    table='\n'.join(f"| {k}: {LABELS[k]} | {r['median_s']:.6f} | {min(r['warm_values_s']):.6f}–{max(r['warm_values_s']):.6f} | {r['first_s']:.6f} | {r['warm_peak_rss_bytes']/2**30:.3f} | {r['proof_bytes']} |" for k,r in rows.items())
    raw='\n'.join(f"- {k}: "+', '.join(f'{v:.6f}' for v in r['warm_values_s'])+'seconds.' for k,r in rows.items())
    fastest=min(rows,key=lambda k:rows[k]['median_s'])
    OUT.with_suffix('.md').write_text(f'''# Matched Transfer proving after comparator optimization

**{LABELS[fastest]} has the lowest observed warm proving latency in this desktop comparison.** Warm medians are A{rows['A']['median_s']:.6f}s, B{rows['B']['median_s']:.6f}s and C{rows['C']['median_s']:.6f}s. Relative to A, B takes{result['proving_regression_vs_A_percent']['B']:.2f}%longer and C takes{result['proving_regression_vs_A_percent']['C']:.2f}%longer. Every timing proof verifies.

| Candidate | Warm median(s) | Five-sample range(s) | First proof(s) | Warm peak RSS(GiB) | API package(bytes) |
| --- | ---: | ---: | ---: | ---: | ---: |
{table}

M4 Pro, two workers with matched Go/Rayon settings. Each persistent worker completes three warmups and five measured standard-regulated Transfer requests. Backend order rotates across blocks; the process initialization order is A,B,C. One fresh-process first proof per backend includes process launch, circuit/key preparation and its complete first request. The operating-system page cache was not flushed. Small sample counts are a quick optimization screen: no p95, uncertainty interval or cold-tail conclusion is claimed.

The full request clock includes checked witness decoding, live construction/solving, all per-request mapping and foreign-process work, proving and output encoding. Proof verification occurs after that clock and must succeed before the sample is admitted. All27 proof packages (nine warmups, fifteen warm samples and three first proofs) are distinct and verified. Sample files, identities and raw process-tree memory records are retained; source and artifact hashes are checked before and after the run.

Five warm observations in execution order:

{raw}

A and B share the exact BLS12-377 strict-comparator Transfer relation:154224 R1CS rows and141728 wires, preserving the single public statement hash and all six original witness scenarios. A uses the selected gnark subset Groth16 setup/prover with M196608/N262144. B has224778 converted square rows/212280 witness wires and M229376/N262144, with the selected checked owned-admission arithmetic worker. B's complete implementation includes the earlier loader/ownership improvement; its startup number is not an isolated comparator effect.

C uses the native BLS12-381 Transfer relation with191516 square rows/191501 columns and M196608/N262144. It preserves the six native witness statements and the same source logical facts. Its field and statement bytes differ from A/B. The earlier isolated C comparison measured2.582560042→2.311950125s, a10.48%warm improvement; those samples remain separate from this matrix. [Targeted C report](native-comparator34-proving.md)

Stored development proving keys are A{result['key_bytes']['A']}bytes, B{result['key_bytes']['B']}bytes and C{result['key_bytes']['C']}bytes. B uses checked uncompressed prepared-key storage. Package sizes above are the complete development API encodings; they are not a SnarkPack aggregate-size or network-bandwidth measurement. One-time key generation is recorded separately in each setup checkpoint and excluded from request timing.

Correctness precedes timing. A's six fresh-key generation proofs and six full-API scenarios pass. B passes19 focused Rust tests including the real private-child failure test, six canonical-reference proof/mapping gates, six subset-protocol proof/negative gates, six exact seeded proof/combined-MSM equivalence cases, and six full-API scenarios. The seeded parity cases are excluded from the timing corpus. C's45 relevant release tests, six original/converted polynomial gates, six fresh-key proofs and six full-API scenarios pass. Full-API checks reject malformed/truncated/trailing proofs, changed statements, invalid witnesses and wrong keys or domains as applicable. The Go comparator tests and worker-frame test pass on the new A source. Four additional Commonware domain/batch tests and the WebAssembly cryptography build pass; the initial test-filter invocation selected zero tests and was corrected without changing source. Production release-gated prover suites and formal certification were not run in this round.

This report answers desktop proving cost. Physical-phone acceptability and production adoption remain follow-up decisions. The previous SnarkPack/verification campaign remains stopped and its corpora are unchanged; this round makes no validator-throughput or payment-TPS claim. These isolated development candidates do not alter the production backend.

[Raw checkpoint](../../tools/proving-experiment/checkpoints/2026-09-14-comparator-selected/README.md) · [Typed result](transfer-proving-comparator-selected.json) · [Matched runner](../../tools/proving-experiment/comparator_selected.py).

![Matched warm and first-proof latency](transfer-proving-comparator-selected.png)
''')
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    fig,axes=plt.subplots(1,2,figsize=(10,3.9),constrained_layout=True)
    colors=['#697e93','#187b83','#a87939']
    labels=['Groth16 377','ZK-Pari 377','Native Pari 381']
    for i,k in enumerate('ABC'):
        r=rows[k]
        axes[0].scatter([i]*5,r['warm_values_s'],color=colors[i],zorder=3)
        axes[0].plot([i-.2,i+.2],[r['median_s']]*2,color=colors[i],linewidth=2)
    axes[0].set(xticks=range(3),xticklabels=labels,ylabel='Seconds',title='Complete warm request · five samples',ylim=(0,max(r['median_s'] for r in rows.values())*1.3))
    bars=axes[1].bar(labels,[rows[k]['first_s'] for k in 'ABC'],color=colors)
    axes[1].bar_label(bars,fmt='%.2f',padding=3)
    axes[1].set(ylabel='Seconds',title='Fresh process through first proof · one sample',ylim=(0,max(r['first_s'] for r in rows.values())*1.2))
    fig.suptitle('M4 Pro · two workers · standard regulated Transfer · 27 verified proofs')
    for ext in ['png','svg']:fig.savefig(OUT.with_suffix('.'+ext),dpi=170)
    p=OUT.with_suffix('.svg');p.write_text('\n'.join(l.rstrip() for l in p.read_text().splitlines())+'\n')

if __name__=='__main__':main()
