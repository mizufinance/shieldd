import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs22

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationRow989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 458) * (relationLc327 rho) = ((1 : F) * rho 989)

def relationLc328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6243965871058553016662718872284436312489594295673912111659521004288054905871 : F), 643, 5, 70⟩], residual := [((8097035089899596317674829087795996067355516584207036979388909984789096168556 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc329 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), runs := [⟨(8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), 644, 5, 70⟩], residual := [((8152481399280699976037864206409819856258464140367291640444612544612617889236 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow990 (rho : Nat -> F) : Prop :=
    (relationLc328 rho) * (relationLc329 rho) = ((1 : F) * rho 990)

def relationLc330 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), runs := [⟨(8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), 644, 5, 70⟩, ⟨(890957564445309615335249602583520765736519557389826616813989990064887187329 : F), 643, 5, 70⟩], residual := [((946202082271144289900808698952086487059162959043847888287850488066371834513 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 991) * ((1 : F) + (1 : F) * rho 990) = (relationLc330 rho)

def relationLc331 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (890957564445309615335249602583520765736519557389826616813989990064887187329 : F), runs := [⟨(8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), 643, 5, 70⟩, ⟨(890957564445309615335249602583520765736519557389826616813989990064887187329 : F), 644, 5, 70⟩], residual := [((4335790016456525302353676189745248435386653945957487679257606811467105634208 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 992) * ((1 : F) + (-1 : F) * rho 990) = (relationLc331 rho)

def relationLc332 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 70⟩], residual := [((1 : F), 991), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 459) * (relationLc332 rho) = ((1 : F) * rho 993)

def relationLc333 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 70⟩], residual := [((1 : F), 992), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 459) * (relationLc333 rho) = ((1 : F) * rho 994)

def relationLc334 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1987785455165667403478408768327056179798479167734353698427786135116125554860 : F), 643, 5, 71⟩], residual := [((7821914167782499180620654951422779353975727845430137656040815973888425734727 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc335 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), runs := [⟨(5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), 644, 5, 71⟩], residual := [((1097564547200276120230480787848358308568252957864993652527665060118848681137 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow995 (rho : Nat -> F) : Prop :=
    (relationLc334 rho) * (relationLc335 rho) = ((1 : F) * rho 995)

def relationLc336 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), runs := [⟨(5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), 644, 5, 71⟩, ⟨(6555528165463321520114853654488928723024257669680242975904187434710837732905 : F), 643, 5, 71⟩], residual := [((306301646614418887093755985576747439466372890556710306126617233072620346760 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 996) * ((1 : F) + (1 : F) * rho 995) = (relationLc336 rho)

def relationLc337 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6555528165463321520114853654488928723024257669680242975904187434710837732905 : F), runs := [⟨(5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), 643, 5, 71⟩, ⟨(6555528165463321520114853654488928723024257669680242975904187434710837732905 : F), 644, 5, 71⟩], residual := [((8181626747822779416252867083787740891747474116092964266976805209581318554994 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 997) * ((1 : F) + (-1 : F) * rho 995) = (relationLc337 rho)

def relationLc338 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 71⟩], residual := [((1 : F), 996), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 460) * (relationLc338 rho) = ((1 : F) * rho 998)

def relationLc339 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 71⟩], residual := [((1 : F), 997), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 460) * (relationLc339 rho) = ((1 : F) * rho 999)

def relationLc340 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5906282420730200729219547836776917049119331455532752804245301219830904456945 : F), 643, 5, 72⟩], residual := [((7125368184004558136207273332685448448086759513894762010576501787206500426713 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc341 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), runs := [⟨(2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), 644, 5, 72⟩], residual := [((853705323836438218659889131819209372621827479297190955966732585862140613693 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1000 (rho : Nat -> F) : Prop :=
    (relationLc340 rho) * (relationLc341 rho) = ((1 : F) * rho 1000)

def relationLc342 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), runs := [⟨(2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), 644, 5, 72⟩, ⟨(5704272840534460730286932281678626892107234020248203562327746293045794687885 : F), 643, 5, 72⟩], residual := [((3668089265613646164681248006942321341841371170352762943028441079221995031072 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1001) * ((1 : F) + (1 : F) * rho 1000) = (relationLc342 rho)

def relationLc343 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5704272840534460730286932281678626892107234020248203562327746293045794687885 : F), runs := [⟨(2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), 643, 5, 72⟩, ⟨(5704272840534460730286932281678626892107234020248203562327746293045794687885 : F), 644, 5, 72⟩], residual := [((4602370274756503558828870034767643896157617843616217244583004512030183601593 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1002) * ((1 : F) + (-1 : F) * rho 1000) = (relationLc343 rho)

def relationLc344 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 72⟩], residual := [((1 : F), 1001), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 461) * (relationLc344 rho) = ((1 : F) * rho 1003)

def relationLc345 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 72⟩], residual := [((1 : F), 1002), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 461) * (relationLc345 rho) = ((1 : F) * rho 1004)

def relationLc346 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8007989290322952964580282096633098651683917914141964677476285041725790891813 : F), 643, 5, 73⟩], residual := [((2904879038920373626759952960327022534321970667148207608417077592528813201390 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc347 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), runs := [⟨(1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), 644, 5, 73⟩], residual := [((6773916005749358031994496606457031539973922789689421584856127361866838763353 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1005 (rho : Nat -> F) : Prop :=
    (relationLc346 rho) * (relationLc347 rho) = ((1 : F) * rho 1005)

def relationLc348 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), runs := [⟨(1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), 644, 5, 73⟩, ⟨(4869187651454854638060835650617446411710402072299691191364686438859296681914 : F), 643, 5, 73⟩], residual := [((4899262263668088193846796645860510288726353612853529952636291356793004673252 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1006) * ((1 : F) + (1 : F) * rho 1005) = (relationLc348 rho)

def relationLc349 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4869187651454854638060835650617446411710402072299691191364686438859296681914 : F), runs := [⟨(1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), 643, 5, 73⟩, ⟨(4869187651454854638060835650617446411710402072299691191364686438859296681914 : F), 644, 5, 73⟩], residual := [((7803497122239555848708020479765301947600485471286960728898808320056849607543 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1007) * ((1 : F) + (-1 : F) * rho 1005) = (relationLc349 rho)

def relationLc350 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 73⟩], residual := [((1 : F), 1006), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 462) * (relationLc350 rho) = ((1 : F) * rho 1008)

def relationLc351 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 73⟩], residual := [((1 : F), 1007), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 462) * (relationLc351 rho) = ((1 : F) * rho 1009)

def relationLc352 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3907588607902144195434749636024380116580419455601458851330786713184793306799 : F), 643, 5, 74⟩], residual := [((7310336273222929023160253185102680675368687000562120482542043788957220361700 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), runs := [⟨(2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), 644, 5, 74⟩], residual := [((8025959025556563078755771057585518905175732075509521885122129402111728427797 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1010 (rho : Nat -> F) : Prop :=
    (relationLc352 rho) * (relationLc353 rho) = ((1 : F) * rho 1010)

def relationLc354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), runs := [⟨(2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), 644, 5, 74⟩, ⟨(2953081494870659156637601418400972365855521389400295551522984877908629245195 : F), 643, 5, 74⟩], residual := [((1459532420166477819582789146644925833988047616518628844683447979530810026147 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1011) * ((1 : F) + (1 : F) * rho 1010) = (relationLc354 rho)

def relationLc355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2953081494870659156637601418400972365855521389400295551522984877908629245195 : F), runs := [⟨(2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), 643, 5, 74⟩, ⟨(2953081494870659156637601418400972365855521389400295551522984877908629245195 : F), 644, 5, 74⟩], residual := [((7496986025375963379992993904161590865044308211264125435993746368497481505754 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1012) * ((1 : F) + (-1 : F) * rho 1010) = (relationLc355 rho)

def relationLc356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 74⟩], residual := [((1 : F), 1011), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 463) * (relationLc356 rho) = ((1 : F) * rho 1013)

def relationLc357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 74⟩], residual := [((1 : F), 1012), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 463) * (relationLc357 rho) = ((1 : F) * rho 1014)

def relationLc358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5330777237550301326279631603675522992751473509505799406043498248082646798362 : F), 643, 5, 75⟩], residual := [((2682212520142344704543654303420355952810144027618488497449698769358707628854 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
