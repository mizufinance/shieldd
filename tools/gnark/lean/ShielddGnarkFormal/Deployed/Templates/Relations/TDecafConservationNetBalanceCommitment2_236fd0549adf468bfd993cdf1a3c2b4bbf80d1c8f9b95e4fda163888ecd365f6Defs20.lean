import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs19

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationRow1008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 565) * (relationLc196 rho) = ((1 : F) * rho 1008)

def relationLc197 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1412097513793676318203100151344914588183404196444076823819806863703019000664 : F), 772, 5, 48⟩], residual := [((4872488369303941282325628720923833771829695005190436383842572619654463739799 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc198 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), runs := [⟨(7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), 773, 5, 48⟩], residual := [((7287857562926121443816573787936730396829003411351210866894309378384291143414 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1009 (rho : Nat -> F) : Prop :=
    (relationLc197 rho) * (relationLc198 rho) = ((1 : F) * rho 1009)

def relationLc199 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), runs := [⟨(6253450192315477760795373878916141842196646877502841727876510111801041869161 : F), 772, 5, 48⟩, ⟨(7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), 773, 5, 48⟩], residual := [((3222376147153537853614748346954861356981236500512424890971792958079697969278 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1010) * ((1 : F) + (1 : F) * rho 1009) = (relationLc199 rho)

def relationLc200 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6253450192315477760795373878916141842196646877502841727876510111801041869161 : F), runs := [⟨(6253450192315477760795373878916141842196646877502841727876510111801041869161 : F), 773, 5, 48⟩, ⟨(7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), 772, 5, 48⟩], residual := [((2708429738389344634294083352646360197070514966334369279197444176046827701509 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1011) * ((1 : F) + (-1 : F) * rho 1009) = (relationLc200 rho)

def relationLc201 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 48⟩], residual := [((1 : F), 1010), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 566) * (relationLc201 rho) = ((1 : F) * rho 1012)

def relationLc202 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 48⟩], residual := [((1 : F), 1011), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 566) * (relationLc202 rho) = ((1 : F) * rho 1013)

def relationLc203 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7344226933985106720397624283801745162220212964763380091438677820147717632228 : F), 772, 5, 49⟩], residual := [((5775045164857509487204045692487468553206963145763395969644819158887632895215 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc204 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), runs := [⟨(6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), 773, 5, 49⟩], residual := [((3393463198481809430162510204448349475209266561020452875584574238411104712871 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1014 (rho : Nat -> F) : Prop :=
    (relationLc203 rho) * (relationLc204 rho) = ((1 : F) * rho 1014)

def relationLc205 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), runs := [⟨(5332980067227370905581895657908047328863310243331202615016196252318651816115 : F), 772, 5, 49⟩, ⟨(6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), 773, 5, 49⟩], residual := [((415634274375293255795729886987693687756932324632346737018101532403467964800 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1015) * ((1 : F) + (1 : F) * rho 1014) = (relationLc205 rho)

def relationLc206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5332980067227370905581895657908047328863310243331202615016196252318651816115 : F), runs := [⟨(5332980067227370905581895657908047328863310243331202615016196252318651816115 : F), 773, 5, 49⟩, ⟨(6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), 772, 5, 49⟩], residual := [((7521791217715781001002811817629990340703048586333210237163267357148081515314 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1016) * ((1 : F) + (-1 : F) * rho 1014) = (relationLc206 rho)

def relationLc207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 49⟩], residual := [((1 : F), 1015), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 567) * (relationLc207 rho) = ((1 : F) * rho 1017)

def relationLc208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 49⟩], residual := [((1 : F), 1016), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 567) * (relationLc208 rho) = ((1 : F) * rho 1018)

def relationLc209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5601767322033036842450681038439125168843804208008726864318603631516789761067 : F), 772, 5, 50⟩], residual := [((6311788928598180271216842731236434068004852943231893048645681373185077594943 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), runs := [⟨(1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), 773, 5, 50⟩], residual := [((5776210584316626084378821198891211680461121350376665222094336951161481942128 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1019 (rho : Nat -> F) : Prop :=
    (relationLc209 rho) * (relationLc210 rho) = ((1 : F) * rho 1019)

def relationLc211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), runs := [⟨(1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), 773, 5, 50⟩, ⟨(5455394452319359064730853405031855811944132210226278469104918595208997754098 : F), 772, 5, 50⟩], residual := [((1157745346687861393543968242560639028261069464224253565514298811056121996898 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1020) * ((1 : F) + (1 : F) * rho 1019) = (relationLc211 rho)

def relationLc212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5455394452319359064730853405031855811944132210226278469104918595208997754098 : F), runs := [⟨(1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), 772, 5, 50⟩, ⟨(5455394452319359064730853405031855811944132210226278469104918595208997754098 : F), 773, 5, 50⟩], residual := [((5910130369398495494281038639617173443450469194918661981091537875579752637214 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1021) * ((1 : F) + (-1 : F) * rho 1019) = (relationLc212 rho)

def relationLc213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 50⟩], residual := [((1 : F), 1020), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 568) * (relationLc213 rho) = ((1 : F) * rho 1022)

def relationLc214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 50⟩], residual := [((1 : F), 1021), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 568) * (relationLc214 rho) = ((1 : F) * rho 1023)

def relationLc215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1333102673704202479983628037793327450661200121331252063792862506537783381171 : F), 772, 5, 51⟩], residual := [((6542948149158298460747498832587140544674969639001712105089973628230443487984 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), runs := [⟨(4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), 773, 5, 51⟩], residual := [((6661341177813801652607121555462531553845081652612412404845568315122575203231 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1024 (rho : Nat -> F) : Prop :=
    (relationLc215 rho) * (relationLc216 rho) = ((1 : F) * rho 1024)

def relationLc217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), runs := [⟨(4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), 773, 5, 51⟩, ⟨(967599095655716772350240667612117983219702869938641951846866480719616478017 : F), 772, 5, 51⟩], residual := [((1338548498399075614959566438101969156716179546081631246251880873912898223130 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1025) * ((1 : F) + (1 : F) * rho 1024) = (relationLc217 rho)

def relationLc218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (967599095655716772350240667612117983219702869938641951846866480719616478017 : F), runs := [⟨(4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), 772, 5, 51⟩, ⟨(967599095655716772350240667612117983219702869938641951846866480719616478017 : F), 773, 5, 51⟩], residual := [((1265016784022045165451335721675091384371256245608682438229946484243848922585 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1026) * ((1 : F) + (-1 : F) * rho 1024) = (relationLc218 rho)

def relationLc219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 51⟩], residual := [((1 : F), 1025), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 569) * (relationLc219 rho) = ((1 : F) * rho 1027)

def relationLc220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 51⟩], residual := [((1 : F), 1026), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 569) * (relationLc220 rho) = ((1 : F) * rho 1028)

def relationLc221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7713320707972508225329248135647716996895554908115238849198413492473991592551 : F), 772, 5, 52⟩], residual := [((3072104556603535932538718282940668171823186000398821652487902741697432579237 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), runs := [⟨(2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), 773, 5, 52⟩], residual := [((5572009951431654188340934136256813584982401531129506005583899357712942012612 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1029 (rho : Nat -> F) : Prop :=
    (relationLc221 rho) * (relationLc222 rho) = ((1 : F) * rho 1029)

def relationLc223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), runs := [⟨(1903325822680987883718811720128136166280207581202541754996741861475111643211 : F), 772, 5, 52⟩, ⟨(2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), 773, 5, 52⟩], residual := [((4767993771597570392825832228250807384100430057271852393934492097679007412061 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1030) * ((1 : F) + (1 : F) * rho 1029) = (relationLc223 rho)

def relationLc224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1903325822680987883718811720128136166280207581202541754996741861475111643211 : F), runs := [⟨(1903325822680987883718811720128136166280207581202541754996741861475111643211 : F), 773, 5, 52⟩, ⟨(2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), 772, 5, 52⟩], residual := [((4938485631131422214938309135964768397685392831276407084547853850081122344138 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1031) * ((1 : F) + (-1 : F) * rho 1029) = (relationLc224 rho)

def relationLc225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 52⟩], residual := [((1 : F), 1030), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 570) * (relationLc225 rho) = ((1 : F) * rho 1032)

def relationLc226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 52⟩], residual := [((1 : F), 1031), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 570) * (relationLc226 rho) = ((1 : F) * rho 1033)

def relationLc227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1182152564360992442182523465102481580891280668041367136936940070343748519558 : F), 772, 5, 53⟩], residual := [((6943198048346289648638720780388980245276877908595231600890699249506039923644 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
