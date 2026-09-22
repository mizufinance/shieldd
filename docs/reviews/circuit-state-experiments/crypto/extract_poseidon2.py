from pathlib import Path
import re,json
s=Path(__file__).with_name('poseidon2_instance_bls12.rs').read_text()
out={}
for w in (3,8):
 for typ in ('MAT_DIAG','RC'):
  name=f'{typ}{w}' + ('_M_1' if typ=='MAT_DIAG' else '')
  body=s.split(f'pub static ref {name}:',1)[1].split('pub static ref ',1)[0]
  vals=re.findall(r'from_hex\("0x([0-9a-f]+)"\)',body)
  if typ=='MAT_DIAG': assert len(vals)==w,(name,len(vals))
  else: assert len(vals)==(64 if w==3 else 65)*w,(name,len(vals))
  out[name]=vals
Path(__file__).with_name('poseidon2_params.json').write_text(json.dumps(out))
print({k:len(v) for k,v in out.items()})
