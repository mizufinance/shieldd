"""Compile and solve the isolated full Transfer; export canonical assignments without keys."""
from pathlib import Path
import hashlib,json,subprocess,sys,time
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[3]
OUT=ROOT/'tools/proving-experiment/cache/selected-dh-compile'
SCENARIOS=['transfer','transfer_unregulated','transfer_flagged','transfer_accumulating','transfer_over_limit_disclosure','transfer_accumulator_continuation']
def sha(path): return hashlib.sha256(path.read_bytes()).hexdigest()
def main():
 OUT.mkdir(exist_ok=False)
 worker=subprocess.Popen([str(ROOT/'tools/proving-experiment/cache/selected-dh-go'),str(OUT)],stdin=subprocess.PIPE,stdout=subprocess.PIPE,text=True)
 def call(op,**kw):
  start=time.perf_counter_ns(); worker.stdin.write(json.dumps(dict(op=op,**kw))+'\n');worker.stdin.flush()
  response=json.loads(worker.stdout.readline());response['request_wall_ns']=time.perf_counter_ns()-start
  return response
 try:
  init=call('init'); assert not init.get('error'),init
  (OUT/'initialization.json').write_text(json.dumps(init,indent=2)+'\n')
  (OUT/'metadata.json').write_text(json.dumps(init['metadata'],indent=2)+'\n')
  export=call('export',path=str(OUT/'transfer.r1cs'));assert not export.get('error'),export
  rows=[]
  for scenario in SCENARIOS:
   response=call('solve',scenario=scenario,path=str(ROOT/'tools/zkpari-spike/cache/99228210a891ffa23aeb/over_limit_disclosure.bin'))
   assert not response.get('error'),response
   target=OUT/f'{scenario}.json';target.write_text(json.dumps(response)+'\n')
   rows.append(dict(scenario=scenario,assignment_sha256=sha(target),witness_sha256=response['witness_sha256'],solve_ns=response['solve_ns'],witness_ns=response['witness_ns']))
   print(scenario,'solved',flush=True)
  negative=call('solve',scenario='transfer_accumulator_over_limit');assert negative.get('error'),negative
  (OUT/'invalid.json').write_text(json.dumps(negative,indent=2)+'\n')
  sources={str(p.relative_to(HERE)):sha(p) for p in sorted(HERE.rglob('*')) if p.is_file() and '__pycache__' not in p.parts}
  (OUT/'complete.json').write_text(json.dumps(dict(schema='shieldd.proving_experiment.selected_dh_compile.v1',metadata=init['metadata'],scenarios=rows,invalid_over_limit_rejected=True,sources=sources,binary_sha256=sha(ROOT/'tools/proving-experiment/cache/selected-dh-go'),limit='Full compile/solve only; no new key or proof.'),indent=2)+'\n')
 finally:
  worker.stdin.close();worker.wait(timeout=10)
 assert worker.returncode==0
if __name__=='__main__':main()
