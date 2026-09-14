"""Validate the complete prepared-key diagnostic and report startup/storage tradeoffs."""
from pathlib import Path
import hashlib, json, statistics
ROOT=Path(__file__).resolve().parents[2]
EXP=ROOT/'tools/proving-experiment';CACHE=EXP/'cache';OUT=ROOT/'docs/research/pari-prepared-key'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
 run=CACHE/'b-prepared-key-desktop'
 gate=CACHE/'b-prepared-key-api-gate'
 for name,h in json.loads((gate/'complete.json').read_text())['hashes'].items():assert sha(gate/name)==h,name
 gates=[json.loads(s) for s in (gate/'samples.jsonl').read_text().splitlines()]
 valid=[r for r in gates if r.get('stage')=='gate']
 assert len(valid)==6 and all(r['verified'] and r['negatives_rejected'] and r['wrong_domain_rejected'] for r in valid)
 for r in valid:assert sha(gate/'proofs'/f"{r['scenario']}.bin")==r['proof_sha256']
 assert any(r.get('stage')=='invalid_witness' and r['rejected'] for r in gates)
 for name,h in json.loads((run/'complete.json').read_text())['hashes'].items():assert sha(run/name)==h,name
 raw=[json.loads(s) for s in (run/'samples.jsonl').read_text().splitlines()]
 proofs=[r for r in raw if 'proof_sha256' in r]
 assert len(proofs)==len({r['proof_sha256'] for r in proofs})==22
 for r in proofs:assert r['verified'] and sha(run/'proofs'/f"{r['sample_id'].replace('/', '-')}.bin")==r['proof_sha256']
 for f in json.loads((run/'identity.json').read_text())['files']:assert sha(Path(f['path']))==f['sha256'],f['path']
 results=json.loads((run/'results.json').read_text());candidate,control=results['rows']
 for r in results['rows']:
  warm=[p['wall_ns']/1e9 for p in proofs if p['candidate']==r['candidate'] and p['kind']=='warm']
  first=[p['wall_ns']/1e9 for p in proofs if p['candidate']==r['candidate'] and p['kind']=='first']
  assert len(warm)==5 and len(first)==3 and warm==r['warm_values_s'] and first==r['first_values_s']
  assert statistics.median(warm)==r['median_s'] and statistics.median(first)==r['first_s']
 assert any(r.get('stage')=='cross_verification' and r['proofs']==18 and r['all_verified'] for r in raw)
 resources=[json.loads(s) for s in (CACHE/'b-prepared-key-desktop-run.resources.jsonl').read_text().splitlines()]
 assert all(r['swap_bytes']==0 and not r['competing_heavy_pids'] for r in resources)
 assert json.loads((CACHE/'b-prepared-key-desktop-run.exit.json').read_text())['code']==0
 imported=json.loads((CACHE/'b-prepared-key-import.json').read_text());assert imported['all_key_points_equal']
 assert sha(CACHE/'b-prepared-key.pk')==imported['prepared_sha256'] and sha(CACHE/'b-subset-keys/subset.pk')==imported['source_sha256']
 first_peak={label:max(r['peak_candidate_rss_bytes'] for r in proofs if r['candidate']==label and r['kind']=='first') for label in ['candidate','control']}
 gain=100*(1-candidate['first_s']/control['first_s'])
 analysis={**results,'first_peak_rss_bytes':first_peak,'first_median_reduction_percent':gain,'import':imported,'startup_components':{label:[r['response']['initialization'] for r in raw if r.get('stage')=='initialization' and r['candidate']==label] for label in ['candidate','control']},'guard_peak_tree_rss_bytes':max(r['tree_rss_bytes'] for r in resources)}
 OUT.with_suffix('.json').write_text(json.dumps(analysis,indent=2)+'\n')
 selected=candidate['first_s']<control['first_s']*.95 and candidate['median_s']<control['median_s']*1.05
 conclusion='Retain this prepared storage option for development' if selected else 'Do not select this prepared storage option'
 text=f'''# Pari377 checked prepared-key storage

{conclusion}. In a matched two-worker diagnostic, the median of three fresh-process first proofs changes from **{control['first_s']:.6f} to {candidate['first_s']:.6f} seconds** ({gain:.2f}% lower). Complete warm proving remains {control['median_s']:.6f} versus {candidate['median_s']:.6f} seconds. This is a key-loading/storage experiment; the selected subset A/B/C comparison remains immutable.

| Measurement | Compressed subset key | Uncompressed prepared key |
| --- | ---: | ---: |
| First proof, three observations | {', '.join(f'{v:.6f}' for v in control['first_values_s'])} s | {', '.join(f'{v:.6f}' for v in candidate['first_values_s'])} s |
| First-proof median | {control['first_s']:.6f} s | {candidate['first_s']:.6f} s |
| Warm median, five observations | {control['median_s']:.6f} s | {candidate['median_s']:.6f} s |
| Warm peak process-tree RSS | {control['peak_rss_bytes']/2**30:.3f} GiB | {candidate['peak_rss_bytes']/2**30:.3f} GiB |
| First-proof peak RSS, maximum of three | {first_peak['control']/2**30:.3f} GiB | {first_peak['candidate']/2**30:.3f} GiB |
| Encoded key | {imported['source_bytes']:,} B | {imported['prepared_bytes']:,} B |
| Complete proof package | 168 B | 168 B |

The candidate’s ordinary loader accepts only `SHBUPK01`: the same checked compressed verifying key and canonical uncompressed G1 query/mask vectors. It avoids G1 decompression. Every point still receives the same deterministic curve/subgroup checks, per-point canonical round trip, bounded vector lengths and whole-key canonical round trip. Domain/index association, transcript, setup points and proof encoding are unchanged. Go resident arithmetic continues its existing independent checks. This experiment does not yet remove duplicate Rust/Go validation or resident base ownership.

The offline `prepare-key` importer fully checks the frozen compressed development key and the new representation, then requires exact equality of the verifying key and every witness, quotient, opening and mask point. Its typed record reports checked source import {imported['checked_import_ns']/1e9:.6f}s, encoding {imported['encoding_ns']/1e9:.6f}s and prepared-key checked decode plus equality {imported['prepared_checked_decode_ns']/1e9:.6f}s. File writes and record hashing are outside those stage values. Preparation is separate from ordinary first use. Keeping both encodings costs {imported['source_bytes']+imported['prepared_bytes']:,} bytes; the existing resident-arithmetic base files are shared unchanged, with a new manifest binding the new key-file hash. No setup ceremony or new cryptographic key is generated.

The 13 release tests pass, including uncompressed/compressed acceptance parity over more than 190 valid and torsion/mixed-subgroup cases, off-curve rejection, malformed field/flag/identity/length inputs, all six query/mask key slots, key/domain/mapping/proof negatives, and transport checks. The first importer build failed on private-field access; its source/log are retained and the corrected build uses the checked descriptor. All six complete logical-witness API scenarios pass, with wrong-domain/statement, malformed proof and invalid-witness rejection before timing.

The timing run produces 22 fresh individually verified proofs: three warmups, five warm and three fresh-process first proofs per variant. The original 18 paired-session proofs also verify under the other representation’s worker, confirming actual full-key/proof interoperability. The additional four first proofs use separate sequential process lifetimes. Startup order is candidate/control, control/candidate, candidate/control. Warm blocks alternate order; both workers are resident, only one proves at a time. Each fresh-process observation includes compile, file read, all checked loading, arithmetic preparation, witness processing and the first proof. Verification is outside proving timers.

The M4 Pro has 48GiB RAM; Go/Rayon use two workers. Guards exit zero with no swap or competing heavy jobs. First use does not flush the OS page cache. Three first observations and five warm samples are descriptive, with no cold-tail, p95, statistical confidence, physical-phone or network-throughput claim. Production release-gated prover tests and formal certification were not run.

The [compact checkpoint](../../tools/proving-experiment/checkpoints/2026-09-14-prepared-key/README.md) retains raw observations, source/lock/binary/key identities, gate evidence and proof hashes. Generated binaries, keys and proofs stay in the ignored cache. This completes the bounded storage-format experiment; further ownership and circuit/arithmetic branches remain in the campaign ledger.

![Prepared-key comparison](pari-prepared-key.png)
'''
 OUT.with_suffix('.md').write_text(text)
 import matplotlib
 matplotlib.use('Agg')
 import matplotlib.pyplot as plt
 fig,axes=plt.subplots(1,3,figsize=(11,3.7),constrained_layout=True);labels=['Compressed','Prepared'];colors=['#65758b','#237d8c']
 for i,r in enumerate([control,candidate]):
  axes[0].scatter([i]*3,r['first_values_s'],color=colors[i]);axes[0].plot([i-.15,i+.15],[r['first_s']]*2,color='black')
  axes[1].scatter([i]*5,r['warm_values_s'],color=colors[i]);axes[1].plot([i-.15,i+.15],[r['median_s']]*2,color='black')
 for ax,title in zip(axes[:2],['First proof · three processes','Warm proving · five samples']):ax.set(title=title,ylabel='Complete request (seconds)',xticks=[0,1],xticklabels=labels)
 values=[imported['source_bytes']/2**20,imported['prepared_bytes']/2**20];bars=axes[2].bar(labels,values,color=colors);axes[2].bar_label(bars,fmt='%.1f',padding=3);axes[2].set(title='Encoded key storage',ylabel='MiB',ylim=(0,max(values)*1.2))
 fig.suptitle('Pari377 prepared key · same protocol and key points · full checks retained')
 fig.savefig(OUT.with_suffix('.png'),dpi=160);fig.savefig(OUT.with_suffix('.svg'));plt.close(fig)
if __name__=='__main__':main()
