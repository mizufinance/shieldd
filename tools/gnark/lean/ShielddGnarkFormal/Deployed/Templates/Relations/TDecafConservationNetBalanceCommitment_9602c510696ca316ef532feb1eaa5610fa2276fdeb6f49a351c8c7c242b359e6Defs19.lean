import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs18

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc203 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), runs := [⟨(6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), 644, 5, 49⟩], residual := [((3393463198481809430162510204448349475209266561020452875584574238411104712871 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow885 (rho : Nat -> F) : Prop :=
    (relationLc202 rho) * (relationLc203 rho) = ((1 : F) * rho 885)

def relationLc204 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), runs := [⟨(5332980067227370905581895657908047328863310243331202615016196252318651816115 : F), 643, 5, 49⟩, ⟨(6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), 644, 5, 49⟩], residual := [((415634274375293255795729886987693687756932324632346737018101532403467964800 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 886) * ((1 : F) + (1 : F) * rho 885) = (relationLc204 rho)

def relationLc205 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5332980067227370905581895657908047328863310243331202615016196252318651816115 : F), runs := [⟨(5332980067227370905581895657908047328863310243331202615016196252318651816115 : F), 644, 5, 49⟩, ⟨(6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), 643, 5, 49⟩], residual := [((7521791217715781001002811817629990340703048586333210237163267357148081515314 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 887) * ((1 : F) + (-1 : F) * rho 885) = (relationLc205 rho)

def relationLc206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 49⟩], residual := [((1 : F), 886), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 438) * (relationLc206 rho) = ((1 : F) * rho 888)

def relationLc207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 49⟩], residual := [((1 : F), 887), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 438) * (relationLc207 rho) = ((1 : F) * rho 889)

def relationLc208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5601767322033036842450681038439125168843804208008726864318603631516789761067 : F), 643, 5, 50⟩], residual := [((6311788928598180271216842731236434068004852943231893048645681373185077594943 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), runs := [⟨(1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), 644, 5, 50⟩], residual := [((5776210584316626084378821198891211680461121350376665222094336951161481942128 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow890 (rho : Nat -> F) : Prop :=
    (relationLc208 rho) * (relationLc209 rho) = ((1 : F) * rho 890)

def relationLc210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), runs := [⟨(1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), 644, 5, 50⟩, ⟨(5455394452319359064730853405031855811944132210226278469104918595208997754098 : F), 643, 5, 50⟩], residual := [((1157745346687861393543968242560639028261069464224253565514298811056121996898 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 891) * ((1 : F) + (1 : F) * rho 890) = (relationLc210 rho)

def relationLc211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5455394452319359064730853405031855811944132210226278469104918595208997754098 : F), runs := [⟨(1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), 643, 5, 50⟩, ⟨(5455394452319359064730853405031855811944132210226278469104918595208997754098 : F), 644, 5, 50⟩], residual := [((5910130369398495494281038639617173443450469194918661981091537875579752637214 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 892) * ((1 : F) + (-1 : F) * rho 890) = (relationLc211 rho)

def relationLc212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 50⟩], residual := [((1 : F), 891), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 439) * (relationLc212 rho) = ((1 : F) * rho 893)

def relationLc213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 50⟩], residual := [((1 : F), 892), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 439) * (relationLc213 rho) = ((1 : F) * rho 894)

def relationLc214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1333102673704202479983628037793327450661200121331252063792862506537783381171 : F), 643, 5, 51⟩], residual := [((6542948149158298460747498832587140544674969639001712105089973628230443487984 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), runs := [⟨(4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), 644, 5, 51⟩], residual := [((6661341177813801652607121555462531553845081652612412404845568315122575203231 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow895 (rho : Nat -> F) : Prop :=
    (relationLc214 rho) * (relationLc215 rho) = ((1 : F) * rho 895)

def relationLc216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), runs := [⟨(4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), 644, 5, 51⟩, ⟨(967599095655716772350240667612117983219702869938641951846866480719616478017 : F), 643, 5, 51⟩], residual := [((1338548498399075614959566438101969156716179546081631246251880873912898223130 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 896) * ((1 : F) + (1 : F) * rho 895) = (relationLc216 rho)

def relationLc217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (967599095655716772350240667612117983219702869938641951846866480719616478017 : F), runs := [⟨(4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), 643, 5, 51⟩, ⟨(967599095655716772350240667612117983219702869938641951846866480719616478017 : F), 644, 5, 51⟩], residual := [((1265016784022045165451335721675091384371256245608682438229946484243848922585 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 897) * ((1 : F) + (-1 : F) * rho 895) = (relationLc217 rho)

def relationLc218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 51⟩], residual := [((1 : F), 896), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 440) * (relationLc218 rho) = ((1 : F) * rho 898)

def relationLc219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 51⟩], residual := [((1 : F), 897), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 440) * (relationLc219 rho) = ((1 : F) * rho 899)

def relationLc220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7713320707972508225329248135647716996895554908115238849198413492473991592551 : F), 643, 5, 52⟩], residual := [((3072104556603535932538718282940668171823186000398821652487902741697432579237 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), runs := [⟨(2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), 644, 5, 52⟩], residual := [((5572009951431654188340934136256813584982401531129506005583899357712942012612 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow900 (rho : Nat -> F) : Prop :=
    (relationLc220 rho) * (relationLc221 rho) = ((1 : F) * rho 900)

def relationLc222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), runs := [⟨(1903325822680987883718811720128136166280207581202541754996741861475111643211 : F), 643, 5, 52⟩, ⟨(2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), 644, 5, 52⟩], residual := [((4767993771597570392825832228250807384100430057271852393934492097679007412061 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 901) * ((1 : F) + (1 : F) * rho 900) = (relationLc222 rho)

def relationLc223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1903325822680987883718811720128136166280207581202541754996741861475111643211 : F), runs := [⟨(1903325822680987883718811720128136166280207581202541754996741861475111643211 : F), 644, 5, 52⟩, ⟨(2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), 643, 5, 52⟩], residual := [((4938485631131422214938309135964768397685392831276407084547853850081122344138 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 902) * ((1 : F) + (-1 : F) * rho 900) = (relationLc223 rho)

def relationLc224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 52⟩], residual := [((1 : F), 901), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 441) * (relationLc224 rho) = ((1 : F) * rho 903)

def relationLc225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 52⟩], residual := [((1 : F), 902), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 441) * (relationLc225 rho) = ((1 : F) * rho 904)

def relationLc226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1182152564360992442182523465102481580891280668041367136936940070343748519558 : F), 643, 5, 53⟩], residual := [((6943198048346289648638720780388980245276877908595231600890699249506039923644 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), runs := [⟨(3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), 644, 5, 53⟩], residual := [((6044152122593110290241844700340929891609350526117907361008262393599543854423 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow905 (rho : Nat -> F) : Prop :=
    (relationLc226 rho) * (relationLc227 rho) = ((1 : F) * rho 905)

def relationLc228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), runs := [⟨(3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), 644, 5, 53⟩, ⟨(3295995549533402754926033474441756319785857860580828407902210256404160622757 : F), 643, 5, 53⟩], residual := [((8223953149025763997669343325991778527222426481097586590919694886618136319546 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 906) * ((1 : F) + (1 : F) * rho 905) = (relationLc228 rho)

def relationLc229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3295995549533402754926033474441756319785857860580828407902210256404160622757 : F), runs := [⟨(3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), 643, 5, 53⟩, ⟨(3295995549533402754926033474441756319785857860580828407902210256404160622757 : F), 644, 5, 53⟩], residual := [((1074059193230622658889366552226265592333420991687941796125194643194991218718 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 907) * ((1 : F) + (-1 : F) * rho 905) = (relationLc229 rho)

def relationLc230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 53⟩], residual := [((1 : F), 906), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 442) * (relationLc230 rho) = ((1 : F) * rho 908)

def relationLc231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 53⟩], residual := [((1 : F), 907), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 442) * (relationLc231 rho) = ((1 : F) * rho 909)

def relationLc232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6808413011903766006549998320796877852702539675193861145516941276399506816018 : F), 643, 5, 54⟩], residual := [((2078653876375085330570755506944820726864424017494070193222947648354260047450 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), runs := [⟨(8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), 644, 5, 54⟩], residual := [((1117535352919708467003298856946705594138171996205812450165122401498781921758 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow910 (rho : Nat -> F) : Prop :=
    (relationLc232 rho) * (relationLc233 rho) = ((1 : F) * rho 910)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
