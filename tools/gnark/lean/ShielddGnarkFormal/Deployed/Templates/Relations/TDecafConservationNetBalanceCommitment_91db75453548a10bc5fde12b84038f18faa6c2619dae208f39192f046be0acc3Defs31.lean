import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs30

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationLc336 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), runs := [⟨(8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), 1418, 5, 70⟩, ⟨(890957564445309615335249602583520765736519557389826616813989990064887187329 : F), 1417, 5, 70⟩], residual := [((946202082271144289900808698952086487059162959043847888287850488066371834513 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1765) * ((1 : F) + (1 : F) * rho 1764) = (relationLc336 rho)

def relationLc337 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (890957564445309615335249602583520765736519557389826616813989990064887187329 : F), runs := [⟨(8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), 1417, 5, 70⟩, ⟨(890957564445309615335249602583520765736519557389826616813989990064887187329 : F), 1418, 5, 70⟩], residual := [((4335790016456525302353676189745248435386653945957487679257606811467105634208 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1766) * ((1 : F) + (-1 : F) * rho 1764) = (relationLc337 rho)

def relationLc338 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 70⟩], residual := [((1 : F), 1765), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1233) * (relationLc338 rho) = ((1 : F) * rho 1767)

def relationLc339 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 70⟩], residual := [((1 : F), 1766), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1233) * (relationLc339 rho) = ((1 : F) * rho 1768)

def relationLc340 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1987785455165667403478408768327056179798479167734353698427786135116125554860 : F), 1417, 5, 71⟩], residual := [((7821914167782499180620654951422779353975727845430137656040815973888425734727 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc341 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), runs := [⟨(5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), 1418, 5, 71⟩], residual := [((1097564547200276120230480787848358308568252957864993652527665060118848681137 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1769 (rho : Nat -> F) : Prop :=
    (relationLc340 rho) * (relationLc341 rho) = ((1 : F) * rho 1769)

def relationLc342 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), runs := [⟨(5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), 1418, 5, 71⟩, ⟨(6555528165463321520114853654488928723024257669680242975904187434710837732905 : F), 1417, 5, 71⟩], residual := [((306301646614418887093755985576747439466372890556710306126617233072620346760 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1770) * ((1 : F) + (1 : F) * rho 1769) = (relationLc342 rho)

def relationLc343 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6555528165463321520114853654488928723024257669680242975904187434710837732905 : F), runs := [⟨(5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), 1417, 5, 71⟩, ⟨(6555528165463321520114853654488928723024257669680242975904187434710837732905 : F), 1418, 5, 71⟩], residual := [((8181626747822779416252867083787740891747474116092964266976805209581318554994 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1771) * ((1 : F) + (-1 : F) * rho 1769) = (relationLc343 rho)

def relationLc344 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 71⟩], residual := [((1 : F), 1770), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1234) * (relationLc344 rho) = ((1 : F) * rho 1772)

def relationLc345 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 71⟩], residual := [((1 : F), 1771), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1234) * (relationLc345 rho) = ((1 : F) * rho 1773)

def relationLc346 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5906282420730200729219547836776917049119331455532752804245301219830904456945 : F), 1417, 5, 72⟩], residual := [((7125368184004558136207273332685448448086759513894762010576501787206500426713 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc347 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), runs := [⟨(2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), 1418, 5, 72⟩], residual := [((853705323836438218659889131819209372621827479297190955966732585862140613693 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1774 (rho : Nat -> F) : Prop :=
    (relationLc346 rho) * (relationLc347 rho) = ((1 : F) * rho 1774)

def relationLc348 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), runs := [⟨(2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), 1418, 5, 72⟩, ⟨(5704272840534460730286932281678626892107234020248203562327746293045794687885 : F), 1417, 5, 72⟩], residual := [((3668089265613646164681248006942321341841371170352762943028441079221995031072 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1775) * ((1 : F) + (1 : F) * rho 1774) = (relationLc348 rho)

def relationLc349 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5704272840534460730286932281678626892107234020248203562327746293045794687885 : F), runs := [⟨(2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), 1417, 5, 72⟩, ⟨(5704272840534460730286932281678626892107234020248203562327746293045794687885 : F), 1418, 5, 72⟩], residual := [((4602370274756503558828870034767643896157617843616217244583004512030183601593 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1776) * ((1 : F) + (-1 : F) * rho 1774) = (relationLc349 rho)

def relationLc350 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 72⟩], residual := [((1 : F), 1775), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1235) * (relationLc350 rho) = ((1 : F) * rho 1777)

def relationLc351 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 72⟩], residual := [((1 : F), 1776), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1235) * (relationLc351 rho) = ((1 : F) * rho 1778)

def relationLc352 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8007989290322952964580282096633098651683917914141964677476285041725790891813 : F), 1417, 5, 73⟩], residual := [((2904879038920373626759952960327022534321970667148207608417077592528813201390 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), runs := [⟨(1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), 1418, 5, 73⟩], residual := [((6773916005749358031994496606457031539973922789689421584856127361866838763353 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1779 (rho : Nat -> F) : Prop :=
    (relationLc352 rho) * (relationLc353 rho) = ((1 : F) * rho 1779)

def relationLc354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), runs := [⟨(1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), 1418, 5, 73⟩, ⟨(4869187651454854638060835650617446411710402072299691191364686438859296681914 : F), 1417, 5, 73⟩], residual := [((4899262263668088193846796645860510288726353612853529952636291356793004673252 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1780) * ((1 : F) + (1 : F) * rho 1779) = (relationLc354 rho)

def relationLc355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4869187651454854638060835650617446411710402072299691191364686438859296681914 : F), runs := [⟨(1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), 1417, 5, 73⟩, ⟨(4869187651454854638060835650617446411710402072299691191364686438859296681914 : F), 1418, 5, 73⟩], residual := [((7803497122239555848708020479765301947600485471286960728898808320056849607543 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1781) * ((1 : F) + (-1 : F) * rho 1779) = (relationLc355 rho)

def relationLc356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 73⟩], residual := [((1 : F), 1780), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1236) * (relationLc356 rho) = ((1 : F) * rho 1782)

def relationLc357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 73⟩], residual := [((1 : F), 1781), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1236) * (relationLc357 rho) = ((1 : F) * rho 1783)

def relationLc358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3907588607902144195434749636024380116580419455601458851330786713184793306799 : F), 1417, 5, 74⟩], residual := [((7310336273222929023160253185102680675368687000562120482542043788957220361700 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc359 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), runs := [⟨(2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), 1418, 5, 74⟩], residual := [((8025959025556563078755771057585518905175732075509521885122129402111728427797 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1784 (rho : Nat -> F) : Prop :=
    (relationLc358 rho) * (relationLc359 rho) = ((1 : F) * rho 1784)

def relationLc360 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), runs := [⟨(2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), 1418, 5, 74⟩, ⟨(2953081494870659156637601418400972365855521389400295551522984877908629245195 : F), 1417, 5, 74⟩], residual := [((1459532420166477819582789146644925833988047616518628844683447979530810026147 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1785) * ((1 : F) + (1 : F) * rho 1784) = (relationLc360 rho)

def relationLc361 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2953081494870659156637601418400972365855521389400295551522984877908629245195 : F), runs := [⟨(2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), 1417, 5, 74⟩, ⟨(2953081494870659156637601418400972365855521389400295551522984877908629245195 : F), 1418, 5, 74⟩], residual := [((7496986025375963379992993904161590865044308211264125435993746368497481505754 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1786) * ((1 : F) + (-1 : F) * rho 1784) = (relationLc361 rho)

def relationLc362 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 74⟩], residual := [((1 : F), 1785), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1237) * (relationLc362 rho) = ((1 : F) * rho 1787)

def relationLc363 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 74⟩], residual := [((1 : F), 1786), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1237) * (relationLc363 rho) = ((1 : F) * rho 1788)

def relationLc364 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5330777237550301326279631603675522992751473509505799406043498248082646798362 : F), 1417, 5, 75⟩], residual := [((2682212520142344704543654303420355952810144027618488497449698769358707628854 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc365 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8432212819715092179264232316859245245900141338954067432723633359164625829332 : F), runs := [⟨(8432212819715092179264232316859245245900141338954067432723633359164625829332 : F), 1418, 5, 75⟩], residual := [((3151539749158801689123350398745820068634872813239138857070885713103336514295 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1789 (rho : Nat -> F) : Prop :=
    (relationLc364 rho) * (relationLc365 rho) = ((1 : F) * rho 1789)

def relationLc366 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8432212819715092179264232316859245245900141338954067432723633359164625829332 : F), runs := [⟨(7926309115149612861327937217162979125932944749642925108110701868842746719457 : F), 1417, 5, 75⟩, ⟨(8432212819715092179264232316859245245900141338954067432723633359164625829332 : F), 1418, 5, 75⟩], residual := [((1480865828722514642120287287495259171643817646607390535121921824368066068311 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
