-- FIXTURE: deliberately contains every hard-fail anti-pattern the linter guards.
-- Not meant to compile. Each decl below trips exactly one rule.

-- R1: expand tactic names the recursive fuel def at a literal count.
theorem bad_r1_fuel (rho : Nat → F) : StrideRun.eval rho r = 0 := by
  simp only [StrideRun.sumAux] at r
  unfold StrideRun.sumAux
  ring

-- R2: wide rcases carried through a proof, in a non-projection decl.
theorem bad_r2_wide (h : Seg16.relation rho) : True := by
  unfold Seg16.relation at h
  rcases h with ⟨p0, p1, p2, p3, p4, p5, p6, p7, p8, p9,
                 p10, p11, p12, p13, p14, p15, p16, p17, p18, p19⟩
  trivial

-- R4: in-proof match with more than 8 arms.
theorem bad_r4_match (n : Nat) : True := by
  match n with
  | 0 => trivial
  | 1 => trivial
  | 2 => trivial
  | 3 => trivial
  | 4 => trivial
  | 5 => trivial
  | 6 => trivial
  | 7 => trivial
  | 8 => trivial
  | _ => trivial
