import json, random, statistics
from pathlib import Path
R=random.Random(20260921);D=24;TRIALS=1000
def nodes(ix):return sum(len({x>>(2*(l+1)) for x in ix}) for l in range(D))
def siblings(ix):
 # Nontrivial multiproof sibling commitments at each internal node.
 total=0
 for l in range(D):
  groups={}
  for x in ix: groups.setdefault(x>>(2*(l+1)),set()).add((x>>(2*l))&3)
  total+=sum(4-len(children) for children in groups.values())
 return total
def distinct(xs):return len(set(xs))==len(xs)
scenarios={
 'uniform_48bit':lambda:R.sample(range(1<<48),8),
 'same_4ary_parent':lambda:[(R.randrange(1<<46)<<2)+i for i in range(4)]+[(R.randrange(1<<46)<<2)+i for i in range(4)],
 'contiguous_8':lambda:list(range((R.randrange(1<<45)<<3), (R.randrange(1<<45)<<3)+8)),
 'same_4ary_grandparent':lambda:list(range((R.randrange(1<<44)<<4),(R.randrange(1<<44)<<4)+8)),
}
# Rebuild samples directly to ensure all eight positions are distinct.
def sample(name):
 if name=='uniform_48bit':return R.sample(range(1<<48),8)
 if name=='contiguous_8':start=R.randrange(1<<45)<<3;return list(range(start,start+8))
 if name=='same_4ary_parent':
  a,b=R.sample(range(1<<46),2);return [a*4+i for i in range(4)]+[b*4+i for i in range(4)]
 start=R.randrange(1<<44)<<4;return list(range(start,start+8))
out={}
for name in scenarios:
 values=[(nodes(ix:=sample(name)),siblings(ix)) for _ in range(TRIALS)]
 out[name]={'trials':TRIALS,'inputs':8,'independent_hashes':8*D,'mean_distinct_hashes':round(statistics.mean(x[0] for x in values),3),'minimum_distinct_hashes':min(x[0] for x in values),'maximum_distinct_hashes':max(x[0] for x in values),'independent_sibling_fields':8*D*3,'mean_multiproof_sibling_fields':round(statistics.mean(x[1] for x in values),3)}
Path(__file__).with_name('multiproof_trace.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
