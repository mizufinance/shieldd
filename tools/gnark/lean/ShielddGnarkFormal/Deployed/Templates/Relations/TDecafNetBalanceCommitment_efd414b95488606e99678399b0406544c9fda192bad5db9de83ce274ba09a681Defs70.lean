import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs69

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationLc323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1179533789199475365297714400141375462651628937246367333767425774001091757699 : F), 4471, 5, 68⟩], residual := [((3650148473261483737321698221438519843744737995291324808363332260644300992770 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), runs := [⟨(7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), 4472, 5, 68⟩], residual := [((2869640595059133405401105760735484166625600533531038730335777921468494281318 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4982 (rho : Nat -> F) : Prop :=
    (relationLc323 rho) * (relationLc324 rho) = ((1 : F) * rho 4808)

def relationLc325 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), runs := [⟨(4816612753410884381445224456776148973526423761472260292243023724038297653302 : F), 4471, 5, 68⟩, ⟨(7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), 4472, 5, 68⟩], residual := [((290829590011425885426149216454143905580843715142455616010767280107645414505 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4809) * ((1 : F) + (1 : F) * rho 4808) = (relationLc325 rho)

def relationLc326 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4816612753410884381445224456776148973526423761472260292243023724038297653302 : F), runs := [⟨(4816612753410884381445224456776148973526423761472260292243023724038297653302 : F), 4472, 5, 68⟩, ⟨(7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), 4471, 5, 68⟩], residual := [((3269211464373257727069870559604670208906748515964307695166848470740751744619 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4810) * ((1 : F) + (-1 : F) * rho 4808) = (relationLc326 rho)

def relationLc327 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 68⟩], residual := [((1 : F), 4809), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4285) * (relationLc327 rho) = ((1 : F) * rho 4811)

def relationLc328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 68⟩], residual := [((1 : F), 4810), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4285) * (relationLc328 rho) = ((1 : F) * rho 4812)

def relationLc329 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8020470969744535628948961867453278796912375307773752546739275694995204105556 : F), 4471, 5, 69⟩], residual := [((1155591149101033702468941577713967034096349749420500774035493296064670211394 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc330 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (571516566084547193138060680013771881100301576621742699041361202886239799291 : F), runs := [⟨(571516566084547193138060680013771881100301576621742699041361202886239799291 : F), 4472, 5, 69⟩], residual := [((6516296044727182879445314890382344061985183553314241005759015699751637830506 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4987 (rho : Nat -> F) : Prop :=
    (relationLc329 rho) * (relationLc330 rho) = ((1 : F) * rho 4813)

def relationLc331 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (571516566084547193138060680013771881100301576621742699041361202886239799291 : F), runs := [⟨(571516566084547193138060680013771881100301576621742699041361202886239799291 : F), 4472, 5, 69⟩, ⟨(94898281595789725133783576579690272867367445669598761624826871810748000329 : F), 4471, 5, 69⟩], residual := [((7402774020800633544188560983454659261415920540733393185245776540142860405477 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4814) * ((1 : F) + (1 : F) * rho 4813) = (relationLc331 rho)

def relationLc332 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (94898281595789725133783576579690272867367445669598761624826871810748000329 : F), runs := [⟨(571516566084547193138060680013771881100301576621742699041361202886239799291 : F), 4471, 5, 69⟩, ⟨(94898281595789725133783576579690272867367445669598761624826871810748000329 : F), 4472, 5, 69⟩], residual := [((7930424913899644060330437450338886918483378046101948759604036965886786960745 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4815) * ((1 : F) + (-1 : F) * rho 4813) = (relationLc332 rho)

def relationLc333 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 69⟩], residual := [((1 : F), 4814), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4286) * (relationLc333 rho) = ((1 : F) * rho 4816)

def relationLc334 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 69⟩], residual := [((1 : F), 4815), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4286) * (relationLc334 rho) = ((1 : F) * rho 4817)

def relationLc335 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6243965871058553016662718872284436312489594295673912111659521004288054905871 : F), 4471, 5, 70⟩], residual := [((8097035089899596317674829087795996067355516584207036979388909984789096168556 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc336 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), runs := [⟨(8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), 4472, 5, 70⟩], residual := [((8152481399280699976037864206409819856258464140367291640444612544612617889236 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4992 (rho : Nat -> F) : Prop :=
    (relationLc335 rho) * (relationLc336 rho) = ((1 : F) * rho 4818)

def relationLc337 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), runs := [⟨(8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), 4472, 5, 70⟩, ⟨(890957564445309615335249602583520765736519557389826616813989990064887187329 : F), 4471, 5, 70⟩], residual := [((946202082271144289900808698952086487059162959043847888287850488066371834513 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4819) * ((1 : F) + (1 : F) * rho 4818) = (relationLc337 rho)

def relationLc338 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (890957564445309615335249602583520765736519557389826616813989990064887187329 : F), runs := [⟨(8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), 4471, 5, 70⟩, ⟨(890957564445309615335249602583520765736519557389826616813989990064887187329 : F), 4472, 5, 70⟩], residual := [((4335790016456525302353676189745248435386653945957487679257606811467105634208 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4820) * ((1 : F) + (-1 : F) * rho 4818) = (relationLc338 rho)

def relationLc339 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 70⟩], residual := [((1 : F), 4819), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4287) * (relationLc339 rho) = ((1 : F) * rho 4821)

def relationLc340 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 70⟩], residual := [((1 : F), 4820), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4287) * (relationLc340 rho) = ((1 : F) * rho 4822)

def relationLc341 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1987785455165667403478408768327056179798479167734353698427786135116125554860 : F), 4471, 5, 71⟩], residual := [((7821914167782499180620654951422779353975727845430137656040815973888425734727 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc342 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), runs := [⟨(5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), 4472, 5, 71⟩], residual := [((1097564547200276120230480787848358308568252957864993652527665060118848681137 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4997 (rho : Nat -> F) : Prop :=
    (relationLc341 rho) * (relationLc342 rho) = ((1 : F) * rho 4823)

def relationLc343 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), runs := [⟨(5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), 4472, 5, 71⟩, ⟨(6555528165463321520114853654488928723024257669680242975904187434710837732905 : F), 4471, 5, 71⟩], residual := [((306301646614418887093755985576747439466372890556710306126617233072620346760 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4824) * ((1 : F) + (1 : F) * rho 4823) = (relationLc343 rho)

def relationLc344 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6555528165463321520114853654488928723024257669680242975904187434710837732905 : F), runs := [⟨(5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), 4471, 5, 71⟩, ⟨(6555528165463321520114853654488928723024257669680242975904187434710837732905 : F), 4472, 5, 71⟩], residual := [((8181626747822779416252867083787740891747474116092964266976805209581318554994 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4825) * ((1 : F) + (-1 : F) * rho 4823) = (relationLc344 rho)

def relationLc345 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 71⟩], residual := [((1 : F), 4824), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4288) * (relationLc345 rho) = ((1 : F) * rho 4826)

def relationLc346 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 71⟩], residual := [((1 : F), 4825), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4288) * (relationLc346 rho) = ((1 : F) * rho 4827)

def relationLc347 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5906282420730200729219547836776917049119331455532752804245301219830904456945 : F), 4471, 5, 72⟩], residual := [((7125368184004558136207273332685448448086759513894762010576501787206500426713 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc348 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), runs := [⟨(2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), 4472, 5, 72⟩], residual := [((853705323836438218659889131819209372621827479297190955966732585862140613693 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5002 (rho : Nat -> F) : Prop :=
    (relationLc347 rho) * (relationLc348 rho) = ((1 : F) * rho 4828)

def relationLc349 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), runs := [⟨(2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), 4472, 5, 72⟩, ⟨(5704272840534460730286932281678626892107234020248203562327746293045794687885 : F), 4471, 5, 72⟩], residual := [((3668089265613646164681248006942321341841371170352762943028441079221995031072 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4829) * ((1 : F) + (1 : F) * rho 4828) = (relationLc349 rho)

def relationLc350 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5704272840534460730286932281678626892107234020248203562327746293045794687885 : F), runs := [⟨(2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), 4471, 5, 72⟩, ⟨(5704272840534460730286932281678626892107234020248203562327746293045794687885 : F), 4472, 5, 72⟩], residual := [((4602370274756503558828870034767643896157617843616217244583004512030183601593 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4830) * ((1 : F) + (-1 : F) * rho 4828) = (relationLc350 rho)

def relationLc351 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 72⟩], residual := [((1 : F), 4829), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4289) * (relationLc351 rho) = ((1 : F) * rho 4831)

def relationLc352 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 72⟩], residual := [((1 : F), 4830), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4289) * (relationLc352 rho) = ((1 : F) * rho 4832)

def relationLc353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8007989290322952964580282096633098651683917914141964677476285041725790891813 : F), 4471, 5, 73⟩], residual := [((2904879038920373626759952960327022534321970667148207608417077592528813201390 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
