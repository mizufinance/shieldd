import Ipp.Extracted.AeneasRuntime

/-!
Runtime support used only by the AggregateAdapter extraction graph.
-/

namespace ark_ip_proofs.alloc.vec.Vec

open Aeneas Aeneas.Std

/-- `Vec::append` moves the second vector's elements and leaves it empty. -/
def append {T : Type} (_allocator : Type)
    (left right : Aeneas.Std.alloc.vec.Vec T) :
    Aeneas.Result
      (Aeneas.Std.alloc.vec.Vec T × Aeneas.Std.alloc.vec.Vec T) :=
  .ok (⟨left.val ++ right.val⟩, ⟨[]⟩)

@[simp] theorem append_exact {T : Type} (allocator : Type)
    (left right : Aeneas.Std.alloc.vec.Vec T) :
    append allocator left right =
      .ok (⟨left.val ++ right.val⟩, ⟨[]⟩) := rfl

end ark_ip_proofs.alloc.vec.Vec
