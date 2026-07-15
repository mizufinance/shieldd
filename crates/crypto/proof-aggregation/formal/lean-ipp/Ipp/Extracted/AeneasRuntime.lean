/-! Executable subset of the Aeneas Lean runtime used by the scoped extraction. -/
namespace Aeneas

universe u v

inductive Error where
  | panic
  | integerOverflow
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

@[simp] theorem bind_ok {α : Type u} {β : Type u} (value : α)
    (next : α → Result β) : (.ok value >>= next) = next value := rfl

@[simp] theorem bind_fail {α : Type u} {β : Type u} (error : Error)
    (next : α → Result β) : ((.fail error : Result α) >>= next) = .fail error := rfl

@[simp] theorem bind_div {α : Type u} {β : Type u} (next : α → Result β) :
    ((.div : Result α) >>= next) = .div := rfl

end Result

def lift {α : Type u} (value : α) : Result α := .ok value

inductive ControlFlow (α : Type u) (β : Type v) where
  | cont (value : α)
  | done (value : β)

inductive LoopResult {α : Type u} {β : Type v}
    (body : α → Result (ControlFlow α β)) : α → Result β → Prop where
  | done {state value} (h : body state = .ok (.done value)) :
      LoopResult body state (.ok value)
  | next {state next result}
      (hstep : body state = .ok (.cont next))
      (hnext : LoopResult body next result) :
      LoopResult body state result
  | fail {state error} (h : body state = .fail error) :
      LoopResult body state (.fail error)
  | div {state} (h : body state = .div) :
      LoopResult body state .div

namespace LoopResult

theorem unique {α : Type u} {β : Type v}
    {body : α → Result (ControlFlow α β)} {state : α} {left right : Result β}
    (hleft : LoopResult body state left) (hright : LoopResult body state right) :
    left = right := by
  induction hleft generalizing right with
  | done h =>
      cases hright with
      | done h' => rw [h] at h'; cases h'; rfl
      | next h' _ => simp_all
      | fail h' => simp_all
      | div h' => simp_all
  | next hstep hnext ih =>
      cases hright with
      | done h => simp_all
      | next hstep' hnext' =>
          rw [hstep] at hstep'
          cases hstep'
          exact ih hnext'
      | fail h => simp_all
      | div h => simp_all
  | fail h =>
      cases hright with
      | done h' => simp_all
      | next h' _ => simp_all
      | fail h' => rw [h] at h'; cases h'; rfl
      | div h' => simp_all
  | div h =>
      cases hright with
      | done h' => simp_all
      | next h' _ => simp_all
      | fail h' => simp_all
      | div h' => rfl

end LoopResult

/-- A finite execution witness for an extracted Rust loop. -/
def loopFuel {α : Type u} {β : Type v}
    (body : α → Result (ControlFlow α β)) : Nat → α → Result β
  | 0, _ => .div
  | fuel + 1, state =>
      match body state with
      | .ok (.cont next) => loopFuel body fuel next
      | .ok (.done value) => .ok value
      | .fail error => .fail error
      | .div => .div

private theorem loopResult_of_loopFuel_eq {α : Type u} {β : Type v}
    {body : α → Result (ControlFlow α β)} {fuel : Nat} {state : α}
    {result : Result β} (hresult : result ≠ .div)
    (h : loopFuel body fuel state = result) : LoopResult body state result := by
  induction fuel generalizing state with
  | zero =>
      simp only [loopFuel] at h
      exact (hresult h.symm).elim
  | succ fuel ih =>
      cases hbody : body state with
      | ok flow =>
          cases flow with
          | cont next =>
              simp only [loopFuel, hbody] at h
              exact .next hbody (ih h)
          | done value =>
              simp only [loopFuel, hbody] at h
              subst result
              exact .done hbody
      | fail error =>
          simp only [loopFuel, hbody] at h
          subst result
          exact .fail hbody
      | div =>
          simp only [loopFuel, hbody] at h
          exact (hresult h.symm).elim

/-- The extracted loop result is the unique finite result when one exists;
    otherwise the Rust divergence marker is returned. -/
unsafe def loopImpl {α : Type u} {β : Type v}
    (body : α → Result (ControlFlow α β)) (state : α) : Result β :=
  match body state with
  | .ok (.cont next) => loopImpl body next
  | .ok (.done value) => .ok value
  | .fail error => .fail error
  | .div => .div

@[implemented_by loopImpl]
noncomputable def loop {α : Type u} {β : Type v}
    (body : α → Result (ControlFlow α β)) (state : α) : Result β :=
  by
    classical
    exact if h : ∃ result, LoopResult body state result then Classical.choose h else .div

theorem loop_eq_of_result {α : Type u} {β : Type v}
    {body : α → Result (ControlFlow α β)} {state : α} {result : Result β}
    (hresult : LoopResult body state result) : loop body state = result := by
  classical
  unfold loop
  split
  · rename_i h
    exact LoopResult.unique (Classical.choose_spec h) hresult
  · rename_i h
    exact False.elim (h ⟨result, hresult⟩)

theorem loop_eq_of_fuel {α : Type u} {β : Type v}
    {body : α → Result (ControlFlow α β)} {fuel : Nat} {state : α}
    {result : Result β} (hresult : result ≠ .div)
    (h : loopFuel body fuel state = result) : loop body state = result :=
  loop_eq_of_result (loopResult_of_loopFuel_eq hresult h)

namespace Std

structure Usize where
  val : Nat
deriving DecidableEq, Repr

namespace Usize

def ofNat (value : Nat) : Usize := ⟨value⟩

/-- Largest value representable by Rust's target-sized unsigned integer. -/
def max : Nat := 2 ^ System.Platform.numBits - 1

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

namespace core.ops.range

structure Range where
  start : Usize
  «end» : Usize

end core.ops.range

namespace core.iter.range

structure Step (Self : Type) where

def StepUsize : Step Usize := {}

namespace IteratorRange

def next (_step : Step Usize) (range : core.ops.range.Range) :
    Result (Option Usize × core.ops.range.Range) :=
  if range.start.val < range.«end».val then
    .ok (some range.start,
      { start := Usize.ofNat (range.start.val + 1), «end» := range.«end» })
  else
    .ok (none, range)

end IteratorRange
end core.iter.range

end Std
end Aeneas

namespace ark_ip_proofs.core.mem

open Aeneas Aeneas.Std

/-- Rust `mem::take`: return the old value paired with `Default::default`. -/
def take {T : Type} (defaultInst : core.default.Default T) (value : T) :
    Result (T × T) :=
  Aeneas.Std.core.mem.take defaultInst value

@[simp] theorem take_eq_ok {T : Type} (defaultInst : core.default.Default T)
    (value default : T) (hdefault : defaultInst.default = .ok default) :
    take defaultInst value = .ok (value, default) := by
  simp [take, Aeneas.Std.core.mem.take, hdefault]

@[simp] theorem take_ok {T : Type} (value default : T) :
    take { default := .ok default } value = .ok (value, default) :=
  rfl

end ark_ip_proofs.core.mem

namespace ark_ip_proofs.core.num.Usize

open Aeneas Aeneas.Std

/-- Rust `usize::is_power_of_two`, evaluated on the executable Nat model. -/
def is_power_of_two (value : Usize) : Result Bool :=
  .ok (value.val != 0 && 2 ^ Nat.log2 value.val == value.val)

/-- Rust `usize::ilog2`; callers establish that the input is nonzero. -/
def ilog2 (value : Usize) : Result Usize :=
  .ok ⟨Nat.log2 value.val⟩

/-- Rust `usize::pow`: fail on machine-integer overflow. -/
def pow (base exponent : Usize) : Result Usize :=
  if base.val ^ exponent.val ≤ Usize.max then
    .ok ⟨base.val ^ exponent.val⟩
  else
    .fail .integerOverflow

theorem pow_eq_ok (base exponent : Usize)
    (h : base.val ^ exponent.val ≤ Usize.max) :
    pow base exponent = .ok ⟨base.val ^ exponent.val⟩ := by
  simp [pow, h]

theorem pow_two_eq_ok (i : Nat) (h : 2 ^ i ≤ Usize.max) :
    pow (Usize.ofNat 2) ⟨i⟩ = .ok ⟨2 ^ i⟩ :=
  pow_eq_ok (Usize.ofNat 2) ⟨i⟩ h

end ark_ip_proofs.core.num.Usize

namespace ark_ip_proofs

open Aeneas Aeneas.Std Result ControlFlow Error

namespace core.ops.function

structure FnOnce (Self : Type) (Args : Type) (Output : Type) where
  call_once : Self → Args → Aeneas.Result Output

end core.ops.function

namespace core.ops.control_flow

inductive ControlFlow (ContinueT : Type) (BreakT : Type) where
  | Continue : ContinueT → ControlFlow ContinueT BreakT
  | Break : BreakT → ControlFlow ContinueT BreakT

end core.ops.control_flow

namespace core.result

inductive Result (T : Type) (E : Type) where
  | Ok : T → Result T E
  | Err : E → Result T E

namespace Result.Insts.CoreOpsTry

def branch {T E : Type} (value : Result T E) : Aeneas.Result
    (core.ops.control_flow.ControlFlow T E) :=
  match value with
  | .Ok result => .ok (.Continue result)
  | .Err error => .ok (.Break error)

end Result.Insts.CoreOpsTry

namespace Result.Insts.CoreOpsTryTraitFromResidualResultInfallible

def from_residual (T : Type) (_fromSame : Type) {E : Type} (error : E) :
    Aeneas.Result (Result T E) :=
  .ok (.Err error)

end Result.Insts.CoreOpsTryTraitFromResidualResultInfallible

namespace Result

def map_err {T E F O : Type} (function : core.ops.function.FnOnce O E F)
    (value : Result T E) (argument : O) : Aeneas.Result (Result T F) :=
  match value with
  | .Ok result => .ok (.Ok result)
  | .Err error => do
      let mapped ← function.call_once argument error
      .ok (.Err mapped)

end Result
end core.result

namespace core.convert

def FromSame (_E : Type) := Unit

end core.convert

namespace core.option.Option

def is_none {T : Type} (value : Option T) : Bool :=
  match value with
  | none => true
  | some _ => false

end core.option.Option

namespace rayon_core.join

def join {A B RA RB : Type}
    (left : core.ops.function.FnOnce A Unit RA)
    (right : core.ops.function.FnOnce B Unit RB) :
    A → B → Result (RA × RB) := fun a b => do
  let leftResult ← left.call_once a ()
  let rightResult ← right.call_once b ()
  .ok (leftResult, rightResult)

end rayon_core.join
end ark_ip_proofs
