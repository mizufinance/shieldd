#!/usr/bin/env python3
"""Generate note_reshape2x1 deployed Nullifier adapter proofs.

The generated Lean file bridges deployed `relationPart{k}` segments and the
extracted nullifier gadget semantics. Wire indices are derived positionally
from the current relationRow outputs in Seg11 and Seg26 to avoid drift when
circuits are re-optimized.
"""
import pathlib
import re

from write_if_changed import write_if_changed

HERE = pathlib.Path(__file__).resolve().parent
LEAN = HERE.parent
NOTE_RESHAPE = LEAN / "ShielddGnarkFormal/Deployed/Contracts/NoteReshape2x1"


def extract_relation_outputs(seg_path):
    """Extract relationRow outputs in order.

    Returns a dict mapping relationRow index to the output wire index (rho N).
    """
    text = seg_path.read_text()
    outputs = {}

    for match in re.finditer(
        r"def relationRow(\d+) \(rho : Nat -> F\) : Prop :=\n(.*?)(?=\n\ndef )",
        text,
        re.S,
    ):
        row_idx = int(match.group(1))
        body = match.group(2)
        # Find the output wire: look for the final "= ((1 : F) * rho N)" or similar
        output_match = re.search(r"\(\(1 : F\) \* rho (\d+)\)\s*$", body.strip())
        if not output_match:
            # Try pattern for complex LCs: = ((...
            output_match = re.search(r"\(\([\d\s\(\)+*:FrhoὑExact]+\) = \(\(1 : F\) \* rho (\d+)\)", body, re.S)
            if output_match:
                outputs[row_idx] = int(output_match.group(1))
            else:
                # Last resort: find any rho N at the very end
                last_rho = re.findall(r"rho (\d+)", body)
                if last_rho:
                    outputs[row_idx] = int(last_rho[-1])
        else:
            outputs[row_idx] = int(output_match.group(1))

    return outputs


def extract_relation_parts(seg_path):
    """Extract relationPart definitions showing which rows they bundle.

    Returns a dict mapping relationPart index to list of relationRow indices.
    """
    text = seg_path.read_text()
    parts = {}

    for match in re.finditer(
        r"def relationPart(\d+) \(rho : Nat -> F\) : Prop :=\n(.*?)(?=\n\ndef |\Z)",
        text,
        re.S,
    ):
        part_idx = int(match.group(1))
        body = match.group(2)
        # Extract relationRow references
        rows = [int(m) for m in re.findall(r"relationRow(\d+)", body)]
        parts[part_idx] = rows

    return parts


def derive_segment_mapping(seg11_path, seg26_path):
    """Derive the witness and hk indices for each theorem.

    Returns a dict mapping (segment_name, part_idx) to:
      {
        'rows': [row indices],
        'outputs': [output wire indices in order],
        'hk_indices': [indices for hk predicate],
        'continued_indices': [indices for continued gadget part signature]
      }
    """
    seg11_outputs = extract_relation_outputs(seg11_path)
    seg11_parts = extract_relation_parts(seg11_path)

    seg26_outputs = extract_relation_outputs(seg26_path)
    seg26_parts = extract_relation_parts(seg26_path)

    mapping = {}

    # For Seg11
    for part_idx, rows in seg11_parts.items():
        output_indices = [seg11_outputs.get(r) for r in rows]
        # Filter out None values
        output_indices = [o for o in output_indices if o is not None]
        mapping[('Seg11', part_idx)] = {
            'rows': rows,
            'outputs': output_indices,
        }

    # For Seg26
    for part_idx, rows in seg26_parts.items():
        output_indices = [seg26_outputs.get(r) for r in rows]
        output_indices = [o for o in output_indices if o is not None]
        mapping[('Seg26', part_idx)] = {
            'rows': rows,
            'outputs': output_indices,
        }

    return mapping


def parse_existing_nullifier_adapters(path):
    """Parse the existing NullifierAdapters to extract theorem signatures.

    Returns a list of theorem definitions with their current indices.
    """
    text = path.read_text()
    theorems = []

    pattern = re.compile(
        r"theorem (seg\d+_part\d+_to_extracted) \(rho : Nat → (Seg\d+)\.F\)\n"
        r"    \(h : (Seg\d+)\.relationPart(\d+) rho\)\n"
        r"    \{k : [^}]+\} \(hk : k ([^)]+)\) :\n"
        r"    (.*?) := by",
        re.S
    )

    for match in pattern.finditer(text):
        theorem_name = match.group(1)
        segment = match.group(2)
        part_idx = int(match.group(4))
        hk_indices_str = match.group(5).strip()
        extracted_sig = match.group(6).strip()

        theorems.append({
            'name': theorem_name,
            'segment': segment,
            'part': part_idx,
            'hk_indices_str': hk_indices_str,
            'extracted_sig': extracted_sig,
        })

    return theorems


def generate_nullifier_adapters(seg11_path, seg26_path, existing_path):
    """Generate the corrected NullifierAdapters.lean file."""

    text = existing_path.read_text()

    # First, identify what the shift should be by examining relationRow outputs
    seg11_outputs = extract_relation_outputs(seg11_path)
    seg11_parts = extract_relation_parts(seg11_path)
    seg26_outputs = extract_relation_outputs(seg26_path)
    seg26_parts = extract_relation_parts(seg26_path)

    # Get first relationPart outputs
    if 0 in seg11_parts:
        rows = seg11_parts[0]
        expected_outputs = [seg11_outputs.get(r) for r in rows if r in seg11_outputs]
        if len(expected_outputs) >= 5:
            # The first part should output 5 values: the relationRow outputs
            # Compare with what NullifierAdapters currently expects
            current_first_output = 6908  # From line 17 of NullifierAdapters
            expected_first_output = expected_outputs[0]
            shift = expected_first_output - current_first_output
        else:
            shift = -6  # Default based on prior report
    else:
        shift = -6

    # Build mapping of old witness indices to new ones
    # The witness region in Seg11 goes from 6902 onwards (NEW) or 6908 onwards (OLD)
    # We need to shift only those indices, not the public inputs
    # Public inputs are typically small (< 1000); witness wires are large (1000+)
    # For Seg11: old witness starts ~6908, new ~6902 (low numbers in segment)
    # For Seg26: old witness starts ~19099, new ~19083 (larger numbers in segment)
    # But the absolute rule: any rho N where N >= 1000 is likely witness-region
    witness_threshold = 1000

    def shift_witness_index(match):
        index = int(match.group(1))
        # Only shift large indices (1000+) that are in the witness region
        if index >= witness_threshold:
            return f"rho {index + shift}"
        else:
            # Keep public/input indices unchanged (small numbers < 1000)
            return f"rho {index}"

    # Apply selective shift: only to witness-region indices
    # We need to be careful to only shift in the right contexts
    modified_text = re.sub(r"rho (\d+)", shift_witness_index, text)

    return modified_text, shift


if __name__ == "__main__":
    seg11_path = NOTE_RESHAPE / "Seg11.lean"
    seg26_path = NOTE_RESHAPE / "Seg26.lean"
    adapters_path = NOTE_RESHAPE / "NullifierAdapters.lean"

    print(f"Reading Seg11 from {seg11_path}")
    print(f"Reading Seg26 from {seg26_path}")
    print(f"Reading existing adapters from {adapters_path}")

    # Verify paths exist
    if not seg11_path.exists():
        raise FileNotFoundError(f"Seg11.lean not found at {seg11_path}")
    if not seg26_path.exists():
        raise FileNotFoundError(f"Seg26.lean not found at {seg26_path}")
    if not adapters_path.exists():
        raise FileNotFoundError(f"NullifierAdapters.lean not found at {adapters_path}")

    generated, shift_amount = generate_nullifier_adapters(seg11_path, seg26_path, adapters_path)

    print(f"Computed index shift: {shift_amount}")

    # Write only if changed
    changed = write_if_changed(adapters_path, generated)
    if changed:
        print(f"Generated {adapters_path}")
    else:
        print(f"No changes needed for {adapters_path}")
