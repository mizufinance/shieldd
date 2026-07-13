/-! Executable subset of the Aeneas Lean runtime used by the scoped extraction. -/
namespace Aeneas

universe u v

inductive Error where
  | panic
  | arrayOutOfBounds
  | maximumSizeExceeded

inductive Result (α : Type u) where
  | ok (value : α)
  | fail (error : Error)
  | div

instance {α : Type u} : Inhabited (Result α) := ⟨.div⟩

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

def lift {α : Type u} (value : α) : Result α := .ok value

inductive ControlFlow (α : Type u) (β : Type v) where
  | cont (value : α)
  | done (value : β)

partial def loop {α : Type u} {β : Type v}
    (body : α → Result (ControlFlow α β)) (state : α) : Result β :=
  match body state with
  | .ok (.cont next) => loop body next
  | .ok (.done value) => .ok value
  | .fail error => .fail error
  | .div => .div

namespace Std

structure Usize where
  val : Nat
deriving DecidableEq, Repr

namespace Usize

def ofNat (value : Nat) : Usize := ⟨value⟩

end Usize

instance : LT Usize where
  lt left right := left.val < right.val

instance (left right : Usize) : Decidable (left < right) :=
  inferInstanceAs (Decidable (left.val < right.val))

instance : HAdd Usize Usize (Result Usize) where
  hAdd left right := .ok ⟨left.val + right.val⟩

macro:max value:term:max noWs "#usize" : term =>
  `(Usize.ofNat $value)

structure Slice (T : Type u) where
  val : List T
deriving Repr

namespace Slice

def len {T : Type u} (slice : Slice T) : Usize := ⟨slice.val.length⟩

def index_usize {T : Type u} (slice : Slice T) (index : Usize) : Result T :=
  match slice.val[index.val]? with
  | some value => .ok value
  | none => .fail .arrayOutOfBounds

end Slice

namespace alloc.vec

structure Vec (T : Type u) where
  val : List T
deriving Repr

namespace Vec

def with_capacity (T : Type u) (_capacity : Usize) : Vec T := ⟨[]⟩

def push {T : Type u} (items : Vec T) (value : T) : Result (Vec T) :=
  .ok ⟨items.val ++ [value]⟩

end Vec
end alloc.vec

namespace core.cmp.impls.OrdUsize

def min (left right : Usize) : Usize :=
  if left.val ≤ right.val then left else right

end core.cmp.impls.OrdUsize

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
