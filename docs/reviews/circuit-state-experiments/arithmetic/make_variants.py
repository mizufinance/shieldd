from pathlib import Path
import difflib
root=Path('/Users/antoinecyr/Documents/Source/shieldd')
out=Path('/tmp/shieldd-experiments/arithmetic/variants')
changes={}
p=root/'crates/crypto/circuits/src/routing.rs'; s=p.read_text(); old='''    let mut invalid = Var::zero();
    for i in 1..=32 {
        for j in 0..i {
            invalid += &(regulated_matches[i].var().clone() * unregulated_matches[j].var());
        }
    }
    invalid.assert_eq(&Var::zero());'''; new='''    for i in 0..32 {
        (regulated_bits[i].clone() * &(Var::one() - &unregulated_bits[i]))
            .assert_eq(&Var::zero());
    }'''; assert old in s; s=s.replace(old,new); s=s.replace('let (regulated_bits, regulated_matches) = precision(ctx, &regulated_value);','let (regulated_bits, _) = precision(ctx, &regulated_value);').replace('let (unregulated_bits, unregulated_matches) = precision(ctx, &unregulated_value);','let (unregulated_bits, _) = precision(ctx, &unregulated_value);'); changes[p]=s
p=root/'crates/crypto/circuits/src/tree.rs'; s=p.read_text(); old='''        let first = !low.clone() & !high.clone();
        let second = low.clone() & !high.clone();
        let third = !low.clone() & high.clone();
        let fourth = low & high;
        let inputs = [
            Var::native(Scalar::from(level as u64 + 1)),
            first.select(&node, &siblings[0]),
            first.select(&siblings[0], &second.select(&node, &siblings[1])),
            fourth.select(&siblings[2], &third.select(&node, &siblings[1])),
            fourth.select(&node, &siblings[2]),
        ];'''; new='''        let left_swap = low.var().clone() * &(siblings[0].clone() - &node);
        let right_swap = low.var().clone() * &(siblings[2].clone() - &node);
        let left_first = node.clone() + &left_swap;
        let left_second = siblings[0].clone() - &left_swap;
        let right_third = node.clone() + &right_swap;
        let right_fourth = siblings[2].clone() - &right_swap;
        let inputs = [
            Var::native(Scalar::from(level as u64 + 1)),
            high.select(&siblings[0], &left_first),
            high.select(&siblings[1], &left_second),
            high.select(&right_third, &siblings[1]),
            high.select(&right_fourth, &siblings[2]),
        ];'''; assert old in s; changes[p]=s.replace(old,new)
p=root/'crates/crypto/circuits/src/authorization.rs'; s=p.read_text(); s=s.replace('use commonware_math::algebra::{Additive, Field};','use commonware_math::algebra::{Additive, Field, Ring};'); old='''    bits.iter()
        .fold(BoolVar::constant(false), |any, bit| any | bit.clone())
        .assert_eq(&BoolVar::constant(true));'''; new='''    let ivk = bits.iter().fold((Var::zero(), Scalar::one()), |(sum, weight), bit| {
        let next = sum + &(bit.var().clone() * &Var::native(weight.clone()));
        (next, weight.clone() + &weight)
    }).0;
    let _ = ivk.inv();'''; assert old in s; changes[p]=s.replace(old,new)
for p,s in changes.items():
    rel=p.relative_to(root); target=out/rel;target.parent.mkdir(parents=True,exist_ok=True);target.write_text(s)
    original=p.read_text().splitlines(keepends=True); modified=s.splitlines(keepends=True)
    patch=''.join(difflib.unified_diff(original,modified,fromfile='a/'+str(rel),tofile='b/'+str(rel)))
    (out/(p.stem+'.patch')).write_text(patch)
print('\n'.join(str(out/(p.stem+'.patch')) for p in changes))
p=root/'crates/crypto/circuits/src/range.rs'; s=p.read_text(); marker='\n#[cfg(test)]\nmod tests {'
assert marker in s
addition='''
/// Compare two already constrained equal-width integer bit vectors.
pub fn less_or_equal_bounded<'ctx>(
    ctx: Context<'ctx, Scalar>,
    a: &[BoolVar<'ctx, Scalar>],
    b: &[BoolVar<'ctx, Scalar>],
) -> BoolVar<'ctx, Scalar> {
    assert_eq!(a.len(), b.len());
    assert!((1..=253).contains(&a.len()));
    let compose = |bits: &[BoolVar<'ctx, Scalar>]| {
        let mut weight = Scalar::one();
        bits.iter().fold(Var::zero(), |sum, bit| {
            let term = bit.var().clone() * &Var::native(weight.clone());
            weight = weight.clone() + &weight;
            sum + &term
        })
    };
    let a_value = compose(a);
    let b_value = compose(b);
    let two_to_width = (0..a.len()).fold(Scalar::one(), |x, _| x.clone() + &x);
    let borrow = BoolVar::witness(ctx, |values| {
        a_value.value(values).encode() > b_value.value(values).encode()
    });
    let difference = Var::witness(ctx, |values| {
        b_value.value(values) - &a_value.value(values)
            + &(borrow.var().value(values) * &two_to_width)
    });
    decompose(ctx, &difference, a.len());
    (b_value - &a_value).assert_eq(
        &(difference - &(borrow.var().clone() * &Var::native(two_to_width)))
    );
    !borrow
}
'''
s=s.replace(marker,addition+marker)
rel=p.relative_to(root); target=out/rel;target.parent.mkdir(parents=True,exist_ok=True);target.write_text(s)
(out/'range.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(keepends=True),s.splitlines(keepends=True),fromfile='a/'+str(rel),tofile='b/'+str(rel))))
p=root/'crates/crypto/circuits/src/disclosure.rs';s=p.read_text();s=s.replace('range::{decompose, is_zero, less_or_equal},','range::{decompose, is_zero, less_or_equal_bounded},')
s=s.replace('less_or_equal(&', 'less_or_equal_bounded(ctx, &')
rel=p.relative_to(root);target=out/rel;target.parent.mkdir(parents=True,exist_ok=True);target.write_text(s)
(out/'disclosure.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(keepends=True),s.splitlines(keepends=True),fromfile='a/'+str(rel),tofile='b/'+str(rel))))
p=root/'crates/crypto/circuits/src/range.rs';s=(out/p.relative_to(root)).read_text();needle='''    #[test]
    fn limit_boundary_is_inclusive() {'''; test='''    #[test]
    fn bounded_difference_matches_integer_order() {
        for width in 1..=4 {
            for a in 0..(1u64 << width) {
                for b in 0..(1u64 << width) {
                    let (c, _) = build_with_values(|ctx| {
                        let av = Var::witness(ctx, |_| Scalar::from(a));
                        let bv = Var::witness(ctx, |_| Scalar::from(b));
                        less_or_equal_bounded(
                            ctx,
                            &decompose(ctx, &av, width),
                            &decompose(ctx, &bv, width),
                        ).assert_eq(&BoolVar::constant(a <= b));
                        Vec::new()
                    });
                    assert!(c.is_satisfied(), "width={width} a={a} b={b}");
                }
            }
        }
        let max = Scalar::from_limbs([u64::MAX, u64::MAX, 0, 0]);
        for (a, b, expected) in [
            (Scalar::zero(), max.clone(), true),
            (max.clone(), Scalar::zero(), false),
            (max.clone(), max.clone(), true),
            (max.clone() - &Scalar::one(), max.clone(), true),
            (max.clone(), max.clone() - &Scalar::one(), false),
        ] {
            let (c, _) = build_with_values(|ctx| {
                let av = Var::witness(ctx, |_| a.clone());
                let bv = Var::witness(ctx, |_| b.clone());
                less_or_equal_bounded(ctx, &decompose(ctx, &av, 128), &decompose(ctx, &bv, 128))
                    .assert_eq(&BoolVar::constant(expected));
                Vec::new()
            });
            assert!(c.is_satisfied());
        }
        let (invalid, _) = build_with_values(|ctx| {
            let av = Var::witness(ctx, |_| max.clone() + &Scalar::one());
            let bv = Var::witness(ctx, |_| Scalar::zero());
            less_or_equal_bounded(ctx, &decompose(ctx, &av, 128), &decompose(ctx, &bv, 128));
            Vec::new()
        });
        assert!(!invalid.is_satisfied());
    }
''';assert needle in s;s=s.replace(needle,test+needle);rel=p.relative_to(root);(out/rel).write_text(s);(out/'range.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(keepends=True),s.splitlines(keepends=True),fromfile='a/'+str(rel),tofile='b/'+str(rel))))
for width in [8,9]:
 p=root/'crates/crypto/circuits/src/history.rs';s=p.read_text().replace('pub const CHUNK_SIZE: usize = 10;',f'pub const CHUNK_SIZE: usize = {width};');rel=p.relative_to(root);(out/f'history_width{width}.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(keepends=True),s.splitlines(keepends=True),fromfile='a/'+str(rel),tofile='b/'+str(rel))))
p=root/'crates/crypto/circuits/src/disclosure.rs';s=p.read_text().replace('pub const CAPACITY: usize = 32;','pub const CAPACITY: usize = 1;');rel=p.relative_to(root);(out/'disclosure_capacity1.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(keepends=True),s.splitlines(keepends=True),fromfile='a/'+str(rel),tofile='b/'+str(rel))))
p=root/'crates/crypto/circuits/src/balance.rs';s=p.read_text();s=s.replace('zk::circuit::{Context, Var},','zk::circuit::{BoolVar, Context, Var},');s=s.replace('use anyhow::{Result, ensure};','use anyhow::{Result, ensure};\nuse commonware_codec::Encode;');old='''    let sum = |values: &[Var<'ctx, Scalar>; 2]| {
        for v in values {
            decompose(ctx, v, 128);
        }
        decompose(ctx, &(values[0].clone() + &values[1]), 129)
    };
    let input = generator.multiply_bits(&sum(inputs));
    let output = generator.multiply_bits(&sum(outputs));
    let negated = Point {
        x: -output.x,
        y: output.y,
    };
    let d = Var::native(coefficient_d());
    let value = input.add(&negated, &d);''';new='''    for value in inputs.iter().chain(outputs.iter()) {
        decompose(ctx, value, 128);
    }
    let input = inputs[0].clone() + &inputs[1];
    let output = outputs[0].clone() + &outputs[1];
    let negative = BoolVar::witness(ctx, |values| {
        input.value(values).encode() < output.value(values).encode()
    });
    let magnitude = Var::witness(ctx, |values| {
        if input.value(values).encode() < output.value(values).encode() {
            output.value(values) - &input.value(values)
        } else {
            input.value(values) - &output.value(values)
        }
    });
    let magnitude_bits = decompose(ctx, &magnitude, 129);
    (input - &output).assert_eq(&negative.select(&(-magnitude.clone()), &magnitude));
    let mut value = generator.multiply_bits(&magnitude_bits);
    value.x = negative.select(&(-value.x.clone()), &value.x);
    let d = Var::native(coefficient_d());''';assert old in s;s=s.replace(old,new);rel=p.relative_to(root);(out/rel).write_text(s);(out/'balance.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(keepends=True),s.splitlines(keepends=True),fromfile='a/'+str(rel),tofile='b/'+str(rel))))
p=root/'crates/crypto/circuits/src/history.rs';s=p.read_text();s=s.replace('''    w: &GenerationWitness,
) -> Generation<'a> {''','''    w: &GenerationWitness,
    shared_target_bits: Option<&[BoolVar<'a, Scalar>]>,
) -> Generation<'a> {''');s=s.replace('''    let target_bits = canonical_bits(ctx, &nullifier);''','''    let target_bits = shared_target_bits
        .map(|bits| bits.to_vec())
        .unwrap_or_else(|| canonical_bits(ctx, &nullifier));''');s=s.replace('''    let g = generation(ctx, p, w);''','''    let g = generation(ctx, p, w, None);''',1);s=s.replace('''    let mut head = start_head.clone();''','''    let target_bits = canonical_bits(ctx, &nullifier);
    let mut head = start_head.clone();''');s=s.replace('''        let g = generation(ctx, p, witness);''','''        let g = generation(ctx, p, witness, Some(&target_bits));''');rel=p.relative_to(root);(out/rel).write_text(s);(out/'history_shared_target.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(keepends=True),s.splitlines(keepends=True),fromfile='a/'+str(rel),tofile='b/'+str(rel))))
p=root/'crates/crypto/circuits/src/disclosure.rs';s=p.read_text();s=s.replace('''    p: &Predicate<Var<'a, Scalar>>,
) {
    let value = decompose(ctx, value, 128);''','''    p: &Predicate<Var<'a, Scalar>>,
    value_bits: &[BoolVar<'a, Scalar>],
) {
    let value = value_bits;''');s=s.replace('''        decompose(ctx, &note.amount, 128);''','''        let amount_bits = decompose(ctx, &note.amount, 128);''');s=s.replace('''        predicate(ctx, &note.amount, &slot.predicate);''','''        predicate(ctx, &note.amount, &slot.predicate, &amount_bits);''');s=s.replace('''    decompose(ctx, &sum, 128);''','''    let sum_bits = decompose(ctx, &sum, 128);''');s=s.replace('''    predicate(ctx, &sum, &s.total_predicate);''','''    predicate(ctx, &sum, &s.total_predicate, &sum_bits);''');rel=p.relative_to(root);(out/rel).write_text(s);(out/'disclosure_reuse.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(keepends=True),s.splitlines(keepends=True),fromfile='a/'+str(rel),tofile='b/'+str(rel))))
p=root/'crates/crypto/circuits/src/disclosure.rs';s=p.read_text();old='''impl<F: Clone> Statement<F> {
    pub fn fields(&self) -> Vec<F> {
        let mut fields = self.context.to_vec();
        fields.push(self.context_hash.clone());
        for slot in &self.slots {
            fields.extend(slot.fields());
        }
        fields.extend([
            self.total_enabled.clone(),
            self.total_reveal.clone(),
            self.total_amount.clone(),
            self.total_asset.clone(),
        ]);
        fields.extend(self.total_predicate.fields());
        fields
    }
}''';new='''fn packed_fields<F: Clone>(
    statement: &Statement<F>,
    pack: impl Fn(&[(F, u64)]) -> F,
) -> Vec<F> {
    let mut fields = statement.context.to_vec();
    fields.push(statement.context_hash.clone());
    for slot in &statement.slots {
        fields.push(pack(&[
            (slot.active.clone(), 1),
            (slot.reveal_amount.clone(), 2),
            (slot.reveal_asset.clone(), 4),
            (slot.reveal_recipient.clone(), 8),
            (slot.predicate.result.clone(), 16),
            (slot.predicate.op.clone(), 32),
        ]));
        fields.extend([
            slot.commitment.clone(), slot.amount.clone(), slot.asset.clone(),
        ]);
        fields.extend(crate::transfer::address_fields(&slot.address));
        fields.extend([slot.predicate.lower.clone(), slot.predicate.upper.clone()]);
    }
    fields.push(pack(&[
        (statement.total_enabled.clone(), 1),
        (statement.total_reveal.clone(), 2),
        (statement.total_predicate.result.clone(), 4),
        (statement.total_predicate.op.clone(), 8),
    ]));
    fields.extend([
        statement.total_amount.clone(), statement.total_asset.clone(),
        statement.total_predicate.lower.clone(), statement.total_predicate.upper.clone(),
    ]);
    fields
}
impl<'a> Statement<Var<'a, Scalar>> {
    pub fn fields(&self) -> Vec<Var<'a, Scalar>> {
        packed_fields(self, |terms| {
            terms.iter().fold(Var::zero(), |sum, (value, weight)| {
                sum + &(value.clone() * &Var::native(Scalar::from(*weight)))
            })
        })
    }
}''';assert old in s;s=s.replace(old,new);s=s.replace('''impl Statement<Scalar> {
    pub fn digest''','''impl Statement<Scalar> {
    pub fn fields(&self) -> Vec<Scalar> {
        packed_fields(self, |terms| {
            terms.iter().fold(Scalar::zero(), |sum, (value, weight)| {
                sum + &(value.clone() * &Scalar::from(*weight))
            })
        })
    }
    pub fn digest''');s=s.replace('use commonware_math::algebra::Additive;','use commonware_math::algebra::{Additive, Ring};') if 'use commonware_math::algebra::Additive;' in s else s
rel=p.relative_to(root);(out/rel).write_text(s);(out/'disclosure_packing.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(keepends=True),s.splitlines(keepends=True),fromfile='a/'+str(rel),tofile='b/'+str(rel))))
for module in ['seizure','note','volume']:
 p=root/f'crates/crypto/circuits/src/{module}.rs';s=p.read_text();assert 'less_or_equal(' in s
 s=s.replace('less_or_equal,','less_or_equal_bounded,').replace('less_or_equal}', 'less_or_equal_bounded}')
 if module=='seizure':s=s.replace('less_or_equal(&floor, &position)','less_or_equal_bounded(ctx, &floor, &position)')
 if module=='note':s=s.replace('less_or_equal(&floor, &positions)','less_or_equal_bounded(ctx, &floor, &positions)')
 if module=='volume':s=s.replace('range::{decompose, less_or_equal_bounded}', 'range::{decompose, less_or_equal, less_or_equal_bounded}').replace('less_or_equal(&candidate_bits, &limit_bits)','less_or_equal_bounded(ctx, &candidate_bits, &limit_bits)')
 rel=p.relative_to(root);(out/rel).write_text(s);(out/f'{module}_bounded.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(keepends=True),s.splitlines(keepends=True),fromfile='a/'+str(rel),tofile='b/'+str(rel))))
p=root/'crates/crypto/circuits/src/history.rs';s=p.read_text().replace('range::{decompose, is_zero, less_or_equal}', 'range::{decompose, is_zero, less_or_equal, less_or_equal_bounded}').replace('less_or_equal(&start_bits, &end_bits)','less_or_equal_bounded(ctx, &start_bits, &end_bits)');rel=p.relative_to(root);(out/'history_bounded48.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(keepends=True),s.splitlines(keepends=True),fromfile='a/'+str(rel),tofile='b/'+str(rel))))
