#!/usr/bin/env python3
"""Install checked SnarkPack models into the pinned hax F* proof library."""

from __future__ import annotations

import argparse
from pathlib import Path


def replace_once(path: Path, old: str, new: str) -> None:
    text = path.read_text(encoding="utf-8")
    count = text.count(old)
    if count != 1:
        raise SystemExit(f"{path}: expected one support-model target, found {count}")
    path.write_text(text.replace(old, new), encoding="utf-8")


def append_unique(path: Path, marker: str, block: str) -> None:
    text = path.read_text(encoding="utf-8")
    if marker in text:
        raise SystemExit(f"{path}: support symbol already exists: {marker}")
    path.write_text(text.rstrip() + "\n\n" + block.strip() + "\n", encoding="utf-8")


def trim_legacy_tail(path: Path, marker: str, symbols: tuple[str, ...]) -> None:
    """Remove the former generated assumption appendix during local upgrades."""
    text = path.read_text(encoding="utf-8")
    index = text.find(marker)
    if index < 0:
        return
    tail = text[index:]
    missing = [symbol for symbol in symbols if symbol not in tail]
    if missing:
        raise SystemExit(
            f"{path}: refusing to trim unrecognized legacy appendix; "
            f"missing {', '.join(missing)}"
        )
    path.write_text(text[:index].rstrip() + "\n", encoding="utf-8")


NUM_MODELS = {
    """assume
val impl_u32__from_le_bytes': bytes: t_Array u8 (mk_usize 4) -> u32
""": """let impl_u32__from_le_bytes'
      (bytes:t_Array u8 (mk_usize 4))
    : u32 =
  SnarkpackMachineSupport.u32_from_le_bytes bytes
""",
    """assume
val impl_u32__to_le_bytes': bytes: u32 -> t_Array u8 (mk_usize 4)
""": """let impl_u32__to_le_bytes'
      (bytes:u32)
    : t_Array u8 (mk_usize 4) =
  SnarkpackMachineSupport.u32_to_le_bytes bytes
""",
    """assume
val impl_u64__from_le_bytes': bytes: t_Array u8 (mk_usize 8) -> u64
""": """let impl_u64__from_le_bytes'
      (bytes:t_Array u8 (mk_usize 8))
    : u64 =
  SnarkpackMachineSupport.u64_from_le_bytes bytes
""",
    """assume
val impl_u64__to_le_bytes': bytes: u64 -> t_Array u8 (mk_usize 8)
""": """let impl_u64__to_le_bytes'
      (bytes:u64)
    : t_Array u8 (mk_usize 8) =
  SnarkpackMachineSupport.u64_to_le_bytes bytes
""",
}

NUM_LEMMAS = r"""
let impl_u32__is_power_of_two (x:u32) : bool =
  SnarkpackMachineSupport.u32_is_power_of_two x

let impl_u32__to_le_bytes_injective (x y:u32)
    : Lemma
      (requires impl_u32__to_le_bytes x == impl_u32__to_le_bytes y)
      (ensures x == y)
= SnarkpackMachineSupport.u32_to_le_bytes_injective x y

let impl_u32__from_to_le_bytes (x:u32)
    : Lemma
      (ensures impl_u32__from_le_bytes (impl_u32__to_le_bytes x) == x)
= SnarkpackMachineSupport.u32_from_to_le_bytes x

let impl_usize_u32_cast_roundtrip (x:usize)
    : Lemma
      (requires v x <= 4294967295)
      (ensures (cast (cast x <: u32) <: usize) == x)
= ()

let impl_usize__checked_add_ok (x y:usize)
    : Lemma
      (requires v x + v y <= max_usize)
      (ensures
        impl_usize__checked_add x y ==
        Core_models.Option.Option_Some (x +! y))
= ()

let impl_u64__to_le_bytes_injective (x y:u64)
    : Lemma
      (requires impl_u64__to_le_bytes x == impl_u64__to_le_bytes y)
      (ensures x == y)
= SnarkpackMachineSupport.u64_to_le_bytes_injective x y
"""

SLICE_LEMMAS = r"""
let impl__starts_with
      (#v_T:eqtype)
      (bytes prefix:t_Slice v_T)
    : bool =
  if FStar.Seq.length prefix <= FStar.Seq.length bytes
  then
    FStar.Seq.eq
      (FStar.Seq.slice bytes 0 (FStar.Seq.length prefix))
      prefix
  else false

let impl__starts_with_append
      (#v_T:eqtype)
      (prefix rest:t_Slice v_T)
    : Lemma
      (requires
        FStar.Seq.length prefix + FStar.Seq.length rest <=
        Rust_primitives.Integers.max_usize)
      (ensures
        impl__starts_with (FStar.Seq.append prefix rest) prefix == true)
= ()

let impl__get_middle_append3
      (#v_T:Type0)
      (prefix field suffix:t_Slice v_T)
    : Lemma
      (requires
        0 < FStar.Seq.length field /\
        Rust_primitives.Integers.v (impl__len prefix) +
        Rust_primitives.Integers.v (impl__len field) +
        Rust_primitives.Integers.v (impl__len suffix) <=
        Rust_primitives.Integers.max_usize)
      (ensures
        impl__get #v_T
          #(Core_models.Ops.Range.t_Range Rust_primitives.Integers.usize)
          (FStar.Seq.append prefix (FStar.Seq.append field suffix))
          ({
              Core_models.Ops.Range.f_start = impl__len prefix;
              Core_models.Ops.Range.f_end =
                impl__len prefix +! impl__len field
            } <: Core_models.Ops.Range.t_Range Rust_primitives.Integers.usize)
        ==
        Core_models.Option.Option_Some field)
=
  let tail = FStar.Seq.append field suffix in
  let whole = FStar.Seq.append prefix tail in
  assert (
    FStar.Seq.length tail ==
    FStar.Seq.length field + FStar.Seq.length suffix);
  assert (
    FStar.Seq.length whole ==
    FStar.Seq.length prefix +
    FStar.Seq.length field +
    FStar.Seq.length suffix);
  let start = FStar.Seq.length prefix in
  let stop = start + FStar.Seq.length field in
  FStar.Seq.Properties.append_slices prefix tail;
  FStar.Seq.Properties.append_slices field suffix;
  assert (
    FStar.Seq.equal
      field
      (FStar.Seq.slice tail 0 (FStar.Seq.length field)));
  assert (
    FStar.Seq.equal
      (FStar.Seq.slice tail 0 (FStar.Seq.length field))
      (FStar.Seq.slice whole start stop));
  FStar.Seq.lemma_eq_elim
    field
    (FStar.Seq.slice tail 0 (FStar.Seq.length field));
  FStar.Seq.lemma_eq_elim
    (FStar.Seq.slice tail 0 (FStar.Seq.length field))
    (FStar.Seq.slice whole start stop);
  ()
"""

CONVERT_LEMMA = r"""
let impl__try_into_array_self_slice
      (#v_T:Type0)
      (#v_N:Rust_primitives.Integers.usize)
      (bytes:t_Array v_T v_N)
    : Lemma
      (ensures
        f_try_into #(t_Slice v_T)
          #(t_Array v_T v_N)
          #FStar.Tactics.Typeclasses.solve
          (bytes <: t_Slice v_T)
        ==
        Core_models.Result.Result_Ok bytes)
=
  assert (
    Core_models.Slice.impl__len #v_T (bytes <: t_Slice v_T) ==
    v_N);
  let rebuilt =
    Rust_primitives.Slice.array_from_fn #v_T
      v_N
      #(Rust_primitives.Integers.usize -> v_T)
      (fun i ->
        Rust_primitives.Slice.slice_index #v_T
          (bytes <: t_Slice v_T)
          i)
  in
  assert (forall (i:nat{i < FStar.Seq.length rebuilt}).
    FStar.Seq.index rebuilt i == FStar.Seq.index bytes i);
  FStar.Seq.lemma_eq_intro rebuilt bytes;
  FStar.Seq.lemma_eq_elim rebuilt bytes;
  ()
"""


def install(proof_libs: Path) -> None:
    core = proof_libs / "core"
    num = core / "Core_models.Num.fst"
    slice_model = core / "Core_models.Slice.fst"
    convert = core / "Core_models.Convert.fst"
    for path in (num, slice_model, convert):
        if not path.is_file():
            raise SystemExit(f"missing pinned hax proof-library file: {path}")

    trim_legacy_tail(
        num,
        "\n\nassume val impl_u32__is_power_of_two",
        (
            "impl_u32__to_le_bytes_injective",
            "impl_u32__from_to_le_bytes",
            "impl_usize_u32_cast_roundtrip",
            "impl_usize__checked_add_ok",
            "impl_u64__to_le_bytes_injective",
        ),
    )
    trim_legacy_tail(
        slice_model,
        "\n\nassume val impl__starts_with",
        ("impl__starts_with_append", "impl__get_middle_append3"),
    )
    trim_legacy_tail(
        convert,
        "\n\nassume val impl__try_into_array_self_slice",
        ("impl__try_into_array_self_slice",),
    )

    for old, new in NUM_MODELS.items():
        replace_once(num, old, new)
    append_unique(num, "let impl_u32__is_power_of_two", NUM_LEMMAS)
    append_unique(slice_model, "let impl__starts_with\n", SLICE_LEMMAS)
    append_unique(
        convert,
        "let impl__try_into_array_self_slice",
        CONVERT_LEMMA,
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("proof_libs", type=Path)
    args = parser.parse_args()
    install(args.proof_libs)


if __name__ == "__main__":
    main()
