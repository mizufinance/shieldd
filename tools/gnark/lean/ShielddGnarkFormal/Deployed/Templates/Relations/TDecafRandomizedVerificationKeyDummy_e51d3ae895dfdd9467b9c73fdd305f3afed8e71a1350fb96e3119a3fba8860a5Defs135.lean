import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs134

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc3008 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1984710607226089818020725577334409086216133409436227188525394559293030245463 : F), runs := [⟨(1984710607226089818020725577334409086216133409436227188525394559293030245463 : F), 2062, 5, 149⟩, ⟨(1984710607226089818020725577334409086216133409436227188525394559293030245463 : F), 2810, 8, 100⟩, ⟨(823150161346244009291394285282076662168825748954233675885035096169729996022 : F), 2061, 5, 149⟩, ⟨(823150161346244009291394285282076662168825748954233675885035096169729996022 : F), 2809, 8, 100⟩], residual := [((7713555690673883416038639962320530066882449223208822474333234716515992539878 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3604 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3008 rho) = ((1 : F) * rho 3605)

def relationRow3605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3606) * ((1 : F) + (1 : F) * rho 3604) = ((1 : F) * rho 3605)

def relationLc3009 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6459751142202280606228099361447137445159765925717836639409838896624378993578 : F), runs := [⟨(6459751142202280606228099361447137445159765925717836639409838896624378993578 : F), 2062, 5, 149⟩, ⟨(6459751142202280606228099361447137445159765925717836639409838896624378993578 : F), 2810, 8, 100⟩, ⟨(7621311588082126414957430653499469869207073586199830152050198359747679243019 : F), 2061, 5, 149⟩, ⟨(7621311588082126414957430653499469869207073586199830152050198359747679243019 : F), 2809, 8, 100⟩], residual := [((730906058754487008210184976461016464493450111945241353601998739401416699163 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3606 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3009 rho) = ((1 : F) * rho 3607)

def relationRow3607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3608) * ((1 : F) + (-1 : F) * rho 3604) = ((2807860768572333827312119862616485748384959158390460864410429655462760241485 : F) * rho 3603 + (1 : F) * rho 3607)

def relationLc3010 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 100⟩], residual := [((1 : F), 3606), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2056) * (relationLc3010 rho) = ((1 : F) * rho 3609)

def relationLc3011 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 100⟩], residual := [((1 : F), 3608), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2056) * (relationLc3011 rho) = ((1 : F) * rho 3610)

def relationLc3012 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 101⟩, ⟨(1 : F), 1005, 8, 101⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3610 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3012 rho) = ((1 : F) * rho 3611)

def relationLc3013 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 101⟩, ⟨(1 : F), 2810, 8, 101⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3611 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3013 rho) = ((1 : F) * rho 3612)

def relationRow3612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3611) * ((1 : F) * rho 3612) = ((1 : F) * rho 3613)

def relationLc3014 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 1004, 8, 101⟩], residual := [((4959445789346820725352484487855828915252512307947624787834978378872129235627 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc3015 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2810, 8, 101⟩], residual := [((6060471950081851567114691557659790004756535011754163002297540472747064943287 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3613 (rho : Nat -> F) : Prop :=
    (relationLc3014 rho) * (relationLc3015 rho) = ((1 : F) * rho 3614)

def relationLc3016 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2809, 8, 101⟩], residual := [((4959445789346820725352484487855828915252512307947624787834978378872129235627 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc3017 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1005, 8, 101⟩], residual := [((6060471950081851567114691557659790004756535011754163002297540472747064943287 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3614 (rho : Nat -> F) : Prop :=
    (relationLc3016 rho) * (relationLc3017 rho) = ((1 : F) * rho 3615)

def relationRow3615 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3614) * ((1 : F) * rho 3615) = ((1 : F) * rho 3616)

def relationRow3616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3617) * ((1 : F) + (1 : F) * rho 3616) = ((1 : F) * rho 3614 + (1 : F) * rho 3615)

def relationRow3617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3618) * ((1 : F) + (-1 : F) * rho 3616) = ((1 : F) * rho 3613 + (-1 : F) * rho 3614 + (-1 : F) * rho 3615)

def relationPart0 (rho : Nat -> F) : Prop :=
    relationRow0 rho ∧
    relationRow1 rho ∧
    relationRow2 rho ∧
    relationRow3 rho ∧
    relationRow4 rho ∧
    relationRow5 rho ∧
    relationRow6 rho ∧
    relationRow7 rho ∧
    relationRow8 rho ∧
    relationRow9 rho ∧
    relationRow10 rho ∧
    relationRow11 rho ∧
    relationRow12 rho ∧
    relationRow13 rho ∧
    relationRow14 rho ∧
    relationRow15 rho ∧
    relationRow16 rho ∧
    relationRow17 rho ∧
    relationRow18 rho ∧
    relationRow19 rho ∧
    relationRow20 rho ∧
    relationRow21 rho ∧
    relationRow22 rho ∧
    relationRow23 rho ∧
    relationRow24 rho ∧
    relationRow25 rho ∧
    relationRow26 rho ∧
    relationRow27 rho ∧
    relationRow28 rho ∧
    relationRow29 rho ∧
    relationRow30 rho ∧
    relationRow31 rho ∧
    relationRow32 rho ∧
    relationRow33 rho ∧
    relationRow34 rho ∧
    relationRow35 rho ∧
    relationRow36 rho ∧
    relationRow37 rho ∧
    relationRow38 rho ∧
    relationRow39 rho ∧
    relationRow40 rho ∧
    relationRow41 rho ∧
    relationRow42 rho ∧
    relationRow43 rho ∧
    relationRow44 rho ∧
    relationRow45 rho ∧
    relationRow46 rho ∧
    relationRow47 rho ∧
    relationRow48 rho ∧
    relationRow49 rho ∧
    relationRow50 rho ∧
    relationRow51 rho ∧
    relationRow52 rho ∧
    relationRow53 rho ∧
    relationRow54 rho ∧
    relationRow55 rho ∧
    relationRow56 rho ∧
    relationRow57 rho ∧
    relationRow58 rho ∧
    relationRow59 rho ∧
    relationRow60 rho ∧
    relationRow61 rho ∧
    relationRow62 rho ∧
    relationRow63 rho ∧
    relationRow64 rho ∧
    relationRow65 rho ∧
    relationRow66 rho ∧
    relationRow67 rho ∧
    relationRow68 rho ∧
    relationRow69 rho ∧
    relationRow70 rho ∧
    relationRow71 rho ∧
    relationRow72 rho ∧
    relationRow73 rho ∧
    relationRow74 rho ∧
    relationRow75 rho ∧
    relationRow76 rho ∧
    relationRow77 rho ∧
    relationRow78 rho ∧
    relationRow79 rho

def relationPart1 (rho : Nat -> F) : Prop :=
    relationRow80 rho ∧
    relationRow81 rho ∧
    relationRow82 rho ∧
    relationRow83 rho ∧
    relationRow84 rho ∧
    relationRow85 rho ∧
    relationRow86 rho ∧
    relationRow87 rho ∧
    relationRow88 rho ∧
    relationRow89 rho ∧
    relationRow90 rho ∧
    relationRow91 rho ∧
    relationRow92 rho ∧
    relationRow93 rho ∧
    relationRow94 rho ∧
    relationRow95 rho ∧
    relationRow96 rho ∧
    relationRow97 rho ∧
    relationRow98 rho ∧
    relationRow99 rho ∧
    relationRow100 rho ∧
    relationRow101 rho ∧
    relationRow102 rho ∧
    relationRow103 rho ∧
    relationRow104 rho ∧
    relationRow105 rho ∧
    relationRow106 rho ∧
    relationRow107 rho ∧
    relationRow108 rho ∧
    relationRow109 rho ∧
    relationRow110 rho ∧
    relationRow111 rho ∧
    relationRow112 rho ∧
    relationRow113 rho ∧
    relationRow114 rho ∧
    relationRow115 rho ∧
    relationRow116 rho ∧
    relationRow117 rho ∧
    relationRow118 rho ∧
    relationRow119 rho ∧
    relationRow120 rho ∧
    relationRow121 rho ∧
    relationRow122 rho ∧
    relationRow123 rho ∧
    relationRow124 rho ∧
    relationRow125 rho ∧
    relationRow126 rho ∧
    relationRow127 rho ∧
    relationRow128 rho ∧
    relationRow129 rho ∧
    relationRow130 rho ∧
    relationRow131 rho ∧
    relationRow132 rho ∧
    relationRow133 rho ∧
    relationRow134 rho ∧
    relationRow135 rho ∧
    relationRow136 rho ∧
    relationRow137 rho ∧
    relationRow138 rho ∧
    relationRow139 rho ∧
    relationRow140 rho ∧
    relationRow141 rho ∧
    relationRow142 rho ∧
    relationRow143 rho ∧
    relationRow144 rho ∧
    relationRow145 rho ∧
    relationRow146 rho ∧
    relationRow147 rho ∧
    relationRow148 rho ∧
    relationRow149 rho ∧
    relationRow150 rho ∧
    relationRow151 rho ∧
    relationRow152 rho ∧
    relationRow153 rho ∧
    relationRow154 rho ∧
    relationRow155 rho ∧
    relationRow156 rho ∧
    relationRow157 rho ∧
    relationRow158 rho ∧
    relationRow159 rho

def relationPart2 (rho : Nat -> F) : Prop :=
    relationRow160 rho ∧
    relationRow161 rho ∧
    relationRow162 rho ∧
    relationRow163 rho ∧
    relationRow164 rho ∧
    relationRow165 rho ∧
    relationRow166 rho ∧
    relationRow167 rho ∧
    relationRow168 rho ∧
    relationRow169 rho ∧
    relationRow170 rho ∧
    relationRow171 rho ∧
    relationRow172 rho ∧
    relationRow173 rho ∧
    relationRow174 rho ∧
    relationRow175 rho ∧
    relationRow176 rho ∧
    relationRow177 rho ∧
    relationRow178 rho ∧
    relationRow179 rho ∧
    relationRow180 rho ∧
    relationRow181 rho ∧
    relationRow182 rho ∧
    relationRow183 rho ∧
    relationRow184 rho ∧
    relationRow185 rho ∧
    relationRow186 rho ∧
    relationRow187 rho ∧
    relationRow188 rho ∧
    relationRow189 rho ∧
    relationRow190 rho ∧
    relationRow191 rho ∧
    relationRow192 rho ∧
    relationRow193 rho ∧
    relationRow194 rho ∧
    relationRow195 rho ∧
    relationRow196 rho ∧
    relationRow197 rho ∧
    relationRow198 rho ∧
    relationRow199 rho ∧
    relationRow200 rho ∧
    relationRow201 rho ∧
    relationRow202 rho ∧
    relationRow203 rho ∧
    relationRow204 rho ∧
    relationRow205 rho ∧
    relationRow206 rho ∧
    relationRow207 rho ∧
    relationRow208 rho ∧
    relationRow209 rho ∧
    relationRow210 rho ∧
    relationRow211 rho ∧
    relationRow212 rho ∧
    relationRow213 rho ∧
    relationRow214 rho ∧
    relationRow215 rho ∧
    relationRow216 rho ∧
    relationRow217 rho ∧
    relationRow218 rho ∧
    relationRow219 rho ∧
    relationRow220 rho ∧
    relationRow221 rho ∧
    relationRow222 rho ∧
    relationRow223 rho ∧
    relationRow224 rho ∧
    relationRow225 rho ∧
    relationRow226 rho ∧
    relationRow227 rho ∧
    relationRow228 rho ∧
    relationRow229 rho ∧
    relationRow230 rho ∧
    relationRow231 rho ∧
    relationRow232 rho ∧
    relationRow233 rho ∧
    relationRow234 rho ∧
    relationRow235 rho ∧
    relationRow236 rho ∧
    relationRow237 rho ∧
    relationRow238 rho ∧
    relationRow239 rho

def relationPart3 (rho : Nat -> F) : Prop :=
    relationRow240 rho ∧
    relationRow241 rho ∧
    relationRow242 rho ∧
    relationRow243 rho ∧
    relationRow244 rho ∧
    relationRow245 rho ∧
    relationRow246 rho ∧
    relationRow247 rho ∧
    relationRow248 rho ∧
    relationRow249 rho ∧
    relationRow250 rho ∧
    relationRow251 rho ∧
    relationRow252 rho ∧
    relationRow253 rho ∧
    relationRow254 rho ∧
    relationRow255 rho ∧
    relationRow256 rho ∧
    relationRow257 rho ∧
    relationRow258 rho ∧
    relationRow259 rho ∧
    relationRow260 rho ∧
    relationRow261 rho ∧
    relationRow262 rho ∧
    relationRow263 rho ∧
    relationRow264 rho ∧
    relationRow265 rho ∧
    relationRow266 rho ∧
    relationRow267 rho ∧
    relationRow268 rho ∧
    relationRow269 rho ∧
    relationRow270 rho ∧
    relationRow271 rho ∧
    relationRow272 rho ∧
    relationRow273 rho ∧
    relationRow274 rho ∧
    relationRow275 rho ∧
    relationRow276 rho ∧
    relationRow277 rho ∧
    relationRow278 rho ∧
    relationRow279 rho ∧
    relationRow280 rho ∧
    relationRow281 rho ∧
    relationRow282 rho ∧
    relationRow283 rho ∧
    relationRow284 rho ∧
    relationRow285 rho ∧
    relationRow286 rho ∧
    relationRow287 rho ∧
    relationRow288 rho ∧
    relationRow289 rho ∧
    relationRow290 rho ∧
    relationRow291 rho ∧
    relationRow292 rho ∧
    relationRow293 rho ∧
    relationRow294 rho ∧
    relationRow295 rho ∧
    relationRow296 rho ∧
    relationRow297 rho ∧
    relationRow298 rho ∧
    relationRow299 rho ∧
    relationRow300 rho ∧
    relationRow301 rho ∧
    relationRow302 rho ∧
    relationRow303 rho ∧
    relationRow304 rho ∧
    relationRow305 rho ∧
    relationRow306 rho ∧
    relationRow307 rho ∧
    relationRow308 rho ∧
    relationRow309 rho ∧
    relationRow310 rho ∧
    relationRow311 rho ∧
    relationRow312 rho ∧
    relationRow313 rho ∧
    relationRow314 rho ∧
    relationRow315 rho ∧
    relationRow316 rho ∧
    relationRow317 rho ∧
    relationRow318 rho ∧
    relationRow319 rho

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
