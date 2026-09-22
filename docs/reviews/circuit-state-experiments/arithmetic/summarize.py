#!/usr/bin/env python3
import json,re
from pathlib import Path
base=Path('/tmp/shieldd-experiments/arithmetic')
logs={'baseline':Path('/tmp/shieldd-experiments/baseline/catalogue.log')}
logs.update({p.stem:p for p in base.glob('run-*.log')})
result={}
for name,path in logs.items():
    if not path.exists():continue
    pending=None;families={}
    for line in path.read_text().splitlines():
        m=re.search(r'EXPERIMENT_METRICS rows=(\d+) columns=(\d+) squared_nnz=(\d+) linear_nnz=(\d+) domain=(\d+)',line)
        if m:pending=dict(zip(('rows','columns','squared_nnz','linear_nnz','domain'),map(int,m.groups())))
        m=re.match(r'(\w+) domain=(\d+) public=',line)
        if m and pending:families[m.group(1)]=pending;pending=None
    if families:result[name]=families
(base/'metrics.json').write_text(json.dumps(result,indent=2))
for name, families in result.items():
    print(name, ', '.join(f'{f}:{m["rows"]}/{m["columns"]}/d{m["domain"]}' for f,m in families.items()))
