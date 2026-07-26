import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs37

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc991 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (260399051281427065754043580691908846625584314566944773979947681064209641467 : F), runs := [⟨(260399051281427065754043580691908846625584314566944773979947681064209641467 : F), 257, 5, 149⟩, ⟨(260399051281427065754043580691908846625584314566944773979947681064209641467 : F), 1005, 8, 20⟩, ⟨(872490945555478658104104925029172745948069318902359193668428889759256736392 : F), 256, 5, 149⟩, ⟨(872490945555478658104104925029172745948069318902359193668428889759256736392 : F), 1004, 8, 20⟩], residual := [((6458299007090321779026095178471812103874448292617897965910513513384293209512 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1161 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc991 rho) = ((1 : F) * rho 1162)

def relationRow1162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1163) * ((1 : F) + (-1 : F) * rho 1159) = ((7311571752591464700390676433060464938802245701684759860286856885093942861182 : F) * rho 1158 + (1 : F) * rho 1162)

def relationLc992 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 20⟩], residual := [((1 : F), 1161), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 171) * (relationLc992 rho) = ((1 : F) * rho 1164)

def relationLc993 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 20⟩], residual := [((1 : F), 1163), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 171) * (relationLc993 rho) = ((1 : F) * rho 1165)

def relationLc994 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 21⟩, ⟨(1 : F), 1005, 8, 21⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1165 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc994 rho) = ((1 : F) * rho 1166)

def relationLc995 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4493477507397166489633705024878414293948320914222600880869178529064453280296 : F), 256, 5, 149⟩, ⟨(4493477507397166489633705024878414293948320914222600880869178529064453280296 : F), 1004, 8, 21⟩], residual := [((7303261112629090045929153821352107980531881325192768366127188115202627453569 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc996 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6642304247852007316468237760849180446036251547538434523827277768741710193020 : F), runs := [⟨(6642304247852007316468237760849180446036251547538434523827277768741710193020 : F), 257, 5, 149⟩, ⟨(6642304247852007316468237760849180446036251547538434523827277768741710193020 : F), 1005, 8, 21⟩], residual := [((8266985018218747902737876725127409567723927972908008121147414056726396810144 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1166 (rho : Nat -> F) : Prop :=
    (relationLc995 rho) * (relationLc996 rho) = ((1 : F) * rho 1167)

def relationLc997 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6642304247852007316468237760849180446036251547538434523827277768741710193020 : F), runs := [⟨(1141950966989133498703460536262081893113311899919589752624443703589330494144 : F), 256, 5, 149⟩, ⟨(1141950966989133498703460536262081893113311899919589752624443703589330494144 : F), 1004, 8, 21⟩, ⟨(6642304247852007316468237760849180446036251547538434523827277768741710193020 : F), 257, 5, 149⟩, ⟨(6642304247852007316468237760849180446036251547538434523827277768741710193020 : F), 1005, 8, 21⟩], residual := [((6234457744974383593301526046010688691569964770436321362335523037927101444845 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1167 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc997 rho) = ((1 : F) * rho 1168)

def relationRow1168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1169) * ((1 : F) + (1 : F) * rho 1167) = ((1 : F) * rho 1168)

def relationLc998 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1802157501576363107780587177932366085339647787615629304107955687175699046021 : F), runs := [⟨(1802157501576363107780587177932366085339647787615629304107955687175699046021 : F), 257, 5, 149⟩, ⟨(1802157501576363107780587177932366085339647787615629304107955687175699046021 : F), 1005, 8, 21⟩, ⟨(7302510782439236925545364402519464638262587435234474075310789752328078744897 : F), 256, 5, 149⟩, ⟨(7302510782439236925545364402519464638262587435234474075310789752328078744897 : F), 1004, 8, 21⟩], residual := [((2210004004453986830947298892770857839805934564717742465599710417990307794196 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1169 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc998 rho) = ((1 : F) * rho 1170)

def relationRow1170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1171) * ((1 : F) + (-1 : F) * rho 1167) = ((7784255214841140815171698297111262339149563447458024276451721472331040687164 : F) * rho 1166 + (1 : F) * rho 1170)

def relationLc999 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 21⟩], residual := [((1 : F), 1169), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 172) * (relationLc999 rho) = ((1 : F) * rho 1172)

def relationLc1000 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 21⟩], residual := [((1 : F), 1171), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 172) * (relationLc1000 rho) = ((1 : F) * rho 1173)

def relationLc1001 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 22⟩, ⟨(1 : F), 1005, 8, 22⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1173 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1001 rho) = ((1 : F) * rho 1174)

def relationLc1002 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3365942066523477375214627643615779220768672575053196459320072238144942379339 : F), 256, 5, 149⟩, ⟨(3365942066523477375214627643615779220768672575053196459320072238144942379339 : F), 1004, 8, 22⟩], residual := [((1423821851998518400139618756530695611128436944393141932155203380004394904671 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1003 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1479178273223536705846674523499032468866589897110292784181593712648855960454 : F), runs := [⟨(1479178273223536705846674523499032468866589897110292784181593712648855960454 : F), 257, 5, 149⟩, ⟨(1479178273223536705846674523499032468866589897110292784181593712648855960454 : F), 1005, 8, 22⟩], residual := [((637151713021132173793552022640666717427664671317187890220840102765594785537 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1174 (rho : Nat -> F) : Prop :=
    (relationLc1002 rho) * (relationLc1003 rho) = ((1 : F) * rho 1175)

def relationLc1004 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1479178273223536705846674523499032468866589897110292784181593712648855960454 : F), runs := [⟨(1479178273223536705846674523499032468866589897110292784181593712648855960454 : F), 257, 5, 149⟩, ⟨(1479178273223536705846674523499032468866589897110292784181593712648855960454 : F), 1005, 8, 22⟩, ⟨(3115026921856910999665145848873306393635723446519920655670033148669360752953 : F), 256, 5, 149⟩, ⟨(3115026921856910999665145848873306393635723446519920655670033148669360752953 : F), 1004, 8, 22⟩], residual := [((2124698046204810288358435996883736379891453775337828439176053410255851690560 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1175 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1004 rho) = ((1 : F) * rho 1176)

def relationRow1176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1177) * ((1 : F) + (1 : F) * rho 1175) = ((1 : F) * rho 1176)

def relationLc1005 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6965283476204833718402150415282514062509309438043771043753639743268553278587 : F), runs := [⟨(5329434827571459424583679089908240137740175888634143172265200307248048486088 : F), 256, 5, 149⟩, ⟨(5329434827571459424583679089908240137740175888634143172265200307248048486088 : F), 1004, 8, 22⟩, ⟨(6965283476204833718402150415282514062509309438043771043753639743268553278587 : F), 257, 5, 149⟩, ⟨(6965283476204833718402150415282514062509309438043771043753639743268553278587 : F), 1005, 8, 22⟩], residual := [((6319763703223560135890388941897810151484445559816235388759180045661557548481 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1177 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1005 rho) = ((1 : F) * rho 1178)

def relationRow1178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1179) * ((1 : F) + (-1 : F) * rho 1175) = ((4594205195080447705511820372372338862502313343630213439851626861318216713407 : F) * rho 1174 + (1 : F) * rho 1178)

def relationLc1006 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 22⟩], residual := [((1 : F), 1177), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 173) * (relationLc1006 rho) = ((1 : F) * rho 1180)

def relationLc1007 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 22⟩], residual := [((1 : F), 1179), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 173) * (relationLc1007 rho) = ((1 : F) * rho 1181)

def relationLc1008 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 23⟩, ⟨(1 : F), 1005, 8, 23⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1181 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1008 rho) = ((1 : F) * rho 1182)

def relationLc1009 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1939637175554028343952877222903386474419120937240795293453235189596207815568 : F), 256, 5, 149⟩, ⟨(1939637175554028343952877222903386474419120937240795293453235189596207815568 : F), 1004, 8, 23⟩], residual := [((3260487844049681244059064487609986020441575339499381944237059900510287835620 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1010 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3981554842788038437983906127460908899641731895452705244011833733867503855692 : F), runs := [⟨(3981554842788038437983906127460908899641731895452705244011833733867503855692 : F), 257, 5, 149⟩, ⟨(3981554842788038437983906127460908899641731895452705244011833733867503855692 : F), 1005, 8, 23⟩], residual := [((4774531341859335617455251261646898000864070238664000687762939088765552617430 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1182 (rho : Nat -> F) : Prop :=
    (relationLc1009 rho) * (relationLc1010 rho) = ((1 : F) * rho 1183)

def relationLc1011 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3981554842788038437983906127460908899641731895452705244011833733867503855692 : F), runs := [⟨(3981554842788038437983906127460908899641731895452705244011833733867503855692 : F), 257, 5, 149⟩, ⟨(3981554842788038437983906127460908899641731895452705244011833733867503855692 : F), 1005, 8, 23⟩, ⟨(7788219156267128113307242355732635558718197507009752605071504019654253011514 : F), 256, 5, 149⟩, ⟨(7788219156267128113307242355732635558718197507009752605071504019654253011514 : F), 1004, 8, 23⟩], residual := [((8426212087505645268336755543188212054487825984129312419384141324226872297676 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1183 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1011 rho) = ((1 : F) * rho 1184)

def relationRow1184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1185) * ((1 : F) + (1 : F) * rho 1183) = ((1 : F) * rho 1184)

def relationLc1012 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4462906906640331986264918811320637631734167439701358583923399722049905383349 : F), runs := [⟨(4462906906640331986264918811320637631734167439701358583923399722049905383349 : F), 257, 5, 149⟩, ⟨(4462906906640331986264918811320637631734167439701358583923399722049905383349 : F), 1005, 8, 23⟩, ⟨(656242593161242310941582583048910972657701828144311222863729436263156227527 : F), 256, 5, 149⟩, ⟨(656242593161242310941582583048910972657701828144311222863729436263156227527 : F), 1004, 8, 23⟩], residual := [((18249661922725155912069395593334476888073351024751408551092131690536941365 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1185 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1012 rho) = ((1 : F) * rho 1186)

def relationRow1186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1187) * ((1 : F) + (-1 : F) * rho 1183) = ((3325312249626796127042323544411997926984030067308394021148104297604347628165 : F) * rho 1182 + (1 : F) * rho 1186)

def relationLc1013 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 23⟩], residual := [((1 : F), 1185), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 174) * (relationLc1013 rho) = ((1 : F) * rho 1188)

def relationLc1014 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 23⟩], residual := [((1 : F), 1187), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 174) * (relationLc1014 rho) = ((1 : F) * rho 1189)

def relationLc1015 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 24⟩, ⟨(1 : F), 1005, 8, 24⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1189 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1015 rho) = ((1 : F) * rho 1190)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
