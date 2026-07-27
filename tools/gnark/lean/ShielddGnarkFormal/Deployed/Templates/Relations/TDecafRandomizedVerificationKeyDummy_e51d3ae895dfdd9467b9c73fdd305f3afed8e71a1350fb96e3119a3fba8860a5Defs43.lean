import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs42

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow1127 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc914 rho) = ((1 : F) * rho 1128)

def relationRow1128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1129) * ((1 : F) + (1 : F) * rho 1127) = ((1 : F) * rho 1128)

def relationLc915 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8309480434298396681905404921347015310220105244677611759704790131563473888818 : F), runs := [⟨(4925797141251712470494610242260574947680874083070641149270303100483024524517 : F), 256, 5, 149⟩, ⟨(4925797141251712470494610242260574947680874083070641149270303100483024524517 : F), 1004, 8, 16⟩, ⟨(8309480434298396681905404921347015310220105244677611759704790131563473888818 : F), 257, 5, 149⟩, ⟨(8309480434298396681905404921347015310220105244677611759704790131563473888818 : F), 1005, 8, 16⟩], residual := [((3102331639116828042059425679978045403055296139449073713583319728078502422700 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1129 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc915 rho) = ((1 : F) * rho 1130)

def relationRow1130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1131) * ((1 : F) + (-1 : F) * rho 1127) = ((3653645923306631696097634713955502804850819342559874746895373679788320064747 : F) * rho 1126 + (1 : F) * rho 1130)

def relationLc916 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 16⟩], residual := [((1 : F), 1129), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 167) * (relationLc916 rho) = ((1 : F) * rho 1132)

def relationLc917 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 16⟩], residual := [((1 : F), 1131), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 167) * (relationLc917 rho) = ((1 : F) * rho 1133)

def relationLc918 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 17⟩, ⟨(1 : F), 1005, 8, 17⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1133 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc918 rho) = ((1 : F) * rho 1134)

def relationLc919 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4918045902546149631114732373376623948482397847477317210332275144138366725318 : F), 256, 5, 149⟩, ⟨(4918045902546149631114732373376623948482397847477317210332275144138366725318 : F), 1004, 8, 17⟩], residual := [((493480449235403514561888987779906694161401996783583403140343374931943690515 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc920 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3641631821136829194203786441303006704722604542758872218004792580091789365315 : F), runs := [⟨(3641631821136829194203786441303006704722604542758872218004792580091789365315 : F), 257, 5, 149⟩, ⟨(3641631821136829194203786441303006704722604542758872218004792580091789365315 : F), 1005, 8, 17⟩], residual := [((4743634741443840971423366029108310819962992559215462164130624617425074670819 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1134 (rho : Nat -> F) : Prop :=
    (relationLc919 rho) * (relationLc920 rho) = ((1 : F) * rho 1135)

def relationLc921 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3641631821136829194203786441303006704722604542758872218004792580091789365315 : F), runs := [⟨(3641631821136829194203786441303006704722604542758872218004792580091789365315 : F), 257, 5, 149⟩, ⟨(3641631821136829194203786441303006704722604542758872218004792580091789365315 : F), 1005, 8, 17⟩, ⟨(384577724453569314052699023166649618916577493135909983991214584112818084235 : F), 256, 5, 149⟩, ⟨(384577724453569314052699023166649618916577493135909983991214584112818084235 : F), 1004, 8, 17⟩], residual := [((7460784791392073826731019034564597855776145672676744396555711430575241411646 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1135 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc921 rho) = ((1 : F) * rho 1136)

def relationRow1136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1137) * ((1 : F) + (1 : F) * rho 1135) = ((1 : F) * rho 1136)

def relationLc922 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4802829928291541230045038497478539826653294792395191609930440875825619873726 : F), runs := [⟨(4802829928291541230045038497478539826653294792395191609930440875825619873726 : F), 257, 5, 149⟩, ⟨(4802829928291541230045038497478539826653294792395191609930440875825619873726 : F), 1005, 8, 17⟩, ⟨(8059884024974801110196125915614896912459321842018153843944018871804591154806 : F), 256, 5, 149⟩, ⟨(8059884024974801110196125915614896912459321842018153843944018871804591154806 : F), 1004, 8, 17⟩], residual := [((983676958036296597517805904216948675599753662477319431379522025342167827395 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1137 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc922 rho) = ((1 : F) * rho 1138)

def relationRow1138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1139) * ((1 : F) + (-1 : F) * rho 1135) = ((4026209545590398508256485464469656323639182035894782201996007164204607449550 : F) * rho 1134 + (1 : F) * rho 1138)

def relationLc923 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 17⟩], residual := [((1 : F), 1137), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 168) * (relationLc923 rho) = ((1 : F) * rho 1140)

def relationLc924 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 17⟩], residual := [((1 : F), 1139), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 168) * (relationLc924 rho) = ((1 : F) * rho 1141)

def relationLc925 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 18⟩, ⟨(1 : F), 1005, 8, 18⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1141 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc925 rho) = ((1 : F) * rho 1142)

def relationLc926 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3577537434118340960807172061232454296647112651088978807367204990823277584171 : F), 256, 5, 149⟩, ⟨(3577537434118340960807172061232454296647112651088978807367204990823277584171 : F), 1004, 8, 18⟩], residual := [((1370083345942680029195480491739159083921214067939609907254344268213071678047 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc927 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8007424209605860490869656975015322035683011603273810880079350669994908888146 : F), runs := [⟨(8007424209605860490869656975015322035683011603273810880079350669994908888146 : F), 257, 5, 149⟩, ⟨(8007424209605860490869656975015322035683011603273810880079350669994908888146 : F), 1005, 8, 18⟩], residual := [((4701979476017914341331125189053818542549474616706661558177561626931212170113 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1142 (rho : Nat -> F) : Prop :=
    (relationLc926 rho) * (relationLc927 rho) = ((1 : F) * rho 1143)

def relationLc928 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8007424209605860490869656975015322035683011603273810880079350669994908888146 : F), runs := [⟨(3299583714584440728756842303814451294710429767670600561327687084731336040931 : F), 256, 5, 149⟩, ⟨(3299583714584440728756842303814451294710429767670600561327687084731336040931 : F), 1004, 8, 18⟩, ⟨(8007424209605860490869656975015322035683011603273810880079350669994908888146 : F), 257, 5, 149⟩, ⟨(8007424209605860490869656975015322035683011603273810880079350669994908888146 : F), 1005, 8, 18⟩], residual := [((6812849619733360336146437439723069383420949364177451958706643256684888782875 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1143 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc928 rho) = ((1 : F) * rho 1144)

def relationRow1144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1145) * ((1 : F) + (1 : F) * rho 1143) = ((1 : F) * rho 1144)

def relationLc929 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (437037539822509933379167963766224495692887731880252947855882785922500350895 : F), runs := [⟨(437037539822509933379167963766224495692887731880252947855882785922500350895 : F), 257, 5, 149⟩, ⟨(437037539822509933379167963766224495692887731880252947855882785922500350895 : F), 1005, 8, 18⟩, ⟨(5144878034843929695491982634967095236665469567483463266607546371186073198110 : F), 256, 5, 149⟩, ⟨(5144878034843929695491982634967095236665469567483463266607546371186073198110 : F), 1004, 8, 18⟩], residual := [((1631612129695010088102387499058477147954949970976611869228590199232520456166 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1145 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc929 rho) = ((1 : F) * rho 1146)

def relationRow1146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1147) * ((1 : F) + (-1 : F) * rho 1143) = ((2862546174761930795377674340048226799017542035790347613471804298808835690036 : F) * rho 1142 + (1 : F) * rho 1146)

def relationLc930 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 18⟩], residual := [((1 : F), 1145), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 169) * (relationLc930 rho) = ((1 : F) * rho 1148)

def relationLc931 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 18⟩], residual := [((1 : F), 1147), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 169) * (relationLc931 rho) = ((1 : F) * rho 1149)

def relationLc932 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 19⟩, ⟨(1 : F), 1005, 8, 19⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1149 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc932 rho) = ((1 : F) * rho 1150)

def relationLc933 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3079428186128887043815766017692616008552626917905870514239003519962054930266 : F), 256, 5, 149⟩, ⟨(3079428186128887043815766017692616008552626917905870514239003519962054930266 : F), 1004, 8, 19⟩], residual := [((5383720468184807092291963347632845782642052995723698537415820359568380097010 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc934 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4343832408249489744122585062222725371648899081840424406896304284394664692835 : F), runs := [⟨(4343832408249489744122585062222725371648899081840424406896304284394664692835 : F), 257, 5, 149⟩, ⟨(4343832408249489744122585062222725371648899081840424406896304284394664692835 : F), 1005, 8, 19⟩], residual := [((5421737722239204502091077952412294614057517802052564626391969235122743688019 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1150 (rho : Nat -> F) : Prop :=
    (relationLc933 rho) * (relationLc934 rho) = ((1 : F) * rho 1151)

def relationLc935 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4343832408249489744122585062222725371648899081840424406896304284394664692835 : F), runs := [⟨(3008712436468406310339474147681773149211857104119059433754568090727273881542 : F), 256, 5, 149⟩, ⟨(3008712436468406310339474147681773149211857104119059433754568090727273881542 : F), 1004, 8, 19⟩, ⟨(4343832408249489744122585062222725371648899081840424406896304284394664692835 : F), 257, 5, 149⟩, ⟨(4343832408249489744122585062222725371648899081840424406896304284394664692835 : F), 1005, 8, 19⟩], residual := [((7472440861199542247230661084975851864398853871454634300146998014847016893022 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1151 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc935 rho) = ((1 : F) * rho 1152)

def relationRow1152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1153) * ((1 : F) + (1 : F) * rho 1151) = ((1 : F) * rho 1152)

def relationLc936 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4100629341178880680126239876558821159727000253313639421038929171522744546206 : F), runs := [⟨(4100629341178880680126239876558821159727000253313639421038929171522744546206 : F), 257, 5, 149⟩, ⟨(4100629341178880680126239876558821159727000253313639421038929171522744546206 : F), 1005, 8, 19⟩, ⟨(5435749312959964113909350791099773382164042231035004394180665365190135357499 : F), 256, 5, 149⟩, ⟨(5435749312959964113909350791099773382164042231035004394180665365190135357499 : F), 1004, 8, 19⟩], residual := [((972020888228828177018163853805694666977045463699429527788235441070392346019 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1153 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc936 rho) = ((1 : F) * rho 1154)

def relationRow1154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1155) * ((1 : F) + (-1 : F) * rho 1151) = ((7352544844717896054462059209904498520860756185959483840650872375121938574377 : F) * rho 1150 + (1 : F) * rho 1154)

def relationLc937 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 19⟩], residual := [((1 : F), 1153), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 170) * (relationLc937 rho) = ((1 : F) * rho 1156)

def relationLc938 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 19⟩], residual := [((1 : F), 1155), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 170) * (relationLc938 rho) = ((1 : F) * rho 1157)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
