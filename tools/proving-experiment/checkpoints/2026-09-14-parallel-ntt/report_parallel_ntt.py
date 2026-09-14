"""Render the bounded same-key native prover comparison from checked raw records."""
from pathlib import Path
import hashlib, json, statistics

ROOT=Path(__file__).resolve().parents[2]
CACHE=ROOT/'tools/proving-experiment/cache'
OUT=ROOT/'docs/research/native-parallel-ntt-proving'

def read_checked(path):
    complete=json.loads((path/'complete.json').read_text())
    for name,expected in complete['hashes'].items():
        assert hashlib.sha256((path/name).read_bytes()).hexdigest()==expected,name
    return json.loads((path/'results.json').read_text())

def main():
    result=read_checked(CACHE/'c-parallel-ntt-desktop')
    gate=read_checked(CACHE/'c-parallel-ntt-api-gate')
    assert gate['proofs']==6 and gate['all_verified']
    assert result['proofs']==18 and result['all_verified']
    rows={r['candidate']:r for r in result['rows']}
    candidate,control=rows['candidate'],rows['control']
    assert json.loads((CACHE/'parallel-ntt-wasm.exit.json').read_text())['code']==0
    for row in rows.values():assert len(row['warm_values_s'])==5 and len(row['first_values_s'])==1
    kernel=json.loads((CACHE/'parallel-ntt-cost.json').read_text())
    assert len(kernel['samples'])==32 and all(r['exact_output'] for r in kernel['samples'])
    kernel_ms={op:{m:statistics.median(r['ns']/1e6 for r in kernel['samples'] if r['operation']==op and r['method']==m and not r['warmup']) for m in ('reference','prepared')} for op in ('forward','inverse')}
    reduction=100*(1-candidate['median_s']/control['median_s'])
    lines=['# Bounded parallel native FFT\n',f"The same-key native Pari candidate changes warm full-API proving from **{control['median_s']:.6f} to {candidate['median_s']:.6f} seconds**, a **{reduction:.2f}% time reduction** in this bounded desktop screen. All 18 timing proofs verify.\n",'| Variant | Warm median (s) | First proof (s) | Warm peak RSS (GiB) | API bytes |','| --- | ---: | ---: | ---: | ---: |']
    for name,label in [('control','Fused-inverse reference'),('candidate','Parallel FFT')]:
        r=rows[name];lines.append(f"| {label} | {r['median_s']:.6f} | {r['first_values_s'][0]:.6f} | {r['peak_rss_bytes']/1024**3:.3f} | {r['proof_bytes']} |")
    lines+=['',f"The separate exact-output kernel screen measured forward {kernel_ms['forward']['reference']:.6f}→{kernel_ms['forward']['prepared']:.6f} ms and inverse {kernel_ms['inverse']['reference']:.6f}→{kernel_ms['inverse']['prepared']:.6f} ms. Both controls already use cached root powers and end normalization. Three kernel tests and all32timed output equalities pass. The screen creates one explicit two-worker pool outside warm clocks; preparation takes {kernel['execution_preparation_ns']/1e6:.6f} ms. The full prover reuses its existing pool.",'', 'M4 Pro, two-worker environment. Three warmups and five measured standard-regulated Transfer requests per persistent worker, alternating variant order. One fresh-process first proof per variant includes initialization and its first complete request; OS page cache was not flushed. Single first observations and five warm samples do not support cold-tail or p95 claims.','', 'Warm observations, in execution order:']
    for name in ['control','candidate']:lines+=['',f"- {name}: "+', '.join(f'{v:.9f}' for v in rows[name]['warm_values_s'])+' seconds.']
    lines+=['','The complete request clock includes checked witness decoding, live circuit construction/solving, mapping, proving, encoding and cleanup. Verification is outside that clock and required before admission. Both variants use the same checked comparator3/4 circuit, original proving key, proof format and prepared MSM engine. Circuit/key loading and FFT-table preparation remain in first-process initialization. No new setup was needed.','', 'Each FFT stage uses two disjoint mutable partitions through the existing proving strategy; join completion is its barrier. The final single large butterfly block splits corresponding left/right quarters with the correct second-partition twiddle offset. Dimensions below8192 remain serial. Bit reversal and normalization placement remain unchanged. The 8 MiB root tables and inverse-size scalar are unchanged, and transforms create no pool. Public-column preparation and the polynomial diagnostic remain sequential. Live proving uses the existing two-worker strategy. Generic multi-column NTT, verifier, row checks, masks, quotient degree/remainder checks and randomness are unchanged. RSS above is observed full process-tree peak.','', 'Six focused Commonware release tests pass: transform/subset equality, bounds, one/two-worker behavior across the partition threshold, and two existing retained-domain tests. All six actual original/converted polynomial oracle gates pass. Six paired-randomness complete proof cases produce identical bytes under the unchanged generic reference path and the prepared path; changed statements, truncated proofs and invalid witnesses reject. These seeded equality cases are correctness evidence, excluded from the timing corpus. Six additional persistent API gates check valid scenarios, wrong domain, altered/truncated/trailing proof encodings and statements; invalid witness proving rejects. The WebAssembly cryptography build passes. No production release-gated prover suite or formal certification ran.','', 'All samples, proofs, source and artifact identities and resource monitoring remain in the checkpoint. Do not pool these two-variant samples with earlier A/B/C runs. No phone acceptability, verifier-throughput or payment-TPS conclusion follows from this proving screen.','', '[Raw checkpoint](../../tools/proving-experiment/checkpoints/2026-09-14-parallel-ntt/README.md) · [Previous normalization comparison](native-fused-inverse-proving.md) · [Earlier matched A/B/C](transfer-proving-comparator-selected.md).','','![Same-key full API comparison](native-parallel-ntt-proving.png)']
    OUT.with_suffix('.md').write_text('\n'.join(lines)+'\n')
    OUT.with_suffix('.json').write_text(json.dumps(result,indent=2)+'\n')
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    fig,axes=plt.subplots(1,2,figsize=(9,4),layout='constrained')
    for i,name in enumerate(['control','candidate']):
        r=rows[name];axes[0].scatter([i]*5,r['warm_values_s'],color=['#64748b','#2563eb'][i],s=28)
        axes[0].plot([i-.18,i+.18],[r['median_s']]*2,color='black',lw=2)
        axes[1].bar(i,r['peak_rss_bytes']/1024**3,color=['#64748b','#2563eb'][i],width=.55)
    for ax in axes:ax.set_xticks([0,1],['Reference','Parallel FFT']);ax.grid(axis='y',alpha=.2);ax.set_axisbelow(True)
    axes[0].set(ylabel='Full API warm proving (seconds)',title='Five observations; line = median')
    axes[1].set(ylabel='Warm peak process-tree RSS (GiB)',title='Observed memory')
    fig.suptitle('Native Pari: same circuit and key · M4 Pro · two workers')
    fig.savefig(OUT.with_suffix('.png'),dpi=180);fig.savefig(OUT.with_suffix('.svg'));plt.close(fig)
    print(json.dumps({'warm_time_reduction_percent':reduction,'rows':result['rows']},indent=2))

if __name__=='__main__':main()
