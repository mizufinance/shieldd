from pathlib import Path
import difflib
root=Path('/Users/antoinecyr/Documents/Source/shieldd');out=Path('/tmp/shieldd-experiments/arithmetic/variants')
p=root/'crates/crypto/circuits/src/tree.rs';s=(out/p.relative_to(root)).read_text() # selector variant
s=s.replace('zk::circuit::{Context, Var}', 'zk::circuit::{BoolVar, Context, Var}')
s=s.replace('use commonware_cryptography::{', 'use commonware_math::algebra::{Additive, Ring};\nuse commonware_cryptography::{')
old='''    let bits = decompose(ctx, &path.position, 2 * D);
    for (level, siblings) in path.siblings.iter().enumerate() {'''
new='''    let bits = decompose(ctx, &path.position, 2 * D);
    root_with_position_bits(ctx, params, kind, node, path, &bits)
}

/// Use the same constrained position bits for membership and age checks.
pub fn root_with_position_bits<'ctx, const D: usize>(
    _ctx: Context<'ctx, Scalar>,
    params: &Parameters,
    kind: Tree,
    mut node: Var<'ctx, Scalar>,
    path: &Path<Var<'ctx, Scalar>, D>,
    bits: &[BoolVar<'ctx, Scalar>],
) -> Var<'ctx, Scalar> {
    assert_eq!(bits.len(), 2 * D);
    let mut sum = Var::zero();
    let mut weight = Scalar::one();
    for bit in bits {
        sum += &(bit.var().clone() * &Var::native(weight.clone()));
        weight = weight.clone() + &weight;
    }
    sum.assert_eq(&path.position);
    for (level, siblings) in path.siblings.iter().enumerate() {'''
assert old in s;s=s.replace(old,new)
rel=p.relative_to(root);(out/'tree_position.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(keepends=True),s.splitlines(keepends=True),fromfile='a/'+str(rel),tofile='b/'+str(rel))))
for module in ['note','seizure']:
 p=root/f'crates/crypto/circuits/src/{module}.rs';s=(out/p.relative_to(root)).read_text()
 if module=='note':
  s=s.replace('''    let anchor = tree::root(ctx, params, Tree::State, commitment, &path);''','''    let positions = decompose(ctx, &path.position, 48);
    let anchor = tree::root_with_position_bits(ctx, params, Tree::State, commitment, &path, &positions);''')
  s=s.replace('''    let positions = decompose(ctx, &path.position, 48);
    let floor =''','''    let floor =''')
 else:
  s=s.replace('''    tree::root(ctx, p, Tree::State, s.commitment.clone(), &path).assert_eq(&s.anchor);
    let position = decompose(ctx, &path.position, 48);''','''    let position = decompose(ctx, &path.position, 48);
    tree::root_with_position_bits(ctx, p, Tree::State, s.commitment.clone(), &path, &position)
        .assert_eq(&s.anchor);''')
 rel=p.relative_to(root);(out/f'{module}_position_bounded.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(keepends=True),s.splitlines(keepends=True),fromfile='a/'+str(rel),tofile='b/'+str(rel))))
