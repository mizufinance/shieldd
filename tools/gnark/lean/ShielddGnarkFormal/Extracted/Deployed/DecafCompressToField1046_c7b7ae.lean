import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.LinearCombination


set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 50000000

/-! Auto-generated per-rung deployed-slice certificates for `decaf.compress_to_field` (size 1046, 1044 rows).
Each `step{k}` proves the rematerialized rung follows from the exact deployed row by instantiating every shared accumulator `s{w}` with its full original expansion. Generated from the checked deployed-slice IR. -/

namespace Shieldd.GnarkFormal.Extracted.Deployed.DecafCompressToField1046_c7b7ae

-- 2 folded ladder rung(s) delegated to the fuel lemma (deployed row indices, NOT flat-proven here): [281, 791]
def Order : ℕ := 8444461749428370424248824938781546531375899335154063827935233455917409239041
variable [Fact (Nat.Prime Order)]
abbrev F := ZMod Order

def dotLC (rho : Nat → F) : List (F × Nat) → F
  | [] => 0
  | (a,w) :: t => a * rho w + dotLC rho t

theorem step0 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),17)] * dotLC rho [((1 : F),17)] = dotLC rho [((1 : F),210)]) :
    ((1 : F) * rho 17) * ((1 : F) * rho 17) = ((1 : F) * rho 210) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),18)] * dotLC rho [((1 : F),18)] = dotLC rho [((1 : F),211)]) :
    ((1 : F) * rho 18) * ((1 : F) * rho 18) = ((1 : F) * rho 211) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2 (rho : Nat → F)
    (hraw : dotLC rho [((3021 : F),210)] * dotLC rho [((1 : F),211)] = dotLC rho [((1 : F),212)]) :
    ((3021 : F) * rho 210) * ((1 : F) * rho 211) = ((1 : F) * rho 212) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),0)] * dotLC rho [((-1 : F),210), ((1 : F),211)] = dotLC rho [((1 : F),0), ((1 : F),212)]) :
    ((1 : F) * rho 0) * ((-1 : F) * rho 210 + (1 : F) * rho 211) = ((1 : F) * rho 0 + (1 : F) * rho 212) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step4 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),17)] * dotLC rho [((1 : F),18)] = dotLC rho [((1 : F),213)]) :
    ((1 : F) * rho 17) * ((1 : F) * rho 18) = ((1 : F) * rho 213) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step5 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),17), ((1 : F),213)] * dotLC rho [((1 : F),17), ((-1 : F),213)] = dotLC rho [((1 : F),214)]) :
    ((1 : F) * rho 17 + (1 : F) * rho 213) * ((1 : F) * rho 17 + (-1 : F) * rho 213) = ((1 : F) * rho 214) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step6 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),17)] * dotLC rho [((1 : F),17)] = dotLC rho [((1 : F),215)]) :
    ((1 : F) * rho 17) * ((1 : F) * rho 17) = ((1 : F) * rho 215) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step7 (rho : Nat → F)
    (hraw : dotLC rho [((-3022 : F),214)] * dotLC rho [((1 : F),215)] = dotLC rho [((1 : F),216)]) :
    ((-3022 : F) * rho 214) * ((1 : F) * rho 215) = ((1 : F) * rho 216) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step8 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),217)] * dotLC rho [((1 : F),0), ((-1 : F),217)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 217) * ((1 : F) * rho 0 + (-1 : F) * rho 217) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step9 (rho : Nat → F)
    (hraw : dotLC rho [((-1 : F),216)] * dotLC rho [((1 : F),220)] = dotLC rho [((-1 : F),0), ((1 : F),219)]) :
    ((-1 : F) * rho 216) * ((1 : F) * rho 220) = ((-1 : F) * rho 0 + (1 : F) * rho 219) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step10 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),216)] * dotLC rho [((1 : F),219)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 216) * ((1 : F) * rho 219) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step11 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),219)] * dotLC rho [((1 : F),0), ((-1 : F),216)] = dotLC rho [((1 : F),221)]) :
    ((1 : F) * rho 219) * ((1 : F) * rho 0 + (-1 : F) * rho 216) = ((1 : F) * rho 221) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step12 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),222)] * dotLC rho [((1 : F),216), ((1 : F),221)] = dotLC rho [((1 : F),0)]) :
    ((1 : F) * rho 222) * ((1 : F) * rho 216 + (1 : F) * rho 221) = ((1 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step13 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),218)] * dotLC rho [((1 : F),218)] = dotLC rho [((1 : F),223)]) :
    ((1 : F) * rho 218) * ((1 : F) * rho 218) = ((1 : F) * rho 223) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step14 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),217)] * dotLC rho [((1 : F),219)] = dotLC rho [((1 : F),224)]) :
    ((1 : F) * rho 217) * ((1 : F) * rho 219) = ((1 : F) * rho 224) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step15 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),0)] * dotLC rho [((1 : F),224)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 0) * ((1 : F) * rho 224) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step16 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),217)] * dotLC rho [((1 : F),0), ((-1 : F),217)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 217) * ((1 : F) * rho 0 + (-1 : F) * rho 217) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step17 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),219)] * dotLC rho [((1 : F),0), ((-1 : F),217)] = dotLC rho [((1 : F),225)]) :
    ((1 : F) * rho 219) * ((1 : F) * rho 0 + (-1 : F) * rho 217) = ((1 : F) * rho 225) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step18 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),219)] * dotLC rho [((1 : F),0), ((-1 : F),219)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 219) * ((1 : F) * rho 0 + (-1 : F) * rho 219) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step19 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),0), ((-1 : F),217)] * dotLC rho [((1 : F),0), ((-1 : F),219)] = dotLC rho [((1 : F),226)]) :
    ((1 : F) * rho 0 + (-1 : F) * rho 217) * ((1 : F) * rho 0 + (-1 : F) * rho 219) = ((1 : F) * rho 226) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step20 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),217)] * dotLC rho [((-1 : F),222), ((1 : F),223)] = dotLC rho [((1 : F),227)]) :
    ((1 : F) * rho 217) * ((-1 : F) * rho 222 + (1 : F) * rho 223) = ((1 : F) * rho 227) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step21 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),0)] * dotLC rho [((1 : F),227)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 0) * ((1 : F) * rho 227) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step22 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),225)] * dotLC rho [((1 : F),223)] = dotLC rho [((1 : F),228)]) :
    ((1 : F) * rho 225) * ((1 : F) * rho 223) = ((1 : F) * rho 228) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step23 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),0)] * dotLC rho [((1 : F),228)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 0) * ((1 : F) * rho 228) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step24 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),226)] * dotLC rho [((5602780471396575806509277699913763570037463653793953144491313093258883571225 : F),222), ((1 : F),223)] = dotLC rho [((1 : F),229)]) :
    ((1 : F) * rho 226) * ((5602780471396575806509277699913763570037463653793953144491313093258883571225 : F) * rho 222 + (1 : F) * rho 223) = ((1 : F) * rho 229) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step25 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),0)] * dotLC rho [((1 : F),229)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 0) * ((1 : F) * rho 229) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step26 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),0)] * dotLC rho [((1 : F),217), ((1 : F),225), ((1 : F),226)] = dotLC rho [((1 : F),0)]) :
    ((1 : F) * rho 0) * ((1 : F) * rho 217 + (1 : F) * rho 225 + (1 : F) * rho 226) = ((1 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step27 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),218)] * dotLC rho [((1 : F),214)] = dotLC rho [((1 : F),230)]) :
    ((1 : F) * rho 218) * ((1 : F) * rho 214) = ((1 : F) * rho 230) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step28 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),231)] * dotLC rho [((1 : F),0), ((-1 : F),231)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 231) * ((1 : F) * rho 0 + (-1 : F) * rho 231) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step29 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),232)] * dotLC rho [((1 : F),0), ((-1 : F),232)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 232) * ((1 : F) * rho 0 + (-1 : F) * rho 232) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step30 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),233)] * dotLC rho [((1 : F),0), ((-1 : F),233)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 233) * ((1 : F) * rho 0 + (-1 : F) * rho 233) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step31 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),234)] * dotLC rho [((1 : F),0), ((-1 : F),234)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 234) * ((1 : F) * rho 0 + (-1 : F) * rho 234) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step32 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),235)] * dotLC rho [((1 : F),0), ((-1 : F),235)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 235) * ((1 : F) * rho 0 + (-1 : F) * rho 235) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step33 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),236)] * dotLC rho [((1 : F),0), ((-1 : F),236)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 236) * ((1 : F) * rho 0 + (-1 : F) * rho 236) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step34 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),237)] * dotLC rho [((1 : F),0), ((-1 : F),237)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 237) * ((1 : F) * rho 0 + (-1 : F) * rho 237) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step35 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),238)] * dotLC rho [((1 : F),0), ((-1 : F),238)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 238) * ((1 : F) * rho 0 + (-1 : F) * rho 238) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step36 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),239)] * dotLC rho [((1 : F),0), ((-1 : F),239)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 239) * ((1 : F) * rho 0 + (-1 : F) * rho 239) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step37 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),240)] * dotLC rho [((1 : F),0), ((-1 : F),240)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 240) * ((1 : F) * rho 0 + (-1 : F) * rho 240) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step38 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),241)] * dotLC rho [((1 : F),0), ((-1 : F),241)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 241) * ((1 : F) * rho 0 + (-1 : F) * rho 241) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step39 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),242)] * dotLC rho [((1 : F),0), ((-1 : F),242)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 242) * ((1 : F) * rho 0 + (-1 : F) * rho 242) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step40 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),243)] * dotLC rho [((1 : F),0), ((-1 : F),243)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 243) * ((1 : F) * rho 0 + (-1 : F) * rho 243) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step41 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),244)] * dotLC rho [((1 : F),0), ((-1 : F),244)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 244) * ((1 : F) * rho 0 + (-1 : F) * rho 244) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step42 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),245)] * dotLC rho [((1 : F),0), ((-1 : F),245)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 245) * ((1 : F) * rho 0 + (-1 : F) * rho 245) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step43 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),246)] * dotLC rho [((1 : F),0), ((-1 : F),246)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 246) * ((1 : F) * rho 0 + (-1 : F) * rho 246) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step44 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),247)] * dotLC rho [((1 : F),0), ((-1 : F),247)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 247) * ((1 : F) * rho 0 + (-1 : F) * rho 247) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step45 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),248)] * dotLC rho [((1 : F),0), ((-1 : F),248)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 248) * ((1 : F) * rho 0 + (-1 : F) * rho 248) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step46 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),249)] * dotLC rho [((1 : F),0), ((-1 : F),249)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 249) * ((1 : F) * rho 0 + (-1 : F) * rho 249) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step47 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),250)] * dotLC rho [((1 : F),0), ((-1 : F),250)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 250) * ((1 : F) * rho 0 + (-1 : F) * rho 250) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step48 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),251)] * dotLC rho [((1 : F),0), ((-1 : F),251)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 251) * ((1 : F) * rho 0 + (-1 : F) * rho 251) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step49 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),252)] * dotLC rho [((1 : F),0), ((-1 : F),252)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 252) * ((1 : F) * rho 0 + (-1 : F) * rho 252) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step50 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),253)] * dotLC rho [((1 : F),0), ((-1 : F),253)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 253) * ((1 : F) * rho 0 + (-1 : F) * rho 253) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step51 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),254)] * dotLC rho [((1 : F),0), ((-1 : F),254)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 254) * ((1 : F) * rho 0 + (-1 : F) * rho 254) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step52 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),255)] * dotLC rho [((1 : F),0), ((-1 : F),255)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 255) * ((1 : F) * rho 0 + (-1 : F) * rho 255) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step53 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),256)] * dotLC rho [((1 : F),0), ((-1 : F),256)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 256) * ((1 : F) * rho 0 + (-1 : F) * rho 256) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step54 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),257)] * dotLC rho [((1 : F),0), ((-1 : F),257)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 257) * ((1 : F) * rho 0 + (-1 : F) * rho 257) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step55 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),258)] * dotLC rho [((1 : F),0), ((-1 : F),258)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 258) * ((1 : F) * rho 0 + (-1 : F) * rho 258) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step56 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),259)] * dotLC rho [((1 : F),0), ((-1 : F),259)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 259) * ((1 : F) * rho 0 + (-1 : F) * rho 259) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step57 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),260)] * dotLC rho [((1 : F),0), ((-1 : F),260)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 260) * ((1 : F) * rho 0 + (-1 : F) * rho 260) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step58 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),261)] * dotLC rho [((1 : F),0), ((-1 : F),261)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 261) * ((1 : F) * rho 0 + (-1 : F) * rho 261) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step59 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),262)] * dotLC rho [((1 : F),0), ((-1 : F),262)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 262) * ((1 : F) * rho 0 + (-1 : F) * rho 262) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step60 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),263)] * dotLC rho [((1 : F),0), ((-1 : F),263)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 263) * ((1 : F) * rho 0 + (-1 : F) * rho 263) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step61 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),264)] * dotLC rho [((1 : F),0), ((-1 : F),264)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 264) * ((1 : F) * rho 0 + (-1 : F) * rho 264) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step62 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),265)] * dotLC rho [((1 : F),0), ((-1 : F),265)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 265) * ((1 : F) * rho 0 + (-1 : F) * rho 265) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step63 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),266)] * dotLC rho [((1 : F),0), ((-1 : F),266)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 266) * ((1 : F) * rho 0 + (-1 : F) * rho 266) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step64 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),267)] * dotLC rho [((1 : F),0), ((-1 : F),267)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 267) * ((1 : F) * rho 0 + (-1 : F) * rho 267) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step65 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),268)] * dotLC rho [((1 : F),0), ((-1 : F),268)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 268) * ((1 : F) * rho 0 + (-1 : F) * rho 268) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step66 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),269)] * dotLC rho [((1 : F),0), ((-1 : F),269)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 269) * ((1 : F) * rho 0 + (-1 : F) * rho 269) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step67 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),270)] * dotLC rho [((1 : F),0), ((-1 : F),270)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 270) * ((1 : F) * rho 0 + (-1 : F) * rho 270) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step68 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),271)] * dotLC rho [((1 : F),0), ((-1 : F),271)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 271) * ((1 : F) * rho 0 + (-1 : F) * rho 271) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step69 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),272)] * dotLC rho [((1 : F),0), ((-1 : F),272)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 272) * ((1 : F) * rho 0 + (-1 : F) * rho 272) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step70 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),273)] * dotLC rho [((1 : F),0), ((-1 : F),273)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 273) * ((1 : F) * rho 0 + (-1 : F) * rho 273) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step71 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),274)] * dotLC rho [((1 : F),0), ((-1 : F),274)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 274) * ((1 : F) * rho 0 + (-1 : F) * rho 274) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step72 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),275)] * dotLC rho [((1 : F),0), ((-1 : F),275)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 275) * ((1 : F) * rho 0 + (-1 : F) * rho 275) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step73 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),276)] * dotLC rho [((1 : F),0), ((-1 : F),276)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 276) * ((1 : F) * rho 0 + (-1 : F) * rho 276) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step74 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),277)] * dotLC rho [((1 : F),0), ((-1 : F),277)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 277) * ((1 : F) * rho 0 + (-1 : F) * rho 277) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step75 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),278)] * dotLC rho [((1 : F),0), ((-1 : F),278)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 278) * ((1 : F) * rho 0 + (-1 : F) * rho 278) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step76 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),279)] * dotLC rho [((1 : F),0), ((-1 : F),279)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 279) * ((1 : F) * rho 0 + (-1 : F) * rho 279) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step77 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),280)] * dotLC rho [((1 : F),0), ((-1 : F),280)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 280) * ((1 : F) * rho 0 + (-1 : F) * rho 280) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step78 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),281)] * dotLC rho [((1 : F),0), ((-1 : F),281)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 281) * ((1 : F) * rho 0 + (-1 : F) * rho 281) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step79 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),282)] * dotLC rho [((1 : F),0), ((-1 : F),282)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 282) * ((1 : F) * rho 0 + (-1 : F) * rho 282) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step80 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),283)] * dotLC rho [((1 : F),0), ((-1 : F),283)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 283) * ((1 : F) * rho 0 + (-1 : F) * rho 283) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step81 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),284)] * dotLC rho [((1 : F),0), ((-1 : F),284)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 284) * ((1 : F) * rho 0 + (-1 : F) * rho 284) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step82 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),285)] * dotLC rho [((1 : F),0), ((-1 : F),285)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 285) * ((1 : F) * rho 0 + (-1 : F) * rho 285) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step83 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),286)] * dotLC rho [((1 : F),0), ((-1 : F),286)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 286) * ((1 : F) * rho 0 + (-1 : F) * rho 286) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step84 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),287)] * dotLC rho [((1 : F),0), ((-1 : F),287)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 287) * ((1 : F) * rho 0 + (-1 : F) * rho 287) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step85 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),288)] * dotLC rho [((1 : F),0), ((-1 : F),288)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 288) * ((1 : F) * rho 0 + (-1 : F) * rho 288) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step86 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),289)] * dotLC rho [((1 : F),0), ((-1 : F),289)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 289) * ((1 : F) * rho 0 + (-1 : F) * rho 289) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step87 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),290)] * dotLC rho [((1 : F),0), ((-1 : F),290)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 290) * ((1 : F) * rho 0 + (-1 : F) * rho 290) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step88 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),291)] * dotLC rho [((1 : F),0), ((-1 : F),291)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 291) * ((1 : F) * rho 0 + (-1 : F) * rho 291) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step89 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),292)] * dotLC rho [((1 : F),0), ((-1 : F),292)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 292) * ((1 : F) * rho 0 + (-1 : F) * rho 292) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step90 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),293)] * dotLC rho [((1 : F),0), ((-1 : F),293)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 293) * ((1 : F) * rho 0 + (-1 : F) * rho 293) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step91 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),294)] * dotLC rho [((1 : F),0), ((-1 : F),294)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 294) * ((1 : F) * rho 0 + (-1 : F) * rho 294) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step92 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),295)] * dotLC rho [((1 : F),0), ((-1 : F),295)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 295) * ((1 : F) * rho 0 + (-1 : F) * rho 295) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step93 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),296)] * dotLC rho [((1 : F),0), ((-1 : F),296)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 296) * ((1 : F) * rho 0 + (-1 : F) * rho 296) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step94 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),297)] * dotLC rho [((1 : F),0), ((-1 : F),297)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 297) * ((1 : F) * rho 0 + (-1 : F) * rho 297) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step95 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),298)] * dotLC rho [((1 : F),0), ((-1 : F),298)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 298) * ((1 : F) * rho 0 + (-1 : F) * rho 298) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step96 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),299)] * dotLC rho [((1 : F),0), ((-1 : F),299)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 299) * ((1 : F) * rho 0 + (-1 : F) * rho 299) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step97 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),300)] * dotLC rho [((1 : F),0), ((-1 : F),300)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 300) * ((1 : F) * rho 0 + (-1 : F) * rho 300) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step98 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),301)] * dotLC rho [((1 : F),0), ((-1 : F),301)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 301) * ((1 : F) * rho 0 + (-1 : F) * rho 301) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step99 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),302)] * dotLC rho [((1 : F),0), ((-1 : F),302)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 302) * ((1 : F) * rho 0 + (-1 : F) * rho 302) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step100 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),303)] * dotLC rho [((1 : F),0), ((-1 : F),303)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 303) * ((1 : F) * rho 0 + (-1 : F) * rho 303) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step101 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),304)] * dotLC rho [((1 : F),0), ((-1 : F),304)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 304) * ((1 : F) * rho 0 + (-1 : F) * rho 304) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step102 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),305)] * dotLC rho [((1 : F),0), ((-1 : F),305)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 305) * ((1 : F) * rho 0 + (-1 : F) * rho 305) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step103 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),306)] * dotLC rho [((1 : F),0), ((-1 : F),306)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 306) * ((1 : F) * rho 0 + (-1 : F) * rho 306) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step104 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),307)] * dotLC rho [((1 : F),0), ((-1 : F),307)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 307) * ((1 : F) * rho 0 + (-1 : F) * rho 307) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step105 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),308)] * dotLC rho [((1 : F),0), ((-1 : F),308)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 308) * ((1 : F) * rho 0 + (-1 : F) * rho 308) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step106 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),309)] * dotLC rho [((1 : F),0), ((-1 : F),309)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 309) * ((1 : F) * rho 0 + (-1 : F) * rho 309) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step107 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),310)] * dotLC rho [((1 : F),0), ((-1 : F),310)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 310) * ((1 : F) * rho 0 + (-1 : F) * rho 310) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step108 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),311)] * dotLC rho [((1 : F),0), ((-1 : F),311)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 311) * ((1 : F) * rho 0 + (-1 : F) * rho 311) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step109 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),312)] * dotLC rho [((1 : F),0), ((-1 : F),312)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 312) * ((1 : F) * rho 0 + (-1 : F) * rho 312) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step110 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),313)] * dotLC rho [((1 : F),0), ((-1 : F),313)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 313) * ((1 : F) * rho 0 + (-1 : F) * rho 313) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step111 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),314)] * dotLC rho [((1 : F),0), ((-1 : F),314)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 314) * ((1 : F) * rho 0 + (-1 : F) * rho 314) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step112 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),315)] * dotLC rho [((1 : F),0), ((-1 : F),315)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 315) * ((1 : F) * rho 0 + (-1 : F) * rho 315) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step113 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),316)] * dotLC rho [((1 : F),0), ((-1 : F),316)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 316) * ((1 : F) * rho 0 + (-1 : F) * rho 316) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step114 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),317)] * dotLC rho [((1 : F),0), ((-1 : F),317)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 317) * ((1 : F) * rho 0 + (-1 : F) * rho 317) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step115 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),318)] * dotLC rho [((1 : F),0), ((-1 : F),318)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 318) * ((1 : F) * rho 0 + (-1 : F) * rho 318) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step116 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),319)] * dotLC rho [((1 : F),0), ((-1 : F),319)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 319) * ((1 : F) * rho 0 + (-1 : F) * rho 319) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step117 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),320)] * dotLC rho [((1 : F),0), ((-1 : F),320)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 320) * ((1 : F) * rho 0 + (-1 : F) * rho 320) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step118 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),321)] * dotLC rho [((1 : F),0), ((-1 : F),321)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 321) * ((1 : F) * rho 0 + (-1 : F) * rho 321) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step119 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),322)] * dotLC rho [((1 : F),0), ((-1 : F),322)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 322) * ((1 : F) * rho 0 + (-1 : F) * rho 322) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step120 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),323)] * dotLC rho [((1 : F),0), ((-1 : F),323)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 323) * ((1 : F) * rho 0 + (-1 : F) * rho 323) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step121 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),324)] * dotLC rho [((1 : F),0), ((-1 : F),324)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 324) * ((1 : F) * rho 0 + (-1 : F) * rho 324) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step122 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),325)] * dotLC rho [((1 : F),0), ((-1 : F),325)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 325) * ((1 : F) * rho 0 + (-1 : F) * rho 325) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step123 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),326)] * dotLC rho [((1 : F),0), ((-1 : F),326)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 326) * ((1 : F) * rho 0 + (-1 : F) * rho 326) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step124 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),327)] * dotLC rho [((1 : F),0), ((-1 : F),327)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 327) * ((1 : F) * rho 0 + (-1 : F) * rho 327) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step125 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),328)] * dotLC rho [((1 : F),0), ((-1 : F),328)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 328) * ((1 : F) * rho 0 + (-1 : F) * rho 328) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step126 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),329)] * dotLC rho [((1 : F),0), ((-1 : F),329)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 329) * ((1 : F) * rho 0 + (-1 : F) * rho 329) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step127 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),330)] * dotLC rho [((1 : F),0), ((-1 : F),330)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 330) * ((1 : F) * rho 0 + (-1 : F) * rho 330) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step128 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),331)] * dotLC rho [((1 : F),0), ((-1 : F),331)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 331) * ((1 : F) * rho 0 + (-1 : F) * rho 331) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step129 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),332)] * dotLC rho [((1 : F),0), ((-1 : F),332)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 332) * ((1 : F) * rho 0 + (-1 : F) * rho 332) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step130 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),333)] * dotLC rho [((1 : F),0), ((-1 : F),333)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 333) * ((1 : F) * rho 0 + (-1 : F) * rho 333) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step131 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),334)] * dotLC rho [((1 : F),0), ((-1 : F),334)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 334) * ((1 : F) * rho 0 + (-1 : F) * rho 334) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step132 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),335)] * dotLC rho [((1 : F),0), ((-1 : F),335)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 335) * ((1 : F) * rho 0 + (-1 : F) * rho 335) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step133 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),336)] * dotLC rho [((1 : F),0), ((-1 : F),336)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 336) * ((1 : F) * rho 0 + (-1 : F) * rho 336) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step134 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),337)] * dotLC rho [((1 : F),0), ((-1 : F),337)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 337) * ((1 : F) * rho 0 + (-1 : F) * rho 337) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step135 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),338)] * dotLC rho [((1 : F),0), ((-1 : F),338)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 338) * ((1 : F) * rho 0 + (-1 : F) * rho 338) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step136 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),339)] * dotLC rho [((1 : F),0), ((-1 : F),339)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 339) * ((1 : F) * rho 0 + (-1 : F) * rho 339) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step137 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),340)] * dotLC rho [((1 : F),0), ((-1 : F),340)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 340) * ((1 : F) * rho 0 + (-1 : F) * rho 340) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step138 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),341)] * dotLC rho [((1 : F),0), ((-1 : F),341)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 341) * ((1 : F) * rho 0 + (-1 : F) * rho 341) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step139 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),342)] * dotLC rho [((1 : F),0), ((-1 : F),342)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 342) * ((1 : F) * rho 0 + (-1 : F) * rho 342) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step140 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),343)] * dotLC rho [((1 : F),0), ((-1 : F),343)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 343) * ((1 : F) * rho 0 + (-1 : F) * rho 343) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step141 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),344)] * dotLC rho [((1 : F),0), ((-1 : F),344)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 344) * ((1 : F) * rho 0 + (-1 : F) * rho 344) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step142 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),345)] * dotLC rho [((1 : F),0), ((-1 : F),345)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 345) * ((1 : F) * rho 0 + (-1 : F) * rho 345) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step143 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),346)] * dotLC rho [((1 : F),0), ((-1 : F),346)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 346) * ((1 : F) * rho 0 + (-1 : F) * rho 346) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step144 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),347)] * dotLC rho [((1 : F),0), ((-1 : F),347)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 347) * ((1 : F) * rho 0 + (-1 : F) * rho 347) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step145 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),348)] * dotLC rho [((1 : F),0), ((-1 : F),348)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 348) * ((1 : F) * rho 0 + (-1 : F) * rho 348) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step146 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),349)] * dotLC rho [((1 : F),0), ((-1 : F),349)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 349) * ((1 : F) * rho 0 + (-1 : F) * rho 349) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step147 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),350)] * dotLC rho [((1 : F),0), ((-1 : F),350)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 350) * ((1 : F) * rho 0 + (-1 : F) * rho 350) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step148 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),351)] * dotLC rho [((1 : F),0), ((-1 : F),351)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 351) * ((1 : F) * rho 0 + (-1 : F) * rho 351) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step149 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),352)] * dotLC rho [((1 : F),0), ((-1 : F),352)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 352) * ((1 : F) * rho 0 + (-1 : F) * rho 352) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step150 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),353)] * dotLC rho [((1 : F),0), ((-1 : F),353)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 353) * ((1 : F) * rho 0 + (-1 : F) * rho 353) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step151 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),354)] * dotLC rho [((1 : F),0), ((-1 : F),354)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 354) * ((1 : F) * rho 0 + (-1 : F) * rho 354) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step152 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),355)] * dotLC rho [((1 : F),0), ((-1 : F),355)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 355) * ((1 : F) * rho 0 + (-1 : F) * rho 355) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step153 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),356)] * dotLC rho [((1 : F),0), ((-1 : F),356)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 356) * ((1 : F) * rho 0 + (-1 : F) * rho 356) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step154 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),357)] * dotLC rho [((1 : F),0), ((-1 : F),357)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 357) * ((1 : F) * rho 0 + (-1 : F) * rho 357) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step155 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),358)] * dotLC rho [((1 : F),0), ((-1 : F),358)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 358) * ((1 : F) * rho 0 + (-1 : F) * rho 358) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step156 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),359)] * dotLC rho [((1 : F),0), ((-1 : F),359)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 359) * ((1 : F) * rho 0 + (-1 : F) * rho 359) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step157 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),360)] * dotLC rho [((1 : F),0), ((-1 : F),360)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 360) * ((1 : F) * rho 0 + (-1 : F) * rho 360) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step158 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),361)] * dotLC rho [((1 : F),0), ((-1 : F),361)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 361) * ((1 : F) * rho 0 + (-1 : F) * rho 361) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step159 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),362)] * dotLC rho [((1 : F),0), ((-1 : F),362)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 362) * ((1 : F) * rho 0 + (-1 : F) * rho 362) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step160 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),363)] * dotLC rho [((1 : F),0), ((-1 : F),363)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 363) * ((1 : F) * rho 0 + (-1 : F) * rho 363) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step161 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),364)] * dotLC rho [((1 : F),0), ((-1 : F),364)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 364) * ((1 : F) * rho 0 + (-1 : F) * rho 364) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step162 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),365)] * dotLC rho [((1 : F),0), ((-1 : F),365)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 365) * ((1 : F) * rho 0 + (-1 : F) * rho 365) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step163 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),366)] * dotLC rho [((1 : F),0), ((-1 : F),366)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 366) * ((1 : F) * rho 0 + (-1 : F) * rho 366) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step164 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),367)] * dotLC rho [((1 : F),0), ((-1 : F),367)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 367) * ((1 : F) * rho 0 + (-1 : F) * rho 367) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step165 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),368)] * dotLC rho [((1 : F),0), ((-1 : F),368)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 368) * ((1 : F) * rho 0 + (-1 : F) * rho 368) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step166 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),369)] * dotLC rho [((1 : F),0), ((-1 : F),369)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 369) * ((1 : F) * rho 0 + (-1 : F) * rho 369) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step167 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),370)] * dotLC rho [((1 : F),0), ((-1 : F),370)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 370) * ((1 : F) * rho 0 + (-1 : F) * rho 370) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step168 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),371)] * dotLC rho [((1 : F),0), ((-1 : F),371)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 371) * ((1 : F) * rho 0 + (-1 : F) * rho 371) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step169 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),372)] * dotLC rho [((1 : F),0), ((-1 : F),372)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 372) * ((1 : F) * rho 0 + (-1 : F) * rho 372) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step170 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),373)] * dotLC rho [((1 : F),0), ((-1 : F),373)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 373) * ((1 : F) * rho 0 + (-1 : F) * rho 373) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step171 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),374)] * dotLC rho [((1 : F),0), ((-1 : F),374)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 374) * ((1 : F) * rho 0 + (-1 : F) * rho 374) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step172 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),375)] * dotLC rho [((1 : F),0), ((-1 : F),375)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 375) * ((1 : F) * rho 0 + (-1 : F) * rho 375) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step173 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),376)] * dotLC rho [((1 : F),0), ((-1 : F),376)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 376) * ((1 : F) * rho 0 + (-1 : F) * rho 376) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step174 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),377)] * dotLC rho [((1 : F),0), ((-1 : F),377)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 377) * ((1 : F) * rho 0 + (-1 : F) * rho 377) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step175 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),378)] * dotLC rho [((1 : F),0), ((-1 : F),378)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 378) * ((1 : F) * rho 0 + (-1 : F) * rho 378) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step176 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),379)] * dotLC rho [((1 : F),0), ((-1 : F),379)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 379) * ((1 : F) * rho 0 + (-1 : F) * rho 379) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step177 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),380)] * dotLC rho [((1 : F),0), ((-1 : F),380)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 380) * ((1 : F) * rho 0 + (-1 : F) * rho 380) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step178 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),381)] * dotLC rho [((1 : F),0), ((-1 : F),381)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 381) * ((1 : F) * rho 0 + (-1 : F) * rho 381) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step179 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),382)] * dotLC rho [((1 : F),0), ((-1 : F),382)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 382) * ((1 : F) * rho 0 + (-1 : F) * rho 382) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step180 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),383)] * dotLC rho [((1 : F),0), ((-1 : F),383)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 383) * ((1 : F) * rho 0 + (-1 : F) * rho 383) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step181 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),384)] * dotLC rho [((1 : F),0), ((-1 : F),384)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 384) * ((1 : F) * rho 0 + (-1 : F) * rho 384) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step182 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),385)] * dotLC rho [((1 : F),0), ((-1 : F),385)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 385) * ((1 : F) * rho 0 + (-1 : F) * rho 385) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step183 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),386)] * dotLC rho [((1 : F),0), ((-1 : F),386)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 386) * ((1 : F) * rho 0 + (-1 : F) * rho 386) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step184 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),387)] * dotLC rho [((1 : F),0), ((-1 : F),387)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 387) * ((1 : F) * rho 0 + (-1 : F) * rho 387) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step185 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),388)] * dotLC rho [((1 : F),0), ((-1 : F),388)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 388) * ((1 : F) * rho 0 + (-1 : F) * rho 388) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step186 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),389)] * dotLC rho [((1 : F),0), ((-1 : F),389)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 389) * ((1 : F) * rho 0 + (-1 : F) * rho 389) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step187 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),390)] * dotLC rho [((1 : F),0), ((-1 : F),390)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 390) * ((1 : F) * rho 0 + (-1 : F) * rho 390) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step188 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),391)] * dotLC rho [((1 : F),0), ((-1 : F),391)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 391) * ((1 : F) * rho 0 + (-1 : F) * rho 391) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step189 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),392)] * dotLC rho [((1 : F),0), ((-1 : F),392)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 392) * ((1 : F) * rho 0 + (-1 : F) * rho 392) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step190 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),393)] * dotLC rho [((1 : F),0), ((-1 : F),393)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 393) * ((1 : F) * rho 0 + (-1 : F) * rho 393) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step191 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),394)] * dotLC rho [((1 : F),0), ((-1 : F),394)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 394) * ((1 : F) * rho 0 + (-1 : F) * rho 394) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step192 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),395)] * dotLC rho [((1 : F),0), ((-1 : F),395)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 395) * ((1 : F) * rho 0 + (-1 : F) * rho 395) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step193 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),396)] * dotLC rho [((1 : F),0), ((-1 : F),396)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 396) * ((1 : F) * rho 0 + (-1 : F) * rho 396) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step194 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),397)] * dotLC rho [((1 : F),0), ((-1 : F),397)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 397) * ((1 : F) * rho 0 + (-1 : F) * rho 397) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step195 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),398)] * dotLC rho [((1 : F),0), ((-1 : F),398)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 398) * ((1 : F) * rho 0 + (-1 : F) * rho 398) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step196 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),399)] * dotLC rho [((1 : F),0), ((-1 : F),399)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 399) * ((1 : F) * rho 0 + (-1 : F) * rho 399) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step197 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),400)] * dotLC rho [((1 : F),0), ((-1 : F),400)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 400) * ((1 : F) * rho 0 + (-1 : F) * rho 400) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step198 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),401)] * dotLC rho [((1 : F),0), ((-1 : F),401)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 401) * ((1 : F) * rho 0 + (-1 : F) * rho 401) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step199 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),402)] * dotLC rho [((1 : F),0), ((-1 : F),402)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 402) * ((1 : F) * rho 0 + (-1 : F) * rho 402) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step200 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),403)] * dotLC rho [((1 : F),0), ((-1 : F),403)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 403) * ((1 : F) * rho 0 + (-1 : F) * rho 403) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step201 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),404)] * dotLC rho [((1 : F),0), ((-1 : F),404)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 404) * ((1 : F) * rho 0 + (-1 : F) * rho 404) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step202 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),405)] * dotLC rho [((1 : F),0), ((-1 : F),405)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 405) * ((1 : F) * rho 0 + (-1 : F) * rho 405) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step203 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),406)] * dotLC rho [((1 : F),0), ((-1 : F),406)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 406) * ((1 : F) * rho 0 + (-1 : F) * rho 406) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step204 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),407)] * dotLC rho [((1 : F),0), ((-1 : F),407)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 407) * ((1 : F) * rho 0 + (-1 : F) * rho 407) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step205 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),408)] * dotLC rho [((1 : F),0), ((-1 : F),408)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 408) * ((1 : F) * rho 0 + (-1 : F) * rho 408) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step206 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),409)] * dotLC rho [((1 : F),0), ((-1 : F),409)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 409) * ((1 : F) * rho 0 + (-1 : F) * rho 409) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step207 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),410)] * dotLC rho [((1 : F),0), ((-1 : F),410)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 410) * ((1 : F) * rho 0 + (-1 : F) * rho 410) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step208 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),411)] * dotLC rho [((1 : F),0), ((-1 : F),411)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 411) * ((1 : F) * rho 0 + (-1 : F) * rho 411) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step209 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),412)] * dotLC rho [((1 : F),0), ((-1 : F),412)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 412) * ((1 : F) * rho 0 + (-1 : F) * rho 412) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step210 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),413)] * dotLC rho [((1 : F),0), ((-1 : F),413)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 413) * ((1 : F) * rho 0 + (-1 : F) * rho 413) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step211 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),414)] * dotLC rho [((1 : F),0), ((-1 : F),414)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 414) * ((1 : F) * rho 0 + (-1 : F) * rho 414) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step212 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),415)] * dotLC rho [((1 : F),0), ((-1 : F),415)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 415) * ((1 : F) * rho 0 + (-1 : F) * rho 415) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step213 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),416)] * dotLC rho [((1 : F),0), ((-1 : F),416)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 416) * ((1 : F) * rho 0 + (-1 : F) * rho 416) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step214 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),417)] * dotLC rho [((1 : F),0), ((-1 : F),417)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 417) * ((1 : F) * rho 0 + (-1 : F) * rho 417) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step215 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),418)] * dotLC rho [((1 : F),0), ((-1 : F),418)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 418) * ((1 : F) * rho 0 + (-1 : F) * rho 418) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step216 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),419)] * dotLC rho [((1 : F),0), ((-1 : F),419)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 419) * ((1 : F) * rho 0 + (-1 : F) * rho 419) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step217 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),420)] * dotLC rho [((1 : F),0), ((-1 : F),420)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 420) * ((1 : F) * rho 0 + (-1 : F) * rho 420) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step218 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),421)] * dotLC rho [((1 : F),0), ((-1 : F),421)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 421) * ((1 : F) * rho 0 + (-1 : F) * rho 421) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step219 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),422)] * dotLC rho [((1 : F),0), ((-1 : F),422)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 422) * ((1 : F) * rho 0 + (-1 : F) * rho 422) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step220 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),423)] * dotLC rho [((1 : F),0), ((-1 : F),423)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 423) * ((1 : F) * rho 0 + (-1 : F) * rho 423) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step221 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),424)] * dotLC rho [((1 : F),0), ((-1 : F),424)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 424) * ((1 : F) * rho 0 + (-1 : F) * rho 424) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step222 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),425)] * dotLC rho [((1 : F),0), ((-1 : F),425)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 425) * ((1 : F) * rho 0 + (-1 : F) * rho 425) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step223 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),426)] * dotLC rho [((1 : F),0), ((-1 : F),426)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 426) * ((1 : F) * rho 0 + (-1 : F) * rho 426) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step224 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),427)] * dotLC rho [((1 : F),0), ((-1 : F),427)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 427) * ((1 : F) * rho 0 + (-1 : F) * rho 427) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step225 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),428)] * dotLC rho [((1 : F),0), ((-1 : F),428)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 428) * ((1 : F) * rho 0 + (-1 : F) * rho 428) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step226 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),429)] * dotLC rho [((1 : F),0), ((-1 : F),429)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 429) * ((1 : F) * rho 0 + (-1 : F) * rho 429) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step227 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),430)] * dotLC rho [((1 : F),0), ((-1 : F),430)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 430) * ((1 : F) * rho 0 + (-1 : F) * rho 430) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step228 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),431)] * dotLC rho [((1 : F),0), ((-1 : F),431)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 431) * ((1 : F) * rho 0 + (-1 : F) * rho 431) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step229 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),432)] * dotLC rho [((1 : F),0), ((-1 : F),432)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 432) * ((1 : F) * rho 0 + (-1 : F) * rho 432) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step230 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),433)] * dotLC rho [((1 : F),0), ((-1 : F),433)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 433) * ((1 : F) * rho 0 + (-1 : F) * rho 433) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step231 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),434)] * dotLC rho [((1 : F),0), ((-1 : F),434)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 434) * ((1 : F) * rho 0 + (-1 : F) * rho 434) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step232 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),435)] * dotLC rho [((1 : F),0), ((-1 : F),435)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 435) * ((1 : F) * rho 0 + (-1 : F) * rho 435) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step233 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),436)] * dotLC rho [((1 : F),0), ((-1 : F),436)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 436) * ((1 : F) * rho 0 + (-1 : F) * rho 436) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step234 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),437)] * dotLC rho [((1 : F),0), ((-1 : F),437)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 437) * ((1 : F) * rho 0 + (-1 : F) * rho 437) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step235 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),438)] * dotLC rho [((1 : F),0), ((-1 : F),438)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 438) * ((1 : F) * rho 0 + (-1 : F) * rho 438) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step236 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),439)] * dotLC rho [((1 : F),0), ((-1 : F),439)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 439) * ((1 : F) * rho 0 + (-1 : F) * rho 439) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step237 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),440)] * dotLC rho [((1 : F),0), ((-1 : F),440)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 440) * ((1 : F) * rho 0 + (-1 : F) * rho 440) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step238 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),441)] * dotLC rho [((1 : F),0), ((-1 : F),441)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 441) * ((1 : F) * rho 0 + (-1 : F) * rho 441) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step239 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),442)] * dotLC rho [((1 : F),0), ((-1 : F),442)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 442) * ((1 : F) * rho 0 + (-1 : F) * rho 442) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step240 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),443)] * dotLC rho [((1 : F),0), ((-1 : F),443)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 443) * ((1 : F) * rho 0 + (-1 : F) * rho 443) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step241 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),444)] * dotLC rho [((1 : F),0), ((-1 : F),444)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 444) * ((1 : F) * rho 0 + (-1 : F) * rho 444) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step242 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),445)] * dotLC rho [((1 : F),0), ((-1 : F),445)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 445) * ((1 : F) * rho 0 + (-1 : F) * rho 445) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step243 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),446)] * dotLC rho [((1 : F),0), ((-1 : F),446)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 446) * ((1 : F) * rho 0 + (-1 : F) * rho 446) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step244 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),447)] * dotLC rho [((1 : F),0), ((-1 : F),447)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 447) * ((1 : F) * rho 0 + (-1 : F) * rho 447) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step245 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),448)] * dotLC rho [((1 : F),0), ((-1 : F),448)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 448) * ((1 : F) * rho 0 + (-1 : F) * rho 448) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step246 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),449)] * dotLC rho [((1 : F),0), ((-1 : F),449)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 449) * ((1 : F) * rho 0 + (-1 : F) * rho 449) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step247 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),450)] * dotLC rho [((1 : F),0), ((-1 : F),450)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 450) * ((1 : F) * rho 0 + (-1 : F) * rho 450) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step248 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),451)] * dotLC rho [((1 : F),0), ((-1 : F),451)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 451) * ((1 : F) * rho 0 + (-1 : F) * rho 451) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step249 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),452)] * dotLC rho [((1 : F),0), ((-1 : F),452)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 452) * ((1 : F) * rho 0 + (-1 : F) * rho 452) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step250 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),453)] * dotLC rho [((1 : F),0), ((-1 : F),453)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 453) * ((1 : F) * rho 0 + (-1 : F) * rho 453) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step251 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),454)] * dotLC rho [((1 : F),0), ((-1 : F),454)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 454) * ((1 : F) * rho 0 + (-1 : F) * rho 454) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step252 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),455)] * dotLC rho [((1 : F),0), ((-1 : F),455)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 455) * ((1 : F) * rho 0 + (-1 : F) * rho 455) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step253 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),456)] * dotLC rho [((1 : F),0), ((-1 : F),456)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 456) * ((1 : F) * rho 0 + (-1 : F) * rho 456) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step254 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),457)] * dotLC rho [((1 : F),0), ((-1 : F),457)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 457) * ((1 : F) * rho 0 + (-1 : F) * rho 457) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step255 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),458)] * dotLC rho [((1 : F),0), ((-1 : F),458)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 458) * ((1 : F) * rho 0 + (-1 : F) * rho 458) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step256 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),459)] * dotLC rho [((1 : F),0), ((-1 : F),459)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 459) * ((1 : F) * rho 0 + (-1 : F) * rho 459) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step257 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),460)] * dotLC rho [((1 : F),0), ((-1 : F),460)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 460) * ((1 : F) * rho 0 + (-1 : F) * rho 460) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step258 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),461)] * dotLC rho [((1 : F),0), ((-1 : F),461)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 461) * ((1 : F) * rho 0 + (-1 : F) * rho 461) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step259 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),462)] * dotLC rho [((1 : F),0), ((-1 : F),462)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 462) * ((1 : F) * rho 0 + (-1 : F) * rho 462) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step260 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),463)] * dotLC rho [((1 : F),0), ((-1 : F),463)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 463) * ((1 : F) * rho 0 + (-1 : F) * rho 463) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step261 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),464)] * dotLC rho [((1 : F),0), ((-1 : F),464)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 464) * ((1 : F) * rho 0 + (-1 : F) * rho 464) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step262 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),465)] * dotLC rho [((1 : F),0), ((-1 : F),465)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 465) * ((1 : F) * rho 0 + (-1 : F) * rho 465) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step263 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),466)] * dotLC rho [((1 : F),0), ((-1 : F),466)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 466) * ((1 : F) * rho 0 + (-1 : F) * rho 466) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step264 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),467)] * dotLC rho [((1 : F),0), ((-1 : F),467)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 467) * ((1 : F) * rho 0 + (-1 : F) * rho 467) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step265 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),468)] * dotLC rho [((1 : F),0), ((-1 : F),468)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 468) * ((1 : F) * rho 0 + (-1 : F) * rho 468) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step266 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),469)] * dotLC rho [((1 : F),0), ((-1 : F),469)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 469) * ((1 : F) * rho 0 + (-1 : F) * rho 469) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step267 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),470)] * dotLC rho [((1 : F),0), ((-1 : F),470)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 470) * ((1 : F) * rho 0 + (-1 : F) * rho 470) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step268 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),471)] * dotLC rho [((1 : F),0), ((-1 : F),471)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 471) * ((1 : F) * rho 0 + (-1 : F) * rho 471) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step269 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),472)] * dotLC rho [((1 : F),0), ((-1 : F),472)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 472) * ((1 : F) * rho 0 + (-1 : F) * rho 472) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step270 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),473)] * dotLC rho [((1 : F),0), ((-1 : F),473)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 473) * ((1 : F) * rho 0 + (-1 : F) * rho 473) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step271 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),474)] * dotLC rho [((1 : F),0), ((-1 : F),474)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 474) * ((1 : F) * rho 0 + (-1 : F) * rho 474) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step272 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),475)] * dotLC rho [((1 : F),0), ((-1 : F),475)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 475) * ((1 : F) * rho 0 + (-1 : F) * rho 475) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step273 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),476)] * dotLC rho [((1 : F),0), ((-1 : F),476)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 476) * ((1 : F) * rho 0 + (-1 : F) * rho 476) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step274 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),477)] * dotLC rho [((1 : F),0), ((-1 : F),477)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 477) * ((1 : F) * rho 0 + (-1 : F) * rho 477) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step275 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),478)] * dotLC rho [((1 : F),0), ((-1 : F),478)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 478) * ((1 : F) * rho 0 + (-1 : F) * rho 478) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step276 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),479)] * dotLC rho [((1 : F),0), ((-1 : F),479)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 479) * ((1 : F) * rho 0 + (-1 : F) * rho 479) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step277 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),480)] * dotLC rho [((1 : F),0), ((-1 : F),480)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 480) * ((1 : F) * rho 0 + (-1 : F) * rho 480) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step278 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),481)] * dotLC rho [((1 : F),0), ((-1 : F),481)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 481) * ((1 : F) * rho 0 + (-1 : F) * rho 481) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step279 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),482)] * dotLC rho [((1 : F),0), ((-1 : F),482)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 482) * ((1 : F) * rho 0 + (-1 : F) * rho 482) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step280 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),483)] * dotLC rho [((1 : F),0), ((-1 : F),483)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 483) * ((1 : F) * rho 0 + (-1 : F) * rho 483) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step535 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),483)] * dotLC rho [((1 : F),480)] = dotLC rho [((1 : F),484)]) :
    ((1 : F) * rho 483) * ((1 : F) * rho 480) = ((1 : F) * rho 484) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step536 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),484)] * dotLC rho [((1 : F),478)] = dotLC rho [((1 : F),485)]) :
    ((1 : F) * rho 484) * ((1 : F) * rho 478) = ((1 : F) * rho 485) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step537 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),485)] * dotLC rho [((1 : F),476)] = dotLC rho [((1 : F),486)]) :
    ((1 : F) * rho 485) * ((1 : F) * rho 476) = ((1 : F) * rho 486) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step538 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),486)] * dotLC rho [((1 : F),474)] = dotLC rho [((1 : F),487)]) :
    ((1 : F) * rho 486) * ((1 : F) * rho 474) = ((1 : F) * rho 487) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step539 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),487)] * dotLC rho [((1 : F),472)] = dotLC rho [((1 : F),488)]) :
    ((1 : F) * rho 487) * ((1 : F) * rho 472) = ((1 : F) * rho 488) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step540 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),488)] * dotLC rho [((1 : F),471)] = dotLC rho [((1 : F),489)]) :
    ((1 : F) * rho 488) * ((1 : F) * rho 471) = ((1 : F) * rho 489) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step541 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),489)] * dotLC rho [((1 : F),469)] = dotLC rho [((1 : F),490)]) :
    ((1 : F) * rho 489) * ((1 : F) * rho 469) = ((1 : F) * rho 490) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step542 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),490)] * dotLC rho [((1 : F),468)] = dotLC rho [((1 : F),491)]) :
    ((1 : F) * rho 490) * ((1 : F) * rho 468) = ((1 : F) * rho 491) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step543 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),491)] * dotLC rho [((1 : F),465)] = dotLC rho [((1 : F),492)]) :
    ((1 : F) * rho 491) * ((1 : F) * rho 465) = ((1 : F) * rho 492) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step544 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),492)] * dotLC rho [((1 : F),463)] = dotLC rho [((1 : F),493)]) :
    ((1 : F) * rho 492) * ((1 : F) * rho 463) = ((1 : F) * rho 493) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step545 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),493)] * dotLC rho [((1 : F),461)] = dotLC rho [((1 : F),494)]) :
    ((1 : F) * rho 493) * ((1 : F) * rho 461) = ((1 : F) * rho 494) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step546 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),494)] * dotLC rho [((1 : F),459)] = dotLC rho [((1 : F),495)]) :
    ((1 : F) * rho 494) * ((1 : F) * rho 459) = ((1 : F) * rho 495) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step547 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),495)] * dotLC rho [((1 : F),458)] = dotLC rho [((1 : F),496)]) :
    ((1 : F) * rho 495) * ((1 : F) * rho 458) = ((1 : F) * rho 496) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step548 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),496)] * dotLC rho [((1 : F),457)] = dotLC rho [((1 : F),497)]) :
    ((1 : F) * rho 496) * ((1 : F) * rho 457) = ((1 : F) * rho 497) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step549 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),497)] * dotLC rho [((1 : F),456)] = dotLC rho [((1 : F),498)]) :
    ((1 : F) * rho 497) * ((1 : F) * rho 456) = ((1 : F) * rho 498) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step550 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),498)] * dotLC rho [((1 : F),454)] = dotLC rho [((1 : F),499)]) :
    ((1 : F) * rho 498) * ((1 : F) * rho 454) = ((1 : F) * rho 499) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step551 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),499)] * dotLC rho [((1 : F),451)] = dotLC rho [((1 : F),500)]) :
    ((1 : F) * rho 499) * ((1 : F) * rho 451) = ((1 : F) * rho 500) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step552 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),500)] * dotLC rho [((1 : F),450)] = dotLC rho [((1 : F),501)]) :
    ((1 : F) * rho 500) * ((1 : F) * rho 450) = ((1 : F) * rho 501) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step553 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),501)] * dotLC rho [((1 : F),448)] = dotLC rho [((1 : F),502)]) :
    ((1 : F) * rho 501) * ((1 : F) * rho 448) = ((1 : F) * rho 502) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step554 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),502)] * dotLC rho [((1 : F),444)] = dotLC rho [((1 : F),503)]) :
    ((1 : F) * rho 502) * ((1 : F) * rho 444) = ((1 : F) * rho 503) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step555 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),503)] * dotLC rho [((1 : F),442)] = dotLC rho [((1 : F),504)]) :
    ((1 : F) * rho 503) * ((1 : F) * rho 442) = ((1 : F) * rho 504) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step556 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),504)] * dotLC rho [((1 : F),441)] = dotLC rho [((1 : F),505)]) :
    ((1 : F) * rho 504) * ((1 : F) * rho 441) = ((1 : F) * rho 505) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step557 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),505)] * dotLC rho [((1 : F),438)] = dotLC rho [((1 : F),506)]) :
    ((1 : F) * rho 505) * ((1 : F) * rho 438) = ((1 : F) * rho 506) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step558 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),506)] * dotLC rho [((1 : F),436)] = dotLC rho [((1 : F),507)]) :
    ((1 : F) * rho 506) * ((1 : F) * rho 436) = ((1 : F) * rho 507) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step559 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),507)] * dotLC rho [((1 : F),433)] = dotLC rho [((1 : F),508)]) :
    ((1 : F) * rho 507) * ((1 : F) * rho 433) = ((1 : F) * rho 508) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step560 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),508)] * dotLC rho [((1 : F),431)] = dotLC rho [((1 : F),509)]) :
    ((1 : F) * rho 508) * ((1 : F) * rho 431) = ((1 : F) * rho 509) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step561 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),509)] * dotLC rho [((1 : F),429)] = dotLC rho [((1 : F),510)]) :
    ((1 : F) * rho 509) * ((1 : F) * rho 429) = ((1 : F) * rho 510) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step562 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),510)] * dotLC rho [((1 : F),427)] = dotLC rho [((1 : F),511)]) :
    ((1 : F) * rho 510) * ((1 : F) * rho 427) = ((1 : F) * rho 511) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step563 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),511)] * dotLC rho [((1 : F),425)] = dotLC rho [((1 : F),512)]) :
    ((1 : F) * rho 511) * ((1 : F) * rho 425) = ((1 : F) * rho 512) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step564 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),512)] * dotLC rho [((1 : F),424)] = dotLC rho [((1 : F),513)]) :
    ((1 : F) * rho 512) * ((1 : F) * rho 424) = ((1 : F) * rho 513) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step565 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),513)] * dotLC rho [((1 : F),421)] = dotLC rho [((1 : F),514)]) :
    ((1 : F) * rho 513) * ((1 : F) * rho 421) = ((1 : F) * rho 514) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step566 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),514)] * dotLC rho [((1 : F),420)] = dotLC rho [((1 : F),515)]) :
    ((1 : F) * rho 514) * ((1 : F) * rho 420) = ((1 : F) * rho 515) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step567 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),515)] * dotLC rho [((1 : F),414)] = dotLC rho [((1 : F),516)]) :
    ((1 : F) * rho 515) * ((1 : F) * rho 414) = ((1 : F) * rho 516) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step568 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),516)] * dotLC rho [((1 : F),412)] = dotLC rho [((1 : F),517)]) :
    ((1 : F) * rho 516) * ((1 : F) * rho 412) = ((1 : F) * rho 517) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step569 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),517)] * dotLC rho [((1 : F),411)] = dotLC rho [((1 : F),518)]) :
    ((1 : F) * rho 517) * ((1 : F) * rho 411) = ((1 : F) * rho 518) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step570 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),518)] * dotLC rho [((1 : F),409)] = dotLC rho [((1 : F),519)]) :
    ((1 : F) * rho 518) * ((1 : F) * rho 409) = ((1 : F) * rho 519) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step571 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),519)] * dotLC rho [((1 : F),405)] = dotLC rho [((1 : F),520)]) :
    ((1 : F) * rho 519) * ((1 : F) * rho 405) = ((1 : F) * rho 520) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step572 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),520)] * dotLC rho [((1 : F),402)] = dotLC rho [((1 : F),521)]) :
    ((1 : F) * rho 520) * ((1 : F) * rho 402) = ((1 : F) * rho 521) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step573 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),521)] * dotLC rho [((1 : F),401)] = dotLC rho [((1 : F),522)]) :
    ((1 : F) * rho 521) * ((1 : F) * rho 401) = ((1 : F) * rho 522) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step574 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),522)] * dotLC rho [((1 : F),399)] = dotLC rho [((1 : F),523)]) :
    ((1 : F) * rho 522) * ((1 : F) * rho 399) = ((1 : F) * rho 523) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step575 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),523)] * dotLC rho [((1 : F),395)] = dotLC rho [((1 : F),524)]) :
    ((1 : F) * rho 523) * ((1 : F) * rho 395) = ((1 : F) * rho 524) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step576 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),524)] * dotLC rho [((1 : F),394)] = dotLC rho [((1 : F),525)]) :
    ((1 : F) * rho 524) * ((1 : F) * rho 394) = ((1 : F) * rho 525) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step577 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),525)] * dotLC rho [((1 : F),393)] = dotLC rho [((1 : F),526)]) :
    ((1 : F) * rho 525) * ((1 : F) * rho 393) = ((1 : F) * rho 526) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step578 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),526)] * dotLC rho [((1 : F),392)] = dotLC rho [((1 : F),527)]) :
    ((1 : F) * rho 526) * ((1 : F) * rho 392) = ((1 : F) * rho 527) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step579 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),527)] * dotLC rho [((1 : F),389)] = dotLC rho [((1 : F),528)]) :
    ((1 : F) * rho 527) * ((1 : F) * rho 389) = ((1 : F) * rho 528) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step580 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),528)] * dotLC rho [((1 : F),387)] = dotLC rho [((1 : F),529)]) :
    ((1 : F) * rho 528) * ((1 : F) * rho 387) = ((1 : F) * rho 529) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step581 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),529)] * dotLC rho [((1 : F),386)] = dotLC rho [((1 : F),530)]) :
    ((1 : F) * rho 529) * ((1 : F) * rho 386) = ((1 : F) * rho 530) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step582 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),530)] * dotLC rho [((1 : F),385)] = dotLC rho [((1 : F),531)]) :
    ((1 : F) * rho 530) * ((1 : F) * rho 385) = ((1 : F) * rho 531) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step583 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),531)] * dotLC rho [((1 : F),380)] = dotLC rho [((1 : F),532)]) :
    ((1 : F) * rho 531) * ((1 : F) * rho 380) = ((1 : F) * rho 532) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step584 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),532)] * dotLC rho [((1 : F),379)] = dotLC rho [((1 : F),533)]) :
    ((1 : F) * rho 532) * ((1 : F) * rho 379) = ((1 : F) * rho 533) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step585 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),533)] * dotLC rho [((1 : F),377)] = dotLC rho [((1 : F),534)]) :
    ((1 : F) * rho 533) * ((1 : F) * rho 377) = ((1 : F) * rho 534) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step586 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),534)] * dotLC rho [((1 : F),376)] = dotLC rho [((1 : F),535)]) :
    ((1 : F) * rho 534) * ((1 : F) * rho 376) = ((1 : F) * rho 535) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step587 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),535)] * dotLC rho [((1 : F),375)] = dotLC rho [((1 : F),536)]) :
    ((1 : F) * rho 535) * ((1 : F) * rho 375) = ((1 : F) * rho 536) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step588 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),536)] * dotLC rho [((1 : F),374)] = dotLC rho [((1 : F),537)]) :
    ((1 : F) * rho 536) * ((1 : F) * rho 374) = ((1 : F) * rho 537) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step589 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),537)] * dotLC rho [((1 : F),372)] = dotLC rho [((1 : F),538)]) :
    ((1 : F) * rho 537) * ((1 : F) * rho 372) = ((1 : F) * rho 538) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step590 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),538)] * dotLC rho [((1 : F),371)] = dotLC rho [((1 : F),539)]) :
    ((1 : F) * rho 538) * ((1 : F) * rho 371) = ((1 : F) * rho 539) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step591 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),539)] * dotLC rho [((1 : F),359)] = dotLC rho [((1 : F),540)]) :
    ((1 : F) * rho 539) * ((1 : F) * rho 359) = ((1 : F) * rho 540) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step592 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),540)] * dotLC rho [((1 : F),357)] = dotLC rho [((1 : F),541)]) :
    ((1 : F) * rho 540) * ((1 : F) * rho 357) = ((1 : F) * rho 541) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step593 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),541)] * dotLC rho [((1 : F),355)] = dotLC rho [((1 : F),542)]) :
    ((1 : F) * rho 541) * ((1 : F) * rho 355) = ((1 : F) * rho 542) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step594 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),542)] * dotLC rho [((1 : F),354)] = dotLC rho [((1 : F),543)]) :
    ((1 : F) * rho 542) * ((1 : F) * rho 354) = ((1 : F) * rho 543) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step595 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),543)] * dotLC rho [((1 : F),351)] = dotLC rho [((1 : F),544)]) :
    ((1 : F) * rho 543) * ((1 : F) * rho 351) = ((1 : F) * rho 544) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step596 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),544)] * dotLC rho [((1 : F),350)] = dotLC rho [((1 : F),545)]) :
    ((1 : F) * rho 544) * ((1 : F) * rho 350) = ((1 : F) * rho 545) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step597 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),545)] * dotLC rho [((1 : F),348)] = dotLC rho [((1 : F),546)]) :
    ((1 : F) * rho 545) * ((1 : F) * rho 348) = ((1 : F) * rho 546) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step598 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),546)] * dotLC rho [((1 : F),346)] = dotLC rho [((1 : F),547)]) :
    ((1 : F) * rho 546) * ((1 : F) * rho 346) = ((1 : F) * rho 547) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step599 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),547)] * dotLC rho [((1 : F),344)] = dotLC rho [((1 : F),548)]) :
    ((1 : F) * rho 547) * ((1 : F) * rho 344) = ((1 : F) * rho 548) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step600 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),548)] * dotLC rho [((1 : F),341)] = dotLC rho [((1 : F),549)]) :
    ((1 : F) * rho 548) * ((1 : F) * rho 341) = ((1 : F) * rho 549) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step601 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),549)] * dotLC rho [((1 : F),340)] = dotLC rho [((1 : F),550)]) :
    ((1 : F) * rho 549) * ((1 : F) * rho 340) = ((1 : F) * rho 550) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step602 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),550)] * dotLC rho [((1 : F),339)] = dotLC rho [((1 : F),551)]) :
    ((1 : F) * rho 550) * ((1 : F) * rho 339) = ((1 : F) * rho 551) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step603 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),551)] * dotLC rho [((1 : F),337)] = dotLC rho [((1 : F),552)]) :
    ((1 : F) * rho 551) * ((1 : F) * rho 337) = ((1 : F) * rho 552) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step604 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),552)] * dotLC rho [((1 : F),336)] = dotLC rho [((1 : F),553)]) :
    ((1 : F) * rho 552) * ((1 : F) * rho 336) = ((1 : F) * rho 553) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step605 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),553)] * dotLC rho [((1 : F),334)] = dotLC rho [((1 : F),554)]) :
    ((1 : F) * rho 553) * ((1 : F) * rho 334) = ((1 : F) * rho 554) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step606 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),554)] * dotLC rho [((1 : F),333)] = dotLC rho [((1 : F),555)]) :
    ((1 : F) * rho 554) * ((1 : F) * rho 333) = ((1 : F) * rho 555) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step607 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),555)] * dotLC rho [((1 : F),332)] = dotLC rho [((1 : F),556)]) :
    ((1 : F) * rho 555) * ((1 : F) * rho 332) = ((1 : F) * rho 556) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step608 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),556)] * dotLC rho [((1 : F),331)] = dotLC rho [((1 : F),557)]) :
    ((1 : F) * rho 556) * ((1 : F) * rho 331) = ((1 : F) * rho 557) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step609 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),557)] * dotLC rho [((1 : F),330)] = dotLC rho [((1 : F),558)]) :
    ((1 : F) * rho 557) * ((1 : F) * rho 330) = ((1 : F) * rho 558) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step610 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),558)] * dotLC rho [((1 : F),329)] = dotLC rho [((1 : F),559)]) :
    ((1 : F) * rho 558) * ((1 : F) * rho 329) = ((1 : F) * rho 559) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step611 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),559)] * dotLC rho [((1 : F),328)] = dotLC rho [((1 : F),560)]) :
    ((1 : F) * rho 559) * ((1 : F) * rho 328) = ((1 : F) * rho 560) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step612 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),560)] * dotLC rho [((1 : F),326)] = dotLC rho [((1 : F),561)]) :
    ((1 : F) * rho 560) * ((1 : F) * rho 326) = ((1 : F) * rho 561) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step613 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),561)] * dotLC rho [((1 : F),325)] = dotLC rho [((1 : F),562)]) :
    ((1 : F) * rho 561) * ((1 : F) * rho 325) = ((1 : F) * rho 562) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step614 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),562)] * dotLC rho [((1 : F),323)] = dotLC rho [((1 : F),563)]) :
    ((1 : F) * rho 562) * ((1 : F) * rho 323) = ((1 : F) * rho 563) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step615 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),563)] * dotLC rho [((1 : F),295)] = dotLC rho [((1 : F),564)]) :
    ((1 : F) * rho 563) * ((1 : F) * rho 295) = ((1 : F) * rho 564) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step616 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),564)] * dotLC rho [((1 : F),290)] = dotLC rho [((1 : F),565)]) :
    ((1 : F) * rho 564) * ((1 : F) * rho 290) = ((1 : F) * rho 565) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step617 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),565)] * dotLC rho [((1 : F),288)] = dotLC rho [((1 : F),566)]) :
    ((1 : F) * rho 565) * ((1 : F) * rho 288) = ((1 : F) * rho 566) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step618 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),566)] * dotLC rho [((1 : F),283)] = dotLC rho [((1 : F),567)]) :
    ((1 : F) * rho 566) * ((1 : F) * rho 283) = ((1 : F) * rho 567) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step619 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),567)] * dotLC rho [((1 : F),279)] = dotLC rho [((1 : F),568)]) :
    ((1 : F) * rho 567) * ((1 : F) * rho 279) = ((1 : F) * rho 568) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step620 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),568)] * dotLC rho [((1 : F),278)] = dotLC rho [((1 : F),569)]) :
    ((1 : F) * rho 568) * ((1 : F) * rho 278) = ((1 : F) * rho 569) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step621 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),482)] * dotLC rho [((1 : F),0), ((-1 : F),482), ((-1 : F),483)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 482) * ((1 : F) * rho 0 + (-1 : F) * rho 482 + (-1 : F) * rho 483) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step622 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),481)] * dotLC rho [((1 : F),0), ((-1 : F),481), ((-1 : F),483)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 481) * ((1 : F) * rho 0 + (-1 : F) * rho 481 + (-1 : F) * rho 483) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step623 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),479)] * dotLC rho [((1 : F),0), ((-1 : F),479), ((-1 : F),484)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 479) * ((1 : F) * rho 0 + (-1 : F) * rho 479 + (-1 : F) * rho 484) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step624 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),477)] * dotLC rho [((1 : F),0), ((-1 : F),477), ((-1 : F),485)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 477) * ((1 : F) * rho 0 + (-1 : F) * rho 477 + (-1 : F) * rho 485) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step625 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),475)] * dotLC rho [((1 : F),0), ((-1 : F),475), ((-1 : F),486)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 475) * ((1 : F) * rho 0 + (-1 : F) * rho 475 + (-1 : F) * rho 486) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step626 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),473)] * dotLC rho [((1 : F),0), ((-1 : F),473), ((-1 : F),487)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 473) * ((1 : F) * rho 0 + (-1 : F) * rho 473 + (-1 : F) * rho 487) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step627 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),470)] * dotLC rho [((1 : F),0), ((-1 : F),470), ((-1 : F),489)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 470) * ((1 : F) * rho 0 + (-1 : F) * rho 470 + (-1 : F) * rho 489) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step628 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),467)] * dotLC rho [((1 : F),0), ((-1 : F),467), ((-1 : F),491)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 467) * ((1 : F) * rho 0 + (-1 : F) * rho 467 + (-1 : F) * rho 491) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step629 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),466)] * dotLC rho [((1 : F),0), ((-1 : F),466), ((-1 : F),491)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 466) * ((1 : F) * rho 0 + (-1 : F) * rho 466 + (-1 : F) * rho 491) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step630 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),464)] * dotLC rho [((1 : F),0), ((-1 : F),464), ((-1 : F),492)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 464) * ((1 : F) * rho 0 + (-1 : F) * rho 464 + (-1 : F) * rho 492) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step631 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),462)] * dotLC rho [((1 : F),0), ((-1 : F),462), ((-1 : F),493)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 462) * ((1 : F) * rho 0 + (-1 : F) * rho 462 + (-1 : F) * rho 493) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step632 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),460)] * dotLC rho [((1 : F),0), ((-1 : F),460), ((-1 : F),494)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 460) * ((1 : F) * rho 0 + (-1 : F) * rho 460 + (-1 : F) * rho 494) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step633 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),455)] * dotLC rho [((1 : F),0), ((-1 : F),455), ((-1 : F),498)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 455) * ((1 : F) * rho 0 + (-1 : F) * rho 455 + (-1 : F) * rho 498) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step634 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),453)] * dotLC rho [((1 : F),0), ((-1 : F),453), ((-1 : F),499)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 453) * ((1 : F) * rho 0 + (-1 : F) * rho 453 + (-1 : F) * rho 499) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step635 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),452)] * dotLC rho [((1 : F),0), ((-1 : F),452), ((-1 : F),499)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 452) * ((1 : F) * rho 0 + (-1 : F) * rho 452 + (-1 : F) * rho 499) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step636 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),449)] * dotLC rho [((1 : F),0), ((-1 : F),449), ((-1 : F),501)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 449) * ((1 : F) * rho 0 + (-1 : F) * rho 449 + (-1 : F) * rho 501) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step637 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),447)] * dotLC rho [((1 : F),0), ((-1 : F),447), ((-1 : F),502)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 447) * ((1 : F) * rho 0 + (-1 : F) * rho 447 + (-1 : F) * rho 502) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step638 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),446)] * dotLC rho [((1 : F),0), ((-1 : F),446), ((-1 : F),502)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 446) * ((1 : F) * rho 0 + (-1 : F) * rho 446 + (-1 : F) * rho 502) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step639 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),445)] * dotLC rho [((1 : F),0), ((-1 : F),445), ((-1 : F),502)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 445) * ((1 : F) * rho 0 + (-1 : F) * rho 445 + (-1 : F) * rho 502) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step640 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),443)] * dotLC rho [((1 : F),0), ((-1 : F),443), ((-1 : F),503)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 443) * ((1 : F) * rho 0 + (-1 : F) * rho 443 + (-1 : F) * rho 503) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step641 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),440)] * dotLC rho [((1 : F),0), ((-1 : F),440), ((-1 : F),505)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 440) * ((1 : F) * rho 0 + (-1 : F) * rho 440 + (-1 : F) * rho 505) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step642 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),439)] * dotLC rho [((1 : F),0), ((-1 : F),439), ((-1 : F),505)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 439) * ((1 : F) * rho 0 + (-1 : F) * rho 439 + (-1 : F) * rho 505) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step643 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),437)] * dotLC rho [((1 : F),0), ((-1 : F),437), ((-1 : F),506)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 437) * ((1 : F) * rho 0 + (-1 : F) * rho 437 + (-1 : F) * rho 506) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step644 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),435)] * dotLC rho [((1 : F),0), ((-1 : F),435), ((-1 : F),507)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 435) * ((1 : F) * rho 0 + (-1 : F) * rho 435 + (-1 : F) * rho 507) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step645 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),434)] * dotLC rho [((1 : F),0), ((-1 : F),434), ((-1 : F),507)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 434) * ((1 : F) * rho 0 + (-1 : F) * rho 434 + (-1 : F) * rho 507) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step646 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),432)] * dotLC rho [((1 : F),0), ((-1 : F),432), ((-1 : F),508)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 432) * ((1 : F) * rho 0 + (-1 : F) * rho 432 + (-1 : F) * rho 508) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step647 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),430)] * dotLC rho [((1 : F),0), ((-1 : F),430), ((-1 : F),509)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 430) * ((1 : F) * rho 0 + (-1 : F) * rho 430 + (-1 : F) * rho 509) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step648 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),428)] * dotLC rho [((1 : F),0), ((-1 : F),428), ((-1 : F),510)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 428) * ((1 : F) * rho 0 + (-1 : F) * rho 428 + (-1 : F) * rho 510) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step649 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),426)] * dotLC rho [((1 : F),0), ((-1 : F),426), ((-1 : F),511)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 426) * ((1 : F) * rho 0 + (-1 : F) * rho 426 + (-1 : F) * rho 511) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step650 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),423)] * dotLC rho [((1 : F),0), ((-1 : F),423), ((-1 : F),513)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 423) * ((1 : F) * rho 0 + (-1 : F) * rho 423 + (-1 : F) * rho 513) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step651 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),422)] * dotLC rho [((1 : F),0), ((-1 : F),422), ((-1 : F),513)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 422) * ((1 : F) * rho 0 + (-1 : F) * rho 422 + (-1 : F) * rho 513) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step652 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),419)] * dotLC rho [((1 : F),0), ((-1 : F),419), ((-1 : F),515)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 419) * ((1 : F) * rho 0 + (-1 : F) * rho 419 + (-1 : F) * rho 515) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step653 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),418)] * dotLC rho [((1 : F),0), ((-1 : F),418), ((-1 : F),515)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 418) * ((1 : F) * rho 0 + (-1 : F) * rho 418 + (-1 : F) * rho 515) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step654 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),417)] * dotLC rho [((1 : F),0), ((-1 : F),417), ((-1 : F),515)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 417) * ((1 : F) * rho 0 + (-1 : F) * rho 417 + (-1 : F) * rho 515) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step655 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),416)] * dotLC rho [((1 : F),0), ((-1 : F),416), ((-1 : F),515)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 416) * ((1 : F) * rho 0 + (-1 : F) * rho 416 + (-1 : F) * rho 515) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step656 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),415)] * dotLC rho [((1 : F),0), ((-1 : F),415), ((-1 : F),515)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 415) * ((1 : F) * rho 0 + (-1 : F) * rho 415 + (-1 : F) * rho 515) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step657 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),413)] * dotLC rho [((1 : F),0), ((-1 : F),413), ((-1 : F),516)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 413) * ((1 : F) * rho 0 + (-1 : F) * rho 413 + (-1 : F) * rho 516) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step658 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),410)] * dotLC rho [((1 : F),0), ((-1 : F),410), ((-1 : F),518)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 410) * ((1 : F) * rho 0 + (-1 : F) * rho 410 + (-1 : F) * rho 518) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step659 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),408)] * dotLC rho [((1 : F),0), ((-1 : F),408), ((-1 : F),519)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 408) * ((1 : F) * rho 0 + (-1 : F) * rho 408 + (-1 : F) * rho 519) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step660 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),407)] * dotLC rho [((1 : F),0), ((-1 : F),407), ((-1 : F),519)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 407) * ((1 : F) * rho 0 + (-1 : F) * rho 407 + (-1 : F) * rho 519) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step661 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),406)] * dotLC rho [((1 : F),0), ((-1 : F),406), ((-1 : F),519)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 406) * ((1 : F) * rho 0 + (-1 : F) * rho 406 + (-1 : F) * rho 519) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step662 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),404)] * dotLC rho [((1 : F),0), ((-1 : F),404), ((-1 : F),520)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 404) * ((1 : F) * rho 0 + (-1 : F) * rho 404 + (-1 : F) * rho 520) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step663 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),403)] * dotLC rho [((1 : F),0), ((-1 : F),403), ((-1 : F),520)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 403) * ((1 : F) * rho 0 + (-1 : F) * rho 403 + (-1 : F) * rho 520) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step664 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),400)] * dotLC rho [((1 : F),0), ((-1 : F),400), ((-1 : F),522)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 400) * ((1 : F) * rho 0 + (-1 : F) * rho 400 + (-1 : F) * rho 522) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step665 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),398)] * dotLC rho [((1 : F),0), ((-1 : F),398), ((-1 : F),523)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 398) * ((1 : F) * rho 0 + (-1 : F) * rho 398 + (-1 : F) * rho 523) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step666 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),397)] * dotLC rho [((1 : F),0), ((-1 : F),397), ((-1 : F),523)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 397) * ((1 : F) * rho 0 + (-1 : F) * rho 397 + (-1 : F) * rho 523) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step667 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),396)] * dotLC rho [((1 : F),0), ((-1 : F),396), ((-1 : F),523)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 396) * ((1 : F) * rho 0 + (-1 : F) * rho 396 + (-1 : F) * rho 523) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step668 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),391)] * dotLC rho [((1 : F),0), ((-1 : F),391), ((-1 : F),527)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 391) * ((1 : F) * rho 0 + (-1 : F) * rho 391 + (-1 : F) * rho 527) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step669 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),390)] * dotLC rho [((1 : F),0), ((-1 : F),390), ((-1 : F),527)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 390) * ((1 : F) * rho 0 + (-1 : F) * rho 390 + (-1 : F) * rho 527) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step670 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),388)] * dotLC rho [((1 : F),0), ((-1 : F),388), ((-1 : F),528)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 388) * ((1 : F) * rho 0 + (-1 : F) * rho 388 + (-1 : F) * rho 528) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step671 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),384)] * dotLC rho [((1 : F),0), ((-1 : F),384), ((-1 : F),531)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 384) * ((1 : F) * rho 0 + (-1 : F) * rho 384 + (-1 : F) * rho 531) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step672 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),383)] * dotLC rho [((1 : F),0), ((-1 : F),383), ((-1 : F),531)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 383) * ((1 : F) * rho 0 + (-1 : F) * rho 383 + (-1 : F) * rho 531) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step673 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),382)] * dotLC rho [((1 : F),0), ((-1 : F),382), ((-1 : F),531)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 382) * ((1 : F) * rho 0 + (-1 : F) * rho 382 + (-1 : F) * rho 531) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step674 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),381)] * dotLC rho [((1 : F),0), ((-1 : F),381), ((-1 : F),531)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 381) * ((1 : F) * rho 0 + (-1 : F) * rho 381 + (-1 : F) * rho 531) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step675 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),378)] * dotLC rho [((1 : F),0), ((-1 : F),378), ((-1 : F),533)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 378) * ((1 : F) * rho 0 + (-1 : F) * rho 378 + (-1 : F) * rho 533) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step676 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),373)] * dotLC rho [((1 : F),0), ((-1 : F),373), ((-1 : F),537)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 373) * ((1 : F) * rho 0 + (-1 : F) * rho 373 + (-1 : F) * rho 537) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step677 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),370)] * dotLC rho [((1 : F),0), ((-1 : F),370), ((-1 : F),539)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 370) * ((1 : F) * rho 0 + (-1 : F) * rho 370 + (-1 : F) * rho 539) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step678 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),369)] * dotLC rho [((1 : F),0), ((-1 : F),369), ((-1 : F),539)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 369) * ((1 : F) * rho 0 + (-1 : F) * rho 369 + (-1 : F) * rho 539) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step679 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),368)] * dotLC rho [((1 : F),0), ((-1 : F),368), ((-1 : F),539)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 368) * ((1 : F) * rho 0 + (-1 : F) * rho 368 + (-1 : F) * rho 539) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step680 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),367)] * dotLC rho [((1 : F),0), ((-1 : F),367), ((-1 : F),539)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 367) * ((1 : F) * rho 0 + (-1 : F) * rho 367 + (-1 : F) * rho 539) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step681 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),366)] * dotLC rho [((1 : F),0), ((-1 : F),366), ((-1 : F),539)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 366) * ((1 : F) * rho 0 + (-1 : F) * rho 366 + (-1 : F) * rho 539) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step682 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),365)] * dotLC rho [((1 : F),0), ((-1 : F),365), ((-1 : F),539)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 365) * ((1 : F) * rho 0 + (-1 : F) * rho 365 + (-1 : F) * rho 539) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step683 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),364)] * dotLC rho [((1 : F),0), ((-1 : F),364), ((-1 : F),539)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 364) * ((1 : F) * rho 0 + (-1 : F) * rho 364 + (-1 : F) * rho 539) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step684 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),363)] * dotLC rho [((1 : F),0), ((-1 : F),363), ((-1 : F),539)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 363) * ((1 : F) * rho 0 + (-1 : F) * rho 363 + (-1 : F) * rho 539) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step685 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),362)] * dotLC rho [((1 : F),0), ((-1 : F),362), ((-1 : F),539)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 362) * ((1 : F) * rho 0 + (-1 : F) * rho 362 + (-1 : F) * rho 539) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step686 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),361)] * dotLC rho [((1 : F),0), ((-1 : F),361), ((-1 : F),539)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 361) * ((1 : F) * rho 0 + (-1 : F) * rho 361 + (-1 : F) * rho 539) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step687 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),360)] * dotLC rho [((1 : F),0), ((-1 : F),360), ((-1 : F),539)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 360) * ((1 : F) * rho 0 + (-1 : F) * rho 360 + (-1 : F) * rho 539) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step688 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),358)] * dotLC rho [((1 : F),0), ((-1 : F),358), ((-1 : F),540)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 358) * ((1 : F) * rho 0 + (-1 : F) * rho 358 + (-1 : F) * rho 540) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step689 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),356)] * dotLC rho [((1 : F),0), ((-1 : F),356), ((-1 : F),541)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 356) * ((1 : F) * rho 0 + (-1 : F) * rho 356 + (-1 : F) * rho 541) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step690 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),353)] * dotLC rho [((1 : F),0), ((-1 : F),353), ((-1 : F),543)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 353) * ((1 : F) * rho 0 + (-1 : F) * rho 353 + (-1 : F) * rho 543) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step691 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),352)] * dotLC rho [((1 : F),0), ((-1 : F),352), ((-1 : F),543)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 352) * ((1 : F) * rho 0 + (-1 : F) * rho 352 + (-1 : F) * rho 543) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step692 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),349)] * dotLC rho [((1 : F),0), ((-1 : F),349), ((-1 : F),545)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 349) * ((1 : F) * rho 0 + (-1 : F) * rho 349 + (-1 : F) * rho 545) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step693 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),347)] * dotLC rho [((1 : F),0), ((-1 : F),347), ((-1 : F),546)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 347) * ((1 : F) * rho 0 + (-1 : F) * rho 347 + (-1 : F) * rho 546) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step694 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),345)] * dotLC rho [((1 : F),0), ((-1 : F),345), ((-1 : F),547)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 345) * ((1 : F) * rho 0 + (-1 : F) * rho 345 + (-1 : F) * rho 547) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step695 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),343)] * dotLC rho [((1 : F),0), ((-1 : F),343), ((-1 : F),548)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 343) * ((1 : F) * rho 0 + (-1 : F) * rho 343 + (-1 : F) * rho 548) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step696 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),342)] * dotLC rho [((1 : F),0), ((-1 : F),342), ((-1 : F),548)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 342) * ((1 : F) * rho 0 + (-1 : F) * rho 342 + (-1 : F) * rho 548) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step697 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),338)] * dotLC rho [((1 : F),0), ((-1 : F),338), ((-1 : F),551)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 338) * ((1 : F) * rho 0 + (-1 : F) * rho 338 + (-1 : F) * rho 551) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step698 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),335)] * dotLC rho [((1 : F),0), ((-1 : F),335), ((-1 : F),553)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 335) * ((1 : F) * rho 0 + (-1 : F) * rho 335 + (-1 : F) * rho 553) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step699 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),327)] * dotLC rho [((1 : F),0), ((-1 : F),327), ((-1 : F),560)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 327) * ((1 : F) * rho 0 + (-1 : F) * rho 327 + (-1 : F) * rho 560) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step700 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),324)] * dotLC rho [((1 : F),0), ((-1 : F),324), ((-1 : F),562)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 324) * ((1 : F) * rho 0 + (-1 : F) * rho 324 + (-1 : F) * rho 562) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step701 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),322)] * dotLC rho [((1 : F),0), ((-1 : F),322), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 322) * ((1 : F) * rho 0 + (-1 : F) * rho 322 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step702 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),321)] * dotLC rho [((1 : F),0), ((-1 : F),321), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 321) * ((1 : F) * rho 0 + (-1 : F) * rho 321 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step703 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),320)] * dotLC rho [((1 : F),0), ((-1 : F),320), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 320) * ((1 : F) * rho 0 + (-1 : F) * rho 320 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step704 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),319)] * dotLC rho [((1 : F),0), ((-1 : F),319), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 319) * ((1 : F) * rho 0 + (-1 : F) * rho 319 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step705 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),318)] * dotLC rho [((1 : F),0), ((-1 : F),318), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 318) * ((1 : F) * rho 0 + (-1 : F) * rho 318 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step706 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),317)] * dotLC rho [((1 : F),0), ((-1 : F),317), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 317) * ((1 : F) * rho 0 + (-1 : F) * rho 317 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step707 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),316)] * dotLC rho [((1 : F),0), ((-1 : F),316), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 316) * ((1 : F) * rho 0 + (-1 : F) * rho 316 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step708 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),315)] * dotLC rho [((1 : F),0), ((-1 : F),315), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 315) * ((1 : F) * rho 0 + (-1 : F) * rho 315 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step709 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),314)] * dotLC rho [((1 : F),0), ((-1 : F),314), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 314) * ((1 : F) * rho 0 + (-1 : F) * rho 314 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step710 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),313)] * dotLC rho [((1 : F),0), ((-1 : F),313), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 313) * ((1 : F) * rho 0 + (-1 : F) * rho 313 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step711 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),312)] * dotLC rho [((1 : F),0), ((-1 : F),312), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 312) * ((1 : F) * rho 0 + (-1 : F) * rho 312 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step712 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),311)] * dotLC rho [((1 : F),0), ((-1 : F),311), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 311) * ((1 : F) * rho 0 + (-1 : F) * rho 311 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step713 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),310)] * dotLC rho [((1 : F),0), ((-1 : F),310), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 310) * ((1 : F) * rho 0 + (-1 : F) * rho 310 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step714 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),309)] * dotLC rho [((1 : F),0), ((-1 : F),309), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 309) * ((1 : F) * rho 0 + (-1 : F) * rho 309 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step715 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),308)] * dotLC rho [((1 : F),0), ((-1 : F),308), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 308) * ((1 : F) * rho 0 + (-1 : F) * rho 308 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step716 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),307)] * dotLC rho [((1 : F),0), ((-1 : F),307), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 307) * ((1 : F) * rho 0 + (-1 : F) * rho 307 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step717 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),306)] * dotLC rho [((1 : F),0), ((-1 : F),306), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 306) * ((1 : F) * rho 0 + (-1 : F) * rho 306 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step718 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),305)] * dotLC rho [((1 : F),0), ((-1 : F),305), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 305) * ((1 : F) * rho 0 + (-1 : F) * rho 305 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step719 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),304)] * dotLC rho [((1 : F),0), ((-1 : F),304), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 304) * ((1 : F) * rho 0 + (-1 : F) * rho 304 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step720 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),303)] * dotLC rho [((1 : F),0), ((-1 : F),303), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 303) * ((1 : F) * rho 0 + (-1 : F) * rho 303 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step721 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),302)] * dotLC rho [((1 : F),0), ((-1 : F),302), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 302) * ((1 : F) * rho 0 + (-1 : F) * rho 302 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step722 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),301)] * dotLC rho [((1 : F),0), ((-1 : F),301), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 301) * ((1 : F) * rho 0 + (-1 : F) * rho 301 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step723 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),300)] * dotLC rho [((1 : F),0), ((-1 : F),300), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 300) * ((1 : F) * rho 0 + (-1 : F) * rho 300 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step724 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),299)] * dotLC rho [((1 : F),0), ((-1 : F),299), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 299) * ((1 : F) * rho 0 + (-1 : F) * rho 299 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step725 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),298)] * dotLC rho [((1 : F),0), ((-1 : F),298), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 298) * ((1 : F) * rho 0 + (-1 : F) * rho 298 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step726 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),297)] * dotLC rho [((1 : F),0), ((-1 : F),297), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 297) * ((1 : F) * rho 0 + (-1 : F) * rho 297 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step727 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),296)] * dotLC rho [((1 : F),0), ((-1 : F),296), ((-1 : F),563)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 296) * ((1 : F) * rho 0 + (-1 : F) * rho 296 + (-1 : F) * rho 563) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step728 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),294)] * dotLC rho [((1 : F),0), ((-1 : F),294), ((-1 : F),564)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 294) * ((1 : F) * rho 0 + (-1 : F) * rho 294 + (-1 : F) * rho 564) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step729 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),293)] * dotLC rho [((1 : F),0), ((-1 : F),293), ((-1 : F),564)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 293) * ((1 : F) * rho 0 + (-1 : F) * rho 293 + (-1 : F) * rho 564) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step730 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),292)] * dotLC rho [((1 : F),0), ((-1 : F),292), ((-1 : F),564)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 292) * ((1 : F) * rho 0 + (-1 : F) * rho 292 + (-1 : F) * rho 564) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step731 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),291)] * dotLC rho [((1 : F),0), ((-1 : F),291), ((-1 : F),564)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 291) * ((1 : F) * rho 0 + (-1 : F) * rho 291 + (-1 : F) * rho 564) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step732 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),289)] * dotLC rho [((1 : F),0), ((-1 : F),289), ((-1 : F),565)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 289) * ((1 : F) * rho 0 + (-1 : F) * rho 289 + (-1 : F) * rho 565) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step733 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),287)] * dotLC rho [((1 : F),0), ((-1 : F),287), ((-1 : F),566)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 287) * ((1 : F) * rho 0 + (-1 : F) * rho 287 + (-1 : F) * rho 566) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step734 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),286)] * dotLC rho [((1 : F),0), ((-1 : F),286), ((-1 : F),566)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 286) * ((1 : F) * rho 0 + (-1 : F) * rho 286 + (-1 : F) * rho 566) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step735 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),285)] * dotLC rho [((1 : F),0), ((-1 : F),285), ((-1 : F),566)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 285) * ((1 : F) * rho 0 + (-1 : F) * rho 285 + (-1 : F) * rho 566) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step736 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),284)] * dotLC rho [((1 : F),0), ((-1 : F),284), ((-1 : F),566)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 284) * ((1 : F) * rho 0 + (-1 : F) * rho 284 + (-1 : F) * rho 566) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step737 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),282)] * dotLC rho [((1 : F),0), ((-1 : F),282), ((-1 : F),567)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 282) * ((1 : F) * rho 0 + (-1 : F) * rho 282 + (-1 : F) * rho 567) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step738 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),281)] * dotLC rho [((1 : F),0), ((-1 : F),281), ((-1 : F),567)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 281) * ((1 : F) * rho 0 + (-1 : F) * rho 281 + (-1 : F) * rho 567) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step739 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),280)] * dotLC rho [((1 : F),0), ((-1 : F),280), ((-1 : F),567)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 280) * ((1 : F) * rho 0 + (-1 : F) * rho 280 + (-1 : F) * rho 567) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step740 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),277)] * dotLC rho [((1 : F),0), ((-1 : F),277), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 277) * ((1 : F) * rho 0 + (-1 : F) * rho 277 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step741 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),276)] * dotLC rho [((1 : F),0), ((-1 : F),276), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 276) * ((1 : F) * rho 0 + (-1 : F) * rho 276 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step742 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),275)] * dotLC rho [((1 : F),0), ((-1 : F),275), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 275) * ((1 : F) * rho 0 + (-1 : F) * rho 275 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step743 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),274)] * dotLC rho [((1 : F),0), ((-1 : F),274), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 274) * ((1 : F) * rho 0 + (-1 : F) * rho 274 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step744 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),273)] * dotLC rho [((1 : F),0), ((-1 : F),273), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 273) * ((1 : F) * rho 0 + (-1 : F) * rho 273 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step745 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),272)] * dotLC rho [((1 : F),0), ((-1 : F),272), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 272) * ((1 : F) * rho 0 + (-1 : F) * rho 272 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step746 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),271)] * dotLC rho [((1 : F),0), ((-1 : F),271), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 271) * ((1 : F) * rho 0 + (-1 : F) * rho 271 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step747 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),270)] * dotLC rho [((1 : F),0), ((-1 : F),270), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 270) * ((1 : F) * rho 0 + (-1 : F) * rho 270 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step748 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),269)] * dotLC rho [((1 : F),0), ((-1 : F),269), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 269) * ((1 : F) * rho 0 + (-1 : F) * rho 269 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step749 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),268)] * dotLC rho [((1 : F),0), ((-1 : F),268), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 268) * ((1 : F) * rho 0 + (-1 : F) * rho 268 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step750 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),267)] * dotLC rho [((1 : F),0), ((-1 : F),267), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 267) * ((1 : F) * rho 0 + (-1 : F) * rho 267 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step751 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),266)] * dotLC rho [((1 : F),0), ((-1 : F),266), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 266) * ((1 : F) * rho 0 + (-1 : F) * rho 266 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step752 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),265)] * dotLC rho [((1 : F),0), ((-1 : F),265), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 265) * ((1 : F) * rho 0 + (-1 : F) * rho 265 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step753 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),264)] * dotLC rho [((1 : F),0), ((-1 : F),264), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 264) * ((1 : F) * rho 0 + (-1 : F) * rho 264 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step754 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),263)] * dotLC rho [((1 : F),0), ((-1 : F),263), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 263) * ((1 : F) * rho 0 + (-1 : F) * rho 263 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step755 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),262)] * dotLC rho [((1 : F),0), ((-1 : F),262), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 262) * ((1 : F) * rho 0 + (-1 : F) * rho 262 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step756 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),261)] * dotLC rho [((1 : F),0), ((-1 : F),261), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 261) * ((1 : F) * rho 0 + (-1 : F) * rho 261 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step757 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),260)] * dotLC rho [((1 : F),0), ((-1 : F),260), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 260) * ((1 : F) * rho 0 + (-1 : F) * rho 260 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step758 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),259)] * dotLC rho [((1 : F),0), ((-1 : F),259), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 259) * ((1 : F) * rho 0 + (-1 : F) * rho 259 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step759 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),258)] * dotLC rho [((1 : F),0), ((-1 : F),258), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 258) * ((1 : F) * rho 0 + (-1 : F) * rho 258 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step760 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),257)] * dotLC rho [((1 : F),0), ((-1 : F),257), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 257) * ((1 : F) * rho 0 + (-1 : F) * rho 257 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step761 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),256)] * dotLC rho [((1 : F),0), ((-1 : F),256), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 256) * ((1 : F) * rho 0 + (-1 : F) * rho 256 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step762 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),255)] * dotLC rho [((1 : F),0), ((-1 : F),255), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 255) * ((1 : F) * rho 0 + (-1 : F) * rho 255 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step763 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),254)] * dotLC rho [((1 : F),0), ((-1 : F),254), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 254) * ((1 : F) * rho 0 + (-1 : F) * rho 254 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step764 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),253)] * dotLC rho [((1 : F),0), ((-1 : F),253), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 253) * ((1 : F) * rho 0 + (-1 : F) * rho 253 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step765 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),252)] * dotLC rho [((1 : F),0), ((-1 : F),252), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 252) * ((1 : F) * rho 0 + (-1 : F) * rho 252 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step766 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),251)] * dotLC rho [((1 : F),0), ((-1 : F),251), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 251) * ((1 : F) * rho 0 + (-1 : F) * rho 251 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step767 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),250)] * dotLC rho [((1 : F),0), ((-1 : F),250), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 250) * ((1 : F) * rho 0 + (-1 : F) * rho 250 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step768 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),249)] * dotLC rho [((1 : F),0), ((-1 : F),249), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 249) * ((1 : F) * rho 0 + (-1 : F) * rho 249 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step769 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),248)] * dotLC rho [((1 : F),0), ((-1 : F),248), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 248) * ((1 : F) * rho 0 + (-1 : F) * rho 248 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step770 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),247)] * dotLC rho [((1 : F),0), ((-1 : F),247), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 247) * ((1 : F) * rho 0 + (-1 : F) * rho 247 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step771 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),246)] * dotLC rho [((1 : F),0), ((-1 : F),246), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 246) * ((1 : F) * rho 0 + (-1 : F) * rho 246 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step772 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),245)] * dotLC rho [((1 : F),0), ((-1 : F),245), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 245) * ((1 : F) * rho 0 + (-1 : F) * rho 245 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step773 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),244)] * dotLC rho [((1 : F),0), ((-1 : F),244), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 244) * ((1 : F) * rho 0 + (-1 : F) * rho 244 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step774 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),243)] * dotLC rho [((1 : F),0), ((-1 : F),243), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 243) * ((1 : F) * rho 0 + (-1 : F) * rho 243 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step775 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),242)] * dotLC rho [((1 : F),0), ((-1 : F),242), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 242) * ((1 : F) * rho 0 + (-1 : F) * rho 242 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step776 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),241)] * dotLC rho [((1 : F),0), ((-1 : F),241), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 241) * ((1 : F) * rho 0 + (-1 : F) * rho 241 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step777 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),240)] * dotLC rho [((1 : F),0), ((-1 : F),240), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 240) * ((1 : F) * rho 0 + (-1 : F) * rho 240 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step778 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),239)] * dotLC rho [((1 : F),0), ((-1 : F),239), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 239) * ((1 : F) * rho 0 + (-1 : F) * rho 239 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step779 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),238)] * dotLC rho [((1 : F),0), ((-1 : F),238), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 238) * ((1 : F) * rho 0 + (-1 : F) * rho 238 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step780 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),237)] * dotLC rho [((1 : F),0), ((-1 : F),237), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 237) * ((1 : F) * rho 0 + (-1 : F) * rho 237 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step781 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),236)] * dotLC rho [((1 : F),0), ((-1 : F),236), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 236) * ((1 : F) * rho 0 + (-1 : F) * rho 236 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step782 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),235)] * dotLC rho [((1 : F),0), ((-1 : F),235), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 235) * ((1 : F) * rho 0 + (-1 : F) * rho 235 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step783 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),234)] * dotLC rho [((1 : F),0), ((-1 : F),234), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 234) * ((1 : F) * rho 0 + (-1 : F) * rho 234 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step784 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),233)] * dotLC rho [((1 : F),0), ((-1 : F),233), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 233) * ((1 : F) * rho 0 + (-1 : F) * rho 233 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step785 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),232)] * dotLC rho [((1 : F),0), ((-1 : F),232), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 232) * ((1 : F) * rho 0 + (-1 : F) * rho 232 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step786 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),231)] * dotLC rho [((1 : F),0), ((-1 : F),231), ((-1 : F),569)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 231) * ((1 : F) * rho 0 + (-1 : F) * rho 231 + (-1 : F) * rho 569) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step787 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),231)] * dotLC rho [((1 : F),0), ((-1 : F),231)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 231) * ((1 : F) * rho 0 + (-1 : F) * rho 231) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step788 (rho : Nat → F)
    (hraw : dotLC rho [((2 : F),230)] * dotLC rho [((1 : F),0), ((-1 : F),231)] = dotLC rho [((1 : F),570)]) :
    ((2 : F) * rho 230) * ((1 : F) * rho 0 + (-1 : F) * rho 231) = ((1 : F) * rho 570) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step789 (rho : Nat → F)
    (hraw : dotLC rho [((-3022 : F),218)] * dotLC rho [((-1 : F),213), ((-1 : F),230), ((1 : F),570)] = dotLC rho [((1 : F),571)]) :
    ((-3022 : F) * rho 218) * ((-1 : F) * rho 213 + (-1 : F) * rho 230 + (1 : F) * rho 570) = ((1 : F) * rho 571) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step790 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),571)] * dotLC rho [((1 : F),17)] = dotLC rho [((1 : F),572)]) :
    ((1 : F) * rho 571) * ((1 : F) * rho 17) = ((1 : F) * rho 572) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step791 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),573)] * dotLC rho [((1 : F),0), ((-1 : F),573)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 573) * ((1 : F) * rho 0 + (-1 : F) * rho 573) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step792 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),574)] * dotLC rho [((1 : F),0), ((-1 : F),574)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 574) * ((1 : F) * rho 0 + (-1 : F) * rho 574) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step793 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),575)] * dotLC rho [((1 : F),0), ((-1 : F),575)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 575) * ((1 : F) * rho 0 + (-1 : F) * rho 575) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step794 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),576)] * dotLC rho [((1 : F),0), ((-1 : F),576)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 576) * ((1 : F) * rho 0 + (-1 : F) * rho 576) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step795 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),577)] * dotLC rho [((1 : F),0), ((-1 : F),577)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 577) * ((1 : F) * rho 0 + (-1 : F) * rho 577) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step796 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),578)] * dotLC rho [((1 : F),0), ((-1 : F),578)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 578) * ((1 : F) * rho 0 + (-1 : F) * rho 578) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step797 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),579)] * dotLC rho [((1 : F),0), ((-1 : F),579)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 579) * ((1 : F) * rho 0 + (-1 : F) * rho 579) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step798 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),580)] * dotLC rho [((1 : F),0), ((-1 : F),580)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 580) * ((1 : F) * rho 0 + (-1 : F) * rho 580) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step799 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),581)] * dotLC rho [((1 : F),0), ((-1 : F),581)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 581) * ((1 : F) * rho 0 + (-1 : F) * rho 581) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step800 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),582)] * dotLC rho [((1 : F),0), ((-1 : F),582)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 582) * ((1 : F) * rho 0 + (-1 : F) * rho 582) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step801 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),583)] * dotLC rho [((1 : F),0), ((-1 : F),583)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 583) * ((1 : F) * rho 0 + (-1 : F) * rho 583) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step802 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),584)] * dotLC rho [((1 : F),0), ((-1 : F),584)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 584) * ((1 : F) * rho 0 + (-1 : F) * rho 584) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step803 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),585)] * dotLC rho [((1 : F),0), ((-1 : F),585)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 585) * ((1 : F) * rho 0 + (-1 : F) * rho 585) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step804 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),586)] * dotLC rho [((1 : F),0), ((-1 : F),586)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 586) * ((1 : F) * rho 0 + (-1 : F) * rho 586) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step805 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),587)] * dotLC rho [((1 : F),0), ((-1 : F),587)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 587) * ((1 : F) * rho 0 + (-1 : F) * rho 587) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step806 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),588)] * dotLC rho [((1 : F),0), ((-1 : F),588)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 588) * ((1 : F) * rho 0 + (-1 : F) * rho 588) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step807 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),589)] * dotLC rho [((1 : F),0), ((-1 : F),589)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 589) * ((1 : F) * rho 0 + (-1 : F) * rho 589) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step808 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),590)] * dotLC rho [((1 : F),0), ((-1 : F),590)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 590) * ((1 : F) * rho 0 + (-1 : F) * rho 590) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step809 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),591)] * dotLC rho [((1 : F),0), ((-1 : F),591)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 591) * ((1 : F) * rho 0 + (-1 : F) * rho 591) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step810 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),592)] * dotLC rho [((1 : F),0), ((-1 : F),592)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 592) * ((1 : F) * rho 0 + (-1 : F) * rho 592) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step811 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),593)] * dotLC rho [((1 : F),0), ((-1 : F),593)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 593) * ((1 : F) * rho 0 + (-1 : F) * rho 593) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step812 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),594)] * dotLC rho [((1 : F),0), ((-1 : F),594)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 594) * ((1 : F) * rho 0 + (-1 : F) * rho 594) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step813 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),595)] * dotLC rho [((1 : F),0), ((-1 : F),595)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 595) * ((1 : F) * rho 0 + (-1 : F) * rho 595) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step814 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),596)] * dotLC rho [((1 : F),0), ((-1 : F),596)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 596) * ((1 : F) * rho 0 + (-1 : F) * rho 596) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step815 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),597)] * dotLC rho [((1 : F),0), ((-1 : F),597)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 597) * ((1 : F) * rho 0 + (-1 : F) * rho 597) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step816 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),598)] * dotLC rho [((1 : F),0), ((-1 : F),598)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 598) * ((1 : F) * rho 0 + (-1 : F) * rho 598) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step817 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),599)] * dotLC rho [((1 : F),0), ((-1 : F),599)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 599) * ((1 : F) * rho 0 + (-1 : F) * rho 599) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step818 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),600)] * dotLC rho [((1 : F),0), ((-1 : F),600)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 600) * ((1 : F) * rho 0 + (-1 : F) * rho 600) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step819 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),601)] * dotLC rho [((1 : F),0), ((-1 : F),601)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 601) * ((1 : F) * rho 0 + (-1 : F) * rho 601) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step820 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),602)] * dotLC rho [((1 : F),0), ((-1 : F),602)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 602) * ((1 : F) * rho 0 + (-1 : F) * rho 602) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step821 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),603)] * dotLC rho [((1 : F),0), ((-1 : F),603)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 603) * ((1 : F) * rho 0 + (-1 : F) * rho 603) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step822 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),604)] * dotLC rho [((1 : F),0), ((-1 : F),604)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 604) * ((1 : F) * rho 0 + (-1 : F) * rho 604) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step823 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),605)] * dotLC rho [((1 : F),0), ((-1 : F),605)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 605) * ((1 : F) * rho 0 + (-1 : F) * rho 605) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step824 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),606)] * dotLC rho [((1 : F),0), ((-1 : F),606)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 606) * ((1 : F) * rho 0 + (-1 : F) * rho 606) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step825 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),607)] * dotLC rho [((1 : F),0), ((-1 : F),607)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 607) * ((1 : F) * rho 0 + (-1 : F) * rho 607) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step826 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),608)] * dotLC rho [((1 : F),0), ((-1 : F),608)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 608) * ((1 : F) * rho 0 + (-1 : F) * rho 608) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step827 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),609)] * dotLC rho [((1 : F),0), ((-1 : F),609)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 609) * ((1 : F) * rho 0 + (-1 : F) * rho 609) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step828 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),610)] * dotLC rho [((1 : F),0), ((-1 : F),610)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 610) * ((1 : F) * rho 0 + (-1 : F) * rho 610) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step829 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),611)] * dotLC rho [((1 : F),0), ((-1 : F),611)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 611) * ((1 : F) * rho 0 + (-1 : F) * rho 611) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step830 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),612)] * dotLC rho [((1 : F),0), ((-1 : F),612)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 612) * ((1 : F) * rho 0 + (-1 : F) * rho 612) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step831 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),613)] * dotLC rho [((1 : F),0), ((-1 : F),613)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 613) * ((1 : F) * rho 0 + (-1 : F) * rho 613) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step832 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),614)] * dotLC rho [((1 : F),0), ((-1 : F),614)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 614) * ((1 : F) * rho 0 + (-1 : F) * rho 614) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step833 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),615)] * dotLC rho [((1 : F),0), ((-1 : F),615)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 615) * ((1 : F) * rho 0 + (-1 : F) * rho 615) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step834 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),616)] * dotLC rho [((1 : F),0), ((-1 : F),616)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 616) * ((1 : F) * rho 0 + (-1 : F) * rho 616) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step835 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),617)] * dotLC rho [((1 : F),0), ((-1 : F),617)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 617) * ((1 : F) * rho 0 + (-1 : F) * rho 617) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step836 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),618)] * dotLC rho [((1 : F),0), ((-1 : F),618)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 618) * ((1 : F) * rho 0 + (-1 : F) * rho 618) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step837 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),619)] * dotLC rho [((1 : F),0), ((-1 : F),619)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 619) * ((1 : F) * rho 0 + (-1 : F) * rho 619) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step838 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),620)] * dotLC rho [((1 : F),0), ((-1 : F),620)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 620) * ((1 : F) * rho 0 + (-1 : F) * rho 620) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step839 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),621)] * dotLC rho [((1 : F),0), ((-1 : F),621)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 621) * ((1 : F) * rho 0 + (-1 : F) * rho 621) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step840 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),622)] * dotLC rho [((1 : F),0), ((-1 : F),622)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 622) * ((1 : F) * rho 0 + (-1 : F) * rho 622) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step841 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),623)] * dotLC rho [((1 : F),0), ((-1 : F),623)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 623) * ((1 : F) * rho 0 + (-1 : F) * rho 623) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step842 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),624)] * dotLC rho [((1 : F),0), ((-1 : F),624)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 624) * ((1 : F) * rho 0 + (-1 : F) * rho 624) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step843 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),625)] * dotLC rho [((1 : F),0), ((-1 : F),625)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 625) * ((1 : F) * rho 0 + (-1 : F) * rho 625) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step844 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),626)] * dotLC rho [((1 : F),0), ((-1 : F),626)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 626) * ((1 : F) * rho 0 + (-1 : F) * rho 626) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step845 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),627)] * dotLC rho [((1 : F),0), ((-1 : F),627)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 627) * ((1 : F) * rho 0 + (-1 : F) * rho 627) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step846 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),628)] * dotLC rho [((1 : F),0), ((-1 : F),628)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 628) * ((1 : F) * rho 0 + (-1 : F) * rho 628) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step847 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),629)] * dotLC rho [((1 : F),0), ((-1 : F),629)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 629) * ((1 : F) * rho 0 + (-1 : F) * rho 629) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step848 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),630)] * dotLC rho [((1 : F),0), ((-1 : F),630)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 630) * ((1 : F) * rho 0 + (-1 : F) * rho 630) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step849 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),631)] * dotLC rho [((1 : F),0), ((-1 : F),631)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 631) * ((1 : F) * rho 0 + (-1 : F) * rho 631) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step850 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),632)] * dotLC rho [((1 : F),0), ((-1 : F),632)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 632) * ((1 : F) * rho 0 + (-1 : F) * rho 632) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step851 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),633)] * dotLC rho [((1 : F),0), ((-1 : F),633)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 633) * ((1 : F) * rho 0 + (-1 : F) * rho 633) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step852 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),634)] * dotLC rho [((1 : F),0), ((-1 : F),634)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 634) * ((1 : F) * rho 0 + (-1 : F) * rho 634) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step853 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),635)] * dotLC rho [((1 : F),0), ((-1 : F),635)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 635) * ((1 : F) * rho 0 + (-1 : F) * rho 635) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step854 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),636)] * dotLC rho [((1 : F),0), ((-1 : F),636)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 636) * ((1 : F) * rho 0 + (-1 : F) * rho 636) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step855 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),637)] * dotLC rho [((1 : F),0), ((-1 : F),637)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 637) * ((1 : F) * rho 0 + (-1 : F) * rho 637) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step856 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),638)] * dotLC rho [((1 : F),0), ((-1 : F),638)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 638) * ((1 : F) * rho 0 + (-1 : F) * rho 638) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step857 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),639)] * dotLC rho [((1 : F),0), ((-1 : F),639)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 639) * ((1 : F) * rho 0 + (-1 : F) * rho 639) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step858 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),640)] * dotLC rho [((1 : F),0), ((-1 : F),640)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 640) * ((1 : F) * rho 0 + (-1 : F) * rho 640) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step859 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),641)] * dotLC rho [((1 : F),0), ((-1 : F),641)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 641) * ((1 : F) * rho 0 + (-1 : F) * rho 641) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step860 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),642)] * dotLC rho [((1 : F),0), ((-1 : F),642)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 642) * ((1 : F) * rho 0 + (-1 : F) * rho 642) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step861 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),643)] * dotLC rho [((1 : F),0), ((-1 : F),643)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 643) * ((1 : F) * rho 0 + (-1 : F) * rho 643) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step862 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),644)] * dotLC rho [((1 : F),0), ((-1 : F),644)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 644) * ((1 : F) * rho 0 + (-1 : F) * rho 644) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step863 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),645)] * dotLC rho [((1 : F),0), ((-1 : F),645)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 645) * ((1 : F) * rho 0 + (-1 : F) * rho 645) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step864 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),646)] * dotLC rho [((1 : F),0), ((-1 : F),646)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 646) * ((1 : F) * rho 0 + (-1 : F) * rho 646) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step865 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),647)] * dotLC rho [((1 : F),0), ((-1 : F),647)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 647) * ((1 : F) * rho 0 + (-1 : F) * rho 647) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step866 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),648)] * dotLC rho [((1 : F),0), ((-1 : F),648)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 648) * ((1 : F) * rho 0 + (-1 : F) * rho 648) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step867 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),649)] * dotLC rho [((1 : F),0), ((-1 : F),649)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 649) * ((1 : F) * rho 0 + (-1 : F) * rho 649) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step868 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),650)] * dotLC rho [((1 : F),0), ((-1 : F),650)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 650) * ((1 : F) * rho 0 + (-1 : F) * rho 650) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step869 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),651)] * dotLC rho [((1 : F),0), ((-1 : F),651)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 651) * ((1 : F) * rho 0 + (-1 : F) * rho 651) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step870 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),652)] * dotLC rho [((1 : F),0), ((-1 : F),652)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 652) * ((1 : F) * rho 0 + (-1 : F) * rho 652) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step871 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),653)] * dotLC rho [((1 : F),0), ((-1 : F),653)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 653) * ((1 : F) * rho 0 + (-1 : F) * rho 653) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step872 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),654)] * dotLC rho [((1 : F),0), ((-1 : F),654)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 654) * ((1 : F) * rho 0 + (-1 : F) * rho 654) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step873 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),655)] * dotLC rho [((1 : F),0), ((-1 : F),655)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 655) * ((1 : F) * rho 0 + (-1 : F) * rho 655) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step874 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),656)] * dotLC rho [((1 : F),0), ((-1 : F),656)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 656) * ((1 : F) * rho 0 + (-1 : F) * rho 656) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step875 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),657)] * dotLC rho [((1 : F),0), ((-1 : F),657)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 657) * ((1 : F) * rho 0 + (-1 : F) * rho 657) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step876 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),658)] * dotLC rho [((1 : F),0), ((-1 : F),658)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 658) * ((1 : F) * rho 0 + (-1 : F) * rho 658) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step877 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),659)] * dotLC rho [((1 : F),0), ((-1 : F),659)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 659) * ((1 : F) * rho 0 + (-1 : F) * rho 659) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step878 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),660)] * dotLC rho [((1 : F),0), ((-1 : F),660)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 660) * ((1 : F) * rho 0 + (-1 : F) * rho 660) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step879 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),661)] * dotLC rho [((1 : F),0), ((-1 : F),661)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 661) * ((1 : F) * rho 0 + (-1 : F) * rho 661) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step880 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),662)] * dotLC rho [((1 : F),0), ((-1 : F),662)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 662) * ((1 : F) * rho 0 + (-1 : F) * rho 662) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step881 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),663)] * dotLC rho [((1 : F),0), ((-1 : F),663)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 663) * ((1 : F) * rho 0 + (-1 : F) * rho 663) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step882 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),664)] * dotLC rho [((1 : F),0), ((-1 : F),664)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 664) * ((1 : F) * rho 0 + (-1 : F) * rho 664) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step883 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),665)] * dotLC rho [((1 : F),0), ((-1 : F),665)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 665) * ((1 : F) * rho 0 + (-1 : F) * rho 665) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step884 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),666)] * dotLC rho [((1 : F),0), ((-1 : F),666)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 666) * ((1 : F) * rho 0 + (-1 : F) * rho 666) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step885 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),667)] * dotLC rho [((1 : F),0), ((-1 : F),667)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 667) * ((1 : F) * rho 0 + (-1 : F) * rho 667) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step886 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),668)] * dotLC rho [((1 : F),0), ((-1 : F),668)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 668) * ((1 : F) * rho 0 + (-1 : F) * rho 668) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step887 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),669)] * dotLC rho [((1 : F),0), ((-1 : F),669)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 669) * ((1 : F) * rho 0 + (-1 : F) * rho 669) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step888 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),670)] * dotLC rho [((1 : F),0), ((-1 : F),670)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 670) * ((1 : F) * rho 0 + (-1 : F) * rho 670) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step889 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),671)] * dotLC rho [((1 : F),0), ((-1 : F),671)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 671) * ((1 : F) * rho 0 + (-1 : F) * rho 671) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step890 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),672)] * dotLC rho [((1 : F),0), ((-1 : F),672)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 672) * ((1 : F) * rho 0 + (-1 : F) * rho 672) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step891 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),673)] * dotLC rho [((1 : F),0), ((-1 : F),673)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 673) * ((1 : F) * rho 0 + (-1 : F) * rho 673) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step892 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),674)] * dotLC rho [((1 : F),0), ((-1 : F),674)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 674) * ((1 : F) * rho 0 + (-1 : F) * rho 674) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step893 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),675)] * dotLC rho [((1 : F),0), ((-1 : F),675)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 675) * ((1 : F) * rho 0 + (-1 : F) * rho 675) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step894 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),676)] * dotLC rho [((1 : F),0), ((-1 : F),676)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 676) * ((1 : F) * rho 0 + (-1 : F) * rho 676) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step895 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),677)] * dotLC rho [((1 : F),0), ((-1 : F),677)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 677) * ((1 : F) * rho 0 + (-1 : F) * rho 677) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step896 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),678)] * dotLC rho [((1 : F),0), ((-1 : F),678)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 678) * ((1 : F) * rho 0 + (-1 : F) * rho 678) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step897 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),679)] * dotLC rho [((1 : F),0), ((-1 : F),679)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 679) * ((1 : F) * rho 0 + (-1 : F) * rho 679) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step898 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),680)] * dotLC rho [((1 : F),0), ((-1 : F),680)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 680) * ((1 : F) * rho 0 + (-1 : F) * rho 680) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step899 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),681)] * dotLC rho [((1 : F),0), ((-1 : F),681)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 681) * ((1 : F) * rho 0 + (-1 : F) * rho 681) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step900 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),682)] * dotLC rho [((1 : F),0), ((-1 : F),682)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 682) * ((1 : F) * rho 0 + (-1 : F) * rho 682) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step901 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),683)] * dotLC rho [((1 : F),0), ((-1 : F),683)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 683) * ((1 : F) * rho 0 + (-1 : F) * rho 683) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step902 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),684)] * dotLC rho [((1 : F),0), ((-1 : F),684)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 684) * ((1 : F) * rho 0 + (-1 : F) * rho 684) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step903 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),685)] * dotLC rho [((1 : F),0), ((-1 : F),685)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 685) * ((1 : F) * rho 0 + (-1 : F) * rho 685) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step904 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),686)] * dotLC rho [((1 : F),0), ((-1 : F),686)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 686) * ((1 : F) * rho 0 + (-1 : F) * rho 686) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step905 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),687)] * dotLC rho [((1 : F),0), ((-1 : F),687)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 687) * ((1 : F) * rho 0 + (-1 : F) * rho 687) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step906 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),688)] * dotLC rho [((1 : F),0), ((-1 : F),688)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 688) * ((1 : F) * rho 0 + (-1 : F) * rho 688) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step907 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),689)] * dotLC rho [((1 : F),0), ((-1 : F),689)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 689) * ((1 : F) * rho 0 + (-1 : F) * rho 689) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step908 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),690)] * dotLC rho [((1 : F),0), ((-1 : F),690)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 690) * ((1 : F) * rho 0 + (-1 : F) * rho 690) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step909 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),691)] * dotLC rho [((1 : F),0), ((-1 : F),691)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 691) * ((1 : F) * rho 0 + (-1 : F) * rho 691) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step910 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),692)] * dotLC rho [((1 : F),0), ((-1 : F),692)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 692) * ((1 : F) * rho 0 + (-1 : F) * rho 692) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step911 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),693)] * dotLC rho [((1 : F),0), ((-1 : F),693)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 693) * ((1 : F) * rho 0 + (-1 : F) * rho 693) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step912 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),694)] * dotLC rho [((1 : F),0), ((-1 : F),694)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 694) * ((1 : F) * rho 0 + (-1 : F) * rho 694) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step913 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),695)] * dotLC rho [((1 : F),0), ((-1 : F),695)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 695) * ((1 : F) * rho 0 + (-1 : F) * rho 695) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step914 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),696)] * dotLC rho [((1 : F),0), ((-1 : F),696)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 696) * ((1 : F) * rho 0 + (-1 : F) * rho 696) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step915 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),697)] * dotLC rho [((1 : F),0), ((-1 : F),697)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 697) * ((1 : F) * rho 0 + (-1 : F) * rho 697) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step916 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),698)] * dotLC rho [((1 : F),0), ((-1 : F),698)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 698) * ((1 : F) * rho 0 + (-1 : F) * rho 698) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step917 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),699)] * dotLC rho [((1 : F),0), ((-1 : F),699)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 699) * ((1 : F) * rho 0 + (-1 : F) * rho 699) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step918 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),700)] * dotLC rho [((1 : F),0), ((-1 : F),700)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 700) * ((1 : F) * rho 0 + (-1 : F) * rho 700) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step919 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),701)] * dotLC rho [((1 : F),0), ((-1 : F),701)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 701) * ((1 : F) * rho 0 + (-1 : F) * rho 701) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step920 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),702)] * dotLC rho [((1 : F),0), ((-1 : F),702)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 702) * ((1 : F) * rho 0 + (-1 : F) * rho 702) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step921 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),703)] * dotLC rho [((1 : F),0), ((-1 : F),703)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 703) * ((1 : F) * rho 0 + (-1 : F) * rho 703) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step922 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),704)] * dotLC rho [((1 : F),0), ((-1 : F),704)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 704) * ((1 : F) * rho 0 + (-1 : F) * rho 704) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step923 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),705)] * dotLC rho [((1 : F),0), ((-1 : F),705)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 705) * ((1 : F) * rho 0 + (-1 : F) * rho 705) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step924 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),706)] * dotLC rho [((1 : F),0), ((-1 : F),706)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 706) * ((1 : F) * rho 0 + (-1 : F) * rho 706) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step925 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),707)] * dotLC rho [((1 : F),0), ((-1 : F),707)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 707) * ((1 : F) * rho 0 + (-1 : F) * rho 707) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step926 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),708)] * dotLC rho [((1 : F),0), ((-1 : F),708)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 708) * ((1 : F) * rho 0 + (-1 : F) * rho 708) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step927 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),709)] * dotLC rho [((1 : F),0), ((-1 : F),709)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 709) * ((1 : F) * rho 0 + (-1 : F) * rho 709) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step928 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),710)] * dotLC rho [((1 : F),0), ((-1 : F),710)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 710) * ((1 : F) * rho 0 + (-1 : F) * rho 710) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step929 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),711)] * dotLC rho [((1 : F),0), ((-1 : F),711)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 711) * ((1 : F) * rho 0 + (-1 : F) * rho 711) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step930 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),712)] * dotLC rho [((1 : F),0), ((-1 : F),712)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 712) * ((1 : F) * rho 0 + (-1 : F) * rho 712) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step931 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),713)] * dotLC rho [((1 : F),0), ((-1 : F),713)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 713) * ((1 : F) * rho 0 + (-1 : F) * rho 713) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step932 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),714)] * dotLC rho [((1 : F),0), ((-1 : F),714)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 714) * ((1 : F) * rho 0 + (-1 : F) * rho 714) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step933 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),715)] * dotLC rho [((1 : F),0), ((-1 : F),715)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 715) * ((1 : F) * rho 0 + (-1 : F) * rho 715) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step934 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),716)] * dotLC rho [((1 : F),0), ((-1 : F),716)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 716) * ((1 : F) * rho 0 + (-1 : F) * rho 716) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step935 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),717)] * dotLC rho [((1 : F),0), ((-1 : F),717)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 717) * ((1 : F) * rho 0 + (-1 : F) * rho 717) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step936 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),718)] * dotLC rho [((1 : F),0), ((-1 : F),718)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 718) * ((1 : F) * rho 0 + (-1 : F) * rho 718) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step937 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),719)] * dotLC rho [((1 : F),0), ((-1 : F),719)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 719) * ((1 : F) * rho 0 + (-1 : F) * rho 719) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step938 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),720)] * dotLC rho [((1 : F),0), ((-1 : F),720)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 720) * ((1 : F) * rho 0 + (-1 : F) * rho 720) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step939 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),721)] * dotLC rho [((1 : F),0), ((-1 : F),721)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 721) * ((1 : F) * rho 0 + (-1 : F) * rho 721) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step940 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),722)] * dotLC rho [((1 : F),0), ((-1 : F),722)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 722) * ((1 : F) * rho 0 + (-1 : F) * rho 722) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step941 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),723)] * dotLC rho [((1 : F),0), ((-1 : F),723)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 723) * ((1 : F) * rho 0 + (-1 : F) * rho 723) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step942 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),724)] * dotLC rho [((1 : F),0), ((-1 : F),724)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 724) * ((1 : F) * rho 0 + (-1 : F) * rho 724) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step943 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),725)] * dotLC rho [((1 : F),0), ((-1 : F),725)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 725) * ((1 : F) * rho 0 + (-1 : F) * rho 725) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step944 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),726)] * dotLC rho [((1 : F),0), ((-1 : F),726)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 726) * ((1 : F) * rho 0 + (-1 : F) * rho 726) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step945 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),727)] * dotLC rho [((1 : F),0), ((-1 : F),727)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 727) * ((1 : F) * rho 0 + (-1 : F) * rho 727) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step946 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),728)] * dotLC rho [((1 : F),0), ((-1 : F),728)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 728) * ((1 : F) * rho 0 + (-1 : F) * rho 728) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step947 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),729)] * dotLC rho [((1 : F),0), ((-1 : F),729)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 729) * ((1 : F) * rho 0 + (-1 : F) * rho 729) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step948 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),730)] * dotLC rho [((1 : F),0), ((-1 : F),730)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 730) * ((1 : F) * rho 0 + (-1 : F) * rho 730) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step949 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),731)] * dotLC rho [((1 : F),0), ((-1 : F),731)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 731) * ((1 : F) * rho 0 + (-1 : F) * rho 731) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step950 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),732)] * dotLC rho [((1 : F),0), ((-1 : F),732)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 732) * ((1 : F) * rho 0 + (-1 : F) * rho 732) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step951 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),733)] * dotLC rho [((1 : F),0), ((-1 : F),733)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 733) * ((1 : F) * rho 0 + (-1 : F) * rho 733) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step952 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),734)] * dotLC rho [((1 : F),0), ((-1 : F),734)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 734) * ((1 : F) * rho 0 + (-1 : F) * rho 734) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step953 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),735)] * dotLC rho [((1 : F),0), ((-1 : F),735)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 735) * ((1 : F) * rho 0 + (-1 : F) * rho 735) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step954 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),736)] * dotLC rho [((1 : F),0), ((-1 : F),736)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 736) * ((1 : F) * rho 0 + (-1 : F) * rho 736) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step955 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),737)] * dotLC rho [((1 : F),0), ((-1 : F),737)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 737) * ((1 : F) * rho 0 + (-1 : F) * rho 737) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step956 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),738)] * dotLC rho [((1 : F),0), ((-1 : F),738)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 738) * ((1 : F) * rho 0 + (-1 : F) * rho 738) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step957 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),739)] * dotLC rho [((1 : F),0), ((-1 : F),739)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 739) * ((1 : F) * rho 0 + (-1 : F) * rho 739) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step958 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),740)] * dotLC rho [((1 : F),0), ((-1 : F),740)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 740) * ((1 : F) * rho 0 + (-1 : F) * rho 740) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step959 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),741)] * dotLC rho [((1 : F),0), ((-1 : F),741)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 741) * ((1 : F) * rho 0 + (-1 : F) * rho 741) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step960 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),742)] * dotLC rho [((1 : F),0), ((-1 : F),742)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 742) * ((1 : F) * rho 0 + (-1 : F) * rho 742) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step961 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),743)] * dotLC rho [((1 : F),0), ((-1 : F),743)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 743) * ((1 : F) * rho 0 + (-1 : F) * rho 743) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step962 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),744)] * dotLC rho [((1 : F),0), ((-1 : F),744)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 744) * ((1 : F) * rho 0 + (-1 : F) * rho 744) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step963 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),745)] * dotLC rho [((1 : F),0), ((-1 : F),745)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 745) * ((1 : F) * rho 0 + (-1 : F) * rho 745) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step964 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),746)] * dotLC rho [((1 : F),0), ((-1 : F),746)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 746) * ((1 : F) * rho 0 + (-1 : F) * rho 746) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step965 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),747)] * dotLC rho [((1 : F),0), ((-1 : F),747)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 747) * ((1 : F) * rho 0 + (-1 : F) * rho 747) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step966 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),748)] * dotLC rho [((1 : F),0), ((-1 : F),748)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 748) * ((1 : F) * rho 0 + (-1 : F) * rho 748) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step967 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),749)] * dotLC rho [((1 : F),0), ((-1 : F),749)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 749) * ((1 : F) * rho 0 + (-1 : F) * rho 749) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step968 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),750)] * dotLC rho [((1 : F),0), ((-1 : F),750)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 750) * ((1 : F) * rho 0 + (-1 : F) * rho 750) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step969 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),751)] * dotLC rho [((1 : F),0), ((-1 : F),751)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 751) * ((1 : F) * rho 0 + (-1 : F) * rho 751) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step970 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),752)] * dotLC rho [((1 : F),0), ((-1 : F),752)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 752) * ((1 : F) * rho 0 + (-1 : F) * rho 752) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step971 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),753)] * dotLC rho [((1 : F),0), ((-1 : F),753)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 753) * ((1 : F) * rho 0 + (-1 : F) * rho 753) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step972 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),754)] * dotLC rho [((1 : F),0), ((-1 : F),754)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 754) * ((1 : F) * rho 0 + (-1 : F) * rho 754) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step973 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),755)] * dotLC rho [((1 : F),0), ((-1 : F),755)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 755) * ((1 : F) * rho 0 + (-1 : F) * rho 755) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step974 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),756)] * dotLC rho [((1 : F),0), ((-1 : F),756)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 756) * ((1 : F) * rho 0 + (-1 : F) * rho 756) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step975 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),757)] * dotLC rho [((1 : F),0), ((-1 : F),757)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 757) * ((1 : F) * rho 0 + (-1 : F) * rho 757) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step976 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),758)] * dotLC rho [((1 : F),0), ((-1 : F),758)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 758) * ((1 : F) * rho 0 + (-1 : F) * rho 758) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step977 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),759)] * dotLC rho [((1 : F),0), ((-1 : F),759)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 759) * ((1 : F) * rho 0 + (-1 : F) * rho 759) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step978 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),760)] * dotLC rho [((1 : F),0), ((-1 : F),760)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 760) * ((1 : F) * rho 0 + (-1 : F) * rho 760) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step979 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),761)] * dotLC rho [((1 : F),0), ((-1 : F),761)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 761) * ((1 : F) * rho 0 + (-1 : F) * rho 761) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step980 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),762)] * dotLC rho [((1 : F),0), ((-1 : F),762)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 762) * ((1 : F) * rho 0 + (-1 : F) * rho 762) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step981 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),763)] * dotLC rho [((1 : F),0), ((-1 : F),763)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 763) * ((1 : F) * rho 0 + (-1 : F) * rho 763) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step982 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),764)] * dotLC rho [((1 : F),0), ((-1 : F),764)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 764) * ((1 : F) * rho 0 + (-1 : F) * rho 764) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step983 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),765)] * dotLC rho [((1 : F),0), ((-1 : F),765)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 765) * ((1 : F) * rho 0 + (-1 : F) * rho 765) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step984 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),766)] * dotLC rho [((1 : F),0), ((-1 : F),766)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 766) * ((1 : F) * rho 0 + (-1 : F) * rho 766) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step985 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),767)] * dotLC rho [((1 : F),0), ((-1 : F),767)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 767) * ((1 : F) * rho 0 + (-1 : F) * rho 767) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step986 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),768)] * dotLC rho [((1 : F),0), ((-1 : F),768)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 768) * ((1 : F) * rho 0 + (-1 : F) * rho 768) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step987 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),769)] * dotLC rho [((1 : F),0), ((-1 : F),769)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 769) * ((1 : F) * rho 0 + (-1 : F) * rho 769) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step988 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),770)] * dotLC rho [((1 : F),0), ((-1 : F),770)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 770) * ((1 : F) * rho 0 + (-1 : F) * rho 770) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step989 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),771)] * dotLC rho [((1 : F),0), ((-1 : F),771)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 771) * ((1 : F) * rho 0 + (-1 : F) * rho 771) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step990 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),772)] * dotLC rho [((1 : F),0), ((-1 : F),772)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 772) * ((1 : F) * rho 0 + (-1 : F) * rho 772) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step991 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),773)] * dotLC rho [((1 : F),0), ((-1 : F),773)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 773) * ((1 : F) * rho 0 + (-1 : F) * rho 773) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step992 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),774)] * dotLC rho [((1 : F),0), ((-1 : F),774)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 774) * ((1 : F) * rho 0 + (-1 : F) * rho 774) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step993 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),775)] * dotLC rho [((1 : F),0), ((-1 : F),775)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 775) * ((1 : F) * rho 0 + (-1 : F) * rho 775) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step994 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),776)] * dotLC rho [((1 : F),0), ((-1 : F),776)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 776) * ((1 : F) * rho 0 + (-1 : F) * rho 776) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step995 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),777)] * dotLC rho [((1 : F),0), ((-1 : F),777)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 777) * ((1 : F) * rho 0 + (-1 : F) * rho 777) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step996 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),778)] * dotLC rho [((1 : F),0), ((-1 : F),778)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 778) * ((1 : F) * rho 0 + (-1 : F) * rho 778) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step997 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),779)] * dotLC rho [((1 : F),0), ((-1 : F),779)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 779) * ((1 : F) * rho 0 + (-1 : F) * rho 779) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step998 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),780)] * dotLC rho [((1 : F),0), ((-1 : F),780)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 780) * ((1 : F) * rho 0 + (-1 : F) * rho 780) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step999 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),781)] * dotLC rho [((1 : F),0), ((-1 : F),781)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 781) * ((1 : F) * rho 0 + (-1 : F) * rho 781) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1000 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),782)] * dotLC rho [((1 : F),0), ((-1 : F),782)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 782) * ((1 : F) * rho 0 + (-1 : F) * rho 782) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1001 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),783)] * dotLC rho [((1 : F),0), ((-1 : F),783)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 783) * ((1 : F) * rho 0 + (-1 : F) * rho 783) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1002 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),784)] * dotLC rho [((1 : F),0), ((-1 : F),784)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 784) * ((1 : F) * rho 0 + (-1 : F) * rho 784) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1003 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),785)] * dotLC rho [((1 : F),0), ((-1 : F),785)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 785) * ((1 : F) * rho 0 + (-1 : F) * rho 785) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1004 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),786)] * dotLC rho [((1 : F),0), ((-1 : F),786)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 786) * ((1 : F) * rho 0 + (-1 : F) * rho 786) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1005 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),787)] * dotLC rho [((1 : F),0), ((-1 : F),787)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 787) * ((1 : F) * rho 0 + (-1 : F) * rho 787) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1006 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),788)] * dotLC rho [((1 : F),0), ((-1 : F),788)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 788) * ((1 : F) * rho 0 + (-1 : F) * rho 788) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1007 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),789)] * dotLC rho [((1 : F),0), ((-1 : F),789)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 789) * ((1 : F) * rho 0 + (-1 : F) * rho 789) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1008 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),790)] * dotLC rho [((1 : F),0), ((-1 : F),790)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 790) * ((1 : F) * rho 0 + (-1 : F) * rho 790) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1009 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),791)] * dotLC rho [((1 : F),0), ((-1 : F),791)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 791) * ((1 : F) * rho 0 + (-1 : F) * rho 791) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1010 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),792)] * dotLC rho [((1 : F),0), ((-1 : F),792)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 792) * ((1 : F) * rho 0 + (-1 : F) * rho 792) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1011 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),793)] * dotLC rho [((1 : F),0), ((-1 : F),793)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 793) * ((1 : F) * rho 0 + (-1 : F) * rho 793) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1012 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),794)] * dotLC rho [((1 : F),0), ((-1 : F),794)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 794) * ((1 : F) * rho 0 + (-1 : F) * rho 794) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1013 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),795)] * dotLC rho [((1 : F),0), ((-1 : F),795)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 795) * ((1 : F) * rho 0 + (-1 : F) * rho 795) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1014 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),796)] * dotLC rho [((1 : F),0), ((-1 : F),796)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 796) * ((1 : F) * rho 0 + (-1 : F) * rho 796) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1015 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),797)] * dotLC rho [((1 : F),0), ((-1 : F),797)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 797) * ((1 : F) * rho 0 + (-1 : F) * rho 797) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1016 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),798)] * dotLC rho [((1 : F),0), ((-1 : F),798)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 798) * ((1 : F) * rho 0 + (-1 : F) * rho 798) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1017 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),799)] * dotLC rho [((1 : F),0), ((-1 : F),799)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 799) * ((1 : F) * rho 0 + (-1 : F) * rho 799) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1018 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),800)] * dotLC rho [((1 : F),0), ((-1 : F),800)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 800) * ((1 : F) * rho 0 + (-1 : F) * rho 800) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1019 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),801)] * dotLC rho [((1 : F),0), ((-1 : F),801)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 801) * ((1 : F) * rho 0 + (-1 : F) * rho 801) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1020 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),802)] * dotLC rho [((1 : F),0), ((-1 : F),802)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 802) * ((1 : F) * rho 0 + (-1 : F) * rho 802) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1021 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),803)] * dotLC rho [((1 : F),0), ((-1 : F),803)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 803) * ((1 : F) * rho 0 + (-1 : F) * rho 803) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1022 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),804)] * dotLC rho [((1 : F),0), ((-1 : F),804)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 804) * ((1 : F) * rho 0 + (-1 : F) * rho 804) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1023 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),805)] * dotLC rho [((1 : F),0), ((-1 : F),805)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 805) * ((1 : F) * rho 0 + (-1 : F) * rho 805) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1024 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),806)] * dotLC rho [((1 : F),0), ((-1 : F),806)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 806) * ((1 : F) * rho 0 + (-1 : F) * rho 806) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1025 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),807)] * dotLC rho [((1 : F),0), ((-1 : F),807)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 807) * ((1 : F) * rho 0 + (-1 : F) * rho 807) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1026 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),808)] * dotLC rho [((1 : F),0), ((-1 : F),808)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 808) * ((1 : F) * rho 0 + (-1 : F) * rho 808) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1027 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),809)] * dotLC rho [((1 : F),0), ((-1 : F),809)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 809) * ((1 : F) * rho 0 + (-1 : F) * rho 809) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1028 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),810)] * dotLC rho [((1 : F),0), ((-1 : F),810)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 810) * ((1 : F) * rho 0 + (-1 : F) * rho 810) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1029 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),811)] * dotLC rho [((1 : F),0), ((-1 : F),811)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 811) * ((1 : F) * rho 0 + (-1 : F) * rho 811) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1030 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),812)] * dotLC rho [((1 : F),0), ((-1 : F),812)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 812) * ((1 : F) * rho 0 + (-1 : F) * rho 812) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1031 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),813)] * dotLC rho [((1 : F),0), ((-1 : F),813)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 813) * ((1 : F) * rho 0 + (-1 : F) * rho 813) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1032 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),814)] * dotLC rho [((1 : F),0), ((-1 : F),814)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 814) * ((1 : F) * rho 0 + (-1 : F) * rho 814) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1033 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),815)] * dotLC rho [((1 : F),0), ((-1 : F),815)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 815) * ((1 : F) * rho 0 + (-1 : F) * rho 815) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1034 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),816)] * dotLC rho [((1 : F),0), ((-1 : F),816)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 816) * ((1 : F) * rho 0 + (-1 : F) * rho 816) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1035 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),817)] * dotLC rho [((1 : F),0), ((-1 : F),817)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 817) * ((1 : F) * rho 0 + (-1 : F) * rho 817) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1036 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),818)] * dotLC rho [((1 : F),0), ((-1 : F),818)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 818) * ((1 : F) * rho 0 + (-1 : F) * rho 818) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1037 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),819)] * dotLC rho [((1 : F),0), ((-1 : F),819)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 819) * ((1 : F) * rho 0 + (-1 : F) * rho 819) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1038 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),820)] * dotLC rho [((1 : F),0), ((-1 : F),820)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 820) * ((1 : F) * rho 0 + (-1 : F) * rho 820) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1039 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),821)] * dotLC rho [((1 : F),0), ((-1 : F),821)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 821) * ((1 : F) * rho 0 + (-1 : F) * rho 821) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1040 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),822)] * dotLC rho [((1 : F),0), ((-1 : F),822)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 822) * ((1 : F) * rho 0 + (-1 : F) * rho 822) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1041 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),823)] * dotLC rho [((1 : F),0), ((-1 : F),823)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 823) * ((1 : F) * rho 0 + (-1 : F) * rho 823) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1042 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),824)] * dotLC rho [((1 : F),0), ((-1 : F),824)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 824) * ((1 : F) * rho 0 + (-1 : F) * rho 824) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1043 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),825)] * dotLC rho [((1 : F),0), ((-1 : F),825)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 825) * ((1 : F) * rho 0 + (-1 : F) * rho 825) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1298 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),825)] * dotLC rho [((1 : F),822)] = dotLC rho [((1 : F),826)]) :
    ((1 : F) * rho 825) * ((1 : F) * rho 822) = ((1 : F) * rho 826) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1299 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),826)] * dotLC rho [((1 : F),820)] = dotLC rho [((1 : F),827)]) :
    ((1 : F) * rho 826) * ((1 : F) * rho 820) = ((1 : F) * rho 827) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1300 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),827)] * dotLC rho [((1 : F),818)] = dotLC rho [((1 : F),828)]) :
    ((1 : F) * rho 827) * ((1 : F) * rho 818) = ((1 : F) * rho 828) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1301 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),828)] * dotLC rho [((1 : F),816)] = dotLC rho [((1 : F),829)]) :
    ((1 : F) * rho 828) * ((1 : F) * rho 816) = ((1 : F) * rho 829) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1302 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),829)] * dotLC rho [((1 : F),814)] = dotLC rho [((1 : F),830)]) :
    ((1 : F) * rho 829) * ((1 : F) * rho 814) = ((1 : F) * rho 830) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1303 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),830)] * dotLC rho [((1 : F),813)] = dotLC rho [((1 : F),831)]) :
    ((1 : F) * rho 830) * ((1 : F) * rho 813) = ((1 : F) * rho 831) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1304 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),831)] * dotLC rho [((1 : F),811)] = dotLC rho [((1 : F),832)]) :
    ((1 : F) * rho 831) * ((1 : F) * rho 811) = ((1 : F) * rho 832) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1305 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),832)] * dotLC rho [((1 : F),810)] = dotLC rho [((1 : F),833)]) :
    ((1 : F) * rho 832) * ((1 : F) * rho 810) = ((1 : F) * rho 833) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1306 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),833)] * dotLC rho [((1 : F),807)] = dotLC rho [((1 : F),834)]) :
    ((1 : F) * rho 833) * ((1 : F) * rho 807) = ((1 : F) * rho 834) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1307 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),834)] * dotLC rho [((1 : F),805)] = dotLC rho [((1 : F),835)]) :
    ((1 : F) * rho 834) * ((1 : F) * rho 805) = ((1 : F) * rho 835) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1308 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),835)] * dotLC rho [((1 : F),803)] = dotLC rho [((1 : F),836)]) :
    ((1 : F) * rho 835) * ((1 : F) * rho 803) = ((1 : F) * rho 836) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1309 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),836)] * dotLC rho [((1 : F),801)] = dotLC rho [((1 : F),837)]) :
    ((1 : F) * rho 836) * ((1 : F) * rho 801) = ((1 : F) * rho 837) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1310 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),837)] * dotLC rho [((1 : F),800)] = dotLC rho [((1 : F),838)]) :
    ((1 : F) * rho 837) * ((1 : F) * rho 800) = ((1 : F) * rho 838) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1311 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),838)] * dotLC rho [((1 : F),799)] = dotLC rho [((1 : F),839)]) :
    ((1 : F) * rho 838) * ((1 : F) * rho 799) = ((1 : F) * rho 839) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1312 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),839)] * dotLC rho [((1 : F),798)] = dotLC rho [((1 : F),840)]) :
    ((1 : F) * rho 839) * ((1 : F) * rho 798) = ((1 : F) * rho 840) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1313 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),840)] * dotLC rho [((1 : F),796)] = dotLC rho [((1 : F),841)]) :
    ((1 : F) * rho 840) * ((1 : F) * rho 796) = ((1 : F) * rho 841) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1314 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),841)] * dotLC rho [((1 : F),793)] = dotLC rho [((1 : F),842)]) :
    ((1 : F) * rho 841) * ((1 : F) * rho 793) = ((1 : F) * rho 842) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1315 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),842)] * dotLC rho [((1 : F),792)] = dotLC rho [((1 : F),843)]) :
    ((1 : F) * rho 842) * ((1 : F) * rho 792) = ((1 : F) * rho 843) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1316 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),843)] * dotLC rho [((1 : F),790)] = dotLC rho [((1 : F),844)]) :
    ((1 : F) * rho 843) * ((1 : F) * rho 790) = ((1 : F) * rho 844) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1317 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),844)] * dotLC rho [((1 : F),786)] = dotLC rho [((1 : F),845)]) :
    ((1 : F) * rho 844) * ((1 : F) * rho 786) = ((1 : F) * rho 845) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1318 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),845)] * dotLC rho [((1 : F),784)] = dotLC rho [((1 : F),846)]) :
    ((1 : F) * rho 845) * ((1 : F) * rho 784) = ((1 : F) * rho 846) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1319 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),846)] * dotLC rho [((1 : F),783)] = dotLC rho [((1 : F),847)]) :
    ((1 : F) * rho 846) * ((1 : F) * rho 783) = ((1 : F) * rho 847) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1320 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),847)] * dotLC rho [((1 : F),780)] = dotLC rho [((1 : F),848)]) :
    ((1 : F) * rho 847) * ((1 : F) * rho 780) = ((1 : F) * rho 848) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1321 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),848)] * dotLC rho [((1 : F),778)] = dotLC rho [((1 : F),849)]) :
    ((1 : F) * rho 848) * ((1 : F) * rho 778) = ((1 : F) * rho 849) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1322 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),849)] * dotLC rho [((1 : F),775)] = dotLC rho [((1 : F),850)]) :
    ((1 : F) * rho 849) * ((1 : F) * rho 775) = ((1 : F) * rho 850) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1323 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),850)] * dotLC rho [((1 : F),773)] = dotLC rho [((1 : F),851)]) :
    ((1 : F) * rho 850) * ((1 : F) * rho 773) = ((1 : F) * rho 851) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1324 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),851)] * dotLC rho [((1 : F),771)] = dotLC rho [((1 : F),852)]) :
    ((1 : F) * rho 851) * ((1 : F) * rho 771) = ((1 : F) * rho 852) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1325 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),852)] * dotLC rho [((1 : F),769)] = dotLC rho [((1 : F),853)]) :
    ((1 : F) * rho 852) * ((1 : F) * rho 769) = ((1 : F) * rho 853) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1326 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),853)] * dotLC rho [((1 : F),767)] = dotLC rho [((1 : F),854)]) :
    ((1 : F) * rho 853) * ((1 : F) * rho 767) = ((1 : F) * rho 854) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1327 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),854)] * dotLC rho [((1 : F),766)] = dotLC rho [((1 : F),855)]) :
    ((1 : F) * rho 854) * ((1 : F) * rho 766) = ((1 : F) * rho 855) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1328 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),855)] * dotLC rho [((1 : F),763)] = dotLC rho [((1 : F),856)]) :
    ((1 : F) * rho 855) * ((1 : F) * rho 763) = ((1 : F) * rho 856) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1329 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),856)] * dotLC rho [((1 : F),762)] = dotLC rho [((1 : F),857)]) :
    ((1 : F) * rho 856) * ((1 : F) * rho 762) = ((1 : F) * rho 857) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1330 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),857)] * dotLC rho [((1 : F),756)] = dotLC rho [((1 : F),858)]) :
    ((1 : F) * rho 857) * ((1 : F) * rho 756) = ((1 : F) * rho 858) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1331 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),858)] * dotLC rho [((1 : F),754)] = dotLC rho [((1 : F),859)]) :
    ((1 : F) * rho 858) * ((1 : F) * rho 754) = ((1 : F) * rho 859) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1332 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),859)] * dotLC rho [((1 : F),753)] = dotLC rho [((1 : F),860)]) :
    ((1 : F) * rho 859) * ((1 : F) * rho 753) = ((1 : F) * rho 860) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1333 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),860)] * dotLC rho [((1 : F),751)] = dotLC rho [((1 : F),861)]) :
    ((1 : F) * rho 860) * ((1 : F) * rho 751) = ((1 : F) * rho 861) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1334 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),861)] * dotLC rho [((1 : F),747)] = dotLC rho [((1 : F),862)]) :
    ((1 : F) * rho 861) * ((1 : F) * rho 747) = ((1 : F) * rho 862) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1335 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),862)] * dotLC rho [((1 : F),744)] = dotLC rho [((1 : F),863)]) :
    ((1 : F) * rho 862) * ((1 : F) * rho 744) = ((1 : F) * rho 863) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1336 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),863)] * dotLC rho [((1 : F),743)] = dotLC rho [((1 : F),864)]) :
    ((1 : F) * rho 863) * ((1 : F) * rho 743) = ((1 : F) * rho 864) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1337 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),864)] * dotLC rho [((1 : F),741)] = dotLC rho [((1 : F),865)]) :
    ((1 : F) * rho 864) * ((1 : F) * rho 741) = ((1 : F) * rho 865) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1338 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),865)] * dotLC rho [((1 : F),737)] = dotLC rho [((1 : F),866)]) :
    ((1 : F) * rho 865) * ((1 : F) * rho 737) = ((1 : F) * rho 866) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1339 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),866)] * dotLC rho [((1 : F),736)] = dotLC rho [((1 : F),867)]) :
    ((1 : F) * rho 866) * ((1 : F) * rho 736) = ((1 : F) * rho 867) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1340 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),867)] * dotLC rho [((1 : F),735)] = dotLC rho [((1 : F),868)]) :
    ((1 : F) * rho 867) * ((1 : F) * rho 735) = ((1 : F) * rho 868) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1341 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),868)] * dotLC rho [((1 : F),734)] = dotLC rho [((1 : F),869)]) :
    ((1 : F) * rho 868) * ((1 : F) * rho 734) = ((1 : F) * rho 869) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1342 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),869)] * dotLC rho [((1 : F),731)] = dotLC rho [((1 : F),870)]) :
    ((1 : F) * rho 869) * ((1 : F) * rho 731) = ((1 : F) * rho 870) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1343 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),870)] * dotLC rho [((1 : F),729)] = dotLC rho [((1 : F),871)]) :
    ((1 : F) * rho 870) * ((1 : F) * rho 729) = ((1 : F) * rho 871) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1344 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),871)] * dotLC rho [((1 : F),728)] = dotLC rho [((1 : F),872)]) :
    ((1 : F) * rho 871) * ((1 : F) * rho 728) = ((1 : F) * rho 872) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1345 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),872)] * dotLC rho [((1 : F),727)] = dotLC rho [((1 : F),873)]) :
    ((1 : F) * rho 872) * ((1 : F) * rho 727) = ((1 : F) * rho 873) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1346 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),873)] * dotLC rho [((1 : F),722)] = dotLC rho [((1 : F),874)]) :
    ((1 : F) * rho 873) * ((1 : F) * rho 722) = ((1 : F) * rho 874) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1347 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),874)] * dotLC rho [((1 : F),721)] = dotLC rho [((1 : F),875)]) :
    ((1 : F) * rho 874) * ((1 : F) * rho 721) = ((1 : F) * rho 875) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1348 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),875)] * dotLC rho [((1 : F),719)] = dotLC rho [((1 : F),876)]) :
    ((1 : F) * rho 875) * ((1 : F) * rho 719) = ((1 : F) * rho 876) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1349 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),876)] * dotLC rho [((1 : F),718)] = dotLC rho [((1 : F),877)]) :
    ((1 : F) * rho 876) * ((1 : F) * rho 718) = ((1 : F) * rho 877) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1350 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),877)] * dotLC rho [((1 : F),717)] = dotLC rho [((1 : F),878)]) :
    ((1 : F) * rho 877) * ((1 : F) * rho 717) = ((1 : F) * rho 878) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1351 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),878)] * dotLC rho [((1 : F),716)] = dotLC rho [((1 : F),879)]) :
    ((1 : F) * rho 878) * ((1 : F) * rho 716) = ((1 : F) * rho 879) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1352 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),879)] * dotLC rho [((1 : F),714)] = dotLC rho [((1 : F),880)]) :
    ((1 : F) * rho 879) * ((1 : F) * rho 714) = ((1 : F) * rho 880) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1353 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),880)] * dotLC rho [((1 : F),713)] = dotLC rho [((1 : F),881)]) :
    ((1 : F) * rho 880) * ((1 : F) * rho 713) = ((1 : F) * rho 881) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1354 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),881)] * dotLC rho [((1 : F),701)] = dotLC rho [((1 : F),882)]) :
    ((1 : F) * rho 881) * ((1 : F) * rho 701) = ((1 : F) * rho 882) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1355 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),882)] * dotLC rho [((1 : F),699)] = dotLC rho [((1 : F),883)]) :
    ((1 : F) * rho 882) * ((1 : F) * rho 699) = ((1 : F) * rho 883) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1356 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),883)] * dotLC rho [((1 : F),697)] = dotLC rho [((1 : F),884)]) :
    ((1 : F) * rho 883) * ((1 : F) * rho 697) = ((1 : F) * rho 884) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1357 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),884)] * dotLC rho [((1 : F),696)] = dotLC rho [((1 : F),885)]) :
    ((1 : F) * rho 884) * ((1 : F) * rho 696) = ((1 : F) * rho 885) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1358 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),885)] * dotLC rho [((1 : F),693)] = dotLC rho [((1 : F),886)]) :
    ((1 : F) * rho 885) * ((1 : F) * rho 693) = ((1 : F) * rho 886) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1359 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),886)] * dotLC rho [((1 : F),692)] = dotLC rho [((1 : F),887)]) :
    ((1 : F) * rho 886) * ((1 : F) * rho 692) = ((1 : F) * rho 887) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1360 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),887)] * dotLC rho [((1 : F),690)] = dotLC rho [((1 : F),888)]) :
    ((1 : F) * rho 887) * ((1 : F) * rho 690) = ((1 : F) * rho 888) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1361 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),888)] * dotLC rho [((1 : F),688)] = dotLC rho [((1 : F),889)]) :
    ((1 : F) * rho 888) * ((1 : F) * rho 688) = ((1 : F) * rho 889) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1362 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),889)] * dotLC rho [((1 : F),686)] = dotLC rho [((1 : F),890)]) :
    ((1 : F) * rho 889) * ((1 : F) * rho 686) = ((1 : F) * rho 890) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1363 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),890)] * dotLC rho [((1 : F),683)] = dotLC rho [((1 : F),891)]) :
    ((1 : F) * rho 890) * ((1 : F) * rho 683) = ((1 : F) * rho 891) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1364 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),891)] * dotLC rho [((1 : F),682)] = dotLC rho [((1 : F),892)]) :
    ((1 : F) * rho 891) * ((1 : F) * rho 682) = ((1 : F) * rho 892) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1365 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),892)] * dotLC rho [((1 : F),681)] = dotLC rho [((1 : F),893)]) :
    ((1 : F) * rho 892) * ((1 : F) * rho 681) = ((1 : F) * rho 893) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1366 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),893)] * dotLC rho [((1 : F),679)] = dotLC rho [((1 : F),894)]) :
    ((1 : F) * rho 893) * ((1 : F) * rho 679) = ((1 : F) * rho 894) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1367 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),894)] * dotLC rho [((1 : F),678)] = dotLC rho [((1 : F),895)]) :
    ((1 : F) * rho 894) * ((1 : F) * rho 678) = ((1 : F) * rho 895) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1368 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),895)] * dotLC rho [((1 : F),676)] = dotLC rho [((1 : F),896)]) :
    ((1 : F) * rho 895) * ((1 : F) * rho 676) = ((1 : F) * rho 896) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1369 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),896)] * dotLC rho [((1 : F),675)] = dotLC rho [((1 : F),897)]) :
    ((1 : F) * rho 896) * ((1 : F) * rho 675) = ((1 : F) * rho 897) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1370 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),897)] * dotLC rho [((1 : F),674)] = dotLC rho [((1 : F),898)]) :
    ((1 : F) * rho 897) * ((1 : F) * rho 674) = ((1 : F) * rho 898) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1371 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),898)] * dotLC rho [((1 : F),673)] = dotLC rho [((1 : F),899)]) :
    ((1 : F) * rho 898) * ((1 : F) * rho 673) = ((1 : F) * rho 899) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1372 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),899)] * dotLC rho [((1 : F),672)] = dotLC rho [((1 : F),900)]) :
    ((1 : F) * rho 899) * ((1 : F) * rho 672) = ((1 : F) * rho 900) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1373 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),900)] * dotLC rho [((1 : F),671)] = dotLC rho [((1 : F),901)]) :
    ((1 : F) * rho 900) * ((1 : F) * rho 671) = ((1 : F) * rho 901) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1374 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),901)] * dotLC rho [((1 : F),670)] = dotLC rho [((1 : F),902)]) :
    ((1 : F) * rho 901) * ((1 : F) * rho 670) = ((1 : F) * rho 902) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1375 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),902)] * dotLC rho [((1 : F),668)] = dotLC rho [((1 : F),903)]) :
    ((1 : F) * rho 902) * ((1 : F) * rho 668) = ((1 : F) * rho 903) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1376 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),903)] * dotLC rho [((1 : F),667)] = dotLC rho [((1 : F),904)]) :
    ((1 : F) * rho 903) * ((1 : F) * rho 667) = ((1 : F) * rho 904) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1377 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),904)] * dotLC rho [((1 : F),665)] = dotLC rho [((1 : F),905)]) :
    ((1 : F) * rho 904) * ((1 : F) * rho 665) = ((1 : F) * rho 905) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1378 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),905)] * dotLC rho [((1 : F),637)] = dotLC rho [((1 : F),906)]) :
    ((1 : F) * rho 905) * ((1 : F) * rho 637) = ((1 : F) * rho 906) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1379 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),906)] * dotLC rho [((1 : F),632)] = dotLC rho [((1 : F),907)]) :
    ((1 : F) * rho 906) * ((1 : F) * rho 632) = ((1 : F) * rho 907) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1380 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),907)] * dotLC rho [((1 : F),630)] = dotLC rho [((1 : F),908)]) :
    ((1 : F) * rho 907) * ((1 : F) * rho 630) = ((1 : F) * rho 908) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1381 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),908)] * dotLC rho [((1 : F),625)] = dotLC rho [((1 : F),909)]) :
    ((1 : F) * rho 908) * ((1 : F) * rho 625) = ((1 : F) * rho 909) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1382 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),909)] * dotLC rho [((1 : F),621)] = dotLC rho [((1 : F),910)]) :
    ((1 : F) * rho 909) * ((1 : F) * rho 621) = ((1 : F) * rho 910) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1383 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),910)] * dotLC rho [((1 : F),620)] = dotLC rho [((1 : F),911)]) :
    ((1 : F) * rho 910) * ((1 : F) * rho 620) = ((1 : F) * rho 911) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1384 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),824)] * dotLC rho [((1 : F),0), ((-1 : F),824), ((-1 : F),825)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 824) * ((1 : F) * rho 0 + (-1 : F) * rho 824 + (-1 : F) * rho 825) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1385 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),823)] * dotLC rho [((1 : F),0), ((-1 : F),823), ((-1 : F),825)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 823) * ((1 : F) * rho 0 + (-1 : F) * rho 823 + (-1 : F) * rho 825) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1386 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),821)] * dotLC rho [((1 : F),0), ((-1 : F),821), ((-1 : F),826)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 821) * ((1 : F) * rho 0 + (-1 : F) * rho 821 + (-1 : F) * rho 826) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1387 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),819)] * dotLC rho [((1 : F),0), ((-1 : F),819), ((-1 : F),827)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 819) * ((1 : F) * rho 0 + (-1 : F) * rho 819 + (-1 : F) * rho 827) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1388 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),817)] * dotLC rho [((1 : F),0), ((-1 : F),817), ((-1 : F),828)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 817) * ((1 : F) * rho 0 + (-1 : F) * rho 817 + (-1 : F) * rho 828) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1389 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),815)] * dotLC rho [((1 : F),0), ((-1 : F),815), ((-1 : F),829)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 815) * ((1 : F) * rho 0 + (-1 : F) * rho 815 + (-1 : F) * rho 829) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1390 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),812)] * dotLC rho [((1 : F),0), ((-1 : F),812), ((-1 : F),831)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 812) * ((1 : F) * rho 0 + (-1 : F) * rho 812 + (-1 : F) * rho 831) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1391 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),809)] * dotLC rho [((1 : F),0), ((-1 : F),809), ((-1 : F),833)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 809) * ((1 : F) * rho 0 + (-1 : F) * rho 809 + (-1 : F) * rho 833) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1392 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),808)] * dotLC rho [((1 : F),0), ((-1 : F),808), ((-1 : F),833)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 808) * ((1 : F) * rho 0 + (-1 : F) * rho 808 + (-1 : F) * rho 833) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1393 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),806)] * dotLC rho [((1 : F),0), ((-1 : F),806), ((-1 : F),834)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 806) * ((1 : F) * rho 0 + (-1 : F) * rho 806 + (-1 : F) * rho 834) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1394 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),804)] * dotLC rho [((1 : F),0), ((-1 : F),804), ((-1 : F),835)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 804) * ((1 : F) * rho 0 + (-1 : F) * rho 804 + (-1 : F) * rho 835) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1395 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),802)] * dotLC rho [((1 : F),0), ((-1 : F),802), ((-1 : F),836)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 802) * ((1 : F) * rho 0 + (-1 : F) * rho 802 + (-1 : F) * rho 836) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1396 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),797)] * dotLC rho [((1 : F),0), ((-1 : F),797), ((-1 : F),840)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 797) * ((1 : F) * rho 0 + (-1 : F) * rho 797 + (-1 : F) * rho 840) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1397 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),795)] * dotLC rho [((1 : F),0), ((-1 : F),795), ((-1 : F),841)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 795) * ((1 : F) * rho 0 + (-1 : F) * rho 795 + (-1 : F) * rho 841) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1398 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),794)] * dotLC rho [((1 : F),0), ((-1 : F),794), ((-1 : F),841)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 794) * ((1 : F) * rho 0 + (-1 : F) * rho 794 + (-1 : F) * rho 841) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1399 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),791)] * dotLC rho [((1 : F),0), ((-1 : F),791), ((-1 : F),843)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 791) * ((1 : F) * rho 0 + (-1 : F) * rho 791 + (-1 : F) * rho 843) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1400 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),789)] * dotLC rho [((1 : F),0), ((-1 : F),789), ((-1 : F),844)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 789) * ((1 : F) * rho 0 + (-1 : F) * rho 789 + (-1 : F) * rho 844) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1401 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),788)] * dotLC rho [((1 : F),0), ((-1 : F),788), ((-1 : F),844)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 788) * ((1 : F) * rho 0 + (-1 : F) * rho 788 + (-1 : F) * rho 844) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1402 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),787)] * dotLC rho [((1 : F),0), ((-1 : F),787), ((-1 : F),844)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 787) * ((1 : F) * rho 0 + (-1 : F) * rho 787 + (-1 : F) * rho 844) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1403 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),785)] * dotLC rho [((1 : F),0), ((-1 : F),785), ((-1 : F),845)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 785) * ((1 : F) * rho 0 + (-1 : F) * rho 785 + (-1 : F) * rho 845) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1404 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),782)] * dotLC rho [((1 : F),0), ((-1 : F),782), ((-1 : F),847)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 782) * ((1 : F) * rho 0 + (-1 : F) * rho 782 + (-1 : F) * rho 847) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1405 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),781)] * dotLC rho [((1 : F),0), ((-1 : F),781), ((-1 : F),847)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 781) * ((1 : F) * rho 0 + (-1 : F) * rho 781 + (-1 : F) * rho 847) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1406 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),779)] * dotLC rho [((1 : F),0), ((-1 : F),779), ((-1 : F),848)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 779) * ((1 : F) * rho 0 + (-1 : F) * rho 779 + (-1 : F) * rho 848) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1407 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),777)] * dotLC rho [((1 : F),0), ((-1 : F),777), ((-1 : F),849)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 777) * ((1 : F) * rho 0 + (-1 : F) * rho 777 + (-1 : F) * rho 849) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1408 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),776)] * dotLC rho [((1 : F),0), ((-1 : F),776), ((-1 : F),849)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 776) * ((1 : F) * rho 0 + (-1 : F) * rho 776 + (-1 : F) * rho 849) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1409 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),774)] * dotLC rho [((1 : F),0), ((-1 : F),774), ((-1 : F),850)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 774) * ((1 : F) * rho 0 + (-1 : F) * rho 774 + (-1 : F) * rho 850) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1410 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),772)] * dotLC rho [((1 : F),0), ((-1 : F),772), ((-1 : F),851)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 772) * ((1 : F) * rho 0 + (-1 : F) * rho 772 + (-1 : F) * rho 851) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1411 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),770)] * dotLC rho [((1 : F),0), ((-1 : F),770), ((-1 : F),852)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 770) * ((1 : F) * rho 0 + (-1 : F) * rho 770 + (-1 : F) * rho 852) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1412 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),768)] * dotLC rho [((1 : F),0), ((-1 : F),768), ((-1 : F),853)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 768) * ((1 : F) * rho 0 + (-1 : F) * rho 768 + (-1 : F) * rho 853) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1413 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),765)] * dotLC rho [((1 : F),0), ((-1 : F),765), ((-1 : F),855)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 765) * ((1 : F) * rho 0 + (-1 : F) * rho 765 + (-1 : F) * rho 855) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1414 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),764)] * dotLC rho [((1 : F),0), ((-1 : F),764), ((-1 : F),855)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 764) * ((1 : F) * rho 0 + (-1 : F) * rho 764 + (-1 : F) * rho 855) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1415 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),761)] * dotLC rho [((1 : F),0), ((-1 : F),761), ((-1 : F),857)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 761) * ((1 : F) * rho 0 + (-1 : F) * rho 761 + (-1 : F) * rho 857) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1416 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),760)] * dotLC rho [((1 : F),0), ((-1 : F),760), ((-1 : F),857)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 760) * ((1 : F) * rho 0 + (-1 : F) * rho 760 + (-1 : F) * rho 857) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1417 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),759)] * dotLC rho [((1 : F),0), ((-1 : F),759), ((-1 : F),857)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 759) * ((1 : F) * rho 0 + (-1 : F) * rho 759 + (-1 : F) * rho 857) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1418 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),758)] * dotLC rho [((1 : F),0), ((-1 : F),758), ((-1 : F),857)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 758) * ((1 : F) * rho 0 + (-1 : F) * rho 758 + (-1 : F) * rho 857) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1419 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),757)] * dotLC rho [((1 : F),0), ((-1 : F),757), ((-1 : F),857)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 757) * ((1 : F) * rho 0 + (-1 : F) * rho 757 + (-1 : F) * rho 857) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1420 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),755)] * dotLC rho [((1 : F),0), ((-1 : F),755), ((-1 : F),858)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 755) * ((1 : F) * rho 0 + (-1 : F) * rho 755 + (-1 : F) * rho 858) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1421 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),752)] * dotLC rho [((1 : F),0), ((-1 : F),752), ((-1 : F),860)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 752) * ((1 : F) * rho 0 + (-1 : F) * rho 752 + (-1 : F) * rho 860) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1422 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),750)] * dotLC rho [((1 : F),0), ((-1 : F),750), ((-1 : F),861)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 750) * ((1 : F) * rho 0 + (-1 : F) * rho 750 + (-1 : F) * rho 861) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1423 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),749)] * dotLC rho [((1 : F),0), ((-1 : F),749), ((-1 : F),861)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 749) * ((1 : F) * rho 0 + (-1 : F) * rho 749 + (-1 : F) * rho 861) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1424 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),748)] * dotLC rho [((1 : F),0), ((-1 : F),748), ((-1 : F),861)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 748) * ((1 : F) * rho 0 + (-1 : F) * rho 748 + (-1 : F) * rho 861) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1425 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),746)] * dotLC rho [((1 : F),0), ((-1 : F),746), ((-1 : F),862)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 746) * ((1 : F) * rho 0 + (-1 : F) * rho 746 + (-1 : F) * rho 862) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1426 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),745)] * dotLC rho [((1 : F),0), ((-1 : F),745), ((-1 : F),862)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 745) * ((1 : F) * rho 0 + (-1 : F) * rho 745 + (-1 : F) * rho 862) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1427 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),742)] * dotLC rho [((1 : F),0), ((-1 : F),742), ((-1 : F),864)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 742) * ((1 : F) * rho 0 + (-1 : F) * rho 742 + (-1 : F) * rho 864) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1428 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),740)] * dotLC rho [((1 : F),0), ((-1 : F),740), ((-1 : F),865)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 740) * ((1 : F) * rho 0 + (-1 : F) * rho 740 + (-1 : F) * rho 865) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1429 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),739)] * dotLC rho [((1 : F),0), ((-1 : F),739), ((-1 : F),865)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 739) * ((1 : F) * rho 0 + (-1 : F) * rho 739 + (-1 : F) * rho 865) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1430 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),738)] * dotLC rho [((1 : F),0), ((-1 : F),738), ((-1 : F),865)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 738) * ((1 : F) * rho 0 + (-1 : F) * rho 738 + (-1 : F) * rho 865) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1431 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),733)] * dotLC rho [((1 : F),0), ((-1 : F),733), ((-1 : F),869)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 733) * ((1 : F) * rho 0 + (-1 : F) * rho 733 + (-1 : F) * rho 869) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1432 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),732)] * dotLC rho [((1 : F),0), ((-1 : F),732), ((-1 : F),869)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 732) * ((1 : F) * rho 0 + (-1 : F) * rho 732 + (-1 : F) * rho 869) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1433 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),730)] * dotLC rho [((1 : F),0), ((-1 : F),730), ((-1 : F),870)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 730) * ((1 : F) * rho 0 + (-1 : F) * rho 730 + (-1 : F) * rho 870) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1434 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),726)] * dotLC rho [((1 : F),0), ((-1 : F),726), ((-1 : F),873)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 726) * ((1 : F) * rho 0 + (-1 : F) * rho 726 + (-1 : F) * rho 873) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1435 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),725)] * dotLC rho [((1 : F),0), ((-1 : F),725), ((-1 : F),873)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 725) * ((1 : F) * rho 0 + (-1 : F) * rho 725 + (-1 : F) * rho 873) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1436 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),724)] * dotLC rho [((1 : F),0), ((-1 : F),724), ((-1 : F),873)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 724) * ((1 : F) * rho 0 + (-1 : F) * rho 724 + (-1 : F) * rho 873) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1437 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),723)] * dotLC rho [((1 : F),0), ((-1 : F),723), ((-1 : F),873)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 723) * ((1 : F) * rho 0 + (-1 : F) * rho 723 + (-1 : F) * rho 873) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1438 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),720)] * dotLC rho [((1 : F),0), ((-1 : F),720), ((-1 : F),875)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 720) * ((1 : F) * rho 0 + (-1 : F) * rho 720 + (-1 : F) * rho 875) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1439 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),715)] * dotLC rho [((1 : F),0), ((-1 : F),715), ((-1 : F),879)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 715) * ((1 : F) * rho 0 + (-1 : F) * rho 715 + (-1 : F) * rho 879) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1440 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),712)] * dotLC rho [((1 : F),0), ((-1 : F),712), ((-1 : F),881)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 712) * ((1 : F) * rho 0 + (-1 : F) * rho 712 + (-1 : F) * rho 881) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1441 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),711)] * dotLC rho [((1 : F),0), ((-1 : F),711), ((-1 : F),881)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 711) * ((1 : F) * rho 0 + (-1 : F) * rho 711 + (-1 : F) * rho 881) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1442 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),710)] * dotLC rho [((1 : F),0), ((-1 : F),710), ((-1 : F),881)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 710) * ((1 : F) * rho 0 + (-1 : F) * rho 710 + (-1 : F) * rho 881) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1443 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),709)] * dotLC rho [((1 : F),0), ((-1 : F),709), ((-1 : F),881)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 709) * ((1 : F) * rho 0 + (-1 : F) * rho 709 + (-1 : F) * rho 881) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1444 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),708)] * dotLC rho [((1 : F),0), ((-1 : F),708), ((-1 : F),881)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 708) * ((1 : F) * rho 0 + (-1 : F) * rho 708 + (-1 : F) * rho 881) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1445 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),707)] * dotLC rho [((1 : F),0), ((-1 : F),707), ((-1 : F),881)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 707) * ((1 : F) * rho 0 + (-1 : F) * rho 707 + (-1 : F) * rho 881) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1446 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),706)] * dotLC rho [((1 : F),0), ((-1 : F),706), ((-1 : F),881)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 706) * ((1 : F) * rho 0 + (-1 : F) * rho 706 + (-1 : F) * rho 881) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1447 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),705)] * dotLC rho [((1 : F),0), ((-1 : F),705), ((-1 : F),881)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 705) * ((1 : F) * rho 0 + (-1 : F) * rho 705 + (-1 : F) * rho 881) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1448 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),704)] * dotLC rho [((1 : F),0), ((-1 : F),704), ((-1 : F),881)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 704) * ((1 : F) * rho 0 + (-1 : F) * rho 704 + (-1 : F) * rho 881) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1449 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),703)] * dotLC rho [((1 : F),0), ((-1 : F),703), ((-1 : F),881)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 703) * ((1 : F) * rho 0 + (-1 : F) * rho 703 + (-1 : F) * rho 881) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1450 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),702)] * dotLC rho [((1 : F),0), ((-1 : F),702), ((-1 : F),881)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 702) * ((1 : F) * rho 0 + (-1 : F) * rho 702 + (-1 : F) * rho 881) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1451 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),700)] * dotLC rho [((1 : F),0), ((-1 : F),700), ((-1 : F),882)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 700) * ((1 : F) * rho 0 + (-1 : F) * rho 700 + (-1 : F) * rho 882) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1452 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),698)] * dotLC rho [((1 : F),0), ((-1 : F),698), ((-1 : F),883)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 698) * ((1 : F) * rho 0 + (-1 : F) * rho 698 + (-1 : F) * rho 883) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1453 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),695)] * dotLC rho [((1 : F),0), ((-1 : F),695), ((-1 : F),885)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 695) * ((1 : F) * rho 0 + (-1 : F) * rho 695 + (-1 : F) * rho 885) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1454 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),694)] * dotLC rho [((1 : F),0), ((-1 : F),694), ((-1 : F),885)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 694) * ((1 : F) * rho 0 + (-1 : F) * rho 694 + (-1 : F) * rho 885) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1455 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),691)] * dotLC rho [((1 : F),0), ((-1 : F),691), ((-1 : F),887)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 691) * ((1 : F) * rho 0 + (-1 : F) * rho 691 + (-1 : F) * rho 887) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1456 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),689)] * dotLC rho [((1 : F),0), ((-1 : F),689), ((-1 : F),888)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 689) * ((1 : F) * rho 0 + (-1 : F) * rho 689 + (-1 : F) * rho 888) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1457 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),687)] * dotLC rho [((1 : F),0), ((-1 : F),687), ((-1 : F),889)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 687) * ((1 : F) * rho 0 + (-1 : F) * rho 687 + (-1 : F) * rho 889) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1458 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),685)] * dotLC rho [((1 : F),0), ((-1 : F),685), ((-1 : F),890)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 685) * ((1 : F) * rho 0 + (-1 : F) * rho 685 + (-1 : F) * rho 890) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1459 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),684)] * dotLC rho [((1 : F),0), ((-1 : F),684), ((-1 : F),890)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 684) * ((1 : F) * rho 0 + (-1 : F) * rho 684 + (-1 : F) * rho 890) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1460 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),680)] * dotLC rho [((1 : F),0), ((-1 : F),680), ((-1 : F),893)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 680) * ((1 : F) * rho 0 + (-1 : F) * rho 680 + (-1 : F) * rho 893) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1461 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),677)] * dotLC rho [((1 : F),0), ((-1 : F),677), ((-1 : F),895)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 677) * ((1 : F) * rho 0 + (-1 : F) * rho 677 + (-1 : F) * rho 895) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1462 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),669)] * dotLC rho [((1 : F),0), ((-1 : F),669), ((-1 : F),902)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 669) * ((1 : F) * rho 0 + (-1 : F) * rho 669 + (-1 : F) * rho 902) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1463 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),666)] * dotLC rho [((1 : F),0), ((-1 : F),666), ((-1 : F),904)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 666) * ((1 : F) * rho 0 + (-1 : F) * rho 666 + (-1 : F) * rho 904) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1464 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),664)] * dotLC rho [((1 : F),0), ((-1 : F),664), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 664) * ((1 : F) * rho 0 + (-1 : F) * rho 664 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1465 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),663)] * dotLC rho [((1 : F),0), ((-1 : F),663), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 663) * ((1 : F) * rho 0 + (-1 : F) * rho 663 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1466 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),662)] * dotLC rho [((1 : F),0), ((-1 : F),662), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 662) * ((1 : F) * rho 0 + (-1 : F) * rho 662 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1467 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),661)] * dotLC rho [((1 : F),0), ((-1 : F),661), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 661) * ((1 : F) * rho 0 + (-1 : F) * rho 661 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1468 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),660)] * dotLC rho [((1 : F),0), ((-1 : F),660), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 660) * ((1 : F) * rho 0 + (-1 : F) * rho 660 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1469 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),659)] * dotLC rho [((1 : F),0), ((-1 : F),659), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 659) * ((1 : F) * rho 0 + (-1 : F) * rho 659 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1470 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),658)] * dotLC rho [((1 : F),0), ((-1 : F),658), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 658) * ((1 : F) * rho 0 + (-1 : F) * rho 658 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1471 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),657)] * dotLC rho [((1 : F),0), ((-1 : F),657), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 657) * ((1 : F) * rho 0 + (-1 : F) * rho 657 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1472 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),656)] * dotLC rho [((1 : F),0), ((-1 : F),656), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 656) * ((1 : F) * rho 0 + (-1 : F) * rho 656 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1473 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),655)] * dotLC rho [((1 : F),0), ((-1 : F),655), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 655) * ((1 : F) * rho 0 + (-1 : F) * rho 655 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1474 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),654)] * dotLC rho [((1 : F),0), ((-1 : F),654), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 654) * ((1 : F) * rho 0 + (-1 : F) * rho 654 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1475 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),653)] * dotLC rho [((1 : F),0), ((-1 : F),653), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 653) * ((1 : F) * rho 0 + (-1 : F) * rho 653 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1476 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),652)] * dotLC rho [((1 : F),0), ((-1 : F),652), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 652) * ((1 : F) * rho 0 + (-1 : F) * rho 652 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1477 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),651)] * dotLC rho [((1 : F),0), ((-1 : F),651), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 651) * ((1 : F) * rho 0 + (-1 : F) * rho 651 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1478 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),650)] * dotLC rho [((1 : F),0), ((-1 : F),650), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 650) * ((1 : F) * rho 0 + (-1 : F) * rho 650 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1479 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),649)] * dotLC rho [((1 : F),0), ((-1 : F),649), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 649) * ((1 : F) * rho 0 + (-1 : F) * rho 649 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1480 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),648)] * dotLC rho [((1 : F),0), ((-1 : F),648), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 648) * ((1 : F) * rho 0 + (-1 : F) * rho 648 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1481 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),647)] * dotLC rho [((1 : F),0), ((-1 : F),647), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 647) * ((1 : F) * rho 0 + (-1 : F) * rho 647 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1482 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),646)] * dotLC rho [((1 : F),0), ((-1 : F),646), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 646) * ((1 : F) * rho 0 + (-1 : F) * rho 646 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1483 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),645)] * dotLC rho [((1 : F),0), ((-1 : F),645), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 645) * ((1 : F) * rho 0 + (-1 : F) * rho 645 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1484 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),644)] * dotLC rho [((1 : F),0), ((-1 : F),644), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 644) * ((1 : F) * rho 0 + (-1 : F) * rho 644 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1485 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),643)] * dotLC rho [((1 : F),0), ((-1 : F),643), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 643) * ((1 : F) * rho 0 + (-1 : F) * rho 643 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1486 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),642)] * dotLC rho [((1 : F),0), ((-1 : F),642), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 642) * ((1 : F) * rho 0 + (-1 : F) * rho 642 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1487 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),641)] * dotLC rho [((1 : F),0), ((-1 : F),641), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 641) * ((1 : F) * rho 0 + (-1 : F) * rho 641 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1488 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),640)] * dotLC rho [((1 : F),0), ((-1 : F),640), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 640) * ((1 : F) * rho 0 + (-1 : F) * rho 640 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1489 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),639)] * dotLC rho [((1 : F),0), ((-1 : F),639), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 639) * ((1 : F) * rho 0 + (-1 : F) * rho 639 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1490 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),638)] * dotLC rho [((1 : F),0), ((-1 : F),638), ((-1 : F),905)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 638) * ((1 : F) * rho 0 + (-1 : F) * rho 638 + (-1 : F) * rho 905) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1491 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),636)] * dotLC rho [((1 : F),0), ((-1 : F),636), ((-1 : F),906)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 636) * ((1 : F) * rho 0 + (-1 : F) * rho 636 + (-1 : F) * rho 906) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1492 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),635)] * dotLC rho [((1 : F),0), ((-1 : F),635), ((-1 : F),906)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 635) * ((1 : F) * rho 0 + (-1 : F) * rho 635 + (-1 : F) * rho 906) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1493 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),634)] * dotLC rho [((1 : F),0), ((-1 : F),634), ((-1 : F),906)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 634) * ((1 : F) * rho 0 + (-1 : F) * rho 634 + (-1 : F) * rho 906) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1494 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),633)] * dotLC rho [((1 : F),0), ((-1 : F),633), ((-1 : F),906)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 633) * ((1 : F) * rho 0 + (-1 : F) * rho 633 + (-1 : F) * rho 906) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1495 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),631)] * dotLC rho [((1 : F),0), ((-1 : F),631), ((-1 : F),907)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 631) * ((1 : F) * rho 0 + (-1 : F) * rho 631 + (-1 : F) * rho 907) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1496 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),629)] * dotLC rho [((1 : F),0), ((-1 : F),629), ((-1 : F),908)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 629) * ((1 : F) * rho 0 + (-1 : F) * rho 629 + (-1 : F) * rho 908) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1497 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),628)] * dotLC rho [((1 : F),0), ((-1 : F),628), ((-1 : F),908)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 628) * ((1 : F) * rho 0 + (-1 : F) * rho 628 + (-1 : F) * rho 908) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1498 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),627)] * dotLC rho [((1 : F),0), ((-1 : F),627), ((-1 : F),908)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 627) * ((1 : F) * rho 0 + (-1 : F) * rho 627 + (-1 : F) * rho 908) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1499 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),626)] * dotLC rho [((1 : F),0), ((-1 : F),626), ((-1 : F),908)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 626) * ((1 : F) * rho 0 + (-1 : F) * rho 626 + (-1 : F) * rho 908) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1500 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),624)] * dotLC rho [((1 : F),0), ((-1 : F),624), ((-1 : F),909)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 624) * ((1 : F) * rho 0 + (-1 : F) * rho 624 + (-1 : F) * rho 909) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1501 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),623)] * dotLC rho [((1 : F),0), ((-1 : F),623), ((-1 : F),909)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 623) * ((1 : F) * rho 0 + (-1 : F) * rho 623 + (-1 : F) * rho 909) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1502 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),622)] * dotLC rho [((1 : F),0), ((-1 : F),622), ((-1 : F),909)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 622) * ((1 : F) * rho 0 + (-1 : F) * rho 622 + (-1 : F) * rho 909) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1503 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),619)] * dotLC rho [((1 : F),0), ((-1 : F),619), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 619) * ((1 : F) * rho 0 + (-1 : F) * rho 619 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1504 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),618)] * dotLC rho [((1 : F),0), ((-1 : F),618), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 618) * ((1 : F) * rho 0 + (-1 : F) * rho 618 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1505 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),617)] * dotLC rho [((1 : F),0), ((-1 : F),617), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 617) * ((1 : F) * rho 0 + (-1 : F) * rho 617 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1506 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),616)] * dotLC rho [((1 : F),0), ((-1 : F),616), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 616) * ((1 : F) * rho 0 + (-1 : F) * rho 616 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1507 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),615)] * dotLC rho [((1 : F),0), ((-1 : F),615), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 615) * ((1 : F) * rho 0 + (-1 : F) * rho 615 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1508 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),614)] * dotLC rho [((1 : F),0), ((-1 : F),614), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 614) * ((1 : F) * rho 0 + (-1 : F) * rho 614 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1509 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),613)] * dotLC rho [((1 : F),0), ((-1 : F),613), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 613) * ((1 : F) * rho 0 + (-1 : F) * rho 613 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1510 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),612)] * dotLC rho [((1 : F),0), ((-1 : F),612), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 612) * ((1 : F) * rho 0 + (-1 : F) * rho 612 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1511 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),611)] * dotLC rho [((1 : F),0), ((-1 : F),611), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 611) * ((1 : F) * rho 0 + (-1 : F) * rho 611 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1512 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),610)] * dotLC rho [((1 : F),0), ((-1 : F),610), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 610) * ((1 : F) * rho 0 + (-1 : F) * rho 610 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1513 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),609)] * dotLC rho [((1 : F),0), ((-1 : F),609), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 609) * ((1 : F) * rho 0 + (-1 : F) * rho 609 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1514 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),608)] * dotLC rho [((1 : F),0), ((-1 : F),608), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 608) * ((1 : F) * rho 0 + (-1 : F) * rho 608 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1515 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),607)] * dotLC rho [((1 : F),0), ((-1 : F),607), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 607) * ((1 : F) * rho 0 + (-1 : F) * rho 607 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1516 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),606)] * dotLC rho [((1 : F),0), ((-1 : F),606), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 606) * ((1 : F) * rho 0 + (-1 : F) * rho 606 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1517 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),605)] * dotLC rho [((1 : F),0), ((-1 : F),605), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 605) * ((1 : F) * rho 0 + (-1 : F) * rho 605 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1518 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),604)] * dotLC rho [((1 : F),0), ((-1 : F),604), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 604) * ((1 : F) * rho 0 + (-1 : F) * rho 604 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1519 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),603)] * dotLC rho [((1 : F),0), ((-1 : F),603), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 603) * ((1 : F) * rho 0 + (-1 : F) * rho 603 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1520 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),602)] * dotLC rho [((1 : F),0), ((-1 : F),602), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 602) * ((1 : F) * rho 0 + (-1 : F) * rho 602 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1521 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),601)] * dotLC rho [((1 : F),0), ((-1 : F),601), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 601) * ((1 : F) * rho 0 + (-1 : F) * rho 601 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1522 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),600)] * dotLC rho [((1 : F),0), ((-1 : F),600), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 600) * ((1 : F) * rho 0 + (-1 : F) * rho 600 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1523 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),599)] * dotLC rho [((1 : F),0), ((-1 : F),599), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 599) * ((1 : F) * rho 0 + (-1 : F) * rho 599 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1524 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),598)] * dotLC rho [((1 : F),0), ((-1 : F),598), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 598) * ((1 : F) * rho 0 + (-1 : F) * rho 598 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1525 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),597)] * dotLC rho [((1 : F),0), ((-1 : F),597), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 597) * ((1 : F) * rho 0 + (-1 : F) * rho 597 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1526 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),596)] * dotLC rho [((1 : F),0), ((-1 : F),596), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 596) * ((1 : F) * rho 0 + (-1 : F) * rho 596 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1527 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),595)] * dotLC rho [((1 : F),0), ((-1 : F),595), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 595) * ((1 : F) * rho 0 + (-1 : F) * rho 595 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1528 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),594)] * dotLC rho [((1 : F),0), ((-1 : F),594), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 594) * ((1 : F) * rho 0 + (-1 : F) * rho 594 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1529 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),593)] * dotLC rho [((1 : F),0), ((-1 : F),593), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 593) * ((1 : F) * rho 0 + (-1 : F) * rho 593 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1530 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),592)] * dotLC rho [((1 : F),0), ((-1 : F),592), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 592) * ((1 : F) * rho 0 + (-1 : F) * rho 592 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1531 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),591)] * dotLC rho [((1 : F),0), ((-1 : F),591), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 591) * ((1 : F) * rho 0 + (-1 : F) * rho 591 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1532 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),590)] * dotLC rho [((1 : F),0), ((-1 : F),590), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 590) * ((1 : F) * rho 0 + (-1 : F) * rho 590 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1533 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),589)] * dotLC rho [((1 : F),0), ((-1 : F),589), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 589) * ((1 : F) * rho 0 + (-1 : F) * rho 589 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1534 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),588)] * dotLC rho [((1 : F),0), ((-1 : F),588), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 588) * ((1 : F) * rho 0 + (-1 : F) * rho 588 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1535 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),587)] * dotLC rho [((1 : F),0), ((-1 : F),587), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 587) * ((1 : F) * rho 0 + (-1 : F) * rho 587 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1536 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),586)] * dotLC rho [((1 : F),0), ((-1 : F),586), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 586) * ((1 : F) * rho 0 + (-1 : F) * rho 586 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1537 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),585)] * dotLC rho [((1 : F),0), ((-1 : F),585), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 585) * ((1 : F) * rho 0 + (-1 : F) * rho 585 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1538 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),584)] * dotLC rho [((1 : F),0), ((-1 : F),584), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 584) * ((1 : F) * rho 0 + (-1 : F) * rho 584 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1539 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),583)] * dotLC rho [((1 : F),0), ((-1 : F),583), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 583) * ((1 : F) * rho 0 + (-1 : F) * rho 583 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1540 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),582)] * dotLC rho [((1 : F),0), ((-1 : F),582), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 582) * ((1 : F) * rho 0 + (-1 : F) * rho 582 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1541 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),581)] * dotLC rho [((1 : F),0), ((-1 : F),581), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 581) * ((1 : F) * rho 0 + (-1 : F) * rho 581 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1542 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),580)] * dotLC rho [((1 : F),0), ((-1 : F),580), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 580) * ((1 : F) * rho 0 + (-1 : F) * rho 580 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1543 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),579)] * dotLC rho [((1 : F),0), ((-1 : F),579), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 579) * ((1 : F) * rho 0 + (-1 : F) * rho 579 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1544 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),578)] * dotLC rho [((1 : F),0), ((-1 : F),578), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 578) * ((1 : F) * rho 0 + (-1 : F) * rho 578 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1545 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),577)] * dotLC rho [((1 : F),0), ((-1 : F),577), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 577) * ((1 : F) * rho 0 + (-1 : F) * rho 577 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1546 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),576)] * dotLC rho [((1 : F),0), ((-1 : F),576), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 576) * ((1 : F) * rho 0 + (-1 : F) * rho 576 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1547 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),575)] * dotLC rho [((1 : F),0), ((-1 : F),575), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 575) * ((1 : F) * rho 0 + (-1 : F) * rho 575 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1548 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),574)] * dotLC rho [((1 : F),0), ((-1 : F),574), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 574) * ((1 : F) * rho 0 + (-1 : F) * rho 574 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1549 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),573)] * dotLC rho [((1 : F),0), ((-1 : F),573), ((-1 : F),911)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 573) * ((1 : F) * rho 0 + (-1 : F) * rho 573 + (-1 : F) * rho 911) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1550 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),573)] * dotLC rho [((1 : F),0), ((-1 : F),573)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 573) * ((1 : F) * rho 0 + (-1 : F) * rho 573) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1551 (rho : Nat → F)
    (hraw : dotLC rho [((2 : F),572)] * dotLC rho [((1 : F),0), ((-1 : F),573)] = dotLC rho [((1 : F),912)]) :
    ((2 : F) * rho 572) * ((1 : F) * rho 0 + (-1 : F) * rho 573) = ((1 : F) * rho 912) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

end Shieldd.GnarkFormal.Extracted.Deployed.DecafCompressToField1046_c7b7ae
