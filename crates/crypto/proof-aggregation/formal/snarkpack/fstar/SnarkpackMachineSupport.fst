module SnarkpackMachineSupport

#set-options "--fuel 0 --ifuel 1 --z3rlimit 60"

open FStar.Mul
open Rust_primitives
open Rust_primitives.Arrays
open Rust_primitives.Integers

module Endian = FStar.Endianness
module Seq = FStar.Seq
module SeqProps = FStar.Seq.Properties

let fstar_bytes_of_hax (bytes:Seq.seq u8) : Seq.seq FStar.UInt8.t =
  SeqProps.map_seq (fun byte -> to_uint8 byte) bytes

let hax_bytes_of_fstar (bytes:Seq.seq FStar.UInt8.t) : Seq.seq u8 =
  SeqProps.map_seq (fun byte -> from_uint8 byte) bytes

let fstar_hax_byte_roundtrip (byte:FStar.UInt8.t)
    : Lemma (ensures to_uint8 (from_uint8 byte) == byte)
= ()

let fstar_hax_bytes_roundtrip_index
      (bytes:Seq.seq FStar.UInt8.t)
      (i:nat{
        i < Seq.length bytes /\
        i < Seq.length (fstar_bytes_of_hax (hax_bytes_of_fstar bytes))
      })
    : Lemma
      (ensures
        Seq.index
          (fstar_bytes_of_hax (hax_bytes_of_fstar bytes))
          i
        ==
        Seq.index bytes i)
      [SMTPat
        (Seq.index
          (fstar_bytes_of_hax (hax_bytes_of_fstar bytes))
          i)]
=
  SeqProps.map_seq_len (fun byte -> from_uint8 byte) bytes;
  SeqProps.map_seq_index (fun byte -> from_uint8 byte) bytes i;
  SeqProps.map_seq_index
    (fun byte -> to_uint8 byte)
    (hax_bytes_of_fstar bytes)
    i;
  fstar_hax_byte_roundtrip (Seq.index bytes i)

let fstar_hax_bytes_roundtrip (bytes:Seq.seq FStar.UInt8.t)
    : Lemma
      (ensures
        fstar_bytes_of_hax (hax_bytes_of_fstar bytes) == bytes)
=
  SeqProps.map_seq_len (fun byte -> from_uint8 byte) bytes;
  SeqProps.map_seq_len
    (fun byte -> to_uint8 byte)
    (hax_bytes_of_fstar bytes);
  assert (
    Seq.length (fstar_bytes_of_hax (hax_bytes_of_fstar bytes)) ==
    Seq.length bytes);
  assert (forall (i:nat).
    i < Seq.length (fstar_bytes_of_hax (hax_bytes_of_fstar bytes)) ==>
    Seq.index
      (fstar_bytes_of_hax (hax_bytes_of_fstar bytes))
      i
    ==
    Seq.index bytes i);
  Seq.lemma_eq_intro
    (fstar_bytes_of_hax (hax_bytes_of_fstar bytes))
    bytes;
  Seq.lemma_eq_elim
    (fstar_bytes_of_hax (hax_bytes_of_fstar bytes))
    bytes

let u32_to_le_bytes (x:u32) : t_Array u8 (mk_usize 4) =
  let bytes = Endian.n_to_le 4 (v x) in
  SeqProps.map_seq_len (fun byte -> from_uint8 byte) bytes;
  hax_bytes_of_fstar bytes

let u32_from_le_bytes (bytes:t_Array u8 (mk_usize 4)) : u32 =
  let fstar_bytes = fstar_bytes_of_hax bytes in
  SeqProps.map_seq_len (fun byte -> to_uint8 byte) bytes;
  Endian.lemma_le_to_n_is_bounded fstar_bytes;
  pow2_values 32;
  mk_u32 (Endian.le_to_n fstar_bytes)

let u64_to_le_bytes (x:u64) : t_Array u8 (mk_usize 8) =
  let bytes = Endian.n_to_le 8 (v x) in
  SeqProps.map_seq_len (fun byte -> from_uint8 byte) bytes;
  hax_bytes_of_fstar bytes

let u64_from_le_bytes (bytes:t_Array u8 (mk_usize 8)) : u64 =
  let fstar_bytes = fstar_bytes_of_hax bytes in
  SeqProps.map_seq_len (fun byte -> to_uint8 byte) bytes;
  Endian.lemma_le_to_n_is_bounded fstar_bytes;
  pow2_values 64;
  mk_u64 (Endian.le_to_n fstar_bytes)

let u32_from_to_le_bytes (x:u32)
    : Lemma (ensures u32_from_le_bytes (u32_to_le_bytes x) == x)
=
  let encoded = Endian.n_to_le 4 (v x) in
  fstar_hax_bytes_roundtrip encoded

let u32_to_le_bytes_injective (x y:u32)
    : Lemma
      (requires u32_to_le_bytes x == u32_to_le_bytes y)
      (ensures x == y)
=
  u32_from_to_le_bytes x;
  u32_from_to_le_bytes y

let u64_from_to_le_bytes (x:u64)
    : Lemma (ensures u64_from_le_bytes (u64_to_le_bytes x) == x)
=
  let encoded = Endian.n_to_le 8 (v x) in
  fstar_hax_bytes_roundtrip encoded

let u64_to_le_bytes_injective (x y:u64)
    : Lemma
      (requires u64_to_le_bytes x == u64_to_le_bytes y)
      (ensures x == y)
=
  u64_from_to_le_bytes x;
  u64_from_to_le_bytes y

let u32_is_power_of_two (x:u32) : bool =
  x =. mk_u32 1 ||
  x =. mk_u32 2 ||
  x =. mk_u32 4 ||
  x =. mk_u32 8 ||
  x =. mk_u32 16 ||
  x =. mk_u32 32 ||
  x =. mk_u32 64 ||
  x =. mk_u32 128 ||
  x =. mk_u32 256 ||
  x =. mk_u32 512 ||
  x =. mk_u32 1024 ||
  x =. mk_u32 2048 ||
  x =. mk_u32 4096 ||
  x =. mk_u32 8192 ||
  x =. mk_u32 16384 ||
  x =. mk_u32 32768 ||
  x =. mk_u32 65536 ||
  x =. mk_u32 131072 ||
  x =. mk_u32 262144 ||
  x =. mk_u32 524288 ||
  x =. mk_u32 1048576 ||
  x =. mk_u32 2097152 ||
  x =. mk_u32 4194304 ||
  x =. mk_u32 8388608 ||
  x =. mk_u32 16777216 ||
  x =. mk_u32 33554432 ||
  x =. mk_u32 67108864 ||
  x =. mk_u32 134217728 ||
  x =. mk_u32 268435456 ||
  x =. mk_u32 536870912 ||
  x =. mk_u32 1073741824 ||
  x =. mk_u32 2147483648
