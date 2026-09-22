use shieldd_sdk_circuits::{catalogue, disclosure, encryption::Address, group::{self,Point}, hash::Parameters, note::Note};
use commonware_cryptography::{bls12381::primitives::group::Scalar, zk::circuit::build_with_values};
use commonware_math::algebra::{Additive, Ring};
use shieldd_sdk_crypto::domains;
fn predicate() -> disclosure::Predicate<Scalar> { disclosure::Predicate { op:Scalar::zero(), lower:Scalar::zero(), upper:Scalar::zero(), result:Scalar::zero() } }
fn address()->Address<Scalar> { Address { diversified:group::generator(), transmission:group::generator().multiply(&Scalar::from(9)) } }
fn witness(p:&Parameters)->disclosure::Witness {
    let note=Note { amount:Scalar::from(5), blinding:Scalar::one(), recovery:Scalar::from(3) };
    let asset=Scalar::from(7);let address=address();
    let opening=disclosure::Opening { note:note.clone(), asset:asset.clone(), address:address.clone() };
    let context=[Scalar::from(17),Scalar::from(19)];
    let slot=disclosure::Slot { active:Scalar::one(), commitment:note.commitment(p,&asset,&address), reveal_amount:Scalar::zero(), reveal_asset:Scalar::zero(), reveal_recipient:Scalar::zero(), amount:Scalar::zero(),asset:Scalar::zero(),address:Address { diversified:Point { x:Scalar::zero(), y:Scalar::zero() },transmission:Point { x:Scalar::zero(), y:Scalar::zero() } },predicate:predicate() };
    disclosure::Witness { statement:disclosure::Statement { context_hash:p.native(domains::DISCLOSURE_CONTEXT,&context),context,slots:[slot],total_enabled:Scalar::zero(),total_reveal:Scalar::zero(),total_amount:Scalar::zero(),total_asset:Scalar::zero(),total_predicate:predicate() }, notes:[opening] }
}
fn satisfied(p:&Parameters,w:&disclosure::Witness)->bool { build_with_values(|ctx|disclosure::constrain(ctx,p,w,&w.statement.digest(p))).0.is_satisfied() }
fn main()->anyhow::Result<()> {
    assert_eq!(disclosure::CAPACITY,1);
    let p=Parameters::load()?;let w=witness(&p);assert!(satisfied(&p,&w));
    let mut bad=w.clone();bad.statement.slots[0].active=Scalar::zero();assert!(!satisfied(&p,&bad));
    let mut bad=w.clone();bad.notes[0].note.amount=Scalar::from(6);assert!(!satisfied(&p,&bad));
    let wrong=w.statement.digest(&p)+&Scalar::one();
    assert!(!build_with_values(|ctx|disclosure::constrain(ctx,&p,&w,&wrong)).0.is_satisfied());
    let c=catalogue::Witness::Disclosure(Box::new(w));assert!(catalogue::evaluate(&c)?.is_satisfied());
    println!("capacity-one valid and three malformed witnesses checked");Ok(())
}
