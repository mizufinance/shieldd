import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs18

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationRow672 (rho : Nat -> F) : Prop :=
    (relationLc457 rho) * (relationLc458 rho) = ((1 : F) * rho 673)

def relationLc459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1642915093056168336194297989174839011735959045657272474044918542645742295404 : F), runs := [⟨(1642915093056168336194297989174839011735959045657272474044918542645742295404 : F), 257, 5, 84⟩, ⟨(3068221197755179817035986102069367988461780778979803557145745929081877779788 : F), 256, 5, 84⟩], residual := [((8396406163701621884916030678455159449146571236909625006708278741898816645618 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 674) * ((1 : F) + (1 : F) * rho 673) = (relationLc459 rho)

def relationLc460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3068221197755179817035986102069367988461780778979803557145745929081877779788 : F), runs := [⟨(1642915093056168336194297989174839011735959045657272474044918542645742295404 : F), 256, 5, 84⟩, ⟨(3068221197755179817035986102069367988461780778979803557145745929081877779788 : F), 257, 5, 84⟩], residual := [((7059873362166045987362961083589418026509864897316794138950051358551377495103 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 675) * ((1 : F) + (-1 : F) * rho 673) = (relationLc460 rho)

def relationLc461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 84⟩], residual := [((1 : F), 674), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 86) * (relationLc461 rho) = ((1 : F) * rho 676)

def relationLc462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 84⟩], residual := [((1 : F), 675), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 86) * (relationLc462 rho) = ((1 : F) * rho 677)

def relationLc463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5875314823000567718468398952994848754922664908524519324365751156649417451005 : F), 256, 5, 85⟩], residual := [((5477888473051844104213404977281314913536255982406650950202859066687533352604 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3280123669103700524397665050532530893628565732090995651830310775226771444999 : F), runs := [⟨(3280123669103700524397665050532530893628565732090995651830310775226771444999 : F), 257, 5, 85⟩], residual := [((483659877864017298282645335160677740150049015512611850596575714024882099756 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow677 (rho : Nat -> F) : Prop :=
    (relationLc463 rho) * (relationLc464 rho) = ((1 : F) * rho 678)

def relationLc465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3280123669103700524397665050532530893628565732090995651830310775226771444999 : F), runs := [⟨(3280123669103700524397665050532530893628565732090995651830310775226771444999 : F), 257, 5, 85⟩, ⟨(5818867995823713810188769644673086123981519093467107363541074668295524013206 : F), 256, 5, 85⟩], residual := [((3697219771464232280595162137423927749903258082733540678550162638856325578409 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 679) * ((1 : F) + (1 : F) * rho 678) = (relationLc465 rho)

def relationLc466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5818867995823713810188769644673086123981519093467107363541074668295524013206 : F), runs := [⟨(3280123669103700524397665050532530893628565732090995651830310775226771444999 : F), 256, 5, 85⟩, ⟨(5818867995823713810188769644673086123981519093467107363541074668295524013206 : F), 257, 5, 85⟩], residual := [((3869906991999287255572332967163802692740859564722218277265168257637774615890 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 680) * ((1 : F) + (-1 : F) * rho 678) = (relationLc466 rho)

def relationLc467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 85⟩], residual := [((1 : F), 679), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 87) * (relationLc467 rho) = ((1 : F) * rho 681)

def relationLc468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 85⟩], residual := [((1 : F), 680), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 87) * (relationLc468 rho) = ((1 : F) * rho 682)

def relationLc469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3266100972727780920478745108358337853971524136114438455381086990522349021937 : F), 256, 5, 86⟩], residual := [((108787566386572987969553219646625715175982685210276690626178449889909211465 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7031709787004940692472394662518287848099489276902889178969033723389135507548 : F), runs := [⟨(7031709787004940692472394662518287848099489276902889178969033723389135507548 : F), 257, 5, 86⟩], residual := [((8364191030312960177030230610335616396614882005722442462220723820210297943600 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow682 (rho : Nat -> F) : Prop :=
    (relationLc469 rho) * (relationLc470 rho) = ((1 : F) * rho 683)

def relationLc471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7031709787004940692472394662518287848099489276902889178969033723389135507548 : F), runs := [⟨(3595777527552999717479135258649926242040178109614114704131112648560182267603 : F), 256, 5, 86⟩, ⟨(7031709787004940692472394662518287848099489276902889178969033723389135507548 : F), 257, 5, 86⟩], residual := [((8255212142308551082837004983260861782576985914565276552720939667171274755546 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 684) * ((1 : F) + (1 : F) * rho 683) = (relationLc471 rho)

def relationLc472 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3595777527552999717479135258649926242040178109614114704131112648560182267603 : F), runs := [⟨(3595777527552999717479135258649926242040178109614114704131112648560182267603 : F), 257, 5, 86⟩, ⟨(7031709787004940692472394662518287848099489276902889178969033723389135507548 : F), 256, 5, 86⟩], residual := [((4736156545623580777384540766592061019307340316099661050493041670764466775994 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 685) * ((1 : F) + (-1 : F) * rho 683) = (relationLc472 rho)

def relationLc473 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 86⟩], residual := [((1 : F), 684), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88) * (relationLc473 rho) = ((1 : F) * rho 686)

def relationLc474 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 86⟩], residual := [((1 : F), 685), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88) * (relationLc474 rho) = ((1 : F) * rho 687)

def relationLc475 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(26200193764347171125407596709908285096460117738061776850047079451019047352 : F), 256, 5, 87⟩], residual := [((529502284087046459666488542980438945459686277092178839399050484959576701564 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc476 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7936452357988611095616823186838963009242803597836007912202524795707885778990 : F), runs := [⟨(7936452357988611095616823186838963009242803597836007912202524795707885778990 : F), 257, 5, 87⟩], residual := [((1570170090437106096843875560441493473645609531430524209506513015550493859267 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow687 (rho : Nat -> F) : Prop :=
    (relationLc475 rho) * (relationLc476 rho) = ((1 : F) * rho 688)

def relationLc477 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7936452357988611095616823186838963009242803597836007912202524795707885778990 : F), runs := [⟨(1447950144454703815601462007906504803554390041617856049204667652182942404790 : F), 256, 5, 87⟩, ⟨(7936452357988611095616823186838963009242803597836007912202524795707885778990 : F), 257, 5, 87⟩], residual := [((7904390489804459432761619287625195850025367088443500314419004926041658676337 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 689) * ((1 : F) + (1 : F) * rho 688) = (relationLc477 rho)

def relationLc478 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1447950144454703815601462007906504803554390041617856049204667652182942404790 : F), runs := [⟨(1447950144454703815601462007906504803554390041617856049204667652182942404790 : F), 257, 5, 87⟩, ⟨(7936452357988611095616823186838963009242803597836007912202524795707885778990 : F), 256, 5, 87⟩], residual := [((1144087987983058011604391365965542383344283330920575228737270886315331523144 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 690) * ((1 : F) + (-1 : F) * rho 688) = (relationLc478 rho)

def relationLc479 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 87⟩], residual := [((1 : F), 689), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89) * (relationLc479 rho) = ((1 : F) * rho 691)

def relationLc480 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 87⟩], residual := [((1 : F), 690), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89) * (relationLc480 rho) = ((1 : F) * rho 692)

def relationLc481 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7087097300354708100130994740412149671502360901401685447105460186367585798810 : F), 256, 5, 88⟩], residual := [((7582837550068422223735267140763712102417066333942182552409190141783131332570 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc482 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7317303818992294454761804521879536957884097368722720344564353606843686818560 : F), runs := [⟨(7317303818992294454761804521879536957884097368722720344564353606843686818560 : F), 257, 5, 88⟩], residual := [((7824856292175594371432062421309296506730692337607393469994065188588716269062 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow692 (rho : Nat -> F) : Prop :=
    (relationLc481 rho) * (relationLc482 rho) = ((1 : F) * rho 693)

def relationLc483 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7317303818992294454761804521879536957884097368722720344564353606843686818560 : F), runs := [⟨(2934567187173358253272806473195052784205501742296595379328422825370317735039 : F), 256, 5, 88⟩, ⟨(7317303818992294454761804521879536957884097368722720344564353606843686818560 : F), 257, 5, 88⟩], residual := [((8419960141374165358576877434272703185563564805461284139995613908481557675884 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 694) * ((1 : F) + (1 : F) * rho 693) = (relationLc483 rho)

def relationLc484 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2934567187173358253272806473195052784205501742296595379328422825370317735039 : F), runs := [⟨(2934567187173358253272806473195052784205501742296595379328422825370317735039 : F), 257, 5, 88⟩, ⟨(7317303818992294454761804521879536957884097368722720344564353606843686818560 : F), 256, 5, 88⟩], residual := [((8183137533133929953836593527067042140091951128981924624733209100941525274475 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 695) * ((1 : F) + (-1 : F) * rho 693) = (relationLc484 rho)

def relationLc485 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 88⟩], residual := [((1 : F), 694), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90) * (relationLc485 rho) = ((1 : F) * rho 696)

def relationLc486 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 88⟩], residual := [((1 : F), 695), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90) * (relationLc486 rho) = ((1 : F) * rho 697)

def relationLc487 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5553937132187018911618187782803373191498878807145456404870079374753212848821 : F), 256, 5, 89⟩], residual := [((8106250636419396786282151843311679883550901458438273481039369926572772228425 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc488 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3816215092977295608751587065614119319182446763153944430884870878015873366014 : F), runs := [⟨(3816215092977295608751587065614119319182446763153944430884870878015873366014 : F), 257, 5, 89⟩], residual := [((1113765216506362856953168545775460761137336684574255069943489410559258707144 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow697 (rho : Nat -> F) : Prop :=
    (relationLc487 rho) * (relationLc488 rho) = ((1 : F) * rho 698)

def relationLc489 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3816215092977295608751587065614119319182446763153944430884870878015873366014 : F), runs := [⟨(3816215092977295608751587065614119319182446763153944430884870878015873366014 : F), 257, 5, 89⟩, ⟨(683880372059817743273198104218967469992458893275318447673309183256736533325 : F), 256, 5, 89⟩], residual := [((6301644328001247508978276924882736661695378448284690910493273399520982279024 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 699) * ((1 : F) + (1 : F) * rho 698) = (relationLc489 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
