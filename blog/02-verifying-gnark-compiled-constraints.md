# DRAFT/SPIKE — Proving theorems about what gnark actually compiled

*Status: draft outline, not published. ~6 min read target.*

## The pitch

Most circuit verification proves a *model* of your circuit. We prove the
compiled output: the exact R1CS rows gnark emits (~58k constraints for our
consolidate circuit) are extracted to Lean and shown to imply the spec. If the
Go source, the compiler, or a gadget library does something surprising, the
proof sees it — because the proof's input *is* the compiled artifact.

Techniques that made this tractable (each is a war story):

- **Extract, don't transcribe.** A Rust extractor parses the serialized
  constraint system, partitions it into 49 segments, and emits Lean contracts.
  A SHA-256 of the raw constraint strings pins each segment; change the
  circuit and the affected segments' proofs are automatically invalidated.
- **Never walk 58k constraints in one tactic.** Elaboration cost is quadratic
  in chain length. Segments end in an opaque continuation and compose;
  repeated ladder patterns get a fuel-recursive definition + one induction
  lemma instead of a 253-step unroll.
- **Compact representations with a parity gate.** Wide linear combinations
  (scalar-ladder accumulators) are emitted as stride-runs (`StructuredLC`),
  with the extractor asserting at generation time that the compact form equals
  the raw coefficient multiset. Lean gets O(1) per rung; parity is checked in
  Rust, fails closed.
- **Kernel defeq over simp.** One `simp` on a 254-arm match generated 769 MB
  of proof term and 22 GB of RAM; `rfl` closes the same goal for free. Forest
  rebuild went from ~14 h to ~40 min from a one-line generator fix.
- **A capstone theorem.** 49 segment theorems compose into one statement:
  every satisfying assignment of the full compiled system satisfies the
  protocol statement, phrased over named wires, axiom-clean.

## Comparison to state of the art

- **gnark's own std-library tests / fuzzing:** completeness evidence, not
  soundness proofs.
- **reilabs' gnark-lean-extractor:** extracts the *frontend* circuit
  description; we extract the *compiled* constraints, so the compiler is
  inside the verified boundary rather than trusted.
- **Veridise Picus / cvc5-ff:** decides determinism per gadget; doesn't scale
  to whole circuits and says nothing about semantics. We use it as a
  complementary under-constraint check on 24 leaves.
- **Academic verified compilers (e.g. verified Circom pipelines):** verify the
  compiler once, generically. Beautiful, but doesn't exist for gnark; proving
  the *output* per release is available today and catches gadget-library bugs
  the compiler theorem wouldn't.

## The AI angle

The proof tree is ~3.6k generated Lean files. No human writes that; no human
should. Frontier model: segment/continuation architecture, the StructuredLC
design, the performance forensics (the simp→rfl root cause). Executor models:
regenerate, re-prove, and re-stamp segment families against the gates. The
extractor's parity assertions and the manifest pin are what make delegating to
a model safe — the gate, not the model, is the trust anchor.

## Skeleton

1. "Your proof is about a model" — the gap nobody mentions.
2. Pipeline diagram: Go → .sr1cs → Rust extractor → Lean contracts → capstone.
3. Three scaling war stories (quadratic walks, StructuredLC, simp blowup).
4. SOA table (extractor comparison is the sharpest row).
5. AI workflow + fail-closed gates.
6. Numbers: 49/49 segments, 58k rows, 40-min rebuild, axiom-clean capstone.
