"""Render the bounded same-key native prover comparison from checked raw records."""
from pathlib import Path
import hashlib, json, statistics

ROOT=Path(__file__).resolve().parents[2]
CACHE=ROOT/'tools/proving-experiment/cache'
OUT=ROOT/'docs/research/native-prepared-ntt-proving'

def read_checked(path):
    complete=json.loads((path/'complete.json').read_text())
    for name,expected in complete['hashes'].items():
        assert hashlib.sha256((path/name).read_bytes()).hexdigest()==expected,name
    return json.loads((path/'results.json').read_text())

def main():
    result=read_checked(CACHE/'c-prepared-ntt-desktop')
    gate=read_checked(CACHE/'c-prepared-ntt-api-gate')
    assert gate['proofs']==6 and gate['all_verified']
    assert result['proofs']==18 and result['all_verified']
    rows={r['candidate']:r for r in result['rows']}
    candidate,control=rows['candidate'],rows['control']
    for row in rows.values():assert len(row['warm_values_s'])==5 and len(row['first_values_s'])==1
    reduction=100*(1-candidate['median_s']/control['median_s'])
    lines=['# Prover-owned FFT preparation\n',f"The same-key native Pari candidate changes warm full-API proving from **{control['median_s']:.6f} to {candidate['median_s']:.6f} seconds**, a **{reduction:.2f}% time reduction** in this bounded desktop screen. All 18 timing proofs verify.\n",'| Variant | Warm median (s) | First proof (s) | Warm peak RSS (GiB) | API bytes |','| --- | ---: | ---: | ---: | ---: |']
    for name,label in [('control','Comparator3/4 reference'),('candidate','Prepared FFT')]:
        r=rows[name];lines.append(f"| {label} | {r['median_s']:.6f} | {r['first_values_s'][0]:.6f} | {r['peak_rss_bytes']/1024**3:.3f} | {r['proof_bytes']} |")
    lines+=['','M4 Pro, two-worker environment. Three warmups and five measured standard-regulated Transfer requests per persistent worker, alternating variant order. One fresh-process first proof per variant includes initialization and its first complete request; OS page cache was not flushed. Single first observations and five warm samples do not support cold-tail or p95 claims.','', 'Warm observations, in execution order:']
    for name in ['control','candidate']:lines+=['',f"- {name}: "+', '.join(f'{v:.9f}' for v in rows[name]['warm_values_s'])+' seconds.']
    lines+=['','The complete request clock includes checked witness decoding, live circuit construction/solving, mapping, proving, encoding and cleanup. Verification is outside that clock and required before admission. Both variants use the same checked comparator3/4 circuit, original proving key, proof format and prepared MSM engine. Circuit/key loading and FFT-table preparation remain in first-process initialization. No new setup was needed.','', 'One immutable forward/inverse table pair per prover uses 8 MiB. Subset interpolation and quotient transforms reuse those tables. Generic multi-column NTT, verifier code, relation checks, masking, quotient degree/remainder checks and proof randomness are unchanged. The earlier isolated table construction cost was 3.451 ms; it is not subtracted from first-process measurements. RSS above is the observed full process-tree peak, not merely table storage.','', 'Five focused Commonware release tests pass: three transform/subset equality and bounds tests plus two existing retained-domain tests. All six actual original/converted polynomial oracle gates pass. Six paired-randomness complete proof cases produce identical bytes under the unchanged generic reference path and the prepared path; changed statements, truncated proofs and invalid witnesses reject. These seeded equality cases are correctness evidence, excluded from the timing corpus. Six additional persistent API gates check valid scenarios, wrong domain, altered/truncated/trailing proof encodings and statements; invalid witness proving rejects. The WebAssembly cryptography build passes. No production release-gated prover suite or formal certification ran.','', 'All samples, proofs, source and artifact identities and resource monitoring remain in the checkpoint. Do not pool these two-variant samples with earlier A/B/C runs. No phone acceptability, verifier-throughput or payment-TPS conclusion follows from this proving screen.','', '[Raw checkpoint](../../tools/proving-experiment/checkpoints/2026-09-14-prepared-ntt/README.md) · [Kernel screen](prepared-ntt-screen.md) · [Earlier matched A/B/C](transfer-proving-comparator-selected.md).','','![Same-key full API comparison](native-prepared-ntt-proving.png)']
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
    for ax in axes:ax.set_xticks([0,1],['Reference','Prepared FFT']);ax.grid(axis='y',alpha=.2);ax.set_axisbelow(True)
    axes[0].set(ylabel='Full API warm proving (seconds)',title='Five observations; line = median')
    axes[1].set(ylabel='Warm peak process-tree RSS (GiB)',title='Observed memory')
    fig.suptitle('Native Pari: same circuit and key · M4 Pro · two workers')
    fig.savefig(OUT.with_suffix('.png'),dpi=180);fig.savefig(OUT.with_suffix('.svg'));plt.close(fig)
    print(json.dumps({'warm_time_reduction_percent':reduction,'rows':result['rows']},indent=2))

if __name__=='__main__':main()
