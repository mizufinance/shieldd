import ShielddGnarkFormal.Protocol.Common

/-! Structural statement-sponge lemmas for fixed action arities. -/

namespace Shieldd.GnarkFormal.Protocol.Common

attribute [local irreducible] Poseidon377.hash7

/-- One complete six-field absorption step. -/
theorem statementTail_six
    (domain pad0 pad1 initial a b c d e f : F) (rest : List F) :
    statementTail domain pad0 pad1 initial (a :: b :: c :: d :: e :: f :: rest) =
      statementTail domain pad0 pad1
        (Poseidon377.hash7 domain initial a b c d e f) rest :=
  statementTail.eq_1 domain pad0 pad1 initial a b c d e f rest

/-- The final partial absorption step with five fields. -/
theorem statementTail_five
    (domain pad0 pad1 initial a b c d e : F) :
    statementTail domain pad0 pad1 initial [a, b, c, d, e] =
      Poseidon377.hash7 domain initial a b c d e pad1 := by
  simpa [statementField] using
    statementTail.eq_3 domain pad0 pad1 initial [a, b, c, d, e]
      (by simp) (by simp)

/-- The final partial absorption step with one field. -/
theorem statementTail_one
    (domain pad0 pad1 initial a : F) :
    statementTail domain pad0 pad1 initial [a] =
      Poseidon377.hash7 domain initial a pad1 pad0 pad1 pad0 pad1 := by
  simpa [statementField] using
    statementTail.eq_3 domain pad0 pad1 initial [a]
      (by simp) (by simp)

/-- The two tail absorptions for an eighteen-field statement. -/
theorem statementTail_eleven
    (domain pad0 pad1 initial : F)
    (f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 : F) :
    statementTail domain pad0 pad1 initial
        [f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17] =
      Poseidon377.hash7 domain
        (Poseidon377.hash7 domain initial f7 f8 f9 f10 f11 f12)
        f13 f14 f15 f16 f17 pad1 := by
  calc
    _ = statementTail domain pad0 pad1
          (Poseidon377.hash7 domain initial f7 f8 f9 f10 f11 f12)
          [f13, f14, f15, f16, f17] :=
      statementTail_six domain pad0 pad1 initial f7 f8 f9 f10 f11 f12 _
    _ = _ := statementTail_five domain pad0 pad1 _ f13 f14 f15 f16 f17

/-- The five tail absorptions for a thirty-two-field statement. -/
theorem statementTail_twentyFive
    (domain pad0 pad1 initial : F)
    (f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18 f19 f20 f21 f22 f23
      f24 f25 f26 f27 f28 f29 f30 f31 : F) :
    statementTail domain pad0 pad1 initial
        [f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18, f19,
         f20, f21, f22, f23, f24, f25, f26, f27, f28, f29, f30, f31] =
      Poseidon377.hash7 domain
        (Poseidon377.hash7 domain
          (Poseidon377.hash7 domain
            (Poseidon377.hash7 domain
              (Poseidon377.hash7 domain initial f7 f8 f9 f10 f11 f12)
              f13 f14 f15 f16 f17 f18)
            f19 f20 f21 f22 f23 f24)
          f25 f26 f27 f28 f29 f30)
        f31 pad1 pad0 pad1 pad0 pad1 := by
  let hash1 := Poseidon377.hash7 domain initial f7 f8 f9 f10 f11 f12
  let hash2 := Poseidon377.hash7 domain hash1 f13 f14 f15 f16 f17 f18
  let hash3 := Poseidon377.hash7 domain hash2 f19 f20 f21 f22 f23 f24
  let hash4 := Poseidon377.hash7 domain hash3 f25 f26 f27 f28 f29 f30
  calc
    _ = statementTail domain pad0 pad1 hash1
          [f13, f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24,
           f25, f26, f27, f28, f29, f30, f31] :=
      statementTail_six domain pad0 pad1 initial f7 f8 f9 f10 f11 f12 _
    _ = statementTail domain pad0 pad1 hash2
          [f19, f20, f21, f22, f23, f24, f25, f26, f27, f28, f29, f30,
           f31] :=
      statementTail_six domain pad0 pad1 hash1 f13 f14 f15 f16 f17 f18 _
    _ = statementTail domain pad0 pad1 hash3
          [f25, f26, f27, f28, f29, f30, f31] :=
      statementTail_six domain pad0 pad1 hash2 f19 f20 f21 f22 f23 f24 _
    _ = statementTail domain pad0 pad1 hash4 [f31] :=
      statementTail_six domain pad0 pad1 hash3 f25 f26 f27 f28 f29 f30 _
    _ = _ := statementTail_one domain pad0 pad1 hash4 f31

end Shieldd.GnarkFormal.Protocol.Common
