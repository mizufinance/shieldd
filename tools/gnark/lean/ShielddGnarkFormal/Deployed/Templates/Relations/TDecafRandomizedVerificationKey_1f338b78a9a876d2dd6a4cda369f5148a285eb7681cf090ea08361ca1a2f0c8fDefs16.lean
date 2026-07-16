import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs15

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc364 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6381735882076907758829733666994419139000865977302288066455440036141343272670 : F), runs := [⟨(6381735882076907758829733666994419139000865977302288066455440036141343272670 : F), 257, 5, 68⟩, ⟨(8178684086019600428776788963199416603730950926115269944421675582685466080269 : F), 256, 5, 68⟩], residual := [((4317293776341917983161643856627357891656090044601391905393571122349505951615 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 595) * ((1 : F) + (-1 : F) * rho 593) = (relationLc364 rho)

def relationLc365 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 68⟩], residual := [((1 : F), 594), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 70) * (relationLc365 rho) = ((1 : F) * rho 596)

def relationLc366 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 68⟩], residual := [((1 : F), 595), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 70) * (relationLc366 rho) = ((1 : F) * rho 597)

def relationLc367 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3372123005021887774424946087009289440204555678066507861318664216599352821638 : F), 256, 5, 69⟩], residual := [((7051893256125772232379071968189882766792145554365486350271113435452976189797 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc368 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7687115706614567605450769945243056334713925514269138545816059769883858962023 : F), runs := [⟨(7687115706614567605450769945243056334713925514269138545816059769883858962023 : F), 257, 5, 69⟩], residual := [((5119128936249422117446661545040219479495504038648853251610860357079968667357 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow597 (rho : Nat -> F) : Prop :=
    (relationLc367 rho) * (relationLc368 rho) = ((1 : F) * rho 598)

def relationLc369 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7687115706614567605450769945243056334713925514269138545816059769883858962023 : F), runs := [⟨(5597214348017417900404029286172679723685784516602615786622858670295681115320 : F), 256, 5, 69⟩, ⟨(7687115706614567605450769945243056334713925514269138545816059769883858962023 : F), 257, 5, 69⟩], residual := [((2625301578095364184106104908706644117114873134730212565746612636888378639461 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 599) * ((1 : F) + (1 : F) * rho 598) = (relationLc369 rho)

def relationLc370 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5597214348017417900404029286172679723685784516602615786622858670295681115320 : F), runs := [⟨(5597214348017417900404029286172679723685784516602615786622858670295681115320 : F), 257, 5, 69⟩, ⟨(7687115706614567605450769945243056334713925514269138545816059769883858962023 : F), 256, 5, 69⟩], residual := [((7079511155079999714398925576408017154871907527630316463077184212265726578920 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 600) * ((1 : F) + (-1 : F) * rho 598) = (relationLc370 rho)

def relationLc371 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 69⟩], residual := [((1 : F), 599), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71) * (relationLc371 rho) = ((1 : F) * rho 601)

def relationLc372 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 69⟩], residual := [((1 : F), 600), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71) * (relationLc372 rho) = ((1 : F) * rho 602)

def relationLc373 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8185666225749794430846144650787739023696221861934424385315707228887955883205 : F), 256, 5, 70⟩], residual := [((1138038450385463163308468001875449085299714829408678439768163290155722660408 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc374 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (40778110472536828791940508259785450323905289024226405636143699226233867360 : F), runs := [⟨(40778110472536828791940508259785450323905289024226405636143699226233867360 : F), 257, 5, 70⟩], residual := [((5429798299015515662944100111838631597125674244426331474003761181336372146151 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow602 (rho : Nat -> F) : Prop :=
    (relationLc373 rho) * (relationLc374 rho) = ((1 : F) * rho 603)

def relationLc375 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (40778110472536828791940508259785450323905289024226405636143699226233867360 : F), runs := [⟨(2283636694392353545388244718535759585775051333779427510089528701508604400841 : F), 256, 5, 70⟩, ⟨(40778110472536828791940508259785450323905289024226405636143699226233867360 : F), 257, 5, 70⟩], residual := [((5922139678144869737035825254912920785674981757771754814671212108688778550895 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 604) * ((1 : F) + (1 : F) * rho 603) = (relationLc375 rho)

def relationLc376 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2283636694392353545388244718535759585775051333779427510089528701508604400841 : F), runs := [⟨(2283636694392353545388244718535759585775051333779427510089528701508604400841 : F), 257, 5, 70⟩, ⟨(40778110472536828791940508259785450323905289024226405636143699226233867360 : F), 256, 5, 70⟩], residual := [((1093760832205737787781881875496000658544674873716306113692117833674308804177 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 605) * ((1 : F) + (-1 : F) * rho 603) = (relationLc376 rho)

def relationLc377 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 70⟩], residual := [((1 : F), 604), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72) * (relationLc377 rho) = ((1 : F) * rho 606)

def relationLc378 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 70⟩], residual := [((1 : F), 605), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72) * (relationLc378 rho) = ((1 : F) * rho 607)

def relationLc379 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1253370348878293429528158011004145692447964637774466349806330659661798099713 : F), 256, 5, 71⟩], residual := [((5177285811817626865424623719269477408051499024395637386483226684730555701671 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc380 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3423201212938797518776818704278837478402171383041133652638194147869573620175 : F), runs := [⟨(3423201212938797518776818704278837478402171383041133652638194147869573620175 : F), 257, 5, 71⟩], residual := [((3367592843284670476747272752673000272108909791114671692752080632518020760681 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow607 (rho : Nat -> F) : Prop :=
    (relationLc379 rho) * (relationLc380 rho) = ((1 : F) * rho 608)

def relationLc381 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3423201212938797518776818704278837478402171383041133652638194147869573620175 : F), runs := [⟨(3423201212938797518776818704278837478402171383041133652638194147869573620175 : F), 257, 5, 71⟩, ⟨(61910469657829342192321187244024551268691741149011542722403663253838067315 : F), 256, 5, 71⟩], residual := [((8311315338750137718368374081863680094975722609246674501482956493738381598260 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 609) * ((1 : F) + (1 : F) * rho 608) = (relationLc381 rho)

def relationLc382 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (61910469657829342192321187244024551268691741149011542722403663253838067315 : F), runs := [⟨(3423201212938797518776818704278837478402171383041133652638194147869573620175 : F), 256, 5, 71⟩, ⟨(61910469657829342192321187244024551268691741149011542722403663253838067315 : F), 257, 5, 71⟩], residual := [((4705419314553287616991508755795092976095130005674868138925901345366955008146 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 610) * ((1 : F) + (-1 : F) * rho 608) = (relationLc382 rho)

def relationLc383 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 71⟩], residual := [((1 : F), 609), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73) * (relationLc383 rho) = ((1 : F) * rho 611)

def relationLc384 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 71⟩], residual := [((1 : F), 610), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73) * (relationLc384 rho) = ((1 : F) * rho 612)

def relationLc385 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3225038647207066965249142518288305004231848817992616889755291892327653920728 : F), 256, 5, 72⟩], residual := [((4944622807462013599979574477380851123515144290853061497859212195669938643605 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc386 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5800975776574563181778315819153109590300297498045686348443755407820703208197 : F), runs := [⟨(5800975776574563181778315819153109590300297498045686348443755407820703208197 : F), 257, 5, 72⟩], residual := [((522070924770264662150994421644969496201813472832552067666639466908629057618 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow612 (rho : Nat -> F) : Prop :=
    (relationLc385 rho) * (relationLc386 rho) = ((1 : F) * rho 613)

def relationLc387 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5800975776574563181778315819153109590300297498045686348443755407820703208197 : F), runs := [⟨(5800975776574563181778315819153109590300297498045686348443755407820703208197 : F), 257, 5, 72⟩, ⟨(8300176091592200879364452295849288300780958945677063264491712486763030680117 : F), 256, 5, 72⟩], residual := [((7662785896914428871727783057237637716081840631480129716804158652148196464157 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 614) * ((1 : F) + (1 : F) * rho 613) = (relationLc387 rho)

def relationLc388 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8300176091592200879364452295849288300780958945677063264491712486763030680117 : F), runs := [⟨(5800975776574563181778315819153109590300297498045686348443755407820703208197 : F), 256, 5, 72⟩, ⟨(8300176091592200879364452295849288300780958945677063264491712486763030680117 : F), 257, 5, 72⟩], residual := [((4485325941707069071562287047850445223888634056987251509239894560844401571231 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 615) * ((1 : F) + (-1 : F) * rho 613) = (relationLc388 rho)

def relationLc389 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 72⟩], residual := [((1 : F), 614), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74) * (relationLc389 rho) = ((1 : F) * rho 616)

def relationLc390 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 72⟩], residual := [((1 : F), 615), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74) * (relationLc390 rho) = ((1 : F) * rho 617)

def relationLc391 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7082044748100286856446498151604694946338813897682899219296387993480553190970 : F), 256, 5, 73⟩], residual := [((2222557722432484492449536154567798044442158058598341703639917393362435335170 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc392 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3927614533486198788686347335588378941202407903962207473666179655316548101725 : F), runs := [⟨(3927614533486198788686347335588378941202407903962207473666179655316548101725 : F), 257, 5, 73⟩], residual := [((3488455227260224643982284464778928384077632489165373676849410455541685060493 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow617 (rho : Nat -> F) : Prop :=
    (relationLc391 rho) * (relationLc392 rho) = ((1 : F) * rho 618)

def relationLc393 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3927614533486198788686347335588378941202407903962207473666179655316548101725 : F), runs := [⟨(3927614533486198788686347335588378941202407903962207473666179655316548101725 : F), 257, 5, 73⟩, ⟨(7381814320833829264109018317290595014160447884377494672283453396761152249010 : F), 256, 5, 73⟩], residual := [((4562568391610746566327202807263761772390372476837587795230995879065567080727 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 619) * ((1 : F) + (1 : F) * rho 618) = (relationLc393 rho)

def relationLc394 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7381814320833829264109018317290595014160447884377494672283453396761152249010 : F), runs := [⟨(3927614533486198788686347335588378941202407903962207473666179655316548101725 : F), 256, 5, 73⟩, ⟨(7381814320833829264109018317290595014160447884377494672283453396761152249010 : F), 257, 5, 73⟩], residual := [((5645150321476377598825970278298423837635391407433943536163340744350743001087 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 620) * ((1 : F) + (-1 : F) * rho 618) = (relationLc394 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
