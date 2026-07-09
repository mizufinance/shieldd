import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48Poseidon
import ShielddGnarkFormal.NetBalanceCommitmentBridge
import ShielddGnarkFormal.CompressDeployedGadgets

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.DeployedGadgets

def seg48YDen (rho : Nat -> Seg48.F) : Seg48.F :=
  36517849 * rho 33185 - 1

theorem seg48_encode_pre (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (k : Seg48.F -> Seg48.F -> Prop) (hk : k (rho 33182) (seg48YDen rho)) :
    Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.encodeSeg0
      (seg48PoseidonOut rho) (rho 33167) (rho 33168) k := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, p2, p3, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart2 at p2

  rcases p2 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r230, r231, r232, r233, r234, r235, r236, r237, r238, r239⟩

  unfold Seg48.relationPart3 at p3

  rcases p3 with ⟨r240, r241, r242, r243, r244, r245, r246, r247, r248, r249, r250, r251, r252, r253, r254, r255, r256, r257, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationRow230 at r230

  unfold Seg48.relationRow231 at r231

  unfold Seg48.relationRow232 at r232

  unfold Seg48.relationRow233 at r233

  unfold Seg48.relationRow234 at r234

  unfold Seg48.relationRow235 at r235

  unfold Seg48.relationRow236 at r236

  unfold Seg48.relationRow237 at r237

  unfold Seg48.relationRow238 at r238

  unfold Seg48.relationRow239 at r239

  unfold Seg48.relationRow240 at r240

  unfold Seg48.relationRow241 at r241

  unfold Seg48.relationRow242 at r242

  unfold Seg48.relationRow243 at r243

  unfold Seg48.relationRow244 at r244

  unfold Seg48.relationRow245 at r245

  unfold Seg48.relationRow246 at r246

  unfold Seg48.relationRow247 at r247

  unfold Seg48.relationRow248 at r248

  unfold Seg48.relationRow249 at r249

  unfold Seg48.relationRow250 at r250

  unfold Seg48.relationRow251 at r251

  unfold Seg48.relationRow252 at r252

  unfold Seg48.relationRow253 at r253

  unfold Seg48.relationRow254 at r254

  unfold Seg48.relationRow255 at r255

  unfold Seg48.relationRow256 at r256

  unfold Seg48.relationRow257 at r257

  have hp0 : (8444461749428370424248824938781546531375899335154063827935233455917409239041 : Seg48.F) = 0 := by decide
  have hws : GatesDef.is_bool (rho 33167) :=
    is_bool_of_row _ (by linear_combination r233)
  have hz : GatesDef.is_zero (rho 33166) (rho 33169) := by
    refine is_zero_of_hint _ (rho 33170) _ ?_ ?_
    · linear_combination -r234
    · linear_combination r235
  have hzBool : GatesDef.is_bool (rho 33169) := by
    rcases hz with hz | hz
    · rw [hz.2]; exact is_bool_of_row 0 (by ring)
    · rw [hz.2]; exact is_bool_of_row 1 (by ring)
  have hsel15 : GatesDef.select (rho 33169) 1 (rho 33166)
      (rho 33166 + rho 33171) := by
    refine select_of_row _ _ _ _ hzBool ?_
    linear_combination -r236
  have hinv16 : GatesDef.inv (rho 33166 + rho 33171) (rho 33172) :=
    inv_of_mul _ _ (by linear_combination r237)
  have hnotWs : GatesDef.is_bool (1 - rho 33167) := by
    apply is_bool_of_row
    linear_combination r241
  have hnotZ : GatesDef.is_bool (1 - rho 33169) := by
    apply is_bool_of_row
    linear_combination r243
  have hand22 : GatesDef.and (1 - rho 33167) (rho 33169) (rho 33175) := by
    refine and_of_row _ _ _ hnotWs hzBool ?_
    linear_combination -r242
  have hand23 : GatesDef.and (1 - rho 33167) (1 - rho 33169) (rho 33176) := by
    refine and_of_row _ _ _ hnotWs hnotZ ?_
    linear_combination -r244
  have hsel36 : GatesDef.select (rho 33167) 1 (-1) (-1 + 2 * rho 33167) := by
    refine select_of_row _ _ _ _ hws ?_
    ring
  have hsel37 : GatesDef.select (rho 33167) 1 (seg48PoseidonOut rho)
      (seg48PoseidonOut rho + rho 33180) := by
    refine select_of_row _ _ _ _ hws ?_
    unfold seg48PoseidonOut
    linear_combination -r252 + (rho 33158 * rho 33167 + rho 33163 * rho 33167) * hp0
  have hz31 : (51846360469424372753315419490737795860130232637253383835608017626494646496029159208 : Seg48.F) * rho 33164 - (73721756659725413972062831735380724728489729224093916166732287877872185443385920499235863720254620945400714281000442622466140288089673656635275829952593339392 : Seg48.F) * (rho 33164 * rho 33164) = 0 := by
    linear_combination (rho 33164 * (6139688 : Seg48.F) - rho 33164 * rho 33164 * (8730190134938541092346690271902776538042097147509701931043324177298716948926374912 : Seg48.F)) * hp0
  have hz32 : (17176035198337305442922109925481665644818579247703365826020264849336010392209394 : Seg48.F) * (rho 33165 * rho 33164) = 0 := by
    linear_combination rho 33165 * rho 33164 * (2034 : Seg48.F) * hp0
  unfold Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.encodeSeg0
  simp only [Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.Gates,
    GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub,
    GatesDef.neg, GatesDef.eq]
  refine ⟨rho 33164, ?_,
    (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 33164 : Seg48.F), rfl,
    (3022 : Seg48.F), (by decide),
    (3021 * (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 33164) : Seg48.F), rfl,
    (3021 * (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 33164) - 3022 : Seg48.F), rfl,
    (3022 * (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 33164) : Seg48.F), rfl,
    (3022 * (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 33164) - 3021 : Seg48.F), rfl,
    rho 33165, ?_,
    (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 33164 + 1 : Seg48.F), rfl,
    (6042 : Seg48.F), rfl, (-6043 : Seg48.F), (by decide),
    ((2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 33164 + 1) * (-6043) : Seg48.F), rfl,
    rho 33166, ?_, hws, rho 33169, hz,
    rho 33166 + rho 33171, hsel15, rho 33172, hinv16,
    rho 33173, (by linear_combination -r238),
    rho 33174, (by linear_combination -r239), (by linear_combination r240),
    (1 - rho 33167 : Seg48.F), rfl, (1 - rho 33169 : Seg48.F), rfl,
    rho 33175, hand22, rho 33176, hand23,
    rho 33173 - rho 33172, rfl, rho 33177, (by linear_combination -r245),
    (by linear_combination r246), rho 33178, (by linear_combination -r247),
    (by linear_combination r248),
    (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 33172 : Seg48.F), rfl,
    (rho 33173 - 2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 33172 : Seg48.F), rfl,
    rho 33179, (by linear_combination -r249 + rho 33176 * rho 33172 * hp0), (by linear_combination r250),
    rho 33167 + rho 33175, rfl, rho 33167 + rho 33175 + rho 33176, rfl,
    (by linear_combination r251),
    (-1 + 2 * rho 33167 : Seg48.F), hsel36,
    seg48PoseidonOut rho + rho 33180, hsel37,
    rho 33181, (by unfold seg48PoseidonOut; linear_combination -r253),
    rho 33182, (by linear_combination -r254 + rho 33181 * rho 33164 * (2034 : Seg48.F) * hp0),
    (6042 : Seg48.F), rfl, (-6043 : Seg48.F), (by decide), (1 - 2 * rho 33167 : Seg48.F), (by ring),
    rho 33183, (by linear_combination -r255),
    rho 33184, (by linear_combination -r256),
    (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 33164 - 1 : Seg48.F), rfl,
    rho 33185, (by linear_combination -r257), (36517849 : Seg48.F), (by decide),
    (36517849 * rho 33185 : Seg48.F), (by ring), seg48YDen rho, (by rfl), hk⟩
  · unfold seg48PoseidonOut
    linear_combination -r230
  · linear_combination -r231 + hz31
  · linear_combination -r232 + hz32

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
