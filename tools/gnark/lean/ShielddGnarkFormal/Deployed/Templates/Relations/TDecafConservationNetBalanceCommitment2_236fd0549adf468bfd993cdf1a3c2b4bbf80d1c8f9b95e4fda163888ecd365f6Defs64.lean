import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs63

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc1304 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4862004516574352933569097389974926742176547917681064627827506724471018476346 : F), runs := [⟨(4862004516574352933569097389974926742176547917681064627827506724471018476346 : F), 773, 5, 149⟩, ⟨(4862004516574352933569097389974926742176547917681064627827506724471018476346 : F), 1521, 8, 71⟩, ⟨(88062815715557290629859337994456028380992853671390211484005376303454130687 : F), 772, 5, 149⟩, ⟨(88062815715557290629859337994456028380992853671390211484005376303454130687 : F), 1520, 8, 71⟩], residual := [((1715474895151086150602194772621760672715611323150421687215041459688003007250 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2086 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1304 rho) = ((1 : F) * rho 2086)

def relationRow2087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2087) * ((1 : F) + (-1 : F) * rho 2083) = ((3494394417138460200049868210812163760818358563801608988623721355142936632008 : F) * rho 2082 + (1 : F) * rho 2086)

def relationLc1305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 71⟩], residual := [((1 : F), 2085), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 738) * (relationLc1305 rho) = ((1 : F) * rho 2088)

def relationLc1306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 71⟩], residual := [((1 : F), 2087), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 738) * (relationLc1306 rho) = ((1 : F) * rho 2089)

def relationLc1307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 72⟩, ⟨(1 : F), 1521, 8, 72⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2090 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1307 rho) = ((1 : F) * rho 2090)

def relationLc1308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1041016696261873307340336047327981763298628938291660533116945156646556318662 : F), 772, 5, 149⟩, ⟨(1041016696261873307340336047327981763298628938291660533116945156646556318662 : F), 1520, 8, 72⟩], residual := [((1950914135566194575319471229970379663738043476462169302070774594291170094184 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (587431020291212425077570287060209112092291997683260210283999568885891829628 : F), runs := [⟨(587431020291212425077570287060209112092291997683260210283999568885891829628 : F), 773, 5, 149⟩, ⟨(587431020291212425077570287060209112092291997683260210283999568885891829628 : F), 1521, 8, 72⟩], residual := [((3892941673995227343189094966822599319633698296099933602780283735295161868150 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2091 (rho : Nat -> F) : Prop :=
    (relationLc1308 rho) * (relationLc1309 rho) = ((1 : F) * rho 2091)

def relationLc1310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (587431020291212425077570287060209112092291997683260210283999568885891829628 : F), runs := [⟨(3186933932818472081082754308592615368266078739163828012042132765608240016162 : F), 772, 5, 149⟩, ⟨(3186933932818472081082754308592615368266078739163828012042132765608240016162 : F), 1520, 8, 72⟩, ⟨(587431020291212425077570287060209112092291997683260210283999568885891829628 : F), 773, 5, 149⟩, ⟨(587431020291212425077570287060209112092291997683260210283999568885891829628 : F), 1521, 8, 72⟩], residual := [((8206664081642874400187193726097639596885188106632599162464539278848572535457 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2092 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1310 rho) = ((1 : F) * rho 2092)

def relationRow2093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2093) * ((1 : F) + (1 : F) * rho 2091) = ((1 : F) * rho 2092)

def relationLc1311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7857030729137157999171254651721337419283607337470803617651233887031517409413 : F), runs := [⟨(5257527816609898343166070630188931163109820595990235815893100690309169222879 : F), 772, 5, 149⟩, ⟨(5257527816609898343166070630188931163109820595990235815893100690309169222879 : F), 1520, 8, 72⟩, ⟨(7857030729137157999171254651721337419283607337470803617651233887031517409413 : F), 773, 5, 149⟩, ⟨(7857030729137157999171254651721337419283607337470803617651233887031517409413 : F), 1521, 8, 72⟩], residual := [((237797667785496024061631212683906934490711228521464665470694177068836703584 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2094 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1311 rho) = ((1 : F) * rho 2094)

def relationRow2095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2095) * ((1 : F) + (-1 : F) * rho 2091) = ((3774364953109684506160324595652824480358370736847088222326132334494131845790 : F) * rho 2090 + (1 : F) * rho 2094)

def relationLc1312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 72⟩], residual := [((1 : F), 2093), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 739) * (relationLc1312 rho) = ((1 : F) * rho 2096)

def relationLc1313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 72⟩], residual := [((1 : F), 2095), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 739) * (relationLc1313 rho) = ((1 : F) * rho 2097)

def relationLc1314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 73⟩, ⟨(1 : F), 1521, 8, 73⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2098 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1314 rho) = ((1 : F) * rho 2098)

def relationLc1315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3985374247453837473222794541343338310233095765846577436468927911938475780633 : F), 772, 5, 149⟩, ⟨(3985374247453837473222794541343338310233095765846577436468927911938475780633 : F), 1520, 8, 73⟩], residual := [((7105142906426796296168390025664855125272204098034851028457940225008388755719 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6252774744021088771151931377995730287240547912466162259661321476502298112282 : F), runs := [⟨(6252774744021088771151931377995730287240547912466162259661321476502298112282 : F), 773, 5, 149⟩, ⟨(6252774744021088771151931377995730287240547912466162259661321476502298112282 : F), 1521, 8, 73⟩], residual := [((6429624184377402250098413480349454538985920751972232079382271333906710152618 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2099 (rho : Nat -> F) : Prop :=
    (relationLc1315 rho) * (relationLc1316 rho) = ((1 : F) * rho 2099)

def relationLc1317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6252774744021088771151931377995730287240547912466162259661321476502298112282 : F), runs := [⟨(6252774744021088771151931377995730287240547912466162259661321476502298112282 : F), 773, 5, 149⟩, ⟨(6252774744021088771151931377995730287240547912466162259661321476502298112282 : F), 1521, 8, 73⟩, ⟨(772809274111116873408109393460791188669308610482743526629127229971911097569 : F), 772, 5, 149⟩, ⟨(772809274111116873408109393460791188669308610482743526629127229971911097569 : F), 1520, 8, 73⟩], residual := [((1487172118229649689952765374861572725388206842740353873295223984256631187008 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2100 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1317 rho) = ((1 : F) * rho 2100)

def relationRow2101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2101) * ((1 : F) + (1 : F) * rho 2099) = ((1 : F) * rho 2100)

def relationLc1318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2191687005407281653096893560785816244135351422687901568273911979415111126759 : F), runs := [⟨(2191687005407281653096893560785816244135351422687901568273911979415111126759 : F), 773, 5, 149⟩, ⟨(2191687005407281653096893560785816244135351422687901568273911979415111126759 : F), 1521, 8, 73⟩, ⟨(7671652475317253550840715545320755342706590724671320301306106225945498141472 : F), 772, 5, 149⟩, ⟨(7671652475317253550840715545320755342706590724671320301306106225945498141472 : F), 1520, 8, 73⟩], residual := [((6957289631198720734296059563919973805987692492413709954640009471660778052033 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2102 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1318 rho) = ((1 : F) * rho 2102)

def relationRow2103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2103) * ((1 : F) + (-1 : F) * rho 2099) = ((7025584018132205644560040771456521475909856522948905786290448706474209209851 : F) * rho 2098 + (1 : F) * rho 2102)

def relationLc1319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 73⟩], residual := [((1 : F), 2101), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 740) * (relationLc1319 rho) = ((1 : F) * rho 2104)

def relationLc1320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 73⟩], residual := [((1 : F), 2103), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 740) * (relationLc1320 rho) = ((1 : F) * rho 2105)

def relationLc1321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 74⟩, ⟨(1 : F), 1521, 8, 74⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2106 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1321 rho) = ((1 : F) * rho 2106)

def relationLc1322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8121534017638747712901180734970758415438419734352178356186262260998119810492 : F), 772, 5, 149⟩, ⟨(8121534017638747712901180734970758415438419734352178356186262260998119810492 : F), 1520, 8, 74⟩], residual := [((4772544478899057561087517555422350775831763930266204989794514715128854340322 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1150864079152338539263846845990030258145800544795680543046530314609120824927 : F), runs := [⟨(1150864079152338539263846845990030258145800544795680543046530314609120824927 : F), 773, 5, 149⟩, ⟨(1150864079152338539263846845990030258145800544795680543046530314609120824927 : F), 1521, 8, 74⟩], residual := [((1727421586306472614272207993773771346151534926016096070848824142586155885468 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2107 (rho : Nat -> F) : Prop :=
    (relationLc1322 rho) * (relationLc1323 rho) = ((1 : F) * rho 2107)

def relationLc1324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1150864079152338539263846845990030258145800544795680543046530314609120824927 : F), runs := [⟨(1150864079152338539263846845990030258145800544795680543046530314609120824927 : F), 773, 5, 149⟩, ⟨(1150864079152338539263846845990030258145800544795680543046530314609120824927 : F), 1521, 8, 74⟩, ⟨(6971256099087244692275809914967681648836661854443374148096234117134425472605 : F), 772, 5, 149⟩, ⟨(6971256099087244692275809914967681648836661854443374148096234117134425472605 : F), 1520, 8, 74⟩], residual := [((3380996375578589786828362597009559611897641602946356887564983522646506006161 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2108 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1324 rho) = ((1 : F) * rho 2108)

def relationRow2109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2109) * ((1 : F) + (1 : F) * rho 2107) = ((1 : F) * rho 2108)

def relationLc1325 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7293597670276031884984978092791516273230098790358383284888703141308288414114 : F), runs := [⟨(1473205650341125731973015023813864882539237480710689679838999338782983766436 : F), 772, 5, 149⟩, ⟨(1473205650341125731973015023813864882539237480710689679838999338782983766436 : F), 1520, 8, 74⟩, ⟨(7293597670276031884984978092791516273230098790358383284888703141308288414114 : F), 773, 5, 149⟩, ⟨(7293597670276031884984978092791516273230098790358383284888703141308288414114 : F), 1521, 8, 74⟩], residual := [((5063465373849780637420462341771986919478257732207706940370249933270903232880 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2110 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1325 rho) = ((1 : F) * rho 2110)

def relationRow2111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2111) * ((1 : F) + (-1 : F) * rho 2107) = ((8122120178239583231539656760957711906982462399239054691142764431743546297532 : F) * rho 2106 + (1 : F) * rho 2110)

def relationLc1326 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 74⟩], residual := [((1 : F), 2109), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 741) * (relationLc1326 rho) = ((1 : F) * rho 2112)

def relationLc1327 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 74⟩], residual := [((1 : F), 2111), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 741) * (relationLc1327 rho) = ((1 : F) * rho 2113)

def relationLc1328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 75⟩, ⟨(1 : F), 1521, 8, 75⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2114 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1328 rho) = ((1 : F) * rho 2114)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
