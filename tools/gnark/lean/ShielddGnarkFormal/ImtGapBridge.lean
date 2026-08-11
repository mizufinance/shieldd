import ShielddGnarkFormal.Extracted.ImtGap
import ShielddGnarkFormal.CanonicalFqBitsBridge
import ShielddGnarkFormal.ChoiceFreeBinary
import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.LexLessLadder
import ShielddGnarkFormal.Specs
import ProvenZk.Lemmas

/-!
Exact-provider bridge for the deployed AssetRegistryGap body.

The source extractor models native `ToBinary` as packing plus Booleanity and
does not expose gnark's backend modulus-comparison rows. Therefore this module
does not claim soundness for the source-level extracted `ImtGap.circuit`.
Instead `BodyCircuit` uses the globally proved canonical-bits backend predicate;
the deployed exact provider reconstructs that predicate from the exact native
rows before applying `body_relation_sound`.
-/

set_option maxRecDepth 8000
set_option maxHeartbeats 4000000
set_option linter.unnecessarySeqFocus false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false
set_option linter.unusedSectionVars false
set_option linter.unnecessarySimpa false

namespace Shieldd.GnarkFormal.Extracted.ImtGap

open Bool (toZMod)
open Shieldd.GnarkFormal.LexLess
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

variable [Fact (Nat.Prime Order)]

instance : Fact (Order > 1) := ⟨(Fact.out (p := Nat.Prime Order)).one_lt⟩

instance instCFBPrime : Fact (Nat.Prime CanonicalFqBits.Order) :=
  ‹Fact (Nat.Prime Order)›

theorem canonicalFqBitsGadget_canonical (In : F) (k : List.Vector F 253 → Prop)
    (h : CanonicalFqBits.canonicalFqBitsGadget In k) :
    ∃ (x : List.Vector Bool 253),
      Gates.to_binary In 253 (x.map toZMod) ∧
      (Fin.ofBitsLE x).val < Order ∧
      k (x.map toZMod) :=
  CanonicalFqBits.canonicalFqBitsGadget_canonical In k h

/-! ### lexLess253 ladder → strict `<` of recovered naturals -/

@[simp] theorem lexLessStep_uncps (pe il abit bbit : F) (k : List.Vector F 2 → Prop) :
    lexLessStep pe il abit bbit k ↔
      k vec![pe * (1 + 2 * (abit * bbit) - abit - bbit), il + pe * ((1 - abit) * bbit)] := by
  simp only [lexLessStep, Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.sub,
    GatesDef.add, exists_eq_left]
  ring_nf

/-- Recursive counter form of the unrolled `lexLess253` ladder, keeping
`lexLessStep` **folded** so the flat→recursive cast is cheap (no per-step ZMod
arithmetic). Step `n+1` processes bit index `n` (MSB-first from `253`); `pe` is
the running prefix-equality flag, `il` the accumulated `isLess`. -/
def ltRec (A B : List.Vector F 253) (k : F → Prop) : ℕ → F → F → Prop
  | 0, _, il => k il
  | (n + 1), pe, il => lexLessStep pe il A[n]! B[n]! fun g => ltRec A B k n g[0] g[1]

/-- Lemma B (lexLess): the extracted gadget is exactly the recursive form. With
`lexLessStep` folded this is a light structural re-association (`rfl`). -/
theorem lexLess253Gadget_eq_ltRec (A B : List.Vector F 253) (k : F → Prop) :
    lexLess253Gadget_253_253 A B k ↔ ltRec A B k 253 (1 : F) (0 : F) := by
  unfold lexLess253Gadget_253_253; rfl

private theorem tz_mul (a b : Bool) : (toZMod a : F) * toZMod b = toZMod (a && b) := by
  cases a <;> cases b <;> simp [Bool.toZMod_zero, Bool.toZMod_one]

private theorem tz_one_sub (a : Bool) : (1 : F) - toZMod a = toZMod (!a) := by
  cases a <;> simp [Bool.toZMod_zero, Bool.toZMod_one]

private theorem lex_pe_update (pe a b : Bool) :
    (toZMod pe : F) * (1 + 2 * ((toZMod a : F) * toZMod b) - toZMod a - toZMod b) =
      toZMod (pe && (!(xor a b))) := by
  cases pe <;> cases a <;> cases b <;>
    simp [Bool.toZMod_zero, Bool.toZMod_one] <;> ring

private theorem lex_il_update (pe il a b : Bool) (hInv : il = true → pe = false) :
    (toZMod il : F) + (toZMod pe : F) * (((1 : F) - toZMod a) * toZMod b) =
      toZMod (il || (pe && !a && b)) := by
  cases pe <;> cases il <;> cases a <;> cases b <;>
    simp [Bool.toZMod_zero, Bool.toZMod_one] at hInv ⊢ <;> ring

private theorem lex_inv_step (pe il a b : Bool) (hInv : il = true → pe = false) :
    (il || (pe && !a && b)) = true → (pe && (!(xor a b))) = false := by
  cases pe <;> cases il <;> cases a <;> cases b <;> simp at hInv ⊢

/-! ### Counter-indexed comparator bridge -/

/-- Low-`n` prefix (indices `0..n-1`) of a bit-indexed function, as a vector. -/
def boolLow (f : ℕ → Bool) : (n : ℕ) → List.Vector Bool n
  | 0 => List.Vector.nil
  | n + 1 => (boolLow f n).snoc (f n)

theorem boolLow_get (f : ℕ → Bool) {n : ℕ} (i : Fin n) :
    (boolLow f n).get i = f i.val := by
  induction n with
  | zero => exact i.elim0
  | succ n ih =>
    refine Fin.lastCases ?_ ?_ i
    · simp only [boolLow, List.Vector.get_snoc_last, Fin.val_last]
    · intro j
      simp only [boolLow, List.Vector.snoc_get_castSucc, ih, Fin.coe_castSucc]

theorem boolLow_full (x : List.Vector Bool 253) :
    boolLow (fun i => x[i]!) 253 = x := by
  apply List.Vector.ext
  intro i
  rw [boolLow_get, getElem!_pos x i.val i.isLt]
  rfl

/-- The folded counter form of the extracted comparator computes the Bool
`ltAccum` over the matching reversed low-`n` prefixes. The invariant records
that once `isLess` is set, no later rung can add another `1` in the field. -/
theorem ltRec_boolLow (A B : List.Vector Bool 253) (k : F → Prop) :
    ∀ (n : ℕ), n ≤ 253 → ∀ (pe il : Bool),
      (il = true → pe = false) →
      ltRec (A.map toZMod) (B.map toZMod) k n (toZMod pe) (toZMod il) →
        k (toZMod (ltAccum pe il
          (boolLow (fun i => A[i]!) n).reverse
          (boolLow (fun i => B[i]!) n).reverse)) := by
  intro n
  induction n with
  | zero =>
    intro _ pe il _ h
    simpa [ltRec, boolLow, ltAccum] using h
  | succ n ih =>
    intro hn pe il hInv h
    have hnlt : n < 253 := Nat.lt_of_succ_le hn
    have hA : ((A.map toZMod)[n]! : F) = toZMod A[n]! := by
      rw [getElem!_pos (A.map toZMod) n hnlt, getElem!_pos A n hnlt, List.Vector.getElem_map]
    have hB : ((B.map toZMod)[n]! : F) = toZMod B[n]! := by
      rw [getElem!_pos (B.map toZMod) n hnlt, getElem!_pos B n hnlt, List.Vector.getElem_map]
    rw [ltRec] at h
    have hstep := (lexLessStep_uncps (toZMod pe) (toZMod il)
      ((A.map toZMod)[n]!) ((B.map toZMod)[n]!)
      (fun g => ltRec (A.map toZMod) (B.map toZMod) k n g[0] g[1])).mp h
    rw [hA, hB, lex_pe_update pe A[n]! B[n]!, lex_il_update pe il A[n]! B[n]! hInv] at hstep
    have hnextInv :
        (il || (pe && !A[n]! && B[n]!)) = true →
          (pe && (!(xor A[n]! B[n]!))) = false :=
      lex_inv_step pe il A[n]! B[n]! hInv
    have hk := ih (Nat.le_of_succ_le hn)
      (pe && (!(xor A[n]! B[n]!)))
      (il || (pe && !A[n]! && B[n]!))
      hnextInv hstep
    simpa [boolLow, List.Vector.reverse_snoc, ltAccum] using hk

/-- The extracted strict-less gadget returns the field image of the recovered
little-endian strict comparison. -/
theorem lexLess253Gadget_sound (A B : List.Vector Bool 253) (k : F → Prop)
    (h : lexLess253Gadget_253_253 (A.map toZMod) (B.map toZMod) k) :
    k (toZMod (decide ((Fin.ofBitsLE A).val < (Fin.ofBitsLE B).val))) := by
  have hrec : ltRec (A.map toZMod) (B.map toZMod) k 253 (1 : F) (0 : F) :=
    (lexLess253Gadget_eq_ltRec (A.map toZMod) (B.map toZMod) k).mp h
  have hk := ltRec_boolLow A B k 253 le_rfl true false (by simp) (by
    simpa [Bool.toZMod_one, Bool.toZMod_zero] using hrec)
  rw [boolLow_full A, boolLow_full B] at hk
  simpa [ltAccum_reverse_eq_decide] using hk

/-- Canonical bits recover the input's canonical `ZMod` representative. -/
theorem to_binary_val_eq_of_lt (In : F) (x : List.Vector Bool 253)
    (hbin : Gates.to_binary In 253 (x.map toZMod))
    (hlt : (Fin.ofBitsLE x).val < Order) :
    In.val = (Fin.ofBitsLE x).val := by
  have hrec : recover_binary_zmod' (x.map (Bool.toZMod (N := Order))) = In := hbin.1
  rw [Shieldd.GnarkFormal.ChoiceFreeBinary.recover_binary_map_toZMod_eq_ofBitsLE] at hrec
  rw [← hrec]
  exact ZMod.val_natCast_of_lt hlt

private theorem is_bool_exists_bool (x : F) (h : Gates.is_bool x) :
    ∃ b : Bool, x = toZMod b := by
  rw [Gates, GatesGnark9, GatesGnark8] at h
  dsimp [GatesDef.is_bool] at h
  have hbit : x = 0 ∨ x = 1 := by
    have hmul : x * (1 - x) = 0 := by
      simpa [mul_comm, sub_eq_add_neg, add_comm, add_left_comm, add_assoc] using h
    exact eq_zero_or_eq_zero_of_mul_eq_zero hmul |>.imp_right (by
      intro hx
      have : x = 1 := by
        exact (sub_eq_zero.mp hx).symm
      exact this)
  rcases hbit with h0 | h1
  · exact ⟨false, by simpa [Bool.toZMod_zero] using h0⟩
  · exact ⟨true, by simpa [Bool.toZMod_one] using h1⟩

private theorem toZMod_mul (a b : Bool) :
    (toZMod a : F) * toZMod b = toZMod (a && b) :=
  tz_mul a b

private theorem toZMod_eq_one_iff (b : Bool) :
    (toZMod b : F) = 1 ↔ b = true := by
  simpa using (Bool.toZMod_eq_one_iff_eq_true (N := Order) (a := b))

private theorem is_zero_sub_eq_decide (a b out : F)
    (h : Gates.is_zero (Gates.sub a b) out) :
    out = toZMod (decide (a = b)) := by
  dsimp [Gates, GatesGnark9, GatesGnark8, GatesDef.sub] at h
  rw [Gates.is_zero_def] at h
  simpa [sub_eq_zero, eq_comm] using h

private theorem eq_gate_value (a b : F) (h : Gates.eq a b) :
    a = b := by
  dsimp [Gates, GatesGnark9, GatesGnark8, GatesDef.eq] at h
  exact h

private theorem gates_mul_bool_value (a b : Bool) :
    Gates.mul (toZMod a : F) (toZMod b) = toZMod (a && b) := by
  dsimp [Gates, GatesGnark9, GatesGnark8, GatesDef.mul]
  exact toZMod_mul a b

section ChoiceFreeSemanticDefinitions

attribute [-instance] ZMod.instField

/-- Algebraic select relation emitted by the body row. Booleanity of `selector`
is a separate circuit obligation. -/
def BodySelectRelation (selector whenTrue whenFalse out : F) : Prop :=
  out = whenFalse - selector * (whenFalse - whenTrue)

/--
The exact 3,542-row body emitted by `AssetRegistryGap`: three native canonical
decompositions, equality/ordering logic, and the final selector. Booleanity of
`IsRegulated` and acceptance of `selected` are separate circuit rows.
-/
def BodyCircuit
    (NoteAssetID IsRegulated LeafValue NextValue selected : F) : Prop :=
  CanonicalFqBits.canonicalFqBitsGadget LeafValue fun leafBits =>
  CanonicalFqBits.canonicalFqBitsGadget NoteAssetID fun idBits =>
  CanonicalFqBits.canonicalFqBitsGadget NextValue fun nextBits =>
  ∃ gate_4, gate_4 = Gates.sub NoteAssetID LeafValue ∧
  ∃ gate_5, Gates.is_zero gate_4 gate_5 ∧
  lexLess253Gadget_253_253 leafBits idBits fun gate_6 =>
  lexLess253Gadget_253_253 idBits nextBits fun gate_7 =>
  ∃ gate_8, gate_8 = Gates.mul gate_6 gate_7 ∧
  ∃ gate_9, BodySelectRelation IsRegulated gate_5 gate_8 gate_9 ∧
  gate_9 = selected ∧ True

/-- Semantic endpoint of the body alone; it does not assume a Boolean selector
or that the returned validity field equals one. -/
def BodyRelationSpec
    (NoteAssetID IsRegulated LeafValue NextValue selected : F) : Prop :=
  ∃ exactMatch lower upper : Bool,
    exactMatch = decide (NoteAssetID = LeafValue) ∧
    lower = decide (LeafValue.val < NoteAssetID.val) ∧
    upper = decide (NoteAssetID.val < NextValue.val) ∧
    BodySelectRelation IsRegulated
      (toZMod exactMatch) (toZMod (lower && upper)) selected

end ChoiceFreeSemanticDefinitions

/-- The exact gap body recovers canonical comparisons and the selector output,
without claiming Booleanity or acceptance supplied by adjacent rows. -/
theorem body_relation_sound
    (NoteAssetID IsRegulated LeafValue NextValue selected : F)
    (hBody :
      BodyCircuit
        NoteAssetID IsRegulated LeafValue NextValue selected) :
    BodyRelationSpec
      NoteAssetID IsRegulated LeafValue NextValue selected := by
  unfold BodyCircuit at hBody
  obtain ⟨leafBits, hLeafBin, hLeafLt, hId⟩ :=
    canonicalFqBitsGadget_canonical LeafValue _ hBody
  obtain ⟨idBits, hIdBin, hIdLt, hNext⟩ :=
    canonicalFqBitsGadget_canonical NoteAssetID _ hId
  obtain ⟨nextBits, hNextBin, hNextLt, hTail⟩ :=
    canonicalFqBitsGadget_canonical NextValue _ hNext
  rcases hTail with ⟨gate_4, hgate4, gate_5, hzero, hLower⟩
  let lowerBool : Bool :=
    decide ((Fin.ofBitsLE leafBits).val < (Fin.ofBitsLE idBits).val)
  have hLowerK :
      (fun gate_6 =>
        lexLess253Gadget_253_253 (idBits.map toZMod) (nextBits.map toZMod) fun gate_7 =>
        ∃ gate_8, gate_8 = Gates.mul gate_6 gate_7 ∧
        ∃ gate_9, BodySelectRelation IsRegulated gate_5 gate_8 gate_9 ∧
        gate_9 = selected ∧ True) (toZMod lowerBool) := by
    simpa [lowerBool] using
      lexLess253Gadget_sound leafBits idBits _ hLower
  let upperBool : Bool :=
    decide ((Fin.ofBitsLE idBits).val < (Fin.ofBitsLE nextBits).val)
  have hUpperK :
      (fun gate_7 =>
        ∃ gate_8, gate_8 = Gates.mul (toZMod lowerBool) gate_7 ∧
        ∃ gate_9, BodySelectRelation IsRegulated gate_5 gate_8 gate_9 ∧
        gate_9 = selected ∧ True) (toZMod upperBool) := by
    simpa [upperBool] using
      lexLess253Gadget_sound idBits nextBits _ hLowerK
  rcases hUpperK with
    ⟨gate_8, hgate8, gate_9, hselect, hselected, _⟩
  have hLeafVal :=
    to_binary_val_eq_of_lt LeafValue leafBits hLeafBin hLeafLt
  have hIdVal :=
    to_binary_val_eq_of_lt NoteAssetID idBits hIdBin hIdLt
  have hNextVal :=
    to_binary_val_eq_of_lt NextValue nextBits hNextBin hNextLt
  have hLowerBool :
      lowerBool = decide (LeafValue.val < NoteAssetID.val) := by
    simp [lowerBool, hLeafVal, hIdVal]
  have hUpperBool :
      upperBool = decide (NoteAssetID.val < NextValue.val) := by
    simp [upperBool, hIdVal, hNextVal]
  have hExact : gate_5 = toZMod (decide (NoteAssetID = LeafValue)) := by
    rw [hgate4] at hzero
    exact is_zero_sub_eq_decide NoteAssetID LeafValue gate_5 hzero
  have hGate8 : gate_8 = toZMod (lowerBool && upperBool) := by
    rw [hgate8]
    exact gates_mul_bool_value lowerBool upperBool
  unfold BodyRelationSpec
  refine ⟨decide (NoteAssetID = LeafValue), lowerBool, upperBool,
    rfl, hLowerBool, hUpperBool, ?_⟩
  rw [← hExact, ← hGate8, ← hselected]
  exact hselect

private theorem asset_spec_of_selected_eq_one
    (isRegulated exactMatch lower upper : Bool) (leafValue assetId nextValue : ℕ)
    (hLower : lower = decide (leafValue < assetId))
    (hUpper : upper = decide (assetId < nextValue))
    (hSelected :
      (if isRegulated then (toZMod exactMatch : F) else toZMod (lower && upper)) = 1) :
    Shieldd.GnarkFormal.assetMembershipValidSpec
      isRegulated exactMatch leafValue assetId nextValue = true := by
  have hSelectedBool :
      (if isRegulated then exactMatch else lower && upper) = true := by
    apply (toZMod_eq_one_iff (if isRegulated then exactMatch else lower && upper)).mp
    cases isRegulated <;> simpa using hSelected
  rw [hLower, hUpper] at hSelectedBool
  simpa [Shieldd.GnarkFormal.assetMembershipValidSpec, Shieldd.GnarkFormal.selectSpec,
    Shieldd.GnarkFormal.imtGapSpec] using hSelectedBool

/-- A deployed body relation becomes the high-level membership predicate once
the circuit supplies the separate selector-Booleanity and acceptance rows. -/
theorem body_relation_spec_sound
    (NoteAssetID IsRegulated LeafValue NextValue selected : F)
    (hBoolean : Gates.is_bool IsRegulated)
    (hBody :
      BodyRelationSpec
        NoteAssetID IsRegulated LeafValue NextValue selected)
    (hAccepted : Gates.eq selected (1 : F)) :
    ∃ isRegulated : Bool,
      IsRegulated = toZMod isRegulated ∧
      Shieldd.GnarkFormal.assetMembershipValidSpec
        isRegulated
        (decide (NoteAssetID = LeafValue))
        LeafValue.val
        NoteAssetID.val
        NextValue.val = true := by
  obtain ⟨isRegulated, hReg⟩ :=
    is_bool_exists_bool IsRegulated hBoolean
  rcases hBody with
    ⟨exactMatch, lower, upper, hExact, hLower, hUpper, hSelect⟩
  have hSelected : selected = 1 := eq_gate_value _ _ hAccepted
  have hSelectedIf :
      (if isRegulated then (toZMod exactMatch : F)
        else toZMod (lower && upper)) = 1 := by
    unfold BodySelectRelation at hSelect
    rw [hReg] at hSelect
    cases isRegulated with
    | false =>
      have hs : selected = toZMod (lower && upper) := by
        simpa [Bool.toZMod_zero] using hSelect
      exact hs.symm.trans hSelected
    | true =>
      have hs : selected = toZMod exactMatch := by
        simpa [Bool.toZMod_one] using hSelect
      exact hs.symm.trans hSelected
  refine ⟨isRegulated, hReg, ?_⟩
  rw [← hExact]
  exact asset_spec_of_selected_eq_one
    isRegulated exactMatch lower upper
    LeafValue.val NoteAssetID.val NextValue.val
    hLower hUpper hSelectedIf

/--
The deployed gap body is sound when composed with the separately traced
Booleanity and terminal-acceptance rows.
-/
theorem body_sound
    (NoteAssetID IsRegulated LeafValue NextValue selected : F)
    (hBoolean : Gates.is_bool IsRegulated)
    (hBody :
      BodyCircuit
        NoteAssetID IsRegulated LeafValue NextValue selected)
    (hAccepted : Gates.eq selected (1 : F)) :
    ∃ isRegulated : Bool,
      IsRegulated = toZMod isRegulated ∧
      Shieldd.GnarkFormal.assetMembershipValidSpec
        isRegulated
        (decide (NoteAssetID = LeafValue))
        LeafValue.val
        NoteAssetID.val
        NextValue.val = true :=
  body_relation_spec_sound
    NoteAssetID IsRegulated LeafValue NextValue selected
    hBoolean
    (body_relation_sound
      NoteAssetID IsRegulated LeafValue NextValue selected hBody)
    hAccepted

end Shieldd.GnarkFormal.Extracted.ImtGap
