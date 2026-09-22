from pathlib import Path
import difflib
root=Path('/Users/antoinecyr/Documents/Source/shieldd')
variants=Path('/tmp/shieldd-experiments/arithmetic/variants')
p=root/'crates/crypto/circuits/src/disclosure.rs'
s=(variants/'crates/crypto/circuits/src/disclosure.rs').read_text() # packing variant emitted last
s=s.replace('range::{decompose, is_zero, less_or_equal}', 'range::{decompose, is_zero, less_or_equal_bounded}')
s=s.replace('less_or_equal(&', 'less_or_equal_bounded(ctx, &')
s=s.replace('''    p: &Predicate<Var<'a, Scalar>>,
) {
    let value = decompose(ctx, value, 128);''','''    p: &Predicate<Var<'a, Scalar>>,
    value_bits: &[BoolVar<'a, Scalar>],
) {
    let value = value_bits;''')
s=s.replace('''        decompose(ctx, &note.amount, 128);''','''        let amount_bits = decompose(ctx, &note.amount, 128);''')
s=s.replace('''        predicate(ctx, &note.amount, &slot.predicate);''','''        predicate_with_bits(ctx, &slot.predicate, &amount_bits);''')
s=s.replace('''    decompose(ctx, &sum, 128);''','''    let sum_bits = decompose(ctx, &sum, 128);''')
s=s.replace('''    predicate(ctx, &sum, &s.total_predicate);''','''    predicate_with_bits(ctx, &s.total_predicate, &sum_bits);''')
s=s.replace("fn predicate<'a>(", "fn predicate_with_bits<'a>(", 1)
s=s.replace("    value: &Var<'a, Scalar>,\n    p: &Predicate<Var<'a, Scalar>>,\n    value_bits:", "    p: &Predicate<Var<'a, Scalar>>,\n    value_bits:", 1)
s=s.replace("pub fn constrain<'a>(", "#[cfg(test)]\nfn predicate<'a>(ctx: Context<'a, Scalar>, value: &Var<'a, Scalar>, p: &Predicate<Var<'a, Scalar>>) {\n    let bits = decompose(ctx, value, 128);\n    predicate_with_bits(ctx, p, &bits);\n}\n\npub fn constrain<'a>(", 1)
rel=p.relative_to(root)
(variants/rel).write_text(s)
(variants/'disclosure_combined.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(keepends=True),s.splitlines(keepends=True),fromfile='a/'+str(rel),tofile='b/'+str(rel))))
print('combined disclosure patch:',len(s.splitlines()),'lines')
