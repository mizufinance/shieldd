import Ipp.Extracted.AeneasRuntime

/-!
Runtime support used only by the AggregateAdapter extraction graph.
-/

namespace ark_ip_proofs

def alloc.vec.Vec.append {T : Type} (_allocator : Type)
    (left right : Aeneas.Std.alloc.vec.Vec T) :
    Aeneas.Result
      (Aeneas.Std.alloc.vec.Vec T × Aeneas.Std.alloc.vec.Vec T) :=
  .ok (⟨left.val ++ right.val⟩, ⟨[]⟩)

@[simp] theorem alloc.vec.Vec.append_exact {T : Type} (allocator : Type)
    (left right : Aeneas.Std.alloc.vec.Vec T) :
    alloc.vec.Vec.append allocator left right =
      .ok (⟨left.val ++ right.val⟩, ⟨[]⟩) := rfl

end ark_ip_proofs
