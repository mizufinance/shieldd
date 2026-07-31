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

/-- Executable stand-in for the stateless global allocator type. -/
def Global : Type := Unit

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

/-- Recover the unique finite execution witnessed by a non-diverging loop result. -/
theorem loopResult_of_eq {α : Type u} {β : Type v}
    {body : α → Result (ControlFlow α β)} {state : α} {result : Result β}
    (hresult : result ≠ .div) (h : loop body state = result) :
    LoopResult body state result := by
  classical
  unfold loop at h
  split at h
  · rename_i hexists
    have hwitness := Classical.choose_spec hexists
    rwa [h] at hwitness
  · exact (hresult h.symm).elim

theorem loop_eq_of_fuel {α : Type u} {β : Type v}
    {body : α → Result (ControlFlow α β)} {fuel : Nat} {state : α}
    {result : Result β} (hresult : result ≠ .div)
    (h : loopFuel body fuel state = result) : loop body state = result :=
  loop_eq_of_result (loopResult_of_loopFuel_eq hresult h)

namespace Std

structure Usize where
  val : Nat
deriving DecidableEq, Repr

abbrev U32 := Usize

namespace Usize

def ofNat (value : Nat) : Usize := ⟨value⟩

@[simp] theorem ofNat_val (value : Nat) : (ofNat value).val = value := rfl

/-- Largest value representable by Rust's target-sized unsigned integer. -/
def max : Nat := 2 ^ System.Platform.numBits - 1

/-- Exact fail-closed semantics of Rust's pure `usize::checked_add`. -/
def checked_add (left right : Usize) : Option Usize :=
  if left.val + right.val ≤ max then
    some ⟨left.val + right.val⟩
  else
    none

/-- Exact fail-closed semantics of Rust's pure `usize::checked_sub`. -/
def checked_sub (left right : Usize) : Option Usize :=
  if right.val ≤ left.val then
    some ⟨left.val - right.val⟩
  else
    none

@[simp] theorem checked_sub_of_le (left right : Usize)
    (h : right.val ≤ left.val) :
    checked_sub left right = some ⟨left.val - right.val⟩ := by
  simp [checked_sub, h]

@[simp] theorem checked_sub_of_lt (left right : Usize)
    (h : left.val < right.val) :
    checked_sub left right = none := by
  simp [checked_sub, Nat.not_le_of_gt h]

end Usize

instance : LT Usize where
  lt left right := left.val < right.val

instance (left right : Usize) : Decidable (left < right) :=
  inferInstanceAs (Decidable (left.val < right.val))

@[simp] theorem Usize.lt_iff_val_lt (left right : Usize) :
    left < right ↔ left.val < right.val := Iff.rfl

instance : LE Usize where
  le left right := left.val ≤ right.val

instance (left right : Usize) : Decidable (left ≤ right) :=
  inferInstanceAs (Decidable (left.val ≤ right.val))

@[simp] theorem Usize.le_iff_val_le (left right : Usize) :
    left ≤ right ↔ left.val ≤ right.val := Iff.rfl

instance : HAdd Usize Usize (Result Usize) where
  hAdd left right := .ok ⟨left.val + right.val⟩

@[simp] theorem add_eq (left right : Usize) :
    (left + right : Result Usize) = .ok ⟨left.val + right.val⟩ := rfl

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

def len {T : Type u} (items : Vec T) : Usize :=
  ⟨items.val.length⟩

def index_mut {T : Type u} (_inst : Type) (items : Vec T)
    (index : Usize) : Result (T × (T → Vec T)) :=
  match items.val[index.val]? with
  | some value =>
      .ok (value, fun replacement => ⟨items.val.set index.val replacement⟩)
  | none => .fail .arrayOutOfBounds

def index {T : Type u} (_inst : Type) (items : Vec T)
    (index : Usize) : Result T :=
  match items.val[index.val]? with
  | some value => .ok value
  | none => .fail .arrayOutOfBounds

def new {T : Type u} : Vec T := ⟨[]⟩

def with_capacity (T : Type u) (_capacity : Usize) : Vec T := ⟨[]⟩

def push {T : Type u} (items : Vec T) (value : T) : Result (Vec T) :=
  .ok ⟨items.val ++ [value]⟩

private def popList {T : Type u} : List T → Option T × List T
  | [] => (none, [])
  | [value] => (some value, [])
  | value :: rest =>
      let (last, initial) := popList rest
      (last, value :: initial)

def pop {T : Type u} (_allocator : Type) (items : Vec T) : Result (Option T × Vec T) :=
  let (last, initial) := popList items.val
  .ok (last, ⟨initial⟩)

@[simp] theorem pop_empty {T : Type u} (allocator : Type) :
    pop (T := T) allocator ⟨[]⟩ = .ok (none, ⟨[]⟩) := rfl

@[simp] theorem pop_singleton {T : Type u} (allocator : Type) (value : T) :
    pop allocator ⟨[value]⟩ = .ok (some value, ⟨[]⟩) := rfl

@[simp] theorem pop_append_singleton {T : Type u} (allocator : Type)
    (items : List T) (value : T) :
    pop allocator ⟨items ++ [value]⟩ = .ok (some value, ⟨items⟩) := by
  induction items with
  | nil => rfl
  | cons head tail ih =>
      unfold pop at ih ⊢
      simp only [Result.ok.injEq, Prod.mk.injEq] at ih
      have ih' :
          (popList (tail ++ [value])).fst = some value ∧
          (popList (tail ++ [value])).snd = tail := by
        simpa using ih
      simp [popList, ih'.1, ih'.2]

@[simp] theorem pop_replicate_succ {T : Type u} (allocator : Type)
    (value : T) (n : Nat) :
    pop allocator ⟨List.replicate (n + 1) value⟩ =
      .ok (some value, ⟨List.replicate n value⟩) := by
  induction n with
  | zero => rfl
  | succ n ih =>
      unfold pop at ih ⊢
      simp only [Result.ok.injEq, Prod.mk.injEq] at ih
      have ih' :
          (popList (value :: List.replicate n value)).fst = some value ∧
          (popList (value :: List.replicate n value)).snd =
            List.replicate n value := by
        simpa [List.replicate_succ] using ih
      simp [List.replicate_succ, popList, ih'.1, ih'.2]

end Vec

end alloc.vec

namespace core.slice.index

def SliceIndexUsizeSlice (_T : Type) : Type := Unit

end core.slice.index

namespace core.cmp.impls.OrdUsize

def min (left right : Usize) : Usize :=
  if left.val ≤ right.val then left else right

end core.cmp.impls.OrdUsize

namespace Do
end Do

/-! Executable fixed-width integers and arrays used by the MAC campaign. -/

namespace MacCampaign

def u64Base : Nat := 2 ^ 64
def u128Base : Nat := 2 ^ 128
def i32Base : Nat := 2 ^ 32

structure U64 where
  val : Nat
  isLt : val < u64Base
deriving DecidableEq, Repr

namespace U64

def ofNat (value : Nat) : U64 :=
  ⟨value % u64Base, Nat.mod_lt _ (by decide)⟩

end U64

structure U128 where
  val : Nat
  isLt : val < u128Base
deriving DecidableEq, Repr

namespace U128

def ofNat (value : Nat) : U128 :=
  ⟨value % u128Base, Nat.mod_lt _ (by decide)⟩

end U128

structure I32 where
  val : Nat
  isLt : val < i32Base
deriving DecidableEq, Repr

namespace I32

def ofNat (value : Nat) : I32 :=
  ⟨value % i32Base, Nat.mod_lt _ (by decide)⟩

end I32

def castU128 (value : U64) : U128 :=
  ⟨value.val, Nat.lt_trans value.isLt (by decide)⟩

class CastU64Source (T : Type) where
  toNat : T → Nat

instance : CastU64Source U128 where
  toNat value := value.val

instance : CastU64Source Usize where
  toNat value := value.val

instance : CastU64Source UInt8 where
  toNat value := value.toNat

@[simp] theorem castU64Source_u128 (value : U128) :
    CastU64Source.toNat value = value.val := rfl

@[simp] theorem castU64Source_usize (value : Usize) :
    CastU64Source.toNat value = value.val := rfl

@[simp] theorem castU64Source_u8 (value : UInt8) :
    CastU64Source.toNat value = value.toNat := rfl

def castU64 {T : Type} [CastU64Source T] (value : T) : U64 :=
  U64.ofNat (CastU64Source.toNat value)

def castU8 (value : U64) : UInt8 := UInt8.ofNat value.val

class CastUsizeSource (T : Type) where
  toNat : T → Nat

instance : CastUsizeSource U64 where
  toNat value := value.val

instance : CastUsizeSource Usize where
  toNat value := value.val

@[simp] theorem castUsizeSource_u64 (value : U64) :
    CastUsizeSource.toNat value = value.val := rfl

@[simp] theorem castUsizeSource_usize (value : Usize) :
    CastUsizeSource.toNat value = value.val := rfl

def castUsize {T : Type} [CastUsizeSource T] (value : T) : Usize :=
  Usize.ofNat (CastUsizeSource.toNat value)

@[simp] theorem castUsize_self (value : Usize) : castUsize value = value := by
  cases value
  rfl

def add64 (left right : U64) : Result U64 :=
  if h : left.val + right.val < u64Base then
    .ok ⟨left.val + right.val, h⟩
  else
    .fail .integerOverflow

def sub64 (left right : U64) : Result U64 :=
  if h : right.val ≤ left.val then
    .ok ⟨left.val - right.val, by have hleft := left.isLt; omega⟩
  else
    .fail .integerOverflow

def div64 (left right : U64) : Result U64 :=
  if right.val = 0 then
    .div
  else
    .ok (U64.ofNat (left.val / right.val))

def add128 (left right : U128) : Result U128 :=
  if h : left.val + right.val < u128Base then
    .ok ⟨left.val + right.val, h⟩
  else
    .fail .integerOverflow

def mul128 (left right : U128) : Result U128 :=
  if h : left.val * right.val < u128Base then
    .ok ⟨left.val * right.val, h⟩
  else
    .fail .integerOverflow

def shr128 (value : U128) (shift : I32) : Result U128 :=
  if shift.val < 128 then
    .ok (U128.ofNat (value.val / 2 ^ shift.val))
  else
    .fail .integerOverflow

def shl64ByUsize (value : U64) (shift : Usize) : Result U64 :=
  if shift.val < 64 then .ok (U64.ofNat (value.val * 2 ^ shift.val))
  else .fail .integerOverflow

def shr64ByUsize (value : U64) (shift : Usize) : Result U64 :=
  if shift.val < 64 then .ok (U64.ofNat (value.val / 2 ^ shift.val))
  else .fail .integerOverflow

def wrappingMul64 (left right : U64) : U64 :=
  U64.ofNat (left.val * right.val)

def wrappingSub128 (left right : U128) : U128 :=
  U128.ofNat (left.val + u128Base - right.val)

instance : LT U64 where
  lt left right := left.val < right.val

instance : LE U64 where
  le left right := left.val ≤ right.val

instance (left right : U64) : Decidable (left < right) :=
  inferInstanceAs (Decidable (left.val < right.val))

instance (left right : U64) : Decidable (left ≤ right) :=
  inferInstanceAs (Decidable (left.val ≤ right.val))

structure Array (T : Type u) (size : Usize) where
  val : List T
  hlen : val.length = size.val

namespace Array

@[ext] theorem ext {T : Type u} {size : Usize} {left right : Array T size}
    (h : left.val = right.val) : left = right := by
  cases left
  cases right
  simp_all

def make {T : Type u} (size : Usize) (items : List T)
    (hlen : items.length = size.val := by simp) : Array T size :=
  ⟨items, hlen⟩

def to_slice {T : Type u} {size : Usize} (items : Array T size) : Slice T :=
  ⟨items.val⟩

def replicate {T : Type u} (size : Usize) (value : T) : Array T size :=
  ⟨List.replicate size.val value, by simp⟩

def index_usize {T : Type u} {size : Usize} (items : Array T size)
    (index : Usize) : Result T :=
  match items.val[index.val]? with
  | some value => .ok value
  | none => .fail .arrayOutOfBounds

def update {T : Type u} {size : Usize} (items : Array T size)
    (index : Usize) (value : T) : Result (Array T size) :=
  if h : index.val < items.val.length then
    .ok ⟨items.val.set index.val value, by simpa [List.length_set, items.hlen]⟩
  else
    .fail .arrayOutOfBounds

end Array

def shl64 (value : U64) (shift : I32) : Result U64 :=
  if shift.val < 64 then .ok (U64.ofNat (value.val * 2 ^ shift.val))
  else .fail .integerOverflow

def shr64 (value : U64) (shift : I32) : Result U64 :=
  if shift.val < 64 then .ok (U64.ofNat (value.val / 2 ^ shift.val))
  else .fail .integerOverflow

instance instHAddU128 : HAdd U128 U128 (Result U128) where hAdd := add128
instance instHMulU128 : HMul U128 U128 (Result U128) where hMul := mul128
instance instHAddU64 : HAdd U64 U64 (Result U64) where hAdd := add64
instance instHAddU64Result : HAdd U64 (Result U64) (Result U64) where
  hAdd left right := right.bind (add64 left)
instance instHSubU64 : HSub U64 U64 (Result U64) where hSub := sub64
instance instHDivU64 : HDiv U64 U64 (Result U64) where hDiv := div64
instance instHShiftRightU128 : HShiftRight U128 I32 (Result U128) where
  hShiftRight := shr128
instance instHShiftRightU64 : HShiftRight U64 I32 (Result U64) where
  hShiftRight := shr64
instance instHShiftLeftU64 : HShiftLeft U64 I32 (Result U64) where
  hShiftLeft := shl64
instance instHShiftRightU64Usize : HShiftRight U64 Usize (Result U64) where
  hShiftRight := shr64ByUsize
instance instHShiftLeftU64Usize : HShiftLeft U64 Usize (Result U64) where
  hShiftLeft := shl64ByUsize

@[simp] theorem shl64_one (value : U64) :
    (value <<< I32.ofNat 1 : Result U64) = .ok (U64.ofNat (value.val * 2)) := by
  change shl64 value (I32.ofNat 1) = _
  simp [shl64, I32.ofNat, i32Base]

@[simp] theorem shr64_sixtyThree (value : U64) :
    (value >>> I32.ofNat 63 : Result U64) =
      .ok (U64.ofNat (value.val / 2 ^ 63)) := by
  change shr64 value (I32.ofNat 63) = _
  simp [shr64, I32.ofNat, i32Base]
def or64 (left right : U64) : U64 :=
  U64.ofNat (left.val ||| right.val)

def and64 (left right : U64) : Result U64 :=
  .ok (U64.ofNat (left.val &&& right.val))

instance instHOrU64 : HOr U64 U64 U64 where hOr := or64
instance instHAndU64 : HAnd U64 U64 U64 where
  hAnd left right := U64.ofNat (left.val &&& right.val)

instance instHSubUsize : HSub Usize Usize (Result Usize) where
  hSub left right :=
    if right.val ≤ left.val then .ok ⟨left.val - right.val⟩
    else .fail .integerOverflow

@[simp] theorem sub_eq (left right : Usize) (h : right.val ≤ left.val) :
    (left - right : Result Usize) = .ok ⟨left.val - right.val⟩ := by
  change (if right.val ≤ left.val then
      (Result.ok (Usize.ofNat (left.val - right.val)) : Result Usize)
    else Result.fail .integerOverflow) = _
  rw [if_pos h]
  rfl

instance instHMulUsize : HMul Usize Usize (Result Usize) where
  hMul left right := .ok ⟨left.val * right.val⟩

instance instHDivUsize : HDiv Usize Usize (Result Usize) where
  hDiv left right := if right.val = 0 then .div else .ok ⟨left.val / right.val⟩

instance instHModUsize : HMod Usize Usize (Result Usize) where
  hMod left right := if right.val = 0 then .div else .ok ⟨left.val % right.val⟩

instance instHShiftRightUsizeI32 : HShiftRight Usize I32 (Result Usize) where
  hShiftRight left right := .ok ⟨left.val / 2 ^ right.val⟩

instance instHShiftLeftUsizeI32 : HShiftLeft Usize I32 (Result Usize) where
  hShiftLeft left right := .ok ⟨left.val * 2 ^ right.val⟩

instance instHShiftLeftUsizeUsize : HShiftLeft Usize Usize (Result Usize) where
  hShiftLeft left right := .ok ⟨left.val * 2 ^ right.val⟩

@[simp] theorem hAddU128_eq (left right : U128) :
    (left + right : Result U128) = add128 left right := rfl

@[simp] theorem hMulU128_eq (left right : U128) :
    (left * right : Result U128) = mul128 left right := rfl

@[simp] theorem hShiftRightU128_eq (value : U128) (shift : I32) :
    (value >>> shift : Result U128) = shr128 value shift := rfl

@[simp] theorem mul_eq (left right : Usize) :
    (left * right : Result Usize) = .ok ⟨left.val * right.val⟩ := rfl

macro:max value:term:max noWs "#u64" : term =>
  `(MacCampaign.U64.ofNat $value)

macro:max value:term:max noWs "#i32" : term =>
  `(MacCampaign.I32.ofNat $value)

end MacCampaign

abbrev U64 := MacCampaign.U64
abbrev U128 := MacCampaign.U128
abbrev I32 := MacCampaign.I32
abbrev Array := MacCampaign.Array

namespace Array

def make {T : Type u} (size : Usize) (items : List T)
    (hlen : items.length = size.val := by simp) : Array T size :=
  MacCampaign.Array.make size items hlen

def to_slice {T : Type u} {size : Usize} (items : Array T size) : Slice T :=
  MacCampaign.Array.to_slice items

end Array

namespace core.clone

structure Clone (Self : Type u) where
  clone : Self → Result Self

end core.clone

namespace alloc.vec

def from_elem {T : Type u} (_clone : core.clone.Clone T) (value : T) (size : Usize) : Result (Vec T) :=
  .ok ⟨List.replicate size.val value⟩

end alloc.vec

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

structure Range (_T : Type := Usize) where
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

inductive UScalarTy where
  | U32

namespace UScalar

def cast (_target : UScalarTy) (value : Std.Usize) : Std.U32 := ⟨value.val⟩

end UScalar
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

namespace core.clone

def CloneU8 : Aeneas.Std.core.clone.Clone UInt8 where
  clone value := .ok value

end core.clone

namespace core.marker

structure Copy (Self : Type) where

def PhantomData (_T : Type) := Unit

end core.marker

namespace core.ops.arith

structure Add (Self : Type) (Rhs : Type) (Self_Output : Type) where
  add : Self → Rhs → Result Self_Output

structure Sub (Self : Type) (Rhs : Type) (Self_Output : Type) where
  sub : Self → Rhs → Result Self_Output

structure Mul (Self : Type) (Rhs : Type) (Self_Output : Type) where
  mul : Self → Rhs → Result Self_Output

structure Neg (Self : Type) (Self_Output : Type) where
  neg : Self → Result Self_Output

structure MulAssign (Self : Type) (Rhs : Type) where
  mul_assign : Self → Rhs → Result Self

structure Div (Self : Type) (Rhs : Type) (Self_Output : Type) where
  div : Self → Rhs → Result Self_Output

end core.ops.arith

namespace num_traits.identities

structure Zero (Self : Type) where
  coreopsarithAddInst : core.ops.arith.Add Self Self Self
  zero : Result Self
  is_zero : Self → Result Bool

structure One (Self : Type) where
  coreopsarithMulInst : core.ops.arith.Mul Self Self Self
  one : Result Self

end num_traits.identities

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

structure From (Self : Type) (T : Type) where
  «from» : T → Result Self

def FromSame (_E : Type) := Unit

end core.convert

namespace core.slice

namespace Slice

def is_empty {T : Type} (slice : Aeneas.Std.Slice T) : Result Bool :=
  .ok slice.val.isEmpty

/-- Exact bounds-checked semantics of the slice `get` primitive emitted for a
shared `Vec` borrow. -/
def get {T : Type} (_inst : Type) (slice : Aeneas.Std.Slice T)
    (index : Aeneas.Std.Usize) : Result (Option T) :=
  .ok slice.val[index.val]?

@[simp] theorem get_exact {T : Type} (inst : Type)
    (slice : Aeneas.Std.Slice T) (index : Aeneas.Std.Usize) :
    get inst slice index = .ok slice.val[index.val]? := rfl

def reverse {T : Type} (items : Aeneas.Std.Slice T) : Aeneas.Std.Slice T :=
  ⟨items.val.reverse⟩

end Slice

namespace index

structure SliceIndexUsizeSlice (T : Type) where

end index
end core.slice

def massert (condition : Prop) [Decidable condition] : Result Unit :=
  if condition then .ok () else .fail .panic

namespace alloc.slice.Slice

def into_vec {T : Type} (items : Aeneas.Std.Slice T) :
    Aeneas.Std.alloc.vec.Vec T :=
  ⟨items.val⟩

def reverse {T : Type} (items : Aeneas.Std.Slice T) : Aeneas.Std.Slice T :=
  ⟨items.val.reverse⟩

end alloc.slice.Slice

namespace alloc.vec

def repeat_values {T : Type} (cloneInst : core.clone.Clone T) (value : T) :
    Nat → Result (List T)
  | 0 => .ok []
  | Nat.succ count => do
      let copy ← cloneInst.clone value
      let rest ← repeat_values cloneInst value count
      .ok (copy :: rest)

def from_elem {T : Type} (cloneInst : core.clone.Clone T) (value : T)
    (len : Aeneas.Std.Usize) : Result (Aeneas.Std.alloc.vec.Vec T) := do
  let values ← repeat_values cloneInst value len.val
  .ok ⟨values⟩

namespace Vec

def new (T : Type) : Aeneas.Std.alloc.vec.Vec T := ⟨[]⟩

private def cloneValues {T : Type} (cloneInst : Aeneas.Std.core.clone.Clone T) :
    List T → Result (List T)
  | [] => .ok []
  | value :: rest => do
      let copy ← cloneInst.clone value
      let copies ← cloneValues cloneInst rest
      .ok (copy :: copies)

/-- Executable semantics of `Vec::extend_from_slice`, including the element
clone effect. The challenge-frame graph instantiates this with infallible
`u8` cloning. -/
def extend_from_slice {T : Type}
    (cloneInst : Aeneas.Std.core.clone.Clone T)
    (items : Aeneas.Std.alloc.vec.Vec T) (suffix : Aeneas.Std.Slice T) :
    Result (Aeneas.Std.alloc.vec.Vec T) := do
  let copies ← cloneValues cloneInst suffix.val
  .ok ⟨items.val ++ copies⟩

private theorem cloneValues_u8_exact (values : List UInt8) :
    cloneValues core.clone.CloneU8 values = .ok values := by
  induction values with
  | nil => rfl
  | cons value rest ih =>
      unfold cloneValues
      change (do
        let copies ← cloneValues core.clone.CloneU8 rest
        .ok (value :: copies)) = .ok (value :: rest)
      rw [ih]
      rfl

theorem extend_from_slice_u8_exact
    (items : Aeneas.Std.alloc.vec.Vec UInt8)
    (suffix : Aeneas.Std.Slice UInt8) :
    extend_from_slice core.clone.CloneU8 items suffix =
      .ok ⟨items.val ++ suffix.val⟩ := by
  simp [extend_from_slice, cloneValues_u8_exact]

def len {T : Type} (items : Aeneas.Std.alloc.vec.Vec T) : Aeneas.Std.Usize :=
  ⟨items.val.length⟩

/-- Exact result of testing whether the vector contains no elements.  The
allocator argument is the zero-state artifact emitted by Aeneas. -/
def is_empty {T : Type} (_allocator : Type)
    (items : Aeneas.Std.alloc.vec.Vec T) : Result Bool :=
  .ok items.val.isEmpty

@[simp] theorem is_empty_exact {T : Type} (allocator : Type)
    (items : Aeneas.Std.alloc.vec.Vec T) :
    is_empty allocator items = .ok items.val.isEmpty := rfl

def index {T : Type} (_inst : Type) (items : Aeneas.Std.alloc.vec.Vec T)
    (index : Aeneas.Std.Usize) : Result T :=
  match items.val[index.val]? with
  | some value => .ok value
  | none => .fail .arrayOutOfBounds

def updateAt {T : Type} : List T → Nat → T → List T
  | [], _, _ => []
  | _ :: rest, 0, value => value :: rest
  | item :: rest, Nat.succ index, value => item :: updateAt rest index value

def index_mut {T : Type} (_inst : Type) (items : Aeneas.Std.alloc.vec.Vec T)
    (index : Aeneas.Std.Usize) :
    Result (T × (T → Aeneas.Std.alloc.vec.Vec T)) :=
  match items.val[index.val]? with
  | some old => .ok (old, fun value => ⟨updateAt items.val index.val value⟩)
  | none => .fail .arrayOutOfBounds

def deref {T : Type} (items : Aeneas.Std.alloc.vec.Vec T) :
    Aeneas.Std.Slice T :=
  ⟨items.val⟩

def deref_mut {T : Type} (items : Aeneas.Std.alloc.vec.Vec T) :
    Aeneas.Std.Slice T × (Aeneas.Std.Slice T → Aeneas.Std.alloc.vec.Vec T) :=
  (⟨items.val⟩, fun slice => ⟨slice.val⟩)

end Vec
end alloc.vec

namespace alloc.vec.CloneVec

private def cloneList {T : Type} (cloneInst : core.clone.Clone T) :
    List T → Result (List T)
  | [] => .ok []
  | value :: rest => do
      let copy ← cloneInst.clone value
      let copies ← cloneList cloneInst rest
      .ok (copy :: copies)

/-- Executable semantics of the `Vec<T>: Clone` implementation emitted by
Aeneas. Element-clone failures are propagated in list order. -/
def clone {T : Type} (cloneInst : core.clone.Clone T)
    (items : Aeneas.Std.alloc.vec.Vec T) :
    Result (Aeneas.Std.alloc.vec.Vec T) := do
  let copies ← cloneList cloneInst items.val
  .ok ⟨copies⟩

private theorem cloneList_identity {T : Type} (items : List T) :
    cloneList ({ clone := fun value => .ok value } : core.clone.Clone T)
        items =
      .ok items := by
  induction items with
  | nil => rfl
  | cons value rest ih =>
      simp [cloneList, ih]

@[simp] theorem clone_identity {T : Type}
    (items : Aeneas.Std.alloc.vec.Vec T) :
    clone ({ clone := fun value => .ok value } : core.clone.Clone T)
        items =
      .ok items := by
  cases items with
  | mk values =>
      simp [clone, cloneList_identity]

/-- Cloning a vector is exact when cloning every element is exact. -/
theorem clone_exact {T : Type} (cloneInst : core.clone.Clone T)
    (hclone : ∀ value, cloneInst.clone value = .ok value)
    (items : Aeneas.Std.alloc.vec.Vec T) :
    clone cloneInst items = .ok items := by
  cases items with
  | mk values =>
      suffices cloneList cloneInst values = .ok values by
        simp [clone, this]
      induction values with
      | nil => rfl
      | cons value rest ih =>
          simp [cloneList, hclone value, ih]

end alloc.vec.CloneVec

namespace core.clone

/-- The standard `Vec<T>: Clone` dictionary emitted by Aeneas. -/
@[reducible] def CloneallocvecVec {T : Type}
    (cloneInst : Aeneas.Std.core.clone.Clone T) :
    Aeneas.Std.core.clone.Clone (Aeneas.Std.alloc.vec.Vec T) where
  clone := alloc.vec.CloneVec.clone cloneInst

@[simp] theorem CloneallocvecVec_clone_exact {T : Type}
    (cloneInst : Aeneas.Std.core.clone.Clone T)
    (hclone : ∀ value, cloneInst.clone value = Aeneas.Result.ok value)
    (items : Aeneas.Std.alloc.vec.Vec T) :
    (CloneallocvecVec cloneInst).clone items = Aeneas.Result.ok items :=
  alloc.vec.CloneVec.clone_exact cloneInst hclone items

end core.clone

namespace Array

def make {T : Type} (_size : Aeneas.Std.Usize) (items : List T) :
    Aeneas.Std.Slice T :=
  ⟨items⟩

def to_slice {T : Type} (items : Aeneas.Std.Slice T) : Aeneas.Std.Slice T :=
  items

end Array

namespace core.array.Array

/-- Borrowing a fixed Rust array as a slice preserves its exact elements. -/
def as_slice {T : Type} (items : Aeneas.Std.Slice T) :
    Aeneas.Result (Aeneas.Std.Slice T) :=
  .ok items

end core.array.Array

namespace Std.Array

def to_slice {T : Type} (items : Aeneas.Std.Slice T) : Aeneas.Std.Slice T :=
  items

end Std.Array

def BuiltinClone (T : Type) : core.clone.Clone T where
  clone value := .ok value

namespace core.option.Option

def is_none {T : Type} (value : Option T) : Bool :=
  match value with
  | none => true
  | some _ => false

end core.option.Option

namespace core.cmp

structure PartialEq (Self : Type) (Rhs : Type) where
  eq : Self → Rhs → Result Bool

/-- Marker trait carried by extracted Rust bounds. -/
structure Eq (_Self : Type) where

/-- Executable Aeneas model of Rust's default `PartialEq::ne`. -/
def PartialEq.ne {Self Rhs : Type} (inst : PartialEq Self Rhs)
    (left : Self) (right : Rhs) : Result Bool := do
  let equal ← inst.eq left right
  .ok (!equal)

end core.cmp

namespace std.io.error

/-- Opaque external I/O error; projection roots never inspect this value. -/
opaque Error : Type

end std.io.error

namespace ark_serialize

/-- Marker interface carried by extracted deserialization bounds. The shipping
projection never invokes deserialization; its concrete decoder is a separate
extraction boundary. -/
structure CanonicalDeserialize (_Self : Type) where

end ark_serialize

namespace core.slice.cmp.PartialEqSlice

private def listEq {T U : Type} (elementEq : core.cmp.PartialEq T U) :
    List T → List U → Result Bool
  | [], [] => .ok true
  | left :: lefts, right :: rights => do
      let equal ← elementEq.eq left right
      if equal then listEq elementEq lefts rights else .ok false
  | _, _ => .ok false

/-- Executable Aeneas model of elementwise Rust slice equality. -/
def eq {T U : Type} (elementEq : core.cmp.PartialEq T U)
    (left : Aeneas.Std.Slice T) (right : Aeneas.Std.Slice U) : Result Bool :=
  listEq elementEq left.val right.val

theorem eq_singleton {T U : Type} (elementEq : core.cmp.PartialEq T U)
    (left : T) (right : U) :
    eq elementEq ⟨[left]⟩ ⟨[right]⟩ = elementEq.eq left right := by
  cases h : elementEq.eq left right with
  | ok equal =>
      cases equal <;> simp [eq, listEq, h]
  | fail error =>
      simp [eq, listEq, h]
  | div =>
      simp [eq, listEq, h]

end core.slice.cmp.PartialEqSlice

namespace core.cmp

def PartialEqU64 : PartialEq MacCampaign.U64 MacCampaign.U64 where
  eq left right := .ok (decide (left = right))

def PartialEqU8 : PartialEq UInt8 UInt8 where
  eq left right := .ok (decide (left = right))

end core.cmp

namespace core.cmp.impls.PartialEqShared

/-- Executable semantics of Rust's blanket `PartialEq::ne`: negate the
underlying equality result while preserving its failure behavior. -/
def ne {T U : Type} (elementEq : core.cmp.PartialEq T U)
    (left : T) (right : U) : Result Bool := do
  let equal ← elementEq.eq left right
  .ok (!equal)

end core.cmp.impls.PartialEqShared

namespace alloc.vec.partial_eq.PartialEqVec

private def listEq {T U : Type} (elementEq : core.cmp.PartialEq T U) :
    List T → List U → Result Bool
  | [], [] => .ok true
  | left :: lefts, right :: rights => do
      let equal ← elementEq.eq left right
      if equal then listEq elementEq lefts rights else .ok false
  | _, _ => .ok false

/-- Exact elementwise inequality used by extracted `Vec<u8>` comparisons. -/
def ne {T U : Type} (elementEq : core.cmp.PartialEq T U)
    (left : Aeneas.Std.alloc.vec.Vec T)
    (right : Aeneas.Std.alloc.vec.Vec U) : Result Bool := do
  let equal ← listEq elementEq left.val right.val
  .ok (!equal)

@[simp] theorem ne_u8_exact
    (left right : Aeneas.Std.alloc.vec.Vec UInt8) :
    ne core.cmp.PartialEqU8 left right =
      .ok (decide (left.val ≠ right.val)) := by
  have listEq_exact :
      ∀ xs ys : List UInt8,
        listEq core.cmp.PartialEqU8 xs ys = .ok (decide (xs = ys)) := by
    intro xs
    induction xs with
    | nil =>
        intro ys
        cases ys <;> rfl
    | cons head tail ih =>
        intro ys
        cases ys with
        | nil => rfl
        | cons other rest =>
            by_cases hhead : head = other
            · subst other
              simp [listEq, core.cmp.PartialEqU8]
              simpa only [core.cmp.PartialEqU8] using ih rest
            · simp [listEq, core.cmp.PartialEqU8, hhead]
  simp [ne, listEq_exact]

end alloc.vec.partial_eq.PartialEqVec

namespace core.array.equality.PartialEqArray

def eq {T : Type} [DecidableEq T] {size : Usize} (_elementEq : core.cmp.PartialEq T T)
    (left right : MacCampaign.Array T size) : Result Bool :=
  .ok (decide (left.val = right.val))

def ne {T : Type} [DecidableEq T] {size : Usize} (elementEq : core.cmp.PartialEq T T)
    (left right : MacCampaign.Array T size) : Result Bool := do
  let equal ← eq elementEq left right
  .ok (!equal)

end core.array.equality.PartialEqArray

namespace core.num.U64

def wrapping_mul (left right : MacCampaign.U64) : MacCampaign.U64 :=
  MacCampaign.wrappingMul64 left right

/-- Exact maximum of Rust's `u64` in the executable fixed-width model. -/
def MAX : MacCampaign.U64 :=
  ⟨2 ^ 64 - 1, by simp [MacCampaign.u64Base]⟩

@[simp] theorem MAX_val : MAX.val = 2 ^ 64 - 1 := rfl

end core.num.U64

namespace core.num.U32

/-- Exact maximum of Rust's `u32`, represented by the pinned runtime's
`Std.U32 = Std.Usize` model. -/
def MAX : Aeneas.Std.U32 := ⟨2 ^ 32 - 1⟩

@[simp] theorem MAX_val : MAX.val = 2 ^ 32 - 1 := rfl

end core.num.U32

namespace core.num.U128

def wrapping_sub (left right : MacCampaign.U128) : MacCampaign.U128 :=
  MacCampaign.wrappingSub128 left right

end core.num.U128

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
