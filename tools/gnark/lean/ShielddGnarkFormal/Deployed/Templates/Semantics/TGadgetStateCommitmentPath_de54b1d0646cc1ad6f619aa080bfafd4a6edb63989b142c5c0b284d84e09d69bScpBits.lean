import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_bits_bool (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relation rho) :
    ∀ i : Nat, i < 48 →
      rho (237 + i) = 0 ∨ rho (237 + i) = 1 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relation at h
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
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart2 at p2
  rcases p2 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r230, r231, r232, r233, r234, r235, r236, r237, r238, r239⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart3 at p3
  rcases p3 with ⟨r240, r241, r242, r243, r244, r245, r246, r247, r248, r249, r250, r251, r252, r253, r254, r255, r256, r257, r258, r259, r260, r261, r262, r263, r264, r265, r266, r267, r268, r269, r270, r271, r272, r273, r274, r275, r276, r277, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hb0 : rho 237 = 0 ∨ rho 237 = 1 :=
    (mul_eq_zero.mp (show rho 237 * (1 - rho 237) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow230 at r230;
      linear_combination r230)).imp
      id (fun hx => by linear_combination -hx)
  have hb1 : rho 238 = 0 ∨ rho 238 = 1 :=
    (mul_eq_zero.mp (show rho 238 * (1 - rho 238) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow231 at r231;
      linear_combination r231)).imp
      id (fun hx => by linear_combination -hx)
  have hb2 : rho 239 = 0 ∨ rho 239 = 1 :=
    (mul_eq_zero.mp (show rho 239 * (1 - rho 239) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow232 at r232;
      linear_combination r232)).imp
      id (fun hx => by linear_combination -hx)
  have hb3 : rho 240 = 0 ∨ rho 240 = 1 :=
    (mul_eq_zero.mp (show rho 240 * (1 - rho 240) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow233 at r233;
      linear_combination r233)).imp
      id (fun hx => by linear_combination -hx)
  have hb4 : rho 241 = 0 ∨ rho 241 = 1 :=
    (mul_eq_zero.mp (show rho 241 * (1 - rho 241) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow234 at r234;
      linear_combination r234)).imp
      id (fun hx => by linear_combination -hx)
  have hb5 : rho 242 = 0 ∨ rho 242 = 1 :=
    (mul_eq_zero.mp (show rho 242 * (1 - rho 242) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow235 at r235;
      linear_combination r235)).imp
      id (fun hx => by linear_combination -hx)
  have hb6 : rho 243 = 0 ∨ rho 243 = 1 :=
    (mul_eq_zero.mp (show rho 243 * (1 - rho 243) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow236 at r236;
      linear_combination r236)).imp
      id (fun hx => by linear_combination -hx)
  have hb7 : rho 244 = 0 ∨ rho 244 = 1 :=
    (mul_eq_zero.mp (show rho 244 * (1 - rho 244) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow237 at r237;
      linear_combination r237)).imp
      id (fun hx => by linear_combination -hx)
  have hb8 : rho 245 = 0 ∨ rho 245 = 1 :=
    (mul_eq_zero.mp (show rho 245 * (1 - rho 245) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow238 at r238;
      linear_combination r238)).imp
      id (fun hx => by linear_combination -hx)
  have hb9 : rho 246 = 0 ∨ rho 246 = 1 :=
    (mul_eq_zero.mp (show rho 246 * (1 - rho 246) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow239 at r239;
      linear_combination r239)).imp
      id (fun hx => by linear_combination -hx)
  have hb10 : rho 247 = 0 ∨ rho 247 = 1 :=
    (mul_eq_zero.mp (show rho 247 * (1 - rho 247) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow240 at r240;
      linear_combination r240)).imp
      id (fun hx => by linear_combination -hx)
  have hb11 : rho 248 = 0 ∨ rho 248 = 1 :=
    (mul_eq_zero.mp (show rho 248 * (1 - rho 248) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow241 at r241;
      linear_combination r241)).imp
      id (fun hx => by linear_combination -hx)
  have hb12 : rho 249 = 0 ∨ rho 249 = 1 :=
    (mul_eq_zero.mp (show rho 249 * (1 - rho 249) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow242 at r242;
      linear_combination r242)).imp
      id (fun hx => by linear_combination -hx)
  have hb13 : rho 250 = 0 ∨ rho 250 = 1 :=
    (mul_eq_zero.mp (show rho 250 * (1 - rho 250) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow243 at r243;
      linear_combination r243)).imp
      id (fun hx => by linear_combination -hx)
  have hb14 : rho 251 = 0 ∨ rho 251 = 1 :=
    (mul_eq_zero.mp (show rho 251 * (1 - rho 251) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow244 at r244;
      linear_combination r244)).imp
      id (fun hx => by linear_combination -hx)
  have hb15 : rho 252 = 0 ∨ rho 252 = 1 :=
    (mul_eq_zero.mp (show rho 252 * (1 - rho 252) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow245 at r245;
      linear_combination r245)).imp
      id (fun hx => by linear_combination -hx)
  have hb16 : rho 253 = 0 ∨ rho 253 = 1 :=
    (mul_eq_zero.mp (show rho 253 * (1 - rho 253) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow246 at r246;
      linear_combination r246)).imp
      id (fun hx => by linear_combination -hx)
  have hb17 : rho 254 = 0 ∨ rho 254 = 1 :=
    (mul_eq_zero.mp (show rho 254 * (1 - rho 254) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow247 at r247;
      linear_combination r247)).imp
      id (fun hx => by linear_combination -hx)
  have hb18 : rho 255 = 0 ∨ rho 255 = 1 :=
    (mul_eq_zero.mp (show rho 255 * (1 - rho 255) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow248 at r248;
      linear_combination r248)).imp
      id (fun hx => by linear_combination -hx)
  have hb19 : rho 256 = 0 ∨ rho 256 = 1 :=
    (mul_eq_zero.mp (show rho 256 * (1 - rho 256) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow249 at r249;
      linear_combination r249)).imp
      id (fun hx => by linear_combination -hx)
  have hb20 : rho 257 = 0 ∨ rho 257 = 1 :=
    (mul_eq_zero.mp (show rho 257 * (1 - rho 257) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow250 at r250;
      linear_combination r250)).imp
      id (fun hx => by linear_combination -hx)
  have hb21 : rho 258 = 0 ∨ rho 258 = 1 :=
    (mul_eq_zero.mp (show rho 258 * (1 - rho 258) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow251 at r251;
      linear_combination r251)).imp
      id (fun hx => by linear_combination -hx)
  have hb22 : rho 259 = 0 ∨ rho 259 = 1 :=
    (mul_eq_zero.mp (show rho 259 * (1 - rho 259) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow252 at r252;
      linear_combination r252)).imp
      id (fun hx => by linear_combination -hx)
  have hb23 : rho 260 = 0 ∨ rho 260 = 1 :=
    (mul_eq_zero.mp (show rho 260 * (1 - rho 260) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow253 at r253;
      linear_combination r253)).imp
      id (fun hx => by linear_combination -hx)
  have hb24 : rho 261 = 0 ∨ rho 261 = 1 :=
    (mul_eq_zero.mp (show rho 261 * (1 - rho 261) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow254 at r254;
      linear_combination r254)).imp
      id (fun hx => by linear_combination -hx)
  have hb25 : rho 262 = 0 ∨ rho 262 = 1 :=
    (mul_eq_zero.mp (show rho 262 * (1 - rho 262) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow255 at r255;
      linear_combination r255)).imp
      id (fun hx => by linear_combination -hx)
  have hb26 : rho 263 = 0 ∨ rho 263 = 1 :=
    (mul_eq_zero.mp (show rho 263 * (1 - rho 263) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow256 at r256;
      linear_combination r256)).imp
      id (fun hx => by linear_combination -hx)
  have hb27 : rho 264 = 0 ∨ rho 264 = 1 :=
    (mul_eq_zero.mp (show rho 264 * (1 - rho 264) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow257 at r257;
      linear_combination r257)).imp
      id (fun hx => by linear_combination -hx)
  have hb28 : rho 265 = 0 ∨ rho 265 = 1 :=
    (mul_eq_zero.mp (show rho 265 * (1 - rho 265) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow258 at r258;
      linear_combination r258)).imp
      id (fun hx => by linear_combination -hx)
  have hb29 : rho 266 = 0 ∨ rho 266 = 1 :=
    (mul_eq_zero.mp (show rho 266 * (1 - rho 266) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow259 at r259;
      linear_combination r259)).imp
      id (fun hx => by linear_combination -hx)
  have hb30 : rho 267 = 0 ∨ rho 267 = 1 :=
    (mul_eq_zero.mp (show rho 267 * (1 - rho 267) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow260 at r260;
      linear_combination r260)).imp
      id (fun hx => by linear_combination -hx)
  have hb31 : rho 268 = 0 ∨ rho 268 = 1 :=
    (mul_eq_zero.mp (show rho 268 * (1 - rho 268) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow261 at r261;
      linear_combination r261)).imp
      id (fun hx => by linear_combination -hx)
  have hb32 : rho 269 = 0 ∨ rho 269 = 1 :=
    (mul_eq_zero.mp (show rho 269 * (1 - rho 269) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow262 at r262;
      linear_combination r262)).imp
      id (fun hx => by linear_combination -hx)
  have hb33 : rho 270 = 0 ∨ rho 270 = 1 :=
    (mul_eq_zero.mp (show rho 270 * (1 - rho 270) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow263 at r263;
      linear_combination r263)).imp
      id (fun hx => by linear_combination -hx)
  have hb34 : rho 271 = 0 ∨ rho 271 = 1 :=
    (mul_eq_zero.mp (show rho 271 * (1 - rho 271) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow264 at r264;
      linear_combination r264)).imp
      id (fun hx => by linear_combination -hx)
  have hb35 : rho 272 = 0 ∨ rho 272 = 1 :=
    (mul_eq_zero.mp (show rho 272 * (1 - rho 272) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow265 at r265;
      linear_combination r265)).imp
      id (fun hx => by linear_combination -hx)
  have hb36 : rho 273 = 0 ∨ rho 273 = 1 :=
    (mul_eq_zero.mp (show rho 273 * (1 - rho 273) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow266 at r266;
      linear_combination r266)).imp
      id (fun hx => by linear_combination -hx)
  have hb37 : rho 274 = 0 ∨ rho 274 = 1 :=
    (mul_eq_zero.mp (show rho 274 * (1 - rho 274) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow267 at r267;
      linear_combination r267)).imp
      id (fun hx => by linear_combination -hx)
  have hb38 : rho 275 = 0 ∨ rho 275 = 1 :=
    (mul_eq_zero.mp (show rho 275 * (1 - rho 275) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow268 at r268;
      linear_combination r268)).imp
      id (fun hx => by linear_combination -hx)
  have hb39 : rho 276 = 0 ∨ rho 276 = 1 :=
    (mul_eq_zero.mp (show rho 276 * (1 - rho 276) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow269 at r269;
      linear_combination r269)).imp
      id (fun hx => by linear_combination -hx)
  have hb40 : rho 277 = 0 ∨ rho 277 = 1 :=
    (mul_eq_zero.mp (show rho 277 * (1 - rho 277) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow270 at r270;
      linear_combination r270)).imp
      id (fun hx => by linear_combination -hx)
  have hb41 : rho 278 = 0 ∨ rho 278 = 1 :=
    (mul_eq_zero.mp (show rho 278 * (1 - rho 278) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow271 at r271;
      linear_combination r271)).imp
      id (fun hx => by linear_combination -hx)
  have hb42 : rho 279 = 0 ∨ rho 279 = 1 :=
    (mul_eq_zero.mp (show rho 279 * (1 - rho 279) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow272 at r272;
      linear_combination r272)).imp
      id (fun hx => by linear_combination -hx)
  have hb43 : rho 280 = 0 ∨ rho 280 = 1 :=
    (mul_eq_zero.mp (show rho 280 * (1 - rho 280) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow273 at r273;
      linear_combination r273)).imp
      id (fun hx => by linear_combination -hx)
  have hb44 : rho 281 = 0 ∨ rho 281 = 1 :=
    (mul_eq_zero.mp (show rho 281 * (1 - rho 281) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow274 at r274;
      linear_combination r274)).imp
      id (fun hx => by linear_combination -hx)
  have hb45 : rho 282 = 0 ∨ rho 282 = 1 :=
    (mul_eq_zero.mp (show rho 282 * (1 - rho 282) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow275 at r275;
      linear_combination r275)).imp
      id (fun hx => by linear_combination -hx)
  have hb46 : rho 283 = 0 ∨ rho 283 = 1 :=
    (mul_eq_zero.mp (show rho 283 * (1 - rho 283) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow276 at r276;
      linear_combination r276)).imp
      id (fun hx => by linear_combination -hx)
  have hb47 : rho 284 = 0 ∨ rho 284 = 1 :=
    (mul_eq_zero.mp (show rho 284 * (1 - rho 284) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow277 at r277;
      linear_combination r277)).imp
      id (fun hx => by linear_combination -hx)
  intro i hi
  interval_cases i
  · simpa using hb0
  · simpa using hb1
  · simpa using hb2
  · simpa using hb3
  · simpa using hb4
  · simpa using hb5
  · simpa using hb6
  · simpa using hb7
  · simpa using hb8
  · simpa using hb9
  · simpa using hb10
  · simpa using hb11
  · simpa using hb12
  · simpa using hb13
  · simpa using hb14
  · simpa using hb15
  · simpa using hb16
  · simpa using hb17
  · simpa using hb18
  · simpa using hb19
  · simpa using hb20
  · simpa using hb21
  · simpa using hb22
  · simpa using hb23
  · simpa using hb24
  · simpa using hb25
  · simpa using hb26
  · simpa using hb27
  · simpa using hb28
  · simpa using hb29
  · simpa using hb30
  · simpa using hb31
  · simpa using hb32
  · simpa using hb33
  · simpa using hb34
  · simpa using hb35
  · simpa using hb36
  · simpa using hb37
  · simpa using hb38
  · simpa using hb39
  · simpa using hb40
  · simpa using hb41
  · simpa using hb42
  · simpa using hb43
  · simpa using hb44
  · simpa using hb45
  · simpa using hb46
  · simpa using hb47

theorem template_scp_recompose (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relation rho) :
    rho 285 = (1 : F) * rho (237 + 0)
      + (2 : F) * rho (237 + 1)
      + (4 : F) * rho (237 + 2)
      + (8 : F) * rho (237 + 3)
      + (16 : F) * rho (237 + 4)
      + (32 : F) * rho (237 + 5)
      + (64 : F) * rho (237 + 6)
      + (128 : F) * rho (237 + 7)
      + (256 : F) * rho (237 + 8)
      + (512 : F) * rho (237 + 9)
      + (1024 : F) * rho (237 + 10)
      + (2048 : F) * rho (237 + 11)
      + (4096 : F) * rho (237 + 12)
      + (8192 : F) * rho (237 + 13)
      + (16384 : F) * rho (237 + 14)
      + (32768 : F) * rho (237 + 15)
      + (65536 : F) * rho (237 + 16)
      + (131072 : F) * rho (237 + 17)
      + (262144 : F) * rho (237 + 18)
      + (524288 : F) * rho (237 + 19)
      + (1048576 : F) * rho (237 + 20)
      + (2097152 : F) * rho (237 + 21)
      + (4194304 : F) * rho (237 + 22)
      + (8388608 : F) * rho (237 + 23)
      + (16777216 : F) * rho (237 + 24)
      + (33554432 : F) * rho (237 + 25)
      + (67108864 : F) * rho (237 + 26)
      + (134217728 : F) * rho (237 + 27)
      + (268435456 : F) * rho (237 + 28)
      + (536870912 : F) * rho (237 + 29)
      + (1073741824 : F) * rho (237 + 30)
      + (2147483648 : F) * rho (237 + 31)
      + (4294967296 : F) * rho (237 + 32)
      + (8589934592 : F) * rho (237 + 33)
      + (17179869184 : F) * rho (237 + 34)
      + (34359738368 : F) * rho (237 + 35)
      + (68719476736 : F) * rho (237 + 36)
      + (137438953472 : F) * rho (237 + 37)
      + (274877906944 : F) * rho (237 + 38)
      + (549755813888 : F) * rho (237 + 39)
      + (1099511627776 : F) * rho (237 + 40)
      + (2199023255552 : F) * rho (237 + 41)
      + (4398046511104 : F) * rho (237 + 42)
      + (8796093022208 : F) * rho (237 + 43)
      + (17592186044416 : F) * rho (237 + 44)
      + (35184372088832 : F) * rho (237 + 45)
      + (70368744177664 : F) * rho (237 + 46)
      + (140737488355328 : F) * rho (237 + 47) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r278, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow278 at r278
  try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc3, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc3Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc3Part1] at r278
  linear_combination -r278

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
