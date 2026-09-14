"""One compact matched round of the three independently gated subset provers."""
from contextlib import ExitStack
from dataclasses import asdict
from pathlib import Path
import json, os, platform, statistics, subprocess, sys, time
import gnark_subset_desktop as a
import subset_desktop as b
import native_subset_desktop as c
from api_gate import CACHE, SPIKE, digest, record, require
from desktop import Monitor, checked_sample
from selected_gate import fixtures

MODULES = {'A': a, 'B': b, 'C': c}
ORDERS = ('ABC', 'BCA', 'CAB', 'CBA', 'ACB')


def identities():
    files = {}
    for label, module in MODULES.items():
        for entry in module.identities(module.VARIANTS[:1], fixtures('C' if label == 'C' else 'B')):
            files[entry['path']] = entry['sha256']
    paths = [Path(__file__), SPIKE/'native_api_gate.py']
    for gate in ('a-subset-api-gate', 'b-subset-api-gate', 'c-subset-api-gate'):
        paths += [CACHE/gate/name for name in ('identity.json', 'complete.json', 'samples.jsonl')]
    for checkpoint in ('2026-09-14-gnark-subset', '2026-09-14-subset-proving', '2026-09-14-native-subset'):
        paths += [p for p in (SPIKE/'checkpoints'/checkpoint).rglob('*') if p.is_file()]
    for path in paths:
        files[str(path.resolve())] = digest(path.read_bytes())
    return [{'path': path, 'sha256': h} for path, h in sorted(files.items())]


def main():
    require(len(sys.argv) == 2, 'usage: subset_selected_desktop.py NEW_CACHE_DIRECTORY')
    out = Path(sys.argv[1]).resolve()
    require(out.is_relative_to(CACHE) and not out.exists(), 'new cache directory required')
    require(all(os.environ.get(k) == '2' for k in ('CARGO_BUILD_JOBS', 'RAYON_NUM_THREADS', 'GOMAXPROCS')), 'matched two-worker profile required')
    for module in MODULES.values():
        module.validate_gate()
    standard = {label: next(f for f in fixtures('C' if label == 'C' else 'B') if f.scenario == 'transfer') for label in MODULES}
    native = next(f for f in json.loads((c.WITNESSES/'manifest.json').read_text())['facts'] if f['scenario'] == 'transfer')
    require(native['source_witness_sha256'] == standard['A'].sha256 == standard['B'].sha256, 'logical witness mapping changed')
    payloads = {label: f.path.read_bytes() for label, f in standard.items()}
    require(all(digest(payloads[label]) == f.sha256 for label, f in standard.items()), 'witness changed')
    identity = {'schema': 'shieldd.subset_selected_desktop.v1', 'platform': platform.platform(), 'machine': platform.machine(),
                'cpu': subprocess.check_output(['sysctl', '-n', 'machdep.cpu.brand_string'], text=True).strip(),
                'ram_bytes': int(subprocess.check_output(['sysctl', '-n', 'hw.memsize'])), 'workers': 2,
                'warmup_orders': ['CBA', 'ABC'], 'measured_orders': ORDERS, 'files': identities()}
    out.mkdir(); (out/'proofs').mkdir()
    (out/'identity.json').write_text(json.dumps(identity, indent=2)+'\n')
    samples = []; hashes = set(); workers = {}
    with ExitStack() as stack, (out/'samples.jsonl').open('x') as log, Monitor(out/'memory.jsonl') as monitor:
        for label, module in MODULES.items():
            monitor.phase = f'first/{label}'
            start = time.perf_counter_ns()
            worker = module.SubsetWorker(module.VARIANTS[0], lambda pid, label=label: monitor.roots.__setitem__(label, pid))
            ready_ns = time.perf_counter_ns()-start
            stack.callback(worker.close); workers[label] = worker
            record(log, {'stage': 'initialization', 'candidate': label, 'wall_ns': ready_ns, 'response': asdict(worker.ready.header)})
            samples.append(checked_sample(worker, label, payloads[label], standard[label].statement, f'first/{label}', True, monitor, out, log, hashes, start, ready_ns))
            print(f'{label}: checked initialization and first proof complete', flush=True)
        for measured, orders in ((False, ('CBA', 'ABC')), (True, ORDERS)):
            for index, order in enumerate(orders):
                for label in order:
                    sample_id = f'{"warm" if measured else "warmup"}/{index}/{label}'
                    samples.append(checked_sample(workers[label], label, payloads[label], standard[label].statement, sample_id, measured, monitor, out, log, hashes))
                print(f'{"measured" if measured else "warmup"} block {index+1} verified', flush=True)
    require(all(w.process.returncode == 0 for w in workers.values()), 'worker failed at shutdown')
    require(len(hashes) == 24 and sum(s.measured for s in samples) == 18, 'incomplete proof matrix')
    require(identity['files'] == identities(), 'bound sources or artifacts changed during measurement')
    rows = []
    for label in MODULES:
        warm = [s for s in samples if s.candidate == label and s.kind == 'warm']
        first = [s for s in samples if s.candidate == label and s.kind == 'first']
        require(len(warm) == 5 and len(first) == 1, 'incomplete candidate')
        rows.append({'candidate': label, 'warm_values_s': [s.wall_ns/1e9 for s in warm],
                     'median_s': statistics.median(s.wall_ns for s in warm)/1e9, 'first_s': first[0].wall_ns/1e9,
                     'peak_rss_bytes': max(s.peak_candidate_rss_bytes for s in warm), 'proof_bytes': first[0].proof_bytes})
    result = {'schema': identity['schema'], 'rows': rows, 'proofs': len(hashes), 'all_verified': True}
    (out/'results.json').write_text(json.dumps(result, indent=2)+'\n')
    (out/'complete.json').write_text(json.dumps({'schema': identity['schema'], 'hashes': {p.name: digest(p.read_bytes()) for p in sorted(out.iterdir()) if p.is_file()}}, indent=2)+'\n')
    print(json.dumps(result), flush=True)


if __name__ == '__main__':
    main()
