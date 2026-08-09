import Ipp.SnarkPackV1Refinement

/-!
Honest SnarkPack-v1 construction. GIPA commitments and folds are computed
inside Lean. The only supplied prover operations are the two KZG opening
algorithms, each with the exact verifier postcondition for the honest
structured MSM.
-/

open scoped BigOperators

namespace Ipp.SnarkPackV1.HonestProver

noncomputable section

variable {F G1 G2 GT : Type}
  [Field F]
  [AddCommGroup G1] [Module F G1]
  [AddCommGroup G2] [Module F G2]
  [AddCommGroup GT] [Module F GT]

private theorem pow_succ_two (μ : Nat) : 2 ^ (μ + 1) = 2 ^ μ + 2 ^ μ := by
  rw [pow_succ, Nat.mul_two]

/-- Reindex a power-of-two vector as its lower and upper halves. -/
def splitView {V : Type} (μ : Nat) (values : Fin (2 ^ (μ + 1)) → V) :
    Fin (2 ^ μ + 2 ^ μ) → V :=
  fun i => values (Fin.cast (pow_succ_two μ).symm i)

def lowerHalf {V : Type} (μ : Nat) (values : Fin (2 ^ (μ + 1)) → V) :
    Fin (2 ^ μ) → V :=
  fun i => splitView μ values (Fin.castAdd (2 ^ μ) i)

def upperHalf {V : Type} (μ : Nat) (values : Fin (2 ^ (μ + 1)) → V) :
    Fin (2 ^ μ) → V :=
  fun i => splitView μ values (Fin.natAdd (2 ^ μ) i)

/-- Cross term with the upper half on the left and lower half on the right. -/
def crossUpperLower
    {A B M : Type}
    [AddCommGroup A] [Module F A]
    [AddCommGroup B] [Module F B]
    [AddCommGroup M] [Module F M]
    (ip : A →ₗ[F] B →ₗ[F] M) (μ : Nat)
    (a : Fin (2 ^ (μ + 1)) → A)
    (b : Fin (2 ^ (μ + 1)) → B) : M :=
  Ipp.ipm ip (upperHalf μ a) (lowerHalf μ b)

/-- Cross term with the lower half on the left and upper half on the right. -/
def crossLowerUpper
    {A B M : Type}
    [AddCommGroup A] [Module F A]
    [AddCommGroup B] [Module F B]
    [AddCommGroup M] [Module F M]
    (ip : A →ₗ[F] B →ₗ[F] M) (μ : Nat)
    (a : Fin (2 ^ (μ + 1)) → A)
    (b : Fin (2 ^ (μ + 1)) → B) : M :=
  Ipp.ipm ip (lowerHalf μ a) (upperHalf μ b)

/-- The six exact GIPA cross commitments emitted at one prover round. -/
def honestRound (e : G1 →ₗ[F] G2 →ₗ[F] GT) {μ : Nat}
    (vKeys : Fin (2 ^ (μ + 1)) → G2)
    (wKeys : Fin (2 ^ (μ + 1)) → G1)
    (a c : Fin (2 ^ (μ + 1)) → G1)
    (b : Fin (2 ^ (μ + 1)) → G2)
    (publicValues : Fin (2 ^ (μ + 1)) → F) :
    Ipp.RoundComs G1 GT :=
  let ac := fun i => (a i, c i)
  let vv := fun i => (vKeys i, vKeys i)
  let bp := fun i => (b i, publicValues i)
  {
    LA := crossLowerUpper (Ipp.u4ALaneAtom e) μ vv ac
    RA := crossUpperLower (Ipp.u4ALaneAtom e) μ vv ac
    LB := crossUpperLower (Ipp.u4BLaneAtom e) μ wKeys b
    RB := crossLowerUpper (Ipp.u4BLaneAtom e) μ wKeys b
    LT := crossUpperLower (Ipp.u4TLanePairing e) μ ac bp
    RT := crossLowerUpper (Ipp.u4TLanePairing e) μ ac bp
  }

/-- Concrete highest-bit-first GIPA prover. Round zero consumes the first raw
verifier challenge; the recursive state carries the exact folded vectors. -/
def honestRounds (e : G1 →ₗ[F] G2 →ₗ[F] GT) :
    (μ : Nat) →
      (Fin (2 ^ μ) → G2) →
      (Fin (2 ^ μ) → G1) →
      (Fin (2 ^ μ) → G1) →
      (Fin (2 ^ μ) → G1) →
      (Fin (2 ^ μ) → G2) →
      (Fin (2 ^ μ) → F) →
      (Fin μ → F) →
      (Fin μ → Ipp.RoundComs G1 GT)
  | 0, _vKeys, _wKeys, _a, _c, _b, _public, _challenges =>
      Fin.elim0
  | μ + 1, vKeys, wKeys, a, c, b, publicValues, challenges =>
      let raw := challenges 0
      let current := honestRound e vKeys wKeys a c b publicValues
      let tail := honestRounds e μ
        (Ipp.foldKeyRound raw vKeys)
        (Ipp.foldKeyRound raw⁻¹ wKeys)
        (Ipp.foldKeyRound raw⁻¹ a)
        (Ipp.foldKeyRound raw⁻¹ c)
        (Ipp.foldKeyRound raw b)
        (Ipp.foldKeyRound raw publicValues)
        (fun i => challenges i.succ)
      Fin.cases current tail

/-- Exact external KZG prover boundary. GIPA folding and all aggregate
arithmetic are deliberately absent from this interface. -/
structure KzgOpenings {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT) where
  openV : F → (Fin (2 ^ μ) → F) → G2
  openW : F → (Fin (2 ^ μ) → F) → G1
  acceptV : ∀ z coeffs,
    statement.acceptV z coeffs
      (Ipp.msm coeffs statement.srsV) (openV z coeffs)
  acceptW : ∀ z coeffs,
    statement.acceptW z coeffs
      (Ipp.msm coeffs statement.srsW) (openW z coeffs)

/-- The algebraically admissible Fiat--Shamir transcript conditions used by
the deterministic verifier relation. -/
def AdmissibleTranscript {μ : Nat} (transcript : Ipp.FsTranscript μ F) : Prop :=
  transcript.randomizer ≠ 0 ∧ transcript.randomizer ≠ 1 ∧
    transcript.x0 ≠ 0 ∧
    (∀ i, transcript.roundAnswer i ≠ 0) ∧
    transcript.bridge ≠ 0 ∧ transcript.kzg ≠ 0

@[simp] theorem foldKeyRound_splitView
    {V : Type} [AddCommGroup V] [Module F V]
    (s : F) (μ : Nat) (values : Fin (2 ^ (μ + 1)) → V) :
    Ipp.foldKeyRound s values =
      Ipp.foldMsg s (splitView μ values) := by
  rfl

theorem ipm_splitView
    {A B M : Type}
    [AddCommGroup A] [Module F A]
    [AddCommGroup B] [Module F B]
    [AddCommGroup M] [Module F M]
    (ip : A →ₗ[F] B →ₗ[F] M) (μ : Nat)
    (a : Fin (2 ^ (μ + 1)) → A)
    (b : Fin (2 ^ (μ + 1)) → B) :
    Ipp.ipm ip (splitView μ a) (splitView μ b) =
      Ipp.ipm ip a b := by
  simpa [Ipp.ipm, splitView] using
    Ipp.commitV_reindex (pow_succ_two μ).symm ip a b

/-- A verifier fold with inverse challenge reconstructs the honest
key-by-raw/message-by-inverse inner product. -/
theorem foldLane_keyRaw
    {A B M : Type}
    [AddCommGroup A] [Module F A]
    [AddCommGroup B] [Module F B]
    [AddCommGroup M] [Module F M]
    (ip : A →ₗ[F] B →ₗ[F] M) (μ : Nat)
    (raw : F) (hraw : raw ≠ 0)
    (a : Fin (2 ^ (μ + 1)) → A)
    (b : Fin (2 ^ (μ + 1)) → B) :
    Ipp.foldCom raw⁻¹
        (crossLowerUpper ip μ a b)
        (Ipp.ipm ip a b)
        (crossUpperLower ip μ a b) =
      Ipp.ipm ip (Ipp.foldKeyRound raw a)
        (Ipp.foldKeyRound raw⁻¹ b) := by
  rw [foldKeyRound_splitView, foldKeyRound_splitView]
  rw [Ipp.ipm_foldMsg ip raw hraw]
  rw [ipm_splitView]
  simp only [Ipp.foldCom, crossLowerUpper, crossUpperLower, inv_inv]
  change raw⁻¹ • Ipp.ipm ip
      (fun i => splitView μ a (Fin.castAdd (2 ^ μ) i))
      (fun i => splitView μ b (Fin.natAdd (2 ^ μ) i)) +
      Ipp.ipm ip a b +
      raw • Ipp.ipm ip
        (fun i => splitView μ a (Fin.natAdd (2 ^ μ) i))
        (fun i => splitView μ b (Fin.castAdd (2 ^ μ) i)) =
    raw • Ipp.ipm ip
        (fun i => splitView μ a (Fin.natAdd (2 ^ μ) i))
        (fun i => splitView μ b (Fin.castAdd (2 ^ μ) i)) +
      Ipp.ipm ip a b +
      raw⁻¹ • Ipp.ipm ip
        (fun i => splitView μ a (Fin.castAdd (2 ^ μ) i))
        (fun i => splitView μ b (Fin.natAdd (2 ^ μ) i))
  abel

/-- The dual verifier fold reconstructs the honest
key-by-inverse/message-by-raw inner product. -/
theorem foldLane_keyInverse
    {A B M : Type}
    [AddCommGroup A] [Module F A]
    [AddCommGroup B] [Module F B]
    [AddCommGroup M] [Module F M]
    (ip : A →ₗ[F] B →ₗ[F] M) (μ : Nat)
    (raw : F) (hraw : raw ≠ 0)
    (a : Fin (2 ^ (μ + 1)) → A)
    (b : Fin (2 ^ (μ + 1)) → B) :
    Ipp.foldCom raw⁻¹
        (crossUpperLower ip μ a b)
        (Ipp.ipm ip a b)
        (crossLowerUpper ip μ a b) =
      Ipp.ipm ip (Ipp.foldKeyRound raw⁻¹ a)
        (Ipp.foldKeyRound raw b) := by
  rw [foldKeyRound_splitView, foldKeyRound_splitView]
  have h := Ipp.ipm_foldMsg ip raw⁻¹ (inv_ne_zero hraw)
    (splitView μ a) (splitView μ b)
  simp only [inv_inv] at h
  rw [h]
  rw [ipm_splitView]
  simp only [Ipp.foldCom, crossLowerUpper, crossUpperLower, inv_inv]
  rfl

/-- Fold a vector by consuming verifier challenges in chronological order. -/
def foldChrono
    {V : Type} [AddCommGroup V] [Module F V] :
    (μ : Nat) → (Fin (2 ^ μ) → V) → (Fin μ → F) → Fin 1 → V
  | 0, values, _challenges => values
  | μ + 1, values, challenges =>
      foldChrono μ
        (Ipp.foldKeyRound (challenges 0) values)
        (fun i => challenges i.succ)

/-- Chronological prover folding is the verifier's reversed final-key view. -/
theorem foldChrono_eq_foldKey_reversed
    {V : Type} [AddCommGroup V] [Module F V]
    {μ : Nat} (values : Fin (2 ^ μ) → V)
    (challenges : Fin μ → F) :
    foldChrono μ values challenges =
      Ipp.foldKey (Ipp.reversedView challenges) values := by
  induction μ with
  | zero => rfl
  | succ μ ih =>
      simp only [foldChrono, Ipp.foldKey]
      rw [ih]
      congr 2
      · funext i
        simp only [Ipp.reversedView]
        rw [Fin.rev_castSucc]
      · simp only [Ipp.reversedView]
        change challenges 0 = challenges (Fin.rev (Fin.last μ))
        rw [Fin.rev_last]

@[simp] theorem foldKeyRound_prod
    {A B : Type}
    [AddCommGroup A] [Module F A]
    [AddCommGroup B] [Module F B]
    (s : F) (μ : Nat)
    (a : Fin (2 ^ (μ + 1)) → A)
    (b : Fin (2 ^ (μ + 1)) → B) :
    Ipp.foldKeyRound s (fun i => (a i, b i)) =
      fun i => (Ipp.foldKeyRound s a i, Ipp.foldKeyRound s b i) := by
  funext i
  rfl

/-- The three honest GIPA lane commitments at one recursive state. -/
def honestState (e : G1 →ₗ[F] G2 →ₗ[F] GT) {μ : Nat}
    (vKeys : Fin (2 ^ μ) → G2)
    (wKeys : Fin (2 ^ μ) → G1)
    (a c : Fin (2 ^ μ) → G1)
    (b : Fin (2 ^ μ) → G2)
    (publicValues : Fin (2 ^ μ) → F) :
    Ipp.FoldedValues G1 GT :=
  {
    comA := Ipp.ipm (Ipp.u4ALaneAtom e)
      (fun i => (vKeys i, vKeys i)) (fun i => (a i, c i))
    comB := Ipp.ipm (Ipp.u4BLaneAtom e) wKeys b
    comT := Ipp.ipm (Ipp.u4TLanePairing e)
      (fun i => (a i, c i)) (fun i => (b i, publicValues i))
  }

/-- One emitted honest round moves all three verifier commitments to the
exact folded prover state. -/
theorem foldOne_honestRound (e : G1 →ₗ[F] G2 →ₗ[F] GT) {μ : Nat}
    (vKeys : Fin (2 ^ (μ + 1)) → G2)
    (wKeys : Fin (2 ^ (μ + 1)) → G1)
    (a c : Fin (2 ^ (μ + 1)) → G1)
    (b : Fin (2 ^ (μ + 1)) → G2)
    (publicValues : Fin (2 ^ (μ + 1)) → F)
    (raw : F) (hraw : raw ≠ 0) :
    Ipp.foldOne raw
        (honestRound e vKeys wKeys a c b publicValues)
        (honestState e vKeys wKeys a c b publicValues) =
      honestState e
        (Ipp.foldKeyRound raw vKeys)
        (Ipp.foldKeyRound raw⁻¹ wKeys)
        (Ipp.foldKeyRound raw⁻¹ a)
        (Ipp.foldKeyRound raw⁻¹ c)
        (Ipp.foldKeyRound raw b)
        (Ipp.foldKeyRound raw publicValues) := by
  have hA := foldLane_keyRaw (Ipp.u4ALaneAtom e) μ raw hraw
    (fun i => (vKeys i, vKeys i)) (fun i => (a i, c i))
  have hB := foldLane_keyInverse (Ipp.u4BLaneAtom e) μ raw hraw wKeys b
  have hT := foldLane_keyInverse (Ipp.u4TLanePairing e) μ raw hraw
    (fun i => (a i, c i)) (fun i => (b i, publicValues i))
  unfold Ipp.foldOne honestRound honestState
  simp only [Ipp.gipaChallenge]
  rw [hA, hB, hT]
  simp only [foldKeyRound_prod]

/-- Iterating the emitted honest rounds leaves exactly the six chronological
terminal folds used in the proof leaf. -/
theorem foldRounds_honestRounds (e : G1 →ₗ[F] G2 →ₗ[F] GT)
    {μ : Nat}
    (vKeys : Fin (2 ^ μ) → G2)
    (wKeys : Fin (2 ^ μ) → G1)
    (a c : Fin (2 ^ μ) → G1)
    (b : Fin (2 ^ μ) → G2)
    (publicValues : Fin (2 ^ μ) → F)
    (challenges : Fin μ → F)
    (hnz : ∀ i, challenges i ≠ 0) :
    Ipp.foldRounds μ challenges
        (honestRounds e μ vKeys wKeys a c b publicValues challenges)
        (honestState e vKeys wKeys a c b publicValues) =
      honestState (μ := 0) e
        (foldChrono μ vKeys challenges)
        (foldChrono μ wKeys (fun i => (challenges i)⁻¹))
        (foldChrono μ a (fun i => (challenges i)⁻¹))
        (foldChrono μ c (fun i => (challenges i)⁻¹))
        (foldChrono μ b challenges)
        (foldChrono μ publicValues challenges) := by
  induction μ with
  | zero => rfl
  | succ μ ih =>
      simp only [Ipp.foldRounds, honestRounds, foldChrono,
        Fin.cases_zero, Fin.cases_succ]
      rw [foldOne_honestRound e _ _ _ _ _ _ _ (hnz 0)]
      apply ih
      intro i
      exact hnz i.succ

def witnessA {n : Nat}
    (witness : Ipp.Goal.Witness n
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2)) :
    Fin n → G1 :=
  fun i => (witness.items i).a

def witnessB {n : Nat}
    (witness : Ipp.Goal.Witness n
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2)) :
    Fin n → G2 :=
  fun i => (witness.items i).b

def witnessC {n : Nat}
    (witness : Ipp.Goal.Witness n
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2)) :
    Fin n → G1 :=
  fun i => (witness.items i).c

def rPowers {n : Nat} (r : F) : Fin n → F :=
  fun i => r ^ (i : Nat)

def scaledB {n : Nat}
    (witness : Ipp.Goal.Witness n
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (r : F) : Fin n → G2 :=
  fun i => r ^ (i : Nat) • (witness.items i).b

def shiftedW {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT) (r : F) :
    Fin (2 ^ μ) → G1 :=
  fun i => (r ^ (i : Nat))⁻¹ • statement.srsW i

def inverseRounds {μ : Nat} (transcript : Ipp.FsTranscript μ F) :
    Fin μ → F :=
  fun i => (transcript.roundAnswer i)⁻¹

def vCoeffs {μ : Nat} (transcript : Ipp.FsTranscript μ F) :
    Fin (2 ^ μ) → F :=
  Ipp.transcriptCoeffs (Ipp.reversedView transcript.roundAnswer) 1

def wCoeffs {μ : Nat} (transcript : Ipp.FsTranscript μ F) :
    Fin (2 ^ μ) → F :=
  Ipp.transcriptCoeffs
    (fun i => Ipp.gipaChallenge
      (Ipp.reversedView transcript.roundAnswer i))
    transcript.randomizer⁻¹

/-- Exact initial A/B/T lane commitments used by the honest constructor. -/
def initialState {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (r : F) : Ipp.FoldedValues G1 GT :=
  honestState statement.e statement.srsV (shiftedW statement r)
    (witnessA witness) (witnessC witness) (scaledB witness r) (rPowers r)

/-- Concrete v1 proof generated from a fixed hidden witness and a fixed
admissible transcript. All GIPA values are computed in Lean; only the two
opening witnesses come from `KzgOpenings`. -/
def construct {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (openings : KzgOpenings statement) :
    Ipp.Proof μ F G1 G2 GT :=
  let root := initialState statement witness transcript.randomizer
  {
    ComA := root.comA
    ComB := root.comB
    rounds := honestRounds statement.e μ statement.srsV
      (shiftedW statement transcript.randomizer)
      (witnessA witness) (witnessC witness)
      (scaledB witness transcript.randomizer)
      (rPowers transcript.randomizer) transcript.roundAnswer
    aFinal := foldChrono μ (witnessA witness) (inverseRounds transcript) 0
    bFinal := foldChrono μ
      (scaledB witness transcript.randomizer) transcript.roundAnswer 0
    cFinal := foldChrono μ (witnessC witness) (inverseRounds transcript) 0
    vFinal := foldChrono μ statement.srsV transcript.roundAnswer 0
    vOpening := openings.openV transcript.kzg (vCoeffs transcript)
    wFinal := foldChrono μ
      (shiftedW statement transcript.randomizer) (inverseRounds transcript) 0
    wOpening := openings.openW transcript.kzg (wCoeffs transcript)
    ipAb := root.comT.1
    aggC := root.comT.2
  }

theorem foldChrono_eq_msm
    {V : Type} [AddCommGroup V] [Module F V]
    {μ : Nat} (values : Fin (2 ^ μ) → V)
    (challenges : Fin μ → F) :
    foldChrono μ values challenges 0 =
      Ipp.msm
        (Ipp.transcriptCoeffs (Ipp.reversedView challenges) 1)
        values := by
  rw [foldChrono_eq_foldKey_reversed, Ipp.foldKey_transcriptCoeffs]

theorem foldChrono_powers_eq_terminalR
    {μ : Nat} (r : F) (challenges : Fin μ → F) :
    foldChrono μ (rPowers (n := 2 ^ μ) r) challenges 0 =
      Ipp.terminalR r (Ipp.reversedView challenges) := by
  rw [foldChrono_eq_foldKey_reversed]
  simpa [rPowers] using
    Ipp.foldKey_public_eq_terminalR
      (Ipp.reversedView challenges) r

theorem foldChrono_shiftedW_eq_msm
    {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (transcript : Ipp.FsTranscript μ F) :
    foldChrono μ
        (shiftedW statement transcript.randomizer)
        (inverseRounds transcript) 0 =
      Ipp.msm (wCoeffs transcript) statement.srsW := by
  rw [foldChrono_eq_msm]
  let xInv : Fin μ → F := fun i =>
    Ipp.gipaChallenge (Ipp.reversedView transcript.roundAnswer i)
  have hx :
      Ipp.reversedView (inverseRounds transcript) = xInv := by
    rfl
  rw [hx]
  simpa [xInv, wCoeffs, shiftedW, inv_pow] using
    (Ipp.msm_shift xInv transcript.randomizer⁻¹ statement.srsW).symm

theorem u4AEmbedding_ipm
    {n : Nat}
    (e : G1 →ₗ[F] G2 →ₗ[F] GT)
    (keys : Fin n → G2 × G2)
    (messages : Fin n → G1 × G1) :
    Ipp.u4AEmbedding
        (Ipp.ipm (Ipp.u4ALaneAtom e) keys messages) =
      Ipp.commitV (Ipp.u4ACommitAtom e) keys messages := by
  unfold Ipp.ipm Ipp.commitV
  rw [map_sum]
  apply Finset.sum_congr rfl
  intro i _
  rfl

theorem u4BEmbedding_ipm
    {n : Nat}
    (e : G1 →ₗ[F] G2 →ₗ[F] GT)
    (keys : Fin n → G1)
    (messages : Fin n → G2) :
    Ipp.u4BEmbedding
        (Ipp.ipm (Ipp.u4BLaneAtom e) keys messages) =
      Ipp.commitV (Ipp.u4BCommitAtom e) keys messages := by
  unfold Ipp.ipm Ipp.commitV
  rw [map_sum]
  apply Finset.sum_congr rfl
  intro i _
  rfl

/-- The constructed proof roots open to the exact ordered hidden witness. -/
theorem construct_rootOpens
    {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (openings : KzgOpenings statement)
    (hr : transcript.randomizer ≠ 0) :
    Ipp.SnarkPackV1.Refinement.RootOpens statement
      (construct statement witness transcript openings) witness := by
  constructor
  · change Ipp.u4AEmbedding
        (Ipp.ipm (Ipp.u4ALaneAtom statement.e)
          (fun i => (statement.srsV i, statement.srsV i))
          (fun i => ((witness.items i).a, (witness.items i).c))) =
        Ipp.commitV (Ipp.u4ACommitAtom statement.e)
          (fun i => (statement.srsV i, statement.srsV i))
          (fun i => ((witness.items i).a, (witness.items i).c))
    exact u4AEmbedding_ipm statement.e _ _
  · change Ipp.u4BEmbedding
        (Ipp.ipm (Ipp.u4BLaneAtom statement.e)
          (shiftedW statement transcript.randomizer)
          (scaledB witness transcript.randomizer)) =
        Ipp.commitV (Ipp.u4BCommitAtom statement.e)
          statement.srsW (fun i => (witness.items i).b)
    rw [u4BEmbedding_ipm]
    simpa [shiftedW, scaledB, witnessB] using
      Ipp.SnarkPackV1.Refinement.commitV_rescale_cancel
        (Ipp.u4BCommitAtom statement.e) statement.srsW
        (fun i => (witness.items i).b) transcript.randomizer hr

/-- The verifier's terminal fold over the constructed round messages is the
exact six-vector honest terminal state. -/
theorem terminalFold_construct
    {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (openings : KzgOpenings statement)
    (hround : ∀ i, transcript.roundAnswer i ≠ 0) :
    Ipp.terminalFold
        (construct statement witness transcript openings).ComA
        (construct statement witness transcript openings).ComB
        (construct statement witness transcript openings)
        transcript.roundAnswer =
      honestState (μ := 0) statement.e
        (foldChrono μ statement.srsV transcript.roundAnswer)
        (foldChrono μ
          (shiftedW statement transcript.randomizer)
          (inverseRounds transcript))
        (foldChrono μ (witnessA witness) (inverseRounds transcript))
        (foldChrono μ (witnessC witness) (inverseRounds transcript))
        (foldChrono μ
          (scaledB witness transcript.randomizer)
          transcript.roundAnswer)
        (foldChrono μ
          (rPowers transcript.randomizer)
          transcript.roundAnswer) := by
  simpa [Ipp.terminalFold, construct, initialState] using
    foldRounds_honestRounds statement.e statement.srsV
      (shiftedW statement transcript.randomizer)
      (witnessA witness) (witnessC witness)
      (scaledB witness transcript.randomizer)
      (rPowers transcript.randomizer)
      transcript.roundAnswer hround

theorem honestState_zero_equations
    (e : G1 →ₗ[F] G2 →ₗ[F] GT)
    (vKeys : Fin 1 → G2) (wKeys : Fin 1 → G1)
    (a c : Fin 1 → G1) (b : Fin 1 → G2)
    (publicValues : Fin 1 → F) :
    e (a 0) (vKeys 0) =
        (honestState (μ := 0) e vKeys wKeys a c b publicValues).comA.1 ∧
      e (wKeys 0) (b 0) =
        (honestState (μ := 0) e vKeys wKeys a c b publicValues).comB ∧
      e (a 0) (b 0) =
        (honestState (μ := 0) e vKeys wKeys a c b publicValues).comT.1 ∧
      e (c 0) (vKeys 0) =
        (honestState (μ := 0) e vKeys wKeys a c b publicValues).comA.2 ∧
      publicValues 0 • c 0 =
        (honestState (μ := 0) e vKeys wKeys a c b publicValues).comT.2 := by
  simp [honestState, Ipp.ipm, Ipp.u4ALaneAtom,
    Ipp.u4BLaneAtom, Ipp.u4TLanePairing]

/-- All seven concrete GIPA-leaf and KZG-opening checks accept the honest
construction. -/
theorem construct_leafData
    {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (openings : KzgOpenings statement)
    (hround : ∀ i, transcript.roundAnswer i ≠ 0) :
    Ipp.LeafData statement
      (construct statement witness transcript openings) transcript := by
  let vTerm := foldChrono μ statement.srsV transcript.roundAnswer
  let wTerm := foldChrono μ
    (shiftedW statement transcript.randomizer) (inverseRounds transcript)
  let aTerm := foldChrono μ (witnessA witness) (inverseRounds transcript)
  let cTerm := foldChrono μ (witnessC witness) (inverseRounds transcript)
  let bTerm := foldChrono μ
    (scaledB witness transcript.randomizer) transcript.roundAnswer
  let publicTerm := foldChrono μ
    (rPowers transcript.randomizer) transcript.roundAnswer
  have hfold := terminalFold_construct statement witness transcript openings hround
  have hbase := honestState_zero_equations statement.e
    vTerm wTerm aTerm cTerm bTerm publicTerm
  have hpublic :
      publicTerm 0 =
        Ipp.terminalR transcript.randomizer
          (Ipp.reversedView transcript.roundAnswer) := by
    exact foldChrono_powers_eq_terminalR
      transcript.randomizer transcript.roundAnswer
  have hv :
      (construct statement witness transcript openings).vFinal =
        Ipp.msm (vCoeffs transcript) statement.srsV := by
    exact foldChrono_eq_msm statement.srsV transcript.roundAnswer
  have hw :
      (construct statement witness transcript openings).wFinal =
        Ipp.msm (wCoeffs transcript) statement.srsW := by
    exact foldChrono_shiftedW_eq_msm statement transcript
  unfold Ipp.LeafData
  rw [hfold]
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · simpa [construct, aTerm, vTerm] using hbase.1
  · simpa [construct, wTerm, bTerm] using hbase.2.1
  · simpa [construct, aTerm, bTerm] using hbase.2.2.1
  · simpa [construct, cTerm, vTerm] using hbase.2.2.2.1
  · rw [← hpublic]
    simpa [construct, cTerm] using hbase.2.2.2.2
  · rw [hv]
    simpa [construct, vCoeffs] using
      openings.acceptV transcript.kzg (vCoeffs transcript)
  · rw [hw]
    simpa [construct, wCoeffs] using
      openings.acceptW transcript.kzg (wCoeffs transcript)

/-- Ordered per-row PPE validity implies the concrete aggregate pairing
equation emitted by the honest constructor. -/
theorem construct_aggregatePpe
    {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (openings : KzgOpenings statement)
    (hvalid : Ipp.Goal.ValidWithWitness
      (Ipp.SnarkPackV1.Refinement.ppeRelation statement.e)
      (Ipp.SnarkPackV1.Refinement.toGoal statement) witness) :
    statement.e
        ((∑ i : Fin (2 ^ μ),
          transcript.randomizer ^ (i : Nat)) • statement.alpha)
        statement.beta +
      statement.e
        (∑ i : Fin (2 ^ μ),
          transcript.randomizer ^ (i : Nat) • statement.Aic i)
        statement.gamma +
      statement.e
        (construct statement witness transcript openings).aggC
        statement.delta =
      (construct statement witness transcript openings).ipAb := by
  have hrows :=
    (Ipp.SnarkPackV1.Refinement.validWithWitness_iff_all_ppe
      statement witness).mp hvalid
  have ht := Ipp.ipm_u4_componentwise statement.e
    (witnessA witness) (witnessC witness) (witnessB witness)
    transcript.randomizer
  have hip :
      (construct statement witness transcript openings).ipAb =
        ∑ i : Fin (2 ^ μ),
          statement.e (witness.items i).a
            (transcript.randomizer ^ (i : Nat) •
              (witness.items i).b) := by
    exact congrArg Prod.fst ht
  have hagg :
      (construct statement witness transcript openings).aggC =
        ∑ i : Fin (2 ^ μ),
          transcript.randomizer ^ (i : Nat) •
            (witness.items i).c := by
    exact congrArg Prod.snd ht
  rw [hip, hagg]
  calc
    statement.e
          ((∑ i : Fin (2 ^ μ),
            transcript.randomizer ^ (i : Nat)) • statement.alpha)
          statement.beta +
        statement.e
          (∑ i : Fin (2 ^ μ),
            transcript.randomizer ^ (i : Nat) • statement.Aic i)
          statement.gamma +
        statement.e
          (∑ i : Fin (2 ^ μ),
            transcript.randomizer ^ (i : Nat) •
              (witness.items i).c)
          statement.delta =
      (∑ i : Fin (2 ^ μ),
        transcript.randomizer ^ (i : Nat) •
          statement.e statement.alpha statement.beta) +
      (∑ i : Fin (2 ^ μ),
        transcript.randomizer ^ (i : Nat) •
          statement.e (statement.Aic i) statement.gamma) +
      (∑ i : Fin (2 ^ μ),
        transcript.randomizer ^ (i : Nat) •
          statement.e (witness.items i).c statement.delta) := by
        change
          (LinearMap.flip statement.e statement.beta)
              ((∑ i : Fin (2 ^ μ),
                transcript.randomizer ^ (i : Nat)) • statement.alpha) +
            (LinearMap.flip statement.e statement.gamma)
              (∑ i : Fin (2 ^ μ),
                transcript.randomizer ^ (i : Nat) • statement.Aic i) +
            (LinearMap.flip statement.e statement.delta)
              (∑ i : Fin (2 ^ μ),
                transcript.randomizer ^ (i : Nat) •
                  (witness.items i).c) =
            (∑ i : Fin (2 ^ μ),
              transcript.randomizer ^ (i : Nat) •
                statement.e statement.alpha statement.beta) +
            (∑ i : Fin (2 ^ μ),
              transcript.randomizer ^ (i : Nat) •
                statement.e (statement.Aic i) statement.gamma) +
            (∑ i : Fin (2 ^ μ),
              transcript.randomizer ^ (i : Nat) •
                statement.e (witness.items i).c statement.delta)
        simp only [map_smul, map_sum, Finset.sum_smul,
          LinearMap.flip_apply]
    _ = ∑ i : Fin (2 ^ μ), transcript.randomizer ^ (i : Nat) •
        (statement.e statement.alpha statement.beta +
          statement.e (statement.Aic i) statement.gamma +
          statement.e (witness.items i).c statement.delta) := by
        simp only [smul_add, Finset.sum_add_distrib]
    _ = ∑ i : Fin (2 ^ μ), transcript.randomizer ^ (i : Nat) •
        statement.e (witness.items i).a (witness.items i).b := by
        apply Finset.sum_congr rfl
        intro i _
        rw [hrows i]
        rfl
    _ = ∑ i : Fin (2 ^ μ),
        statement.e (witness.items i).a
          (transcript.randomizer ^ (i : Nat) •
            (witness.items i).b) := by
        simp only [map_smul]

theorem construct_accepts
    {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (openings : KzgOpenings statement)
    (hvalid : Ipp.Goal.ValidWithWitness
      (Ipp.SnarkPackV1.Refinement.ppeRelation statement.e)
      (Ipp.SnarkPackV1.Refinement.toGoal statement) witness)
    (hadmissible : AdmissibleTranscript transcript) :
    Ipp.SnarkPackV1.Accepts statement
      (construct statement witness transcript openings) transcript := by
  rcases hadmissible with
    ⟨hr0, hr1, hx0, hround, hbridge, hkzg⟩
  refine ⟨hr0, hr1, hx0, hround, hbridge, hkzg, ?_, ?_⟩
  · exact construct_leafData statement witness transcript openings hround
  · exact construct_aggregatePpe
      statement witness transcript openings hvalid

/-- Honest-prover completeness for one exact ordered represented witness and
one fixed admissible transcript. The only non-kernel construction boundary is
the pair of exact KZG opening postconditions in `KzgOpenings`. -/
theorem honest_complete
    {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (witness : Ipp.Goal.Witness (2 ^ μ)
      (Ipp.SnarkPackV1.Refinement.WitnessRow G1 G2))
    (transcript : Ipp.FsTranscript μ F)
    (openings : KzgOpenings statement)
    (hvalid : Ipp.Goal.ValidWithWitness
      (Ipp.SnarkPackV1.Refinement.ppeRelation statement.e)
      (Ipp.SnarkPackV1.Refinement.toGoal statement) witness)
    (hadmissible : AdmissibleTranscript transcript) :
    ∃ proof : Ipp.Proof μ F G1 G2 GT,
      Ipp.SnarkPackV1.Refinement.RootOpens statement proof witness ∧
      Ipp.SnarkPackV1.Accepts statement proof transcript := by
  refine ⟨construct statement witness transcript openings, ?_, ?_⟩
  · exact construct_rootOpens statement witness transcript openings
      hadmissible.1
  · exact construct_accepts statement witness transcript openings
      hvalid hadmissible

#print axioms honest_complete

end

end Ipp.SnarkPackV1.HonestProver
