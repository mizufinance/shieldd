import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs26

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationRow1661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1661) * ((1 : F) + (-1 : F) * rho 1659) = (relationLc211 rho)

def relationLc212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 49⟩], residual := [((1 : F), 1660), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1212) * (relationLc212 rho) = ((1 : F) * rho 1662)

def relationLc213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 49⟩], residual := [((1 : F), 1661), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1212) * (relationLc213 rho) = ((1 : F) * rho 1663)

def relationLc214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5601767322033036842450681038439125168843804208008726864318603631516789761067 : F), 1417, 5, 50⟩], residual := [((6311788928598180271216842731236434068004852943231893048645681373185077594943 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), runs := [⟨(1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), 1418, 5, 50⟩], residual := [((5776210584316626084378821198891211680461121350376665222094336951161481942128 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1664 (rho : Nat -> F) : Prop :=
    (relationLc214 rho) * (relationLc215 rho) = ((1 : F) * rho 1664)

def relationLc216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), runs := [⟨(1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), 1418, 5, 50⟩, ⟨(5455394452319359064730853405031855811944132210226278469104918595208997754098 : F), 1417, 5, 50⟩], residual := [((1157745346687861393543968242560639028261069464224253565514298811056121996898 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1665) * ((1 : F) + (1 : F) * rho 1664) = (relationLc216 rho)

def relationLc217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5455394452319359064730853405031855811944132210226278469104918595208997754098 : F), runs := [⟨(1491342290344834136371396906781886546644514837383590278112353976581405501407 : F), 1417, 5, 50⟩, ⟨(5455394452319359064730853405031855811944132210226278469104918595208997754098 : F), 1418, 5, 50⟩], residual := [((5910130369398495494281038639617173443450469194918661981091537875579752637214 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1666) * ((1 : F) + (-1 : F) * rho 1664) = (relationLc217 rho)

def relationLc218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 50⟩], residual := [((1 : F), 1665), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1213) * (relationLc218 rho) = ((1 : F) * rho 1667)

def relationLc219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 50⟩], residual := [((1 : F), 1666), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1213) * (relationLc219 rho) = ((1 : F) * rho 1668)

def relationLc220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1333102673704202479983628037793327450661200121331252063792862506537783381171 : F), 1417, 5, 51⟩], residual := [((6542948149158298460747498832587140544674969639001712105089973628230443487984 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), runs := [⟨(4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), 1418, 5, 51⟩], residual := [((6661341177813801652607121555462531553845081652612412404845568315122575203231 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1669 (rho : Nat -> F) : Prop :=
    (relationLc220 rho) * (relationLc221 rho) = ((1 : F) * rho 1669)

def relationLc222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), runs := [⟨(4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), 1418, 5, 51⟩, ⟨(967599095655716772350240667612117983219702869938641951846866480719616478017 : F), 1417, 5, 51⟩], residual := [((1338548498399075614959566438101969156716179546081631246251880873912898223130 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1670) * ((1 : F) + (1 : F) * rho 1669) = (relationLc222 rho)

def relationLc223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (967599095655716772350240667612117983219702869938641951846866480719616478017 : F), runs := [⟨(4848271586744543798293963786790661440381248332755825910732797620536744403053 : F), 1417, 5, 51⟩, ⟨(967599095655716772350240667612117983219702869938641951846866480719616478017 : F), 1418, 5, 51⟩], residual := [((1265016784022045165451335721675091384371256245608682438229946484243848922585 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1671) * ((1 : F) + (-1 : F) * rho 1669) = (relationLc223 rho)

def relationLc224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 51⟩], residual := [((1 : F), 1670), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1214) * (relationLc224 rho) = ((1 : F) * rho 1672)

def relationLc225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 51⟩], residual := [((1 : F), 1671), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1214) * (relationLc225 rho) = ((1 : F) * rho 1673)

def relationLc226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7713320707972508225329248135647716996895554908115238849198413492473991592551 : F), 1417, 5, 52⟩], residual := [((3072104556603535932538718282940668171823186000398821652487902741697432579237 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), runs := [⟨(2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), 1418, 5, 52⟩], residual := [((5572009951431654188340934136256813584982401531129506005583899357712942012612 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1674 (rho : Nat -> F) : Prop :=
    (relationLc226 rho) * (relationLc227 rho) = ((1 : F) * rho 1674)

def relationLc228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), runs := [⟨(1903325822680987883718811720128136166280207581202541754996741861475111643211 : F), 1417, 5, 52⟩, ⟨(2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), 1418, 5, 52⟩], residual := [((4767993771597570392825832228250807384100430057271852393934492097679007412061 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1675) * ((1 : F) + (1 : F) * rho 1674) = (relationLc228 rho)

def relationLc229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1903325822680987883718811720128136166280207581202541754996741861475111643211 : F), runs := [⟨(1903325822680987883718811720128136166280207581202541754996741861475111643211 : F), 1418, 5, 52⟩, ⟨(2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), 1417, 5, 52⟩], residual := [((4938485631131422214938309135964768397685392831276407084547853850081122344138 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1676) * ((1 : F) + (-1 : F) * rho 1674) = (relationLc229 rho)

def relationLc230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 52⟩], residual := [((1 : F), 1675), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1215) * (relationLc230 rho) = ((1 : F) * rho 1677)

def relationLc231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 52⟩], residual := [((1 : F), 1676), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1215) * (relationLc231 rho) = ((1 : F) * rho 1678)

def relationLc232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1182152564360992442182523465102481580891280668041367136936940070343748519558 : F), 1417, 5, 53⟩], residual := [((6943198048346289648638720780388980245276877908595231600890699249506039923644 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), runs := [⟨(3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), 1418, 5, 53⟩], residual := [((6044152122593110290241844700340929891609350526117907361008262393599543854423 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1679 (rho : Nat -> F) : Prop :=
    (relationLc232 rho) * (relationLc233 rho) = ((1 : F) * rho 1679)

def relationLc234 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), runs := [⟨(3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), 1418, 5, 53⟩, ⟨(3295995549533402754926033474441756319785857860580828407902210256404160622757 : F), 1417, 5, 53⟩], residual := [((8223953149025763997669343325991778527222426481097586590919694886618136319546 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1680) * ((1 : F) + (1 : F) * rho 1679) = (relationLc234 rho)

def relationLc235 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3295995549533402754926033474441756319785857860580828407902210256404160622757 : F), runs := [⟨(3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), 1417, 5, 53⟩, ⟨(3295995549533402754926033474441756319785857860580828407902210256404160622757 : F), 1418, 5, 53⟩], residual := [((1074059193230622658889366552226265592333420991687941796125194643194991218718 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1681) * ((1 : F) + (-1 : F) * rho 1679) = (relationLc235 rho)

def relationLc236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 53⟩], residual := [((1 : F), 1680), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1216) * (relationLc236 rho) = ((1 : F) * rho 1682)

def relationLc237 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 53⟩], residual := [((1 : F), 1681), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1216) * (relationLc237 rho) = ((1 : F) * rho 1683)

def relationLc238 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6808413011903766006549998320796877852702539675193861145516941276399506816018 : F), 1417, 5, 54⟩], residual := [((2078653876375085330570755506944820726864424017494070193222947648354260047450 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc239 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), runs := [⟨(8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), 1418, 5, 54⟩], residual := [((1117535352919708467003298856946705594138171996205812450165122401498781921758 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1684 (rho : Nat -> F) : Prop :=
    (relationLc238 rho) * (relationLc239 rho) = ((1 : F) * rho 1684)

def relationLc240 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), runs := [⟨(5875081942588848072609510491460054995125278729835776883031261976881455252579 : F), 1417, 5, 54⟩, ⟨(8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), 1418, 5, 54⟩], residual := [((8251711135249260406100806966604915315686718678539696911960534095358292891000 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1685) * ((1 : F) + (1 : F) * rho 1684) = (relationLc240 rho)

def relationLc241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5875081942588848072609510491460054995125278729835776883031261976881455252579 : F), runs := [⟨(5875081942588848072609510491460054995125278729835776883031261976881455252579 : F), 1418, 5, 54⟩, ⟨(8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), 1417, 5, 54⟩], residual := [((406499423158076462587989054239116175684150879768157699007514725388541219767 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1686) * ((1 : F) + (-1 : F) * rho 1684) = (relationLc241 rho)

def relationLc242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 54⟩], residual := [((1 : F), 1685), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1217) * (relationLc242 rho) = ((1 : F) * rho 1687)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
