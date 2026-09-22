import json
from pathlib import Path
p=52435875175126190479447740508185965837690552500527637822603658699938581184513
j=json.loads(Path(__file__).with_name('poseidon2_params.json').read_text())
def ext(s):
 w=len(s)
 if w==3:
  z=sum(s)%p;return [(v+z)%p for v in s]
 for k in (0,4):
  x=s[k:k+4];t0=x[0]+x[1];t1=x[2]+x[3];t2=2*x[1]+t1;t3=2*x[3]+t0;t4=4*t1+t3;t5=4*t0+t2;s[k:k+4]=[(t3+t5)%p,t5%p,(t2+t4)%p,t4%p]
 for i in range(4):z=s[i]+s[i+4];s[i]=(s[i]+z)%p;s[i+4]=(s[i+4]+z)%p
 return s
def perm(w):
 diag=[int(x,16) for x in j[f'MAT_DIAG{w}_M_1']];flat=[int(x,16) for x in j[f'RC{w}']];rc=[flat[i:i+w] for i in range(0,len(flat),w)]
 s=ext(list(range(w)))
 for r,row in enumerate(rc):
  if r<4 or r>=len(rc)-4:s=ext([pow((x+k)%p,5,p) for x,k in zip(s,row)])
  else:
   s[0]=pow((s[0]+row[0])%p,5,p);z=sum(s)%p
   if w==3:s=[(s[0]+z)%p,(s[1]+z)%p,(2*s[2]+z)%p]
   else:s=[(s[i]*diag[i]+z)%p for i in range(w)]
 return [f'{x:064x}' for x in s]
for w in (3,8):print(w,*perm(w),sep='\n')
