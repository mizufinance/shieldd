import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs62

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc1310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7857030729137157999171254651721337419283607337470803617651233887031517409413 : F), runs := [⟨(5257527816609898343166070630188931163109820595990235815893100690309169222879 : F), 643, 5, 149⟩, ⟨(5257527816609898343166070630188931163109820595990235815893100690309169222879 : F), 1391, 8, 72⟩, ⟨(7857030729137157999171254651721337419283607337470803617651233887031517409413 : F), 644, 5, 149⟩, ⟨(7857030729137157999171254651721337419283607337470803617651233887031517409413 : F), 1392, 8, 72⟩], residual := [((237797667785496024061631212683906934490711228521464665470694177068836703584 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1965 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1310 rho) = ((1 : F) * rho 1965)

def relationRow1966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1966) * ((1 : F) + (-1 : F) * rho 1962) = ((3774364953109684506160324595652824480358370736847088222326132334494131845790 : F) * rho 1961 + (1 : F) * rho 1965)

def relationLc1311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 72⟩], residual := [((1 : F), 1964), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 610) * (relationLc1311 rho) = ((1 : F) * rho 1967)

def relationLc1312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 72⟩], residual := [((1 : F), 1966), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 610) * (relationLc1312 rho) = ((1 : F) * rho 1968)

def relationLc1313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 73⟩, ⟨(1 : F), 1392, 8, 73⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1969 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1313 rho) = ((1 : F) * rho 1969)

def relationLc1314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3985374247453837473222794541343338310233095765846577436468927911938475780633 : F), 643, 5, 149⟩, ⟨(3985374247453837473222794541343338310233095765846577436468927911938475780633 : F), 1391, 8, 73⟩], residual := [((7105142906426796296168390025664855125272204098034851028457940225008388755719 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6252774744021088771151931377995730287240547912466162259661321476502298112282 : F), runs := [⟨(6252774744021088771151931377995730287240547912466162259661321476502298112282 : F), 644, 5, 149⟩, ⟨(6252774744021088771151931377995730287240547912466162259661321476502298112282 : F), 1392, 8, 73⟩], residual := [((6429624184377402250098413480349454538985920751972232079382271333906710152618 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1970 (rho : Nat -> F) : Prop :=
    (relationLc1314 rho) * (relationLc1315 rho) = ((1 : F) * rho 1970)

def relationLc1316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6252774744021088771151931377995730287240547912466162259661321476502298112282 : F), runs := [⟨(6252774744021088771151931377995730287240547912466162259661321476502298112282 : F), 644, 5, 149⟩, ⟨(6252774744021088771151931377995730287240547912466162259661321476502298112282 : F), 1392, 8, 73⟩, ⟨(772809274111116873408109393460791188669308610482743526629127229971911097569 : F), 643, 5, 149⟩, ⟨(772809274111116873408109393460791188669308610482743526629127229971911097569 : F), 1391, 8, 73⟩], residual := [((1487172118229649689952765374861572725388206842740353873295223984256631187008 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1971 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1316 rho) = ((1 : F) * rho 1971)

def relationRow1972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1972) * ((1 : F) + (1 : F) * rho 1970) = ((1 : F) * rho 1971)

def relationLc1317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2191687005407281653096893560785816244135351422687901568273911979415111126759 : F), runs := [⟨(2191687005407281653096893560785816244135351422687901568273911979415111126759 : F), 644, 5, 149⟩, ⟨(2191687005407281653096893560785816244135351422687901568273911979415111126759 : F), 1392, 8, 73⟩, ⟨(7671652475317253550840715545320755342706590724671320301306106225945498141472 : F), 643, 5, 149⟩, ⟨(7671652475317253550840715545320755342706590724671320301306106225945498141472 : F), 1391, 8, 73⟩], residual := [((6957289631198720734296059563919973805987692492413709954640009471660778052033 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1973 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1317 rho) = ((1 : F) * rho 1973)

def relationRow1974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1974) * ((1 : F) + (-1 : F) * rho 1970) = ((7025584018132205644560040771456521475909856522948905786290448706474209209851 : F) * rho 1969 + (1 : F) * rho 1973)

def relationLc1318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 73⟩], residual := [((1 : F), 1972), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 611) * (relationLc1318 rho) = ((1 : F) * rho 1975)

def relationLc1319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 73⟩], residual := [((1 : F), 1974), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 611) * (relationLc1319 rho) = ((1 : F) * rho 1976)

def relationLc1320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 74⟩, ⟨(1 : F), 1392, 8, 74⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1977 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1320 rho) = ((1 : F) * rho 1977)

def relationLc1321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8121534017638747712901180734970758415438419734352178356186262260998119810492 : F), 643, 5, 149⟩, ⟨(8121534017638747712901180734970758415438419734352178356186262260998119810492 : F), 1391, 8, 74⟩], residual := [((4772544478899057561087517555422350775831763930266204989794514715128854340322 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1150864079152338539263846845990030258145800544795680543046530314609120824927 : F), runs := [⟨(1150864079152338539263846845990030258145800544795680543046530314609120824927 : F), 644, 5, 149⟩, ⟨(1150864079152338539263846845990030258145800544795680543046530314609120824927 : F), 1392, 8, 74⟩], residual := [((1727421586306472614272207993773771346151534926016096070848824142586155885468 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1978 (rho : Nat -> F) : Prop :=
    (relationLc1321 rho) * (relationLc1322 rho) = ((1 : F) * rho 1978)

def relationLc1323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1150864079152338539263846845990030258145800544795680543046530314609120824927 : F), runs := [⟨(1150864079152338539263846845990030258145800544795680543046530314609120824927 : F), 644, 5, 149⟩, ⟨(1150864079152338539263846845990030258145800544795680543046530314609120824927 : F), 1392, 8, 74⟩, ⟨(6971256099087244692275809914967681648836661854443374148096234117134425472605 : F), 643, 5, 149⟩, ⟨(6971256099087244692275809914967681648836661854443374148096234117134425472605 : F), 1391, 8, 74⟩], residual := [((3380996375578589786828362597009559611897641602946356887564983522646506006161 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1979 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1323 rho) = ((1 : F) * rho 1979)

def relationRow1980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1980) * ((1 : F) + (1 : F) * rho 1978) = ((1 : F) * rho 1979)

def relationLc1324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7293597670276031884984978092791516273230098790358383284888703141308288414114 : F), runs := [⟨(1473205650341125731973015023813864882539237480710689679838999338782983766436 : F), 643, 5, 149⟩, ⟨(1473205650341125731973015023813864882539237480710689679838999338782983766436 : F), 1391, 8, 74⟩, ⟨(7293597670276031884984978092791516273230098790358383284888703141308288414114 : F), 644, 5, 149⟩, ⟨(7293597670276031884984978092791516273230098790358383284888703141308288414114 : F), 1392, 8, 74⟩], residual := [((5063465373849780637420462341771986919478257732207706940370249933270903232880 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1981 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1324 rho) = ((1 : F) * rho 1981)

def relationRow1982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1982) * ((1 : F) + (-1 : F) * rho 1978) = ((8122120178239583231539656760957711906982462399239054691142764431743546297532 : F) * rho 1977 + (1 : F) * rho 1981)

def relationLc1325 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 74⟩], residual := [((1 : F), 1980), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 612) * (relationLc1325 rho) = ((1 : F) * rho 1983)

def relationLc1326 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 74⟩], residual := [((1 : F), 1982), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 612) * (relationLc1326 rho) = ((1 : F) * rho 1984)

def relationLc1327 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 75⟩, ⟨(1 : F), 1392, 8, 75⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1985 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1327 rho) = ((1 : F) * rho 1985)

def relationLc1328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7396561173192761342171703816622081539789750781429800259604856513236740885859 : F), 643, 5, 149⟩, ⟨(7396561173192761342171703816622081539789750781429800259604856513236740885859 : F), 1391, 8, 75⟩], residual := [((1421462245074834074587288782787002326083756887145579104072002412561438665897 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1329 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2477411039352224260586883854216779246546796701215891281646540553915667872452 : F), runs := [⟨(2477411039352224260586883854216779246546796701215891281646540553915667872452 : F), 644, 5, 149⟩, ⟨(2477411039352224260586883854216779246546796701215891281646540553915667872452 : F), 1392, 8, 75⟩], residual := [((1527964148890742347591961995730542078352246799645079595788984596084193822120 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1986 (rho : Nat -> F) : Prop :=
    (relationLc1328 rho) * (relationLc1329 rho) = ((1 : F) * rho 1986)

def relationLc1330 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2477411039352224260586883854216779246546796701215891281646540553915667872452 : F), runs := [⟨(2477411039352224260586883854216779246546796701215891281646540553915667872452 : F), 644, 5, 149⟩, ⟨(2477411039352224260586883854216779246546796701215891281646540553915667872452 : F), 1392, 8, 75⟩, ⟨(2931874370928210846062542283899266086203817363132369643143240489346137578087 : F), 643, 5, 149⟩, ⟨(2931874370928210846062542283899266086203817363132369643143240489346137578087 : F), 1391, 8, 75⟩], residual := [((919069346133274648680457014640972352594596254071944761169385492814603032499 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1987 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1330 rho) = ((1 : F) * rho 1987)

def relationRow1988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1988) * ((1 : F) + (1 : F) * rho 1986) = ((1 : F) * rho 1987)

def relationLc1331 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5967050710076146163661941084564767284829102633938172546288692902001741366589 : F), runs := [⟨(5512587378500159578186282654882280445172081972021694184791992966571271660954 : F), 643, 5, 149⟩, ⟨(5512587378500159578186282654882280445172081972021694184791992966571271660954 : F), 1391, 8, 75⟩, ⟨(5967050710076146163661941084564767284829102633938172546288692902001741366589 : F), 644, 5, 149⟩, ⟨(5967050710076146163661941084564767284829102633938172546288692902001741366589 : F), 1392, 8, 75⟩], residual := [((7525392403295095775568367924140574178781303081082119066765847963102806206542 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1989 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1331 rho) = ((1 : F) * rho 1989)

def relationRow1990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1990) * ((1 : F) + (-1 : F) * rho 1986) = ((5409285410280435106649426138116045332750614064348260924789781043261805450539 : F) * rho 1985 + (1 : F) * rho 1989)

def relationLc1332 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 75⟩], residual := [((1 : F), 1988), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 613) * (relationLc1332 rho) = ((1 : F) * rho 1991)

def relationLc1333 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 75⟩], residual := [((1 : F), 1990), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 613) * (relationLc1333 rho) = ((1 : F) * rho 1992)

def relationLc1334 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 76⟩, ⟨(1 : F), 1392, 8, 76⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1993 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1334 rho) = ((1 : F) * rho 1993)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
