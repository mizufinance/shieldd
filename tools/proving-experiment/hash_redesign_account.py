"""Bounded source accounting; projected hash rows are not compiled secure parameters."""
from pathlib import Path
import collections, hashlib, json, math
ROOT=Path(__file__).resolve().parents[2]
SPIKE=ROOT/'tools/proving-experiment'

def run():
    inventory=SPIKE/'cache/reuse-comparator/reuse.json'
    data=json.loads(inventory.read_text())
    hashes=[e for e in data['events'] if 'Hash' in e['kind']]
    assert len(hashes)==184 and all(e['identity_complete'] and e['duplicate_of'] is None for e in hashes)
    by_arity=collections.defaultdict(lambda:{'calls':0,'rows':0,'columns':0})
    for event in hashes:
        cell=by_arity[event['kind']['Hash']['arity']]
        for k in ['rows','columns']:cell[k]+=event[k]
        cell['calls']+=1
    old=SPIKE/'candidates/native-subset';current=SPIKE/'candidates/native-prepared-key381'
    files=[inventory,Path(__file__),SPIKE/'candidates/reuse-screen/src/hash.rs',current/'src/hash.rs']
    for name in ['transfer.rs','compliance.rs','encryption.rs','map.rs','group.rs','scalar.rs','recovery.rs','lib.rs']:
        a=old/'src'/name;b=current/'src'/name
        assert a.read_bytes()==b.read_bytes(),name
        files += [a,b]
    for name in ['poseidon381.json','poseidon381-wide.json']:
        a=old/'params'/name;b=current/'params'/name
        assert a.read_bytes()==b.read_bytes(),name
        files += [a,b]
    p=52435875175126190479447740508185965837690552500527637822603658699938581184513
    rows=sum(e['rows'] for e in hashes);assert rows==82248
    projections=[]
    for width,rate,rounds in [(4,3,14),(6,5,12)]:
        cells=[{'arity':a,'calls':v['calls'],'permutations_per_call':math.ceil(a/rate),'projected_rows_per_call':math.ceil(a/rate)*6*(width//2)*rounds}for a,v in sorted(by_arity.items())]
        projected=sum(v['calls']*v['projected_rows_per_call']for v in cells)
        projections.append({'width':width,'rate':rate,'rounds':rounds,'cells':cells,'projected_hash_rows':projected,'projected_row_saving':rows-projected,'projected_total_rows':191516-rows+projected})
    result={'schema':'shieldd.native_hash_redesign_account.v1','field_modulus':str(p),'gcd_cube_exponent':math.gcd(3,p-1),'gcd_fifth_exponent':math.gcd(5,p-1),'current_rows':191516,'current_columns':191501,'current_domain':196608,'fft_domain':262144,'hash_calls':len(hashes),'hash_rows':rows,'hash_columns':sum(e['columns']for e in hashes),'hash_fraction':rows/191516,'arities':[{'arity':a,**v}for a,v in sorted(by_arity.items())],'projections':projections,'thresholds':[{'retained_domain':m,'required_row_saving':191516-m,'required_fraction_of_hash_rows':(191516-m)/rows,'implemented_domain_family':m==131072}for m in [163840,131072]],'b_reference':{'square_rows':224778,'retained_domain':229376,'next_single_coset_domain':196608,'required_row_saving':224778-196608,'hash_contribution_measured_here':False},'source_hashes':{str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()for p in sorted(set(files))},'limits':'Existing exact inventory carried forward after hash code/call-site and parameter identity review. No new circuit compile or performance measurement. Anemoi projections assume direct six-square-row Flystel constraints, alpha5, listed full rounds, and indicated rate; exclude constant folding, final padding, extra outlining/nonzeros, hint witness time and security parameter reassessment. No instantiated width6 parameters or proving-speed claim.'}
    return result
if __name__=='__main__':
    target=ROOT/'docs/research/native-hash-redesign-quick.json'
    target.write_text(json.dumps(run(),indent=2)+'\n')
    print(target)
