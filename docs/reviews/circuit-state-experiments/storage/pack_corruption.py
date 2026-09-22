import json
import pathlib
import subprocess
import tempfile

root = pathlib.Path('/tmp/shieldd-experiments/storage')
source = root / 'lifecycle-1000-v5.ngp'
runner = pathlib.Path('/Users/antoinecyr/Documents/Source/shieldd/target/ci/pack_only')
original = source.read_bytes()
variants = {
    'bad_header': bytes([original[0] ^ 1]) + original[1:],
    'bad_payload': original[:150] + bytes([original[150] ^ 1]) + original[151:],
    'bad_checksum': original[:-1] + bytes([original[-1] ^ 1]),
    'truncated': original[:-1],
}
results = []
with tempfile.TemporaryDirectory(prefix='shieldd-pack-corruption-') as tmp:
    for name, payload in variants.items():
        path = pathlib.Path(tmp) / (name + '.ngp')
        path.write_bytes(payload)
        result = subprocess.run([runner, str(path)], text=True, capture_output=True)
        results.append({'variant': name, 'exit_code': result.returncode, 'rejected': result.returncode != 0, 'stderr': result.stderr.strip()[:300]})
print(json.dumps(results, indent=2))
assert all(item['rejected'] for item in results)
