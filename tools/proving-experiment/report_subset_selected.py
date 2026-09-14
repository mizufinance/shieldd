"""Verify and render the single selected subset A/B/C desktop session."""
from pathlib import Path
import hashlib, json, statistics

ROOT = Path(__file__).resolve().parents[2]
EXP = ROOT/'tools/proving-experiment'
CACHE = EXP/'cache'
OUT = ROOT/'docs/research/transfer-proving-subset-selected'
NAMES = {'A': 'Groth16 / BLS12-377', 'B': 'ZK-Pari / BLS12-377', 'C': 'Native Pari / BLS12-381'}


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    run = CACHE/'desktop-subset-selected'
    for name, h in json.loads((run/'complete.json').read_text())['hashes'].items():
        assert sha(run/name) == h, name
    raw = [json.loads(line) for line in (run/'samples.jsonl').read_text().splitlines()]
    proofs = [r for r in raw if 'proof_sha256' in r]
    assert len(proofs) == len({r['proof_sha256'] for r in proofs}) == 24
    for r in proofs:
        assert r['verified'] and sha(run/'proofs'/f"{r['sample_id'].replace('/', '-')}.bin") == r['proof_sha256']
    result = json.loads((run/'results.json').read_text())
    for row in result['rows']:
        warm = [r for r in proofs if r['candidate'] == row['candidate'] and r['kind'] == 'warm']
        first = [r for r in proofs if r['candidate'] == row['candidate'] and r['kind'] == 'first']
        assert len(warm) == 5 and len(first) == 1
        assert [r['wall_ns']/1e9 for r in warm] == row['warm_values_s']
        assert statistics.median(row['warm_values_s']) == row['median_s']
        assert first[0]['wall_ns']/1e9 == row['first_s']
        assert max(r['peak_candidate_rss_bytes'] for r in warm) == row['peak_rss_bytes']
    resources = [json.loads(line) for line in (CACHE/'subset-selected-desktop-run.resources.jsonl').read_text().splitlines()]
    assert all(r['swap_bytes'] == 0 and not r['competing_heavy_pids'] for r in resources)
    assert json.loads((CACHE/'subset-selected-desktop-run.exit.json').read_text())['code'] == 0
    identity = json.loads((run/'identity.json').read_text())
    for entry in identity['files']:
        assert sha(Path(entry['path'])) == entry['sha256'], entry['path']
    by = {r['candidate']: r for r in result['rows']}
    analysis = {**result, 'warm_ratio_to_A': {k: r['median_s']/by['A']['median_s'] for k,r in by.items()},
                'guard_peak_tree_rss_bytes': max(r['tree_rss_bytes'] for r in resources),
                'minimum_available_bytes': min(r['available_bytes'] for r in resources),
                'identity_sha256': sha(run/'identity.json'), 'samples_sha256': sha(run/'samples.jsonl')}
    OUT.with_suffix('.json').write_text(json.dumps(analysis, indent=2)+'\n')
    lines = ['# Selected subset Transfer proving comparison', '',
             f"Groth16 remains the fastest prover in this matched desktop round. Pari377 takes **{by['B']['median_s']/by['A']['median_s']:.2f}×** its warm proving time; native Pari381 takes **{by['C']['median_s']/by['A']['median_s']:.2f}×**. These are complete proving requests, not validator verification or payment throughput.", '',
             '| Selected experimental prover | Warm median | Fresh-process first proof | Warm peak RSS | Proof package |',
             '| --- | ---: | ---: | ---: | ---: |']
    for label, r in by.items():
        lines.append(f"| {NAMES[label]} | {r['median_s']:.6f} s | {r['first_s']:.6f} s | {r['peak_rss_bytes']/2**30:.3f} GiB | {r['proof_bytes']} B |")
    lines += ['', 'All 24 fresh proofs verify individually: two warmups, five measured warm proofs and one fresh-process first proof per candidate. The representative scenario is standard regulated Transfer. All six scenarios and candidate-specific negatives passed the separately saved full-API gates before this run; their source, key, binary, witness and evidence hashes are revalidated before measurement. Native C uses the corresponding native witness, with its source-witness hash checked against A/B.', '',
              'The M4 Pro has 48 GiB RAM. Go and Rayon use two workers; Cargo jobs are limited to two. Persistent workers are resident together, but only one proof is active at a time. First use is measured immediately after each fresh process starts, including compilation, checked key loading and preparation. Warm time includes logical-witness decoding/construction, solving, mapping or conversion, polynomial arithmetic, IPC where applicable, MSMs and output encoding. Individual verification follows outside the timer. RSS is sampled process-tree memory, including B’s child solver and arithmetic worker.', '',
              'Warmups use CBA then ABC order; the five measured blocks use ABC, BCA, CAB, CBA, ACB. The order rotates and reverses but five blocks cannot place every candidate equally often in every position. Earlier pair sessions and A/B/C matrices remain immutable and are not pooled. Guard exit is zero, with zero swap and no detected competing heavy work.', '',
              '| Prover | Five warm observations (seconds) |', '| --- | --- |']
    for label,r in by.items():
        lines.append(f"| {label} | {', '.join(f'{v:.6f}' for v in r['warm_values_s'])} |")
    lines += ['', 'Five warm samples support a descriptive comparison, not p95 or strong confidence claims. First proof is one observation per candidate; the OS page cache was not flushed. These are desktop results. Physical phone latency and memory remain unmeasured.', '',
              '## What is selected', '',
              'A uses the selected-before-DH gnark circuit over BLS12-377 and its fully integrated subset QAP: M196608 retained rows within an N262144 FFT. The standard Groth16 proof format and verifier remain unchanged, with fresh development keys for the changed QAP. The relation contains 155122 R1CS constraints.', '',
              'B uses that same circuit and solver, the exact square-R1CS conversion (226578 rows), checked G1 decoding, prepared public polynomials and coset quotient, and combined gnark377 MSM arithmetic. Its complete subset protocol uses M229376/N262144 with a separate key codec and transcript binding. All witness/bridge costs remain in the request. The B solver binary retains its separately gated artifact set; it does not substitute A’s new Groth16 proving key.', '',
              'C uses the full native affine Transfer over BLS12-381/Jubjub, prepared blst arithmetic, checked lifetime reclamation and its complete subset protocol. It retains 220009 real rows and 220029 real columns with M229376/N262144. The unchanged rows/layout reproduce the previous relation digest when rehashed under the previous domain namespace. Its curve and hashes differ from A/B; it is a semantically corresponding experimental protocol, not a drop-in production backend.', '',
              '| Prover | Encoded proving key | One-time setup |', '| --- | ---: | ---: |',
              '| A | 37,587,069 B | 24.318608 s |', '| B | 54,317,136 B | 4.404768 s |', '| C | 60,078,047 B | 25.121745 s |', '',
              'Setup values come from each candidate’s retained development setup record and were not rerun in this matched session. Compilation is separate from those setup values. Proof package bytes include each experiment’s wrapper and statement, not just cryptographic points. Keys and proof packages therefore have explicitly different formats.', '',
              '## Evidence and remaining decisions', '',
              'The preceding candidate gates include four focused gnark subset tests and three Go worker tests; twelve subset377 release tests; 44 native release tests and three focused prepared/domain-audit tests. Each candidate passed all six complete Transfer positive/negative API gates, including invalid witnesses and malformed proofs. Subset-specific domain/key/row mapping, masks, public polynomial and canonicality checks are recorded in the individual reports. This final session reuses those gates after identity validation and verifies all new proofs; it does not rerun the production release-gated prover suite or establish formal certification.', '',
              'The circuit, checked loading, lifetime, polynomial and first subset-domain round is complete and all three selected workers are retained. The broader campaign remains active: B’s checked first-use and duplicated key/base ownership are the next bounded target. Correctly constrained hinted multiplication, exact hash/compiler reuse and selected arithmetic feasibility remain explicit research branches, not claimed exhausted. Production adoption and physical-phone measurements remain separate decisions. The stopped historical verification/SnarkPack campaign was not resumed.', '',
              'Raw samples, source and artifact identities, proof hashes and resource evidence are in [the compact checkpoint](../../tools/proving-experiment/checkpoints/2026-09-14-subset-selected/README.md). Candidate reports: [A subset](groth16-subset-proving.md), [B subset](pari-subset-proving.md), [C subset](native-subset-proving.md). Generated binaries, keys and proofs remain in the ignored local cache.', '',
              '![Selected subset proving comparison](transfer-proving-subset-selected.png)', '']
    OUT.with_suffix('.md').write_text('\n'.join(lines))
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    fig, axes = plt.subplots(1, 3, figsize=(12, 3.8), constrained_layout=True)
    labels = ['Groth16 377', 'Pari377', 'Pari381']; colors = ['#65758b', '#237d8c', '#aa6644']
    for i,r in enumerate(result['rows']):
        axes[0].scatter([i]*5, r['warm_values_s'], color=colors[i])
        axes[0].plot([i-.15,i+.15], [r['median_s']]*2, color='black')
    axes[0].set(title='Warm proving · five samples', ylabel='Complete request (seconds)', xticks=range(3), xticklabels=labels)
    for ax, key, scale, title, ylabel in [(axes[1], 'first_s', 1, 'First proof · one observation', 'Process start through proof (s)'), (axes[2], 'peak_rss_bytes', 2**30, 'Warm peak memory', 'Process-tree RSS (GiB)')]:
        values = [r[key]/scale for r in result['rows']]
        bars = ax.bar(labels, values, color=colors); ax.bar_label(bars, fmt='%.2f', padding=3)
        ax.set(title=title, ylabel=ylabel, ylim=(0,max(values)*1.2))
    fig.suptitle('Selected subset Transfer provers · M4 Pro · two workers · all 24 proofs verified')
    fig.savefig(OUT.with_suffix('.png'), dpi=160); fig.savefig(OUT.with_suffix('.svg')); plt.close(fig)


if __name__ == '__main__':
    main()
