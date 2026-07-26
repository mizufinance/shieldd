import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs24

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 67⟩], residual := [((1 : F), 1234), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 714) * (relationLc316 rho) = ((1 : F) * rho 1236)

def relationLc317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 67⟩], residual := [((1 : F), 1235), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 714) * (relationLc317 rho) = ((1 : F) * rho 1237)

def relationLc318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1179533789199475365297714400141375462651628937246367333767425774001091757699 : F), 901, 5, 68⟩], residual := [((3650148473261483737321698221438519843744737995291324808363332260644300992770 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), runs := [⟨(7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), 902, 5, 68⟩], residual := [((2869640595059133405401105760735484166625600533531038730335777921468494281318 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1238 (rho : Nat -> F) : Prop :=
    (relationLc318 rho) * (relationLc319 rho) = ((1 : F) * rho 1238)

def relationLc320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), runs := [⟨(4816612753410884381445224456776148973526423761472260292243023724038297653302 : F), 901, 5, 68⟩, ⟨(7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), 902, 5, 68⟩], residual := [((290829590011425885426149216454143905580843715142455616010767280107645414505 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1239) * ((1 : F) + (1 : F) * rho 1238) = (relationLc320 rho)

def relationLc321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4816612753410884381445224456776148973526423761472260292243023724038297653302 : F), runs := [⟨(4816612753410884381445224456776148973526423761472260292243023724038297653302 : F), 902, 5, 68⟩, ⟨(7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), 901, 5, 68⟩], residual := [((3269211464373257727069870559604670208906748515964307695166848470740751744619 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1240) * ((1 : F) + (-1 : F) * rho 1238) = (relationLc321 rho)

def relationLc322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 68⟩], residual := [((1 : F), 1239), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 715) * (relationLc322 rho) = ((1 : F) * rho 1241)

def relationLc323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 68⟩], residual := [((1 : F), 1240), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 715) * (relationLc323 rho) = ((1 : F) * rho 1242)

def relationLc324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8020470969744535628948961867453278796912375307773752546739275694995204105556 : F), 901, 5, 69⟩], residual := [((1155591149101033702468941577713967034096349749420500774035493296064670211394 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc325 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (571516566084547193138060680013771881100301576621742699041361202886239799291 : F), runs := [⟨(571516566084547193138060680013771881100301576621742699041361202886239799291 : F), 902, 5, 69⟩], residual := [((6516296044727182879445314890382344061985183553314241005759015699751637830506 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1243 (rho : Nat -> F) : Prop :=
    (relationLc324 rho) * (relationLc325 rho) = ((1 : F) * rho 1243)

def relationLc326 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (571516566084547193138060680013771881100301576621742699041361202886239799291 : F), runs := [⟨(571516566084547193138060680013771881100301576621742699041361202886239799291 : F), 902, 5, 69⟩, ⟨(94898281595789725133783576579690272867367445669598761624826871810748000329 : F), 901, 5, 69⟩], residual := [((7402774020800633544188560983454659261415920540733393185245776540142860405477 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1244) * ((1 : F) + (1 : F) * rho 1243) = (relationLc326 rho)

def relationLc327 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (94898281595789725133783576579690272867367445669598761624826871810748000329 : F), runs := [⟨(571516566084547193138060680013771881100301576621742699041361202886239799291 : F), 901, 5, 69⟩, ⟨(94898281595789725133783576579690272867367445669598761624826871810748000329 : F), 902, 5, 69⟩], residual := [((7930424913899644060330437450338886918483378046101948759604036965886786960745 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1245) * ((1 : F) + (-1 : F) * rho 1243) = (relationLc327 rho)

def relationLc328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 69⟩], residual := [((1 : F), 1244), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 716) * (relationLc328 rho) = ((1 : F) * rho 1246)

def relationLc329 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 69⟩], residual := [((1 : F), 1245), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 716) * (relationLc329 rho) = ((1 : F) * rho 1247)

def relationLc330 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6243965871058553016662718872284436312489594295673912111659521004288054905871 : F), 901, 5, 70⟩], residual := [((8097035089899596317674829087795996067355516584207036979388909984789096168556 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc331 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), runs := [⟨(8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), 902, 5, 70⟩], residual := [((8152481399280699976037864206409819856258464140367291640444612544612617889236 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1248 (rho : Nat -> F) : Prop :=
    (relationLc330 rho) * (relationLc331 rho) = ((1 : F) * rho 1248)

def relationLc332 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), runs := [⟨(8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), 902, 5, 70⟩, ⟨(890957564445309615335249602583520765736519557389826616813989990064887187329 : F), 901, 5, 70⟩], residual := [((946202082271144289900808698952086487059162959043847888287850488066371834513 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1249) * ((1 : F) + (1 : F) * rho 1248) = (relationLc332 rho)

def relationLc333 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (890957564445309615335249602583520765736519557389826616813989990064887187329 : F), runs := [⟨(8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), 901, 5, 70⟩, ⟨(890957564445309615335249602583520765736519557389826616813989990064887187329 : F), 902, 5, 70⟩], residual := [((4335790016456525302353676189745248435386653945957487679257606811467105634208 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1250) * ((1 : F) + (-1 : F) * rho 1248) = (relationLc333 rho)

def relationLc334 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 70⟩], residual := [((1 : F), 1249), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 717) * (relationLc334 rho) = ((1 : F) * rho 1251)

def relationLc335 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 70⟩], residual := [((1 : F), 1250), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 717) * (relationLc335 rho) = ((1 : F) * rho 1252)

def relationLc336 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1987785455165667403478408768327056179798479167734353698427786135116125554860 : F), 901, 5, 71⟩], residual := [((7821914167782499180620654951422779353975727845430137656040815973888425734727 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc337 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), runs := [⟨(5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), 902, 5, 71⟩], residual := [((1097564547200276120230480787848358308568252957864993652527665060118848681137 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1253 (rho : Nat -> F) : Prop :=
    (relationLc336 rho) * (relationLc337 rho) = ((1 : F) * rho 1253)

def relationLc338 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), runs := [⟨(5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), 902, 5, 71⟩, ⟨(6555528165463321520114853654488928723024257669680242975904187434710837732905 : F), 901, 5, 71⟩], residual := [((306301646614418887093755985576747439466372890556710306126617233072620346760 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1254) * ((1 : F) + (1 : F) * rho 1253) = (relationLc338 rho)

def relationLc339 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6555528165463321520114853654488928723024257669680242975904187434710837732905 : F), runs := [⟨(5902705087817707900053092475634956320656581773604840204942376427907198912295 : F), 901, 5, 71⟩, ⟨(6555528165463321520114853654488928723024257669680242975904187434710837732905 : F), 902, 5, 71⟩], residual := [((8181626747822779416252867083787740891747474116092964266976805209581318554994 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1255) * ((1 : F) + (-1 : F) * rho 1253) = (relationLc339 rho)

def relationLc340 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 71⟩], residual := [((1 : F), 1254), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 718) * (relationLc340 rho) = ((1 : F) * rho 1256)

def relationLc341 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 71⟩], residual := [((1 : F), 1255), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 718) * (relationLc341 rho) = ((1 : F) * rho 1257)

def relationLc342 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5906282420730200729219547836776917049119331455532752804245301219830904456945 : F), 901, 5, 72⟩], residual := [((7125368184004558136207273332685448448086759513894762010576501787206500426713 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc343 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), runs := [⟨(2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), 902, 5, 72⟩], residual := [((853705323836438218659889131819209372621827479297190955966732585862140613693 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1258 (rho : Nat -> F) : Prop :=
    (relationLc342 rho) * (relationLc343 rho) = ((1 : F) * rho 1258)

def relationLc344 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), runs := [⟨(2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), 902, 5, 72⟩, ⟨(5704272840534460730286932281678626892107234020248203562327746293045794687885 : F), 901, 5, 72⟩], residual := [((3668089265613646164681248006942321341841371170352762943028441079221995031072 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1259) * ((1 : F) + (1 : F) * rho 1258) = (relationLc344 rho)

def relationLc345 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5704272840534460730286932281678626892107234020248203562327746293045794687885 : F), runs := [⟨(2710870997783900660121342549554281814434893209121207766078593366424719993980 : F), 901, 5, 72⟩, ⟨(5704272840534460730286932281678626892107234020248203562327746293045794687885 : F), 902, 5, 72⟩], residual := [((4602370274756503558828870034767643896157617843616217244583004512030183601593 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1260) * ((1 : F) + (-1 : F) * rho 1258) = (relationLc345 rho)

def relationLc346 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 72⟩], residual := [((1 : F), 1259), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 719) * (relationLc346 rho) = ((1 : F) * rho 1261)

def relationLc347 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 72⟩], residual := [((1 : F), 1260), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
