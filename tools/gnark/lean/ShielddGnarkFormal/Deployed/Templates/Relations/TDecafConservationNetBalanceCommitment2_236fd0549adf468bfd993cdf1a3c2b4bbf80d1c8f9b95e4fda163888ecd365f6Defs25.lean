import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs24

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationRow1138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 591) * (relationLc352 rho) = ((1 : F) * rho 1138)

def relationLc353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3907588607902144195434749636024380116580419455601458851330786713184793306799 : F), 772, 5, 74⟩], residual := [((7310336273222929023160253185102680675368687000562120482542043788957220361700 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), runs := [⟨(2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), 773, 5, 74⟩], residual := [((8025959025556563078755771057585518905175732075509521885122129402111728427797 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1139 (rho : Nat -> F) : Prop :=
    (relationLc353 rho) * (relationLc354 rho) = ((1 : F) * rho 1139)

def relationLc355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), runs := [⟨(2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), 773, 5, 74⟩, ⟨(2953081494870659156637601418400972365855521389400295551522984877908629245195 : F), 772, 5, 74⟩], residual := [((1459532420166477819582789146644925833988047616518628844683447979530810026147 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1140) * ((1 : F) + (1 : F) * rho 1139) = (relationLc355 rho)

def relationLc356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2953081494870659156637601418400972365855521389400295551522984877908629245195 : F), runs := [⟨(2332500334353175649926334035465444276206022705346670750949774702715269952283 : F), 772, 5, 74⟩, ⟨(2953081494870659156637601418400972365855521389400295551522984877908629245195 : F), 773, 5, 74⟩], residual := [((7496986025375963379992993904161590865044308211264125435993746368497481505754 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1141) * ((1 : F) + (-1 : F) * rho 1139) = (relationLc356 rho)

def relationLc357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 74⟩], residual := [((1 : F), 1140), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 592) * (relationLc357 rho) = ((1 : F) * rho 1142)

def relationLc358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 74⟩], residual := [((1 : F), 1141), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 592) * (relationLc358 rho) = ((1 : F) * rho 1143)

def relationLc359 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5330777237550301326279631603675522992751473509505799406043498248082646798362 : F), 772, 5, 75⟩], residual := [((2682212520142344704543654303420355952810144027618488497449698769358707628854 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc360 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8432212819715092179264232316859245245900141338954067432723633359164625829332 : F), runs := [⟨(8432212819715092179264232316859245245900141338954067432723633359164625829332 : F), 773, 5, 75⟩], residual := [((3151539749158801689123350398745820068634872813239138857070885713103336514295 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1144 (rho : Nat -> F) : Prop :=
    (relationLc359 rho) * (relationLc360 rho) = ((1 : F) * rho 1144)

def relationLc361 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8432212819715092179264232316859245245900141338954067432723633359164625829332 : F), runs := [⟨(7926309115149612861327937217162979125932944749642925108110701868842746719457 : F), 772, 5, 75⟩, ⟨(8432212819715092179264232316859245245900141338954067432723633359164625829332 : F), 773, 5, 75⟩], residual := [((1480865828722514642120287287495259171643817646607390535121921824368066068311 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1145) * ((1 : F) + (1 : F) * rho 1144) = (relationLc361 rho)

def relationLc362 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7926309115149612861327937217162979125932944749642925108110701868842746719457 : F), runs := [⟨(7926309115149612861327937217162979125932944749642925108110701868842746719457 : F), 773, 5, 75⟩, ⟨(8432212819715092179264232316859245245900141338954067432723633359164625829332 : F), 772, 5, 75⟩], residual := [((7509465159642451727068339216022475562219650711777304977640349704022894534018 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1146) * ((1 : F) + (-1 : F) * rho 1144) = (relationLc362 rho)

def relationLc363 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 75⟩], residual := [((1 : F), 1145), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 593) * (relationLc363 rho) = ((1 : F) * rho 1147)

def relationLc364 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 75⟩], residual := [((1 : F), 1146), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 593) * (relationLc364 rho) = ((1 : F) * rho 1148)

def relationLc365 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(683703965850291500163691125338411537751969702380929793141907878592369322399 : F), 772, 5, 76⟩], residual := [((4490044576366345660031580230148286205133388114810353518707097344727418131775 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc366 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3779361256357846459113116397775981011821592665424214443187777918946148614405 : F), runs := [⟨(3779361256357846459113116397775981011821592665424214443187777918946148614405 : F), 773, 5, 76⟩], residual := [((400136255392605510129298698647485477899447337320648663278145297180823294398 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1149 (rho : Nat -> F) : Prop :=
    (relationLc365 rho) * (relationLc366 rho) = ((1 : F) * rho 1149)

def relationLc367 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3779361256357846459113116397775981011821592665424214443187777918946148614405 : F), runs := [⟨(3779361256357846459113116397775981011821592665424214443187777918946148614405 : F), 773, 5, 76⟩, ⟨(7636859716452882585418058068148468565129662016995459552370804273235668457591 : F), 772, 5, 76⟩], residual := [((1827201974288611886172639413314396109215846559115876371244274446423658822383 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1150) * ((1 : F) + (1 : F) * rho 1149) = (relationLc367 rho)

def relationLc368 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7636859716452882585418058068148468565129662016995459552370804273235668457591 : F), runs := [⟨(3779361256357846459113116397775981011821592665424214443187777918946148614405 : F), 772, 5, 76⟩, ⟨(7636859716452882585418058068148468565129662016995459552370804273235668457591 : F), 773, 5, 76⟩], residual := [((5153487541653614618113919721888896603271473400132102875368154106802111511590 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1151) * ((1 : F) + (-1 : F) * rho 1149) = (relationLc368 rho)

def relationLc369 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 76⟩], residual := [((1 : F), 1150), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 594) * (relationLc369 rho) = ((1 : F) * rho 1152)

def relationLc370 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 76⟩], residual := [((1 : F), 1151), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 594) * (relationLc370 rho) = ((1 : F) * rho 1153)

def relationLc371 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5284444695048140169306260292657983424515981966488053120461872876652682418576 : F), 772, 5, 77⟩], residual := [((3612947639137712289195135641997932293831331876359102224021392599134921243392 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc372 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (232788961547844385014751212837818799855299041912167626019091979855582528600 : F), runs := [⟨(232788961547844385014751212837818799855299041912167626019091979855582528600 : F), 773, 5, 77⟩], residual := [((3858462969867999679055465004831174233644415682387226173767459134862531439770 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1154 (rho : Nat -> F) : Prop :=
    (relationLc371 rho) * (relationLc372 rho) = ((1 : F) * rho 1154)

def relationLc373 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (232788961547844385014751212837818799855299041912167626019091979855582528600 : F), runs := [⟨(232788961547844385014751212837818799855299041912167626019091979855582528600 : F), 773, 5, 77⟩, ⟨(7697082966193760979187792557682309031546629212726125710501873411789897490069 : F), 772, 5, 77⟩], residual := [((1589912823262008592593746794090155414980596109971224609365145936052269479870 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1155) * ((1 : F) + (1 : F) * rho 1154) = (relationLc373 rho)

def relationLc374 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7697082966193760979187792557682309031546629212726125710501873411789897490069 : F), runs := [⟨(232788961547844385014751212837818799855299041912167626019091979855582528600 : F), 772, 5, 77⟩, ⟨(7697082966193760979187792557682309031546629212726125710501873411789897490069 : F), 773, 5, 77⟩], residual := [((7008375938387093343000944910135867555133633830632273472428064652442210899549 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1156) * ((1 : F) + (-1 : F) * rho 1154) = (relationLc374 rho)

def relationLc375 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 77⟩], residual := [((1 : F), 1155), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 595) * (relationLc375 rho) = ((1 : F) * rho 1157)

def relationLc376 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 77⟩], residual := [((1 : F), 1156), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 595) * (relationLc376 rho) = ((1 : F) * rho 1158)

def relationLc377 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4292408175370504894505031822460110685871086246994283398137780348691360425005 : F), 772, 5, 78⟩], residual := [((3059166678762927238025332987199288233364509191416944090820838708827478078063 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc378 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2793124955965777929399549504068267812812926456424712595749247782879681825404 : F), runs := [⟨(2793124955965777929399549504068267812812926456424712595749247782879681825404 : F), 773, 5, 78⟩], residual := [((5093929879501997410860379206698084391759764221257360367512026095840836011751 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1159 (rho : Nat -> F) : Prop :=
    (relationLc377 rho) * (relationLc378 rho) = ((1 : F) * rho 1159)

def relationLc379 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2793124955965777929399549504068267812812926456424712595749247782879681825404 : F), runs := [⟨(2793124955965777929399549504068267812812926456424712595749247782879681825404 : F), 773, 5, 78⟩, ⟨(3238324764651911107638081532913436277397935291742932868635265846508126865023 : F), 772, 5, 78⟩], residual := [((2008982310918694524024008005298670925223640965110829575737886110198998103170 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1160) * ((1 : F) + (1 : F) * rho 1159) = (relationLc379 rho)

def relationLc380 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3238324764651911107638081532913436277397935291742932868635265846508126865023 : F), runs := [⟨(2793124955965777929399549504068267812812926456424712595749247782879681825404 : F), 772, 5, 78⟩, ⟨(3238324764651911107638081532913436277397935291742932868635265846508126865023 : F), 773, 5, 78⟩], residual := [((467410820946480222873688092812096531476934702651941383175111803680609907630 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1161) * ((1 : F) + (-1 : F) * rho 1159) = (relationLc380 rho)

def relationLc381 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 78⟩], residual := [((1 : F), 1160), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 596) * (relationLc381 rho) = ((1 : F) * rho 1162)

def relationLc382 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 78⟩], residual := [((1 : F), 1161), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 596) * (relationLc382 rho) = ((1 : F) * rho 1163)

def relationLc383 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6935563805973142111680237332913758558188227638958068444512867777283744905304 : F), 772, 5, 79⟩], residual := [((6883481118440751548096691480027843104425543468314445231418185714577611373644 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
