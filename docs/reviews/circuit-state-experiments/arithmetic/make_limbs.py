from pathlib import Path
import difflib
root=Path('/Users/antoinecyr/Documents/Source/shieldd');out=Path('/tmp/shieldd-experiments/arithmetic/variants')
p=root/'crates/crypto/circuits/src/range.rs';s=(out/p.relative_to(root)).read_text()
needle='''#[cfg(test)]
mod tests {'''
addition='''/// Compare canonical 255-bit field encodings using two bounded limbs.
pub fn less_or_equal_limbs<'ctx>(
    ctx: Context<'ctx, Scalar>,
    a: &[BoolVar<'ctx, Scalar>],
    b: &[BoolVar<'ctx, Scalar>],
) -> BoolVar<'ctx, Scalar> {
    assert_eq!(a.len(), 255);
    assert_eq!(b.len(), 255);
    let high_le = less_or_equal_bounded(ctx, &a[128..], &b[128..]);
    let high_ge = less_or_equal_bounded(ctx, &b[128..], &a[128..]);
    let low_le = less_or_equal_bounded(ctx, &a[..128], &b[..128]);
    high_le & (!high_ge | low_le)
}

'''
assert needle in s;s=s.replace(needle,addition+needle)
needle='''    #[test]
    fn bounded_difference_matches_integer_order() {'''
test='''    #[test]
    fn limb_comparison_preserves_canonical_field_order() {
        let near_max = -Scalar::one();
        let boundary = Scalar::from_limbs([u64::MAX, u64::MAX, 0, 0]);
        let mut values = vec![
            Scalar::zero(), Scalar::one(), Scalar::from(1u64 << 63),
            boundary.clone(), boundary.clone() + &Scalar::one(),
            boundary.clone() + &Scalar::from(2),
            near_max.clone() - &Scalar::one(), near_max,
        ];
        for i in 0..16u64 {
            values.push(Scalar::from_limbs([
                i.wrapping_mul(0x9e3779b97f4a7c15),
                i.wrapping_mul(0xbf58476d1ce4e5b9),
                i.wrapping_mul(0x94d049bb133111eb),
                i.wrapping_mul(0x123456789abcdef),
            ]));
        }
        for a in &values {
            for b in &values {
                let expected = a.encode() <= b.encode();
                let (c, _) = build_with_values(|ctx| {
                    let av = Var::witness(ctx, |_| a.clone());
                    let bv = Var::witness(ctx, |_| b.clone());
                    less_or_equal_limbs(
                        ctx,
                        &crate::encoding::canonical_bits(ctx, &av),
                        &crate::encoding::canonical_bits(ctx, &bv),
                    ).assert_eq(&BoolVar::constant(expected));
                    Vec::new()
                });
                assert!(c.is_satisfied());
            }
        }
    }
'''
assert needle in s;s=s.replace(needle,test+needle)
rel=p.relative_to(root);(out/rel).write_text(s);(out/'range_with_limbs.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(keepends=True),s.splitlines(keepends=True),fromfile='a/'+str(rel),tofile='b/'+str(rel))))
for mod in ['history','registry']:
 p=root/f'crates/crypto/circuits/src/{mod}.rs';s=p.read_text()
 if mod=='history':
  s=s.replace('range::{decompose, is_zero, less_or_equal}', 'range::{decompose, is_zero, less_or_equal, less_or_equal_limbs}')
  s=s.replace('less_or_equal(&target_bits, &predecessor_bits)', 'less_or_equal_limbs(ctx, &target_bits, &predecessor_bits)')
  s=s.replace('less_or_equal(&successor_bits, &target_bits)', 'less_or_equal_limbs(ctx, &successor_bits, &target_bits)')
 else:
  s=s.replace('range::less_or_equal', 'range::less_or_equal_limbs')
  s=s.replace('less_or_equal(&id, &low)', 'less_or_equal_limbs(ctx, &id, &low)')
  s=s.replace('less_or_equal(&high, &id)', 'less_or_equal_limbs(ctx, &high, &id)')
 rel=p.relative_to(root);(out/f'{mod}_limbs.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(keepends=True),s.splitlines(keepends=True),fromfile='a/'+str(rel),tofile='b/'+str(rel))))
