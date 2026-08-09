import Ipp.Bls12377
import Ipp.CanonicalDecode
import Mathlib.Data.Int.CardIntervalMod
import VCVio.EvalDist.TVDist
import VCVio.OracleComp.QueryTracking.RandomOracle.Simulation
import VCVio.ProgramLogic.Relational.SimulateQ

/-!
The exact scalar conversion used by the shipping SnarkPack transcript.

`ark_ff::PrimeField::from_random_bytes` for the pinned
`<decaf377::Bls12_377 as Pairing>::ScalarField` (`decaf377::Fq`)
implementation consumes all 64 Blake2b bytes as a little-endian integer and
reduces that integer modulo the BLS12-377 scalar modulus.  It does not mask,
truncate, or reject non-canonical integers.  Consequently the resulting field
distribution is close to, but not exactly, uniform.
-/

open OracleSpec OracleComp ENNReal
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp.ShippingScalarReduction

noncomputable section

set_option maxRecDepth 4096

abbrev DigestBytes := Fin 64 → UInt8

local instance : Fact Ipp.Bls12377.scalarModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.scalarPrime⟩

def digestCard : Nat := 256 ^ 64

theorem digestCard_pos : 0 < digestCard := by
  simp [digestCard]

theorem scalarModulus_pos : 0 < Ipp.Bls12377.scalarModulus :=
  Ipp.Bls12377.arithmeticFacts.scalarPrime.pos

theorem decodeLE_lt_pow (xs : List UInt8) :
    Ipp.CanonicalWire.decodeLE xs < 256 ^ xs.length := by
  induction xs with
  | nil =>
      simp [Ipp.CanonicalWire.decodeLE]
  | cons byte tail ih =>
      simp only [Ipp.CanonicalWire.decodeLE, List.length_cons]
      calc
        byte.toNat + 256 * Ipp.CanonicalWire.decodeLE tail
            < 256 + 256 * Ipp.CanonicalWire.decodeLE tail := by
              exact Nat.add_lt_add_right byte.toNat_lt _
        _ = 256 * (Ipp.CanonicalWire.decodeLE tail + 1) := by omega
        _ ≤ 256 * 256 ^ tail.length := by
              exact Nat.mul_le_mul_left 256 (Nat.succ_le_of_lt ih)
        _ = 256 ^ (tail.length + 1) := by
              rw [pow_succ]
              ac_rfl

def fixedBytesEquiv (width : Nat) :
    (Fin width → UInt8) ≃ Fin (256 ^ width) where
  toFun bytes :=
    ⟨Ipp.CanonicalWire.decodeLE (List.ofFn bytes),
      by simpa using decodeLE_lt_pow (List.ofFn bytes)⟩
  invFun value :=
    fun i =>
      (Ipp.CanonicalWire.encodeLE width value.1).get
        ⟨i.1, by simpa [Ipp.CanonicalWire.encodeLE_length] using i.2⟩
  left_inv bytes := by
    have hlist :=
      Ipp.CanonicalWire.encodeLE_decodeLE (List.ofFn bytes)
    funext i
    have hget := congrArg (fun xs : List UInt8 => xs[i.1]?) hlist
    simp only [List.length_ofFn] at hget
    change
      (Ipp.CanonicalWire.encodeLE width
        (Ipp.CanonicalWire.decodeLE (List.ofFn bytes)))[i.1]? =
        (List.ofFn bytes)[i.1]? at hget
    rw [List.getElem?_eq_getElem
          (by simpa [Ipp.CanonicalWire.encodeLE_length] using i.2),
        List.getElem?_eq_getElem (by simpa using i.2)] at hget
    exact Option.some.inj (by simpa using hget)
  right_inv value := by
    apply Fin.ext
    change
      Ipp.CanonicalWire.decodeLE
          (List.ofFn fun i : Fin width =>
            (Ipp.CanonicalWire.encodeLE width value.1).get
              ⟨i.1, by
                simpa [Ipp.CanonicalWire.encodeLE_length] using i.2⟩) =
        value.1
    rw [show
      List.ofFn (fun i : Fin width =>
        (Ipp.CanonicalWire.encodeLE width value.1).get
          ⟨i.1, by simpa [Ipp.CanonicalWire.encodeLE_length] using i.2⟩) =
        Ipp.CanonicalWire.encodeLE width value.1 by
          simpa [Ipp.CanonicalWire.encodeLE_length] using
            (List.ofFn_getElem
              (xs := Ipp.CanonicalWire.encodeLE width value.1))]
    exact Ipp.CanonicalWire.decodeLE_encodeLE_of_lt width value.1 value.2

def digestValue (digest : DigestBytes) : Nat :=
  Ipp.CanonicalWire.decodeLE (List.ofFn digest)

theorem digestValue_lt (digest : DigestBytes) :
    digestValue digest < digestCard := by
  simpa [digestValue, digestCard] using
    decodeLE_lt_pow (List.ofFn digest)

def digestEquiv : DigestBytes ≃ Fin digestCard :=
  fixedBytesEquiv 64

theorem digestEquiv_val (digest : DigestBytes) :
    (digestEquiv digest).val = digestValue digest :=
  rfl

/-- The mathematical value returned by the deployed 64-byte Arkworks
`from_random_bytes` call. -/
def reduceFr (digest : DigestBytes) : Ipp.Bls12377.Fr :=
  (digestValue digest : Ipp.Bls12377.Fr)

/-- The deployed API returns `Some` for every 64-byte digest. -/
def decodeFr (digest : DigestBytes) : Option Ipp.Bls12377.Fr :=
  some (reduceFr digest)

@[simp] theorem decodeFr_ne_none (digest : DigestBytes) :
    decodeFr digest ≠ none := by
  simp [decodeFr]

@[simp] theorem decodeFr_eq_some_iff
    (digest : DigestBytes) (value : Ipp.Bls12377.Fr) :
    decodeFr digest = some value ↔ reduceFr digest = value := by
  simp [decodeFr]

abbrev DigestFiber (value : Ipp.Bls12377.Fr) :=
  {digest : DigestBytes // reduceFr digest = value}

abbrev FinResidueFiber (value : Ipp.Bls12377.Fr) :=
  {n : Fin digestCard //
    n.val ≡ value.val [MOD Ipp.Bls12377.scalarModulus]}

abbrev CountResidueFiber (value : Ipp.Bls12377.Fr) :=
  {n : Nat //
    n < digestCard ∧
      n ≡ value.val [MOD Ipp.Bls12377.scalarModulus]}

def digestFiberEquivFinResidue (value : Ipp.Bls12377.Fr) :
    DigestFiber value ≃ FinResidueFiber value :=
  digestEquiv.subtypeEquiv fun digest => by
    change
      (digestValue digest : Ipp.Bls12377.Fr) = value ↔
        digestValue digest ≡ value.val
          [MOD Ipp.Bls12377.scalarModulus]
    rw [← ZMod.natCast_zmod_val value,
      ZMod.natCast_eq_natCast_iff]
    simp [ZMod.val_natCast_of_lt value.val_lt]

def finResidueEquivCountResidue (value : Ipp.Bls12377.Fr) :
    FinResidueFiber value ≃ CountResidueFiber value where
  toFun n := ⟨n.1, n.1.isLt, n.2⟩
  invFun n := ⟨⟨n.1, n.2.1⟩, n.2.2⟩
  left_inv n := by
    rfl
  right_inv n := by
    rfl

theorem finResidueFiber_card (value : Ipp.Bls12377.Fr) :
    Fintype.card (FinResidueFiber value) =
      digestCard / Ipp.Bls12377.scalarModulus +
        if value.val < digestCard % Ipp.Bls12377.scalarModulus
        then 1 else 0 := by
  letI : Fintype (CountResidueFiber value) :=
    Nat.CountSet.fintype
      (p := fun n =>
        n ≡ value.val [MOD Ipp.Bls12377.scalarModulus])
      digestCard
  rw [Fintype.card_congr (finResidueEquivCountResidue value)]
  rw [← Nat.count_eq_card_fintype]
  simpa [Nat.mod_eq_of_lt value.val_lt] using
    (Nat.count_modEq_card
      (b := digestCard)
      (r := Ipp.Bls12377.scalarModulus)
      scalarModulus_pos value.val)

theorem digestFiber_card (value : Ipp.Bls12377.Fr) :
    Fintype.card (DigestFiber value) =
      digestCard / Ipp.Bls12377.scalarModulus +
        if value.val < digestCard % Ipp.Bls12377.scalarModulus
        then 1 else 0 := by
  rw [Fintype.card_congr (digestFiberEquivFinResidue value)]
  exact finResidueFiber_card value

theorem probOutput_uniform_map_eq_card_fiber
    {α β : Type} [Fintype α] [Nonempty α] [SampleableType α]
    [DecidableEq β] (f : α → β) (value : β) :
    Pr[= value | f <$> ($ᵗ α)] =
      (Fintype.card {input : α // f input = value} : ℝ≥0∞) *
        (Fintype.card α : ℝ≥0∞)⁻¹ := by
  rw [probOutput_map_eq_sum_fintype_ite]
  simp_rw [probOutput_uniformSample]
  rw [← Finset.sum_filter, Finset.sum_const, nsmul_eq_mul]
  congr 1
  rw [Fintype.card_subtype]
  congr 2
  ext input
  simp [eq_comm]

theorem digestBytes_card :
    Fintype.card DigestBytes = digestCard := by
  rw [Fintype.card_congr digestEquiv]
  simp

/-- Exact point mass of a residue after reducing a uniform 512-bit response. -/
theorem uniformDigest_reduceFr_point_mass
    [SampleableType DigestBytes]
    (value : Ipp.Bls12377.Fr) :
    Pr[= value | reduceFr <$> ($ᵗ DigestBytes)] =
      (digestCard / Ipp.Bls12377.scalarModulus +
        if value.val < digestCard % Ipp.Bls12377.scalarModulus
        then 1 else 0 : Nat) *
        (digestCard : ℝ≥0∞)⁻¹ := by
  rw [probOutput_uniform_map_eq_card_fiber]
  change
    (Fintype.card (DigestFiber value) : ℝ≥0∞) *
        (Fintype.card DigestBytes : ℝ≥0∞)⁻¹ = _
  rw [digestFiber_card, digestBytes_card]

/-- A uniform field sample has the expected `1/q` point mass. -/
theorem uniformFr_point_mass (value : Ipp.Bls12377.Fr) :
    Pr[= value | ($ᵗ Ipp.Bls12377.Fr)] =
      (Ipp.Bls12377.scalarModulus : ℝ≥0∞)⁻¹ := by
  rw [probOutput_uniformSample]
  simp [Ipp.Bls12377.Fr, ZMod.card]

/-- Every modular-reduction point mass differs from uniform by at most one
512-bit input point. -/
theorem uniformDigest_reduceFr_point_absDiff_le
    [SampleableType DigestBytes]
    (value : Ipp.Bls12377.Fr) :
    ENNReal.absDiff
        Pr[= value | reduceFr <$> ($ᵗ DigestBytes)]
        Pr[= value | ($ᵗ Ipp.Bls12377.Fr)] ≤
      (digestCard : ℝ≥0∞)⁻¹ := by
  rw [uniformDigest_reduceFr_point_mass, uniformFr_point_mass]
  have hdigestNeZero : (digestCard : ℝ≥0∞) ≠ 0 := by
    exact_mod_cast Nat.ne_of_gt digestCard_pos
  have hdigestNeTop : (digestCard : ℝ≥0∞) ≠ ∞ :=
    ENNReal.coe_ne_top
  have hscalarNeZero :
      (Ipp.Bls12377.scalarModulus : ℝ≥0∞) ≠ 0 := by
    exact_mod_cast Nat.ne_of_gt scalarModulus_pos
  have hscalarNeTop :
      (Ipp.Bls12377.scalarModulus : ℝ≥0∞) ≠ ∞ :=
    ENNReal.coe_ne_top
  have hlow :
      (digestCard / Ipp.Bls12377.scalarModulus : Nat) *
          (digestCard : ℝ≥0∞)⁻¹ ≤
        (Ipp.Bls12377.scalarModulus : ℝ≥0∞)⁻¹ := by
    rw [← div_eq_mul_inv]
    apply (ENNReal.div_le_iff
      hdigestNeZero hdigestNeTop).2
    rw [← ENNReal.div_eq_inv_mul]
    apply (ENNReal.le_div_iff_mul_le
      (Or.inl hscalarNeZero) (Or.inl hscalarNeTop)).2
    exact_mod_cast
      Nat.div_mul_le_self
        digestCard Ipp.Bls12377.scalarModulus
  have hhigh :
      (Ipp.Bls12377.scalarModulus : ℝ≥0∞)⁻¹ ≤
        (digestCard / Ipp.Bls12377.scalarModulus + 1 : Nat) *
          (digestCard : ℝ≥0∞)⁻¹ := by
    rw [← div_eq_mul_inv]
    apply (ENNReal.le_div_iff_mul_le
      (Or.inl hdigestNeZero) (Or.inl hdigestNeTop)).2
    rw [← ENNReal.div_eq_inv_mul]
    apply (ENNReal.div_le_iff
      hscalarNeZero hscalarNeTop).2
    exact_mod_cast
      (show digestCard ≤
          (digestCard / Ipp.Bls12377.scalarModulus + 1) *
            Ipp.Bls12377.scalarModulus from by
        calc
          digestCard =
              digestCard / Ipp.Bls12377.scalarModulus *
                  Ipp.Bls12377.scalarModulus +
                digestCard % Ipp.Bls12377.scalarModulus :=
            (Nat.div_add_mod _ _).symm
          _ ≤
              digestCard / Ipp.Bls12377.scalarModulus *
                  Ipp.Bls12377.scalarModulus +
                Ipp.Bls12377.scalarModulus :=
            Nat.add_le_add_left
              (Nat.le_of_lt
                (Nat.mod_lt _ scalarModulus_pos)) _
          _ =
              (digestCard / Ipp.Bls12377.scalarModulus + 1) *
                Ipp.Bls12377.scalarModulus := by
            rw [Nat.add_mul, one_mul])
  have hhighEq :
      (digestCard / Ipp.Bls12377.scalarModulus + 1 : Nat) *
          (digestCard : ℝ≥0∞)⁻¹ =
        (digestCard / Ipp.Bls12377.scalarModulus : Nat) *
            (digestCard : ℝ≥0∞)⁻¹ +
          (digestCard : ℝ≥0∞)⁻¹ := by
    push_cast
    ring
  by_cases h :
      value.val < digestCard % Ipp.Bls12377.scalarModulus
  · rw [if_pos h, ENNReal.absDiff]
    rw [tsub_eq_zero_of_le hhigh, add_zero,
      tsub_le_iff_left]
    rw [hhighEq]
    simpa [add_comm] using
      add_le_add_right hlow (digestCard : ℝ≥0∞)⁻¹
  · simp only [if_neg h, Nat.add_zero]
    rw [ENNReal.absDiff]
    rw [tsub_eq_zero_of_le hlow, zero_add,
      tsub_le_iff_left]
    calc
      (Ipp.Bls12377.scalarModulus : ℝ≥0∞)⁻¹ ≤
          (digestCard / Ipp.Bls12377.scalarModulus + 1 : Nat) *
            (digestCard : ℝ≥0∞)⁻¹ := hhigh
      _ =
          (digestCard / Ipp.Bls12377.scalarModulus : Nat) *
              (digestCard : ℝ≥0∞)⁻¹ +
            (digestCard : ℝ≥0∞)⁻¹ := hhighEq

/-- A finite pointwise probability slack bounds total variation by half the
sum of the pointwise slacks. -/
theorem ofReal_tvDist_le_card_mul_pointSlack
    {α : Type} [Fintype α] [DecidableEq α]
    {left right : ProbComp α} [NeverFail left] [NeverFail right]
    (slack : ℝ≥0∞)
    (hpoint : ∀ value,
      ENNReal.absDiff Pr[= value | left] Pr[= value | right] ≤ slack) :
    ENNReal.ofReal (tvDist left right) ≤
      (Fintype.card α : ℝ≥0∞) * slack / 2 := by
  rw [tvDist, SPMF.tvDist, PMF.tvDist,
    ENNReal.ofReal_toReal (PMF.etvDist_ne_top _ _)]
  rw [PMF.etvDist, tsum_option _ ENNReal.summable]
  have hfailLeft : (𝒟[left]).toPMF none = 0 := by
    rw [← SPMF.run_eq_toPMF (p := 𝒟[left]),
      ← probFailure_def (mx := left)]
    exact probFailure_eq_zero (mx := left)
  have hfailRight : (𝒟[right]).toPMF none = 0 := by
    rw [← SPMF.run_eq_toPMF (p := 𝒟[right]),
      ← probFailure_def (mx := right)]
    exact probFailure_eq_zero (mx := right)
  rw [hfailLeft, hfailRight, ENNReal.absDiff_self, zero_add]
  have hsum :
      (∑' value,
          ENNReal.absDiff
            ((𝒟[left]).toPMF (some value))
            ((𝒟[right]).toPMF (some value))) =
        ∑' value,
          ENNReal.absDiff
            Pr[= value | left]
            Pr[= value | right] := by
    refine tsum_congr fun value => ?_
    simp [probOutput_def, SPMF.apply_eq_toPMF_some]
  rw [hsum]
  apply ENNReal.div_le_div_right
  calc
    (∑' value,
        ENNReal.absDiff
          Pr[= value | left]
          Pr[= value | right]) ≤
        ∑' _value : α, slack :=
      ENNReal.tsum_le_tsum hpoint
    _ = (Fintype.card α : ℝ≥0∞) * slack := by
      simp

/-- A convenient per-query statistical slack.  The exact TV distance is
`r(q-r)/(Nq)` for `N = 2^512`, `q = scalarModulus`, and `r = N % q`;
`q/(2N)` is a simpler proved upper bound used by the game hop. -/
def modReductionBias : ℝ≥0∞ :=
  (Ipp.Bls12377.scalarModulus : ℝ≥0∞) *
    (digestCard : ℝ≥0∞)⁻¹ / 2

/-- The deterministic contribution of modular reduction after at most
`queries` fresh Blake2b responses. -/
def modReductionBudget (queries : Nat) : ℝ≥0∞ :=
  (queries : ℝ≥0∞) * modReductionBias

/-- One uniform 64-byte response reduced modulo `q` is within
`q/(2·2^512)` of a uniform field response. -/
theorem uniformDigest_reduceFr_tvDist_le
    [SampleableType DigestBytes] :
    ENNReal.ofReal
        (tvDist
          (reduceFr <$> ($ᵗ DigestBytes))
          ($ᵗ Ipp.Bls12377.Fr)) ≤
      modReductionBias := by
  simpa [modReductionBias, ZMod.card, Ipp.Bls12377.Fr] using
    (ofReal_tvDist_le_card_mul_pointSlack
      (left := reduceFr <$> ($ᵗ DigestBytes))
      (right := ($ᵗ Ipp.Bls12377.Fr))
      ((digestCard : ℝ≥0∞)⁻¹)
      uniformDigest_reduceFr_point_absDiff_le)

/-- A field-valued oracle interface used after the byte-preimage encoding has
been proved injective. -/
abbrev ScalarOracleSpec (Domain : Type) :=
  Domain →ₒ Ipp.Bls12377.Fr

/-- One fresh deployed response for a field-oracle query.  The state is
unchanged; the Boolean component is the quantitative-simulation bad flag. -/
def reducedFreshOracleImpl
    {Domain : Type} [SampleableType DigestBytes] :
    QueryImpl (ScalarOracleSpec Domain)
      (StateT (PUnit × Bool) ProbComp) :=
  fun _ state =>
    (fun digest => (reduceFr digest, state)) <$> ($ᵗ DigestBytes)

/-- One fresh uniform field response for the same query interface. -/
def uniformFreshOracleImpl
    {Domain : Type} :
    QueryImpl (ScalarOracleSpec Domain)
      (StateT (PUnit × Bool) ProbComp) :=
  fun _ state =>
    (fun value => (value, state)) <$> ($ᵗ Ipp.Bls12377.Fr)

theorem reducedFreshOracleImpl_preserves_state
    {Domain : Type} [SampleableType DigestBytes]
    (point : Domain) (state : PUnit × Bool)
    (output :
      Ipp.Bls12377.Fr × (PUnit × Bool))
    (houtput :
      output ∈ support
        ((reducedFreshOracleImpl
          (Domain := Domain) point).run state)) :
    output.2 = state := by
  change
    output ∈ support
      ((fun digest => (reduceFr digest, state)) <$>
        ($ᵗ DigestBytes)) at houtput
  rw [support_map, Set.mem_image] at houtput
  obtain ⟨digest, _hdigest, rfl⟩ := houtput
  rfl

theorem uniformFreshOracleImpl_preserves_state
    {Domain : Type}
    (point : Domain) (state : PUnit × Bool)
    (output :
      Ipp.Bls12377.Fr × (PUnit × Bool))
    (houtput :
      output ∈ support
        ((uniformFreshOracleImpl
          (Domain := Domain) point).run state)) :
    output.2 = state := by
  change
    output ∈ support
      ((fun value => (value, state)) <$>
        ($ᵗ Ipp.Bls12377.Fr)) at houtput
  rw [support_map, Set.mem_image] at houtput
  obtain ⟨value, _hvalue, rfl⟩ := houtput
  rfl

theorem reducedFreshOracleImpl_step_tvDist_le
    {Domain : Type} [SampleableType DigestBytes]
    (point : Domain) (state : PUnit) :
    ENNReal.ofReal
        (tvDist
          ((reducedFreshOracleImpl
            (Domain := Domain) point).run (state, false))
          ((uniformFreshOracleImpl
            (Domain := Domain) point).run (state, false))) ≤
      modReductionBias := by
  change
    ENNReal.ofReal
        (tvDist
          ((fun digest =>
              (reduceFr digest, (state, false))) <$>
            ($ᵗ DigestBytes))
          ((fun value => (value, (state, false))) <$>
            ($ᵗ Ipp.Bls12377.Fr))) ≤
      modReductionBias
  calc
    ENNReal.ofReal
        (tvDist
          ((fun digest =>
              (reduceFr digest, (state, false))) <$>
            ($ᵗ DigestBytes))
          ((fun value => (value, (state, false))) <$>
            ($ᵗ Ipp.Bls12377.Fr))) ≤
        ENNReal.ofReal
          (tvDist
            (reduceFr <$> ($ᵗ DigestBytes))
            ($ᵗ Ipp.Bls12377.Fr)) := by
              gcongr
              simpa only [Functor.map_map,
                Function.comp_apply] using
                  (tvDist_map_le
                    (fun value => (value, (state, false)))
                    (reduceFr <$> ($ᵗ DigestBytes))
                    ($ᵗ Ipp.Bls12377.Fr))
    _ ≤ modReductionBias :=
      uniformDigest_reduceFr_tvDist_le

/-- Adaptive quantitative hop for any field-oracle program whose total
number of charged queries is bounded.  It is intentionally stated for fresh
responses; callers first use their proved injective-preimage/cache
factorization to expose this interface. -/
theorem simulate_reducedFresh_uniformFresh_tvDist_le
    {Domain Output : Type}
    [SampleableType DigestBytes]
    (program : OracleComp (ScalarOracleSpec Domain) Output)
    (queryBudget : Nat)
    (hbound :
      OracleComp.IsQueryBoundP program
      (fun _point => True) queryBudget) :
    ENNReal.ofReal
        (tvDist
          ((simulateQ
            (reducedFreshOracleImpl (Domain := Domain))
            program).run (PUnit.unit, false))
          ((simulateQ
            (uniformFreshOracleImpl (Domain := Domain))
            program).run (PUnit.unit, false))) ≤
      modReductionBudget queryBudget := by
  let charged : Domain → Prop := fun _ => True
  have hmono :
      ∀ (point : Domain) (state : PUnit × Bool),
        state.2 = true →
        ∀ output ∈ support
          ((reducedFreshOracleImpl
            (Domain := Domain) point).run state),
          output.2.2 = true := by
    intro point state hbad output houtput
    rw [reducedFreshOracleImpl_preserves_state
      point state output houtput]
    exact hbad
  have hbadZero :
      Pr[fun output :
          Output × (PUnit × Bool) =>
          output.2.2 = true |
        (simulateQ
          (reducedFreshOracleImpl (Domain := Domain))
          program).run (PUnit.unit, false)] = 0 := by
    apply probEvent_eq_zero
    intro output houtput hbad
    have hpreserved :
        output.2.2 = false := by
      have hinv :=
        OracleComp.simulateQ_run_preserves_inv_of_query
          (reducedFreshOracleImpl (Domain := Domain))
          (fun state : PUnit × Bool => state.2 = false)
          (fun point state hstate result hresult => by
            rw [reducedFreshOracleImpl_preserves_state
              point state result hresult]
            exact hstate)
          program (PUnit.unit, false) rfl
      exact hinv output houtput
    simp_all
  have hquantitative :=
    OracleComp.ProgramLogic.Relational.ofReal_tvDist_simulateQ_run_le_queryBound_mul_slack_plus_probEvent_bad
        (spec' := unifSpec)
        (reducedFreshOracleImpl (Domain := Domain))
        (uniformFreshOracleImpl (Domain := Domain))
        modReductionBias charged
        (fun point _ state =>
          reducedFreshOracleImpl_step_tvDist_le point state)
        (fun point hpoint =>
          False.elim (hpoint trivial))
        hmono program hbound (PUnit.unit, false)
  simpa [charged, modReductionBudget, hbadZero] using hquantitative

/-- Lazy reduced-byte oracle with a field-valued cache. Repeated queries are
answered from the same cache, exactly as in the deployed random-oracle game. -/
def reducedCachingOracleImpl
    {Domain : Type} [DecidableEq Domain]
    [SampleableType DigestBytes] :
    QueryImpl (ScalarOracleSpec Domain)
      (StateT
        ((ScalarOracleSpec Domain).QueryCache × Bool)
        ProbComp) :=
  QueryImpl.withCachingAux
    (fun _point _value _cache bad => bad)
    (fun _point _cache bad =>
      (fun value => (value, bad)) <$>
        (reduceFr <$> ($ᵗ DigestBytes)))

/-- Lazy uniform field oracle with the same cache representation. -/
def uniformCachingOracleImpl
    {Domain : Type} [DecidableEq Domain] :
    QueryImpl (ScalarOracleSpec Domain)
      (StateT
        ((ScalarOracleSpec Domain).QueryCache × Bool)
        ProbComp) :=
  QueryImpl.withCachingAux
    (fun _point _value _cache bad => bad)
    (fun _point _cache bad =>
      (fun value => (value, bad)) <$>
        ($ᵗ Ipp.Bls12377.Fr))

theorem reducedCachingOracleImpl_preserves_bad
    {Domain : Type} [DecidableEq Domain]
    [SampleableType DigestBytes]
    (point : Domain)
    (state :
      (ScalarOracleSpec Domain).QueryCache × Bool)
    (output :
      Ipp.Bls12377.Fr ×
        ((ScalarOracleSpec Domain).QueryCache × Bool))
    (houtput :
      output ∈ support
        ((reducedCachingOracleImpl
          (Domain := Domain) point).run state)) :
    output.2.2 = state.2 := by
  change
    output ∈ support
      ((QueryImpl.withCachingAux
        (fun _point _value _cache bad => bad)
        (fun _point _cache bad =>
          (fun value => (value, bad)) <$>
            (reduceFr <$> ($ᵗ DigestBytes)))
        point).run state) at houtput
  apply QueryImpl.withCachingAux_aux_inv_of_mem
    (spec := ScalarOracleSpec Domain)
    (Q := Bool)
    (hit :=
      fun _point _value _cache bad => bad)
    (miss :=
      fun _point _cache bad =>
        (fun value => (value, bad)) <$>
          (reduceFr <$> ($ᵗ DigestBytes)))
    (inv := fun bad => bad = state.2)
    (hq := rfl)
    (hz := houtput)
  · intro _point _value _cache _bad hbad
    exact hbad
  · intro _point _cache bad hbad result hresult
    rw [support_map, Set.mem_image] at hresult
    obtain ⟨value, _hvalue, rfl⟩ := hresult
    exact hbad

theorem uniformCachingOracleImpl_preserves_bad
    {Domain : Type} [DecidableEq Domain]
    (point : Domain)
    (state :
      (ScalarOracleSpec Domain).QueryCache × Bool)
    (output :
      Ipp.Bls12377.Fr ×
        ((ScalarOracleSpec Domain).QueryCache × Bool))
    (houtput :
      output ∈ support
        ((uniformCachingOracleImpl
          (Domain := Domain) point).run state)) :
    output.2.2 = state.2 := by
  change
    output ∈ support
      ((QueryImpl.withCachingAux
        (fun _point _value _cache bad => bad)
        (fun _point _cache bad =>
          (fun value => (value, bad)) <$>
            ($ᵗ Ipp.Bls12377.Fr))
        point).run state) at houtput
  apply QueryImpl.withCachingAux_aux_inv_of_mem
    (spec := ScalarOracleSpec Domain)
    (Q := Bool)
    (hit :=
      fun _point _value _cache bad => bad)
    (miss :=
      fun _point _cache bad =>
        (fun value => (value, bad)) <$>
          ($ᵗ Ipp.Bls12377.Fr))
    (inv := fun bad => bad = state.2)
    (hq := rfl)
    (hz := houtput)
  · intro _point _value _cache _bad hbad
    exact hbad
  · intro _point _cache bad hbad result hresult
    rw [support_map, Set.mem_image] at hresult
    obtain ⟨value, _hvalue, rfl⟩ := hresult
    exact hbad

theorem reducedCachingOracleImpl_step_tvDist_le
    {Domain : Type} [DecidableEq Domain]
    [SampleableType DigestBytes]
    (point : Domain)
    (cache : (ScalarOracleSpec Domain).QueryCache) :
    ENNReal.ofReal
        (tvDist
          ((reducedCachingOracleImpl
            (Domain := Domain) point).run (cache, false))
          ((uniformCachingOracleImpl
            (Domain := Domain) point).run (cache, false))) ≤
      modReductionBias := by
  rw [reducedCachingOracleImpl,
    uniformCachingOracleImpl,
    QueryImpl.withCachingAux_apply,
    QueryImpl.withCachingAux_apply]
  cases hcache : cache point with
  | some cached =>
      simp [hcache, modReductionBias]
  | none =>
      simp only [hcache]
      simp only [Functor.map_map, Function.comp_apply]
      calc
        ENNReal.ofReal
            (tvDist
              ((fun digest =>
                (reduceFr digest,
                  (cache.cacheQuery point
                    (reduceFr digest), false))) <$>
                ($ᵗ DigestBytes))
              ((fun value =>
                (value,
                  (cache.cacheQuery point value, false))) <$>
                ($ᵗ Ipp.Bls12377.Fr))) ≤
            ENNReal.ofReal
              (tvDist
                (reduceFr <$> ($ᵗ DigestBytes))
                ($ᵗ Ipp.Bls12377.Fr)) := by
                  gcongr
                  simpa only [Functor.map_map,
                    Function.comp_apply] using
                      (tvDist_map_le
                        (fun value =>
                          (value,
                            (cache.cacheQuery point value, false)))
                        (reduceFr <$> ($ᵗ DigestBytes))
                        ($ᵗ Ipp.Bls12377.Fr))
        _ ≤ modReductionBias :=
          uniformDigest_reduceFr_tvDist_le

/-- Cache-aware adaptive modular-reduction hop. It applies directly to a
complete verifier (or adversary/verifier composition) with a structural total
query bound, including repeated queries. -/
theorem simulate_reducedCaching_uniformCaching_tvDist_le
    {Domain Output : Type}
    [DecidableEq Domain]
    [SampleableType DigestBytes]
    (program : OracleComp (ScalarOracleSpec Domain) Output)
    (queryBudget : Nat)
    (hbound :
      OracleComp.IsQueryBoundP program
        (fun _point => True) queryBudget) :
    ENNReal.ofReal
        (tvDist
          ((simulateQ
            (reducedCachingOracleImpl (Domain := Domain))
            program).run
              (∅, false))
          ((simulateQ
            (uniformCachingOracleImpl (Domain := Domain))
            program).run
              (∅, false))) ≤
      modReductionBudget queryBudget := by
  let charged : Domain → Prop := fun _ => True
  have hmono :
      ∀ (point : Domain)
        (state :
          (ScalarOracleSpec Domain).QueryCache × Bool),
        state.2 = true →
        ∀ output ∈ support
          ((reducedCachingOracleImpl
            (Domain := Domain) point).run state),
          output.2.2 = true := by
    intro point state hbad output houtput
    rw [reducedCachingOracleImpl_preserves_bad
      point state output houtput]
    exact hbad
  have hbadZero :
      Pr[fun output :
          Output ×
            ((ScalarOracleSpec Domain).QueryCache × Bool) =>
          output.2.2 = true |
        (simulateQ
          (reducedCachingOracleImpl (Domain := Domain))
          program).run (∅, false)] = 0 := by
    apply probEvent_eq_zero
    intro output houtput hbad
    have hpreserved :
        output.2.2 = false := by
      have hinv :=
        OracleComp.simulateQ_run_preserves_inv_of_query
          (reducedCachingOracleImpl (Domain := Domain))
          (fun state :
            (ScalarOracleSpec Domain).QueryCache × Bool =>
              state.2 = false)
          (fun point state hstate result hresult => by
            change result.2.2 = false
            rw [reducedCachingOracleImpl_preserves_bad
              point state result hresult]
            exact hstate)
          program (∅, false) rfl
      exact hinv output houtput
    simp_all
  have hquantitative :=
    OracleComp.ProgramLogic.Relational.ofReal_tvDist_simulateQ_run_le_queryBound_mul_slack_plus_probEvent_bad
        (spec' := unifSpec)
        (reducedCachingOracleImpl (Domain := Domain))
        (uniformCachingOracleImpl (Domain := Domain))
        modReductionBias charged
        (fun point _ cache =>
          reducedCachingOracleImpl_step_tvDist_le
            point cache)
        (fun point hpoint =>
          False.elim (hpoint trivial))
        hmono program hbound (∅, false)
  simpa [charged, modReductionBudget, hbadZero] using hquantitative

@[simp] theorem modReductionBudget_zero :
    modReductionBudget 0 = 0 := by
  simp [modReductionBudget]

theorem modReductionBudget_mono :
    Monotone modReductionBudget := by
  intro left right h
  exact mul_le_mul_right' (Nat.cast_le.mpr h) _

#print axioms digestFiber_card
#print axioms uniformDigest_reduceFr_point_mass
#print axioms uniformDigest_reduceFr_tvDist_le
#print axioms simulate_reducedFresh_uniformFresh_tvDist_le
#print axioms simulate_reducedCaching_uniformCaching_tvDist_le
#print axioms modReductionBudget_mono

end

end Ipp.ShippingScalarReduction
