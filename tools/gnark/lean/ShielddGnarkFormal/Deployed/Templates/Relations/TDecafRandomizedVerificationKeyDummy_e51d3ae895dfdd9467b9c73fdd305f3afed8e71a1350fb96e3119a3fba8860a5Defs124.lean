import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs123

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow3296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2017) * (relationLc2737 rho) = ((1 : F) * rho 3297)

def relationLc2738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 61⟩], residual := [((1 : F), 3296), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2017) * (relationLc2738 rho) = ((1 : F) * rho 3298)

def relationLc2739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 62⟩, ⟨(1 : F), 2810, 8, 62⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3298 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2739 rho) = ((1 : F) * rho 3299)

def relationLc2740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4190163747198856086804321187099998496766814740869838856914866521134137791387 : F), 2061, 5, 149⟩, ⟨(4190163747198856086804321187099998496766814740869838856914866521134137791387 : F), 2809, 8, 62⟩], residual := [((2957003690915387545057073161426133650682665780963563382974906973640890039826 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3423941501773624219361405225598090367295964686878626572370377742407211002101 : F), runs := [⟨(3423941501773624219361405225598090367295964686878626572370377742407211002101 : F), 2062, 5, 149⟩, ⟨(3423941501773624219361405225598090367295964686878626572370377742407211002101 : F), 2810, 8, 62⟩], residual := [((7189357305306567768438575906420187797573860854945526195358531359241171218779 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3299 (rho : Nat -> F) : Prop :=
    (relationLc2740 rho) * (relationLc2741 rho) = ((1 : F) * rho 3300)

def relationLc2742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3423941501773624219361405225598090367295964686878626572370377742407211002101 : F), runs := [⟨(3423941501773624219361405225598090367295964686878626572370377742407211002101 : F), 2062, 5, 149⟩, ⟨(3423941501773624219361405225598090367295964686878626572370377742407211002101 : F), 2810, 8, 62⟩, ⟨(4403911757397180494630487785424705655549092442108083537853329215356191224522 : F), 2061, 5, 149⟩, ⟨(4403911757397180494630487785424705655549092442108083537853329215356191224522 : F), 2809, 8, 62⟩], residual := [((7545333354915412002607611934353548454023851547214817711257488511136289346352 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3300 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2742 rho) = ((1 : F) * rho 3301)

def relationRow3301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3302) * ((1 : F) + (1 : F) * rho 3300) = ((1 : F) * rho 3301)

def relationLc2743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5020520247654746204887419713183456164079934648275437255564855713510198236940 : F), runs := [⟨(4040549992031189929618337153356840875826806893045980290081904240561218014519 : F), 2061, 5, 149⟩, ⟨(4040549992031189929618337153356840875826806893045980290081904240561218014519 : F), 2809, 8, 62⟩, ⟨(5020520247654746204887419713183456164079934648275437255564855713510198236940 : F), 2062, 5, 149⟩, ⟨(5020520247654746204887419713183456164079934648275437255564855713510198236940 : F), 2810, 8, 62⟩], residual := [((899128394512958421641213004427998077352047787939246116677744944781119892689 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3302 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2743 rho) = ((1 : F) * rho 3303)

def relationRow3303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3304) * ((1 : F) + (-1 : F) * rho 3300) = ((7827853259170804713991893011022796022845057128986710110223706957763402226623 : F) * rho 3299 + (1 : F) * rho 3303)

def relationLc2744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 62⟩], residual := [((1 : F), 3302), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2018) * (relationLc2744 rho) = ((1 : F) * rho 3305)

def relationLc2745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 62⟩], residual := [((1 : F), 3304), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2018) * (relationLc2745 rho) = ((1 : F) * rho 3306)

def relationLc2746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 63⟩, ⟨(1 : F), 2810, 8, 63⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3306 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2746 rho) = ((1 : F) * rho 3307)

def relationLc2747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(58918325820461944259557627262580109539818437254177415012051304305529098982 : F), 2061, 5, 149⟩, ⟨(58918325820461944259557627262580109539818437254177415012051304305529098982 : F), 2809, 8, 63⟩], residual := [((7893342063542007363849646815109681961881602631397189320761681794130772690789 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2585872893106133656212238141247348463124237904139477394990300382205626000743 : F), runs := [⟨(2585872893106133656212238141247348463124237904139477394990300382205626000743 : F), 2062, 5, 149⟩, ⟨(2585872893106133656212238141247348463124237904139477394990300382205626000743 : F), 2810, 8, 63⟩], residual := [((4088562414217022427536605253412035611528252553393612053114188351806014648827 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3307 (rho : Nat -> F) : Prop :=
    (relationLc2747 rho) * (relationLc2748 rho) = ((1 : F) * rho 3308)

def relationLc2749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2585872893106133656212238141247348463124237904139477394990300382205626000743 : F), runs := [⟨(2585872893106133656212238141247348463124237904139477394990300382205626000743 : F), 2062, 5, 149⟩, ⟨(2585872893106133656212238141247348463124237904139477394990300382205626000743 : F), 2810, 8, 63⟩, ⟨(5420016633719771835340195668296816055758824438696121794035560980578669991261 : F), 2061, 5, 149⟩, ⟨(5420016633719771835340195668296816055758824438696121794035560980578669991261 : F), 2809, 8, 63⟩], residual := [((1639737650170303177386863504158044672748119447038525397113381314717157604819 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3308 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2749 rho) = ((1 : F) * rho 3309)

def relationRow3309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3310) * ((1 : F) + (1 : F) * rho 3308) = ((1 : F) * rho 3309)

def relationLc2750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5858588856322236768036586797534198068251661431014586432944933073711783238298 : F), runs := [⟨(3024445115708598588908629270484730475617074896457942033899672475338739247780 : F), 2061, 5, 149⟩, ⟨(3024445115708598588908629270484730475617074896457942033899672475338739247780 : F), 2809, 8, 63⟩, ⟨(5858588856322236768036586797534198068251661431014586432944933073711783238298 : F), 2062, 5, 149⟩, ⟨(5858588856322236768036586797534198068251661431014586432944933073711783238298 : F), 2810, 8, 63⟩], residual := [((6804724099258067246861961434623501858627779888115538430821852141200251634222 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3310 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2750 rho) = ((1 : F) * rho 3311)

def relationRow3311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3312) * ((1 : F) + (-1 : F) * rho 3308) = ((8005889526825905491552433809544164518883062342835599189025861362784295992004 : F) * rho 3307 + (1 : F) * rho 3311)

def relationLc2751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 63⟩], residual := [((1 : F), 3310), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2019) * (relationLc2751 rho) = ((1 : F) * rho 3313)

def relationLc2752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 63⟩], residual := [((1 : F), 3312), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2019) * (relationLc2752 rho) = ((1 : F) * rho 3314)

def relationLc2753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 64⟩, ⟨(1 : F), 2810, 8, 64⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3314 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2753 rho) = ((1 : F) * rho 3315)

def relationLc2754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4850227687254138224780847103457061939368954313073617365555607718057132609262 : F), 2061, 5, 149⟩, ⟨(4850227687254138224780847103457061939368954313073617365555607718057132609262 : F), 2809, 8, 64⟩], residual := [((3057446555327645110785219752153912666255960471678605788016472176197507522240 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2186001308626388964314917732041512555837490566337618110444932455301521128435 : F), runs := [⟨(2186001308626388964314917732041512555837490566337618110444932455301521128435 : F), 2062, 5, 149⟩, ⟨(2186001308626388964314917732041512555837490566337618110444932455301521128435 : F), 2810, 8, 64⟩], residual := [((2148799930174498616858606625598493469250246591036380349541407709988116596773 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3315 (rho : Nat -> F) : Prop :=
    (relationLc2754 rho) * (relationLc2755 rho) = ((1 : F) * rho 3316)

def relationLc2756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2186001308626388964314917732041512555837490566337618110444932455301521128435 : F), runs := [⟨(2186001308626388964314917732041512555837490566337618110444932455301521128435 : F), 2062, 5, 149⟩, ⟨(2186001308626388964314917732041512555837490566337618110444932455301521128435 : F), 2810, 8, 64⟩, ⟨(5052629132374816118782657236505035300938635899681054933612883966421984649969 : F), 2061, 5, 149⟩, ⟨(5052629132374816118782657236505035300938635899681054933612883966421984649969 : F), 2809, 8, 64⟩], residual := [((8103702602414735839222321401949651372095967062519278250663573791841899842943 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3316 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2756 rho) = ((1 : F) * rho 3317)

def relationRow3317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3318) * ((1 : F) + (1 : F) * rho 3316) = ((1 : F) * rho 3317)

def relationLc2757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6258460440801981459933907206740033975538408768816445717490301000615888110606 : F), runs := [⟨(3391832617053554305466167702276511230437263435473008894322349489495424589072 : F), 2061, 5, 149⟩, ⟨(3391832617053554305466167702276511230437263435473008894322349489495424589072 : F), 2809, 8, 64⟩, ⟨(6258460440801981459933907206740033975538408768816445717490301000615888110606 : F), 2062, 5, 149⟩, ⟨(6258460440801981459933907206740033975538408768816445717490301000615888110606 : F), 2810, 8, 64⟩], residual := [((340759147013634585026503536831895159279932272634785577271659664075509396098 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3318 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2757 rho) = ((1 : F) * rho 3319)

def relationRow3319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3320) * ((1 : F) + (-1 : F) * rho 3316) = ((7238630441001205083097574968546547856776126466018673044057816421723505778404 : F) * rho 3315 + (1 : F) * rho 3319)

def relationLc2758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 64⟩], residual := [((1 : F), 3318), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2020) * (relationLc2758 rho) = ((1 : F) * rho 3321)

def relationLc2759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 64⟩], residual := [((1 : F), 3320), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2020) * (relationLc2759 rho) = ((1 : F) * rho 3322)

def relationLc2760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 65⟩, ⟨(1 : F), 2810, 8, 65⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3322 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2760 rho) = ((1 : F) * rho 3323)

def relationLc2761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1264557959479100922970201115112134211560373340550096814683079276850902107265 : F), 2061, 5, 149⟩, ⟨(1264557959479100922970201115112134211560373340550096814683079276850902107265 : F), 2809, 8, 65⟩], residual := [((4906366363111759234574300869375970910138001597177887940548330735732770263593 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7126565839021566360196697239735121082667099440565600511776815312011045649576 : F), runs := [⟨(7126565839021566360196697239735121082667099440565600511776815312011045649576 : F), 2062, 5, 149⟩, ⟨(7126565839021566360196697239735121082667099440565600511776815312011045649576 : F), 2810, 8, 65⟩], residual := [((1098268939017391281895962662512300282223824169740677712283708098338841141698 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3323 (rho : Nat -> F) : Prop :=
    (relationLc2761 rho) * (relationLc2762 rho) = ((1 : F) * rho 3324)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
