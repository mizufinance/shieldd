use commonware_cryptography::{
    bls12381::primitives::group::Scalar,
    zk::{circuit::{build, build_with_values, Var}, pari::{InputLayout, Relation}},
};
use commonware_math::algebra::{Additive, Ring};
use shieldd_sdk_circuits::range::decompose;

fn shape(label: &str, width: usize, consumers: usize, repeated: bool) -> anyhow::Result<()> {
    let (c, selected) = build(|ctx| {
        let value = Var::witness(ctx, |_| Scalar::zero());
        if repeated {
            for _ in 0..consumers { decompose(ctx, &value, width); }
        } else {
            let bits = decompose(ctx, &value, width);
            for _ in 0..consumers { assert_eq!(bits.len(), width); }
        }
        vec![value, Var::witness(ctx, |_| Scalar::zero())]
    });
    let layout=InputLayout::new(vec![selected[0]], vec![vec![selected[1]]])?;
    let relation=Relation::compile(&c,&layout)?;
    println!("{label} domain={}",relation.domain_size());
    Ok(())
}
fn main() -> anyhow::Result<()> {
    for (width, consumers) in [(128,2),(48,2),(48,8)] {
        shape(&format!("repeat_{width}x{consumers}"),width,consumers,true)?;
        shape(&format!("reuse_{width}x{consumers}"),width,consumers,false)?;
        let bad=Scalar::from_limbs([u64::MAX,u64::MAX,0,0])+&Scalar::one();
        if width==128 {
            let (c,_)=build_with_values(|ctx| {
                let v=Var::witness(ctx, |_| bad.clone());
                decompose(ctx,&v,width);
                Vec::new()
            });
            assert!(!c.is_satisfied());
        } else {
            let (c,_)=build_with_values(|ctx| {
                let v=Var::witness(ctx, |_| Scalar::from(1u64<<48));
                decompose(ctx,&v,width);
                Vec::new()
            });
            assert!(!c.is_satisfied());
        }
    }
    println!("out-of-range 48/128-bit values rejected");
    Ok(())
}
