import json

# Lower-bound hash payloads only; no protocol envelope, leaf, path positions,
# signatures, network framing, SQLite row/key/page or proof verification cost.
depth = 16
hash_bytes = 32
quad_siblings = 3
proof_pair_bytes = 2 * depth * quad_siblings * hash_bytes
one_update_path_bytes = depth * hash_bytes
rows = []
for updates in (1000, 100000):
    for recipients in (1, 10, 100):
        rows.append({
            'global_compliance_updates': updates,
            'needed_recipient_queries': recipients,
            'full_projection_path_hash_write_bytes_per_tree': updates * one_update_path_bytes,
            'two_tree_batch_path_hash_bytes': recipients * proof_pair_bytes,
            'raw_path_hash_payload_ratio_full_writes_to_batch': round(updates * one_update_path_bytes / (recipients * proof_pair_bytes), 2),
        })
print(json.dumps({'assumptions':{'quad_depth':depth,'hash_bytes':hash_bytes,'hashes_per_quad_level':quad_siblings,'two_proof_path_hash_bytes':proof_pair_bytes,'single_tree_update_path_hash_bytes':one_update_path_bytes},'scenarios':rows},indent=2))
