import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs133

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow3576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2052) * (relationLc2982 rho) = ((1 : F) * rho 3577)

def relationLc2983 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 96⟩], residual := [((1 : F), 3576), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2052) * (relationLc2983 rho) = ((1 : F) * rho 3578)

def relationLc2984 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 97⟩, ⟨(1 : F), 2810, 8, 97⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3578 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2984 rho) = ((1 : F) * rho 3579)

def relationLc2985 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5534924756406337177111513556176623967822603506254860987227413148256358049338 : F), 2061, 5, 149⟩, ⟨(5534924756406337177111513556176623967822603506254860987227413148256358049338 : F), 2809, 8, 97⟩], residual := [((872969105361601625054695350166036627749660834881608083797783466325305210703 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2986 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1099604033722253165143295412136742437014200263599542477935666598053853222560 : F), runs := [⟨(1099604033722253165143295412136742437014200263599542477935666598053853222560 : F), 2062, 5, 149⟩, ⟨(1099604033722253165143295412136742437014200263599542477935666598053853222560 : F), 2810, 8, 97⟩], residual := [((2327547121241648030449164254120704810200423337676700747191607018970167858005 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3579 (rho : Nat -> F) : Prop :=
    (relationLc2985 rho) * (relationLc2986 rho) = ((1 : F) * rho 3580)

def relationLc2987 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1099604033722253165143295412136742437014200263599542477935666598053853222560 : F), runs := [⟨(1099604033722253165143295412136742437014200263599542477935666598053853222560 : F), 2062, 5, 149⟩, ⟨(1099604033722253165143295412136742437014200263599542477935666598053853222560 : F), 2810, 8, 97⟩, ⟨(4650339230074738944952965040301187853573632306477147635499344803157533241501 : F), 2061, 5, 149⟩, ⟨(4650339230074738944952965040301187853573632306477147635499344803157533241501 : F), 2809, 8, 97⟩], residual := [((5033641772864297541305806834753178520561105303007391046273071358193728747976 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3580 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2987 rho) = ((1 : F) * rho 3581)

def relationRow3581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3582) * ((1 : F) + (1 : F) * rho 3580) = ((1 : F) * rho 3581)

def relationLc2988 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7344857715706117259105529526644804094361699071554521349999566857863556016481 : F), runs := [⟨(3794122519353631479295859898480358677802267028676916192435888652759875997540 : F), 2061, 5, 149⟩, ⟨(3794122519353631479295859898480358677802267028676916192435888652759875997540 : F), 2809, 8, 97⟩, ⟨(7344857715706117259105529526644804094361699071554521349999566857863556016481 : F), 2062, 5, 149⟩, ⟨(7344857715706117259105529526644804094361699071554521349999566857863556016481 : F), 2810, 8, 97⟩], residual := [((3410819976564072882943018104028368010814794032146672781662162097723680491065 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3582 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2988 rho) = ((1 : F) * rho 3583)

def relationRow3583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3584) * ((1 : F) + (-1 : F) * rho 3580) = ((5749943263796992110096260452437930290587832570076690113435011401211386464061 : F) * rho 3579 + (1 : F) * rho 3583)

def relationLc2989 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 97⟩], residual := [((1 : F), 3582), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2053) * (relationLc2989 rho) = ((1 : F) * rho 3585)

def relationLc2990 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 97⟩], residual := [((1 : F), 3584), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2053) * (relationLc2990 rho) = ((1 : F) * rho 3586)

def relationLc2991 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 98⟩, ⟨(1 : F), 2810, 8, 98⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3586 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2991 rho) = ((1 : F) * rho 3587)

def relationLc2992 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5433452400507472894596995115818677673164991880881552604222095953382622985027 : F), 2061, 5, 149⟩, ⟨(5433452400507472894596995115818677673164991880881552604222095953382622985027 : F), 2809, 8, 98⟩], residual := [((6394341953313109814172697215813188191256544307060807307185555637922028065142 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2993 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6627260208489595454201940394776925586553558217909297503373304214489441683658 : F), runs := [⟨(6627260208489595454201940394776925586553558217909297503373304214489441683658 : F), 2062, 5, 149⟩, ⟨(6627260208489595454201940394776925586553558217909297503373304214489441683658 : F), 2810, 8, 98⟩], residual := [((549863627905211652879844760723861940109871183668577874297564049356567101830 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3587 (rho : Nat -> F) : Prop :=
    (relationLc2992 rho) * (relationLc2993 rho) = ((1 : F) * rho 3588)

def relationLc2994 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6627260208489595454201940394776925586553558217909297503373304214489441683658 : F), runs := [⟨(1516826123995592268400350914245421018761636025003106304980178294955517520869 : F), 2061, 5, 149⟩, ⟨(1516826123995592268400350914245421018761636025003106304980178294955517520869 : F), 2809, 8, 98⟩, ⟨(6627260208489595454201940394776925586553558217909297503373304214489441683658 : F), 2062, 5, 149⟩, ⟨(6627260208489595454201940394776925586553558217909297503373304214489441683658 : F), 2810, 8, 98⟩], residual := [((1370989624110383994528000472170007693795536542658052057975885452276700479885 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3588 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2994 rho) = ((1 : F) * rho 3589)

def relationRow3589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3590) * ((1 : F) + (1 : F) * rho 3588) = ((1 : F) * rho 3589)

def relationLc2995 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1817201540938774970046884544004620944822341117244766324561929241427967555383 : F), runs := [⟨(1817201540938774970046884544004620944822341117244766324561929241427967555383 : F), 2062, 5, 149⟩, ⟨(1817201540938774970046884544004620944822341117244766324561929241427967555383 : F), 2810, 8, 98⟩, ⟨(6927635625432778155848474024536125512614263310150957522955055160961891718172 : F), 2061, 5, 149⟩, ⟨(6927635625432778155848474024536125512614263310150957522955055160961891718172 : F), 2809, 8, 98⟩], residual := [((7073472125317986429720824466611538837580362792496011769959348003640708759156 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3590 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2995 rho) = ((1 : F) * rho 3591)

def relationRow3591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3592) * ((1 : F) + (-1 : F) * rho 3588) = ((8144086332485187722602291309022346605315194242912403808353482509444959204527 : F) * rho 3587 + (1 : F) * rho 3591)

def relationLc2996 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 98⟩], residual := [((1 : F), 3590), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2054) * (relationLc2996 rho) = ((1 : F) * rho 3593)

def relationLc2997 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 98⟩], residual := [((1 : F), 3592), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2054) * (relationLc2997 rho) = ((1 : F) * rho 3594)

def relationLc2998 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 99⟩, ⟨(1 : F), 2810, 8, 99⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3594 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2998 rho) = ((1 : F) * rho 3595)

def relationLc2999 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7534130220994948469448485159954569829989303291994285594626697092191329623737 : F), 2061, 5, 149⟩, ⟨(7534130220994948469448485159954569829989303291994285594626697092191329623737 : F), 2809, 8, 99⟩], residual := [((3716211268890037814401188648723045032348554276262890654908772248785236731110 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc3000 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3495198042200539245348034761970589749121878896975913938990248009704026313594 : F), runs := [⟨(3495198042200539245348034761970589749121878896975913938990248009704026313594 : F), 2062, 5, 149⟩, ⟨(3495198042200539245348034761970589749121878896975913938990248009704026313594 : F), 2810, 8, 99⟩], residual := [((2810509145840311449603695208686646865203949018815104943021971327492244934389 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3595 (rho : Nat -> F) : Prop :=
    (relationLc2999 rho) * (relationLc3000 rho) = ((1 : F) * rho 3596)

def relationLc3001 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3495198042200539245348034761970589749121878896975913938990248009704026313594 : F), runs := [⟨(3495198042200539245348034761970589749121878896975913938990248009704026313594 : F), 2062, 5, 149⟩, ⟨(3495198042200539245348034761970589749121878896975913938990248009704026313594 : F), 2810, 8, 99⟩, ⟨(5453238841974947790716536615618659485605095334936252482644267439963965357747 : F), 2061, 5, 149⟩, ⟨(5453238841974947790716536615618659485605095334936252482644267439963965357747 : F), 2809, 8, 99⟩], residual := [((4508458332590364705258590252211678904124015040236746662390258477439498375246 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3596 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3001 rho) = ((1 : F) * rho 3597)

def relationRow3597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3598) * ((1 : F) + (1 : F) * rho 3596) = ((1 : F) * rho 3597)

def relationLc3002 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4949263707227831178900790176810956782254020438178149888944985446213382925447 : F), runs := [⟨(2991222907453422633532288323162887045770804000217811345290966015953443881294 : F), 2061, 5, 149⟩, ⟨(2991222907453422633532288323162887045770804000217811345290966015953443881294 : F), 2809, 8, 99⟩, ⟨(4949263707227831178900790176810956782254020438178149888944985446213382925447 : F), 2062, 5, 149⟩, ⟨(4949263707227831178900790176810956782254020438178149888944985446213382925447 : F), 2810, 8, 99⟩], residual := [((3936003416838005718990234686569867627251884294917317165544974978477910863795 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3598 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3002 rho) = ((1 : F) * rho 3599)

def relationRow3599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3600) * ((1 : F) + (-1 : F) * rho 3596) = ((503975134747116611815746438807702703351074896758102593699281993750582432300 : F) * rho 3595 + (1 : F) * rho 3599)

def relationLc3003 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 99⟩], residual := [((1 : F), 3598), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2055) * (relationLc3003 rho) = ((1 : F) * rho 3601)

def relationLc3004 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 99⟩], residual := [((1 : F), 3600), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2055) * (relationLc3004 rho) = ((1 : F) * rho 3602)

def relationLc3005 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 100⟩, ⟨(1 : F), 2810, 8, 100⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3602 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3005 rho) = ((1 : F) * rho 3603)

def relationLc3006 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4064883095062247340147603835378916187508183055445169435732389489036001704408 : F), 2061, 5, 149⟩, ⟨(4064883095062247340147603835378916187508183055445169435732389489036001704408 : F), 2809, 8, 100⟩], residual := [((2586703773231270539878676380651414243603465923206936704484651928336413050533 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc3007 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1984710607226089818020725577334409086216133409436227188525394559293030245463 : F), runs := [⟨(1984710607226089818020725577334409086216133409436227188525394559293030245463 : F), 2062, 5, 149⟩, ⟨(1984710607226089818020725577334409086216133409436227188525394559293030245463 : F), 2810, 8, 100⟩], residual := [((8190687850680179368374512318543963712238846217710026704016266914143778228996 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3603 (rho : Nat -> F) : Prop :=
    (relationLc3006 rho) * (relationLc3007 rho) = ((1 : F) * rho 3604)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
