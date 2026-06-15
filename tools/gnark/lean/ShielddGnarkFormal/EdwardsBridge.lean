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
  obtain ⟨g0, hg0, hx, hy, -⟩ := h
  simp only [Shieldd.GnarkFormal.Extracted.DecafEdwardsNeg.Gates, GatesGnark9,
    GatesGnark8, GatesDef.neg, GatesDef.eq] at hg0 hx hy
  subst g0
  constructor
  · rw [← hx]
    ring
  · exact hy.symm

theorem add_sound (lx ly rx ry outX outY : F)
    (h : Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.circuit lx ly rx ry outX outY) :
    addSpec ⟨lx, ly⟩ ⟨rx, ry⟩ ⟨outX, outY⟩ := by
  obtain ⟨g0, hg0, g1, hg1, g2, hg2, g3, hg3, g4, hg4, g5, hg5, g6a, hg6a,
    g7, hg7, g8, hg8, g9, hg9, g10, hg10, g11, hg11, g12, hg12,
    g13, hg13, g14, hdivX, g15, hdivY, hx, hy, -⟩ := h
  simp only [Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.Gates, GatesGnark9,
    GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub, GatesDef.eq,
    GatesDef.neg] at hg0 hg1 hg2 hg3 hg4 hg5 hg6a hg7 hg8 hg9 hg10 hg11 hg12 hg13 hx hy
  constructor
  · simpa [addSpec, a, d, hx.symm, hg0, hg1, hg2, hg3, hg4, hg5, hg6a, hg7, hg8,
      hg9] using hdivX
  · simpa [addSpec, a, d, hy.symm, hg0, hg1, hg2, hg3, hg4, hg5, hg6a, hg7, hg10,
      hg11, hg12, hg13] using hdivY

theorem double_sound (x y outX outY : F)
    (h : Shieldd.GnarkFormal.Extracted.DecafEdwardsDouble.circuit x y outX outY) :
    doubleSpec ⟨x, y⟩ ⟨outX, outY⟩ := by
  obtain ⟨g0, hg0, g1, hg1, g2, hg2, g3, hg3, g4, hg4, g5, hg5, g6, hg6,
    g7, hg7, g8, hdivX, g9, hdivY, hx, hy, -⟩ := h
  simp only [Shieldd.GnarkFormal.Extracted.DecafEdwardsDouble.Gates, GatesGnark9,
    GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub, GatesDef.eq] at hg0 hg1 hg2 hg3
  simp only [Shieldd.GnarkFormal.Extracted.DecafEdwardsDouble.Gates, GatesGnark9,
    GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub, GatesDef.eq] at hg4 hg5 hg6 hg7 hx hy
  constructor
  · simpa [doubleSpec, a, hx.symm, hg0, hg1, hg2, hg3, hg4, hg6] using hdivX
  · simpa [doubleSpec, a, hy.symm, hg0, hg1, hg2, hg3, hg4, hg5, hg6, hg7] using hdivY

end Shieldd.GnarkFormal.EdwardsBridge
