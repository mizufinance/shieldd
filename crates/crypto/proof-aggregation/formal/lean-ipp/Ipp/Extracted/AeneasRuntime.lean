/-! Executable subset of the Aeneas Lean runtime used by the scoped extraction. -/
namespace Aeneas

universe u v

inductive Error where
  | panic

inductive Result (α : Type u) where
  | ok (value : α)
  | fail (error : Error)
  | div

namespace Result

def bind {α : Type u} {β : Type v} (result : Result α)
    (next : α → Result β) : Result β :=
  match result with
  | .ok value => next value
  | .fail error => .fail error
  | .div => .div

instance : Monad Result where
  pure := .ok
  bind := bind

end Result

namespace ControlFlow
end ControlFlow

namespace Std

namespace Do
end Do

namespace core.clone

structure Clone (Self : Type) where
  clone : Self → Result Self

end core.clone

namespace core.default

structure Default (Self : Type) where
  default : Result Self

end core.default

namespace core.mem

/-- `mem::take` returns the old value and writes `Default::default`. -/
def take {T : Type} (defaultInst : core.default.Default T) (value : T) :
    Result (T × T) := do
  let default ← defaultInst.default
  .ok (value, default)

end core.mem

end Std
end Aeneas
