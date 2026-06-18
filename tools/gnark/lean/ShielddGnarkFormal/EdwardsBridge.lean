import ShielddGnarkFormal.Extracted.DecafEdwardsAdd
import ShielddGnarkFormal.Extracted.DecafEdwardsDouble
import ShielddGnarkFormal.Extracted.DecafEdwardsNeg

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000
set_option linter.unusedSectionVars false

namespace Shieldd.GnarkFormal.EdwardsBridge

abbrev F := Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.F

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.Order)]
variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafEdwardsDouble.Order)]
variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.DecafEdwardsNeg.Order)]

structure Point where
  x : F
  y : F

def a : F := 8444461749428370424248824938781546531375899335154063827935233455917409239040
def d : F := 3021

def negSpec (p out : Point) : Prop :=
  out.x = -p.x ∧ out.y = p.y

def addSpec (l r out : Point) : Prop :=
  let u1 := l.x * a
  let u1 := l.y - u1
  let u2 := r.x + r.y
  let u := u1 * u2
  let v0 := r.y * l.x
  let v1 := r.x * l.y
  let v2 := d * v0 * v1
  GatesDef.div_unchecked (v0 + v1) (1 + v2) out.x ∧
  GatesDef.div_unchecked (a * v0 - v1 + u) (1 - v2) out.y

def doubleSpec (p out : Point) : Prop :=
  let u := p.x * p.y
  let v := p.x * p.x
  let w := p.y * p.y
  let n1 := 2 * u
  let av := v * a
  let n2 := w - av
  let d1 := w + av
  let d2 := 2 - d1
  GatesDef.div_unchecked n1 d1 out.x ∧
  GatesDef.div_unchecked n2 d2 out.y

theorem neg_sound (x y outX outY : F)
    (h : Shieldd.GnarkFormal.Extracted.DecafEdwardsNeg.circuit x y outX outY) :
    negSpec ⟨x, y⟩ ⟨outX, outY⟩ := by
  obtain ⟨g0, hg0, g1, hg1, g2, hg2, g3, hg3, g4, hg4, g5, hg5, hcurveIn,
    g7, hg7, hx, hy, g10, hg10, g11, hg11, g12, hg12, g13, hg13, g14, hg14,
    g15, hg15, hcurveOut, -⟩ := h
  simp only [Shieldd.GnarkFormal.Extracted.DecafEdwardsNeg.Gates, GatesGnark9,
    GatesGnark8, GatesDef.neg, GatesDef.eq] at hg7 hx hy
  subst g7
  constructor
  · rw [← hx]
    ring
  · exact hy.symm

theorem add_sound (lx ly rx ry outX outY : F)
    (h : Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.circuit lx ly rx ry outX outY) :
    addSpec ⟨lx, ly⟩ ⟨rx, ry⟩ ⟨outX, outY⟩ := by
  obtain ⟨g0, hg0, g1, hg1, g2, hg2, g3, hg3, g4, hg4, g5, hg5, hcurveL,
    g7, hg7, g8, hg8, g9, hg9, g10, hg10, g11, hg11, g12, hg12, hcurveR,
    g14, hg14, g15, hg15, g16, hg16, g17, hg17, g18, hg18, g19, hg19,
    g20, hg20, g21, hg21, g22, hg22, g23, hg23, g24, hg24, g25, hg25,
    g26, hg26, g27, hg27, g28, hdivX, g29, hdivY, hx, hy,
    g32, hg32, g33, hg33, g34, hg34, g35, hg35, g36, hg36, g37, hg37,
    hcurveOut, -⟩ := h
  simp only [Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.Gates, GatesGnark9,
    GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub, GatesDef.eq,
    GatesDef.neg] at hg14 hg15 hg16 hg17 hg18 hg19 hg20 hg21 hg22 hg23 hg24 hg25 hg26 hg27 hx hy
  constructor
  · simpa [addSpec, a, d, hx.symm, hg14, hg15, hg16, hg17, hg18, hg19, hg20,
      hg21, hg22, hg23] using hdivX
  · simpa [addSpec, a, d, hy.symm, hg14, hg15, hg16, hg17, hg18, hg19, hg20,
      hg21, hg24, hg25, hg26, hg27] using hdivY

theorem double_sound (x y outX outY : F)
    (h : Shieldd.GnarkFormal.Extracted.DecafEdwardsDouble.circuit x y outX outY) :
    doubleSpec ⟨x, y⟩ ⟨outX, outY⟩ := by
  obtain ⟨g0, hg0, g1, hg1, g2, hg2, g3, hg3, g4, hg4, g5, hg5, hcurveIn,
    g7, hg7, g8, hg8, g9, hg9, g10, hg10, g11, hg11, g12, hg12, g13, hg13,
    g14, hg14, g15, hdivX, g16, hdivY, hx, hy,
    g19, hg19, g20, hg20, g21, hg21, g22, hg22, g23, hg23, g24, hg24,
    hcurveOut, -⟩ := h
  simp only [Shieldd.GnarkFormal.Extracted.DecafEdwardsDouble.Gates, GatesGnark9,
    GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub, GatesDef.eq] at hg7 hg8 hg9 hg10 hg11 hg12 hg13 hg14 hx hy
  constructor
  · simpa [doubleSpec, a, hx.symm, hg7, hg8, hg9, hg10, hg11, hg13] using hdivX
  · simpa [doubleSpec, a, hy.symm, hg7, hg8, hg9, hg10, hg11, hg12, hg13, hg14] using hdivY

end Shieldd.GnarkFormal.EdwardsBridge
