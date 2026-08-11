import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs65

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow4878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4704) * ((1 : F) + (1 : F) * rho 4703) = (relationLc199 rho)

def relationLc200 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4872948632385295784403421904423944853783258982842492800525942361355184859189 : F), runs := [⟨(4872948632385295784403421904423944853783258982842492800525942361355184859189 : F), 4472, 5, 47⟩, ⟨(5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), 4471, 5, 47⟩], residual := [((2883401531657732217592893021422844596260970559296055680507138270037163853218 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4705) * ((1 : F) + (-1 : F) * rho 4703) = (relationLc200 rho)

def relationLc201 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 47⟩], residual := [((1 : F), 4704), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4264) * (relationLc201 rho) = ((1 : F) * rho 4706)

def relationLc202 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 47⟩], residual := [((1 : F), 4705), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4264) * (relationLc202 rho) = ((1 : F) * rho 4707)

def relationLc203 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1412097513793676318203100151344914588183404196444076823819806863703019000664 : F), 4471, 5, 48⟩], residual := [((4872488369303941282325628720923833771829695005190436383842572619654463739799 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc204 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), runs := [⟨(7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), 4472, 5, 48⟩], residual := [((7287857562926121443816573787936730396829003411351210866894309378384291143414 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4882 (rho : Nat -> F) : Prop :=
    (relationLc203 rho) * (relationLc204 rho) = ((1 : F) * rho 4708)

def relationLc205 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), runs := [⟨(6253450192315477760795373878916141842196646877502841727876510111801041869161 : F), 4471, 5, 48⟩, ⟨(7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), 4472, 5, 48⟩], residual := [((3222376147153537853614748346954861356981236500512424890971792958079697969278 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4709) * ((1 : F) + (1 : F) * rho 4708) = (relationLc205 rho)

def relationLc206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6253450192315477760795373878916141842196646877502841727876510111801041869161 : F), runs := [⟨(6253450192315477760795373878916141842196646877502841727876510111801041869161 : F), 4472, 5, 48⟩, ⟨(7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), 4471, 5, 48⟩], residual := [((2708429738389344634294083352646360197070514966334369279197444176046827701509 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4710) * ((1 : F) + (-1 : F) * rho 4708) = (relationLc206 rho)

def relationLc207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 48⟩], residual := [((1 : F), 4709), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4265) * (relationLc207 rho) = ((1 : F) * rho 4711)

def relationLc208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 48⟩], residual := [((1 : F), 4710), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4265) * (relationLc208 rho) = ((1 : F) * rho 4712)

def relationLc209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7344226933985106720397624283801745162220212964763380091438677820147717632228 : F), 4471, 5, 49⟩], residual := [((5775045164857509487204045692487468553206963145763395969644819158887632895215 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), runs := [⟨(6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), 4472, 5, 49⟩], residual := [((3393463198481809430162510204448349475209266561020452875584574238411104712871 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4887 (rho : Nat -> F) : Prop :=
    (relationLc209 rho) * (relationLc210 rho) = ((1 : F) * rho 4713)

def relationLc211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), runs := [⟨(5332980067227370905581895657908047328863310243331202615016196252318651816115 : F), 4471, 5, 49⟩, ⟨(6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), 4472, 5, 49⟩], residual := [((415634274375293255795729886987693687756932324632346737018101532403467964800 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4714) * ((1 : F) + (1 : F) * rho 4713) = (relationLc211 rho)

def relationLc212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5332980067227370905581895657908047328863310243331202615016196252318651816115 : F), runs := [⟨(5332980067227370905581895657908047328863310243331202615016196252318651816115 : F), 4472, 5, 49⟩, ⟨(6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), 4471, 5, 49⟩], residual := [((7521791217715781001002811817629990340703048586333210237163267357148081515314 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4715) * ((1 : F) + (-1 : F) * rho 4713) = (relationLc212 rho)

def relationLc213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 49⟩], residual := [((1 : F), 4714), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4266) * (relationLc213 rho) = ((1 : F) * rho 4716)

def relationLc214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 49⟩], residual := [((1 : F), 4715), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4266) * (relationLc214 rho) = ((1 : F) * rho 4717)

def relationLc215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5601767322033036842450681038439125168843804208008726864318603631516789761067 : F), 4471, 5, 50⟩], residual := [((6311788928598180271216842731236434068004852943231893048645681373185077594943 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), runs := [⟨(1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), 4472, 5, 50⟩], residual := [((5776210584316626084378821198891211680461121350376665222094336951161481942128 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4892 (rho : Nat -> F) : Prop :=
    (relationLc215 rho) * (relationLc216 rho) = ((1 : F) * rho 4718)

def relationLc217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), runs := [⟨(1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), 4472, 5, 50⟩, ⟨(5455394452319359064730853405031855811944132210226278469104918595208997754098 : F), 4471, 5, 50⟩], residual := [((1157745346687861393543968242560639028261069464224253565514298811056121996898 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4719) * ((1 : F) + (1 : F) * rho 4718) = (relationLc217 rho)

def relationLc218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5455394452319359064730853405031855811944132210226278469104918595208997754098 : F), runs := [⟨(1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), 4471, 5, 50⟩, ⟨(5455394452319359064730853405031855811944132210226278469104918595208997754098 : F), 4472, 5, 50⟩], residual := [((5910130369398495494281038639617173443450469194918661981091537875579752637214 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4720) * ((1 : F) + (-1 : F) * rho 4718) = (relationLc218 rho)

def relationLc219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 50⟩], residual := [((1 : F), 4719), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4267) * (relationLc219 rho) = ((1 : F) * rho 4721)

def relationLc220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 50⟩], residual := [((1 : F), 4720), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4267) * (relationLc220 rho) = ((1 : F) * rho 4722)

def relationLc221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1333102673704202479983628037793327450661200121331252063792862506537783381171 : F), 4471, 5, 51⟩], residual := [((6542948149158298460747498832587140544674969639001712105089973628230443487984 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), runs := [⟨(4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), 4472, 5, 51⟩], residual := [((6661341177813801652607121555462531553845081652612412404845568315122575203231 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4897 (rho : Nat -> F) : Prop :=
    (relationLc221 rho) * (relationLc222 rho) = ((1 : F) * rho 4723)

def relationLc223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), runs := [⟨(4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), 4472, 5, 51⟩, ⟨(967599095655716772350240667612117983219702869938641951846866480719616478017 : F), 4471, 5, 51⟩], residual := [((1338548498399075614959566438101969156716179546081631246251880873912898223130 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4724) * ((1 : F) + (1 : F) * rho 4723) = (relationLc223 rho)

def relationLc224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (967599095655716772350240667612117983219702869938641951846866480719616478017 : F), runs := [⟨(4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), 4471, 5, 51⟩, ⟨(967599095655716772350240667612117983219702869938641951846866480719616478017 : F), 4472, 5, 51⟩], residual := [((1265016784022045165451335721675091384371256245608682438229946484243848922585 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4725) * ((1 : F) + (-1 : F) * rho 4723) = (relationLc224 rho)

def relationLc225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 51⟩], residual := [((1 : F), 4724), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4268) * (relationLc225 rho) = ((1 : F) * rho 4726)

def relationLc226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 51⟩], residual := [((1 : F), 4725), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4268) * (relationLc226 rho) = ((1 : F) * rho 4727)

def relationLc227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7713320707972508225329248135647716996895554908115238849198413492473991592551 : F), 4471, 5, 52⟩], residual := [((3072104556603535932538718282940668171823186000398821652487902741697432579237 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), runs := [⟨(2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), 4472, 5, 52⟩], residual := [((5572009951431654188340934136256813584982401531129506005583899357712942012612 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4902 (rho : Nat -> F) : Prop :=
    (relationLc227 rho) * (relationLc228 rho) = ((1 : F) * rho 4728)

def relationLc229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), runs := [⟨(1903325822680987883718811720128136166280207581202541754996741861475111643211 : F), 4471, 5, 52⟩, ⟨(2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), 4472, 5, 52⟩], residual := [((4767993771597570392825832228250807384100430057271852393934492097679007412061 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4729) * ((1 : F) + (1 : F) * rho 4728) = (relationLc229 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
