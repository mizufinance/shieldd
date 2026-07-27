import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs25

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationRow1262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 719) * (relationLc347 rho) = ((1 : F) * rho 1262)

def relationLc348 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8007989290322952964580282096633098651683917914141964677476285041725790891813 : F), 901, 5, 73⟩], residual := [((2904879038920373626759952960327022534321970667148207608417077592528813201390 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc349 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), runs := [⟨(1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), 902, 5, 73⟩], residual := [((6773916005749358031994496606457031539973922789689421584856127361866838763353 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1263 (rho : Nat -> F) : Prop :=
    (relationLc348 rho) * (relationLc349 rho) = ((1 : F) * rho 1263)

def relationLc350 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), runs := [⟨(1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), 902, 5, 73⟩, ⟨(4869187651454854638060835650617446411710402072299691191364686438859296681914 : F), 901, 5, 73⟩], residual := [((4899262263668088193846796645860510288726353612853529952636291356793004673252 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1264) * ((1 : F) + (1 : F) * rho 1263) = (relationLc350 rho)

def relationLc351 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4869187651454854638060835650617446411710402072299691191364686438859296681914 : F), runs := [⟨(1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), 901, 5, 73⟩, ⟨(4869187651454854638060835650617446411710402072299691191364686438859296681914 : F), 902, 5, 73⟩], residual := [((7803497122239555848708020479765301947600485471286960728898808320056849607543 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1265) * ((1 : F) + (-1 : F) * rho 1263) = (relationLc351 rho)

def relationLc352 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 73⟩], residual := [((1 : F), 1264), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 720) * (relationLc352 rho) = ((1 : F) * rho 1266)

def relationLc353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 73⟩], residual := [((1 : F), 1265), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 720) * (relationLc353 rho) = ((1 : F) * rho 1267)

def relationLc354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3907588607902144195434749636024380116580419455601458851330786713184793306799 : F), 901, 5, 74⟩], residual := [((7310336273222929023160253185102680675368687000562120482542043788957220361700 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), runs := [⟨(2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), 902, 5, 74⟩], residual := [((8025959025556563078755771057585518905175732075509521885122129402111728427797 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1268 (rho : Nat -> F) : Prop :=
    (relationLc354 rho) * (relationLc355 rho) = ((1 : F) * rho 1268)

def relationLc356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), runs := [⟨(2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), 902, 5, 74⟩, ⟨(2953081494870659156637601418400972365855521389400295551522984877908629245195 : F), 901, 5, 74⟩], residual := [((1459532420166477819582789146644925833988047616518628844683447979530810026147 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1269) * ((1 : F) + (1 : F) * rho 1268) = (relationLc356 rho)

def relationLc357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2953081494870659156637601418400972365855521389400295551522984877908629245195 : F), runs := [⟨(2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), 901, 5, 74⟩, ⟨(2953081494870659156637601418400972365855521389400295551522984877908629245195 : F), 902, 5, 74⟩], residual := [((7496986025375963379992993904161590865044308211264125435993746368497481505754 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1270) * ((1 : F) + (-1 : F) * rho 1268) = (relationLc357 rho)

def relationLc358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 74⟩], residual := [((1 : F), 1269), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 721) * (relationLc358 rho) = ((1 : F) * rho 1271)

def relationLc359 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 74⟩], residual := [((1 : F), 1270), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 721) * (relationLc359 rho) = ((1 : F) * rho 1272)

def relationLc360 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5330777237550301326279631603675522992751473509505799406043498248082646798362 : F), 901, 5, 75⟩], residual := [((2682212520142344704543654303420355952810144027618488497449698769358707628854 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc361 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8432212819715092179264232316859245245900141338954067432723633359164625829332 : F), runs := [⟨(8432212819715092179264232316859245245900141338954067432723633359164625829332 : F), 902, 5, 75⟩], residual := [((3151539749158801689123350398745820068634872813239138857070885713103336514295 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1273 (rho : Nat -> F) : Prop :=
    (relationLc360 rho) * (relationLc361 rho) = ((1 : F) * rho 1273)

def relationLc362 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8432212819715092179264232316859245245900141338954067432723633359164625829332 : F), runs := [⟨(7926309115149612861327937217162979125932944749642925108110701868842746719457 : F), 901, 5, 75⟩, ⟨(8432212819715092179264232316859245245900141338954067432723633359164625829332 : F), 902, 5, 75⟩], residual := [((1480865828722514642120287287495259171643817646607390535121921824368066068311 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1274) * ((1 : F) + (1 : F) * rho 1273) = (relationLc362 rho)

def relationLc363 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7926309115149612861327937217162979125932944749642925108110701868842746719457 : F), runs := [⟨(7926309115149612861327937217162979125932944749642925108110701868842746719457 : F), 902, 5, 75⟩, ⟨(8432212819715092179264232316859245245900141338954067432723633359164625829332 : F), 901, 5, 75⟩], residual := [((7509465159642451727068339216022475562219650711777304977640349704022894534018 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1275) * ((1 : F) + (-1 : F) * rho 1273) = (relationLc363 rho)

def relationLc364 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 75⟩], residual := [((1 : F), 1274), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 722) * (relationLc364 rho) = ((1 : F) * rho 1276)

def relationLc365 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 75⟩], residual := [((1 : F), 1275), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 722) * (relationLc365 rho) = ((1 : F) * rho 1277)

def relationLc366 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(683703965850291500163691125338411537751969702380929793141907878592369322399 : F), 901, 5, 76⟩], residual := [((4490044576366345660031580230148286205133388114810353518707097344727418131775 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc367 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3779361256357846459113116397775981011821592665424214443187777918946148614405 : F), runs := [⟨(3779361256357846459113116397775981011821592665424214443187777918946148614405 : F), 902, 5, 76⟩], residual := [((400136255392605510129298698647485477899447337320648663278145297180823294398 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1278 (rho : Nat -> F) : Prop :=
    (relationLc366 rho) * (relationLc367 rho) = ((1 : F) * rho 1278)

def relationLc368 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3779361256357846459113116397775981011821592665424214443187777918946148614405 : F), runs := [⟨(3779361256357846459113116397775981011821592665424214443187777918946148614405 : F), 902, 5, 76⟩, ⟨(7636859716452882585418058068148468565129662016995459552370804273235668457591 : F), 901, 5, 76⟩], residual := [((1827201974288611886172639413314396109215846559115876371244274446423658822383 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1279) * ((1 : F) + (1 : F) * rho 1278) = (relationLc368 rho)

def relationLc369 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7636859716452882585418058068148468565129662016995459552370804273235668457591 : F), runs := [⟨(3779361256357846459113116397775981011821592665424214443187777918946148614405 : F), 901, 5, 76⟩, ⟨(7636859716452882585418058068148468565129662016995459552370804273235668457591 : F), 902, 5, 76⟩], residual := [((5153487541653614618113919721888896603271473400132102875368154106802111511590 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1280) * ((1 : F) + (-1 : F) * rho 1278) = (relationLc369 rho)

def relationLc370 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 76⟩], residual := [((1 : F), 1279), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 723) * (relationLc370 rho) = ((1 : F) * rho 1281)

def relationLc371 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 76⟩], residual := [((1 : F), 1280), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 723) * (relationLc371 rho) = ((1 : F) * rho 1282)

def relationLc372 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5284444695048140169306260292657983424515981966488053120461872876652682418576 : F), 901, 5, 77⟩], residual := [((3612947639137712289195135641997932293831331876359102224021392599134921243392 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc373 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (232788961547844385014751212837818799855299041912167626019091979855582528600 : F), runs := [⟨(232788961547844385014751212837818799855299041912167626019091979855582528600 : F), 902, 5, 77⟩], residual := [((3858462969867999679055465004831174233644415682387226173767459134862531439770 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1283 (rho : Nat -> F) : Prop :=
    (relationLc372 rho) * (relationLc373 rho) = ((1 : F) * rho 1283)

def relationLc374 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (232788961547844385014751212837818799855299041912167626019091979855582528600 : F), runs := [⟨(232788961547844385014751212837818799855299041912167626019091979855582528600 : F), 902, 5, 77⟩, ⟨(7697082966193760979187792557682309031546629212726125710501873411789897490069 : F), 901, 5, 77⟩], residual := [((1589912823262008592593746794090155414980596109971224609365145936052269479870 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1284) * ((1 : F) + (1 : F) * rho 1283) = (relationLc374 rho)

def relationLc375 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7697082966193760979187792557682309031546629212726125710501873411789897490069 : F), runs := [⟨(232788961547844385014751212837818799855299041912167626019091979855582528600 : F), 901, 5, 77⟩, ⟨(7697082966193760979187792557682309031546629212726125710501873411789897490069 : F), 902, 5, 77⟩], residual := [((7008375938387093343000944910135867555133633830632273472428064652442210899549 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1285) * ((1 : F) + (-1 : F) * rho 1283) = (relationLc375 rho)

def relationLc376 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 77⟩], residual := [((1 : F), 1284), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 724) * (relationLc376 rho) = ((1 : F) * rho 1286)

def relationLc377 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 77⟩], residual := [((1 : F), 1285), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 724) * (relationLc377 rho) = ((1 : F) * rho 1287)

def relationLc378 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4292408175370504894505031822460110685871086246994283398137780348691360425005 : F), 901, 5, 78⟩], residual := [((3059166678762927238025332987199288233364509191416944090820838708827478078063 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
