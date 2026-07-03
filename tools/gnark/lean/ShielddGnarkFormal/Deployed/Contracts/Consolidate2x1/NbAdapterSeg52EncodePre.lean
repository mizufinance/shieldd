import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Poseidon
import ShielddGnarkFormal.NetBalanceCommitmentBridge
import ShielddGnarkFormal.CompressDeployedGadgets

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.DeployedGadgets

def seg52YDen (rho : Nat -> Seg52.F) : Seg52.F :=
  36517849 * rho 44817 - 1

theorem seg52_encode_pre (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (k : Seg52.F -> Seg52.F -> Prop) (hk : k (rho 44814) (seg52YDen rho)) :
    Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.encodeSeg0
      (seg52PoseidonOut rho) (rho 44799) (rho 44800) k := by
  unfold Seg52.relation at h

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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart2 at p2

  rcases p2 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r230, r231, r232, r233, r234, r235, r236, r237, r238, r239⟩

  unfold Seg52.relationPart3 at p3

  rcases p3 with ⟨r240, r241, r242, r243, r244, r245, r246, r247, r248, r249, r250, r251, r252, r253, r254, r255, r256, r257, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationRow230 at r230

  unfold Seg52.relationRow231 at r231

  unfold Seg52.relationRow232 at r232

  unfold Seg52.relationRow233 at r233

  unfold Seg52.relationRow234 at r234

  unfold Seg52.relationRow235 at r235

  unfold Seg52.relationRow236 at r236

  unfold Seg52.relationRow237 at r237

  unfold Seg52.relationRow238 at r238

  unfold Seg52.relationRow239 at r239

  unfold Seg52.relationRow240 at r240

  unfold Seg52.relationRow241 at r241

  unfold Seg52.relationRow242 at r242

  unfold Seg52.relationRow243 at r243

  unfold Seg52.relationRow244 at r244

  unfold Seg52.relationRow245 at r245

  unfold Seg52.relationRow246 at r246

  unfold Seg52.relationRow247 at r247

  unfold Seg52.relationRow248 at r248

  unfold Seg52.relationRow249 at r249

  unfold Seg52.relationRow250 at r250

  unfold Seg52.relationRow251 at r251

  unfold Seg52.relationRow252 at r252

  unfold Seg52.relationRow253 at r253

  unfold Seg52.relationRow254 at r254

  unfold Seg52.relationRow255 at r255

  unfold Seg52.relationRow256 at r256

  unfold Seg52.relationRow257 at r257

  have hp0 : (8444461749428370424248824938781546531375899335154063827935233455917409239041 : Seg52.F) = 0 := by decide
  have hws : GatesDef.is_bool (rho 44799) :=
    is_bool_of_row _ (by linear_combination r233)
  have hz : GatesDef.is_zero (rho 44798) (rho 44801) := by
    refine is_zero_of_hint _ (rho 44802) _ ?_ ?_
    · linear_combination -r234
    · linear_combination r235
  have hzBool : GatesDef.is_bool (rho 44801) := by
    rcases hz with hz | hz
    · rw [hz.2]; exact is_bool_of_row 0 (by ring)
    · rw [hz.2]; exact is_bool_of_row 1 (by ring)
  have hsel15 : GatesDef.select (rho 44801) 1 (rho 44798)
      (rho 44798 + rho 44803) := by
    refine select_of_row _ _ _ _ hzBool ?_
    linear_combination -r236
  have hinv16 : GatesDef.inv (rho 44798 + rho 44803) (rho 44804) :=
    inv_of_mul _ _ (by linear_combination r237)
  have hnotWs : GatesDef.is_bool (1 - rho 44799) := by
    apply is_bool_of_row
    linear_combination r241
  have hnotZ : GatesDef.is_bool (1 - rho 44801) := by
    apply is_bool_of_row
    linear_combination r243
  have hand22 : GatesDef.and (1 - rho 44799) (rho 44801) (rho 44807) := by
    refine and_of_row _ _ _ hnotWs hzBool ?_
    linear_combination -r242
  have hand23 : GatesDef.and (1 - rho 44799) (1 - rho 44801) (rho 44808) := by
    refine and_of_row _ _ _ hnotWs hnotZ ?_
    linear_combination -r244
  have hsel36 : GatesDef.select (rho 44799) 1 (-1) (-1 + 2 * rho 44799) := by
    refine select_of_row _ _ _ _ hws ?_
    ring
  have hsel37 : GatesDef.select (rho 44799) 1 (seg52PoseidonOut rho)
      (seg52PoseidonOut rho + rho 44812) := by
    refine select_of_row _ _ _ _ hws ?_
    unfold seg52PoseidonOut
    linear_combination -r252 + (rho 44790 * rho 44799 + rho 44795 * rho 44799) * hp0
  have hz31 : (51846360469424372753315419490737795860130232637253383835608017626494646496029159208 : Seg52.F) * rho 44796 - (73721756659725413972062831735380724728489729224093916166732287877872185443385920499235863720254620945400714281000442622466140288089673656635275829952593339392 : Seg52.F) * (rho 44796 * rho 44796) = 0 := by
    linear_combination (rho 44796 * (6139688 : Seg52.F) - rho 44796 * rho 44796 * (8730190134938541092346690271902776538042097147509701931043324177298716948926374912 : Seg52.F)) * hp0
  have hz32 : (17176035198337305442922109925481665644818579247703365826020264849336010392209394 : Seg52.F) * (rho 44797 * rho 44796) = 0 := by
    linear_combination rho 44797 * rho 44796 * (2034 : Seg52.F) * hp0
  unfold Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.encodeSeg0
  simp only [Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.Gates,
    GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub,
    GatesDef.neg, GatesDef.eq]
  refine ⟨rho 44796, ?_,
    (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 44796 : Seg52.F), rfl,
    (3022 : Seg52.F), (by decide),
    (3021 * (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 44796) : Seg52.F), rfl,
    (3021 * (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 44796) - 3022 : Seg52.F), rfl,
    (3022 * (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 44796) : Seg52.F), rfl,
    (3022 * (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 44796) - 3021 : Seg52.F), rfl,
    rho 44797, ?_,
    (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 44796 + 1 : Seg52.F), rfl,
    (6042 : Seg52.F), rfl, (-6043 : Seg52.F), (by decide),
    ((2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 44796 + 1) * (-6043) : Seg52.F), rfl,
    rho 44798, ?_, hws, rho 44801, hz,
    rho 44798 + rho 44803, hsel15, rho 44804, hinv16,
    rho 44805, (by linear_combination -r238),
    rho 44806, (by linear_combination -r239), (by linear_combination r240),
    (1 - rho 44799 : Seg52.F), rfl, (1 - rho 44801 : Seg52.F), rfl,
    rho 44807, hand22, rho 44808, hand23,
    rho 44805 - rho 44804, rfl, rho 44809, (by linear_combination -r245),
    (by linear_combination r246), rho 44810, (by linear_combination -r247),
    (by linear_combination r248),
    (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 44804 : Seg52.F), rfl,
    (rho 44805 - 2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 44804 : Seg52.F), rfl,
    rho 44811, (by linear_combination -r249 + rho 44808 * rho 44804 * hp0), (by linear_combination r250),
    rho 44799 + rho 44807, rfl, rho 44799 + rho 44807 + rho 44808, rfl,
    (by linear_combination r251),
    (-1 + 2 * rho 44799 : Seg52.F), hsel36,
    seg52PoseidonOut rho + rho 44812, hsel37,
    rho 44813, (by unfold seg52PoseidonOut; linear_combination -r253),
    rho 44814, (by linear_combination -r254 + rho 44813 * rho 44796 * (2034 : Seg52.F) * hp0),
    (6042 : Seg52.F), rfl, (-6043 : Seg52.F), (by decide), (1 - 2 * rho 44799 : Seg52.F), (by ring),
    rho 44815, (by linear_combination -r255),
    rho 44816, (by linear_combination -r256),
    (2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 44796 - 1 : Seg52.F), rfl,
    rho 44817, (by linear_combination -r257), (36517849 : Seg52.F), (by decide),
    (36517849 * rho 44817 : Seg52.F), (by ring), seg52YDen rho, (by rfl), hk⟩
  · unfold seg52PoseidonOut
    linear_combination -r230
  · linear_combination -r231 + hz31
  · linear_combination -r232 + hz32

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
