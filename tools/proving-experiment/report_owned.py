"""Check and render the owned-admission full-API experiment without pooling sessions."""
from pathlib import Path
import hashlib,json,statistics
ROOT=Path(__file__).resolve().parents[2];EXP=ROOT/'tools/proving-experiment';CACHE=EXP/'cache';OUT=ROOT/'docs/research/pari-owned-admission'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def complete(path):
 for name,h in json.loads((path/'complete.json').read_text())['hashes'].items():assert sha(path/name)==h,name
 return [json.loads(s) for s in (path/'samples.jsonl').read_text().splitlines()]
def main():
 gate=CACHE/'b-owned-api-gate';gates=complete(gate);valid=[r for r in gates if r.get('stage')=='gate']
 assert len(valid)==6 and all(r['verified'] and r['negatives_rejected'] and r['wrong_domain_rejected'] for r in valid)
 for r in valid:assert sha(gate/'proofs'/f"{r['scenario']}.bin")==r['proof_sha256']
 assert any(r.get('stage')=='invalid_witness' and r['rejected'] for r in gates)
 eq=json.loads((CACHE/'b-owned-equivalence/records.json').read_text());assert len(eq)==6
 for r in eq:assert r['verified'] and r['exact_seeded_proof_equal'] and r['exact_mask_and_combined_msms_equal'] and sha(CACHE/'b-owned-equivalence'/f"{r['scenario']}.proof")==r['proof_sha256']
 for path,h in json.loads((CACHE/'b-owned-source/identity.json').read_text())['files'].items():assert sha(Path(path))==h,path
 run=CACHE/'b-owned-desktop';raw=complete(run);proofs=[r for r in raw if 'proof_sha256' in r]
 assert len(proofs)==len({r['proof_sha256'] for r in proofs})==22
 for r in proofs:assert r['verified'] and sha(run/'proofs'/f"{r['sample_id'].replace('/', '-')}.bin")==r['proof_sha256']
 for f in json.loads((run/'identity.json').read_text())['files']:assert sha(Path(f['path']))==f['sha256'],f['path']
 results=json.loads((run/'results.json').read_text());candidate,control=results['rows']
 for r in results['rows']:
  warm=[p['wall_ns']/1e9 for p in proofs if p['candidate']==r['candidate'] and p['kind']=='warm'];first=[p['wall_ns']/1e9 for p in proofs if p['candidate']==r['candidate'] and p['kind']=='first']
  assert len(warm)==5 and len(first)==3 and warm==r['warm_values_s'] and first==r['first_values_s']
  assert statistics.median(warm)==r['median_s'] and statistics.median(first)==r['first_s']
 assert any(r.get('stage')=='cross_verification' and r['proofs']==18 and r['all_verified'] for r in raw)
 resources=[json.loads(s) for s in (CACHE/'b-owned-desktop-run.resources.jsonl').read_text().splitlines()]
 assert all(r['swap_bytes']==0 and not r['competing_heavy_pids'] for r in resources)
 assert json.loads((CACHE/'b-owned-desktop-run.exit.json').read_text())['code']==0
 first_peak={label:max(r['peak_candidate_rss_bytes'] for r in proofs if r['candidate']==label and r['kind']=='first') for label in ['candidate','control']}
 manifest=CACHE/'b-prepared-key-bases/manifest.json';bases=sum(Path(o['bases']['path']).stat().st_size for o in json.loads(manifest.read_text())['operations']);key=(CACHE/'b-prepared-key.pk').stat().st_size
 components={label:[r['response']['initialization'] for r in raw if r.get('stage')=='initialization' and r['candidate']==label] for label in ['candidate','control']}
 warm_change=100*(candidate['median_s']/control['median_s']-1)
 gain=100*(1-candidate['first_s']/control['first_s']);rss=100*(1-candidate['peak_rss_bytes']/control['peak_rss_bytes'])
 analysis={**results,'first_median_reduction_percent':gain,'warm_median_increase_percent':warm_change,'warm_rss_reduction_percent':rss,'first_peak_rss_bytes':first_peak,'startup_components':components,'encoded_key_bytes':key,'control_base_file_bytes':bases,'control_manifest_bytes':manifest.stat().st_size,'guard_peak_tree_rss_bytes':max(r['tree_rss_bytes'] for r in resources)}
 OUT.with_suffix('.json').write_text(json.dumps(analysis,indent=2)+'\n')
 selected=candidate['first_s']<control['first_s']*.95 and candidate['median_s']<control['median_s']*1.05
 conclusion='Retain the owned-admission candidate for the desktop experiment' if selected else 'Do not select the owned-admission candidate'
 text=f'''# Pari377 owned arithmetic admission

{conclusion}. The median of three complete first proofs changes from **{control['first_s']:.6f} to {candidate['first_s']:.6f} seconds** ({gain:.2f}% lower). Warm proving is {control['median_s']:.6f} versus {candidate['median_s']:.6f} seconds. The observed warm median is {warm_change:.2f}% higher; warm peak process-tree RSS is {rss:.2f}% lower. Retention favors the substantial startup/storage benefit despite this small measured warm regression. These values come from one targeted matched session; earlier prepared-key and A/B/C sessions are not pooled or rewritten.

| Measurement | Prepared-key / general Go loader | Owned checked admission |
| --- | ---: | ---: |
| Three first-proof observations | {', '.join(f'{v:.6f}' for v in control['first_values_s'])} s | {', '.join(f'{v:.6f}' for v in candidate['first_values_s'])} s |
| First-proof median | {control['first_s']:.6f} s | {candidate['first_s']:.6f} s |
| Warm median, five requests | {control['median_s']:.6f} s | {candidate['median_s']:.6f} s |
| Warm peak process-tree RSS | {control['peak_rss_bytes']/2**30:.3f} GiB | {candidate['peak_rss_bytes']/2**30:.3f} GiB |
| First-proof peak RSS, maximum of three | {first_peak['control']/2**30:.3f} GiB | {first_peak['candidate']/2**30:.3f} GiB |
| Encoded prepared key | {key:,} B | {key:,} B |
| Additional resident-base files required at startup | {bases:,} B | 0 B |
| Individual proof package | 168 B | 168 B |

Both variants use the exact same prepared subset key and protocol. The candidate generates no setup/key material and needs no additional format conversion. The prior [prepared-key conversion](pari-prepared-key.md) and its storage cost still apply to both variants. The control additionally reads its resident-base files and a {manifest.stat().st_size:,}-byte manifest; the candidate streams directly from the validated key and needs neither. Historical files remain in the ignored cache for reproducibility. Binary and library footprints are not included in these key/base byte counts.

## What changed and what establishes trust

Rust remains the external key-admission boundary. An opaque immutable checked-key record is constructible only through complete bounded canonical decoding and deterministic curve/subgroup validation. It then passes actual Transfer matrix/index and domain association before delegation. A raw constructed key cannot enter this path. Verifying-key checks, proof transcript, masks, statements and cryptographic key points are unchanged.

The checked parent creates a private stdin bootstrap pipe and a separate inherited Unix socket for subsequent commands. The external witness/proof API cannot forward caller-supplied bootstrap points, flags or cached manifests. The private child has no file-loader mode. Bootstrap metadata binds curve/protocol, domain, exact verifying-key/index/source-key digests, a fresh session nonce, and ordered query lengths/content. Go enforces bounded strict framing, canonical coordinates, curve membership, query order/counts and content integrity. The complete Rust subgroup check supplies subgroup provenance; hashes are framing/identity integrity, not authentication of an arbitrary cache or local caller. The existing general Go loader is unchanged and keeps all its checks.

The parent moves each query vector into a bounded streaming writer and frees it before the next query. Go keeps the same combined witness/quotient and opening-A/opening-R arrays. Rust retains the two mask points. Bootstrap must end at EOF before readiness; the parent accepts only the receipt bound to this exact key/session. Typed query identifiers and recorded lengths replace Rust point-slice pointer checks. Any command/framing/child failure poisons and terminates the delegated instance. Partial admission cannot be restarted or used for proving. Both returned 97-byte MSM points still receive complete canonical, curve and subgroup checking.

This is a trust boundary inside the owned desktop process tree. The private arithmetic child is not a standalone validator for arbitrary callers. It does not change production acceptance paths or add a public unverified loader. Logical vector release is not itself an RSS result; the table reports sampled actual process-tree memory, including allocator retention and child processes.

## Correctness and execution evidence

Eighteen Rust tests pass, including immutable checked admission, matrix/key association, transfer-state rejection, canonical/torsion key cases, malformed frames and wrong child acknowledgement/session rejection. Six private Go bootstrap tests pass for metadata/domain/count/order, content digests, canonical/off-curve points, EOF/truncation/trailing data, no public file mode, combined-array sharing and actual MSM behavior. The three unchanged general-loader tests pass. The separately gated actual-child integration test was explicitly run: exact seeded proof parity, wrong-session rejection, command failure, poisoning and subsequent proof rejection all pass.

The exact existing Transfer key then passes six real solved-assignment comparisons against the frozen prepared-key Rust protocol: complete seeded proof bytes, the mask MSM and both combined MSM outputs agree exactly. Original and converted assignments are checked. Fixed randomness is confined to this equality diagnostic; ordinary API measurement uses fresh randomness. All six logical-witness API scenarios and statement/domain/proof/witness negatives pass before measurement.

The paired timing run has three warmups, five measured warm requests and three fresh-process first proofs per variant:22 new unique proof bytes, all individually verified. The original18 paired-session proofs also verify under the other worker. First-process order is candidate/control, control/candidate, candidate/control. Warm blocks alternate order, with one active proof at a time. Complete first use includes process creation, relation compilation, checked key loading, hashing/streaming/child admission, witness processing and the first proof. Warm time includes the complete witness API, solving/mapping, polynomial work, IPC, MSMs and encoding; verification follows outside the timer.

The M4 Pro has48GiB RAM and Go/Rayon use two workers. Guards exit zero with no swap or competing heavy work. No OS page-cache flush was performed. Three first and five warm observations are descriptive, with no cold-tail/p95, confidence, phone or network-throughput claim. The owned-child integration check above ran; the production release-gated prover suite and formal certification did not.

Raw samples, source/lock/binary/key identities, exact-equivalence records, proof hashes and guard evidence are retained in [the compact checkpoint](../../tools/proving-experiment/checkpoints/2026-09-14-owned-admission/README.md). See [the admission design](pari-owned-admission-design.md). This completes the bounded ownership experiment; remaining circuit/arithmetic branches keep the broader campaign active.

![Owned admission diagnostic](pari-owned-admission.png)
'''
 OUT.with_suffix('.md').write_text(text)
 import matplotlib
 matplotlib.use('Agg')
 import matplotlib.pyplot as plt
 fig,axes=plt.subplots(1,3,figsize=(11.5,3.7),constrained_layout=True);labels=['General loader','Owned admission'];colors=['#65758b','#237d8c']
 for i,r in enumerate([control,candidate]):
  axes[0].scatter([i]*3,r['first_values_s'],color=colors[i]);axes[0].plot([i-.15,i+.15],[r['first_s']]*2,color='black')
  axes[1].scatter([i]*5,r['warm_values_s'],color=colors[i]);axes[1].plot([i-.15,i+.15],[r['median_s']]*2,color='black')
 for ax,title in zip(axes[:2],['First proof · three processes','Warm proving · five samples']):ax.set(title=title,ylabel='Complete request (seconds)',xticks=[0,1],xticklabels=labels)
 values=[r['peak_rss_bytes']/2**30 for r in [control,candidate]];bars=axes[2].bar(labels,values,color=colors);axes[2].bar_label(bars,fmt='%.2f',padding=3);axes[2].set(title='Warm peak process-tree RSS',ylabel='GiB',ylim=(0,max(values)*1.2))
 fig.suptitle('Pari377 owned admission · exact key/protocol · complete Rust subgroup checks')
 fig.savefig(OUT.with_suffix('.png'),dpi=160);fig.savefig(OUT.with_suffix('.svg'));plt.close(fig)
if __name__=='__main__':main()
