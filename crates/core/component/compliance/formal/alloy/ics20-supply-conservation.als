/*
 * ics20-supply-conservation.als — the IBC/ICS-20 value-bridge turnstile.
 *
 * Scope: design-level. Models the per-(channel, asset) escrow/supply counter
 * `ics20_value_balance` as an integer that every cross-boundary transfer
 * locks (value enters the shielded side) or releases (value leaves it). The
 * release transitions carry the runtime guard `value_balance >= amount` that
 * the Rust handler enforces before any unescrow/burn.
 *
 * The property: shielded supply minted/withdrawn across the boundary is always
 * backed one-for-one by escrowed deposits — cumulative release never exceeds
 * cumulative lock, so the counter never goes negative. A negative counter would
 * mean unbacked value left the turnstile (the Zcash June-2026 Orchard turnstile
 * failure mode).
 *
 * Sources of truth (Rust):
 *   crates/core/component/shielded-pool/src/component/transfer.rs
 *     - withdrawal_execute  (native escrow: balance += amt;
 *                            bridged burn-out: guard balance >= amt, balance -= amt)
 *     - recv mint/unescrow  (bridged mint-in: balance += amt;
 *                            native unescrow: guard balance >= amt, balance -= amt)
 *   state_key::ics20_value_balance::by_asset_id(channel, asset_id)
 *
 * The cryptographic/encoding fact behind a single counter per asset (distinct
 * denom traces map to distinct asset ids, so counters do not alias) is the
 * separate denom-trace injectivity obligation tested in Rust; see the
 * assumption ledger row ZK-ASSUME-ICS20-SUPPLY-CONSERVATION.
 *
 * Assertion:
 *   SupplyBackedByEscrow — under the release guard, the value-balance counter
 *   never goes negative across any trace of locks and releases.
 */

open util/ordering[Step]
open util/integer

abstract sig Op {}
// Value enters the shielded side: native asset escrowed out, or bridged asset
// minted in. balance += amt.
one sig Lock extends Op {}
// Value leaves the shielded side: native asset unescrowed back, or bridged
// voucher burned out. Guarded by `value_balance >= amount`. balance -= amt.
one sig Release extends Op {}

// Each step holds the counter value; op/amt are the transition applied to reach
// the next step (the last step carries no transition).
sig Step {
  balance: Int,
  op: lone Op,
  amt: lone Int,
}

fact Init { first.balance = 0 }

fact Transitions {
  all s: Step - last {
    // every non-terminal step applies exactly one positive-amount transition
    one s.op
    one s.amt
    gt[s.amt, 0]
    let sn = s.next {
      // Lock: balance += amt, excluding integer overflow wrap (checked_add).
      s.op = Lock implies {
        gt[plus[s.balance, s.amt], s.balance]
        sn.balance = plus[s.balance, s.amt]
      }
      // Release: the runtime guard requires balance >= amt before subtracting.
      s.op = Release implies {
        gte[s.balance, s.amt]
        sn.balance = minus[s.balance, s.amt]
      }
    }
  }
  no last.op
  no last.amt
}

assert SupplyBackedByEscrow {
  all s: Step | gte[s.balance, 0]
}

check SupplyBackedByEscrow for 8 but 7 int

// Non-vacuity: a real trace that both locks and releases value (a deposit
// followed by a backed withdrawal), so the check is not vacuously true.
pred show {
  some s: Step - last | s.op = Lock
  some s: Step - last | s.op = Release
}

run show for 8 but 7 int
