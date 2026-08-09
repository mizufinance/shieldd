import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs23

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 68⟩], residual := [((1 : F), 1110), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 586) * (relationLc321 rho) = ((1 : F) * rho 1112)

def relationLc322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 68⟩], residual := [((1 : F), 1111), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 586) * (relationLc322 rho) = ((1 : F) * rho 1113)

def relationLc323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8020470969744535628948961867453278796912375307773752546739275694995204105556 : F), 772, 5, 69⟩], residual := [((1155591149101033702468941577713967034096349749420500774035493296064670211394 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (571516566084547193138060680013771881100301576621742699041361202886239799291 : F), runs := [⟨(571516566084547193138060680013771881100301576621742699041361202886239799291 : F), 773, 5, 69⟩], residual := [((6516296044727182879445314890382344061985183553314241005759015699751637830506 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1114 (rho : Nat -> F) : Prop :=
    (relationLc323 rho) * (relationLc324 rho) = ((1 : F) * rho 1114)

def relationLc325 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (571516566084547193138060680013771881100301576621742699041361202886239799291 : F), runs := [⟨(571516566084547193138060680013771881100301576621742699041361202886239799291 : F), 773, 5, 69⟩, ⟨(94898281595789725133783576579690272867367445669598761624826871810748000329 : F), 772, 5, 69⟩], residual := [((7402774020800633544188560983454659261415920540733393185245776540142860405477 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1115) * ((1 : F) + (1 : F) * rho 1114) = (relationLc325 rho)

def relationLc326 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (94898281595789725133783576579690272867367445669598761624826871810748000329 : F), runs := [⟨(571516566084547193138060680013771881100301576621742699041361202886239799291 : F), 772, 5, 69⟩, ⟨(94898281595789725133783576579690272867367445669598761624826871810748000329 : F), 773, 5, 69⟩], residual := [((7930424913899644060330437450338886918483378046101948759604036965886786960745 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1116) * ((1 : F) + (-1 : F) * rho 1114) = (relationLc326 rho)

def relationLc327 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 69⟩], residual := [((1 : F), 1115), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 587) * (relationLc327 rho) = ((1 : F) * rho 1117)

def relationLc328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 69⟩], residual := [((1 : F), 1116), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 587) * (relationLc328 rho) = ((1 : F) * rho 1118)

def relationLc329 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6243965871058553016662718872284436312489594295673912111659521004288054905871 : F), 772, 5, 70⟩], residual := [((8097035089899596317674829087795996067355516584207036979388909984789096168556 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc330 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), runs := [⟨(8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), 773, 5, 70⟩], residual := [((8152481399280699976037864206409819856258464140367291640444612544612617889236 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1119 (rho : Nat -> F) : Prop :=
    (relationLc329 rho) * (relationLc330 rho) = ((1 : F) * rho 1119)

def relationLc331 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), runs := [⟨(8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), 773, 5, 70⟩, ⟨(890957564445309615335249602583520765736519557389826616813989990064887187329 : F), 772, 5, 70⟩], residual := [((946202082271144289900808698952086487059162959043847888287850488066371834513 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1120) * ((1 : F) + (1 : F) * rho 1119) = (relationLc331 rho)

def relationLc332 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (890957564445309615335249602583520765736519557389826616813989990064887187329 : F), runs := [⟨(8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), 772, 5, 70⟩, ⟨(890957564445309615335249602583520765736519557389826616813989990064887187329 : F), 773, 5, 70⟩], residual := [((4335790016456525302353676189745248435386653945957487679257606811467105634208 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1121) * ((1 : F) + (-1 : F) * rho 1119) = (relationLc332 rho)

def relationLc333 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 70⟩], residual := [((1 : F), 1120), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 588) * (relationLc333 rho) = ((1 : F) * rho 1122)

def relationLc334 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 70⟩], residual := [((1 : F), 1121), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 588) * (relationLc334 rho) = ((1 : F) * rho 1123)

def relationLc335 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1987785455165667403478408768327056179798479167734353698427786135116125554860 : F), 772, 5, 71⟩], residual := [((7821914167782499180620654951422779353975727845430137656040815973888425734727 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc336 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), runs := [⟨(5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), 773, 5, 71⟩], residual := [((1097564547200276120230480787848358308568252957864993652527665060118848681137 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1124 (rho : Nat -> F) : Prop :=
    (relationLc335 rho) * (relationLc336 rho) = ((1 : F) * rho 1124)

def relationLc337 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), runs := [⟨(5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), 773, 5, 71⟩, ⟨(6555528165463321520114853654488928723024257669680242975904187434710837732905 : F), 772, 5, 71⟩], residual := [((306301646614418887093755985576747439466372890556710306126617233072620346760 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1125) * ((1 : F) + (1 : F) * rho 1124) = (relationLc337 rho)

def relationLc338 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6555528165463321520114853654488928723024257669680242975904187434710837732905 : F), runs := [⟨(5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), 772, 5, 71⟩, ⟨(6555528165463321520114853654488928723024257669680242975904187434710837732905 : F), 773, 5, 71⟩], residual := [((8181626747822779416252867083787740891747474116092964266976805209581318554994 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1126) * ((1 : F) + (-1 : F) * rho 1124) = (relationLc338 rho)

def relationLc339 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 71⟩], residual := [((1 : F), 1125), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 589) * (relationLc339 rho) = ((1 : F) * rho 1127)

def relationLc340 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 71⟩], residual := [((1 : F), 1126), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 589) * (relationLc340 rho) = ((1 : F) * rho 1128)

def relationLc341 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5906282420730200729219547836776917049119331455532752804245301219830904456945 : F), 772, 5, 72⟩], residual := [((7125368184004558136207273332685448448086759513894762010576501787206500426713 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc342 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), runs := [⟨(2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), 773, 5, 72⟩], residual := [((853705323836438218659889131819209372621827479297190955966732585862140613693 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1129 (rho : Nat -> F) : Prop :=
    (relationLc341 rho) * (relationLc342 rho) = ((1 : F) * rho 1129)

def relationLc343 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), runs := [⟨(2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), 773, 5, 72⟩, ⟨(5704272840534460730286932281678626892107234020248203562327746293045794687885 : F), 772, 5, 72⟩], residual := [((3668089265613646164681248006942321341841371170352762943028441079221995031072 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1130) * ((1 : F) + (1 : F) * rho 1129) = (relationLc343 rho)

def relationLc344 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5704272840534460730286932281678626892107234020248203562327746293045794687885 : F), runs := [⟨(2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), 772, 5, 72⟩, ⟨(5704272840534460730286932281678626892107234020248203562327746293045794687885 : F), 773, 5, 72⟩], residual := [((4602370274756503558828870034767643896157617843616217244583004512030183601593 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1131) * ((1 : F) + (-1 : F) * rho 1129) = (relationLc344 rho)

def relationLc345 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 72⟩], residual := [((1 : F), 1130), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 590) * (relationLc345 rho) = ((1 : F) * rho 1132)

def relationLc346 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 72⟩], residual := [((1 : F), 1131), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 590) * (relationLc346 rho) = ((1 : F) * rho 1133)

def relationLc347 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8007989290322952964580282096633098651683917914141964677476285041725790891813 : F), 772, 5, 73⟩], residual := [((2904879038920373626759952960327022534321970667148207608417077592528813201390 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc348 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), runs := [⟨(1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), 773, 5, 73⟩], residual := [((6773916005749358031994496606457031539973922789689421584856127361866838763353 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1134 (rho : Nat -> F) : Prop :=
    (relationLc347 rho) * (relationLc348 rho) = ((1 : F) * rho 1134)

def relationLc349 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), runs := [⟨(1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), 773, 5, 73⟩, ⟨(4869187651454854638060835650617446411710402072299691191364686438859296681914 : F), 772, 5, 73⟩], residual := [((4899262263668088193846796645860510288726353612853529952636291356793004673252 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1135) * ((1 : F) + (1 : F) * rho 1134) = (relationLc349 rho)

def relationLc350 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4869187651454854638060835650617446411710402072299691191364686438859296681914 : F), runs := [⟨(1111590219918426535261687631883659743809005934639527532091750277308752735128 : F), 772, 5, 73⟩, ⟨(4869187651454854638060835650617446411710402072299691191364686438859296681914 : F), 773, 5, 73⟩], residual := [((7803497122239555848708020479765301947600485471286960728898808320056849607543 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1136) * ((1 : F) + (-1 : F) * rho 1134) = (relationLc350 rho)

def relationLc351 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 73⟩], residual := [((1 : F), 1135), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 591) * (relationLc351 rho) = ((1 : F) * rho 1137)

def relationLc352 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 73⟩], residual := [((1 : F), 1136), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
