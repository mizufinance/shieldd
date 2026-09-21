use crate::{
    hash::Parameters,
    range::{decompose, less_or_equal},
    tree::{self, Path, STATE_DEPTH, Tree},
};
use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::circuit::{BoolVar, Context, Var},
};
use commonware_math::algebra::{Additive, Ring};

pub use shieldd_sdk_crypto::domains::NOTE_NULLIFIER;
use shieldd_sdk_crypto::domains::VOLUME_ORIGIN_NULLIFIER as ORIGIN_NULLIFIER;
use shieldd_sdk_crypto::domains::VOLUME_PADDING_COMMITMENT as PADDING_COMMITMENT;
use shieldd_sdk_crypto::domains::VOLUME_PADDING_NULLIFIER as PADDING_NULLIFIER;
use shieldd_sdk_crypto::domains::VOLUME_STATE as STATE;
use shieldd_sdk_crypto::domains::VOLUME_SUBJECT as SUBJECT;

#[derive(Clone)]
pub struct Witness {
    pub nullifier: Scalar,
    pub commitment: Scalar,
    pub day_start: Scalar,
    pub proof_context: u8,
    pub use_real: bool,
    pub starts_new_day: bool,
    pub timestamp_day_index: u64,
    pub timestamp_second: u64,
    pub subject: Scalar,
    pub prior_volume: u128,
    pub prior_blinding: Scalar,
    pub prior_commitment: Scalar,
    pub prior_path: Path<Scalar, STATE_DEPTH>,
    pub successor_volume: u128,
    pub successor_blinding: Scalar,
}

pub struct Shared<'ctx> {
    pub timestamp: Var<'ctx, Scalar>,
    pub eligible_ordinary: BoolVar<'ctx, Scalar>,
    pub sender_address: [Var<'ctx, Scalar>; 4],
    pub asset: Var<'ctx, Scalar>,
    pub outbound: Var<'ctx, Scalar>,
    pub daily_limit: Var<'ctx, Scalar>,
    pub anchor: Var<'ctx, Scalar>,
    pub nk: Var<'ctx, Scalar>,
    pub padding_seed: Var<'ctx, Scalar>,
}
pub struct Output<'ctx> {
    pub nullifier: Var<'ctx, Scalar>,
    pub commitment: Var<'ctx, Scalar>,
    pub day_start: Var<'ctx, Scalar>,
    pub proof_context: Var<'ctx, Scalar>,
    pub flagged: BoolVar<'ctx, Scalar>,
}
fn amount(value: u128) -> Scalar {
    Scalar::from_limbs([value as u64, (value >> 64) as u64, 0, 0])
}
fn equal_if<'ctx>(condition: &BoolVar<'ctx, Scalar>, a: &Var<'ctx, Scalar>, b: &Var<'ctx, Scalar>) {
    (condition.var().clone() * &(a.clone() - b)).assert_eq(&Var::zero());
}

/// Enforces origin, continuation, disclosure and fee accumulator transitions.
pub fn constrain<'ctx>(
    ctx: Context<'ctx, Scalar>,
    params: &Parameters,
    w: &Witness,
    shared: &Shared<'ctx>,
) -> Output<'ctx> {
    let var = |value: &Scalar| Var::witness(ctx, |_| value.clone());
    let use_real = BoolVar::witness(ctx, |_| w.use_real);
    let starts_new_day = BoolVar::witness(ctx, |_| w.starts_new_day);
    let proof_context = var(&Scalar::from(u64::from(w.proof_context)));
    let is_fee = BoolVar::assert(proof_context.clone() - &Var::one());
    let ordinary = !is_fee;
    let day_index = var(&Scalar::from(w.timestamp_day_index));
    let second = var(&Scalar::from(w.timestamp_second));
    decompose(ctx, &shared.timestamp, 64);
    decompose(ctx, &day_index, 48);
    let seconds = decompose(ctx, &second, 17);
    let last_second = (0..17)
        .map(|i| BoolVar::constant(86399u64 >> i & 1 == 1))
        .collect::<Vec<_>>();
    less_or_equal(&seconds, &last_second).assert_eq(&BoolVar::constant(true));
    let selected_day = day_index * &Var::native(Scalar::from(86400));
    shared
        .timestamp
        .assert_eq(&(selected_day.clone() + &second));
    let day_start = var(&w.day_start);
    day_start.assert_eq(&(ordinary.var().clone() * &selected_day));
    let eligible = ordinary.clone() & shared.eligible_ordinary.clone();
    (use_real.clone() & !eligible.clone()).assert_eq(&BoolVar::constant(false));
    let flagged = eligible & !use_real.clone();
    let subject = var(&w.subject);
    let mut subject_inputs = shared.sender_address.to_vec();
    subject_inputs.push(shared.asset.clone());
    equal_if(
        &use_real,
        &subject,
        &params.circuit(SUBJECT, &subject_inputs),
    );
    let prior = var(&amount(w.prior_volume));
    let successor = var(&amount(w.successor_volume));
    decompose(ctx, &prior, 128);
    decompose(ctx, &successor, 128);
    let limit_bits = decompose(ctx, &shared.daily_limit, 128);
    let candidate = prior.clone() + &shared.outbound;
    let candidate_bits = decompose(ctx, &candidate, 128);
    equal_if(&use_real, &successor, &candidate);
    let within = less_or_equal(&candidate_bits, &limit_bits);
    (use_real.clone() & !within).assert_eq(&BoolVar::constant(false));
    equal_if(
        &(use_real.clone() & starts_new_day.clone()),
        &prior,
        &Var::zero(),
    );
    let prior_commitment = params.circuit(
        STATE,
        &[
            subject.clone(),
            day_start.clone(),
            prior,
            var(&w.prior_blinding),
        ],
    );
    let continuation = use_real.clone() & !starts_new_day.clone();
    equal_if(&continuation, &var(&w.prior_commitment), &prior_commitment);
    let path = w.prior_path.witness(ctx);
    let prior_anchor = tree::root(ctx, params, Tree::State, prior_commitment.clone(), &path);
    equal_if(&continuation, &prior_anchor, &shared.anchor);
    let origin = params.circuit(
        ORIGIN_NULLIFIER,
        &[shared.nk.clone(), subject.clone(), day_start.clone()],
    );
    let previous = params.circuit(
        NOTE_NULLIFIER,
        &[shared.nk.clone(), prior_commitment, path.position],
    );
    let real_nullifier = starts_new_day.select(&origin, &previous);
    let real_commitment = params.circuit(
        STATE,
        &[
            subject,
            day_start.clone(),
            successor,
            var(&w.successor_blinding),
        ],
    );
    let padding_inputs = [
        shared.nk.clone(),
        shared.padding_seed.clone(),
        day_start.clone(),
    ];
    let padding_nullifier = params.circuit(PADDING_NULLIFIER, &padding_inputs);
    let padding_commitment = params.circuit(PADDING_COMMITMENT, &padding_inputs);
    let nullifier = var(&w.nullifier);
    let commitment = var(&w.commitment);
    nullifier.assert_eq(
        &(ordinary.var().clone() * &use_real.select(&real_nullifier, &padding_nullifier)),
    );
    commitment.assert_eq(
        &(ordinary.var().clone() * &use_real.select(&real_commitment, &padding_commitment)),
    );
    Output {
        nullifier,
        commitment,
        day_start,
        proof_context,
        flagged,
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use commonware_cryptography::zk::circuit::build_with_values;
    struct ContextValues {
        timestamp: u64,
        eligible: bool,
        address: [Scalar; 4],
        asset: Scalar,
        outbound: u128,
        limit: u128,
        anchor: Scalar,
        nk: Scalar,
        padding_seed: Scalar,
    }
    fn fixture(params: &Parameters, continuation: bool, padding: bool) -> (Witness, ContextValues) {
        let address = std::array::from_fn(|i| Scalar::from(i as u64 + 1));
        let asset = Scalar::from(12);
        let nk = Scalar::from(19);
        let seed = Scalar::from(23);
        let day_start = Scalar::from(42 * 86400);
        let subject = params.native(SUBJECT, &[address.to_vec(), vec![asset.clone()]].concat());
        let prior = if continuation { 5 } else { 0 };
        let prior_blinding = Scalar::from(31);
        let next_blinding = Scalar::from(37);
        let prior_commitment = params.native(
            STATE,
            &[
                subject.clone(),
                day_start.clone(),
                amount(prior),
                prior_blinding.clone(),
            ],
        );
        let siblings = std::array::from_fn(|_| std::array::from_fn(|_| Scalar::zero()));
        let anchor = tree::native_root(params, Tree::State, prior_commitment.clone(), 0, &siblings);
        let real_nf = if continuation {
            params.native(
                NOTE_NULLIFIER,
                &[nk.clone(), prior_commitment.clone(), Scalar::zero()],
            )
        } else {
            params.native(
                ORIGIN_NULLIFIER,
                &[nk.clone(), subject.clone(), day_start.clone()],
            )
        };
        let (nullifier, commitment) = if padding {
            let inputs = [nk.clone(), seed.clone(), day_start.clone()];
            (
                params.native(PADDING_NULLIFIER, &inputs),
                params.native(PADDING_COMMITMENT, &inputs),
            )
        } else {
            (
                real_nf,
                params.native(
                    STATE,
                    &[
                        subject.clone(),
                        day_start.clone(),
                        amount(prior + 10),
                        next_blinding.clone(),
                    ],
                ),
            )
        };
        (
            Witness {
                nullifier,
                commitment,
                day_start,
                proof_context: 1,
                use_real: !padding,
                starts_new_day: !continuation,
                timestamp_day_index: 42,
                timestamp_second: 21,
                subject,
                prior_volume: prior,
                prior_blinding,
                prior_commitment,
                prior_path: Path {
                    position: Scalar::zero(),
                    siblings,
                },
                successor_volume: prior + 10,
                successor_blinding: next_blinding,
            },
            ContextValues {
                timestamp: 42 * 86400 + 21,
                eligible: true,
                address,
                asset,
                outbound: 10,
                limit: 20,
                anchor,
                nk,
                padding_seed: seed,
            },
        )
    }
    fn build_case<'ctx>(
        ctx: Context<'ctx, Scalar>,
        p: &Parameters,
        w: &Witness,
        c: &ContextValues,
        flag: bool,
    ) -> Vec<Var<'ctx, Scalar>> {
        let var = |x: &Scalar| Var::witness(ctx, |_| x.clone());
        let shared = Shared {
            timestamp: var(&Scalar::from(c.timestamp)),
            eligible_ordinary: BoolVar::witness(ctx, |_| c.eligible),
            sender_address: std::array::from_fn(|i| var(&c.address[i])),
            asset: var(&c.asset),
            outbound: var(&amount(c.outbound)),
            daily_limit: var(&amount(c.limit)),
            anchor: var(&c.anchor),
            nk: var(&c.nk),
            padding_seed: var(&c.padding_seed),
        };
        let out = constrain(ctx, p, w, &shared);
        out.flagged.assert_eq(&BoolVar::constant(flag));
        let statement = p.circuit(
            255,
            &[
                out.nullifier,
                out.commitment,
                out.day_start,
                shared.anchor,
                shared.timestamp,
            ],
        );
        vec![statement, shared.nk]
    }
    fn accepts(p: &Parameters, w: &Witness, c: &ContextValues, flag: bool) -> bool {
        let (circuit, _) = build_with_values(|ctx| build_case(ctx, p, w, c, flag));
        circuit.is_satisfied()
    }
    #[test]
    fn real_pari_proof_covers_full_depth_accumulator_relation() {
        use commonware_cryptography::{
            transcript::{Transcript, Version},
            zk::{circuit::build, pari},
        };
        use commonware_parallel::Sequential;
        let params = Parameters::load().unwrap();
        let (w, c) = fixture(&params, true, false);
        let (circuit, selected) = build(|ctx| build_case(ctx, &params, &w, &c, false));
        let layout = pari::InputLayout::new(vec![selected[0]], vec![vec![selected[1]]]).unwrap();
        let relation = pari::Relation::compile(&circuit, &layout).unwrap();
        let mut rng = rand10::rng();
        let (pk, vk) = pari::setup(&relation, &mut rng, &Sequential).unwrap();
        let transcript = || Transcript::new(b"shieldd-native-volume-component-test", Version::V1);
        let (values, _) = build_with_values(|ctx| build_case(ctx, &params, &w, &c, false));
        let witness = relation
            .witness(&values, &layout, vec![pari::Opening::random(&mut rng)])
            .unwrap();
        let claim = witness.claim(pk.commitment_keys(), &Sequential).unwrap();
        let proof = pari::prove(
            &mut rng,
            &mut transcript(),
            &pk,
            &relation,
            &claim,
            &witness,
            &Sequential,
        )
        .unwrap();
        assert!(pari::verify(&mut transcript(), &vk, &claim, &proof));
        let mut altered = claim.clone();
        altered.public_inputs[0] += &Scalar::one();
        assert!(!pari::verify(&mut transcript(), &vk, &altered, &proof));
        let mut wrong = w.clone();
        wrong.successor_volume += 1;
        let (invalid, _) = build_with_values(|ctx| build_case(ctx, &params, &wrong, &c, false));
        let witness = relation
            .witness(&invalid, &layout, vec![pari::Opening::random(&mut rng)])
            .unwrap();
        let claim = witness.claim(pk.commitment_keys(), &Sequential).unwrap();
        assert!(matches!(
            pari::prove(
                &mut rng,
                &mut transcript(),
                &pk,
                &relation,
                &claim,
                &witness,
                &Sequential
            ),
            Err(pari::Error::Unsatisfied)
        ));
    }
    #[test]
    fn origin_continuation_disclosure_and_fee_constraints_are_preserved() {
        let p = Parameters::load().unwrap();
        for continuation in [false, true] {
            let (w, c) = fixture(&p, continuation, false);
            assert!(accepts(&p, &w, &c, false));
            let mut bad = w.clone();
            bad.nullifier += &Scalar::one();
            assert!(!accepts(&p, &bad, &c, false));
            let mut bad = w.clone();
            bad.successor_volume += 1;
            assert!(!accepts(&p, &bad, &c, false));
            let mut bad = w.clone();
            bad.proof_context = 3;
            assert!(!accepts(&p, &bad, &c, false));
        }
        let (w, mut c) = fixture(&p, true, true);
        c.limit = 1;
        assert!(accepts(&p, &w, &c, true));
        c.eligible = false;
        assert!(accepts(&p, &w, &c, false));
        assert!(!accepts(&p, &w, &c, true));
        let mut fee = w.clone();
        fee.proof_context = 2;
        fee.day_start = Scalar::zero();
        fee.nullifier = Scalar::zero();
        fee.commitment = Scalar::zero();
        assert!(accepts(&p, &fee, &c, false));
    }
    #[test]
    fn limit_overflow_timestamp_and_predecessor_mutations_are_rejected() {
        let p = Parameters::load().unwrap();
        let (w, mut c) = fixture(&p, true, false);
        c.limit = 15;
        assert!(accepts(&p, &w, &c, false));
        c.limit = 14;
        assert!(!accepts(&p, &w, &c, false));
        c.limit = 20;
        let mut bad = w.clone();
        bad.prior_path.siblings[0][0] += &Scalar::one();
        assert!(!accepts(&p, &bad, &c, false));
        let mut bad = w.clone();
        bad.prior_volume = u128::MAX;
        assert!(!accepts(&p, &bad, &c, false));
        let mut bad = w.clone();
        bad.timestamp_second = 86400;
        c.timestamp = 42 * 86400 + 86400;
        assert!(!accepts(&p, &bad, &c, false));
    }
}
