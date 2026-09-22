import json, math
from pathlib import Path
OUT=Path(__file__).parent
# Counts are source-derived structural models, never compiled rows.
fixed=[]
for bits in (128,129,252,255):
 for w in (2,3,4):
  fixed.append(dict(scalar_bits=bits,window_bits=w,windows=math.ceil(bits/w),constant_table_entries_per_window=2**w,affine_additions=math.ceil(bits/w),selector_monomial_products_per_window=2**w-1-w,selector_monomial_products_upper_bound=math.ceil(bits/w)*(2**w-1-w)))
# Equal 48-bit capacity; source Poseidon rate=width-1, 8 full+57 partial.
trees=[]
for arity,depth in [(2,48),(4,24),(8,16)]:
 width=6 # level + two children is 3 inputs; Parameters selects wide for len > 2
 absorbed=arity+1 # level and children
 perms=math.ceil(absorbed/(width-1))
 sboxes=8*width+57
 trees.append(dict(arity=arity,depth=depth,width=width,absorbed_fields_per_node=absorbed,permutations_per_node=perms,permutations_per_path=depth*perms,sboxes_per_permutation=sboxes,sbox_count_per_path=depth*perms*sboxes,source_wide_rate=5,confidence='structural model only; binary/8-way hashing require protocol design'))
# Eight notes, independent paths, 24 levels; shared-prefix savings only if positions are clustered.
multi=[dict(inputs=8,independent_node_hashes=8*24,minimum_node_hashes_if_all_paths_identical=24,maximum_node_hashes_if_no_ancestry_shared=8*24,condition='identical position means repeated note; useful saving needs distinct positions with a constrained common ancestor; fixed private-index relation pays generic worst case unless new family constrains clustering')]
model=dict(kind='source-derived operation model, not compiled relation or proof measurement',fixed_windows=fixed,tree_arity=trees,reshape_path_sharing=multi,audit=dict(current_core_tiers=2,shared_core_tiers=1,removed_raw_bytes=160,address_packed_words_per_tier=3,address_affine_words_per_tier=4,coordinate_raw_byte_delta_both_tiers=64,combined_raw_byte_delta=-96,duplicate_amount_variable_base_multiplications_removed=1,duplicate_amount_fixed_base_multiplications_removed=1,address_canonical_255_bit_decompositions_removed_per_transfer=8),note_digest=dict(current_note_fields=8,current_wide_permutations=2,proposed_note_fields=5,proposed_wide_permutations=1,extra_address_hashes_per_distinct_owner=1))
(OUT/'model.json').write_text(json.dumps(model,indent=2)+'\n')
print(OUT/'model.json')
