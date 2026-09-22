from pathlib import Path
import json,re,hashlib
base=Path(__file__).parent
metric=re.compile(r'EXPERIMENT_METRICS (.*)')
label=re.compile(r'^(\w+) domain=(\d+)')
results={}
for folder in ['baseline','arithmetic','crypto']:
 for p in sorted((base/folder).glob('*.log')):
  data=[];pending=None
  for line in p.read_text(errors='replace').splitlines():
   m=metric.search(line)
   if m:pending={k:int(v) for k,v in re.findall(r'(\w+)=(\d+)',m[1])}
   m=label.match(line)
   if m and pending:
    data.append({'label':m[1],**pending});pending=None
  if data:results[str(p.relative_to(base))]={'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'relations':data}
proofs={}
for p in sorted((base/'proofs').glob('*.log')):
 data=[]
 for l in p.read_text(errors='replace').splitlines():
  if l.startswith('PROOF_BENCH '):
   data.append({k:int(v) if v.isdigit() else v for k,v in re.findall(r'(\w+)=(\S+)',l)})
 proofs[p.stem]={'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'measurements':data,'exit_zero':'EXIT=0' in p.read_text()}
(base/'compiled-and-proof-results.json').write_text(json.dumps({'relations':results,'proofs':proofs},indent=2)+'\n')
print('Compiled result logs',len(results),'proof logs',len(proofs))
