import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs61

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationRow2485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1352) * (relationLc1093 rho) = ((1 : F) * rho 2485)

def relationLc1094 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 40⟩], residual := [((1 : F), 2484), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1352) * (relationLc1094 rho) = ((1 : F) * rho 2486)

def relationLc1095 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 41⟩, ⟨(1 : F), 2166, 8, 41⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2487 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1095 rho) = ((1 : F) * rho 2487)

def relationLc1096 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(566164740394201302335690568881923380160519813285528409368452626895040709138 : F), 1417, 5, 149⟩, ⟨(566164740394201302335690568881923380160519813285528409368452626895040709138 : F), 2165, 8, 41⟩], residual := [((559200741045195250524530251089018769402279419388473271726665058493386012757 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1097 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7795627490918527138041161579809081456452436047591391680037266100603945016815 : F), runs := [⟨(7795627490918527138041161579809081456452436047591391680037266100603945016815 : F), 1418, 5, 149⟩, ⟨(7795627490918527138041161579809081456452436047591391680037266100603945016815 : F), 2166, 8, 41⟩], residual := [((7316742360078395850510735121132322818658676912321782356138261176337704907294 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2488 (rho : Nat -> F) : Prop :=
    (relationLc1096 rho) * (relationLc1097 rho) = ((1 : F) * rho 2488)

def relationLc1098 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7795627490918527138041161579809081456452436047591391680037266100603945016815 : F), runs := [⟨(3189572002925575920347648111790343103502172016293966354214985046616570335139 : F), 1417, 5, 149⟩, ⟨(3189572002925575920347648111790343103502172016293966354214985046616570335139 : F), 2165, 8, 41⟩, ⟨(7795627490918527138041161579809081456452436047591391680037266100603945016815 : F), 1418, 5, 149⟩, ⟨(7795627490918527138041161579809081456452436047591391680037266100603945016815 : F), 2166, 8, 41⟩], residual := [((6162487642510414456944286869074828711181403113579895600869964336802651405238 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2489 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1098 rho) = ((1 : F) * rho 2489)

def relationRow2490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2490) * ((1 : F) + (1 : F) * rho 2488) = ((1 : F) * rho 2489)

def relationLc1099 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (648834258509843286207663358972465074923463287562672147897967355313464222226 : F), runs := [⟨(5254889746502794503901176826991203427873727318860097473720248409300838903902 : F), 1417, 5, 149⟩, ⟨(5254889746502794503901176826991203427873727318860097473720248409300838903902 : F), 2165, 8, 41⟩, ⟨(648834258509843286207663358972465074923463287562672147897967355313464222226 : F), 1418, 5, 149⟩, ⟨(648834258509843286207663358972465074923463287562672147897967355313464222226 : F), 2166, 8, 41⟩], residual := [((2281974106917955967304538069706717820194496221574168227065269119114757833803 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2491 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1099 rho) = ((1 : F) * rho 2491)

def relationRow2492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2492) * ((1 : F) + (-1 : F) * rho 2488) = ((2540737744415732634139984752817878028578708728731294206317017691303106112913 : F) * rho 2487 + (1 : F) * rho 2491)

def relationLc1100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 41⟩], residual := [((1 : F), 2490), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1353) * (relationLc1100 rho) = ((1 : F) * rho 2493)

def relationLc1101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 41⟩], residual := [((1 : F), 2492), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1353) * (relationLc1101 rho) = ((1 : F) * rho 2494)

def relationLc1102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 42⟩, ⟨(1 : F), 2166, 8, 42⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2495 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1102 rho) = ((1 : F) * rho 2495)

def relationLc1103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2831462886914251895095178088597103327474821141561661263139977815970166007720 : F), 1417, 5, 149⟩, ⟨(2831462886914251895095178088597103327474821141561661263139977815970166007720 : F), 2165, 8, 42⟩], residual := [((6629768296966429689160763288732932376564175026205222742192023532947073032112 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2201443287703118336923186320266692790412732967462530460839825374398628917893 : F), runs := [⟨(2201443287703118336923186320266692790412732967462530460839825374398628917893 : F), 1418, 5, 149⟩, ⟨(2201443287703118336923186320266692790412732967462530460839825374398628917893 : F), 2166, 8, 42⟩], residual := [((7160083176997050742282765130665319097078478313482009216028559646455803224278 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2496 (rho : Nat -> F) : Prop :=
    (relationLc1103 rho) * (relationLc1104 rho) = ((1 : F) * rho 2496)

def relationLc1105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2201443287703118336923186320266692790412732967462530460839825374398628917893 : F), runs := [⟨(2201443287703118336923186320266692790412732967462530460839825374398628917893 : F), 1418, 5, 149⟩, ⟨(2201443287703118336923186320266692790412732967462530460839825374398628917893 : F), 2166, 8, 42⟩, ⟨(6846513832253225230347721765363986944279063983096280693769125028585801189149 : F), 1417, 5, 149⟩, ⟨(6846513832253225230347721765363986944279063983096280693769125028585801189149 : F), 2165, 8, 42⟩], residual := [((1230749160449538127066993612358232434647795025110371274904304972532004703188 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2497 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1105 rho) = ((1 : F) * rho 2497)

def relationRow2498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2498) * ((1 : F) + (1 : F) * rho 2496) = ((1 : F) * rho 2497)

def relationLc1106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6243018461725252087325638618514853740963166367691533367095408081518780321148 : F), runs := [⟨(1597947917175145193901103173417559587096835352057783134166108427331608049892 : F), 1417, 5, 149⟩, ⟨(1597947917175145193901103173417559587096835352057783134166108427331608049892 : F), 2165, 8, 42⟩, ⟨(6243018461725252087325638618514853740963166367691533367095408081518780321148 : F), 1418, 5, 149⟩, ⟨(6243018461725252087325638618514853740963166367691533367095408081518780321148 : F), 2166, 8, 42⟩], residual := [((7213712588978832297181831326423314096728104310043692553030928483385404535853 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2499 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1106 rho) = ((1 : F) * rho 2499)

def relationRow2500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2500) * ((1 : F) + (-1 : F) * rho 2496) = ((603495370527973143022083146849133203315897615404747326673716947067020868001 : F) * rho 2495 + (1 : F) * rho 2499)

def relationLc1107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 42⟩], residual := [((1 : F), 2498), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1354) * (relationLc1107 rho) = ((1 : F) * rho 2501)

def relationLc1108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 42⟩], residual := [((1 : F), 2500), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1354) * (relationLc1108 rho) = ((1 : F) * rho 2502)

def relationLc1109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 43⟩, ⟨(1 : F), 2166, 8, 43⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2503 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1109 rho) = ((1 : F) * rho 2503)

def relationLc1110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5424293512622971143956653721151976634791598216281713958243143416091586587080 : F), 1417, 5, 149⟩, ⟨(5424293512622971143956653721151976634791598216281713958243143416091586587080 : F), 2165, 8, 43⟩], residual := [((1159492356918577458388895628832242118290019297883964640947573388330292787616 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8379505003927404927120020956400071289170845704972341444623697570956102475621 : F), runs := [⟨(8379505003927404927120020956400071289170845704972341444623697570956102475621 : F), 1418, 5, 149⟩, ⟨(8379505003927404927120020956400071289170845704972341444623697570956102475621 : F), 2166, 8, 43⟩], residual := [((7398689112597503690364031459430454241780594976319482742382007271263098015962 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2504 (rho : Nat -> F) : Prop :=
    (relationLc1110 rho) * (relationLc1111 rho) = ((1 : F) * rho 2504)

def relationLc1112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8379505003927404927120020956400071289170845704972341444623697570956102475621 : F), runs := [⟨(8222636974042191456093926116742032547305962112844880315099558006378415146841 : F), 1417, 5, 149⟩, ⟨(8222636974042191456093926116742032547305962112844880315099558006378415146841 : F), 2165, 8, 43⟩, ⟨(8379505003927404927120020956400071289170845704972341444623697570956102475621 : F), 1418, 5, 149⟩, ⟨(8379505003927404927120020956400071289170845704972341444623697570956102475621 : F), 2166, 8, 43⟩], residual := [((5425623735987271667172610899632063110025184545561162617297158795099787645232 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2505 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1112 rho) = ((1 : F) * rho 2505)

def relationRow2506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2506) * ((1 : F) + (1 : F) * rho 2504) = ((1 : F) * rho 2505)

def relationLc1113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (64956745500965497128803982381475242205053630181722383311535884961306763420 : F), runs := [⟨(221824775386178968154898822039513984069937222309183512835675449538994092200 : F), 1417, 5, 149⟩, ⟨(221824775386178968154898822039513984069937222309183512835675449538994092200 : F), 2165, 8, 43⟩, ⟨(64956745500965497128803982381475242205053630181722383311535884961306763420 : F), 1418, 5, 149⟩, ⟨(64956745500965497128803982381475242205053630181722383311535884961306763420 : F), 2166, 8, 43⟩], residual := [((3018838013441098757076214039149483421350714789592901210638074660817621593809 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2507 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1113 rho) = ((1 : F) * rho 2507)

def relationRow2508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2508) * ((1 : F) + (-1 : F) * rho 2504) = ((8157680228541225958965122134360557305100908482663157931788022121417108383421 : F) * rho 2503 + (1 : F) * rho 2507)

def relationLc1114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 43⟩], residual := [((1 : F), 2506), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1355) * (relationLc1114 rho) = ((1 : F) * rho 2509)

def relationLc1115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 43⟩], residual := [((1 : F), 2508), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1355) * (relationLc1115 rho) = ((1 : F) * rho 2510)

def relationLc1116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 44⟩, ⟨(1 : F), 2166, 8, 44⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2511 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1116 rho) = ((1 : F) * rho 2511)

def relationLc1117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1039943787173976848446334036992801681317072883333815334713679937305626686533 : F), 1417, 5, 149⟩, ⟨(1039943787173976848446334036992801681317072883333815334713679937305626686533 : F), 2165, 8, 44⟩], residual := [((7763323733134130071288516841185356454533071645192017275536901946325694198167 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6444490698300857073481181944246794033469722497984396226284135138276924131970 : F), runs := [⟨(6444490698300857073481181944246794033469722497984396226284135138276924131970 : F), 1418, 5, 149⟩, ⟨(6444490698300857073481181944246794033469722497984396226284135138276924131970 : F), 2166, 8, 44⟩], residual := [((5978637330494813918645192268005069037660298137679939836064151660217248578339 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2512 (rho : Nat -> F) : Prop :=
    (relationLc1117 rho) * (relationLc1118 rho) = ((1 : F) * rho 2512)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
