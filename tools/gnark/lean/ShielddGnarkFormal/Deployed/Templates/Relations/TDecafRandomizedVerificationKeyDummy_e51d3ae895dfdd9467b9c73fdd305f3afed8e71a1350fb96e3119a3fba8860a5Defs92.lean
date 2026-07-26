import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs91

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc1993 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(926703710579707228865824304912950811249908438520396538221574221148333812108 : F), 2061, 5, 97⟩], residual := [((2043310958269952088101219604455223461164948471131630801005615574797184382063 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1994 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4736261520567388396505551058111050993560848256806285330687945998057644510929 : F), runs := [⟨(4736261520567388396505551058111050993560848256806285330687945998057644510929 : F), 2062, 5, 97⟩], residual := [((5299849100471461308167828109136819050294565181767251255316058889648273585615 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2542 (rho : Nat -> F) : Prop :=
    (relationLc1993 rho) * (relationLc1994 rho) = ((1 : F) * rho 2543)

def relationLc1995 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4736261520567388396505551058111050993560848256806285330687945998057644510929 : F), runs := [⟨(4736261520567388396505551058111050993560848256806285330687945998057644510929 : F), 2062, 5, 97⟩, ⟨(506247692935158806361437649197078077785596719000796408273584518286064020549 : F), 2061, 5, 97⟩], residual := [((4501082880882502688754699107850136797890612099548472498616796674217097863012 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2544) * ((1 : F) + (1 : F) * rho 2543) = (relationLc1995 rho)

def relationLc1996 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (506247692935158806361437649197078077785596719000796408273584518286064020549 : F), runs := [⟨(4736261520567388396505551058111050993560848256806285330687945998057644510929 : F), 2061, 5, 97⟩, ⟨(506247692935158806361437649197078077785596719000796408273584518286064020549 : F), 2062, 5, 97⟩], residual := [((8009172866906155394067222367701899166975213429311644532871245873517816277565 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2545) * ((1 : F) + (-1 : F) * rho 2543) = (relationLc1996 rho)

def relationLc1997 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 97⟩], residual := [((1 : F), 2544), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1904) * (relationLc1997 rho) = ((1 : F) * rho 2546)

def relationLc1998 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 97⟩], residual := [((1 : F), 2545), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1904) * (relationLc1998 rho) = ((1 : F) * rho 2547)

def relationLc1999 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4504433567208256174361875541452814826170309619331428831509159035417010671283 : F), 2061, 5, 98⟩], residual := [((3145267284228186583907498244091499234687362298660748907774300413058490871568 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2000 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1319152065543215698221911102492755603226353495163345466324257288924155557325 : F), runs := [⟨(1319152065543215698221911102492755603226353495163345466324257288924155557325 : F), 2062, 5, 98⟩], residual := [((541743037391823123499014009910894028304821752418566791495963198628705495845 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2547 (rho : Nat -> F) : Prop :=
    (relationLc1999 rho) * (relationLc2000 rho) = ((1 : F) * rho 2548)

def relationLc2001 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1319152065543215698221911102492755603226353495163345466324257288924155557325 : F), runs := [⟨(1319152065543215698221911102492755603226353495163345466324257288924155557325 : F), 2062, 5, 98⟩, ⟨(7769501368827755599192931605566160418907578471371226351096829835494835248582 : F), 2061, 5, 98⟩], residual := [((6208763637648537799611650768982157291573155189908122610142931922745768395020 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2549) * ((1 : F) + (1 : F) * rho 2548) = (relationLc2001 rho)

def relationLc2002 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7769501368827755599192931605566160418907578471371226351096829835494835248582 : F), runs := [⟨(1319152065543215698221911102492755603226353495163345466324257288924155557325 : F), 2061, 5, 98⟩, ⟨(7769501368827755599192931605566160418907578471371226351096829835494835248582 : F), 2062, 5, 98⟩], residual := [((5429822735258159657611012395482246677205948276429884023146116194473219133688 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2550) * ((1 : F) + (-1 : F) * rho 2548) = (relationLc2002 rho)

def relationLc2003 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 98⟩], residual := [((1 : F), 2549), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1905) * (relationLc2003 rho) = ((1 : F) * rho 2551)

def relationLc2004 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 98⟩], residual := [((1 : F), 2550), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1905) * (relationLc2004 rho) = ((1 : F) * rho 2552)

def relationLc2005 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6684118451110970419290924974182417975624703710825488459903719182056707260230 : F), 2061, 5, 99⟩], residual := [((7149025083245982877647105497978783864457366615031117417226442875835582438302 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2006 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8439094283497540590506542871793239202425083326345208197600762658428382920754 : F), runs := [⟨(8439094283497540590506542871793239202425083326345208197600762658428382920754 : F), 2062, 5, 99⟩], residual := [((1495666039841775673238320805849590006324700676455078833136047015772515435385 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2552 (rho : Nat -> F) : Prop :=
    (relationLc2005 rho) * (relationLc2006 rho) = ((1 : F) * rho 2553)

def relationLc2007 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8439094283497540590506542871793239202425083326345208197600762658428382920754 : F), runs := [⟨(4060921078656439863101153504165835147809808188796599194512367658779918875322 : F), 2061, 5, 99⟩, ⟨(8439094283497540590506542871793239202425083326345208197600762658428382920754 : F), 2062, 5, 99⟩], residual := [((3815297888686318892232006002720785259014233253567872620218316124621031768256 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2554) * ((1 : F) + (1 : F) * rho 2553) = (relationLc2007 rho)

def relationLc2008 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4060921078656439863101153504165835147809808188796599194512367658779918875322 : F), runs := [⟨(4060921078656439863101153504165835147809808188796599194512367658779918875322 : F), 2062, 5, 99⟩, ⟨(8439094283497540590506542871793239202425083326345208197600762658428382920754 : F), 2061, 5, 99⟩], residual := [((138932227217050329235698880910945792762860556806639135837756187935196649593 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2555) * ((1 : F) + (-1 : F) * rho 2553) = (relationLc2008 rho)

def relationLc2009 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 99⟩], residual := [((1 : F), 2554), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1906) * (relationLc2009 rho) = ((1 : F) * rho 2556)

def relationLc2010 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 99⟩], residual := [((1 : F), 2555), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1906) * (relationLc2010 rho) = ((1 : F) * rho 2557)

def relationLc2011 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3924064994534324793975474756801986090331673654531897950005235266878248442401 : F), 2061, 5, 100⟩], residual := [((5035170457329007498215706764068854229628709390625754048523837162638594296483 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2012 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3238251901170893923875304170690789248297548994624633727240622402921508296098 : F), runs := [⟨(3238251901170893923875304170690789248297548994624633727240622402921508296098 : F), 2062, 5, 100⟩], residual := [((8155230957829955237422040779833784152504074606101570959547316848164455429470 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2557 (rho : Nat -> F) : Prop :=
    (relationLc2011 rho) * (relationLc2012 rho) = ((1 : F) * rho 2558)

def relationLc2013 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3238251901170893923875304170690789248297548994624633727240622402921508296098 : F), runs := [⟨(3238251901170893923875304170690789248297548994624633727240622402921508296098 : F), 2062, 5, 100⟩, ⟨(831489309690420503408102112404806787788471955046437886410714853252018799218 : F), 2061, 5, 100⟩], residual := [((1912300677205774330347012906125109509384534584471795111298793940730872627179 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2559) * ((1 : F) + (1 : F) * rho 2558) = (relationLc2013 rho)

def relationLc2014 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (831489309690420503408102112404806787788471955046437886410714853252018799218 : F), runs := [⟨(3238251901170893923875304170690789248297548994624633727240622402921508296098 : F), 2061, 5, 100⟩, ⟨(831489309690420503408102112404806787788471955046437886410714853252018799218 : F), 2062, 5, 100⟩], residual := [((262055187765897102645017672611434223937468532503246140749754098589294437485 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2560) * ((1 : F) + (-1 : F) * rho 2558) = (relationLc2014 rho)

def relationLc2015 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 100⟩], residual := [((1 : F), 2559), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1907) * (relationLc2015 rho) = ((1 : F) * rho 2561)

def relationLc2016 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 100⟩], residual := [((1 : F), 2560), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1907) * (relationLc2016 rho) = ((1 : F) * rho 2562)

def relationLc2017 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1196062191799215498120628398783088685347096038747678159521022542856874490815 : F), 2061, 5, 101⟩], residual := [((232394475062317995667702307533282018411905725724657218403247192666026112748 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2018 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4024969340262992984114155915781887050592952034844952353735168789887307924959 : F), runs := [⟨(4024969340262992984114155915781887050592952034844952353735168789887307924959 : F), 2062, 5, 101⟩], residual := [((4433698353190224045945534049411289318335858580384154444661941282941348013884 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2562 (rho : Nat -> F) : Prop :=
    (relationLc2017 rho) * (relationLc2018 rho) = ((1 : F) * rho 2563)

def relationLc2019 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4024969340262992984114155915781887050592952034844952353735168789887307924959 : F), runs := [⟨(4024969340262992984114155915781887050592952034844952353735168789887307924959 : F), 2062, 5, 101⟩, ⟨(7242898528619896386867535930083340003800166260649760693922446510038021917526 : F), 2061, 5, 101⟩], residual := [((5140974492574679535958980064578209064928547900979885264154168132176624598985 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2564) * ((1 : F) + (1 : F) * rho 2563) = (relationLc2019 rho)

def relationLc2020 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7242898528619896386867535930083340003800166260649760693922446510038021917526 : F), runs := [⟨(4024969340262992984114155915781887050592952034844952353735168789887307924959 : F), 2061, 5, 101⟩, ⟨(7242898528619896386867535930083340003800166260649760693922446510038021917526 : F), 2062, 5, 101⟩], residual := [((133351693975587787306538269865475091956848856903036364800291141558716137471 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2565) * ((1 : F) + (-1 : F) * rho 2563) = (relationLc2020 rho)

def relationLc2021 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 101⟩], residual := [((1 : F), 2564), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1908) * (relationLc2021 rho) = ((1 : F) * rho 2566)

def relationLc2022 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 101⟩], residual := [((1 : F), 2565), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1908) * (relationLc2022 rho) = ((1 : F) * rho 2567)

def relationLc2023 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6957933836512070640691601954586154943368265695190068047948916244564022113965 : F), 2061, 5, 102⟩], residual := [((2388117029334704014295999076648404180615248067725950633314437733657386231537 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
