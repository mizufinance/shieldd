-- FIXTURE: the correct switchover forms. Must PASS the hard-fail rules.
-- Mirrors what dtk_recovery.py emits post-switchover.

-- Safe fuel handling: eval (one step, sumAux stays opaque) + symbolic peel lemma.
theorem good_rung (rho : Nat → F) (h0 : StrideRun.eval rho r = a) : True := by
  rw [StrideRun.eval] at h0
  rw [StrideRun.sumAux_succ] at h0
  trivial

-- Wide destructure is legal ONLY inside a projection lemma named `…_rows<idx>`,
-- whose type is the bare relationRow conjunction. Exempt from R2.
theorem seg16_rows128 (rho : Nat → F) (h : Seg16.relation rho) :
    relationRow4629 rho ∧ relationRow4630 rho ∧ relationRow4631 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨p0, p1, p2, p3, p4, p5, p6, p7, p8, p9,
                 p10, p11, p12, p13, p14, p15, p16, p17, p18, p19,
                 p20, p21, p22, p23, p24, p25, p26, p27, p28, p29⟩
  exact ⟨p0, p1, p2⟩

-- Rung consumes its ~13 rows via the projection lemma; narrow obtain.
theorem seg16_rung128 (rho : Nat → F) (h : Seg16.relation rho) : True := by
  obtain ⟨r4629, r4630, r4631⟩ := seg16_rows128 rho h
  trivial

-- Bounded 8-way in-proof match is fine (≤ 8 arms).
theorem good_dispatch (n : Nat) : True := by
  match n with
  | 0 => trivial
  | 1 => trivial
  | 2 => trivial
  | 3 => trivial
  | 4 => trivial
  | 5 => trivial
  | 6 => trivial
  | _ => trivial
