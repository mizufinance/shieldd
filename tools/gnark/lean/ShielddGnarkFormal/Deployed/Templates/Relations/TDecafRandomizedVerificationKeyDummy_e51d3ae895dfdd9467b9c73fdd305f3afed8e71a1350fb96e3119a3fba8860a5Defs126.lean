import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs125

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow3352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2024) * (relationLc2786 rho) = ((1 : F) * rho 3353)

def relationLc2787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 68⟩], residual := [((1 : F), 3352), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2024) * (relationLc2787 rho) = ((1 : F) * rho 3354)

def relationLc2788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 69⟩, ⟨(1 : F), 2810, 8, 69⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3354 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2788 rho) = ((1 : F) * rho 3355)

def relationLc2789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5042726138337050410117481750209014021783211713334716980850264846270323605457 : F), 2061, 5, 149⟩, ⟨(5042726138337050410117481750209014021783211713334716980850264846270323605457 : F), 2809, 8, 69⟩], residual := [((1802206381324757352314972469660815013858957099923618989665176697551987854137 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4803077331712487638838166294337594342563040291491461883571497988242232293798 : F), runs := [⟨(4803077331712487638838166294337594342563040291491461883571497988242232293798 : F), 2062, 5, 149⟩, ⟨(4803077331712487638838166294337594342563040291491461883571497988242232293798 : F), 2810, 8, 69⟩], residual := [((3459442394221216639749335745306415410227967554436235842074316218566856732320 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3355 (rho : Nat -> F) : Prop :=
    (relationLc2789 rho) * (relationLc2790 rho) = ((1 : F) * rho 3356)

def relationLc2791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4803077331712487638838166294337594342563040291491461883571497988242232293798 : F), runs := [⟨(4803077331712487638838166294337594342563040291491461883571497988242232293798 : F), 2062, 5, 149⟩, ⟨(4803077331712487638838166294337594342563040291491461883571497988242232293798 : F), 2810, 8, 69⟩, ⟨(5128164705259837275234181535741663473209262691951634484413792923865871853031 : F), 2061, 5, 149⟩, ⟨(5128164705259837275234181535741663473209262691951634484413792923865871853031 : F), 2809, 8, 69⟩], residual := [((7384575298087074578510562222141553492010695665543891993484687932835507695401 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3356 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2791 rho) = ((1 : F) * rho 3357)

def relationRow3357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3358) * ((1 : F) + (1 : F) * rho 3356) = ((1 : F) * rho 3357)

def relationLc2792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3641384417715882785410658644443952188812859043662601944363735467675176945243 : F), runs := [⟨(3316297044168533149014643403039883058166636643202429343521440532051537386010 : F), 2061, 5, 149⟩, ⟨(3316297044168533149014643403039883058166636643202429343521440532051537386010 : F), 2809, 8, 69⟩, ⟨(3641384417715882785410658644443952188812859043662601944363735467675176945243 : F), 2062, 5, 149⟩, ⟨(3641384417715882785410658644443952188812859043662601944363735467675176945243 : F), 2810, 8, 69⟩], residual := [((1059886451341295845738262716639993039365203669610171834450545523081901543640 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3358 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2792 rho) = ((1 : F) * rho 3359)

def relationRow3359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3360) * ((1 : F) + (-1 : F) * rho 3356) = ((1486780287543954489823522891297711284396403648289032540050057456190694907788 : F) * rho 3355 + (1 : F) * rho 3359)

def relationLc2793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 69⟩], residual := [((1 : F), 3358), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2025) * (relationLc2793 rho) = ((1 : F) * rho 3361)

def relationLc2794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 69⟩], residual := [((1 : F), 3360), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2025) * (relationLc2794 rho) = ((1 : F) * rho 3362)

def relationLc2795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 70⟩, ⟨(1 : F), 2810, 8, 70⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3362 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2795 rho) = ((1 : F) * rho 3363)

def relationLc2796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(664720289368771774607689558907679234755924170859141298034878778977921393150 : F), 2061, 5, 149⟩, ⟨(664720289368771774607689558907679234755924170859141298034878778977921393150 : F), 2809, 8, 70⟩], residual := [((3852354410364297846567328813030532193415590370172629429674586400220246585410 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1840999688597703629631039258546352622862511100796735162417886474873228693825 : F), runs := [⟨(1840999688597703629631039258546352622862511100796735162417886474873228693825 : F), 2062, 5, 149⟩, ⟨(1840999688597703629631039258546352622862511100796735162417886474873228693825 : F), 2810, 8, 70⟩], residual := [((1673511469619955977518183988565504897056510131010753193051227192168730177644 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3363 (rho : Nat -> F) : Prop :=
    (relationLc2796 rho) * (relationLc2797 rho) = ((1 : F) * rho 3364)

def relationLc2798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1840999688597703629631039258546352622862511100796735162417886474873228693825 : F), runs := [⟨(1509657088705954584862288366931791726639437790517727113003330335972982095490 : F), 2061, 5, 149⟩, ⟨(1509657088705954584862288366931791726639437790517727113003330335972982095490 : F), 2809, 8, 70⟩, ⟨(1840999688597703629631039258546352622862511100796735162417886474873228693825 : F), 2062, 5, 149⟩, ⟨(1840999688597703629631039258546352622862511100796735162417886474873228693825 : F), 2810, 8, 70⟩], residual := [((7992060264098102768861749592822150277097207942271381091284693659157662692314 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3364 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2798 rho) = ((1 : F) * rho 3365)

def relationRow3365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3366) * ((1 : F) + (1 : F) * rho 3364) = ((1 : F) * rho 3365)

def relationLc2799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6603462060830666794617785680235193908513388234357328665517346981044180545216 : F), runs := [⟨(6603462060830666794617785680235193908513388234357328665517346981044180545216 : F), 2062, 5, 149⟩, ⟨(6603462060830666794617785680235193908513388234357328665517346981044180545216 : F), 2810, 8, 70⟩, ⟨(6934804660722415839386536571849754804736461544636336714931903119944427143551 : F), 2061, 5, 149⟩, ⟨(6934804660722415839386536571849754804736461544636336714931903119944427143551 : F), 2809, 8, 70⟩], residual := [((452401485330267655387075345959396254278691392882682736650539796759746546727 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3366 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2799 rho) = ((1 : F) * rho 3367)

def relationRow3367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3368) * ((1 : F) + (-1 : F) * rho 3364) = ((3350656777303658214493327625478144349501948891314462275421216810846210789315 : F) * rho 3363 + (1 : F) * rho 3367)

def relationLc2800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 70⟩], residual := [((1 : F), 3366), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2026) * (relationLc2800 rho) = ((1 : F) * rho 3369)

def relationLc2801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 70⟩], residual := [((1 : F), 3368), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2026) * (relationLc2801 rho) = ((1 : F) * rho 3370)

def relationLc2802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 71⟩, ⟨(1 : F), 2810, 8, 71⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3370 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2802 rho) = ((1 : F) * rho 3371)

def relationLc2803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5791789347728941516993523159659494889333240044800236722540434826636000096086 : F), 2061, 5, 149⟩, ⟨(5791789347728941516993523159659494889333240044800236722540434826636000096086 : F), 2809, 8, 71⟩], residual := [((4828905915229688026472990501082234424529133778340273211941412939713368772977 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6570330944860596111059142108479099720512137819754909616625358705125934600095 : F), runs := [⟨(6570330944860596111059142108479099720512137819754909616625358705125934600095 : F), 2062, 5, 149⟩, ⟨(6570330944860596111059142108479099720512137819754909616625358705125934600095 : F), 2810, 8, 71⟩], residual := [((4846688529128689085673653848924591249673793542413264056059586517802268792870 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3371 (rho : Nat -> F) : Prop :=
    (relationLc2803 rho) * (relationLc2804 rho) = ((1 : F) * rho 3372)

def relationLc2805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6570330944860596111059142108479099720512137819754909616625358705125934600095 : F), runs := [⟨(3870548444408008476887576047147739124234881800694480163715625136648901154230 : F), 2061, 5, 149⟩, ⟨(3870548444408008476887576047147739124234881800694480163715625136648901154230 : F), 2809, 8, 71⟩, ⟨(6570330944860596111059142108479099720512137819754909616625358705125934600095 : F), 2062, 5, 149⟩, ⟨(6570330944860596111059142108479099720512137819754909616625358705125934600095 : F), 2810, 8, 71⟩], residual := [((3193496721864086105491981762444090318806529963256406885279806050088467766475 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3372 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2805 rho) = ((1 : F) * rho 3373)

def relationRow3373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3374) * ((1 : F) + (1 : F) * rho 3372) = ((1 : F) * rho 3373)

def relationLc2806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1874130804567774313189682830302446810863761515399154211309874750791474638946 : F), runs := [⟨(1874130804567774313189682830302446810863761515399154211309874750791474638946 : F), 2062, 5, 149⟩, ⟨(1874130804567774313189682830302446810863761515399154211309874750791474638946 : F), 2810, 8, 71⟩, ⟨(4573913305020361947361248891633807407141017534459583664219608319268508084811 : F), 2061, 5, 149⟩, ⟨(4573913305020361947361248891633807407141017534459583664219608319268508084811 : F), 2809, 8, 71⟩], residual := [((5250965027564284318756843176337456212569369371897656942655427405828941472566 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3374 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2806 rho) = ((1 : F) * rho 3375)

def relationRow3375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3376) * ((1 : F) + (-1 : F) * rho 3372) = ((1996417639840234163697893216845292313371120285295325952405750385857426515284 : F) * rho 3371 + (1 : F) * rho 3375)

def relationLc2807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 71⟩], residual := [((1 : F), 3374), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2027) * (relationLc2807 rho) = ((1 : F) * rho 3377)

def relationLc2808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 71⟩], residual := [((1 : F), 3376), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2027) * (relationLc2808 rho) = ((1 : F) * rho 3378)

def relationLc2809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 72⟩, ⟨(1 : F), 2810, 8, 72⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3378 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2809 rho) = ((1 : F) * rho 3379)

def relationLc2810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3572665339850325498579135525683803696736775859419263016244508576639770858362 : F), 2061, 5, 149⟩, ⟨(3572665339850325498579135525683803696736775859419263016244508576639770858362 : F), 2809, 8, 72⟩], residual := [((5124414814074150176411602441813154520065508830654359745986878861746779079731 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5331045109956993830571264971135024265297950271702392351376889158259487897154 : F), runs := [⟨(5331045109956993830571264971135024265297950271702392351376889158259487897154 : F), 2062, 5, 149⟩, ⟨(5331045109956993830571264971135024265297950271702392351376889158259487897154 : F), 2810, 8, 72⟩], residual := [((5826020781600902362789512844011047342814882089613210203743853380263811888273 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3379 (rho : Nat -> F) : Prop :=
    (relationLc2810 rho) * (relationLc2811 rho) = ((1 : F) * rho 3380)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
