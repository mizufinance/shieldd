use crate::utils::transcript::IOPTranscript;
use ark_ec::pairing::Pairing;
use ark_ff::Field;
use ark_poly::Radix2EvaluationDomain;
use ark_serialize::{
    CanonicalDeserialize, CanonicalSerialize, Compress, SerializationError, Valid, Validate,
};

/// The proving key for ZK-Pari (vanishing-polynomial mask construction).
///
/// Notation follows the paper: the columns of the Square R1CS matrices are
/// interpolated over the domain `H`, and the basis is extended with the mask
/// directions `a_{k+1} = v_H(X)`, `a_{k+2} = X v_H(X)` on the A-side.
#[derive(Clone)]
pub struct ProvingKey<E>
where
    E: Pairing,
    E::ScalarField: Field,
{
    /// Witness commitment key
    /// `Sigma_W = [(alpha a_i(tau) + beta b_i(tau))/delta G]` for the
    /// witnesses, in ascending witness-index order.
    pub sigma_w: Vec<E::G1Affine>,
    /// A-side mask key for `eta_1`: `(alpha v_H(tau)/delta) G` (direction `a_{k+1} = v_H`).
    pub sigma_mask_const: E::G1Affine,
    /// A-side mask key for `eta_2`: `(alpha tau v_H(tau)/delta) G` (direction `a_{k+2} = X v_H`).
    pub sigma_mask_linear: E::G1Affine,
    /// Quotient commitment key `Sigma_Q = [(beta v_H(tau) tau^i/delta) G]_{i=0}^{m+2}`.
    pub sigma_q: Vec<E::G1Affine>,
    /// A-side opening key `Sigma_A = [alpha tau^i G]_{i=0}^{m}`.
    pub sigma_a: Vec<E::G1Affine>,
    /// Batched B-side/quotient opening key `Sigma_R = [beta tau^i G]_{i=0}^{2m+1}`.
    pub sigma_r: Vec<E::G1Affine>,
    pub verifying_key: VerifyingKey<E>,
}

/// The verifying key for ZK-Pari.
///
/// Carries a Fiat-Shamir transcript already seeded with the key material
/// (see [`Self::transcript`]). The key is identical on every verification, so
/// it is absorbed once at construction and each challenge derivation just
/// clones that fixed-size Strobe state. Challenge derivation is therefore
/// O(1) in the size of the key rather than linear in it.
///
/// Serialization writes the group elements and the domain; the prepared `G2`
/// points and the seeded transcript are derived state, rebuilt by
/// deserialization (via [`Self::new`]), so a round-tripped key verifies
/// identically.
#[derive(Clone)]
pub struct VerifyingKey<E: Pairing> {
    pub succinct_index: SuccinctIndex,
    pub g: E::G1Affine,
    pub alpha_g: E::G1Affine,
    pub beta_g: E::G1Affine,
    /// `delta H` (the witness-commitment trapdoor in G2).
    pub delta_h: E::G2Affine,
    pub delta_h_prep: E::G2Prepared,
    pub tau_h: E::G2Affine,
    pub tau_h_prep: E::G2Prepared,
    pub h: E::G2Affine,
    pub h_prep: E::G2Prepared,
    pub domain: Radix2EvaluationDomain<E::ScalarField>,
    /// Transcript seeded with the key material above, built once by
    /// [`Self::new`].
    transcript: IOPTranscript<E::ScalarField>,
}

impl<E: Pairing> VerifyingKey<E> {
    /// Assemble a verifying key, deriving the prepared `G2` points and seeding
    /// the Fiat-Shamir transcript.
    #[allow(clippy::too_many_arguments)]
    pub fn new(
        succinct_index: SuccinctIndex,
        g: E::G1Affine,
        alpha_g: E::G1Affine,
        beta_g: E::G1Affine,
        delta_h: E::G2Affine,
        tau_h: E::G2Affine,
        h: E::G2Affine,
        domain: Radix2EvaluationDomain<E::ScalarField>,
    ) -> Self {
        let mut vk = Self {
            succinct_index,
            g,
            alpha_g,
            beta_g,
            delta_h,
            delta_h_prep: delta_h.into(),
            tau_h,
            tau_h_prep: tau_h.into(),
            h,
            h_prep: h.into(),
            domain,
            transcript: IOPTranscript::new(crate::ZkPari::<E>::SNARK_NAME),
        };
        vk.seed_transcript();
        vk
    }

    /// Absorb the key material into a fresh transcript and store the result.
    ///
    /// The prepared `G2` points are deliberately not absorbed: they are Miller
    /// loop precomputation of `delta_h`, `tau_h`, and `h`, which are. Binding
    /// the key does not mean binding its precomputation. The succinct index
    /// carries the matrix digest, so the transcript binds the circuit, not
    /// just its shape.
    fn seed_transcript(&mut self) {
        let mut t = IOPTranscript::new(crate::ZkPari::<E>::SNARK_NAME);
        t.append_serializable_element(b"index", &self.succinct_index);
        t.append_serializable_element(b"g", &self.g);
        t.append_serializable_element(b"alpha_g", &self.alpha_g);
        t.append_serializable_element(b"beta_g", &self.beta_g);
        t.append_serializable_element(b"delta_h", &self.delta_h);
        t.append_serializable_element(b"tau_h", &self.tau_h);
        t.append_serializable_element(b"h", &self.h);
        t.append_serializable_element(b"domain", &self.domain);
        self.transcript = t;
    }

    /// The transcript seeded with this key. Clone it, absorb the per-proof
    /// material, and squeeze the challenge — this is exactly what
    /// verification does.
    ///
    /// Exposed so integrators (and benchmarks) can reproduce challenge
    /// derivation without re-absorbing the key. It holds no secret: anyone
    /// with the verifying key can recompute it.
    pub fn transcript(&self) -> &IOPTranscript<E::ScalarField> {
        &self.transcript
    }
}

impl<E: Pairing> Valid for VerifyingKey<E> {
    fn check(&self) -> Result<(), SerializationError> {
        self.g.check()?;
        self.alpha_g.check()?;
        self.beta_g.check()?;
        self.delta_h.check()?;
        self.tau_h.check()?;
        self.h.check()
    }
}

impl<E: Pairing> CanonicalSerialize for VerifyingKey<E> {
    fn serialize_with_mode<W: std::io::Write>(
        &self,
        mut writer: W,
        compress: Compress,
    ) -> Result<(), SerializationError> {
        self.succinct_index
            .serialize_with_mode(&mut writer, compress)?;
        self.g.serialize_with_mode(&mut writer, compress)?;
        self.alpha_g.serialize_with_mode(&mut writer, compress)?;
        self.beta_g.serialize_with_mode(&mut writer, compress)?;
        self.delta_h.serialize_with_mode(&mut writer, compress)?;
        self.tau_h.serialize_with_mode(&mut writer, compress)?;
        self.h.serialize_with_mode(&mut writer, compress)?;
        self.domain.serialize_with_mode(&mut writer, compress)
    }

    fn serialized_size(&self, compress: Compress) -> usize {
        self.succinct_index.serialized_size(compress)
            + self.g.serialized_size(compress)
            + self.alpha_g.serialized_size(compress)
            + self.beta_g.serialized_size(compress)
            + self.delta_h.serialized_size(compress)
            + self.tau_h.serialized_size(compress)
            + self.h.serialized_size(compress)
            + self.domain.serialized_size(compress)
    }
}

impl<E: Pairing> CanonicalDeserialize for VerifyingKey<E> {
    fn deserialize_with_mode<R: std::io::Read>(
        mut reader: R,
        compress: Compress,
        validate: Validate,
    ) -> Result<Self, SerializationError> {
        let succinct_index = SuccinctIndex::deserialize_with_mode(&mut reader, compress, validate)?;
        let g = E::G1Affine::deserialize_with_mode(&mut reader, compress, validate)?;
        let alpha_g = E::G1Affine::deserialize_with_mode(&mut reader, compress, validate)?;
        let beta_g = E::G1Affine::deserialize_with_mode(&mut reader, compress, validate)?;
        let delta_h = E::G2Affine::deserialize_with_mode(&mut reader, compress, validate)?;
        let tau_h = E::G2Affine::deserialize_with_mode(&mut reader, compress, validate)?;
        let h = E::G2Affine::deserialize_with_mode(&mut reader, compress, validate)?;
        let domain = Radix2EvaluationDomain::deserialize_with_mode(&mut reader, compress, validate)?;
        // `new` rebuilds the derived state: prepared G2 points and the seeded
        // transcript. The absorbed bytes are identical to the original key's,
        // so challenge derivation is unchanged.
        Ok(Self::new(
            succinct_index,
            g,
            alpha_g,
            beta_g,
            delta_h,
            tau_h,
            h,
            domain,
        ))
    }
}

impl<E: Pairing> Valid for ProvingKey<E> {
    fn check(&self) -> Result<(), SerializationError> {
        self.verifying_key.check()
    }
}

impl<E: Pairing> CanonicalSerialize for ProvingKey<E> {
    fn serialize_with_mode<W: std::io::Write>(
        &self,
        mut writer: W,
        compress: Compress,
    ) -> Result<(), SerializationError> {
        self.sigma_w.serialize_with_mode(&mut writer, compress)?;
        self.sigma_mask_const
            .serialize_with_mode(&mut writer, compress)?;
        self.sigma_mask_linear
            .serialize_with_mode(&mut writer, compress)?;
        self.sigma_q.serialize_with_mode(&mut writer, compress)?;
        self.sigma_a.serialize_with_mode(&mut writer, compress)?;
        self.sigma_r.serialize_with_mode(&mut writer, compress)?;
        self.verifying_key
            .serialize_with_mode(&mut writer, compress)
    }

    fn serialized_size(&self, compress: Compress) -> usize {
        self.sigma_w.serialized_size(compress)
            + self.sigma_mask_const.serialized_size(compress)
            + self.sigma_mask_linear.serialized_size(compress)
            + self.sigma_q.serialized_size(compress)
            + self.sigma_a.serialized_size(compress)
            + self.sigma_r.serialized_size(compress)
            + self.verifying_key.serialized_size(compress)
    }
}

impl<E: Pairing> CanonicalDeserialize for ProvingKey<E> {
    fn deserialize_with_mode<R: std::io::Read>(
        mut reader: R,
        compress: Compress,
        validate: Validate,
    ) -> Result<Self, SerializationError> {
        Ok(Self {
            sigma_w: Vec::deserialize_with_mode(&mut reader, compress, validate)?,
            sigma_mask_const: E::G1Affine::deserialize_with_mode(&mut reader, compress, validate)?,
            sigma_mask_linear: E::G1Affine::deserialize_with_mode(&mut reader, compress, validate)?,
            sigma_q: Vec::deserialize_with_mode(&mut reader, compress, validate)?,
            sigma_a: Vec::deserialize_with_mode(&mut reader, compress, validate)?,
            sigma_r: Vec::deserialize_with_mode(&mut reader, compress, validate)?,
            verifying_key: VerifyingKey::deserialize_with_mode(&mut reader, compress, validate)?,
        })
    }
}

/// The succinct index for ZK-Pari.
#[derive(CanonicalSerialize, CanonicalDeserialize, Clone, Debug, PartialEq, Eq)]
pub struct SuccinctIndex {
    /// Number of SR1CS constraints (after instance outlining).
    pub num_constraints: usize,
    /// Number of instance variables (including the leading constant one).
    pub instance_len: usize,
    /// The paper's `HashIdx(i)`: a 32-byte digest of the canonical SR1CS
    /// matrices, computed at key generation. Absorbed into the key's
    /// Fiat-Shamir transcript (via the index), it binds proofs to the exact
    /// circuit — two same-shape circuits under one setup get different
    /// challenges, so a proof for one cannot verify under the other.
    pub matrix_digest: [u8; 32],
}

/// The setup trapdoor `(alpha, beta, delta, tau)` plus the instance
/// polynomial evaluations at `tau`.
///
/// This is the toxic waste of the trusted setup. An honest setup discards it;
/// retaining it breaks soundness, since it lets [`crate::ZkPari::simulate`]
/// forge accepting transcripts without a witness. Use it only for the
/// honest-verifier zero-knowledge *simulator* (testing, benchmarking, or load
/// generation) — never in a real deployment. It is deliberately not
/// serializable: toxic waste should not be handed a wire format.
#[derive(Clone, Debug)]
pub struct Trapdoor<E: Pairing> {
    /// A-side trapdoor scalar.
    pub alpha: E::ScalarField,
    /// B-side trapdoor scalar.
    pub beta: E::ScalarField,
    /// Witness-commitment trapdoor `delta`.
    pub delta: E::ScalarField,
    /// Evaluation point trapdoor `tau`.
    pub tau: E::ScalarField,
    /// CRS generator `G`.
    pub g: E::G1Affine,
    /// `a_i(tau)` for the instance variables (index `0` is the constant one).
    pub instance_a_at_tau: Vec<E::ScalarField>,
    /// `b_i(tau)` for the instance variables (zero after instance outlining,
    /// retained for generality).
    pub instance_b_at_tau: Vec<E::ScalarField>,
}

/// A ZK-Pari proof: `2 G1 + 1 F` — exactly 128 bytes compressed on
/// BLS12-381.
#[derive(CanonicalSerialize, CanonicalDeserialize, Clone, Debug, PartialEq, Eq)]
pub struct Proof<E: Pairing> {
    /// Witness/mask/quotient commitment `T`.
    pub t_g: E::G1Affine,
    /// Batched KZG opening proof `U`.
    pub u_g: E::G1Affine,
    /// Masked A-side evaluation `v_a = z_A(zeta) - x_A(zeta)`.
    pub v_a: E::ScalarField,
}
