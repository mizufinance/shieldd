import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs5

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc49 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5979975440407286069589528792777250779484024110408852462628728707560934706920 : F), 256, 5, 16⟩], residual := [((6791698752667339510952296595555870991643831317666830443332139919776260595394 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc50 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3726745087124593525911004095107247886843387872684749432940666162562970397141 : F), runs := [⟨(3726745087124593525911004095107247886843387872684749432940666162562970397141 : F), 257, 5, 16⟩], residual := [((763284116831443282993557116557673346460566117731661487911542239630748918043 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow332 (rho : Nat -> F) : Prop :=
    (relationLc49 rho) * (relationLc50 rho) = ((1 : F) * rho 333)

def relationLc51 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3726745087124593525911004095107247886843387872684749432940666162562970397141 : F), runs := [⟨(3726745087124593525911004095107247886843387872684749432940666162562970397141 : F), 257, 5, 16⟩, ⟨(7761604035701278908899148480254998484567686388115885481234967494979903668416 : F), 256, 5, 16⟩], residual := [((1606903675034226082467191212277236860838516972150410260719167996052766939078 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 334) * ((1 : F) + (1 : F) * rho 333) = (relationLc51 rho)

def relationLc52 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7761604035701278908899148480254998484567686388115885481234967494979903668416 : F), runs := [⟨(3726745087124593525911004095107247886843387872684749432940666162562970397141 : F), 256, 5, 16⟩, ⟨(7761604035701278908899148480254998484567686388115885481234967494979903668416 : F), 257, 5, 16⟩], residual := [((4989764476136359323643015539428853238256611734537667367151373880363577085209 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 335) * ((1 : F) + (-1 : F) * rho 333) = (relationLc52 rho)

def relationLc53 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 16⟩], residual := [((1 : F), 334), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 18) * (relationLc53 rho) = ((1 : F) * rho 336)

def relationLc54 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 16⟩], residual := [((1 : F), 335), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 18) * (relationLc54 rho) = ((1 : F) * rho 337)

def relationLc55 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2784804284256257170464390736314249556257102062927289168087730753011907964254 : F), 256, 5, 17⟩], residual := [((1035256098324900012504832895605271619171000926193114334504037188551361788563 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc56 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6193662063878718738684460956845089958082415637995041370921760294626310638943 : F), runs := [⟨(6193662063878718738684460956845089958082415637995041370921760294626310638943 : F), 257, 5, 17⟩], residual := [((5072169898700297741154591405073783913386016341873794892229721658094037331710 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow337 (rho : Nat -> F) : Prop :=
    (relationLc55 rho) * (relationLc56 rho) = ((1 : F) * rho 338)

def relationLc57 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6193662063878718738684460956845089958082415637995041370921760294626310638943 : F), runs := [⟨(1222447728826366809853426312142949382246780904179163582249514978811294189151 : F), 256, 5, 17⟩, ⟨(6193662063878718738684460956845089958082415637995041370921760294626310638943 : F), 257, 5, 17⟩], residual := [((1410730098749009970299425619933691002269413518925886749144434736523943077703 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 339) * ((1 : F) + (1 : F) * rho 338) = (relationLc57 rho)

def relationLc58 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1222447728826366809853426312142949382246780904179163582249514978811294189151 : F), runs := [⟨(1222447728826366809853426312142949382246780904179163582249514978811294189151 : F), 257, 5, 17⟩, ⟨(6193662063878718738684460956845089958082415637995041370921760294626310638943 : F), 256, 5, 17⟩], residual := [((2995070794936950531871641020434249128412571282127239252884716346409366848276 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 340) * ((1 : F) + (-1 : F) * rho 338) = (relationLc58 rho)

def relationLc59 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 17⟩], residual := [((1 : F), 339), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 19) * (relationLc59 rho) = ((1 : F) * rho 341)

def relationLc60 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 17⟩], residual := [((1 : F), 340), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 19) * (relationLc60 rho) = ((1 : F) * rho 342)

def relationLc61 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2680000823858780700261740378019139547137909680954021722339230432104823098462 : F), 256, 5, 18⟩], residual := [((4546888810253427862563751215304350507451643161519748281461054251858758583289 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc62 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1364136956584929250201922665879955690733936032481550305410722252206655464920 : F), runs := [⟨(1364136956584929250201922665879955690733936032481550305410722252206655464920 : F), 257, 5, 18⟩], residual := [((3790065893014975294040975367143594764489481636140049342475276949258862854067 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow342 (rho : Nat -> F) : Prop :=
    (relationLc61 rho) * (relationLc62 rho) = ((1 : F) * rho 343)

def relationLc63 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1364136956584929250201922665879955690733936032481550305410722252206655464920 : F), runs := [⟨(1364136956584929250201922665879955690733936032481550305410722252206655464920 : F), 257, 5, 18⟩, ⟨(5485175092089480818628419818029597296956852831927582672006377779193002896424 : F), 256, 5, 18⟩], residual := [((8294724869227937287198016322983507314159797912900961813539534530104544761607 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 344) * ((1 : F) + (1 : F) * rho 343) = (relationLc63 rho)

def relationLc64 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5485175092089480818628419818029597296956852831927582672006377779193002896424 : F), runs := [⟨(1364136956584929250201922665879955690733936032481550305410722252206655464920 : F), 256, 5, 18⟩, ⟨(5485175092089480818628419818029597296956852831927582672006377779193002896424 : F), 257, 5, 18⟩], residual := [((3740414361898696094609007457966699212203883412663141727660824399823632458310 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 345) * ((1 : F) + (-1 : F) * rho 343) = (relationLc64 rho)

def relationLc65 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 18⟩], residual := [((1 : F), 344), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20) * (relationLc65 rho) = ((1 : F) * rho 346)

def relationLc66 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 18⟩], residual := [((1 : F), 345), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20) * (relationLc66 rho) = ((1 : F) * rho 347)

def relationLc67 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4955490201717136320114201051988658439389552178006954900897479529446517812534 : F), 256, 5, 19⟩], residual := [((2628595992157913669545852482426131974280448347164390041202572980166040998915 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc68 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6044178197021584126713478972629326105448674831777157394465638363379298339688 : F), runs := [⟨(6044178197021584126713478972629326105448674831777157394465638363379298339688 : F), 257, 5, 19⟩], residual := [((6974640620768894566711467391274204257714987313282173069117394778589234025575 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow347 (rho : Nat -> F) : Prop :=
    (relationLc67 rho) * (relationLc68 rho) = ((1 : F) * rho 348)

def relationLc69 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6044178197021584126713478972629326105448674831777157394465638363379298339688 : F), runs := [⟨(1689973646758177051495003132762675525782996607286018373708632402152784408538 : F), 256, 5, 19⟩, ⟨(6044178197021584126713478972629326105448674831777157394465638363379298339688 : F), 257, 5, 19⟩], residual := [((4132737607469823130832119787746098766011905825197261277336881752542282964633 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 349) * ((1 : F) + (1 : F) * rho 348) = (relationLc69 rho)

def relationLc70 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1689973646758177051495003132762675525782996607286018373708632402152784408538 : F), runs := [⟨(1689973646758177051495003132762675525782996607286018373708632402152784408538 : F), 257, 5, 19⟩, ⟨(6044178197021584126713478972629326105448674831777157394465638363379298339688 : F), 256, 5, 19⟩], residual := [((2720699130896707130560031575642279219659987531043287574083495097531802883567 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 350) * ((1 : F) + (-1 : F) * rho 348) = (relationLc70 rho)

def relationLc71 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 19⟩], residual := [((1 : F), 349), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21) * (relationLc71 rho) = ((1 : F) * rho 351)

def relationLc72 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 19⟩], residual := [((1 : F), 350), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21) * (relationLc72 rho) = ((1 : F) * rho 352)

def relationLc73 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2221768204210492498020933308195187315476565815756952625735581012389492030511 : F), 256, 5, 20⟩], residual := [((3859030896250291175109147461089968864885390873142426417620530283286390990479 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc74 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1807286812265560548462668857956257804112937058639905309261959101975576893659 : F), runs := [⟨(1807286812265560548462668857956257804112937058639905309261959101975576893659 : F), 257, 5, 20⟩], residual := [((8373778597553758246218115803666110330487320618829657481734343292439764354698 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow352 (rho : Nat -> F) : Prop :=
    (relationLc73 rho) * (relationLc74 rho) = ((1 : F) * rho 353)

def relationLc75 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1807286812265560548462668857956257804112937058639905309261959101975576893659 : F), runs := [⟨(1807286812265560548462668857956257804112937058639905309261959101975576893659 : F), 257, 5, 20⟩, ⟨(2290048308833514025143266652820351471867705435718945788713899960744371949290 : F), 256, 5, 20⟩], residual := [((3502928614648296691007724303886187908996652909362464225966885039086319166794 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 354) * ((1 : F) + (1 : F) * rho 353) = (relationLc75 rho)

def relationLc76 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2290048308833514025143266652820351471867705435718945788713899960744371949290 : F), runs := [⟨(1807286812265560548462668857956257804112937058639905309261959101975576893659 : F), 256, 5, 20⟩, ⟨(2290048308833514025143266652820351471867705435718945788713899960744371949290 : F), 257, 5, 20⟩], residual := [((77001094337513284289421777759057518406237692400016935885954782956546695152 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 355) * ((1 : F) + (-1 : F) * rho 353) = (relationLc76 rho)

def relationLc77 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 20⟩], residual := [((1 : F), 354), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22) * (relationLc77 rho) = ((1 : F) * rho 356)

def relationLc78 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 20⟩], residual := [((1 : F), 355), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22) * (relationLc78 rho) = ((1 : F) * rho 357)

def relationLc79 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1947879467774202825890220935283645743249202955426461317518953481162964368709 : F), 256, 5, 21⟩], residual := [((3794550865036835053360616874229700906540341768858835895454352617313486757936 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc80 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5093487347277176555558710368066104965831187730741424114456331013559654475770 : F), runs := [⟨(5093487347277176555558710368066104965831187730741424114456331013559654475770 : F), 257, 5, 21⟩], residual := [((4613681404561041414491686275647308176147390102568119351747506750787165972295 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow357 (rho : Nat -> F) : Prop :=
    (relationLc79 rho) * (relationLc80 rho) = ((1 : F) * rho 358)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
