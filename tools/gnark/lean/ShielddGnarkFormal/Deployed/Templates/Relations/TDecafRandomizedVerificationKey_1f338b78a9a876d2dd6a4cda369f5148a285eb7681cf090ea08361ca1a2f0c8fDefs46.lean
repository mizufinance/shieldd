import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs45

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc1187 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (513794746313567042857624998345584205519144255522566251546131482948421286773 : F), runs := [⟨(4311537322049555969469929423376669618952467060800531915808292388266616515541 : F), 256, 5, 149⟩, ⟨(4311537322049555969469929423376669618952467060800531915808292388266616515541 : F), 1004, 8, 48⟩, ⟨(513794746313567042857624998345584205519144255522566251546131482948421286773 : F), 257, 5, 149⟩, ⟨(513794746313567042857624998345584205519144255522566251546131482948421286773 : F), 1005, 8, 48⟩], residual := [((2592487586569836385635020574454551149248163972010024202618181235254096856336 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1385 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1187 rho) = ((1 : F) * rho 1386)

def relationRow1386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1387) * ((1 : F) + (-1 : F) * rho 1383) = ((3619129681065247411921270517059292706904288018830965660580809584702371436727 : F) * rho 1382 + (1 : F) * rho 1386)

def relationLc1188 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 48⟩], residual := [((1 : F), 1385), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 199) * (relationLc1188 rho) = ((1 : F) * rho 1388)

def relationLc1189 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 48⟩], residual := [((1 : F), 1387), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 199) * (relationLc1189 rho) = ((1 : F) * rho 1389)

def relationLc1190 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 49⟩, ⟨(1 : F), 1005, 8, 49⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1389 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1190 rho) = ((1 : F) * rho 1390)

def relationLc1191 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5395489779347166496441878133437943551276689582318615283329753273729667076491 : F), 256, 5, 149⟩, ⟨(5395489779347166496441878133437943551276689582318615283329753273729667076491 : F), 1004, 8, 49⟩], residual := [((3455123595394709068728375359700453623954053059499181797974481778307175545740 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1192 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5866909752053573440721091521294193006589985270360885180740394909153523547757 : F), runs := [⟨(5866909752053573440721091521294193006589985270360885180740394909153523547757 : F), 257, 5, 149⟩, ⟨(5866909752053573440721091521294193006589985270360885180740394909153523547757 : F), 1005, 8, 49⟩], residual := [((7921956495604143909729635272667358866033647565741482052006931585555957659688 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1390 (rho : Nat -> F) : Prop :=
    (relationLc1191 rho) * (relationLc1192 rho) = ((1 : F) * rho 1391)

def relationLc1193 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5866909752053573440721091521294193006589985270360885180740394909153523547757 : F), runs := [⟨(5866909752053573440721091521294193006589985270360885180740394909153523547757 : F), 257, 5, 149⟩, ⟨(5866909752053573440721091521294193006589985270360885180740394909153523547757 : F), 1005, 8, 49⟩, ⟨(6861338835775097049852055040683003353706631465756501572008074364149305508005 : F), 256, 5, 149⟩, ⟨(6861338835775097049852055040683003353706631465756501572008074364149305508005 : F), 1004, 8, 49⟩], residual := [((3900729970005987560366732024886178791546403245904607286498548116080007736009 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1391 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1193 rho) = ((1 : F) * rho 1392)

def relationRow1392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1393) * ((1 : F) + (1 : F) * rho 1391) = ((1 : F) * rho 1392)

def relationLc1194 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2577551997374796983527733417487353524785914064793178647194838546763885691284 : F), runs := [⟨(1583122913653273374396769898098543177669267869397562255927159091768103731036 : F), 256, 5, 149⟩, ⟨(1583122913653273374396769898098543177669267869397562255927159091768103731036 : F), 1004, 8, 49⟩, ⟨(2577551997374796983527733417487353524785914064793178647194838546763885691284 : F), 257, 5, 149⟩, ⟨(2577551997374796983527733417487353524785914064793178647194838546763885691284 : F), 1005, 8, 49⟩], residual := [((4543731779422382863882092913895367739829496089249456541436685339837401503032 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1393 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1194 rho) = ((1 : F) * rho 1394)

def relationRow1394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1395) * ((1 : F) + (-1 : F) * rho 1391) = ((4283786838400300066324321623195649828920717400963322924813235817385419816721 : F) * rho 1390 + (1 : F) * rho 1394)

def relationLc1195 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 49⟩], residual := [((1 : F), 1393), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 200) * (relationLc1195 rho) = ((1 : F) * rho 1396)

def relationLc1196 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 49⟩], residual := [((1 : F), 1395), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 200) * (relationLc1196 rho) = ((1 : F) * rho 1397)

def relationLc1197 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 50⟩, ⟨(1 : F), 1005, 8, 50⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1397 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1197 rho) = ((1 : F) * rho 1398)

def relationLc1198 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3100448320433834111918975386863796058846185529823286084341039373912753248800 : F), 256, 5, 149⟩, ⟨(3100448320433834111918975386863796058846185529823286084341039373912753248800 : F), 1004, 8, 50⟩], residual := [((3903952192111930461238178835992593518359008067511423121083754618642940815645 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1199 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1318318980829517938862932266652645911449606932466552744558540909070597892155 : F), runs := [⟨(1318318980829517938862932266652645911449606932466552744558540909070597892155 : F), 257, 5, 149⟩, ⟨(1318318980829517938862932266652645911449606932466552744558540909070597892155 : F), 1005, 8, 50⟩], residual := [((5094008693542661590663718289535533802753982210673550470075594113034958991626 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1398 (rho : Nat -> F) : Prop :=
    (relationLc1198 rho) * (relationLc1199 rho) = ((1 : F) * rho 1399)

def relationLc1200 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1318318980829517938862932266652645911449606932466552744558540909070597892155 : F), runs := [⟨(1318318980829517938862932266652645911449606932466552744558540909070597892155 : F), 257, 5, 149⟩, ⟨(1318318980829517938862932266652645911449606932466552744558540909070597892155 : F), 1005, 8, 50⟩, ⟨(993341399989243738735601399753165446771694951840289952003094642907842778255 : F), 256, 5, 149⟩, ⟨(993341399989243738735601399753165446771694951840289952003094642907842778255 : F), 1004, 8, 50⟩], residual := [((5645965964919523856151390150434559708149351683395451164290862151907641070708 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1399 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1200 rho) = ((1 : F) * rho 1400)

def relationRow1400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1401) * ((1 : F) + (1 : F) * rho 1399) = ((1 : F) * rho 1400)

def relationLc1201 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7126142768598852485385892672128900619926292402687511083376692546846811346886 : F), runs := [⟨(7126142768598852485385892672128900619926292402687511083376692546846811346886 : F), 257, 5, 149⟩, ⟨(7126142768598852485385892672128900619926292402687511083376692546846811346886 : F), 1005, 8, 50⟩, ⟨(7451120349439126685513223539028381084604204383313773875932138813009566460786 : F), 256, 5, 149⟩, ⟨(7451120349439126685513223539028381084604204383313773875932138813009566460786 : F), 1004, 8, 50⟩], residual := [((2798495784508846568097434788346986823226547651758612663644371304009768168333 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1401 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1201 rho) = ((1 : F) * rho 1402)

def relationRow1402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1403) * ((1 : F) + (-1 : F) * rho 1399) = ((2311660380818761677598533666405811358221301884306842696561635551978440670410 : F) * rho 1398 + (1 : F) * rho 1402)

def relationLc1202 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 50⟩], residual := [((1 : F), 1401), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 201) * (relationLc1202 rho) = ((1 : F) * rho 1404)

def relationLc1203 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 50⟩], residual := [((1 : F), 1403), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 201) * (relationLc1203 rho) = ((1 : F) * rho 1405)

def relationLc1204 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 51⟩, ⟨(1 : F), 1005, 8, 51⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1405 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1204 rho) = ((1 : F) * rho 1406)

def relationLc1205 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1746227751459114646722528869200681138402567811675572997694830651943215246450 : F), 256, 5, 149⟩, ⟨(1746227751459114646722528869200681138402567811675572997694830651943215246450 : F), 1004, 8, 51⟩], residual := [((5052115677828846873756212072743373167809060123087419825114718750182894204087 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2836335629156425519980953814768748374574497271815974709514080933954942677220 : F), runs := [⟨(2836335629156425519980953814768748374574497271815974709514080933954942677220 : F), 257, 5, 149⟩, ⟨(2836335629156425519980953814768748374574497271815974709514080933954942677220 : F), 1005, 8, 51⟩], residual := [((4158914102388540119305092671029422258422421911007114277230171451075976427611 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1406 (rho : Nat -> F) : Prop :=
    (relationLc1205 rho) * (relationLc1206 rho) = ((1 : F) * rho 1407)

def relationLc1207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2836335629156425519980953814768748374574497271815974709514080933954942677220 : F), runs := [⟨(2836335629156425519980953814768748374574497271815974709514080933954942677220 : F), 257, 5, 149⟩, ⟨(2836335629156425519980953814768748374574497271815974709514080933954942677220 : F), 1005, 8, 51⟩, ⟨(3047404678791255503832486498557128897827915538937307231197318536114504894340 : F), 256, 5, 149⟩, ⟨(3047404678791255503832486498557128897827915538937307231197318536114504894340 : F), 1004, 8, 51⟩], residual := [((4859399886246508160660922676579945266039695626303904537676686870715014893008 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1407 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1207 rho) = ((1 : F) * rho 1408)

def relationRow1408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1409) * ((1 : F) + (1 : F) * rho 1407) = ((1 : F) * rho 1408)

def relationLc1208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5608126120271944904267871124012798156801402063338089118421152521962466561821 : F), runs := [⟨(5397057070637114920416338440224417633547983796216756596737914919802904344701 : F), 256, 5, 149⟩, ⟨(5397057070637114920416338440224417633547983796216756596737914919802904344701 : F), 1004, 8, 51⟩, ⟨(5608126120271944904267871124012798156801402063338089118421152521962466561821 : F), 257, 5, 149⟩, ⟨(5608126120271944904267871124012798156801402063338089118421152521962466561821 : F), 1005, 8, 51⟩], residual := [((3585061863181862263587902262201601265336203708850159290258546585202394346033 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1409 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1208 rho) = ((1 : F) * rho 1410)

def relationRow1410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1411) * ((1 : F) + (-1 : F) * rho 1407) = ((5883740307947681023813440313325877272402412810753281940711399470069447571560 : F) * rho 1406 + (1 : F) * rho 1410)

def relationLc1209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 51⟩], residual := [((1 : F), 1409), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 202) * (relationLc1209 rho) = ((1 : F) * rho 1412)

def relationLc1210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 51⟩], residual := [((1 : F), 1411), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 202) * (relationLc1210 rho) = ((1 : F) * rho 1413)

def relationLc1211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 52⟩, ⟨(1 : F), 1005, 8, 52⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1413 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1211 rho) = ((1 : F) * rho 1414)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
