import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41Defs52

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41

variable {F : Type} [CommRing F]

def relationLc1160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5608126120271944904267871124012798156801402063338089118421152521962466561821 : F), runs := [⟨(5397057070637114920416338440224417633547983796216756596737914919802904344701 : F), 256, 5, 149⟩, ⟨(5397057070637114920416338440224417633547983796216756596737914919802904344701 : F), 1004, 8, 51⟩, ⟨(5608126120271944904267871124012798156801402063338089118421152521962466561821 : F), 257, 5, 149⟩, ⟨(5608126120271944904267871124012798156801402063338089118421152521962466561821 : F), 1005, 8, 51⟩], residual := [((3585061863181862263587902262201601265336203708850159290258546585202394346033 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1409 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1160 rho) = ((1 : F) * rho 1410)

def relationRow1410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1411) * ((1 : F) + (-1 : F) * rho 1407) = ((5883740307947681023813440313325877272402412810753281940711399470069447571560 : F) * rho 1406 + (1 : F) * rho 1410)

def relationLc1161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 51⟩], residual := [((1 : F), 1409), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 202) * (relationLc1161 rho) = ((1 : F) * rho 1412)

def relationLc1162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 51⟩], residual := [((1 : F), 1411), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 202) * (relationLc1162 rho) = ((1 : F) * rho 1413)

def relationLc1163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 52⟩, ⟨(1 : F), 1005, 8, 52⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1413 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1163 rho) = ((1 : F) * rho 1414)

def relationLc1164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7771082363777087753146312373441150692288717775491566932576390877702374023469 : F), 256, 5, 149⟩, ⟨(7771082363777087753146312373441150692288717775491566932576390877702374023469 : F), 1004, 8, 52⟩], residual := [((5532580002342148249326876168201717375879855212075595292748425706160903698584 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4558446562394208624286663758240912216818567793319435869030726060012341948788 : F), runs := [⟨(4558446562394208624286663758240912216818567793319435869030726060012341948788 : F), 257, 5, 149⟩, ⟨(4558446562394208624286663758240912216818567793319435869030726060012341948788 : F), 1005, 8, 52⟩], residual := [((3949003806747971313342296458465229099037428683069361027605799107243267555772 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1414 (rho : Nat -> F) : Prop :=
    (relationLc1164 rho) * (relationLc1165 rho) = ((1 : F) * rho 1415)

def relationLc1166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4558446562394208624286663758240912216818567793319435869030726060012341948788 : F), runs := [⟨(1187759968262630303751952362269717603441135397511027682878886254944284637993 : F), 256, 5, 149⟩, ⟨(1187759968262630303751952362269717603441135397511027682878886254944284637993 : F), 1004, 8, 52⟩, ⟨(4558446562394208624286663758240912216818567793319435869030726060012341948788 : F), 257, 5, 149⟩, ⟨(4558446562394208624286663758240912216818567793319435869030726060012341948788 : F), 1005, 8, 52⟩], residual := [((4853702159964689550774172437079807466137824360152061528008258171118634681859 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1415 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1166 rho) = ((1 : F) * rho 1416)

def relationRow1416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1417) * ((1 : F) + (1 : F) * rho 1415) = ((1 : F) * rho 1416)

def relationLc1167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3886015187034161799962161180540634314557331541834627958904507395905067290253 : F), runs := [⟨(3886015187034161799962161180540634314557331541834627958904507395905067290253 : F), 257, 5, 149⟩, ⟨(3886015187034161799962161180540634314557331541834627958904507395905067290253 : F), 1005, 8, 52⟩, ⟨(7256701781165740120496872576511828927934763937643036145056347200973124601048 : F), 256, 5, 149⟩, ⟨(7256701781165740120496872576511828927934763937643036145056347200973124601048 : F), 1004, 8, 52⟩], residual := [((3590759589463680873474652501701739065238074975002002299926975284798774557182 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1417 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1167 rho) = ((1 : F) * rho 1418)

def relationRow1418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1419) * ((1 : F) + (-1 : F) * rho 1415) = ((5746206530656838928038616120510629820259703190830463551909612314956626586781 : F) * rho 1414 + (1 : F) * rho 1418)

def relationLc1168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 52⟩], residual := [((1 : F), 1417), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 203) * (relationLc1168 rho) = ((1 : F) * rho 1420)

def relationLc1169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 52⟩], residual := [((1 : F), 1419), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 203) * (relationLc1169 rho) = ((1 : F) * rho 1421)

def relationLc1170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 53⟩, ⟨(1 : F), 1005, 8, 53⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1421 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1170 rho) = ((1 : F) * rho 1422)

def relationLc1171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6296888571737790473502119962646382761543789952931972953997351135752063125416 : F), 256, 5, 149⟩, ⟨(6296888571737790473502119962646382761543789952931972953997351135752063125416 : F), 1004, 8, 53⟩], residual := [((3360235993349921557478930211628176150415994224663314196343587614236684632347 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3836254361821371855461032363456284343080856470191109187973679580433748081377 : F), runs := [⟨(3836254361821371855461032363456284343080856470191109187973679580433748081377 : F), 257, 5, 149⟩, ⟨(3836254361821371855461032363456284343080856470191109187973679580433748081377 : F), 1005, 8, 53⟩], residual := [((4308558887452097310070062712423037990220006299339082313248399292937980109564 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1422 (rho : Nat -> F) : Prop :=
    (relationLc1171 rho) * (relationLc1172 rho) = ((1 : F) * rho 1423)

def relationLc1173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3836254361821371855461032363456284343080856470191109187973679580433748081377 : F), runs := [⟨(1676441402343373609598989823996290220144226246842176830813373780612472756475 : F), 256, 5, 149⟩, ⟨(1676441402343373609598989823996290220144226246842176830813373780612472756475 : F), 1004, 8, 53⟩, ⟨(3836254361821371855461032363456284343080856470191109187973679580433748081377 : F), 257, 5, 149⟩, ⟨(3836254361821371855461032363456284343080856470191109187973679580433748081377 : F), 1005, 8, 53⟩], residual := [((4687030443945371036925762910022222683330288459044630784273755169853930765606 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1423 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1173 rho) = ((1 : F) * rho 1424)

def relationRow1424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1425) * ((1 : F) + (1 : F) * rho 1423) = ((1 : F) * rho 1424)

def relationLc1174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4608207387606998568787792575325262188295042864962954639961553875483661157664 : F), runs := [⟨(4608207387606998568787792575325262188295042864962954639961553875483661157664 : F), 257, 5, 149⟩, ⟨(4608207387606998568787792575325262188295042864962954639961553875483661157664 : F), 1005, 8, 53⟩, ⟨(6768020347084996814649835114785256311231673088311886997121859675304936482566 : F), 256, 5, 149⟩, ⟨(6768020347084996814649835114785256311231673088311886997121859675304936482566 : F), 1004, 8, 53⟩], residual := [((3757431305482999387323062028759323848045610876109433043661478286063478473435 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1425 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1174 rho) = ((1 : F) * rho 1426)

def relationRow1426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1427) * ((1 : F) + (-1 : F) * rho 1423) = ((5512695764164745465060022187452574563225082717033286018787053361046220837852 : F) * rho 1422 + (1 : F) * rho 1426)

def relationLc1175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 53⟩], residual := [((1 : F), 1425), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 204) * (relationLc1175 rho) = ((1 : F) * rho 1428)

def relationLc1176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 53⟩], residual := [((1 : F), 1427), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 204) * (relationLc1176 rho) = ((1 : F) * rho 1429)

def relationLc1177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 54⟩, ⟨(1 : F), 1005, 8, 54⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1429 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1177 rho) = ((1 : F) * rho 1430)

def relationLc1178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3389998491020503859303786965765139969901366052336265727484603991236154999635 : F), 256, 5, 149⟩, ⟨(3389998491020503859303786965765139969901366052336265727484603991236154999635 : F), 1004, 8, 54⟩], residual := [((6109079922443606354159973101022193335128966803025889958934578981713123816444 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2680918677687748119548860364292426829542892392781941149131102811746148175546 : F), runs := [⟨(2680918677687748119548860364292426829542892392781941149131102811746148175546 : F), 257, 5, 149⟩, ⟨(2680918677687748119548860364292426829542892392781941149131102811746148175546 : F), 1005, 8, 54⟩], residual := [((8352604590135444293091570219185407877769926257403231614289972806558950954850 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1430 (rho : Nat -> F) : Prop :=
    (relationLc1178 rho) * (relationLc1179 rho) = ((1 : F) * rho 1431)

def relationLc1180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2680918677687748119548860364292426829542892392781941149131102811746148175546 : F), runs := [⟨(2680918677687748119548860364292426829542892392781941149131102811746148175546 : F), 257, 5, 149⟩, ⟨(2680918677687748119548860364292426829542892392781941149131102811746148175546 : F), 1005, 8, 54⟩, ⟨(8090586660488819765519828917510612645406075485596887449113555188817020355109 : F), 256, 5, 149⟩, ⟨(8090586660488819765519828917510612645406075485596887449113555188817020355109 : F), 1004, 8, 54⟩], residual := [((4019188140800469476257486304273406395866950123003719165707181508595962339843 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1431 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1180 rho) = ((1 : F) * rho 1432)

def relationRow1432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1433) * ((1 : F) + (1 : F) * rho 1431) = ((1 : F) * rho 1432)

def relationLc1181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5763543071740622304699964574489119701833006942372122678804130644171261063495 : F), runs := [⟨(353875088939550658728996021270933885969823849557176378821678267100388883932 : F), 256, 5, 149⟩, ⟨(353875088939550658728996021270933885969823849557176378821678267100388883932 : F), 1004, 8, 54⟩, ⟨(5763543071740622304699964574489119701833006942372122678804130644171261063495 : F), 257, 5, 149⟩, ⟨(5763543071740622304699964574489119701833006942372122678804130644171261063495 : F), 1005, 8, 54⟩], residual := [((4425273608627900947991338634508140135508949212150344662228051947321446899198 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1433 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1181 rho) = ((1 : F) * rho 1434)

def relationRow1434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1435) * ((1 : F) + (-1 : F) * rho 1431) = ((2327043588748197460819864343021492943573068543224764770309424544645759291614 : F) * rho 1430 + (1 : F) * rho 1434)

def relationLc1182 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 54⟩], residual := [((1 : F), 1433), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 205) * (relationLc1182 rho) = ((1 : F) * rho 1436)

def relationLc1183 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 54⟩], residual := [((1 : F), 1435), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 205) * (relationLc1183 rho) = ((1 : F) * rho 1437)

def relationLc1184 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 55⟩, ⟨(1 : F), 1005, 8, 55⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1437 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1184 rho) = ((1 : F) * rho 1438)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41
