import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs11

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc99 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6040898278084703606807003137529967990516096655680683589984074628992017998216 : F), runs := [⟨(5305902802305707051264319939428136335020260788389258596187898762049986541053 : F), 256, 5, 32⟩, ⟨(6040898278084703606807003137529967990516096655680683589984074628992017998216 : F), 257, 5, 32⟩], residual := [((4449565551369732653569275718150486047453352804080325646965690206226838254580 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 414) * ((1 : F) + (1 : F) * rho 413) = (relationLc99 rho)

def relationLc100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5305902802305707051264319939428136335020260788389258596187898762049986541053 : F), runs := [⟨(5305902802305707051264319939428136335020260788389258596187898762049986541053 : F), 257, 5, 32⟩, ⟨(6040898278084703606807003137529967990516096655680683589984074628992017998216 : F), 256, 5, 32⟩], residual := [((2814877368443726696118547384849669017277674374461576406649511044998605996800 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 415) * ((1 : F) + (-1 : F) * rho 413) = (relationLc100 rho)

def relationLc101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 32⟩], residual := [((1 : F), 414), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 34) * (relationLc101 rho) = ((1 : F) * rho 416)

def relationLc102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 32⟩], residual := [((1 : F), 415), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 34) * (relationLc102 rho) = ((1 : F) * rho 417)

def relationLc103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2390951901919080636374557696001749605335611760845118841000002691622039366119 : F), 256, 5, 33⟩], residual := [((7435118643412649766237088463347060288844193205328919495557364512525268642612 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4339327889298312009382154954915201834845694584936220011692515152447487397113 : F), runs := [⟨(4339327889298312009382154954915201834845694584936220011692515152447487397113 : F), 257, 5, 33⟩], residual := [((5952647242997322099106275843266454433107326250844550093282472843230506741173 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow417 (rho : Nat -> F) : Prop :=
    (relationLc103 rho) * (relationLc104 rho) = ((1 : F) * rho 418)

def relationLc105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4339327889298312009382154954915201834845694584936220011692515152447487397113 : F), runs := [⟨(4339327889298312009382154954915201834845694584936220011692515152447487397113 : F), 257, 5, 33⟩, ⟨(5518622457885972293314649118454410659563509069630906029521731494429853650193 : F), 256, 5, 33⟩], residual := [((932037297588725938030836807673242895009462327618292635717409236553558997408 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 419) * ((1 : F) + (1 : F) * rho 418) = (relationLc105 rho)

def relationLc106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5518622457885972293314649118454410659563509069630906029521731494429853650193 : F), runs := [⟨(4339327889298312009382154954915201834845694584936220011692515152447487397113 : F), 256, 5, 33⟩, ⟨(5518622457885972293314649118454410659563509069630906029521731494429853650193 : F), 257, 5, 33⟩], residual := [((6253181600698670761975383693459860083874249503681351330263538576416174709777 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 420) * ((1 : F) + (-1 : F) * rho 418) = (relationLc106 rho)

def relationLc107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 33⟩], residual := [((1 : F), 419), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 35) * (relationLc107 rho) = ((1 : F) * rho 421)

def relationLc108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 33⟩], residual := [((1 : F), 420), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 35) * (relationLc108 rho) = ((1 : F) * rho 422)

def relationLc109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2511669022247206812161869629466276987337945639304938005698123059390861064989 : F), 256, 5, 34⟩], residual := [((3651366216281786421926547364596016781057486484064302133377103200620687596976 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2259012951295629764024579298461801285536326622251485130033474515142356155111 : F), runs := [⟨(2259012951295629764024579298461801285536326622251485130033474515142356155111 : F), 257, 5, 34⟩], residual := [((348095528643503982719379745132160814341763278282712383821836934807805599487 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow422 (rho : Nat -> F) : Prop :=
    (relationLc109 rho) * (relationLc110 rho) = ((1 : F) * rho 423)

def relationLc111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2259012951295629764024579298461801285536326622251485130033474515142356155111 : F), runs := [⟨(2259012951295629764024579298461801285536326622251485130033474515142356155111 : F), 257, 5, 34⟩, ⟨(615787240614527871614334113260975343889452432761734187405312639311890398429 : F), 256, 5, 34⟩], residual := [((7563854264655058385701221424827548968682131921287248312995691503799349437144 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 424) * ((1 : F) + (1 : F) * rho 423) = (relationLc111 rho)

def relationLc112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (615787240614527871614334113260975343889452432761734187405312639311890398429 : F), runs := [⟨(2259012951295629764024579298461801285536326622251485130033474515142356155111 : F), 256, 5, 34⟩, ⟨(615787240614527871614334113260975343889452432761734187405312639311890398429 : F), 257, 5, 34⟩], residual := [((6825036008606936403574758059084895642046160173684766887406037028034446940920 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 425) * ((1 : F) + (-1 : F) * rho 423) = (relationLc112 rho)

def relationLc113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 34⟩], residual := [((1 : F), 424), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 36) * (relationLc113 rho) = ((1 : F) * rho 426)

def relationLc114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 34⟩], residual := [((1 : F), 425), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 36) * (relationLc114 rho) = ((1 : F) * rho 427)

def relationLc115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7315983903096487915754023566782326847467569909030484887817389720623755155896 : F), 256, 5, 35⟩], residual := [((2833339980642050130105468187124395222836116796601658345597697387732210172573 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6295691546556716754436912436379714908434430701210537280485031833028397410397 : F), runs := [⟨(6295691546556716754436912436379714908434430701210537280485031833028397410397 : F), 257, 5, 35⟩], residual := [((2549556922254275764026477534121736154314477242231135576491077161890810328114 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow427 (rho : Nat -> F) : Prop :=
    (relationLc115 rho) * (relationLc116 rho) = ((1 : F) * rho 428)

def relationLc117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6295691546556716754436912436379714908434430701210537280485031833028397410397 : F), runs := [⟨(6295691546556716754436912436379714908434430701210537280485031833028397410397 : F), 257, 5, 35⟩, ⟨(6554496631765374631696458020546417542665533138533649817136049192449861308000 : F), 256, 5, 35⟩], residual := [((6916681249492857906630506008985655411921888986126285976219786978352487071429 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 429) * ((1 : F) + (1 : F) * rho 428) = (relationLc117 rho)

def relationLc118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6554496631765374631696458020546417542665533138533649817136049192449861308000 : F), runs := [⟨(6295691546556716754436912436379714908434430701210537280485031833028397410397 : F), 256, 5, 35⟩, ⟨(6554496631765374631696458020546417542665533138533649817136049192449861308000 : F), 257, 5, 35⟩], residual := [((1487571320597799729156916433138675965370975271164905067793436153547633830944 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 430) * ((1 : F) + (-1 : F) * rho 428) = (relationLc118 rho)

def relationLc119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 35⟩], residual := [((1 : F), 429), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 37) * (relationLc119 rho) = ((1 : F) * rho 431)

def relationLc120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 35⟩], residual := [((1 : F), 430), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 37) * (relationLc120 rho) = ((1 : F) * rho 432)

def relationLc121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6334345927168293860617691197907754261420091566533206876213950776912116811895 : F), 256, 5, 36⟩], residual := [((803980581825681997882472852881647133048328936003838712435095075808245989086 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3322832884971658379020786549972206387369304268355604981071819235682279886563 : F), runs := [⟨(3322832884971658379020786549972206387369304268355604981071819235682279886563 : F), 257, 5, 36⟩], residual := [((3742391049692554707688247834471216841214819134200172501298175408335104860001 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow432 (rho : Nat -> F) : Prop :=
    (relationLc121 rho) * (relationLc122 rho) = ((1 : F) * rho 433)

def relationLc123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3322832884971658379020786549972206387369304268355604981071819235682279886563 : F), runs := [⟨(3322832884971658379020786549972206387369304268355604981071819235682279886563 : F), 257, 5, 36⟩, ⟨(5821815196371080939141566108487615899565058757814397251452290634226070225917 : F), 256, 5, 36⟩], residual := [((2129795733956591764029297315827035874160583587213118217946240747961540846450 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 434) * ((1 : F) + (1 : F) * rho 433) = (relationLc123 rho)

def relationLc124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5821815196371080939141566108487615899565058757814397251452290634226070225917 : F), runs := [⟨(3322832884971658379020786549972206387369304268355604981071819235682279886563 : F), 256, 5, 36⟩, ⟨(5821815196371080939141566108487615899565058757814397251452290634226070225917 : F), 257, 5, 36⟩], residual := [((1342632423321852336261692036393510600183999016189562550954932080238708326577 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 435) * ((1 : F) + (-1 : F) * rho 433) = (relationLc124 rho)

def relationLc125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 36⟩], residual := [((1 : F), 434), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 38) * (relationLc125 rho) = ((1 : F) * rho 436)

def relationLc126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 36⟩], residual := [((1 : F), 435), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 38) * (relationLc126 rho) = ((1 : F) * rho 437)

def relationLc127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6051250210517190749663141116441450966628119241944618079453095600811208772222 : F), 256, 5, 37⟩], residual := [((1009916982077206128033609777361685216350669515822433705706665175388118018829 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3150268533740900499578316159152134076751680532834121341659634171961029431792 : F), runs := [⟨(3150268533740900499578316159152134076751680532834121341659634171961029431792 : F), 257, 5, 37⟩], residual := [((2898409259390194651556282054766198193763430239886953805590234007251608670059 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow437 (rho : Nat -> F) : Prop :=
    (relationLc127 rho) * (relationLc128 rho) = ((1 : F) * rho 438)

def relationLc129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3150268533740900499578316159152134076751680532834121341659634171961029431792 : F), runs := [⟨(3150268533740900499578316159152134076751680532834121341659634171961029431792 : F), 257, 5, 37⟩, ⟨(5299009025282118220688906454851861015532590982905956826222019362649553696377 : F), 256, 5, 37⟩], residual := [((2758980867967042941829566517804359186364408625440783412445230694566907463858 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 439) * ((1 : F) + (1 : F) * rho 438) = (relationLc129 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
