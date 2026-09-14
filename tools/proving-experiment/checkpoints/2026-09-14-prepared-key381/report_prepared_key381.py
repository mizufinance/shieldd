"""Render the checked native key-storage comparison and its conversion cost."""
from pathlib import Path
import hashlib
import json

ROOT = Path(__file__).resolve().parents[2]
CACHE = ROOT / 'tools/proving-experiment/cache'
OUT = ROOT / 'docs/research/native-prepared-key381'


def checked(path):
    for name, expected in json.loads((path / 'complete.json').read_text())['hashes'].items():
        assert hashlib.sha256((path / name).read_bytes()).hexdigest() == expected, name
    return json.loads((path / 'results.json').read_text())


def main():
    result = checked(CACHE / 'c-prepared-key381-desktop')
    gate = checked(CACHE / 'c-prepared-key381-api-gate')
    conversion = json.loads((CACHE / 'c-prepared-key381-conversion/complete.json').read_text())
    assert result['proofs'] == 18 and result['all_verified']
    assert gate['proofs'] == 6 and gate['all_verified']
    assert conversion['complete_key_equal'] and conversion['original_canonical_bytes_equal']
    assert len(conversion['rejections']) == 8 and all(r['rejected'] for r in conversion['rejections'])
    assert json.loads((CACHE / 'prepared-key381-wasm.exit.json').read_text())['code'] == 0
    records = [json.loads(line) for line in (CACHE / 'c-prepared-key381-desktop/samples.jsonl').read_text().splitlines()]
    cross = [r for r in records if r.get('stage') == 'cross_verification']
    assert len(cross) == 18 and all(r['verified'] for r in cross)
    assert len({r['proof_sha256'] for r in cross}) == 18
    rows = {r['candidate']: r for r in result['rows']}
    control, candidate = rows['control'], rows['candidate']
    for row in rows.values():
        assert len(row['warm_values_s']) == 5 and len(row['first_values_s']) == 1
    first_reduction = 100 * (1 - candidate['first_median_s'] / control['first_median_s'])
    warm_change = 100 * (candidate['median_s'] / control['median_s'] - 1)
    lines = ['# Native Pari prepared proving-key storage', '',
        f"The first complete proof took **{control['first_median_s']:.6f}→{candidate['first_median_s']:.6f} seconds** in this bounded desktop comparison ({first_reduction:.2f}% lower). Warm median changed **{control['median_s']:.6f}→{candidate['median_s']:.6f} seconds** ({warm_change:+.2f}%). Stored key bytes increase **{conversion['source_bytes']:,}→{conversion['prepared_bytes']:,}**. These are the same key points and proving algorithm.", '',
        '| Storage | Warm median (s) | First proof (s) | Warm peak RSS (GiB) | API bytes |',
        '| --- | ---: | ---: | ---: | ---: |']
    for name, label in [('control', 'Compressed queries'), ('candidate', 'Prepared queries')]:
        r = rows[name]
        lines.append(f"| {label} | {r['median_s']:.6f} | {r['first_median_s']:.6f} | {r['peak_rss_bytes']/1024**3:.3f} | {r['proof_bytes']} |")
    lines += ['', 'M4 Pro, two workers. Each persistent worker receives three warmups and five measured standard regulated Transfer requests, alternating backend order. One fresh-process first proof per variant includes initialization; OS page cache was not flushed. Five warm samples and one first observation do not support p95, cold-tail or strong confidence claims.', '',
        'The full request clock includes checked witness decoding, construction, solving, mapping, proving, encoding and cleanup. Verification and cross-verification are outside that clock. All 18 fresh timing proofs verify under both key representations. Six valid witness scenarios and altered statement, malformed proof, wrong domain and invalid-witness cases pass before timing.', '',
        'Only four nonidentity proving-query roles use canonical 96-byte storage instead of compressed 48-byte storage: sparse witness entries, quotient, opening A and opening R. Verifying keys, commitment keys and masks retain their original codecs and identity policies. The checked loader enforces format and relation binding, vector bounds, ordered sparse indices, canonical encoding, curve membership and subgroup membership. Safe blst conversions construct projective points after validation. No new setup or protocol encoding is introduced.', '',
        f"Offline conversion of all {conversion['expanded_query_points']:,} query points measured source checked loading {conversion['source_checked_loading_ns']/1e9:.6f}s, encoding {conversion['prepared_encoding_ns']/1e9:.6f}s, prepared checked loading {conversion['prepared_checked_loading_ns']/1e9:.6f}s and remaining equality/negative validation {conversion['all_validation_ns']/1e9:.6f}s. The recorded total {conversion['total_ns']/1e9:.6f}s ends before final output-file writes; it is not an end-to-end I/O measurement. Full decoded-key equality and exact original canonical bytes match. Eight actual-scale invalid-key cases reject before the prepared file is admitted.", '',
        'Two component codec tests and five focused Commonware release tests pass. The 1,024-real-query-point component screen preserved checked canonical/curve/subgroup validation and exact outputs. Six paired-randomness complete proofs match the generic arithmetic reference byte for byte. Existing actual-relation polynomial gates are reused because arithmetic is unchanged. The scoped cryptography WebAssembly build passes. No production release-gated prover suite or formal certification ran.', '',
        'Warm observations, in execution order:']
    for name in ['control', 'candidate']:
        lines += ['', f"- {name}: " + ', '.join(f'{v:.9f}' for v in rows[name]['warm_values_s']) + ' seconds.']
    lines += ['', 'Retain this development storage option when faster initialization justifies the additional local key storage and distribution bytes. It does not establish a warm proving improvement, phone acceptability, verifier throughput or payment TPS. Earlier A/B/C and FFT comparisons remain separate samples.', '',
        '[Raw checkpoint](../../tools/proving-experiment/checkpoints/2026-09-14-prepared-key381/README.md) · [Previous FFT comparison](native-parallel-ntt-proving.md).', '',
        '![Native key storage comparison](native-prepared-key381.png)']
    OUT.with_suffix('.md').write_text('\n'.join(lines) + '\n')
    evidence = {'measurement': result, 'conversion': conversion, 'cross_verified_proofs': len(cross), 'first_observation_reduction_percent': first_reduction, 'warm_median_change_percent': warm_change}
    OUT.with_suffix('.json').write_text(json.dumps(evidence, indent=2) + '\n')
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    fig, axes = plt.subplots(1, 3, figsize=(11, 4), layout='constrained')
    for i, name in enumerate(['control', 'candidate']):
        r = rows[name]
        color = ['#64748b', '#2563eb'][i]
        axes[0].bar(i, r['first_median_s'], color=color)
        axes[1].scatter([i]*5, r['warm_values_s'], color=color)
        axes[1].plot([i-.18, i+.18], [r['median_s']]*2, color='black')
        axes[2].bar(i, conversion[['source_bytes', 'prepared_bytes'][i]]/1e6, color=color)
    for ax in axes:
        ax.set_xticks([0, 1], ['Compressed', 'Prepared'])
        ax.grid(axis='y', alpha=.2)
        ax.set_axisbelow(True)
    axes[0].set(ylabel='Seconds', title='First proof: one observation')
    axes[1].set(ylabel='Seconds', title='Warm: five observations')
    axes[2].set(ylabel='MB (decimal)', title='Encoded proving key')
    fig.suptitle('Native Pari · same key points · M4 Pro · two workers')
    fig.savefig(OUT.with_suffix('.png'), dpi=180)
    fig.savefig(OUT.with_suffix('.svg'))
    plt.close(fig)
    print(json.dumps(evidence, indent=2))


if __name__ == '__main__':
    main()
