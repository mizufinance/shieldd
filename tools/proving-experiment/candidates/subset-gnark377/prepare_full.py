"""Prepare the complete development gnark subset path in a new source cache."""
from pathlib import Path
import hashlib,json,shutil
HERE=Path(__file__).resolve().parent
EXPERIMENT=HERE.parents[1]
OUT=EXPERIMENT/'cache/a-subset-full-source'
UPSTREAM=Path.home()/'go/pkg/mod/github.com/consensys/gnark@v0.15.0'
assert not OUT.exists()
shutil.copytree(UPSTREAM,OUT/'gnark')
shutil.copytree(EXPERIMENT/'candidates/selected-dh',OUT/'worker')
OUT.chmod(0o755)
for p in OUT.rglob('*'):p.chmod(0o755 if p.is_dir() else 0o644)
base=OUT/'gnark/backend/groth16/bls12-377'
for p in (HERE/'gnark').glob('*.go'):shutil.copyfile(p,base/p.name)

def replace(text,old,new):
 assert text.count(old)==1,old
 return text.replace(old,new)

p=base/'setup.go';s=p.read_text()
s=replace(s,'Domain fft.Domain','Domain fft.Domain\n SubsetRemoved uint64\n subset *SubsetExperiment')
s=replace(s,'domain := fft.NewDomain(uint64(r1cs.GetNbConstraints()))','domain := fft.NewDomain(max(8,uint64((4*r1cs.GetNbConstraints()+2)/3)))\n pk.SubsetRemoved=domain.Cardinality/4')
s=replace(s,'// Setup coeffs to compute pk.G1.A, pk.G1.B, pk.G1.K','''// Avoid every FFT root, including the excluded coset, when sampling setup.
 for {var power fr.Element;power.Exp(toxicWaste.t,new(big.Int).SetUint64(domain.Cardinality));if !power.IsOne() && !toxicWaste.t.IsZero(){break};if _,err:=toxicWaste.t.SetRandom();err!=nil{return err}}
 // Setup coeffs to compute pk.G1.A, pk.G1.B, pk.G1.K''')
a=s.index('\tZ := make([]fr.Element, domain.Cardinality)');b=s.index('\n\t// mark points at infinity',a)
s=s[:a]+'\tZ := subsetQueries(domain,toxicWaste.t,toxicWaste.deltaInv)\n'+s[b:]
a=s.index('\tbitReverse(g1PointsAff[offset : offset+int(domain.Cardinality)])');b=s.index('\n\tvk.G1.K =',a)
s=s[:a]+'\tpk.G1.Z = g1PointsAff[offset : offset+len(Z)]\n\toffset += len(Z)\n'+s[b:]
assert s.count('pk.Domain = *domain')==2
s=s.replace('pk.Domain = *domain','pk.Domain = *domain\n if err:=pk.prepareSubset();err!=nil{return err}',1)
a=s.index('\tone := fr.One()',s.index('func setupABC'));b=s.index('\n\taccumulate :=',a)
s=s[:a]+'\tweights:=subsetLagranges(domain,toxicWaste.t,r1cs.GetNbConstraints())\n\tvar L fr.Element\n'+s[b:]
start=s.index('func setupABC');end=s.index('// toxicWaste toxic waste',start);tail=s[start:end]
tail=replace(tail,'for c := it.Next(); c != nil; c = it.Next() {','for c := it.Next(); c != nil; c = it.Next() {\n L=weights[j]')
a=tail.index('\t\t// Li+1 =');b=tail.index('\n\t\tj++',a);tail=tail[:a]+tail[b:];s=s[:start]+tail+s[end:]
p.write_text(s)

p=base/'prove.go';s=p.read_text()
s=replace(s,'opt, err := backend.NewProverConfig(opts...)','''if pk.subset==nil || pk.SubsetRemoved!=pk.Domain.Cardinality/4 || pk.subset.n!=int(pk.Domain.Cardinality) || len(pk.G1.Z)!=pk.subset.m-1 || r1cs.GetNbConstraints()>pk.subset.m {return nil,fmt.Errorf("invalid subset proving key")}
 opt, err := backend.NewProverConfig(opts...)''')
s=replace(s,'chHDone := make(chan struct{}, 1)','chHDone := make(chan error, 1)')
s=replace(s,'h = computeH(solution.A, solution.B, solution.C, &pk.Domain)','var polynomialError error\n h,polynomialError = pk.subset.Polynomial(solution.A, solution.B, solution.C)')
s=replace(s,'chHDone <- struct{}{}','chHDone <- polynomialError')
s=replace(s,'sizeH := int(pk.Domain.Cardinality - 1) // comes from the fact the deg(H)=(n-1)+(n-1)-n=n-2','sizeH := len(pk.G1.Z)')
s=replace(s,'\t<-chHDone','\tif err:= <-chHDone;err!=nil{return nil,err}')
p.write_text(s)

p=base/'marshal.go';s=p.read_text()
s=replace(s,'n, err := pk.Domain.WriteTo(w)','n, err := pk.writeSubsetDomain(w)')
s=replace(s,'n, err := pk.Domain.ReadFrom(r)','n, err := pk.readSubsetDomain(r)')
start=s.index('func (pk *ProvingKey) readFrom');end=s.index('// WriteDump',start)
part=s[start:end];part=replace(part,'return n + dec.BytesRead(), nil','if err:=pk.prepareSubset();err!=nil{return n+dec.BytesRead(),err}\n return n + dec.BytesRead(), nil');s=s[:start]+part+s[end:]
p.write_text(s)
p=OUT/'worker/go.mod';p.write_text(p.read_text()+'\nreplace github.com/consensys/gnark => ../gnark\n')
paths=[p for p in OUT.rglob('*') if p.is_file()]+[p for p in HERE.rglob('*') if p.is_file()]
(OUT/'identity.json').write_text(json.dumps({'schema':'shieldd.gnark_subset.full_sources.v1','upstream':'github.com/consensys/gnark@v0.15.0','files':{str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(paths)}},indent=2)+'\n')
print(OUT)
