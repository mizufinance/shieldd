#!/usr/bin/env python3
"""Check that vendored Orbis Rust sources match the pinned upstream copy."""
import hashlib
import json
from pathlib import Path

root = Path(__file__).resolve().parents[1] / 'third_party/orbis-crypto'
manifest = json.loads((root / 'upstream.json').read_text())
expected = manifest['sha256']
actual = {str(path.relative_to(root)) for directory in ['src', 'benches'] for path in (root / directory).rglob('*') if path.is_file()}
assert actual == {name for name in expected if name.startswith(('src/', 'benches/'))}, 'Orbis source inventory changed'
for name, digest in expected.items():
    assert hashlib.sha256((root / name).read_bytes()).hexdigest() == digest, f'Orbis upstream source changed: {name}'
print(f'Unchanged Orbis source: {manifest["revision"]}')
