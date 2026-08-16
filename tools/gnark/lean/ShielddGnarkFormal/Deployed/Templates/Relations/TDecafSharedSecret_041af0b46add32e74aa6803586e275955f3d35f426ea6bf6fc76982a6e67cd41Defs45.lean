import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41Defs44

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41

variable {F : Type} [CommRing F]

def relationRow1184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1185) * ((1 : F) + (1 : F) * rho 1183) = ((1 : F) * rho 1184)

def relationLc964 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4462906906640331986264918811320637631734167439701358583923399722049905383349 : F), runs := [⟨(4462906906640331986264918811320637631734167439701358583923399722049905383349 : F), 257, 5, 149⟩, ⟨(4462906906640331986264918811320637631734167439701358583923399722049905383349 : F), 1005, 8, 23⟩, ⟨(656242593161242310941582583048910972657701828144311222863729436263156227527 : F), 256, 5, 149⟩, ⟨(656242593161242310941582583048910972657701828144311222863729436263156227527 : F), 1004, 8, 23⟩], residual := [((18249661922725155912069395593334476888073351024751408551092131690536941365 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1185 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc964 rho) = ((1 : F) * rho 1186)

def relationRow1186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1187) * ((1 : F) + (-1 : F) * rho 1183) = ((3325312249626796127042323544411997926984030067308394021148104297604347628165 : F) * rho 1182 + (1 : F) * rho 1186)

def relationLc965 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 23⟩], residual := [((1 : F), 1185), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 174) * (relationLc965 rho) = ((1 : F) * rho 1188)

def relationLc966 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 23⟩], residual := [((1 : F), 1187), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 174) * (relationLc966 rho) = ((1 : F) * rho 1189)

def relationLc967 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 24⟩, ⟨(1 : F), 1005, 8, 24⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1189 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc967 rho) = ((1 : F) * rho 1190)

def relationLc968 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(128578420191189475828004736954302402807092265377785820974002246751249439768 : F), 256, 5, 149⟩, ⟨(128578420191189475828004736954302402807092265377785820974002246751249439768 : F), 1004, 8, 24⟩], residual := [((6133142630962635046066632879248925428545680843984799411895820682923505300946 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc969 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4088186093458389865801225101755579684555960680192522280960219533993562873604 : F), runs := [⟨(4088186093458389865801225101755579684555960680192522280960219533993562873604 : F), 257, 5, 149⟩, ⟨(4088186093458389865801225101755579684555960680192522280960219533993562873604 : F), 1005, 8, 24⟩], residual := [((1535852898821212495215578524505569457662535397325008307380353931748700029929 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1190 (rho : Nat -> F) : Prop :=
    (relationLc968 rho) * (relationLc969 rho) = ((1 : F) * rho 1191)

def relationLc970 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4088186093458389865801225101755579684555960680192522280960219533993562873604 : F), runs := [⟨(4088186093458389865801225101755579684555960680192522280960219533993562873604 : F), 257, 5, 149⟩, ⟨(4088186093458389865801225101755579684555960680192522280960219533993562873604 : F), 1005, 8, 24⟩, ⟨(4223671063160032737674876692232992754489172786389661777501195549201574514939 : F), 256, 5, 149⟩, ⟨(4223671063160032737674876692232992754489172786389661777501195549201574514939 : F), 1004, 8, 24⟩], residual := [((4752424945982281221773743143002102869284789590066205990775724436544444528505 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1191 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc970 rho) = ((1 : F) * rho 1192)

def relationRow1192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1193) * ((1 : F) + (1 : F) * rho 1191) = ((1 : F) * rho 1192)

def relationLc971 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4356275655969980558447599837025966846819938654961541546975013921923846365437 : F), runs := [⟨(4220790686268337686573948246548553776886726548764402050434037906715834724102 : F), 256, 5, 149⟩, ⟨(4220790686268337686573948246548553776886726548764402050434037906715834724102 : F), 1004, 8, 24⟩, ⟨(4356275655969980558447599837025966846819938654961541546975013921923846365437 : F), 257, 5, 149⟩, ⟨(4356275655969980558447599837025966846819938654961541546975013921923846365437 : F), 1005, 8, 24⟩], residual := [((3692036803446089202475081795779443662091109745087857837159509019372964710536 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1193 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc971 rho) = ((1 : F) * rho 1194)

def relationRow1194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1195) * ((1 : F) + (-1 : F) * rho 1191) = ((8311857156618422603476101793988572439045133466582184058461415083195137388543 : F) * rho 1190 + (1 : F) * rho 1194)

def relationLc972 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 24⟩], residual := [((1 : F), 1193), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 175) * (relationLc972 rho) = ((1 : F) * rho 1196)

def relationLc973 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 24⟩], residual := [((1 : F), 1195), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 175) * (relationLc973 rho) = ((1 : F) * rho 1197)

def relationLc974 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 25⟩, ⟨(1 : F), 1005, 8, 25⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1197 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc974 rho) = ((1 : F) * rho 1198)

def relationLc975 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7956576312051478103586902813934973720197758426747597387557562980228800869579 : F), 256, 5, 149⟩, ⟨(7956576312051478103586902813934973720197758426747597387557562980228800869579 : F), 1004, 8, 25⟩], residual := [((3474884297360945043441450435985457591480122824021508868959104190618301029959 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc976 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2769161570314866453625341696387217252009654392896117896007257696138380589488 : F), runs := [⟨(2769161570314866453625341696387217252009654392896117896007257696138380589488 : F), 257, 5, 149⟩, ⟨(2769161570314866453625341696387217252009654392896117896007257696138380589488 : F), 1005, 8, 25⟩], residual := [((6482744307870712748064178964204059792030601444190026041901651062941018432061 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1198 (rho : Nat -> F) : Prop :=
    (relationLc975 rho) * (relationLc976 rho) = ((1 : F) * rho 1199)

def relationLc977 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2769161570314866453625341696387217252009654392896117896007257696138380589488 : F), runs := [⟨(2769161570314866453625341696387217252009654392896117896007257696138380589488 : F), 257, 5, 149⟩, ⟨(2769161570314866453625341696387217252009654392896117896007257696138380589488 : F), 1005, 8, 25⟩, ⟨(4500197130467494038636195375476148077690837401088922971378797813158338386788 : F), 256, 5, 149⟩, ⟨(4500197130467494038636195375476148077690837401088922971378797813158338386788 : F), 1004, 8, 25⟩], residual := [((1720782064663634873891204371271994306471828738371256345134792835634614247256 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1199 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc977 rho) = ((1 : F) * rho 1200)

def relationRow1200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1201) * ((1 : F) + (1 : F) * rho 1199) = ((1 : F) * rho 1200)

def relationLc978 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5675300179113503970623483242394329279366244942257945931927975759779028649553 : F), runs := [⟨(3944264618960876385612629563305398453685061934065140856556435642759070852253 : F), 256, 5, 149⟩, ⟨(3944264618960876385612629563305398453685061934065140856556435642759070852253 : F), 1004, 8, 25⟩, ⟨(5675300179113503970623483242394329279366244942257945931927975759779028649553 : F), 257, 5, 149⟩, ⟨(5675300179113503970623483242394329279366244942257945931927975759779028649553 : F), 1005, 8, 25⟩], residual := [((6723679684764735550357620567509552224904070596782807482800440620282794991785 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1201 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc978 rho) = ((1 : F) * rho 1202)

def relationRow1202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1203) * ((1 : F) + (-1 : F) * rho 1199) = ((7269358700782360492261537071863365329700491793985040867386055509296718976276 : F) * rho 1198 + (1 : F) * rho 1202)

def relationLc979 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 25⟩], residual := [((1 : F), 1201), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 176) * (relationLc979 rho) = ((1 : F) * rho 1204)

def relationLc980 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 25⟩], residual := [((1 : F), 1203), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 176) * (relationLc980 rho) = ((1 : F) * rho 1205)

def relationLc981 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 26⟩, ⟨(1 : F), 1005, 8, 26⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1205 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc981 rho) = ((1 : F) * rho 1206)

def relationLc982 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6702204841445727638528880424146252742509699068478151320104714009823083275415 : F), 256, 5, 149⟩, ⟨(6702204841445727638528880424146252742509699068478151320104714009823083275415 : F), 1004, 8, 26⟩], residual := [((4999806508068045698348875557979956868073647327969091591668035692677795707070 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc983 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1700106354495850796018023562959797428426666584760171565664703482726150880416 : F), runs := [⟨(1700106354495850796018023562959797428426666584760171565664703482726150880416 : F), 257, 5, 149⟩, ⟨(1700106354495850796018023562959797428426666584760171565664703482726150880416 : F), 1005, 8, 26⟩], residual := [((4804741959618461566501157126025254191411098413854841475821479664228711646636 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1206 (rho : Nat -> F) : Prop :=
    (relationLc982 rho) * (relationLc983 rho) = ((1 : F) * rho 1207)

def relationLc984 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1700106354495850796018023562959797428426666584760171565664703482726150880416 : F), runs := [⟨(1700106354495850796018023562959797428426666584760171565664703482726150880416 : F), 257, 5, 149⟩, ⟨(1700106354495850796018023562959797428426666584760171565664703482726150880416 : F), 1005, 8, 26⟩, ⟨(5480915999245631168211263078595159700178507909953804453516439022710342665275 : F), 256, 5, 149⟩, ⟨(5480915999245631168211263078595159700178507909953804453516439022710342665275 : F), 1004, 8, 26⟩], residual := [((4619114971633147838356065303668291708546447103650487558284242787084127527699 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1207 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc984 rho) = ((1 : F) * rho 1208)

def relationRow1208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1209) * ((1 : F) + (1 : F) * rho 1207) = ((1 : F) * rho 1208)

def relationLc985 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6744355394932519628230801375821749102949232750393892262270529973191258358625 : F), runs := [⟨(2963545750182739256037561860186386831197391425200259374418794433207066573766 : F), 256, 5, 149⟩, ⟨(2963545750182739256037561860186386831197391425200259374418794433207066573766 : F), 1004, 8, 26⟩, ⟨(6744355394932519628230801375821749102949232750393892262270529973191258358625 : F), 257, 5, 149⟩, ⟨(6744355394932519628230801375821749102949232750393892262270529973191258358625 : F), 1005, 8, 26⟩], residual := [((3825346777795222585892759635113254822829452231503576269650990668833281711342 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1209 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc985 rho) = ((1 : F) * rho 1210)

def relationRow1210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1211) * ((1 : F) + (-1 : F) * rho 1207) = ((7181022353741481964229286641554957128605174494713976019181142505436493545691 : F) * rho 1206 + (1 : F) * rho 1210)

def relationLc986 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 26⟩], residual := [((1 : F), 1209), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 177) * (relationLc986 rho) = ((1 : F) * rho 1212)

def relationLc987 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 26⟩], residual := [((1 : F), 1211), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 177) * (relationLc987 rho) = ((1 : F) * rho 1213)

def relationLc988 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 27⟩, ⟨(1 : F), 1005, 8, 27⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41
