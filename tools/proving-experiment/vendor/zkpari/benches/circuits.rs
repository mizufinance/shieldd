//! Experiment 3 (phase 3b) — prover cost of the payment circuits (BLS12-381).
//!
//! Benchmarks the paper's private-transfer relations (`zkpari::circuits`)
//! under both collision-resistant hash instantiations, Pedersen/Jubjub and
//! Poseidon:
//!
//!   - *R_send*: three commitment openings plus range checks — no tree, no
//!     depth parameter. Account commitments are `Com_acct(b, root_null; r)`,
//!     so the owner's nullifier-tree root is bound inside the commitment and
//!     an account's entire public state is one hash.
//!
//!   - *R_recv*: carries all the hashing — the receipt's MMR opening at a
//!     witnessed position `pos` (path ordering driven by the bits of pos,
//!     depth fixed at 40), and the paper's `SMT.VerifyInsert` of that same
//!     position into the receiver's user-maintained sparse Merkle tree of
//!     claimed positions (the nullifier *is* the position: no PRF, no key).
//!     Both trees are keyed by the same 40-bit position, so they share one
//!     depth; the insertion is two hash chains of that depth.
//!     The tree roots are witnesses, bound inside `com` / `com'`; the
//!     statement is `(R, com, com', root_rho)`.
//!
//!   - *R_op*: the operation-hiding relation — a witness-selected OR of the
//!     send and receive branches over the shared statement
//!     `(A, com, com', rho, root_rho)`. Both branches share every gadget
//!     (the selector muxes the balance delta, roots, and published-receipt
//!     preimage, and gates the receive-only equalities), so the cost is
//!     operation-independent by construction; the rows here prove with the
//!     receive branch, the more constrained witness.
//!
//! The rows are produced once per hash backend (see `src/circuits/hasher.rs`):
//! Pedersen over Jubjub (8-bit byte windows, ~3.2k R1CS per node hash) and
//! Poseidon (width 3, alpha 5, 8 + 57 rounds, 240 R1CS per node hash).
//!
//! What stays native and unbenchmarked here: the ledger's root-history
//! check on the revealed receipt anchor (root_rho in the retained set of
//! recent roots), receiver registration, and R_reg entirely.
//!
//! The circuits are plain R1CS (ark-r1cs-std) fed through the R1CS-to-SR1CS
//! adapter, so both counts are reported: `r1cs` is what the gadgets emit,
//! `sr1cs` is what the prover pays for (each R1CS row splits into squares,
//! plus outlining rows; the FFT domain rounds up to a power of two).
//! `prove` includes circuit synthesis, as everywhere in these benches.
//!
//! Before the table, an end-to-end flow runs as a correctness gate (per
//! backend): Alice sends 300 to Bob (real prove/verify), the ledger
//! compare-and-swaps her (single) account commitment, appends the receipt
//! to the MMR, and records the new root in its history; Bob locates the
//! receipt's position in the public log, marks it claimed in his local
//! sparse Merkle tree, recommits `(b + v, root_null')`, and proves R_recv
//! against the recorded anchor. The receive submission is
//! `(R, com', root_rho, proof)` — no nullifier and no tree root on the
//! wire. Tampering with any public input of either statement is rejected,
//! a proof for the same receipt at a wrong position is rejected, a replay
//! of the same receive against Bob's updated commitment is rejected, and
//! a second claim of the same position is unwitnessable.
//!
//! Threads: single-threaded by default. Set `ZKPARI_BENCH_THREADS=0` for all
//! cores, or `=N` for N.
//!
//! Run with: cargo bench --bench circuits

mod common;

use ark_relations::gr1cs::{ConstraintSynthesizer, ConstraintSystem};
use ark_std::rand::{rngs::StdRng, Rng, SeedableRng};
use ark_std::UniformRand;

use common::*;
use zkpari::circuits::hasher::{HashCfg, HashKind};
use zkpari::circuits::merkle::{root_from_path, MerklePath, MerkleTree};
use zkpari::circuits::op::OpCircuit;
use zkpari::circuits::recv::RecvCircuit;
use zkpari::circuits::send::SendCircuit;
use zkpari::circuits::smt::{roots_from_siblings, SmtInsertion, SparseMerkleTree};
use zkpari::ZkPari;

/// Hash instantiations benchmarked, in table order.
const BACKENDS: &[HashKind] = &[HashKind::Pedersen, HashKind::Poseidon];

/// Width of the receipt-log position space, in bits: 2^40 receipts over
/// the system's lifetime (~4 months at 100K TPS).
///
/// This single parameter fixes both trees. The receipt tree's membership
/// path is `POSITION_BITS` hashes deep, and the per-account sparse Merkle
/// tree of claimed positions is keyed by the same position, so its depth is
/// the same width (the paper's `l` = bits of `pid`). Making the SMT deeper
/// than the receipt tree buys nothing: `alloc_position_bits` pins the extra
/// high bits to zero, so they could never be set. The SMT insertion costs
/// exactly 2 * POSITION_BITS node hashes; at 64 bits the Pedersen R_op would
/// cross into the 2^21 SR1CS domain.
const POSITION_BITS: usize = 40;

/// Depth of the global receipt tree (membership path).
const RECEIPT_DEPTH: usize = POSITION_BITS;

/// Depth of the per-account sparse Merkle tree of claimed positions.
const NULL_TREE_DEPTH: usize = POSITION_BITS;

const PROVE_ITERS: usize = 5;

fn main() {
    in_bench_pool(run);
}

struct Row {
    name: String,
    r1cs: Option<usize>,
    sr1cs: usize,
    instance_len: usize,
    domain: usize,
    keygen_ms: f64,
    prove_ms: f64,
    verify_us: f64,
    proof_bytes: usize,
}

/// Keygen/prove/verify a circuit and collect one table row.
/// `r1cs` is the pre-adapter constraint count (None for native SR1CS).
fn measure<C: ConstraintSynthesizer<Fr> + Clone>(
    name: &str,
    circuit: C,
    public_input: &[Fr],
    r1cs: Option<usize>,
    prove_iters: usize,
    rng: &mut StdRng,
) -> Row {
    eprint!("  {name:<24} keygen ...");
    let mut keys = None;
    let keygen_ms = median_ms(1, || {
        keys = Some(ZkPari::<E>::keygen(circuit.clone(), rng));
    });
    let (pk, vk) = keys.unwrap();

    eprint!(" prove x{prove_iters} ...");
    let mut proof = None;
    let prove_ms = median_ms(prove_iters, || {
        proof = Some(ZkPari::<E>::prove(circuit.clone(), &pk, rng).expect("proving failed"));
    });
    let proof = proof.unwrap();
    assert!(
        ZkPari::<E>::verify(&proof, &vk, public_input),
        "sanity verification failed for {name}"
    );

    eprint!(" verify ...");
    let verify_us = 1000.0
        * time_ms(100, 500, || {
            std::hint::black_box(ZkPari::<E>::verify(&proof, &vk, public_input));
        });
    eprintln!(" done");

    Row {
        name: name.to_string(),
        r1cs,
        sr1cs: vk.succinct_index.num_constraints,
        instance_len: vk.succinct_index.instance_len,
        domain: vk.domain.size as usize,
        keygen_ms,
        prove_ms,
        verify_us,
        proof_bytes: compressed_size(&proof),
    }
}

/// R1CS constraints a gadget circuit emits, before the SR1CS adapter.
/// Also asserts the witnessed instance actually satisfies the constraints,
/// catching native/in-circuit hash mismatches before the expensive keygen.
fn r1cs_count<C: ConstraintSynthesizer<Fr>>(circuit: C) -> usize {
    let cs = ConstraintSystem::<Fr>::new_ref();
    circuit
        .generate_constraints(cs.clone())
        .expect("synthesis failed");
    let count = cs.num_constraints();
    cs.finalize();
    assert_eq!(
        cs.is_satisfied(),
        Ok(true),
        "instance does not satisfy the circuit"
    );
    count
}

fn run() {
    println!("╔══════════════════════════════════════════════════════════════════════╗");
    println!("║  3b. ZK-Pari payment circuits — BLS12-381                            ║");
    println!("║      private transfer: R_send, R_recv, and operation-hiding R_op     ║");
    println!("║      position nullifiers + sparse Merkle tree; Pedersen vs Poseidon  ║");
    println!("╚══════════════════════════════════════════════════════════════════════╝");
    println!();
    println!("Threads: {}.", thread_label());
    println!("Hashes:   one collision-resistant hash for Merkle nodes and commitments,");
    println!("          instantiated as Pedersen/Jubjub (8-bit byte windows) or Poseidon");
    println!("          (width 3, alpha 5, 8 + 57 rounds). No PRF anywhere.");
    println!("Private transfer: nullifier = receipt position (pid); the receiver marks");
    println!("          it claimed in a sparse Merkle tree over the {POSITION_BITS}-bit position");
    println!("          space, verified in-circuit (SMT.VerifyInsert: 2 x {POSITION_BITS} node");
    println!("          hashes); the tree root lives inside the account commitment.");
    println!("          Receipt-tree opening has the same depth ({POSITION_BITS}) and is bound");
    println!("          to the witnessed position.");
    println!("R_op:     one circuit for both operations; a witness bit selects the");
    println!("          branch, so sends and receives are indistinguishable on the");
    println!("          wire and cost the same to prove.");
    println!();

    let mut rng = StdRng::seed_from_u64(20_260_825);

    // Fast satisfiability gate at toy depths, per backend: catches
    // native/in-circuit hash mismatches (and R_op branch-shape drift) in
    // seconds, before any keygen.
    for &kind in BACKENDS {
        let cfg = HashCfg::of(kind);
        r1cs_count(random_send(&cfg, &mut rng));
        r1cs_count(random_recv(&cfg, 6, 8, &mut rng));
        let n_send = r1cs_count(random_op_send(&cfg, 6, 8, &mut rng));
        let n_recv = r1cs_count(random_op_receive(&cfg, 6, 8, &mut rng));
        assert_eq!(
            n_send, n_recv,
            "{kind:?}: R_op branches must synthesize the same constraint count"
        );
    }

    for &kind in BACKENDS {
        e2e_flow(kind, &mut rng);
    }

    // ── Benchmark table ─────────────────────────────────────────────────
    let mut rows = Vec::new();

    for &kind in BACKENDS {
        let cfg = HashCfg::of(kind);
        let label = cfg.kind().label();

        let send = random_send(&cfg, &mut rng);
        rows.push(measure(
            &format!("R_send {label}"),
            send.clone(),
            &send.public_input(),
            Some(r1cs_count(send.clone())),
            PROVE_ITERS,
            &mut rng,
        ));

        let recv = random_recv(&cfg, RECEIPT_DEPTH, NULL_TREE_DEPTH, &mut rng);
        rows.push(measure(
            &format!("R_recv {label}"),
            recv.clone(),
            &recv.public_input(),
            Some(r1cs_count(recv.clone())),
            PROVE_ITERS,
            &mut rng,
        ));

        let op = random_op_receive(&cfg, RECEIPT_DEPTH, NULL_TREE_DEPTH, &mut rng);
        rows.push(measure(
            &format!("R_op {label}"),
            op.clone(),
            &op.public_input(),
            Some(r1cs_count(op.clone())),
            PROVE_ITERS,
            &mut rng,
        ));
    }

    println!();
    println!("  circuit                  │    r1cs │    sr1cs │   domain │ |x| │ keygen ms │ prove ms │ verify us │ proof B");
    println!("  ─────────────────────────┼─────────┼──────────┼──────────┼─────┼───────────┼──────────┼───────────┼────────");
    for r in &rows {
        println!(
            "  {:<24} │ {:>7} │ {:>8} │ {:>8} │ {:>3} │ {:>9.1} │ {:>8.1} │ {:>9.1} │ {:>6}",
            r.name,
            r.r1cs.map_or_else(|| "—".to_string(), |n| n.to_string()),
            r.sr1cs,
            r.domain,
            r.instance_len,
            r.keygen_ms,
            r.prove_ms,
            r.verify_us,
            r.proof_bytes,
        );
    }
    println!();
    println!(
        "  Receipt tree depth {RECEIPT_DEPTH}; nullifier SMT depth {NULL_TREE_DEPTH}. \
         |x| counts the leading constant 1. Proofs are 2 G1 + 1 F."
    );
    println!();
}

// ── Random instances for the table ──────────────────────────────────────

fn random_send(cfg: &HashCfg, rng: &mut StdRng) -> SendCircuit {
    let b = rng.gen_range(1u64..u64::MAX / 2);
    SendCircuit {
        cfg: cfg.clone(),
        sen: Fr::rand(rng),
        b,
        v: rng.gen_range(1..=b),
        root_null: Fr::rand(rng),
        r: Fr::rand(rng),
        r_new: Fr::rand(rng),
        r_receipt: Fr::rand(rng),
        rec: Fr::rand(rng),
    }
}

/// A receiver's nullifier tree with a few earlier receipts (at positions
/// below the receipt-tree range) already claimed.
fn random_null_tree(
    cfg: &HashCfg,
    receipt_depth: usize,
    null_depth: usize,
    rng: &mut StdRng,
) -> SparseMerkleTree {
    let mut null_tree = SparseMerkleTree::new(cfg, null_depth);
    let bound = 1u64 << receipt_depth;
    let mut claimed = std::collections::HashSet::new();
    while claimed.len() < 3 {
        let pid = rng.gen_range(8..bound);
        if claimed.insert(pid) {
            null_tree.insert(pid);
        }
    }
    null_tree
}

fn random_recv(
    cfg: &HashCfg,
    receipt_depth: usize,
    null_depth: usize,
    rng: &mut StdRng,
) -> RecvCircuit {
    let mut null_tree = random_null_tree(cfg, receipt_depth, null_depth, rng);

    let mut recv = RecvCircuit {
        cfg: cfg.clone(),
        rec: Fr::rand(rng),
        root: Fr::from(0u64), // set below
        b: rng.gen_range(0u64..u64::MAX / 2),
        v: rng.gen_range(1u64..u64::MAX / 4),
        r: Fr::rand(rng),
        r_new: Fr::rand(rng),
        r_receipt: Fr::rand(rng),
        sen: Fr::rand(rng),
        pos: 0, // set below
        path: MerklePath {
            siblings: vec![],
            index_bits: vec![],
        },
        null_insert: SmtInsertion::placeholder(),
    };

    // A small receipt tree with unrelated receipts around ours.
    let mut tree = MerkleTree::new(cfg, receipt_depth);
    for _ in 0..3 {
        tree.append(Fr::rand(rng));
    }
    let index = tree.append(recv.receipt());
    for _ in 0..3 {
        tree.append(Fr::rand(rng));
    }
    recv.pos = index as u64;
    recv.root = tree.root();
    recv.path = tree.path(index);

    // The nullifier is the position, so it is claimed only now.
    recv.attach_nullifier_insertion(&mut null_tree);
    recv
}

fn random_op_send(
    cfg: &HashCfg,
    receipt_depth: usize,
    null_depth: usize,
    rng: &mut StdRng,
) -> OpCircuit {
    let b = rng.gen_range(1u64..u64::MAX / 2);
    let mut op = OpCircuit {
        cfg: cfg.clone(),
        is_send: true,
        acct: Fr::rand(rng),
        b,
        v: rng.gen_range(1..=b),
        r: Fr::rand(rng),
        r_new: Fr::rand(rng),
        root_null: Fr::rand(rng),
        counterparty: Fr::rand(rng),
        r_receipt: Fr::rand(rng),
        r_dummy: Fr::rand(rng),
        root: Fr::rand(rng), // unconstrained on the send branch
        pos: 0,
        path: MerklePath::empty(receipt_depth),
        null_insert: SmtInsertion::placeholder(),
    };
    op.attach_dummy_insertion(null_depth);
    op
}

fn random_op_receive(
    cfg: &HashCfg,
    receipt_depth: usize,
    null_depth: usize,
    rng: &mut StdRng,
) -> OpCircuit {
    let mut null_tree = random_null_tree(cfg, receipt_depth, null_depth, rng);

    let mut op = OpCircuit {
        cfg: cfg.clone(),
        is_send: false,
        acct: Fr::rand(rng),
        b: rng.gen_range(0u64..u64::MAX / 2),
        v: rng.gen_range(1u64..u64::MAX / 4),
        r: Fr::rand(rng),
        r_new: Fr::rand(rng),
        root_null: Fr::from(0u64), // ignored on the receive branch
        counterparty: Fr::rand(rng),
        r_receipt: Fr::rand(rng),
        r_dummy: Fr::rand(rng),
        root: Fr::from(0u64), // set below
        pos: 0,               // set below
        path: MerklePath {
            siblings: vec![],
            index_bits: vec![],
        },
        null_insert: SmtInsertion::placeholder(),
    };

    let mut tree = MerkleTree::new(cfg, receipt_depth);
    for _ in 0..3 {
        tree.append(Fr::rand(rng));
    }
    let index = tree.append(op.receipt_in());
    for _ in 0..3 {
        tree.append(Fr::rand(rng));
    }
    op.pos = index as u64;
    op.root = tree.root();
    op.path = tree.path(index);
    op.attach_nullifier_insertion(&mut null_tree);
    op
}

// ── End-to-end correctness gate ─────────────────────────────────────────

fn e2e_flow(kind: HashKind, rng: &mut StdRng) {
    let cfg = HashCfg::of(kind);

    println!(
        "End-to-end private transfer [{}] (receipts d{RECEIPT_DEPTH}, nullifier SMT \
         d{NULL_TREE_DEPTH}): Alice sends 300 to Bob",
        kind.label()
    );

    // Trusted setup, one CRS per relation. Keygen only needs the circuit
    // *shape* (tree depths), so any instance of the right depths works.
    let (send_pk, send_vk) = ZkPari::<E>::keygen(random_send(&cfg, rng), rng);
    let (recv_pk, recv_vk) = ZkPari::<E>::keygen(
        RecvCircuit::blank(&cfg, RECEIPT_DEPTH, NULL_TREE_DEPTH),
        rng,
    );

    // Global ledger state: the receipt MMR and the retained root history
    // (the W most recent roots; receive anchors must be in it).
    let mut receipt_tree = MerkleTree::new(&cfg, RECEIPT_DEPTH);
    let mut root_history: Vec<Fr> = vec![receipt_tree.root()];
    for _ in 0..5 {
        let noise = Fr::rand(rng);
        receipt_tree.append(noise); // receipts of other users
        root_history.push(receipt_tree.root());
    }

    // Registration commits the empty-tree root inside the account
    // commitment: Com_acct(Init[A], root_empty; r_A). The ledger stores
    // exactly one commitment per account.
    let empty_root = SparseMerkleTree::new(&cfg, NULL_TREE_DEPTH).root();
    let alice = SendCircuit {
        cfg: cfg.clone(),
        sen: Fr::rand(rng),
        b: 1000,
        v: 300,
        root_null: empty_root,
        r: Fr::rand(rng),
        r_new: Fr::rand(rng),
        r_receipt: Fr::rand(rng),
        rec: Fr::rand(rng), // Bob's identifier
    };
    let mut ledger_alice = alice.com();

    let bob_r = Fr::rand(rng);
    let mut bob_null_tree = SparseMerkleTree::new(&cfg, NULL_TREE_DEPTH);
    assert_eq!(bob_null_tree.root(), empty_root);

    // 1. Alice proves R_send; the ledger verifies, compare-and-swaps her
    //    single commitment (nullifier-tree root unchanged), appends rho to
    //    the receipt MMR, and records the new root in its history.
    //    Statement order: (S, com, com', rho).
    let send_proof = ZkPari::<E>::prove(alice.clone(), &send_pk, rng).expect("send proving failed");
    let send_x = alice.public_input();
    assert!(
        ZkPari::<E>::verify(&send_proof, &send_vk, &send_x),
        "send proof rejected"
    );
    assert_eq!(
        send_x[1], ledger_alice,
        "statement must open Alice's account"
    );
    ledger_alice = send_x[2]; // swap in com'
    let receipt_index = receipt_tree.append(send_x[3]); // rho joins the MMR
    root_history.push(receipt_tree.root());
    let anchor = *root_history.last().unwrap();

    // 2. Alice forwards the opening (rho, v, S, R, r'') privately. Bob
    //    locates rho's position in the public log, marks that position
    //    claimed in his local sparse Merkle tree, recommits
    //    (b + v, root_null'), and proves R_recv against the latest anchor.
    //    The submission is (R, com', root_rho, proof) — no nullifier and no
    //    tree root on the wire. Statement order: (R, com, com', root_rho).
    let mut bob = RecvCircuit {
        cfg: cfg.clone(),
        rec: alice.rec,
        root: anchor,
        b: 500,
        v: alice.v,
        r: bob_r,
        r_new: Fr::rand(rng),
        r_receipt: alice.r_receipt,
        sen: alice.sen,
        pos: receipt_index as u64,
        path: receipt_tree.path(receipt_index),
        null_insert: SmtInsertion::placeholder(),
    };
    bob.attach_nullifier_insertion(&mut bob_null_tree);
    // Register Bob: one commitment, empty-tree root bound inside it.
    let mut ledger_bob = bob.com();
    assert_eq!(bob.null_insert.old_root, empty_root);

    assert_eq!(
        bob.receipt(),
        alice.receipt(),
        "receipt must reconstruct identically on both sides"
    );
    assert_eq!(
        root_from_path(&cfg, bob.receipt(), &bob.path),
        anchor,
        "native path check failed"
    );
    assert_eq!(
        roots_from_siblings(&cfg, bob.pos, &bob.null_insert.siblings),
        (bob.null_insert.old_root, bob.null_insert.new_root),
        "native VerifyInsert check failed"
    );

    let recv_proof = ZkPari::<E>::prove(bob.clone(), &recv_pk, rng).expect("recv proving failed");
    let recv_x = bob.public_input();
    assert!(
        ZkPari::<E>::verify(&recv_proof, &recv_vk, &recv_x),
        "recv proof rejected"
    );
    assert!(
        root_history.contains(&recv_x[3]),
        "revealed anchor must be in the ledger's root history"
    );
    assert_eq!(recv_x[1], ledger_bob, "statement must open Bob's account");
    ledger_bob = recv_x[2]; // swap in com'
    assert_eq!(
        ledger_bob,
        bob.com_new(),
        "credited commitment must open to (b + v, root_null')"
    );
    assert_eq!(
        bob.null_insert.new_root,
        bob_null_tree.root(),
        "committed root must match Bob's updated tree"
    );

    // 3. Tampering with *any* public input of either statement must be
    //    rejected.
    for i in 0..recv_x.len() {
        let mut bad = recv_x.clone();
        bad[i] = Fr::rand(rng);
        assert!(
            !ZkPari::<E>::verify(&recv_proof, &recv_vk, &bad),
            "tampered recv statement slot {i} accepted"
        );
    }
    for i in 0..send_x.len() {
        let mut bad = send_x.clone();
        bad[i] = Fr::rand(rng);
        assert!(
            !ZkPari::<E>::verify(&send_proof, &send_vk, &bad),
            "tampered send statement slot {i} accepted"
        );
    }

    // 4. The same receipt at a wrong position must be rejected: the MMR
    //    opening pins rho to its true position, and the position is the
    //    nullifier. Slot 0 holds another user's receipt, so no witness
    //    exists — the constraint system is unsatisfiable, and a proof
    //    forced from the bad witness fails verification.
    let mut cheat = bob.clone();
    cheat.pos = 0;
    cheat.path = receipt_tree.path(0);
    let mut cheat_tree = SparseMerkleTree::new(&cfg, NULL_TREE_DEPTH); // Bob's pre-receive state
    cheat.attach_nullifier_insertion(&mut cheat_tree);
    assert_unsatisfiable(cheat.clone(), "wrong-position witness must not satisfy R_recv");
    if let Ok(forged) = ZkPari::<E>::prove(cheat.clone(), &recv_pk, rng) {
        assert!(
            !ZkPari::<E>::verify(&forged, &recv_vk, &cheat.public_input()),
            "wrong-position proof accepted"
        );
    }

    // 5. Replaying the same receive against Bob's updated commitment is
    //    rejected: the original statement's `com` no longer matches the
    //    ledger, and rebinding the proof to the current commitment fails
    //    verification.
    assert_ne!(
        recv_x[1], ledger_bob,
        "replay: old com must no longer match the ledger"
    );
    let mut replay = recv_x.clone();
    replay[1] = ledger_bob;
    assert!(
        !ZkPari::<E>::verify(&recv_proof, &recv_vk, &replay),
        "replay against updated commitment accepted"
    );

    // 6. A second claim of the same position against Bob's *current*
    //    commitment is unwitnessable: the position is already 1 under the
    //    committed root, so the leaf-0 chain of VerifyInsert cannot reach
    //    it. (The honest wallet refuses outright; here we forge the best
    //    possible witness — true siblings, current root — and check the
    //    circuit rejects it.)
    let mut double = bob.clone();
    double.b = bob.b + bob.v;
    double.r = bob.r_new;
    double.r_new = Fr::rand(rng);
    let siblings = bob_null_tree.siblings(double.pos);
    let (_, new_root) = roots_from_siblings(&cfg, double.pos, &siblings);
    double.null_insert = SmtInsertion {
        old_root: bob_null_tree.root(),
        new_root,
        pid: double.pos,
        siblings,
    };
    assert_eq!(double.com(), ledger_bob, "double-claim opens the current com");
    assert_unsatisfiable(double, "double-receive witness must not satisfy R_recv");

    // Keep the linter honest about the updated ledger state.
    let _ = ledger_alice;

    println!("  send + receive verified, ledger stores one commitment per account,");
    println!("  tampering, wrong-position, receive-replay, and double-claim rejected");
    println!();
}

fn assert_unsatisfiable<C: ConstraintSynthesizer<Fr>>(circuit: C, msg: &str) {
    let cs = ConstraintSystem::<Fr>::new_ref();
    circuit
        .generate_constraints(cs.clone())
        .expect("synthesis failed");
    cs.finalize();
    assert_eq!(cs.is_satisfied(), Ok(false), "{msg}");
}
