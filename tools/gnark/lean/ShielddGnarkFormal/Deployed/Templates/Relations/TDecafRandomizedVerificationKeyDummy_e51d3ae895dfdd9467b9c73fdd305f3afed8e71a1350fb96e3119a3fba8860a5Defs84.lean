import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs83

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc1746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 55⟩], residual := [((1 : F), 2335), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1862) * (relationLc1746 rho) = ((1 : F) * rho 2337)

def relationLc1747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6984451028592461867390374761534058577866431087611019337585209388902324145485 : F), 2061, 5, 56⟩], residual := [((6268515690606711675820373018132505629153826392182024131345248525914402666900 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4975400829955112541666816223878227353942785518989585224086588081315469982209 : F), runs := [⟨(4975400829955112541666816223878227353942785518989585224086588081315469982209 : F), 2062, 5, 56⟩], residual := [((7115815826549671405340392110243331685100108865524818480158285579730834185347 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2337 (rho : Nat -> F) : Prop :=
    (relationLc1747 rho) * (relationLc1748 rho) = ((1 : F) * rho 2338)

def relationLc1749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4975400829955112541666816223878227353942785518989585224086588081315469982209 : F), runs := [⟨(1880722524543018002966766214373629039279202510530003942969236044940549928097 : F), 2061, 5, 56⟩, ⟨(4975400829955112541666816223878227353942785518989585224086588081315469982209 : F), 2062, 5, 56⟩], residual := [((7710484613894729744174080048025463552124552587949460504538826705576714741899 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2339) * ((1 : F) + (1 : F) * rho 2338) = (relationLc1749 rho)

def relationLc1750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1880722524543018002966766214373629039279202510530003942969236044940549928097 : F), runs := [⟨(1880722524543018002966766214373629039279202510530003942969236044940549928097 : F), 2062, 5, 56⟩, ⟨(4975400829955112541666816223878227353942785518989585224086588081315469982209 : F), 2061, 5, 56⟩], residual := [((5561583927891243347137693310954441770830459976203518871196116942379669336356 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2340) * ((1 : F) + (-1 : F) * rho 2338) = (relationLc1750 rho)

def relationLc1751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 56⟩], residual := [((1 : F), 2339), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1863) * (relationLc1751 rho) = ((1 : F) * rho 2341)

def relationLc1752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 56⟩], residual := [((1 : F), 2340), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1863) * (relationLc1752 rho) = ((1 : F) * rho 2342)

def relationLc1753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1575422911388496626730629818346833710771077486342176306515899025137426598458 : F), 2061, 5, 57⟩], residual := [((2280674101688118451702959074318755416748900744787404058007147376446815225484 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (988052079333455640877413860174613124063210718178946984167561073405951962416 : F), runs := [⟨(988052079333455640877413860174613124063210718178946984167561073405951962416 : F), 2062, 5, 57⟩], residual := [((7612865992649868553776640700840008593526902917162252084467998826231105017371 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2342 (rho : Nat -> F) : Prop :=
    (relationLc1753 rho) * (relationLc1754 rho) = ((1 : F) * rho 2343)

def relationLc1755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (988052079333455640877413860174613124063210718178946984167561073405951962416 : F), runs := [⟨(7005427529618962191259280346376995180846995965369886173158626593695519688724 : F), 2061, 5, 57⟩, ⟨(988052079333455640877413860174613124063210718178946984167561073405951962416 : F), 2062, 5, 57⟩], residual := [((3689084588447371381584106025244188476136961253537121925460034369186551638891 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2344) * ((1 : F) + (1 : F) * rho 2343) = (relationLc1755 rho)

def relationLc1756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7005427529618962191259280346376995180846995965369886173158626593695519688724 : F), runs := [⟨(7005427529618962191259280346376995180846995965369886173158626593695519688724 : F), 2062, 5, 57⟩, ⟨(988052079333455640877413860174613124063210718178946984167561073405951962416 : F), 2061, 5, 57⟩], residual := [((8103381537400898634954171877401300506786451891081291608583421318233370836558 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2345) * ((1 : F) + (-1 : F) * rho 2343) = (relationLc1756 rho)

def relationLc1757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 57⟩], residual := [((1 : F), 2344), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1864) * (relationLc1757 rho) = ((1 : F) * rho 2346)

def relationLc1758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 57⟩], residual := [((1 : F), 2345), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1864) * (relationLc1758 rho) = ((1 : F) * rho 2347)

def relationLc1759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2156487065597549056324983678614439370425622070883240801164137263655924233376 : F), 2061, 5, 58⟩], residual := [((5216000986918399100658725928726594776545297115515760187025219720411965230869 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1078307067592655929764445926254891981587989510030717658004669851199004362799 : F), runs := [⟨(1078307067592655929764445926254891981587989510030717658004669851199004362799 : F), 2062, 5, 58⟩], residual := [((2766414637686983554196240388590361588031805575494008592258454326579377809996 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2347 (rho : Nat -> F) : Prop :=
    (relationLc1759 rho) * (relationLc1760 rho) = ((1 : F) * rho 2348)

def relationLc1761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1078307067592655929764445926254891981587989510030717658004669851199004362799 : F), runs := [⟨(1078307067592655929764445926254891981587989510030717658004669851199004362799 : F), 2062, 5, 58⟩, ⟨(2153059263199418330264124523846542624471985471744294070940514365547852048426 : F), 2061, 5, 58⟩], residual := [((1549410558983292357284016308027624847580515667181643127580289292796001953329 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2349) * ((1 : F) + (1 : F) * rho 2348) = (relationLc1761 rho)

def relationLc1762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2153059263199418330264124523846542624471985471744294070940514365547852048426 : F), runs := [⟨(1078307067592655929764445926254891981587989510030717658004669851199004362799 : F), 2061, 5, 58⟩, ⟨(2153059263199418330264124523846542624471985471744294070940514365547852048426 : F), 2062, 5, 58⟩], residual := [((8037383549421691466757036345025357349622246770121874476649744840456289462477 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2350) * ((1 : F) + (-1 : F) * rho 2348) = (relationLc1762 rho)

def relationLc1763 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 58⟩], residual := [((1 : F), 2349), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1865) * (relationLc1763 rho) = ((1 : F) * rho 2351)

def relationLc1764 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 58⟩], residual := [((1 : F), 2350), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1865) * (relationLc1764 rho) = ((1 : F) * rho 2352)

def relationLc1765 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2176686707172346089764861149147128588707699343836468076549025280019693811766 : F), 2061, 5, 59⟩], residual := [((5344909994604615257630325697143396666051053670561830463561362977461125484596 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1766 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1429573434618572468265763344440075896510596019609218436100922545328956343063 : F), runs := [⟨(1429573434618572468265763344440075896510596019609218436100922545328956343063 : F), 2062, 5, 59⟩], residual := [((2214981955855980363476769290924158600072872287107850573391034021018292460131 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2352 (rho : Nat -> F) : Prop :=
    (relationLc1765 rho) * (relationLc1766 rho) = ((1 : F) * rho 2353)

def relationLc1767 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1429573434618572468265763344440075896510596019609218436100922545328956343063 : F), runs := [⟨(1429573434618572468265763344440075896510596019609218436100922545328956343063 : F), 2062, 5, 59⟩, ⟨(2175427980060392100680354406991456580602170599832405867663078667323324753984 : F), 2061, 5, 59⟩], residual := [((6487899024085425786684261787499910502293469850095593492804671254920729548095 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2354) * ((1 : F) + (1 : F) * rho 2353) = (relationLc1767 rho)

def relationLc1768 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2175427980060392100680354406991456580602170599832405867663078667323324753984 : F), runs := [⟨(1429573434618572468265763344440075896510596019609218436100922545328956343063 : F), 2061, 5, 59⟩, ⟨(2175427980060392100680354406991456580602170599832405867663078667323324753984 : F), 2062, 5, 59⟩], residual := [((1140136143485807931745155331023219576130803482552960585340507993082385214402 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2355) * ((1 : F) + (-1 : F) * rho 2353) = (relationLc1768 rho)

def relationLc1769 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 59⟩], residual := [((1 : F), 2354), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1866) * (relationLc1769 rho) = ((1 : F) * rho 2356)

def relationLc1770 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 59⟩], residual := [((1 : F), 2355), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1866) * (relationLc1770 rho) = ((1 : F) * rho 2357)

def relationLc1771 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5615196394253809742051837972053350097436945599023299075757788719623911014164 : F), 2061, 5, 60⟩], residual := [((2192973411531826120347442314194415155367589721663284732414709266599801162341 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1772 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3507914811193807346915656364043313414030314410218757094075792397566336246847 : F), runs := [⟨(3507914811193807346915656364043313414030314410218757094075792397566336246847 : F), 2062, 5, 60⟩], residual := [((3632481104554618013980636857969656708838921269583913130983900467527162348250 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2357 (rho : Nat -> F) : Prop :=
    (relationLc1771 rho) * (relationLc1772 rho) = ((1 : F) * rho 2358)

def relationLc1773 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3507914811193807346915656364043313414030314410218757094075792397566336246847 : F), runs := [⟨(3507914811193807346915656364043313414030314410218757094075792397566336246847 : F), 2062, 5, 60⟩, ⟨(6333108592800235955202131851808095413327987070414755997798431501612895014049 : F), 2061, 5, 60⟩], residual := [((147525517621269423143848623495511025465740574047516471366945349929542513784 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2359) * ((1 : F) + (1 : F) * rho 2358) = (relationLc1773 rho)

def relationLc1774 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6333108592800235955202131851808095413327987070414755997798431501612895014049 : F), runs := [⟨(3507914811193807346915656364043313414030314410218757094075792397566336246847 : F), 2061, 5, 60⟩, ⟨(6333108592800235955202131851808095413327987070414755997798431501612895014049 : F), 2062, 5, 60⟩], residual := [((7835467099238429573137548256885374856751082605880225412215512677951913505295 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2360) * ((1 : F) + (-1 : F) * rho 2358) = (relationLc1774 rho)

def relationLc1775 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 60⟩], residual := [((1 : F), 2359), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1867) * (relationLc1775 rho) = ((1 : F) * rho 2361)

def relationLc1776 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 60⟩], residual := [((1 : F), 2360), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1867) * (relationLc1776 rho) = ((1 : F) * rho 2362)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
