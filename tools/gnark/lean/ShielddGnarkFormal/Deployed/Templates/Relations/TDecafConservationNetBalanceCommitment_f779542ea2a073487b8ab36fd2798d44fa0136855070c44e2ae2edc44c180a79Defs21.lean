import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs20

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationRow1132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 693) * (relationLc191 rho) = ((1 : F) * rho 1132)

def relationLc192 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2480989182328915217035704968501799091032845993637498297759959989969155961506 : F), 901, 5, 47⟩], residual := [((1780397906965267592988397799526375960157674145853336668821056037594506777478 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc193 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), runs := [⟨(5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), 902, 5, 47⟩], residual := [((8435697469551685066140325303601063758918697694011257672330999321131850527330 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1133 (rho : Nat -> F) : Prop :=
    (relationLc192 rho) * (relationLc193 rho) = ((1 : F) * rho 1133)

def relationLc194 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), runs := [⟨(4872948632385295784403421904423944853783258982842492800525942361355184859189 : F), 901, 5, 47⟩, ⟨(5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), 902, 5, 47⟩], residual := [((3312586582827011871815562736574566434836650091498332925579439616180173391155 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1134) * ((1 : F) + (1 : F) * rho 1133) = (relationLc194 rho)

def relationLc195 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4872948632385295784403421904423944853783258982842492800525942361355184859189 : F), runs := [⟨(4872948632385295784403421904423944853783258982842492800525942361355184859189 : F), 902, 5, 47⟩, ⟨(5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), 901, 5, 47⟩], residual := [((2883401531657732217592893021422844596260970559296055680507138270037163853218 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1135) * ((1 : F) + (-1 : F) * rho 1133) = (relationLc195 rho)

def relationLc196 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 47⟩], residual := [((1 : F), 1134), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 694) * (relationLc196 rho) = ((1 : F) * rho 1136)

def relationLc197 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 47⟩], residual := [((1 : F), 1135), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 694) * (relationLc197 rho) = ((1 : F) * rho 1137)

def relationLc198 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1412097513793676318203100151344914588183404196444076823819806863703019000664 : F), 901, 5, 48⟩], residual := [((4872488369303941282325628720923833771829695005190436383842572619654463739799 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc199 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), runs := [⟨(7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), 902, 5, 48⟩], residual := [((7287857562926121443816573787936730396829003411351210866894309378384291143414 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1138 (rho : Nat -> F) : Prop :=
    (relationLc198 rho) * (relationLc199 rho) = ((1 : F) * rho 1138)

def relationLc200 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), runs := [⟨(6253450192315477760795373878916141842196646877502841727876510111801041869161 : F), 901, 5, 48⟩, ⟨(7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), 902, 5, 48⟩], residual := [((3222376147153537853614748346954861356981236500512424890971792958079697969278 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1139) * ((1 : F) + (1 : F) * rho 1138) = (relationLc200 rho)

def relationLc201 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6253450192315477760795373878916141842196646877502841727876510111801041869161 : F), runs := [⟨(6253450192315477760795373878916141842196646877502841727876510111801041869161 : F), 902, 5, 48⟩, ⟨(7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), 901, 5, 48⟩], residual := [((2708429738389344634294083352646360197070514966334369279197444176046827701509 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1140) * ((1 : F) + (-1 : F) * rho 1138) = (relationLc201 rho)

def relationLc202 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 48⟩], residual := [((1 : F), 1139), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 695) * (relationLc202 rho) = ((1 : F) * rho 1141)

def relationLc203 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 48⟩], residual := [((1 : F), 1140), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 695) * (relationLc203 rho) = ((1 : F) * rho 1142)

def relationLc204 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7344226933985106720397624283801745162220212964763380091438677820147717632228 : F), 901, 5, 49⟩], residual := [((5775045164857509487204045692487468553206963145763395969644819158887632895215 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc205 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), runs := [⟨(6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), 902, 5, 49⟩], residual := [((3393463198481809430162510204448349475209266561020452875584574238411104712871 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1143 (rho : Nat -> F) : Prop :=
    (relationLc204 rho) * (relationLc205 rho) = ((1 : F) * rho 1143)

def relationLc206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), runs := [⟨(5332980067227370905581895657908047328863310243331202615016196252318651816115 : F), 901, 5, 49⟩, ⟨(6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), 902, 5, 49⟩], residual := [((415634274375293255795729886987693687756932324632346737018101532403467964800 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1144) * ((1 : F) + (1 : F) * rho 1143) = (relationLc206 rho)

def relationLc207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5332980067227370905581895657908047328863310243331202615016196252318651816115 : F), runs := [⟨(5332980067227370905581895657908047328863310243331202615016196252318651816115 : F), 902, 5, 49⟩, ⟨(6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), 901, 5, 49⟩], residual := [((7521791217715781001002811817629990340703048586333210237163267357148081515314 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1145) * ((1 : F) + (-1 : F) * rho 1143) = (relationLc207 rho)

def relationLc208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 49⟩], residual := [((1 : F), 1144), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 696) * (relationLc208 rho) = ((1 : F) * rho 1146)

def relationLc209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 49⟩], residual := [((1 : F), 1145), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 696) * (relationLc209 rho) = ((1 : F) * rho 1147)

def relationLc210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5601767322033036842450681038439125168843804208008726864318603631516789761067 : F), 901, 5, 50⟩], residual := [((6311788928598180271216842731236434068004852943231893048645681373185077594943 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), runs := [⟨(1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), 902, 5, 50⟩], residual := [((5776210584316626084378821198891211680461121350376665222094336951161481942128 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1148 (rho : Nat -> F) : Prop :=
    (relationLc210 rho) * (relationLc211 rho) = ((1 : F) * rho 1148)

def relationLc212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), runs := [⟨(1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), 902, 5, 50⟩, ⟨(5455394452319359064730853405031855811944132210226278469104918595208997754098 : F), 901, 5, 50⟩], residual := [((1157745346687861393543968242560639028261069464224253565514298811056121996898 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1149) * ((1 : F) + (1 : F) * rho 1148) = (relationLc212 rho)

def relationLc213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5455394452319359064730853405031855811944132210226278469104918595208997754098 : F), runs := [⟨(1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), 901, 5, 50⟩, ⟨(5455394452319359064730853405031855811944132210226278469104918595208997754098 : F), 902, 5, 50⟩], residual := [((5910130369398495494281038639617173443450469194918661981091537875579752637214 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1150) * ((1 : F) + (-1 : F) * rho 1148) = (relationLc213 rho)

def relationLc214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 50⟩], residual := [((1 : F), 1149), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 697) * (relationLc214 rho) = ((1 : F) * rho 1151)

def relationLc215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 50⟩], residual := [((1 : F), 1150), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 697) * (relationLc215 rho) = ((1 : F) * rho 1152)

def relationLc216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1333102673704202479983628037793327450661200121331252063792862506537783381171 : F), 901, 5, 51⟩], residual := [((6542948149158298460747498832587140544674969639001712105089973628230443487984 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), runs := [⟨(4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), 902, 5, 51⟩], residual := [((6661341177813801652607121555462531553845081652612412404845568315122575203231 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1153 (rho : Nat -> F) : Prop :=
    (relationLc216 rho) * (relationLc217 rho) = ((1 : F) * rho 1153)

def relationLc218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), runs := [⟨(4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), 902, 5, 51⟩, ⟨(967599095655716772350240667612117983219702869938641951846866480719616478017 : F), 901, 5, 51⟩], residual := [((1338548498399075614959566438101969156716179546081631246251880873912898223130 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1154) * ((1 : F) + (1 : F) * rho 1153) = (relationLc218 rho)

def relationLc219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (967599095655716772350240667612117983219702869938641951846866480719616478017 : F), runs := [⟨(4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), 901, 5, 51⟩, ⟨(967599095655716772350240667612117983219702869938641951846866480719616478017 : F), 902, 5, 51⟩], residual := [((1265016784022045165451335721675091384371256245608682438229946484243848922585 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1155) * ((1 : F) + (-1 : F) * rho 1153) = (relationLc219 rho)

def relationLc220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 51⟩], residual := [((1 : F), 1154), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 698) * (relationLc220 rho) = ((1 : F) * rho 1156)

def relationLc221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 51⟩], residual := [((1 : F), 1155), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 698) * (relationLc221 rho) = ((1 : F) * rho 1157)

def relationLc222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7713320707972508225329248135647716996895554908115238849198413492473991592551 : F), 901, 5, 52⟩], residual := [((3072104556603535932538718282940668171823186000398821652487902741697432579237 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
