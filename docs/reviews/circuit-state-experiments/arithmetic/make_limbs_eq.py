from pathlib import Path
import difflib
root=Path('/Users/antoinecyr/Documents/Source/shieldd');out=Path('/tmp/shieldd-experiments/arithmetic/variants')
p=root/'crates/crypto/circuits/src/range.rs';s=(out/p.relative_to(root)).read_text()
old='''    let high_ge = less_or_equal_bounded(ctx, &b[128..], &a[128..]);
    let low_le = less_or_equal_bounded(ctx, &a[..128], &b[..128]);
    high_le & (!high_ge | low_le)'''
new='''    let mut high_difference = Var::zero();
    let mut weight = Scalar::one();
    for (a_bit, b_bit) in a[128..].iter().zip(&b[128..]) {
        high_difference += &((a_bit.var().clone() - b_bit.var()) * &Var::native(weight.clone()));
        weight = weight.clone() + &weight;
    }
    let high_equal = is_zero(ctx, &high_difference);
    let low_le = less_or_equal_bounded(ctx, &a[..128], &b[..128]);
    high_le & (!high_equal | low_le)'''
assert old in s;s=s.replace(old,new);rel=p.relative_to(root)
(out/'range_limbs_eq.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(keepends=True),s.splitlines(keepends=True),fromfile='a/'+str(rel),tofile='b/'+str(rel))))
