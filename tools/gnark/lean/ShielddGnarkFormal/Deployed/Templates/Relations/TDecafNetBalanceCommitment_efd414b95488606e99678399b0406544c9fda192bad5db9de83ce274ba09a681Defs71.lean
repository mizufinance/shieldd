import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs70

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationLc354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), runs := [⟨(1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), 4472, 5, 73⟩], residual := [((6773916005749358031994496606457031539973922789689421584856127361866838763353 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5007 (rho : Nat -> F) : Prop :=
    (relationLc353 rho) * (relationLc354 rho) = ((1 : F) * rho 4833)

def relationLc355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), runs := [⟨(1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), 4472, 5, 73⟩, ⟨(4869187651454854638060835650617446411710402072299691191364686438859296681914 : F), 4471, 5, 73⟩], residual := [((4899262263668088193846796645860510288726353612853529952636291356793004673252 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4834) * ((1 : F) + (1 : F) * rho 4833) = (relationLc355 rho)

def relationLc356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4869187651454854638060835650617446411710402072299691191364686438859296681914 : F), runs := [⟨(1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), 4471, 5, 73⟩, ⟨(4869187651454854638060835650617446411710402072299691191364686438859296681914 : F), 4472, 5, 73⟩], residual := [((7803497122239555848708020479765301947600485471286960728898808320056849607543 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4835) * ((1 : F) + (-1 : F) * rho 4833) = (relationLc356 rho)

def relationLc357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 73⟩], residual := [((1 : F), 4834), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4290) * (relationLc357 rho) = ((1 : F) * rho 4836)

def relationLc358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 73⟩], residual := [((1 : F), 4835), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4290) * (relationLc358 rho) = ((1 : F) * rho 4837)

def relationLc359 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3907588607902144195434749636024380116580419455601458851330786713184793306799 : F), 4471, 5, 74⟩], residual := [((7310336273222929023160253185102680675368687000562120482542043788957220361700 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc360 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), runs := [⟨(2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), 4472, 5, 74⟩], residual := [((8025959025556563078755771057585518905175732075509521885122129402111728427797 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5012 (rho : Nat -> F) : Prop :=
    (relationLc359 rho) * (relationLc360 rho) = ((1 : F) * rho 4838)

def relationLc361 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), runs := [⟨(2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), 4472, 5, 74⟩, ⟨(2953081494870659156637601418400972365855521389400295551522984877908629245195 : F), 4471, 5, 74⟩], residual := [((1459532420166477819582789146644925833988047616518628844683447979530810026147 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4839) * ((1 : F) + (1 : F) * rho 4838) = (relationLc361 rho)

def relationLc362 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2953081494870659156637601418400972365855521389400295551522984877908629245195 : F), runs := [⟨(2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), 4471, 5, 74⟩, ⟨(2953081494870659156637601418400972365855521389400295551522984877908629245195 : F), 4472, 5, 74⟩], residual := [((7496986025375963379992993904161590865044308211264125435993746368497481505754 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4840) * ((1 : F) + (-1 : F) * rho 4838) = (relationLc362 rho)

def relationLc363 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 74⟩], residual := [((1 : F), 4839), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4291) * (relationLc363 rho) = ((1 : F) * rho 4841)

def relationLc364 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 74⟩], residual := [((1 : F), 4840), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4291) * (relationLc364 rho) = ((1 : F) * rho 4842)

def relationLc365 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5330777237550301326279631603675522992751473509505799406043498248082646798362 : F), 4471, 5, 75⟩], residual := [((2682212520142344704543654303420355952810144027618488497449698769358707628854 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc366 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8432212819715092179264232316859245245900141338954067432723633359164625829332 : F), runs := [⟨(8432212819715092179264232316859245245900141338954067432723633359164625829332 : F), 4472, 5, 75⟩], residual := [((3151539749158801689123350398745820068634872813239138857070885713103336514295 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5017 (rho : Nat -> F) : Prop :=
    (relationLc365 rho) * (relationLc366 rho) = ((1 : F) * rho 4843)

def relationLc367 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8432212819715092179264232316859245245900141338954067432723633359164625829332 : F), runs := [⟨(7926309115149612861327937217162979125932944749642925108110701868842746719457 : F), 4471, 5, 75⟩, ⟨(8432212819715092179264232316859245245900141338954067432723633359164625829332 : F), 4472, 5, 75⟩], residual := [((1480865828722514642120287287495259171643817646607390535121921824368066068311 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4844) * ((1 : F) + (1 : F) * rho 4843) = (relationLc367 rho)

def relationLc368 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7926309115149612861327937217162979125932944749642925108110701868842746719457 : F), runs := [⟨(7926309115149612861327937217162979125932944749642925108110701868842746719457 : F), 4472, 5, 75⟩, ⟨(8432212819715092179264232316859245245900141338954067432723633359164625829332 : F), 4471, 5, 75⟩], residual := [((7509465159642451727068339216022475562219650711777304977640349704022894534018 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4845) * ((1 : F) + (-1 : F) * rho 4843) = (relationLc368 rho)

def relationLc369 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 75⟩], residual := [((1 : F), 4844), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4292) * (relationLc369 rho) = ((1 : F) * rho 4846)

def relationLc370 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 75⟩], residual := [((1 : F), 4845), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4292) * (relationLc370 rho) = ((1 : F) * rho 4847)

def relationLc371 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(683703965850291500163691125338411537751969702380929793141907878592369322399 : F), 4471, 5, 76⟩], residual := [((4490044576366345660031580230148286205133388114810353518707097344727418131775 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc372 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3779361256357846459113116397775981011821592665424214443187777918946148614405 : F), runs := [⟨(3779361256357846459113116397775981011821592665424214443187777918946148614405 : F), 4472, 5, 76⟩], residual := [((400136255392605510129298698647485477899447337320648663278145297180823294398 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5022 (rho : Nat -> F) : Prop :=
    (relationLc371 rho) * (relationLc372 rho) = ((1 : F) * rho 4848)

def relationLc373 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3779361256357846459113116397775981011821592665424214443187777918946148614405 : F), runs := [⟨(3779361256357846459113116397775981011821592665424214443187777918946148614405 : F), 4472, 5, 76⟩, ⟨(7636859716452882585418058068148468565129662016995459552370804273235668457591 : F), 4471, 5, 76⟩], residual := [((1827201974288611886172639413314396109215846559115876371244274446423658822383 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4849) * ((1 : F) + (1 : F) * rho 4848) = (relationLc373 rho)

def relationLc374 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7636859716452882585418058068148468565129662016995459552370804273235668457591 : F), runs := [⟨(3779361256357846459113116397775981011821592665424214443187777918946148614405 : F), 4471, 5, 76⟩, ⟨(7636859716452882585418058068148468565129662016995459552370804273235668457591 : F), 4472, 5, 76⟩], residual := [((5153487541653614618113919721888896603271473400132102875368154106802111511590 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4850) * ((1 : F) + (-1 : F) * rho 4848) = (relationLc374 rho)

def relationLc375 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 76⟩], residual := [((1 : F), 4849), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4293) * (relationLc375 rho) = ((1 : F) * rho 4851)

def relationLc376 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 76⟩], residual := [((1 : F), 4850), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4293) * (relationLc376 rho) = ((1 : F) * rho 4852)

def relationLc377 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5284444695048140169306260292657983424515981966488053120461872876652682418576 : F), 4471, 5, 77⟩], residual := [((3612947639137712289195135641997932293831331876359102224021392599134921243392 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc378 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (232788961547844385014751212837818799855299041912167626019091979855582528600 : F), runs := [⟨(232788961547844385014751212837818799855299041912167626019091979855582528600 : F), 4472, 5, 77⟩], residual := [((3858462969867999679055465004831174233644415682387226173767459134862531439770 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5027 (rho : Nat -> F) : Prop :=
    (relationLc377 rho) * (relationLc378 rho) = ((1 : F) * rho 4853)

def relationLc379 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (232788961547844385014751212837818799855299041912167626019091979855582528600 : F), runs := [⟨(232788961547844385014751212837818799855299041912167626019091979855582528600 : F), 4472, 5, 77⟩, ⟨(7697082966193760979187792557682309031546629212726125710501873411789897490069 : F), 4471, 5, 77⟩], residual := [((1589912823262008592593746794090155414980596109971224609365145936052269479870 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4854) * ((1 : F) + (1 : F) * rho 4853) = (relationLc379 rho)

def relationLc380 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7697082966193760979187792557682309031546629212726125710501873411789897490069 : F), runs := [⟨(232788961547844385014751212837818799855299041912167626019091979855582528600 : F), 4471, 5, 77⟩, ⟨(7697082966193760979187792557682309031546629212726125710501873411789897490069 : F), 4472, 5, 77⟩], residual := [((7008375938387093343000944910135867555133633830632273472428064652442210899549 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4855) * ((1 : F) + (-1 : F) * rho 4853) = (relationLc380 rho)

def relationLc381 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 77⟩], residual := [((1 : F), 4854), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4294) * (relationLc381 rho) = ((1 : F) * rho 4856)

def relationLc382 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 77⟩], residual := [((1 : F), 4855), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4294) * (relationLc382 rho) = ((1 : F) * rho 4857)

def relationLc383 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4292408175370504894505031822460110685871086246994283398137780348691360425005 : F), 4471, 5, 78⟩], residual := [((3059166678762927238025332987199288233364509191416944090820838708827478078063 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc384 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2793124955965777929399549504068267812812926456424712595749247782879681825404 : F), runs := [⟨(2793124955965777929399549504068267812812926456424712595749247782879681825404 : F), 4472, 5, 78⟩], residual := [((5093929879501997410860379206698084391759764221257360367512026095840836011751 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5032 (rho : Nat -> F) : Prop :=
    (relationLc383 rho) * (relationLc384 rho) = ((1 : F) * rho 4858)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
