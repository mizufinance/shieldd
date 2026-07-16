import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs113

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow6037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5528) * (relationLc1327 rho) = ((1 : F) * rho 5531)

def relationLc1328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5527) * (relationLc1328 rho) = ((1 : F) * rho 5532)

def relationRow6039 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5531) * ((1 : F) * rho 5532) = ((1 : F) * rho 5533)

def relationRow6040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5534) * ((1 : F) + (1 : F) * rho 5533) = ((1 : F) * rho 5531 + (1 : F) * rho 5532)

def relationRow6041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5535) * ((1 : F) + (-1 : F) * rho 5533) = ((1 : F) * rho 5530 + (-1 : F) * rho 5531 + (-1 : F) * rho 5532)

def relationLc1329 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 98⟩], residual := [((-1 : F), 2212), ((1 : F), 5534)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1231) * (relationLc1329 rho) = ((1 : F) * rho 5536)

def relationLc1330 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 98⟩], residual := [((1 : F), 5535)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1231) * (relationLc1330 rho) = ((1 : F) * rho 5537)

def relationRow6044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5527) * ((1 : F) * rho 5528) = ((1 : F) * rho 5538)

def relationRow6045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5527) * ((1 : F) * rho 5527) = ((1 : F) * rho 5539)

def relationRow6046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5528) * ((1 : F) * rho 5528) = ((1 : F) * rho 5540)

def relationRow6047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5541) * ((-1 : F) * rho 5539 + (1 : F) * rho 5540) = ((2 : F) * rho 5538)

def relationRow6048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5542) * ((2 : F) + (1 : F) * rho 5539 + (-1 : F) * rho 5540) = ((1 : F) * rho 5539 + (1 : F) * rho 5540)

def relationLc1331 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 99⟩, ⟨(1 : F), 4178, 14, 98⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6049 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1331 rho) = ((1 : F) * rho 5543)

def relationRow6050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5543) * ((1 : F) * rho 5541 + (1 : F) * rho 5542) = ((1 : F) * rho 5544)

def relationLc1332 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 99⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5542) * (relationLc1332 rho) = ((1 : F) * rho 5545)

def relationLc1333 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5541) * (relationLc1333 rho) = ((1 : F) * rho 5546)

def relationRow6053 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5545) * ((1 : F) * rho 5546) = ((1 : F) * rho 5547)

def relationRow6054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5548) * ((1 : F) + (1 : F) * rho 5547) = ((1 : F) * rho 5545 + (1 : F) * rho 5546)

def relationRow6055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5549) * ((1 : F) + (-1 : F) * rho 5547) = ((1 : F) * rho 5544 + (-1 : F) * rho 5545 + (-1 : F) * rho 5546)

def relationLc1334 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 99⟩], residual := [((-1 : F), 2212), ((1 : F), 5548)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1232) * (relationLc1334 rho) = ((1 : F) * rho 5550)

def relationLc1335 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 99⟩], residual := [((1 : F), 5549)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1232) * (relationLc1335 rho) = ((1 : F) * rho 5551)

def relationRow6058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5541) * ((1 : F) * rho 5542) = ((1 : F) * rho 5552)

def relationRow6059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5541) * ((1 : F) * rho 5541) = ((1 : F) * rho 5553)

def relationRow6060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5542) * ((1 : F) * rho 5542) = ((1 : F) * rho 5554)

def relationRow6061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5555) * ((-1 : F) * rho 5553 + (1 : F) * rho 5554) = ((2 : F) * rho 5552)

def relationRow6062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5556) * ((2 : F) + (1 : F) * rho 5553 + (-1 : F) * rho 5554) = ((1 : F) * rho 5553 + (1 : F) * rho 5554)

def relationLc1336 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 100⟩, ⟨(1 : F), 4178, 14, 99⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6063 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1336 rho) = ((1 : F) * rho 5557)

def relationRow6064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5557) * ((1 : F) * rho 5555 + (1 : F) * rho 5556) = ((1 : F) * rho 5558)

def relationLc1337 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 100⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5556) * (relationLc1337 rho) = ((1 : F) * rho 5559)

def relationLc1338 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5555) * (relationLc1338 rho) = ((1 : F) * rho 5560)

def relationRow6067 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5559) * ((1 : F) * rho 5560) = ((1 : F) * rho 5561)

def relationRow6068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5562) * ((1 : F) + (1 : F) * rho 5561) = ((1 : F) * rho 5559 + (1 : F) * rho 5560)

def relationRow6069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5563) * ((1 : F) + (-1 : F) * rho 5561) = ((1 : F) * rho 5558 + (-1 : F) * rho 5559 + (-1 : F) * rho 5560)

def relationLc1339 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 100⟩], residual := [((-1 : F), 2212), ((1 : F), 5562)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1233) * (relationLc1339 rho) = ((1 : F) * rho 5564)

def relationLc1340 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 100⟩], residual := [((1 : F), 5563)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1233) * (relationLc1340 rho) = ((1 : F) * rho 5565)

def relationRow6072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5555) * ((1 : F) * rho 5556) = ((1 : F) * rho 5566)

def relationRow6073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5555) * ((1 : F) * rho 5555) = ((1 : F) * rho 5567)

def relationRow6074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5556) * ((1 : F) * rho 5556) = ((1 : F) * rho 5568)

def relationRow6075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5569) * ((-1 : F) * rho 5567 + (1 : F) * rho 5568) = ((2 : F) * rho 5566)

def relationRow6076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5570) * ((2 : F) + (1 : F) * rho 5567 + (-1 : F) * rho 5568) = ((1 : F) * rho 5567 + (1 : F) * rho 5568)

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

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
