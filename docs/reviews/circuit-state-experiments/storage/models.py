import json

epochs = 3600
notes_per_epoch = 1000
old_note_count = 10000
rows = []
for length in (30, 60, 120):
    retired = epochs // length
    live_peak_nullifiers = 2 * length * notes_per_epoch
    archive_bytes = retired * (108 + 32 * length * notes_per_epoch)
    envelopes = retired // 10 + retired % 10
    rows.append({
        'generation_epochs': length,
        'retired_generations': retired,
        'live_two_tree_peak_nullifiers': live_peak_nullifiers,
        'archive_payload_bytes': archive_bytes,
        'archive_payload_gib': archive_bytes / (2**30),
        'history_envelopes_per_old_note': envelopes,
        'history_proof_bytes_per_old_note': 244 * envelopes,
        'history_proof_bytes_for_10000_old_notes': 244 * envelopes * old_note_count,
    })
print(json.dumps({'assumptions':{'epochs':epochs,'nullifiers_per_epoch':notes_per_epoch,'old_notes':old_note_count,'chunk_width':10,'pack_bytes':'108+32*N','envelope_bytes':244},'scenarios':rows},indent=2))
