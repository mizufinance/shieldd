import json
import pathlib
import re

root = pathlib.Path(__file__).parent
result = {}
for mode in ('hashed','ordered'):
    lines = (root / f'{mode}-v2.log').read_text().splitlines()
    phases = []
    for line in lines:
        if not line.startswith('phase='):
            continue
        fields = {}
        for key, value in re.findall(r'([A-Za-z_0-9]+)=([^ ]+)', line):
            try: value = int(value)
            except ValueError: pass
            fields[key] = value
        phases.append(fields)
    result[mode] = phases
print(json.dumps(result, indent=2))
