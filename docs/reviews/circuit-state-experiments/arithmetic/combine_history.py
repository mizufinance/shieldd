from pathlib import Path
import difflib
root=Path('/Users/antoinecyr/Documents/Source/shieldd');out=Path('/tmp/shieldd-experiments/arithmetic/variants')
p=root/'crates/crypto/circuits/src/history.rs';s=(out/p.relative_to(root)).read_text()
s=s.replace('range::{decompose, is_zero, less_or_equal}', 'range::{decompose, is_zero, less_or_equal_bounded, less_or_equal_limbs}')
s=s.replace('less_or_equal(&target_bits, &predecessor_bits)', 'less_or_equal_limbs(ctx, &target_bits, &predecessor_bits)')
s=s.replace('less_or_equal(&successor_bits, &target_bits)', 'less_or_equal_limbs(ctx, &successor_bits, &target_bits)')
s=s.replace('less_or_equal(&start_bits, &end_bits)', 'less_or_equal_bounded(ctx, &start_bits, &end_bits)')
rel=p.relative_to(root);(out/'history_combined.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(keepends=True),s.splitlines(keepends=True),fromfile='a/'+str(rel),tofile='b/'+str(rel))))
for width in (8,9,11,12):
 sw=s.replace('pub const CHUNK_SIZE: usize = 10;',f'pub const CHUNK_SIZE: usize = {width};')
 (out/f'history_combined_width{width}.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(keepends=True),sw.splitlines(keepends=True),fromfile='a/'+str(rel),tofile='b/'+str(rel))))
