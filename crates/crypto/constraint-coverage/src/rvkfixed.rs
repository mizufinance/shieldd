//! Fixed-base RVK ladder: per-rung deployed-row → `FixedStepRel` certificate
//! emission (const-folded deployed slice).
//!
//! Each fused rung is a uniform 5-row block `[v2, addX, addY, selX, selY]` over
//! the seed bit `b0` and the carried select-delta accumulators `s_x,s_y`. The
//! deployed rows bake folded constant coefficients; this module reads them off
//! the rows and emits, per rung `i`, the Fact-free `decide` coefficient-binding
//! lemmas plus the `rung{i}` theorem feeding
//! `RvkFixedBaseRung.fixedRung_fixedStepRel`, exactly per the validated
//! `Deployed/_design/RvkFixedRungCertTemplate.lean`. The inductive (growing
//! accumulator) rungs use the deterministic `a_eq_neg_one` normalization — no
//! per-rung numeric correction.

use crate::ir::{Constraint, Term};

/// decaf377 generator + curve constants (BLS12-377 scalar field literals).
const GX: &str = "4959445789346820725352484487855828915252512307947624787834978378872129235627";
const GYM1: &str = "6060471950081851567114691557659790004756535011754163002297540472747064943287";
/// Order − 1 (the baked `EdwardsBridge.a`).
const A_LIT: &str = "8444461749428370424248824938781546531375899335154063827935233455917409239040";

/// Coefficient of `wire` in `side` (the deployed-baked literal), or `None`.
fn coeff_at(side: &[Term], wire: usize) -> Option<&str> {
    side.iter()
        .find(|t| t.wire == wire)
        .map(|t| t.coeff.as_str())
}

/// First term whose wire is neither `0` nor `skip` — the carried-delta slot.
fn first_delta_coeff(side: &[Term], skip: usize) -> Option<&str> {
    side.iter()
        .find(|t| t.wire != 0 && t.wire != skip)
        .map(|t| t.coeff.as_str())
}

/// One emitted rung certificate (Lean source), split so the `decide` bindings
/// land Fact-free (outside the `Fact (Nat.Prime Order)` section, which breaks
/// `decide` on free variables) and the theorem lands inside it.
pub struct RungCert {
    pub i: usize,
    /// Fact-free `decide` coefficient bindings + the `accI` def.
    pub bindings: String,
    /// The in-section narrow `rungI` theorem (single folded `d1x`/`d1y`).
    pub theorem: String,
    /// The in-section `rungI_wide` binder: takes the actual wide deployed rows
    /// (one term per carried delta wire) and discharges `rungI` by setting
    /// `d1x`/`d1y` to the explicit wire sums (`linear_combination` over the raw
    /// rows). Empty for the base rung (no carried wires — `theorem` already
    /// binds the raw rows directly).
    pub wide: String,
    /// Structured wire/coefficient data for the raw-row instantiation
    /// (`inst_rvk_raw_sound`), which threads `onCurve` forward and applies each
    /// `rungI`/`rungI_wide` to the explicit deployed wire values.
    pub raw: RawData,
}

/// Per-rung wire ids + folded coefficients, read off the deployed rows. Lets
/// `emit_raw_sound` reconstruct each rung's raw row equations (one term per
/// carried wire) and the `rungI_wide` application without re-parsing.
pub struct RawData {
    pub bit: usize,
    pub v2w: usize,
    pub sx: usize,
    pub sy: usize,
    pub sdx: usize,
    pub sdy: usize,
    pub cix: String,
    pub ciy: String,
    pub alpha: String,
    pub db0: String,
    pub eb0: String,
    pub fb0: String,
    pub neg_gx: String,
    pub one_minus_gy: String,
    /// Inductive rungs only: shared carried-x coefficient and the carried wire ids.
    pub cw5: Option<String>,
    pub xw: Vec<usize>,
    pub yw: Vec<usize>,
}

/// Wires carried into `side` (everything but the constant `0` and the seed `b0`).
fn carried_wires(side: &[Term], b0: usize) -> Vec<usize> {
    side.iter()
        .filter(|t| t.wire != 0 && t.wire != b0)
        .map(|t| t.wire)
        .collect()
}

/// Emit the per-rung certificate for fused rung `i` (1-based), whose 5 rows are
/// `rows[base .. base+5]`, over seed bit `b0`. `i == 1` is the base case (no
/// carried accumulator); `i >= 2` is the inductive growing-accumulator case.
pub fn emit_rung(i: usize, rows: &[Constraint], base: usize, b0: usize) -> Option<RungCert> {
    emit_rung_cfg(
        i,
        rows,
        base,
        b0,
        GX,
        GYM1,
        "RvkFixedBaseLadder.FixedStepRel",
        "RvkFixedBaseRung.fixedRung_fixedStepRel",
    )
}

/// `emit_rung` over an arbitrary fixed base: `gx`/`gym1` are the generator's
/// `x`/`y-1` literals baked into the rows, `fsr` the per-rung step-relation
/// target, `kern` the row→step keystone (same argument shape as
/// `RvkFixedBaseRung.fixedRung_fixedStepRel`). The literal module opened by the
/// header must define `L{i}`/`C_eq_L{i}` for the same base.
#[allow(non_snake_case, clippy::too_many_arguments)]
pub fn emit_rung_cfg(
    i: usize,
    rows: &[Constraint],
    base: usize,
    b0: usize,
    gx: &str,
    gym1: &str,
    fsr: &str,
    kern: &str,
) -> Option<RungCert> {
    if base + 5 > rows.len() {
        return None;
    }
    let v2 = &rows[base];
    let add_x = &rows[base + 1];
    let add_y = &rows[base + 2];
    let sel_x = &rows[base + 3];
    let sel_y = &rows[base + 4];
    // Fused-rung fingerprint: v2.O single wire, addX/addY const operand, two
    // selects keyed by the same bit. The native `acc + ak` tail fails this.
    let is_rung = v2.o.len() == 1
        && coeff_at(&v2.r, 0).is_some()
        && coeff_at(&add_x.o, 0).is_some()
        && coeff_at(&add_y.o, 0).is_some()
        && sel_x.l.len() == 1
        && sel_y.l.len() == 1
        && sel_x.l[0].wire == sel_y.l[0].wire;
    if !is_rung {
        return None;
    }

    let bit = sel_x.l[0].wire;
    let v2w = v2.o[0].wire;
    let sx = add_x.l[0].wire;
    let sy = add_y.l[0].wire;
    let sdx = sel_x.o[0].wire;
    let sdy = sel_y.o[0].wire;

    let cix = coeff_at(&v2.r, 0).expect("v2.R const = Cix").to_owned();
    let ciy = coeff_at(&add_y.o, 0)
        .expect("addY.O const = Ciy")
        .to_owned();
    let alpha = coeff_at(&v2.l, b0).expect("v2.L @ b0").to_owned();
    let db0 = coeff_at(&v2.r, b0).expect("v2.R @ b0").to_owned();
    let eb0 = coeff_at(&add_x.o, b0).expect("addX.O @ b0").to_owned();
    let fb0 = coeff_at(&add_y.o, b0).expect("addY.O @ b0").to_owned();
    let neg_gx = coeff_at(&sel_x.r, b0).expect("selX.R @ b0").to_owned();
    let one_minus_gy = coeff_at(&sel_y.r, b0).expect("selY.R @ b0").to_owned();

    // Shared bindings (negGx, oneMinusGy) — identical for every rung; the emitter
    // asserts that here and the caller writes them once.
    let mut s = String::new();
    let nm = format!("rung{i}");

    if i == 1 {
        // Base case: acc1 = ⟨Gx·b0, 1+Gym1·b0⟩, no carried accumulator, single-term
        // v2 factors (no `cw5` slot).
        s.push_str(&format!(
            "theorem e_a_{i} : ({alpha} : EdwardsBridge.F) = 3021 * {ciy} * {gx} := by decide\n"
        ));
        s.push_str(&format!(
            "theorem e_db_{i} : ({db0} : EdwardsBridge.F) = {cix} * {gym1} := by decide\n"
        ));
        s.push_str(&format!(
            "theorem e_eb_{i} : ({eb0} : EdwardsBridge.F) = {ciy} * {gx} + {cix} * {gym1} := by decide\n"
        ));
        s.push_str(&format!(
            "theorem e_fb_{i} : ({fb0} : EdwardsBridge.F) = (-1) * {ciy} * {gx} - {cix} * {gym1} + ({gym1} - {gx} * (-1)) * ({cix} + {ciy}) := by decide\n"
        ));
        s.push_str(&format!(
            "noncomputable def acc{i} (b0 : EdwardsBridge.F) : Point := ⟨{gx}*b0, 1+{gym1}*b0⟩\n"
        ));
        s.push_str(&format!("theorem {nm}\n"));
        s.push_str(&format!(
            "    (b0 bit{i} v2 sx sy sdx sdy : EdwardsBridge.F)\n"
        ));
        s.push_str(&format!("    (hacc : onCurve (acc{i} b0))\n"));
        s.push_str(&format!(
            "    (h_v2 : ({alpha}*b0)*({cix} + {db0}*b0) = v2)\n"
        ));
        s.push_str(&format!("    (h_addX : sx*(1 + v2) = {cix} + {eb0}*b0)\n"));
        s.push_str(&format!(
            "    (h_addY : sy*(1 + (-1)*v2) = {ciy} + {fb0}*b0)\n"
        ));
        s.push_str(&format!(
            "    (h_selX : (1*bit{i})*({neg_gx}*b0 + sx) = sdx)\n"
        ));
        s.push_str(&format!(
            "    (h_selY : (1*bit{i})*((-1) + {one_minus_gy}*b0 + sy) = sdy)\n"
        ));
        s.push_str(&format!(
            "    (hbit : (1*bit{i})*(1 + (-1)*bit{i}) = 0) :\n"
        ));
        s.push_str(&format!(
            "    {fsr} {i} bit{i} (acc{i} b0) ⟨{gx}*b0 + sdx, (1+{gym1}*b0) + sdy⟩ := by\n"
        ));
        s.push_str(&format!("  simp only [e_a_{i}, e_db_{i}] at h_v2\n"));
        s.push_str(&format!("  simp only [e_eb_{i}] at h_addX\n"));
        s.push_str(&format!("  simp only [e_fb_{i}] at h_addY\n"));
        s.push_str("  simp only [e_nx] at h_selX\n");
        s.push_str("  simp only [e_ny] at h_selY\n");
        s.push_str(&format!(
            "  refine {kern} {i} bit{i} (acc{i} b0) ⟨sx, sy⟩ ⟨{gx}*b0 + sdx, (1+{gym1}*b0) + sdy⟩ hacc ?_ ?_ ?_ ?_ ?_\n"
        ));
        s.push_str(&format!(
            "  · rw [C_eq_L{i}]; simp only [acc{i}, L{i}, EdwardsBridge.d]\n    linear_combination h_addX + sx * h_v2\n"
        ));
        s.push_str(&format!(
            "  · rw [C_eq_L{i}]; simp only [acc{i}, L{i}, EdwardsBridge.d, EdwardsBridge.a]\n    rw [a_eq_neg_one]\n    linear_combination h_addY - sy * h_v2\n"
        ));
        s.push_str("  · linear_combination hbit\n");
        s.push_str(&format!(
            "  · simp only [acc{i}]; linear_combination -h_selX\n"
        ));
        s.push_str(&format!(
            "  · simp only [acc{i}]; linear_combination -h_selY\n"
        ));
    } else {
        // Inductive case: acc_i = ⟨Gx·b0 + d1x, (1+Gym1·b0) + d1y⟩.
        let cw5 = first_delta_coeff(&v2.l, b0)
            .expect("v2.L carried-delta coeff")
            .to_owned();
        s.push_str(&format!(
            "theorem e_a_{i} : ({alpha} : EdwardsBridge.F) = 3021 * {ciy} * {gx} := by decide\n"
        ));
        s.push_str(&format!(
            "theorem e_cw_{i} : ({cw5} : EdwardsBridge.F) = 3021 * {ciy} := by decide\n"
        ));
        s.push_str(&format!(
            "theorem e_db_{i} : ({db0} : EdwardsBridge.F) = {cix} * {gym1} := by decide\n"
        ));
        s.push_str(&format!(
            "theorem e_eb_{i} : ({eb0} : EdwardsBridge.F) = {ciy} * {gx} + {cix} * {gym1} := by decide\n"
        ));
        s.push_str(&format!(
            "theorem e_fb_{i} : ({fb0} : EdwardsBridge.F) = (-1) * {ciy} * {gx} - {cix} * {gym1} + ({gym1} - {gx} * (-1)) * ({cix} + {ciy}) := by decide\n"
        ));
        s.push_str(&format!(
            "noncomputable def acc{i} (b0 d1x d1y : EdwardsBridge.F) : Point := ⟨{gx}*b0 + d1x, (1+{gym1}*b0) + d1y⟩\n"
        ));
        s.push_str(&format!("theorem {nm}\n"));
        s.push_str(&format!(
            "    (b0 bit{i} d1x d1y v2 sx sy sdx sdy : EdwardsBridge.F)\n"
        ));
        s.push_str(&format!("    (hacc : onCurve (acc{i} b0 d1x d1y))\n"));
        s.push_str(&format!(
            "    (h_v2 : ({alpha}*b0 + {cw5}*d1x)*({cix} + {db0}*b0 + {cix}*d1y) = v2)\n"
        ));
        s.push_str(&format!(
            "    (h_addX : sx*(1 + v2) = {cix} + {eb0}*b0 + {ciy}*d1x + {cix}*d1y)\n"
        ));
        s.push_str(&format!(
            "    (h_addY : sy*(1 + (-1)*v2) = {ciy} + {fb0}*b0 + {cix}*d1x + {ciy}*d1y)\n"
        ));
        s.push_str(&format!(
            "    (h_selX : (1*bit{i})*({neg_gx}*b0 + (-1)*d1x + sx) = sdx)\n"
        ));
        s.push_str(&format!(
            "    (h_selY : (1*bit{i})*((-1) + {one_minus_gy}*b0 + (-1)*d1y + sy) = sdy)\n"
        ));
        s.push_str(&format!(
            "    (hbit : (1*bit{i})*(1 + (-1)*bit{i}) = 0) :\n"
        ));
        s.push_str(&format!(
            "    {fsr} {i} bit{i} (acc{i} b0 d1x d1y) ⟨{gx}*b0 + (d1x + sdx), (1+{gym1}*b0) + (d1y + sdy)⟩ := by\n"
        ));
        s.push_str(&format!(
            "  simp only [e_a_{i}, e_cw_{i}, e_db_{i}] at h_v2\n"
        ));
        s.push_str(&format!("  simp only [e_eb_{i}] at h_addX\n"));
        s.push_str(&format!("  simp only [e_fb_{i}] at h_addY\n"));
        s.push_str("  simp only [e_nx] at h_selX\n");
        s.push_str("  simp only [e_ny] at h_selY\n");
        s.push_str(&format!(
            "  refine {kern} {i} bit{i} (acc{i} b0 d1x d1y) ⟨sx, sy⟩ ⟨{gx}*b0 + (d1x + sdx), (1+{gym1}*b0) + (d1y + sdy)⟩ hacc ?_ ?_ ?_ ?_ ?_\n"
        ));
        s.push_str(&format!(
            "  · rw [C_eq_L{i}]; simp only [acc{i}, L{i}, EdwardsBridge.d]\n    linear_combination h_addX + sx * h_v2\n"
        ));
        s.push_str(&format!(
            "  · rw [C_eq_L{i}]; simp only [acc{i}, L{i}, EdwardsBridge.d, EdwardsBridge.a]\n    rw [a_eq_neg_one]\n    linear_combination h_addY - sy * h_v2\n"
        ));
        s.push_str("  · linear_combination hbit\n");
        s.push_str(&format!(
            "  · simp only [acc{i}]; linear_combination -h_selX\n"
        ));
        s.push_str(&format!(
            "  · simp only [acc{i}]; linear_combination -h_selY\n"
        ));
    }
    // silence unused in the abstract-prefix test build
    let _ = (v2w, sx, sy, sdx, sdy, bit);

    // Wide binder: bind the actual deployed rows (one term per carried delta
    // wire) by instantiating the folded `d1x`/`d1y` to the explicit wire sums.
    // The shared coefficients (`cw5` over x-wires, `cix` over y-wires in v2/add)
    // distribute over the sum, so each narrow premise closes by
    // `linear_combination` over the raw wide row. Base rung (i==1) has no
    // carried wires — its `theorem` already binds the raw rows.
    let mut wide = String::new();
    if i >= 2 {
        let cw5 = first_delta_coeff(&v2.l, b0)
            .expect("v2.L carried-delta coeff")
            .to_owned();
        let xw = carried_wires(&v2.l, b0); // prior-rung sdx wires
        let yw = carried_wires(&v2.r, b0); // prior-rung sdy wires
        let nx = xw.len();
        let ny = yw.len();
        // FOLD: every carried x-wire shares one coeff (likewise y), so the whole
        // carried sum collapses to a single opaque var `d1x := Σ xw` / `d1y := Σ yw`.
        // This keeps every wide hypothesis NARROW (constant term count) regardless
        // of rung depth — the per-wire enumeration made `ring` cost O(depth) and
        // pinned the top rungs for minutes. At instantiation (Workstream H) d1x/d1y
        // are bound to the real wire sums and each row equation holds definitionally.
        let sx_sum = if nx > 0 {
            "d1x".to_owned()
        } else {
            "0".to_owned()
        };
        let sy_sum = if ny > 0 {
            "d1y".to_owned()
        } else {
            "0".to_owned()
        };
        // a folded carried term `coeff*d1x`, present only when that side carries wires
        let xt = |coeff: &str| {
            if nx > 0 {
                format!(" + {coeff}*d1x")
            } else {
                String::new()
            }
        };
        let yt = |coeff: &str| {
            if ny > 0 {
                format!(" + {coeff}*d1y")
            } else {
                String::new()
            }
        };
        let nm_w = format!("rung{i}_wide");
        wide.push_str(&format!("theorem {nm_w}\n"));
        let allvars = {
            let mut a = vec!["b0".to_owned(), format!("bit{i}")];
            if nx > 0 {
                a.push("d1x".to_owned());
            }
            if ny > 0 {
                a.push("d1y".to_owned());
            }
            a.extend(
                ["v2", "sx", "sy", "sdx", "sdy"]
                    .iter()
                    .map(|s| s.to_string()),
            );
            a.join(" ")
        };
        wide.push_str(&format!("    ({allvars} : EdwardsBridge.F)\n"));
        wide.push_str(&format!(
            "    (hacc : onCurve (acc{i} b0 ({sx_sum}) ({sy_sum})))\n"
        ));
        wide.push_str(&format!(
            "    (h_v2 : ({alpha}*b0{})*({cix} + {db0}*b0{}) = v2)\n",
            xt(&cw5),
            yt(&cix)
        ));
        wide.push_str(&format!(
            "    (h_addX : sx*(1 + v2) = {cix} + {eb0}*b0{}{})\n",
            xt(&ciy),
            yt(&cix)
        ));
        wide.push_str(&format!(
            "    (h_addY : sy*(1 + (-1)*v2) = {ciy} + {fb0}*b0{}{})\n",
            xt(&cix),
            yt(&ciy)
        ));
        wide.push_str(&format!(
            "    (h_selX : (1*bit{i})*({neg_gx}*b0{} + sx) = sdx)\n",
            if nx > 0 {
                " + (-1)*d1x".to_owned()
            } else {
                String::new()
            }
        ));
        wide.push_str(&format!(
            "    (h_selY : (1*bit{i})*((-1) + {one_minus_gy}*b0{} + sy) = sdy)\n",
            if ny > 0 {
                " + (-1)*d1y".to_owned()
            } else {
                String::new()
            }
        ));
        wide.push_str(&format!(
            "    (hbit : (1*bit{i})*(1 + (-1)*bit{i}) = 0) :\n"
        ));
        wide.push_str(&format!(
            "    {fsr} {i} bit{i} (acc{i} b0 ({sx_sum}) ({sy_sum})) ⟨{gx}*b0 + (({sx_sum}) + sdx), (1+{gym1}*b0) + (({sy_sum}) + sdy)⟩ := by\n"
        ));
        wide.push_str(&format!(
            "  exact {nm} b0 bit{i} ({sx_sum}) ({sy_sum}) v2 sx sy sdx sdy hacc\n"
        ));
        wide.push_str("    (by linear_combination h_v2) (by linear_combination h_addX)\n");
        wide.push_str("    (by linear_combination h_addY) (by linear_combination h_selX)\n");
        wide.push_str("    (by linear_combination h_selY) hbit\n");
    }

    // Split: everything up to (not including) `theorem rung{i}` is Fact-free
    // (bindings + def); the rest is the in-section theorem.
    let marker = format!("theorem {nm}\n");
    let pos = s.find(&marker).expect("theorem marker present");
    let (cw5, xw, yw) = if i >= 2 {
        (
            first_delta_coeff(&v2.l, b0).map(|c| c.to_owned()),
            carried_wires(&v2.l, b0),
            carried_wires(&v2.r, b0),
        )
    } else {
        (None, Vec::new(), Vec::new())
    };
    Some(RungCert {
        i,
        bindings: s[..pos].to_owned(),
        theorem: s[pos..].to_owned(),
        wide,
        raw: RawData {
            bit,
            v2w,
            sx,
            sy,
            sdx,
            sdy,
            cix,
            ciy,
            alpha,
            db0,
            eb0,
            fb0,
            neg_gx,
            one_minus_gy,
            cw5,
            xw,
            yw,
        },
    })
}

/// Emit the shared header: imports, namespace, shared `decide` bindings.
/// `inst` suffixes the namespace so per-instance files coexist when imported.
pub fn emit_header(neg_gx: &str, one_minus_gy: &str, inst: &str) -> String {
    format!(
        "import ShielddGnarkFormal.RvkFixedBaseRung\n\
         import ShielddGnarkFormal.RvkFixedBaseLiteral\n\
         import ShielddGnarkFormal.RvkFixedBaseLadder\n\
         import ShielddGnarkFormal.RvkDeployedRung\n\
         import ShielddGnarkFormal.RvkBridge\n\
         namespace Shieldd.GnarkFormal.RvkFixedGen{inst}\n\
         open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)\n\
         open Shieldd.GnarkFormal.EdwardsBridge (Point onCurve)\n\
         open Shieldd.GnarkFormal.RvkFixedBaseConstants (C)\n\
         open Shieldd.GnarkFormal.RvkFixedBaseLiteral\n\
         open Shieldd.GnarkFormal.ScalarMulBridge (scalarMulFromBits)\n\
         open Bool (toZMod)\n\
         set_option maxRecDepth 100000\n\
         set_option maxHeartbeats 4000000\n\
         theorem a_eq_neg_one : ({A_LIT} : EdwardsBridge.F) = -1 := by decide\n\
         theorem e_nx : ({neg_gx} : EdwardsBridge.F) = -({GX}) := by decide\n\
         theorem e_ny : ({one_minus_gy} : EdwardsBridge.F) = -({GYM1}) := by decide\n"
    )
}

/// Header for the seg52 net-balance blinding-ladder cert file (blindGen base).
pub fn emit_nb_header(neg_gx: &str, one_minus_gy: &str, gx: &str, gym1: &str) -> String {
    format!(
        "import ShielddGnarkFormal.Deployed.NetBalance.Ladder\n\
         import ShielddGnarkFormal.NbFixedBaseLiteral\n\
         namespace Shieldd.GnarkFormal.NbFixedGenSeg46\n\
         open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)\n\
         open Shieldd.GnarkFormal.EdwardsBridge (Point onCurve)\n\
         open Shieldd.GnarkFormal.Deployed.NetBalance (Cb NbFixedStepRel nbFixedRung_stepRel)\n\
         open Shieldd.GnarkFormal.NbFixedBaseLiteral\n\
         open Bool (toZMod)\n\
         set_option maxRecDepth 100000\n\
         set_option maxHeartbeats 4000000\n\
         theorem a_eq_neg_one : ({A_LIT} : EdwardsBridge.F) = -1 := by decide\n\
         theorem e_nx : ({neg_gx} : EdwardsBridge.F) = -({gx}) := by decide\n\
         theorem e_ny : ({one_minus_gy} : EdwardsBridge.F) = -({gym1}) := by decide\n"
    )
}

/// blindGen coordinates (seg52 net-balance blinding base): `x` and `y - 1`.
pub const NB_GX: &str =
    "4661681602708190761543544705274244814260880986867766715334030151044279151219";
pub const NB_GYM1: &str =
    "4337336842509898676347982752646772244181661588533917621717979456142867120377";

/// Per-instance cert file for the seg52 blinding ladder's fused rungs: header +
/// per-rung bindings/theorems only (the ladder walk and the 8-row split rungs
/// are emitted by `gen/gen_nb_slice.py`, which consumes `rung{i}`/`rung{i}_wide`).
pub fn emit_nb_file(rows: &[Constraint], fused_base: usize, n: usize) -> String {
    let b0 = rows[fused_base].l[0].wire;
    let neg_gx = coeff_at(&rows[fused_base + 3].r, b0).unwrap().to_owned();
    let one_minus_gy = coeff_at(&rows[fused_base + 4].r, b0).unwrap().to_owned();
    let mut out = emit_nb_header(&neg_gx, &one_minus_gy, NB_GX, NB_GYM1);
    let mut certs = Vec::new();
    for i in 1..=n {
        match emit_rung_cfg(
            i,
            rows,
            fused_base + (i - 1) * 5,
            b0,
            NB_GX,
            NB_GYM1,
            "NbFixedStepRel",
            "nbFixedRung_stepRel",
        ) {
            Some(c) => certs.push(c),
            None => break,
        }
    }
    assert_eq!(certs.len(), n, "seg52 fused-rung recovery fell short");
    for c in &certs {
        out.push_str(&c.bindings);
    }
    out.push_str(&emit_section_open());
    for c in &certs {
        out.push_str(&c.theorem);
        out.push_str(&c.wide);
    }
    out.push_str("end Cert\nend Shieldd.GnarkFormal.NbFixedGenSeg46\n");
    out
}

/// Open the `Fact (Nat.Prime Order)` section (after all Fact-free bindings).
pub fn emit_section_open() -> String {
    "section Cert\n\
     variable [Fact (Nat.Prime Order)]\n\
     instance : Fact (Nat.Prime Extracted.DecafEdwardsDouble.Order) := ‹_›\n\
     instance : Fact (Nat.Prime Extracted.DecafEdwardsNeg.Order) := ‹_›\n"
        .to_owned()
}

/// Emit the in-section `seed_onCurve` lemma + the `inst_ladder_sound` composition
/// theorem for an `n`-rung fixed-base ladder. The seed `acc0` reuses the rung-1
/// base def `acc1 b0 = ⟨Gx·b0, 1+Gym1·b0⟩` (= `select b0 G identity`). The
/// composition takes the per-rung `FixedStepRel` facts (each produced by
/// `rung{i}`/`rung{i}_wide` from the raw deployed rows) and threads them through
/// `fixedLadder` to `scalarMulFromBits`, exactly per the validated
/// `compose5`/`compose_demo` shape. `n` must be ≥ 1.
pub fn emit_composition(n: usize) -> String {
    assert!(n >= 1);
    let nb = n + 1; // bits length: i + fuel ≤ n needs 1 + n ≤ nb
    let mut s = String::new();
    // seed acc0 on-curve (acc1 is the rung-1 base def = seed point).
    s.push_str(
        "theorem seed_onCurve (b0 : EdwardsBridge.F) (hbit : b0 * b0 = b0) :\n\
        \x20   onCurve (acc1 b0) := by\n\
        \x20 have hb : b0 = 0 ∨ b0 = 1 := by\n\
        \x20   rcases mul_eq_zero.mp (show b0 * (b0 - 1) = 0 by linear_combination hbit) with h | h\n\
        \x20   · exact Or.inl h\n\
        \x20   · exact Or.inr (by linear_combination h)\n\
        \x20 rcases hb with h | h <;> subst h <;> simp only [acc1, onCurve]\n\
        \x20 · ring\n",
    );
    s.push_str(&format!(
        "  · have e : (1+{GYM1}*(1:EdwardsBridge.F)) = {} := by norm_num\n\
        \x20   simp only [mul_one, e]\n\
        \x20   exact Shieldd.GnarkFormal.RvkBridge.generator_onCurve\n",
        // 1 + Gym1 = Gy
        "6060471950081851567114691557659790004756535011754163002297540472747064943288"
    ));
    // ladder composition theorem
    let ps: Vec<String> = (1..=n).map(|k| format!("p{k}")).collect();
    s.push_str("theorem inst_ladder_sound\n");
    s.push_str(&format!("    (bits : List.Vector Bool {nb})\n"));
    s.push_str(&format!("    ({} : Point)\n", ps.join(" ")));
    s.push_str(
        "    (hseed : ((toZMod bits[0]! : EdwardsBridge.F)) * (toZMod bits[0]!) = toZMod bits[0]!)\n",
    );
    for k in 1..=n {
        let prev = if k == 1 {
            "(acc1 (toZMod bits[0]!))".to_owned()
        } else {
            format!("p{}", k - 1)
        };
        s.push_str(&format!(
            "    (hr{k} : RvkFixedBaseLadder.FixedStepRel {k} (toZMod bits[{k}]!) {prev} p{k})\n"
        ));
    }
    s.push_str(&format!(
        "    : onCurve (scalarMulFromBits bits {n} 1 (acc1 (toZMod bits[0]!)) (C 1)) := by\n"
    ));
    s.push_str(&format!(
        "  have hmap : ∀ i (hlt : i < {nb}), ((bits.map toZMod)[i]! : EdwardsBridge.F) = toZMod bits[i]! := by\n\
        \x20   intro i hlt\n\
        \x20   rw [getElem!_pos (bits.map toZMod) i hlt, getElem!_pos bits i hlt, List.Vector.getElem_map]\n"
    ));
    s.push_str("  have h0 := seed_onCurve _ hseed\n");
    s.push_str(&format!(
        "  have hlad : RvkFixedBaseLadder.fixedLadder (bits.map toZMod) (fun _ => True) {n} 1 (acc1 (toZMod bits[0]!)) := by\n"
    ));
    for k in 1..=n {
        s.push_str("    rw [RvkFixedBaseLadder.fixedLadder]; refine ⟨");
        s.push_str(&format!("p{k}, ?_, ?_⟩\n"));
        s.push_str(&format!("    · rw [hmap {k} (by omega)]; exact hr{k}\n"));
    }
    s.push_str("    rw [RvkFixedBaseLadder.fixedLadder]; trivial\n");
    s.push_str(&format!(
        "  exact (RvkFixedBaseLadder.fixedLadder_final_semantic bits (fun _ => True) {n} 1 (acc1 (toZMod bits[0]!)) (by omega) h0 hlad).1\n"
    ));

    // Final-point on-curve: same threading, but the continuation `k` records the
    // last abstract point's coordinates. The base discharges by `rfl` (px := pₙ.x),
    // the fuel induction carries the coords to `scalarMulFromBits`, and a `Point`
    // ext closes `scalarMulFromBits = pₙ`, transporting `onCurve` onto `pₙ`. This is
    // the H-seam: `pₙ` is the deployed wire-materialized ladderResult fed to the tail.
    s.push_str("theorem inst_rvk_ladder_onCurve\n");
    s.push_str(&format!("    (bits : List.Vector Bool {nb})\n"));
    s.push_str(&format!("    ({} : Point)\n", ps.join(" ")));
    s.push_str(
        "    (hseed : ((toZMod bits[0]! : EdwardsBridge.F)) * (toZMod bits[0]!) = toZMod bits[0]!)\n",
    );
    for k in 1..=n {
        let prev = if k == 1 {
            "(acc1 (toZMod bits[0]!))".to_owned()
        } else {
            format!("p{}", k - 1)
        };
        s.push_str(&format!(
            "    (hr{k} : RvkFixedBaseLadder.FixedStepRel {k} (toZMod bits[{k}]!) {prev} p{k})\n"
        ));
    }
    s.push_str(&format!("    : onCurve p{n} := by\n"));
    s.push_str(&format!(
        "  have hmap : ∀ i (hlt : i < {nb}), ((bits.map toZMod)[i]! : EdwardsBridge.F) = toZMod bits[i]! := by\n\
        \x20   intro i hlt\n\
        \x20   rw [getElem!_pos (bits.map toZMod) i hlt, getElem!_pos bits i hlt, List.Vector.getElem_map]\n"
    ));
    s.push_str("  have h0 := seed_onCurve _ hseed\n");
    s.push_str(&format!(
        "  have hlad : RvkFixedBaseLadder.fixedLadder (bits.map toZMod)\n\
        \x20     (fun v => v[0]! = p{n}.x ∧ v[1]! = p{n}.y) {n} 1 (acc1 (toZMod bits[0]!)) := by\n"
    ));
    for k in 1..=n {
        s.push_str("    rw [RvkFixedBaseLadder.fixedLadder]; refine ⟨");
        s.push_str(&format!("p{k}, ?_, ?_⟩\n"));
        s.push_str(&format!("    · rw [hmap {k} (by omega)]; exact hr{k}\n"));
    }
    s.push_str("    rw [RvkFixedBaseLadder.fixedLadder]; exact ⟨rfl, rfl⟩\n");
    s.push_str(&format!(
        "  obtain ⟨hon, hx, hy⟩ := RvkFixedBaseLadder.fixedLadder_final_coords bits p{n}.x p{n}.y {n} 1 (acc1 (toZMod bits[0]!)) (by omega) h0 hlad\n"
    ));
    s.push_str(&format!(
        "  have heq : scalarMulFromBits bits {n} 1 (acc1 (toZMod bits[0]!)) (C 1) = p{n} := by\n\
        \x20   cases hsm : scalarMulFromBits bits {n} 1 (acc1 (toZMod bits[0]!)) (C 1) with\n\
        \x20   | mk sx sy =>\n\
        \x20   cases hpn : p{n} with\n\
        \x20   | mk px py =>\n\
        \x20   simp only [hsm, hpn] at hx hy\n\
        \x20   simp only [hx, hy]\n"
    ));
    s.push_str("  rwa [heq] at hon\n");

    // End-to-end deployed rvk soundness composition. Takes the per-rung
    // `FixedStepRel` certificates (produced by `rung{i}_wide` from the raw deployed
    // rows) to the explicit ladderResult point `pₙ`, plus the native-tail `addSpec`
    // (produced by the `TailGen` bridge) and `onCurve ak`, and concludes the rvk
    // output is on-curve. `addSpec_onCurve` closes via `addSpec_eq` + `add_onCurve`.
    s.push_str("theorem inst_rvk_onCurve\n");
    s.push_str(&format!("    (bits : List.Vector Bool {nb})\n"));
    s.push_str(&format!("    ({} : Point)\n", ps.join(" ")));
    s.push_str("    (akX akY rvkX rvkY : EdwardsBridge.F)\n");
    s.push_str(
        "    (hseed : ((toZMod bits[0]! : EdwardsBridge.F)) * (toZMod bits[0]!) = toZMod bits[0]!)\n",
    );
    for k in 1..=n {
        let prev = if k == 1 {
            "(acc1 (toZMod bits[0]!))".to_owned()
        } else {
            format!("p{}", k - 1)
        };
        s.push_str(&format!(
            "    (hr{k} : RvkFixedBaseLadder.FixedStepRel {k} (toZMod bits[{k}]!) {prev} p{k})\n"
        ));
    }
    s.push_str(&format!(
        "    (hak : onCurve ⟨akX, akY⟩)\n\
        \x20   (hadd : EdwardsBridge.addSpec ⟨akX, akY⟩ p{n} ⟨rvkX, rvkY⟩)\n\
        \x20   : onCurve ⟨rvkX, rvkY⟩ := by\n"
    ));
    s.push_str(&format!(
        "  have hp := inst_rvk_ladder_onCurve bits {} hseed {}\n",
        ps.join(" "),
        (1..=n)
            .map(|k| format!("hr{k}"))
            .collect::<Vec<_>>()
            .join(" ")
    ));
    s.push_str("  exact RvkDeployedRung.addSpec_onCurve hak hp hadd\n");
    s
}

/// Emit the raw-row deployed rvk soundness theorem `inst_rvk_raw_sound`. Takes the
/// `Bool` scalar bits, the per-rung deployed wire values, and the (folded) deployed
/// row equations as premises, threads `onCurve` forward through each `rung{k}`/
/// `rung{k}_wide`, and discharges the end-to-end `inst_rvk_onCurve` — concluding the
/// rvk output is on-curve from the actual rows plus the native-tail `addSpec`.
/// `b0` is bound to `toZMod bits[0]!`; per-rung booleanity comes from the `Bool` bits.
///
/// The carried accumulator after rung `k` is a fresh wire variable `accx{k}/accy{k}`
/// (the actual deployed carried wire is a single wire, not a sum), linked to the
/// select-delta by `haccx{k} : accx{k} = accx{k-1} + sdx{k}`. This keeps every term
/// `O(1)` — the prior running-sum encoding made the statement `O(n²)` and blew up
/// elaboration. Each rung output is rewritten via the link equation to `accx{k}`,
/// giving the abstract ladder point fed to the composed `inst_rvk_onCurve`.
pub fn emit_raw_sound(certs: &[RungCert]) -> String {
    let n = certs.len();
    assert!(n >= 1);
    let nb = n + 1;
    let b0t = "((toZMod bits[0]!) : EdwardsBridge.F)";
    let mut s = String::new();
    s.push_str("theorem inst_rvk_raw_sound\n");
    s.push_str(&format!("    (bits : List.Vector Bool {nb})\n"));
    // per-rung wire values + accumulator wires
    for k in 1..=n {
        s.push_str(&format!(
            "    (v2v{k} sxv{k} syv{k} sdx{k} sdy{k} accx{k} accy{k} : EdwardsBridge.F)\n"
        ));
    }
    s.push_str("    (akX akY rvkX rvkY : EdwardsBridge.F)\n");
    // explicit ladder point after rung k, over accumulator wires (O(1) each)
    let point =
        |k: usize| -> String { format!("⟨{GX}*{b0t} + accx{k}, (1+{GYM1}*{b0t}) + accy{k}⟩") };
    // folded deployed row premises, per rung
    for c in certs {
        let k = c.i;
        let r = &c.raw;
        let bk = format!("((toZMod bits[{k}]!) : EdwardsBridge.F)");
        if k == 1 {
            s.push_str(&format!(
                "    (h_v2_{k} : ({}*{b0t})*({} + {}*{b0t}) = v2v{k})\n",
                r.alpha, r.cix, r.db0
            ));
            s.push_str(&format!(
                "    (h_addX_{k} : sxv{k}*(1 + v2v{k}) = {} + {}*{b0t})\n",
                r.cix, r.eb0
            ));
            s.push_str(&format!(
                "    (h_addY_{k} : syv{k}*(1 + (-1)*v2v{k}) = {} + {}*{b0t})\n",
                r.ciy, r.fb0
            ));
            s.push_str(&format!(
                "    (h_selX_{k} : (1*{bk})*({}*{b0t} + sxv{k}) = sdx{k})\n",
                r.neg_gx
            ));
            s.push_str(&format!(
                "    (h_selY_{k} : (1*{bk})*((-1) + {}*{b0t} + syv{k}) = sdy{k})\n",
                r.one_minus_gy
            ));
        } else {
            let dx = format!("accx{}", k - 1);
            let dy = format!("accy{}", k - 1);
            let cw5 = r.cw5.as_deref().unwrap();
            s.push_str(&format!(
                "    (h_v2_{k} : ({}*{b0t} + {cw5}*{dx})*({} + {}*{b0t} + {}*{dy}) = v2v{k})\n",
                r.alpha, r.cix, r.db0, r.cix
            ));
            s.push_str(&format!(
                "    (h_addX_{k} : sxv{k}*(1 + v2v{k}) = {} + {}*{b0t} + {}*{dx} + {}*{dy})\n",
                r.cix, r.eb0, r.ciy, r.cix
            ));
            s.push_str(&format!(
                "    (h_addY_{k} : syv{k}*(1 + (-1)*v2v{k}) = {} + {}*{b0t} + {}*{dx} + {}*{dy})\n",
                r.ciy, r.fb0, r.cix, r.ciy
            ));
            s.push_str(&format!(
                "    (h_selX_{k} : (1*{bk})*({}*{b0t} + (-1)*{dx} + sxv{k}) = sdx{k})\n",
                r.neg_gx
            ));
            s.push_str(&format!(
                "    (h_selY_{k} : (1*{bk})*((-1) + {}*{b0t} + (-1)*{dy} + syv{k}) = sdy{k})\n",
                r.one_minus_gy
            ));
        }
        // accumulator link equations
        if k == 1 {
            s.push_str(&format!("    (haccx{k} : accx{k} = sdx{k})\n"));
            s.push_str(&format!("    (haccy{k} : accy{k} = sdy{k})\n"));
        } else {
            s.push_str(&format!(
                "    (haccx{k} : accx{k} = accx{} + sdx{k})\n",
                k - 1
            ));
            s.push_str(&format!(
                "    (haccy{k} : accy{k} = accy{} + sdy{k})\n",
                k - 1
            ));
        }
    }
    s.push_str("    (hak : onCurve ⟨akX, akY⟩)\n");
    s.push_str(&format!(
        "    (hadd : EdwardsBridge.addSpec ⟨akX, akY⟩ {} ⟨rvkX, rvkY⟩)\n",
        point(n)
    ));
    s.push_str("    : onCurve ⟨rvkX, rvkY⟩ := by\n");
    let boolpf = "(by cases h : bits[0]! <;> simp [h, Bool.toZMod_zero, Bool.toZMod_one])";
    s.push_str(&format!(
        "  have ho0 : onCurve (acc1 {b0t}) := seed_onCurve _ {boolpf}\n"
    ));
    for k in 1..=n {
        let bk = format!("((toZMod bits[{k}]!) : EdwardsBridge.F)");
        let hbit =
            format!("(by cases h : bits[{k}]! <;> simp [h, Bool.toZMod_zero, Bool.toZMod_one])");
        if k == 1 {
            s.push_str(&format!(
                "  have hr{k} : RvkFixedBaseLadder.FixedStepRel {k} {bk} (acc1 {b0t}) {} := by\n",
                point(k)
            ));
            s.push_str(&format!(
                "    have h := rung{k} {b0t} {bk} v2v{k} sxv{k} syv{k} sdx{k} sdy{k} ho0 h_v2_{k} h_addX_{k} h_addY_{k} h_selX_{k} h_selY_{k} {hbit}\n"
            ));
            s.push_str(&format!("    rw [haccx{k}, haccy{k}]; exact h\n"));
        } else {
            s.push_str(&format!(
                "  have hr{k} : RvkFixedBaseLadder.FixedStepRel {k} {bk} {} {} := by\n",
                point(k - 1),
                point(k)
            ));
            s.push_str(&format!(
                "    have h := rung{k}_wide {b0t} {bk} accx{} accy{} v2v{k} sxv{k} syv{k} sdx{k} sdy{k} ho{} h_v2_{k} h_addX_{k} h_addY_{k} h_selX_{k} h_selY_{k} {hbit}\n",
                k - 1, k - 1, k - 1
            ));
            s.push_str(&format!("    rw [haccx{k}, haccy{k}]; exact h\n"));
        }
        s.push_str(&format!(
            "  have ho{k} := (RvkFixedBaseLadder.fixedStep_semantic {k} bits[{k}]! _ _ ho{} hr{k}).2\n",
            k - 1
        ));
    }
    // discharge inst_rvk_onCurve with the explicit ladder points
    let points: Vec<String> = (1..=n).map(point).collect();
    let hrs: Vec<String> = (1..=n).map(|k| format!("hr{k}")).collect();
    s.push_str(&format!(
        "  exact inst_rvk_onCurve bits {} akX akY rvkX rvkY {boolpf} {} hak hadd\n",
        points.join(" "),
        hrs.join(" ")
    ));
    s
}

/// Emit `inst_rvk_raw_ladder`: identical to `inst_rvk_raw_sound` up to the ladder,
/// but EXPOSES `onCurve (ladderPoint)` directly (no `hak`/`hadd`/native tail). The
/// deployed-slice adapter needs this on-curve fact to build the native add's
/// `addSpec` via `RvkDeployedRung.deployedTail_addSpec` (Edwards completeness wants
/// both summands on-curve). Mirrors `emit_raw_sound`'s rung-cert threading exactly;
/// the final accumulator on-curve fact `ho{n}` IS the ladder result.
pub fn emit_raw_ladder(certs: &[RungCert]) -> String {
    let n = certs.len();
    assert!(n >= 1);
    let nb = n + 1;
    let b0t = "((toZMod bits[0]!) : EdwardsBridge.F)";
    let mut s = String::new();
    s.push_str("theorem inst_rvk_raw_ladder\n");
    s.push_str(&format!("    (bits : List.Vector Bool {nb})\n"));
    for k in 1..=n {
        s.push_str(&format!(
            "    (v2v{k} sxv{k} syv{k} sdx{k} sdy{k} accx{k} accy{k} : EdwardsBridge.F)\n"
        ));
    }
    let point =
        |k: usize| -> String { format!("⟨{GX}*{b0t} + accx{k}, (1+{GYM1}*{b0t}) + accy{k}⟩") };
    for c in certs {
        let k = c.i;
        let r = &c.raw;
        let bk = format!("((toZMod bits[{k}]!) : EdwardsBridge.F)");
        if k == 1 {
            s.push_str(&format!(
                "    (h_v2_{k} : ({}*{b0t})*({} + {}*{b0t}) = v2v{k})\n",
                r.alpha, r.cix, r.db0
            ));
            s.push_str(&format!(
                "    (h_addX_{k} : sxv{k}*(1 + v2v{k}) = {} + {}*{b0t})\n",
                r.cix, r.eb0
            ));
            s.push_str(&format!(
                "    (h_addY_{k} : syv{k}*(1 + (-1)*v2v{k}) = {} + {}*{b0t})\n",
                r.ciy, r.fb0
            ));
            s.push_str(&format!(
                "    (h_selX_{k} : (1*{bk})*({}*{b0t} + sxv{k}) = sdx{k})\n",
                r.neg_gx
            ));
            s.push_str(&format!(
                "    (h_selY_{k} : (1*{bk})*((-1) + {}*{b0t} + syv{k}) = sdy{k})\n",
                r.one_minus_gy
            ));
        } else {
            let dx = format!("accx{}", k - 1);
            let dy = format!("accy{}", k - 1);
            let cw5 = r.cw5.as_deref().unwrap();
            s.push_str(&format!(
                "    (h_v2_{k} : ({}*{b0t} + {cw5}*{dx})*({} + {}*{b0t} + {}*{dy}) = v2v{k})\n",
                r.alpha, r.cix, r.db0, r.cix
            ));
            s.push_str(&format!(
                "    (h_addX_{k} : sxv{k}*(1 + v2v{k}) = {} + {}*{b0t} + {}*{dx} + {}*{dy})\n",
                r.cix, r.eb0, r.ciy, r.cix
            ));
            s.push_str(&format!(
                "    (h_addY_{k} : syv{k}*(1 + (-1)*v2v{k}) = {} + {}*{b0t} + {}*{dx} + {}*{dy})\n",
                r.ciy, r.fb0, r.cix, r.ciy
            ));
            s.push_str(&format!(
                "    (h_selX_{k} : (1*{bk})*({}*{b0t} + (-1)*{dx} + sxv{k}) = sdx{k})\n",
                r.neg_gx
            ));
            s.push_str(&format!(
                "    (h_selY_{k} : (1*{bk})*((-1) + {}*{b0t} + (-1)*{dy} + syv{k}) = sdy{k})\n",
                r.one_minus_gy
            ));
        }
        if k == 1 {
            s.push_str(&format!("    (haccx{k} : accx{k} = sdx{k})\n"));
            s.push_str(&format!("    (haccy{k} : accy{k} = sdy{k})\n"));
        } else {
            s.push_str(&format!(
                "    (haccx{k} : accx{k} = accx{} + sdx{k})\n",
                k - 1
            ));
            s.push_str(&format!(
                "    (haccy{k} : accy{k} = accy{} + sdy{k})\n",
                k - 1
            ));
        }
    }
    s.push_str(&format!("    : onCurve {} := by\n", point(n)));
    let boolpf = "(by cases h : bits[0]! <;> simp [h, Bool.toZMod_zero, Bool.toZMod_one])";
    s.push_str(&format!(
        "  have ho0 : onCurve (acc1 {b0t}) := seed_onCurve _ {boolpf}\n"
    ));
    for k in 1..=n {
        let bk = format!("((toZMod bits[{k}]!) : EdwardsBridge.F)");
        let hbit =
            format!("(by cases h : bits[{k}]! <;> simp [h, Bool.toZMod_zero, Bool.toZMod_one])");
        if k == 1 {
            s.push_str(&format!(
                "  have hr{k} : RvkFixedBaseLadder.FixedStepRel {k} {bk} (acc1 {b0t}) {} := by\n",
                point(k)
            ));
            s.push_str(&format!(
                "    have h := rung{k} {b0t} {bk} v2v{k} sxv{k} syv{k} sdx{k} sdy{k} ho0 h_v2_{k} h_addX_{k} h_addY_{k} h_selX_{k} h_selY_{k} {hbit}\n"
            ));
            s.push_str(&format!("    rw [haccx{k}, haccy{k}]; exact h\n"));
        } else {
            s.push_str(&format!(
                "  have hr{k} : RvkFixedBaseLadder.FixedStepRel {k} {bk} {} {} := by\n",
                point(k - 1),
                point(k)
            ));
            s.push_str(&format!(
                "    have h := rung{k}_wide {b0t} {bk} accx{} accy{} v2v{k} sxv{k} syv{k} sdx{k} sdy{k} ho{} h_v2_{k} h_addX_{k} h_addY_{k} h_selX_{k} h_selY_{k} {hbit}\n",
                k - 1, k - 1, k - 1
            ));
            s.push_str(&format!("    rw [haccx{k}, haccy{k}]; exact h\n"));
        }
        s.push_str(&format!(
            "  have ho{k} := (RvkFixedBaseLadder.fixedStep_semantic {k} bits[{k}]! _ _ ho{} hr{k}).2\n",
            k - 1
        ));
    }
    s.push_str(&format!("  exact ho{n}\n"));
    s
}

/// Emit the deployed-row → `onCurve` bridge `inst_rvk_deployed_sound` over a wire
/// assignment `rho : Nat → F`. It mirrors the keystone's interface exactly — the
/// per-rung accumulators are abstract variables `ax{k}/ay{k}` threaded by link
/// premises `hax{k}/hay{k}` (NOT the O(n²) rematerialized running sums) — so the
/// whole bridge is O(n): it extracts each bit as a `Bool` from the booleanity row
/// (`boolify`), converts every fused row to the keystone's `toZMod bits[·]!` form
/// by a local O(1) `rw`, and applies `inst_rvk_raw_sound`. `hak` (onCurve ak) and
/// the native-tail `hadd` stay explicit premises (ak is secret / from the adjacent
/// decaf-decode slice). `b0` is the seed bit wire shared by every rung.
pub fn emit_relation_bridge(certs: &[RungCert], b0: usize) -> String {
    let n = certs.len();
    let nb = n + 1;
    let b0r = format!("rho {b0}");
    let mut s = String::new();
    // local Bool-extraction helper (Fact (Nat.Prime Order) is in scope here).
    s.push_str(
        "theorem boolify (x : EdwardsBridge.F) (h : (1*x)*(1+(-1)*x) = 0) :\n\
        \x20   ∃ b : Bool, x = toZMod b := by\n\
        \x20 have hmul : x * (1 - x) = 0 := by linear_combination h\n\
        \x20 rcases eq_zero_or_eq_zero_of_mul_eq_zero hmul with h0 | h1\n\
        \x20 · exact ⟨false, by rw [Bool.toZMod_zero]; exact h0⟩\n\
        \x20 · exact ⟨true, by rw [Bool.toZMod_one]; linear_combination -h1⟩\n",
    );
    // The per-coordinate `bits[k]! ≡ c{k}` reductions are O(n²) in `whnf`; the
    // work is bounded and linear-time-dominated, so lift the heartbeat ceiling
    // for this one wrapper (the keystone it calls is already proven).
    s.push_str("set_option maxHeartbeats 100000000 in\n");
    s.push_str("theorem inst_rvk_deployed_sound (rho : Nat → EdwardsBridge.F)\n");
    s.push_str("    (akX akY rvkX rvkY : EdwardsBridge.F)\n");
    // abstract per-rung accumulators (threaded by the link premises below).
    for c in certs {
        let k = c.i;
        s.push_str(&format!("    (ax{k} ay{k} : EdwardsBridge.F)\n"));
    }
    // booleanity: seed bit (bits[0]) then each rung's selector bit (bits[k]).
    s.push_str(&format!(
        "    (hbool0 : (1*({b0r}))*(1 + (-1)*({b0r})) = 0)\n"
    ));
    for c in certs {
        let k = c.i;
        let bw = format!("rho {}", c.raw.bit);
        s.push_str(&format!(
            "    (hbool{k} : (1*({bw}))*(1 + (-1)*({bw})) = 0)\n"
        ));
    }
    // fused-rung rows over rho with abstract accumulators (mirror emit_raw_sound:
    // var→rho wire, bits→rho bitwire, accx_{k-1}→ax{k-1}), plus the link premises.
    for c in certs {
        let k = c.i;
        let r = &c.raw;
        let bk = format!("rho {}", r.bit);
        let v2 = format!("rho {}", r.v2w);
        let sx = format!("rho {}", r.sx);
        let sy = format!("rho {}", r.sy);
        let sdx = format!("rho {}", r.sdx);
        let sdy = format!("rho {}", r.sdy);
        if k == 1 {
            s.push_str(&format!(
                "    (d_v2_{k} : ({}*({b0r}))*({} + {}*({b0r})) = {v2})\n",
                r.alpha, r.cix, r.db0
            ));
            s.push_str(&format!(
                "    (d_addX_{k} : ({sx})*(1 + {v2}) = {} + {}*({b0r}))\n",
                r.cix, r.eb0
            ));
            s.push_str(&format!(
                "    (d_addY_{k} : ({sy})*(1 + (-1)*{v2}) = {} + {}*({b0r}))\n",
                r.ciy, r.fb0
            ));
            s.push_str(&format!(
                "    (d_selX_{k} : (1*({bk}))*({}*({b0r}) + {sx}) = {sdx})\n",
                r.neg_gx
            ));
            s.push_str(&format!(
                "    (d_selY_{k} : (1*({bk}))*((-1) + {}*({b0r}) + {sy}) = {sdy})\n",
                r.one_minus_gy
            ));
            s.push_str(&format!("    (hax{k} : ax{k} = {sdx})\n"));
            s.push_str(&format!("    (hay{k} : ay{k} = {sdy})\n"));
        } else {
            let dx = format!("ax{}", k - 1);
            let dy = format!("ay{}", k - 1);
            let cw5 = r.cw5.as_deref().unwrap();
            s.push_str(&format!(
                "    (d_v2_{k} : ({}*({b0r}) + {cw5}*{dx})*({} + {}*({b0r}) + {}*{dy}) = {v2})\n",
                r.alpha, r.cix, r.db0, r.cix
            ));
            s.push_str(&format!(
                "    (d_addX_{k} : ({sx})*(1 + {v2}) = {} + {}*({b0r}) + {}*{dx} + {}*{dy})\n",
                r.cix, r.eb0, r.ciy, r.cix
            ));
            s.push_str(&format!(
                "    (d_addY_{k} : ({sy})*(1 + (-1)*{v2}) = {} + {}*({b0r}) + {}*{dx} + {}*{dy})\n",
                r.ciy, r.fb0, r.cix, r.ciy
            ));
            s.push_str(&format!(
                "    (d_selX_{k} : (1*({bk}))*({}*({b0r}) + (-1)*{dx} + {sx}) = {sdx})\n",
                r.neg_gx
            ));
            s.push_str(&format!(
                "    (d_selY_{k} : (1*({bk}))*((-1) + {}*({b0r}) + (-1)*{dy} + {sy}) = {sdy})\n",
                r.one_minus_gy
            ));
            s.push_str(&format!("    (hax{k} : ax{k} = ax{} + {sdx})\n", k - 1));
            s.push_str(&format!("    (hay{k} : ay{k} = ay{} + {sdy})\n", k - 1));
        }
    }
    s.push_str("    (hak : onCurve ⟨akX, akY⟩)\n");
    s.push_str(&format!(
        "    (hadd : EdwardsBridge.addSpec ⟨akX, akY⟩ ⟨{GX}*({b0r}) + ax{n}, (1+{GYM1}*({b0r})) + ay{n} ⟩ ⟨rvkX, rvkY⟩)\n"
    ));
    s.push_str("    : onCurve ⟨rvkX, rvkY⟩ := by\n");
    // Extract every bit as a `Bool` (hc{k} : rho bitwire = toZMod c{k}).
    s.push_str("  obtain ⟨c0, hc0⟩ := boolify _ hbool0\n");
    for c in certs {
        let k = c.i;
        s.push_str(&format!("  obtain ⟨c{k}, hc{k}⟩ := boolify _ hbool{k}\n"));
    }
    // Bind the bits vector once; index reductions `bits[k]! ≡ c{k}` are defeq.
    let cl: Vec<String> = (0..=n).map(|k| format!("c{k}")).collect();
    s.push_str(&format!(
        "  let bits : List.Vector Bool {nb} := ⟨[{}], rfl⟩\n",
        cl.join(", ")
    ));
    // Bit-coordinate bridges `toZMod bits[k]! = rho bitwire` (defeq on the let).
    s.push_str(&format!(
        "  have hb0 : (toZMod bits[0]! : EdwardsBridge.F) = rho {b0} := hc0.symm\n"
    ));
    for c in certs {
        let k = c.i;
        s.push_str(&format!(
            "  have hb{k} : (toZMod bits[{k}]! : EdwardsBridge.F) = rho {} := hc{k}.symm\n",
            c.raw.bit
        ));
    }
    // Convert each fused row to the keystone's `toZMod bits[·]!` form by a LOCAL
    // O(1) rewrite of just the seed/selector bit terms — total work O(n).
    for c in certs {
        let k = c.i;
        s.push_str(&format!("  rw [← hb0] at d_v2_{k} d_addX_{k} d_addY_{k}\n"));
        s.push_str(&format!("  rw [← hb0, ← hb{k}] at d_selX_{k} d_selY_{k}\n"));
    }
    s.push_str("  rw [← hb0] at hadd\n");
    // Now every premise matches the keystone syntactically; apply it.
    s.push_str("  exact inst_rvk_raw_sound bits\n");
    for c in certs {
        let k = c.i;
        let r = &c.raw;
        s.push_str(&format!(
            "    (rho {}) (rho {}) (rho {}) (rho {}) (rho {}) ax{k} ay{k}\n",
            r.v2w, r.sx, r.sy, r.sdx, r.sdy
        ));
    }
    s.push_str("    akX akY rvkX rvkY\n");
    for c in certs {
        let k = c.i;
        s.push_str(&format!(
            "    d_v2_{k} d_addX_{k} d_addY_{k} d_selX_{k} d_selY_{k} hax{k} hay{k}\n"
        ));
    }
    s.push_str("    hak hadd\n");
    s
}

/// Emit `inst_rvk_ladder_deployed` over `rho`: same deployed-row premises as
/// `inst_rvk_deployed_sound` (booleanity + fused rung rows + accumulator links)
/// but WITHOUT the native tail (`hak`/`hadd`); it concludes `onCurve (ladderPoint)`
/// directly by applying `inst_rvk_raw_ladder`. The deployed-slice adapter uses this
/// to obtain the ladder-result on-curve fact needed by `deployedTail_addSpec`.
pub fn emit_ladder_deployed(certs: &[RungCert], b0: usize) -> String {
    let n = certs.len();
    let nb = n + 1;
    let b0r = format!("rho {b0}");
    let mut s = String::new();
    s.push_str("set_option maxHeartbeats 100000000 in\n");
    s.push_str("theorem inst_rvk_ladder_deployed (rho : Nat → EdwardsBridge.F)\n");
    for c in certs {
        let k = c.i;
        s.push_str(&format!("    (ax{k} ay{k} : EdwardsBridge.F)\n"));
    }
    s.push_str(&format!(
        "    (hbool0 : (1*({b0r}))*(1 + (-1)*({b0r})) = 0)\n"
    ));
    for c in certs {
        let k = c.i;
        let bw = format!("rho {}", c.raw.bit);
        s.push_str(&format!(
            "    (hbool{k} : (1*({bw}))*(1 + (-1)*({bw})) = 0)\n"
        ));
    }
    for c in certs {
        let k = c.i;
        let r = &c.raw;
        let bk = format!("rho {}", r.bit);
        let v2 = format!("rho {}", r.v2w);
        let sx = format!("rho {}", r.sx);
        let sy = format!("rho {}", r.sy);
        let sdx = format!("rho {}", r.sdx);
        let sdy = format!("rho {}", r.sdy);
        if k == 1 {
            s.push_str(&format!(
                "    (d_v2_{k} : ({}*({b0r}))*({} + {}*({b0r})) = {v2})\n",
                r.alpha, r.cix, r.db0
            ));
            s.push_str(&format!(
                "    (d_addX_{k} : ({sx})*(1 + {v2}) = {} + {}*({b0r}))\n",
                r.cix, r.eb0
            ));
            s.push_str(&format!(
                "    (d_addY_{k} : ({sy})*(1 + (-1)*{v2}) = {} + {}*({b0r}))\n",
                r.ciy, r.fb0
            ));
            s.push_str(&format!(
                "    (d_selX_{k} : (1*({bk}))*({}*({b0r}) + {sx}) = {sdx})\n",
                r.neg_gx
            ));
            s.push_str(&format!(
                "    (d_selY_{k} : (1*({bk}))*((-1) + {}*({b0r}) + {sy}) = {sdy})\n",
                r.one_minus_gy
            ));
            s.push_str(&format!("    (hax{k} : ax{k} = {sdx})\n"));
            s.push_str(&format!("    (hay{k} : ay{k} = {sdy})\n"));
        } else {
            let dx = format!("ax{}", k - 1);
            let dy = format!("ay{}", k - 1);
            let cw5 = r.cw5.as_deref().unwrap();
            s.push_str(&format!(
                "    (d_v2_{k} : ({}*({b0r}) + {cw5}*{dx})*({} + {}*({b0r}) + {}*{dy}) = {v2})\n",
                r.alpha, r.cix, r.db0, r.cix
            ));
            s.push_str(&format!(
                "    (d_addX_{k} : ({sx})*(1 + {v2}) = {} + {}*({b0r}) + {}*{dx} + {}*{dy})\n",
                r.cix, r.eb0, r.ciy, r.cix
            ));
            s.push_str(&format!(
                "    (d_addY_{k} : ({sy})*(1 + (-1)*{v2}) = {} + {}*({b0r}) + {}*{dx} + {}*{dy})\n",
                r.ciy, r.fb0, r.cix, r.ciy
            ));
            s.push_str(&format!(
                "    (d_selX_{k} : (1*({bk}))*({}*({b0r}) + (-1)*{dx} + {sx}) = {sdx})\n",
                r.neg_gx
            ));
            s.push_str(&format!(
                "    (d_selY_{k} : (1*({bk}))*((-1) + {}*({b0r}) + (-1)*{dy} + {sy}) = {sdy})\n",
                r.one_minus_gy
            ));
            s.push_str(&format!("    (hax{k} : ax{k} = ax{} + {sdx})\n", k - 1));
            s.push_str(&format!("    (hay{k} : ay{k} = ay{} + {sdy})\n", k - 1));
        }
    }
    s.push_str(&format!(
        "    : onCurve ⟨{GX}*({b0r}) + ax{n}, (1+{GYM1}*({b0r})) + ay{n} ⟩ := by\n"
    ));
    s.push_str("  obtain ⟨c0, hc0⟩ := boolify _ hbool0\n");
    for c in certs {
        let k = c.i;
        s.push_str(&format!("  obtain ⟨c{k}, hc{k}⟩ := boolify _ hbool{k}\n"));
    }
    let cl: Vec<String> = (0..=n).map(|k| format!("c{k}")).collect();
    s.push_str(&format!(
        "  let bits : List.Vector Bool {nb} := ⟨[{}], rfl⟩\n",
        cl.join(", ")
    ));
    s.push_str(&format!(
        "  have hb0 : (toZMod bits[0]! : EdwardsBridge.F) = rho {b0} := hc0.symm\n"
    ));
    for c in certs {
        let k = c.i;
        s.push_str(&format!(
            "  have hb{k} : (toZMod bits[{k}]! : EdwardsBridge.F) = rho {} := hc{k}.symm\n",
            c.raw.bit
        ));
    }
    for c in certs {
        let k = c.i;
        s.push_str(&format!("  rw [← hb0] at d_v2_{k} d_addX_{k} d_addY_{k}\n"));
        s.push_str(&format!("  rw [← hb0, ← hb{k}] at d_selX_{k} d_selY_{k}\n"));
    }
    // align the goal's ladder point (in `rho b0` form) with the keystone's `bits[0]` form.
    s.push_str("  rw [← hb0]\n");
    s.push_str("  exact inst_rvk_raw_ladder bits\n");
    for c in certs {
        let k = c.i;
        let r = &c.raw;
        s.push_str(&format!(
            "    (rho {}) (rho {}) (rho {}) (rho {}) (rho {}) ax{k} ay{k}\n",
            r.v2w, r.sx, r.sy, r.sdx, r.sdy
        ));
    }
    for c in certs {
        let k = c.i;
        s.push_str(&format!(
            "    d_v2_{k} d_addX_{k} d_addY_{k} d_selX_{k} d_selY_{k} hax{k} hay{k}\n"
        ));
    }
    s
}

pub fn emit_footer(inst: &str) -> String {
    format!("end Cert\nend Shieldd.GnarkFormal.RvkFixedGen{inst}\n")
}

/// Generate a complete per-instance rvk fixed-base deployed soundness file:
/// header + per-rung bindings/theorems + ladder composition + `inst_rvk_raw_sound`.
/// `inst` ("Inst0"/"Inst1"/…) suffixes the namespace; `fused_base` is the first
/// fused-rung row; `b0` is auto-read from the v2 row's L wire.
pub fn emit_rvk_file(rows: &[Constraint], fused_base: usize, n: usize, inst: &str) -> String {
    let b0 = rows[fused_base].l[0].wire;
    let neg_gx = coeff_at(&rows[fused_base + 3].r, b0).unwrap().to_owned();
    let one_minus_gy = coeff_at(&rows[fused_base + 4].r, b0).unwrap().to_owned();
    let mut out = emit_header(&neg_gx, &one_minus_gy, inst);
    let mut certs = Vec::new();
    for i in 1..=n {
        match emit_rung(i, rows, fused_base + (i - 1) * 5, b0) {
            Some(c) => certs.push(c),
            None => break,
        }
    }
    for c in &certs {
        out.push_str(&c.bindings);
    }
    out.push_str(&emit_section_open());
    for c in &certs {
        out.push_str(&c.theorem);
        out.push_str(&c.wide);
    }
    out.push_str(&emit_composition(certs.len()));
    out.push_str(&emit_raw_sound(&certs));
    out.push_str(&emit_raw_ladder(&certs));
    out.push_str(&emit_relation_bridge(&certs, b0));
    out.push_str(&emit_ladder_deployed(&certs, b0));
    out.push_str(&emit_footer(inst));
    out
}

/// Coefficient of the first term whose wire is in `set`, or `None`.
fn set_coeff<'a>(side: &'a [Term], set: &std::collections::BTreeSet<usize>) -> Option<&'a str> {
    side.iter()
        .find(|t| set.contains(&t.wire))
        .map(|t| t.coeff.as_str())
}

/// Emit the deployed native-add **tail** bridge (`rvk = curve.Add(ak, ladderResult)`)
/// for one rvk instance, reading every baked literal off the 6 tail rows
/// `rows[base .. base+6]` (order `[i67, v2, v0v1, divX, i71, divY]`). `ak` is
/// const-folded into the row coefficients; the emitted module bridges them to
/// `RvkDeployedRung.deployedTail_addSpec` (gnark te.add) and concludes
/// `addSpec ⟨akX,akY⟩ ⟨GX·b0+d1x, 1+GYM1·b0+d1y⟩ ⟨outX,outY⟩`, where `d1x`/`d1y`
/// are the folded ladder select-delta sums (Σsdx / Σsdy). Self-contained module
/// (own namespace `TailGen_{inst}`); fan out by changing `base`/`b0`/`sdx`/`sdy`.
pub fn emit_tail(rows: &[Constraint], base: usize, inst: &str) -> String {
    // row layout (L·R = O):
    //   base+0  i67 :  1 · (Σsdx + Σsdy + K·b0 + 1) = i67
    //   base+1  v2  :  (La·Σsdx + Lb·b0) · (akX·Σsdy + akX + Rb·b0) = i68
    //   base+2  v0v1:  1 · (akY·Σsdx + akX·Σsdy + akX + C·b0) = i69
    //   base+3  divX:  outX · (1 + i68) = i69
    //   base+4  i71 :  1 · (Px·Σsdx + Py·Σsdy + Py + Qb0·b0) = i71
    //   base+5  divY:  outY · (1 - i68) = E·i67 + i71
    let r_i67 = &rows[base];
    let r_v2 = &rows[base + 1];
    let r_v0v1 = &rows[base + 2];
    let r_dx = &rows[base + 3];
    let r_i71 = &rows[base + 4];
    let r_dy = &rows[base + 5];

    // Derive b0 (seed bit), sdx, sdy from the v2 row: sdx are L-side carried wires,
    // sdy are R-side carried wires, and b0 is the wire common to both sides.
    let lwires: std::collections::BTreeSet<usize> =
        r_v2.l.iter().map(|t| t.wire).filter(|w| *w != 0).collect();
    let rwires: std::collections::BTreeSet<usize> =
        r_v2.r.iter().map(|t| t.wire).filter(|w| *w != 0).collect();
    let b0 = *lwires
        .intersection(&rwires)
        .next()
        .expect("b0 = common v2 wire");
    let sdx: std::collections::BTreeSet<usize> =
        lwires.iter().copied().filter(|w| *w != b0).collect();
    let sdy: std::collections::BTreeSet<usize> =
        rwires.iter().copied().filter(|w| *w != b0).collect();
    let (sdx, sdy) = (&sdx, &sdy);

    let kk = coeff_at(&r_i67.r, b0).expect("K @ b0");
    let i67w = r_i67.o[0].wire;
    let la = set_coeff(&r_v2.l, sdx).expect("La");
    let lb = coeff_at(&r_v2.l, b0).expect("Lb");
    let akx = set_coeff(&r_v2.r, sdy).expect("akX");
    let rb = coeff_at(&r_v2.r, b0).expect("Rb");
    let i68w = r_v2.o[0].wire;
    let aky = set_coeff(&r_v0v1.r, sdx).expect("akY");
    let cc = coeff_at(&r_v0v1.r, b0).expect("C");
    let i69w = r_v0v1.o[0].wire;
    let outxw = r_dx.l[0].wire;
    let px = set_coeff(&r_i71.r, sdx).expect("Px");
    let py = set_coeff(&r_i71.r, sdy).expect("Py");
    let qb0 = coeff_at(&r_i71.r, b0).expect("Qb0");
    let i71w = r_i71.o[0].wire;
    let outyw = r_dy.l[0].wire;
    let ev = coeff_at(&r_dy.o, i67w).expect("E @ i67");

    // sanity: wire ids must be distinct and consistent across rows
    assert_eq!(coeff_at(&r_dx.r, i68w), Some("1"), "divX references i68");
    assert_eq!(r_dx.o[0].wire, i69w, "divX out = i69");
    assert!(coeff_at(&r_dy.r, i68w).is_some(), "divY references i68");
    let _ = (i71w, outxw, outyw);

    format!(
        "import ShielddGnarkFormal.RvkDeployedRung\n\
         import ShielddGnarkFormal.EdwardsCompleteness\n\
         import ShielddGnarkFormal.RvkBridge\n\
         namespace Shieldd.GnarkFormal.TailGen_{inst}\n\
         open Shieldd.GnarkFormal\n\
         open Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd (Order)\n\
         open Shieldd.GnarkFormal.EdwardsBridge (Point onCurve a d addSpec)\n\
         set_option maxRecDepth 100000\n\
         set_option maxHeartbeats 4000000\n\
         abbrev F := EdwardsBridge.F\n\
         def GX : F := {GX}\n\
         def GYM1 : F := {GYM1}\n\
         def akX : F := {akx}\n\
         def akY : F := {aky}\n\
         def Ev : F := {ev}\n\
         def Kv : F := {kk}\n\
         theorem cLa : ({la} : F) = 3021 * akY := by decide\n\
         theorem cLb : ({lb} : F) = {la} * GX := by decide\n\
         theorem cRb : ({rb} : F) = akX * GYM1 := by decide\n\
         theorem cC : ({cc} : F) = akX * GYM1 + akY * GX := by decide\n\
         theorem cPx : ({px} : F) = akX - Ev := by decide\n\
         theorem cPy : ({py} : F) = akY - Ev := by decide\n\
         theorem cQb0 : ({qb0} : F) = akX * GX + akY * GYM1 - Ev * Kv := by decide\n\
         theorem aLit : ({A_LIT} : F) = -1 := by decide\n\
         theorem akOC_raw : -(akX*akX) + akY*akY = 1 + 3021*(akX*akX)*(akY*akY) := by\n\
        \x20 unfold akX akY; decide\n\
         variable [Fact (Nat.Prime Order)]\n\
         theorem hd : (d : F) = 3021 := rfl\n\
         theorem ha : (a : F) = -1 := aLit\n\
         theorem ak_onCurve : onCurve ⟨akX, akY⟩ := by\n\
        \x20 show -(akX*akX) + akY*akY = 1 + d*(akX*akX)*(akY*akY)\n\
        \x20 rw [hd]; exact akOC_raw\n\
         theorem tail\n\
        \x20   (b0 d1x d1y i67 i68 i69 i71 outX outY : F)\n\
        \x20   (hp : onCurve ⟨GX*b0 + d1x, 1 + GYM1*b0 + d1y⟩)\n\
        \x20   (h13 : i67 = (d1x + d1y) + Kv*b0 + 1)\n\
        \x20   (h14 : ({la}*d1x + {lb}*b0) * (akX*d1y + akX + {rb}*b0) = i68)\n\
        \x20   (h15 : akY*d1x + akX*d1y + akX + {cc}*b0 = i69)\n\
        \x20   (h16 : outX * (1 + i68) = i69)\n\
        \x20   (h17 : {px}*d1x + {py}*d1y + {py} + {qb0}*b0 = i71)\n\
        \x20   (h18y : outY * (1 + (-1)*i68) = i71 + Ev*i67) :\n\
        \x20   addSpec ⟨akX, akY⟩ ⟨GX*b0 + d1x, 1 + GYM1*b0 + d1y⟩ ⟨outX, outY⟩ := by\n\
        \x20 have e68 : i68 = 3021 * ((1 + GYM1*b0 + d1y)*akX) * ((GX*b0 + d1x)*akY) := by\n\
        \x20   rw [← h14, cLb, cLa, cRb]; ring\n\
        \x20 have e69 : i69 = (1 + GYM1*b0 + d1y)*akX + (GX*b0 + d1x)*akY := by\n\
        \x20   rw [← h15, cC]; ring\n\
        \x20 refine RvkDeployedRung.deployedTail_addSpec akX akY outX outY\n\
        \x20   ⟨GX*b0 + d1x, 1 + GYM1*b0 + d1y⟩ ak_onCurve hp ?_ ?_\n\
        \x20 · show outX * (1 + d * ((1 + GYM1*b0 + d1y)*akX) * ((GX*b0 + d1x)*akY))\n\
        \x20       = (1 + GYM1*b0 + d1y)*akX + (GX*b0 + d1x)*akY\n\
        \x20   rw [hd, ← e68, ← e69]; exact h16\n\
        \x20 · show outY * (1 - d * ((1 + GYM1*b0 + d1y)*akX) * ((GX*b0 + d1x)*akY))\n\
        \x20       = a * ((1 + GYM1*b0 + d1y)*akX) - (GX*b0 + d1x)*akY\n\
        \x20         + (akY - akX*a) * ((GX*b0 + d1x) + (1 + GYM1*b0 + d1y))\n\
        \x20   have h18' : outY * (1 - i68) = i71 + Ev*i67 := by linear_combination h18y\n\
        \x20   rw [hd, ← e68, h18', ha, ← h17, h13, cPx, cPy, cQb0]\n\
        \x20   ring\n\
         end Shieldd.GnarkFormal.TailGen_{inst}\n"
    )
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::ir::parse_rows;
    use crate::load_sr1cs;

    #[test]
    fn dump_tail_rows() {
        let sr = load_sr1cs("../../../tools/gnark/artifacts/consolidate2x1/consolidate2x1.sr1cs")
            .unwrap();
        let rows = parse_rows(&sr).unwrap();
        let pr = |label: &str, s: &[Term]| {
            let terms: Vec<String> = s
                .iter()
                .map(|t| format!("{}@w{}", &t.coeff[..t.coeff.len().min(8)], t.wire))
                .collect();
            eprintln!("    {label} ({}): {}", s.len(), terms.join(", "));
        };
        for r in 11808usize..=11816 {
            eprintln!("== row {r} ==");
            pr("L", &rows[r].l);
            pr("R", &rows[r].r);
            pr("O", &rows[r].o);
        }
    }

    #[test]
    fn dump_tail_struct() {
        let sr = load_sr1cs("../../../tools/gnark/artifacts/consolidate2x1/consolidate2x1.sr1cs")
            .unwrap();
        let rows = parse_rows(&sr).unwrap();
        // group terms by coeff; report coeff -> (count, wire-range), singletons listed.
        let summ = |label: &str, s: &[Term]| {
            use std::collections::BTreeMap;
            let mut g: BTreeMap<&str, Vec<usize>> = BTreeMap::new();
            for t in s {
                g.entry(t.coeff.as_str()).or_default().push(t.wire);
            }
            eprintln!(
                "  {label} ({} terms, {} distinct coeffs):",
                s.len(),
                g.len()
            );
            for (c, ws) in &g {
                let cc = &c[..c.len().min(10)];
                if ws.len() <= 3 {
                    eprintln!("     {cc}.. @ {ws:?}");
                } else {
                    eprintln!(
                        "     {cc}.. x{} @ w{}..w{}",
                        ws.len(),
                        ws[0],
                        ws[ws.len() - 1]
                    );
                }
            }
        };
        let _ = &summ;
        // ladder output wires: rung i selX.O / selY.O for i in 1..=149.
        // From dumps: rung i base = 17148+(i-1)*5; selX.O / selY.O are its rows +3,+4.
        let mut ladder: std::collections::BTreeSet<usize> = Default::default();
        for i in 1..=149usize {
            let base = 17148 + (i - 1) * 5;
            ladder.insert(rows[base + 3].o[0].wire);
            ladder.insert(rows[base + 4].o[0].wire);
        }
        let classify = |label: &str, s: &[Term]| {
            use std::collections::BTreeMap;
            let mut ladder_coeffs: BTreeMap<&str, usize> = BTreeMap::new();
            let mut others: Vec<(usize, String)> = Vec::new();
            for t in s {
                if ladder.contains(&t.wire) {
                    *ladder_coeffs.entry(t.coeff.as_str()).or_default() += 1;
                } else {
                    others.push((t.wire, t.coeff[..t.coeff.len().min(10)].to_string()));
                }
            }
            eprint!("  {label}: ladder[");
            for (c, n) in &ladder_coeffs {
                eprint!("{}..x{n} ", &c[..c.len().min(8)]);
            }
            eprintln!(
                "] others={:?}",
                others
                    .iter()
                    .map(|(w, c)| format!("w{w}={c}.."))
                    .collect::<Vec<_>>()
            );
        };
        let _ = &classify;
        // Full-precision export: for each row, print each side as
        //   side: <ladder-group-coeffs with counts> | b0=<c> | const(w0)=<c> | interm w<n>=<c>
        let exact = |label: &str, s: &[Term]| {
            use std::collections::BTreeMap;
            let mut lg: BTreeMap<&str, usize> = BTreeMap::new();
            let mut sx: BTreeMap<&str, usize> = BTreeMap::new();
            let mut sy: BTreeMap<&str, usize> = BTreeMap::new();
            // split ladder into sdx (selX.O) vs sdy (selY.O)
            let mut sdx: std::collections::BTreeSet<usize> = Default::default();
            let mut sdy: std::collections::BTreeSet<usize> = Default::default();
            for i in 1..=149usize {
                let base = 17148 + (i - 1) * 5;
                sdx.insert(rows[base + 3].o[0].wire);
                sdy.insert(rows[base + 4].o[0].wire);
            }
            let mut rest: Vec<String> = Vec::new();
            for t in s {
                if sdx.contains(&t.wire) {
                    *sx.entry(t.coeff.as_str()).or_default() += 1;
                } else if sdy.contains(&t.wire) {
                    *sy.entry(t.coeff.as_str()).or_default() += 1;
                } else if ladder.contains(&t.wire) {
                    *lg.entry(t.coeff.as_str()).or_default() += 1;
                } else {
                    rest.push(format!("w{}={}", t.wire, t.coeff));
                }
            }
            let fmt = |m: &BTreeMap<&str, usize>| {
                m.iter()
                    .map(|(c, n)| format!("{c}(x{n})"))
                    .collect::<Vec<_>>()
                    .join(",")
            };
            eprintln!(
                "  {label}: sdx[{}] sdy[{}] other[{}] rest[{}]",
                fmt(&sx),
                fmt(&sy),
                fmt(&lg),
                rest.join(", ")
            );
        };
        for r in 17893usize..=17898 {
            eprintln!("== row {r} ==");
            exact("L", &rows[r].l);
            exact("R", &rows[r].r);
            exact("O", &rows[r].o);
        }
    }

    #[test]
    fn dump_wide_rung() {
        let sr = load_sr1cs("../../../tools/gnark/artifacts/consolidate2x1/consolidate2x1.sr1cs")
            .unwrap();
        let rows = parse_rows(&sr).unwrap();
        let fused_base = 17148usize;
        for i in [1usize, 2, 3, 5] {
            let base = fused_base + (i - 1) * 5;
            let v2 = &rows[base];
            let pr = |label: &str, s: &[Term]| {
                let terms: Vec<String> = s
                    .iter()
                    .map(|t| format!("{}@w{}", &t.coeff[..t.coeff.len().min(6)], t.wire))
                    .collect();
                eprintln!("  rung{i} {label} ({}): {}", s.len(), terms.join(", "));
            };
            let ax = &rows[base + 1];
            let ay = &rows[base + 2];
            let slx = &rows[base + 3];
            let sly = &rows[base + 4];
            eprintln!("== rung {i} (base row {base}) ==");
            pr("v2.L", &v2.l);
            pr("v2.R", &v2.r);
            pr("v2.O", &v2.o);
            pr("addX.L", &ax.l);
            pr("addX.R", &ax.r);
            pr("addX.O", &ax.o);
            pr("addY.L", &ay.l);
            pr("addY.R", &ay.r);
            pr("addY.O", &ay.o);
            pr("selX.L", &slx.l);
            pr("selX.R", &slx.r);
            pr("selX.O", &slx.o);
            pr("selY.L", &sly.l);
            pr("selY.R", &sly.r);
            pr("selY.O", &sly.o);
        }
    }

    #[test]
    fn emit_tail_inst0() {
        let sr = load_sr1cs("../../../tools/gnark/artifacts/consolidate2x1/consolidate2x1.sr1cs")
            .unwrap();
        let rows = parse_rows(&sr).unwrap();
        let out = emit_tail(&rows, 17893, "inst0");
        std::fs::write("/tmp/tail_gen.lean", &out).unwrap();
        // every baked literal must have been resolved (no `expect` panic) and the
        // 7 const-identity lemmas + tail theorem present.
        for needle in [
            "theorem cLa",
            "theorem cQb0",
            "theorem tail\n",
            "deployedTail_addSpec",
        ] {
            assert!(out.contains(needle), "missing {needle}");
        }
    }

    #[test]
    fn locate_inst1_tail() {
        let sr = load_sr1cs("../../../tools/gnark/artifacts/consolidate2x1/consolidate2x1.sr1cs")
            .unwrap();
        let rows = parse_rows(&sr).unwrap();
        // i67-style row: L = single w0 coeff "1", R len > 250, O len 1.
        for (idx, r) in rows.iter().enumerate().filter(|(i, _)| *i > 13000) {
            if r.o.len() == 1
                && r.l.len() == 1
                && r.l[0].wire == 0
                && r.l[0].coeff == "1"
                && r.r.len() > 250
            {
                let ones = r.r.iter().filter(|t| t.coeff == "1").count();
                eprintln!(
                    "row {idx}: R len {} ones {} O.wire {}",
                    r.r.len(),
                    ones,
                    r.o[0].wire
                );
            }
        }
    }

    #[test]
    fn emit_tail_inst1() {
        // inst1 rvk tail located at row 30523 (same i67 signature as inst0's 17893).
        let sr = load_sr1cs("../../../tools/gnark/artifacts/consolidate2x1/consolidate2x1.sr1cs")
            .unwrap();
        let rows = parse_rows(&sr).unwrap();
        let out = emit_tail(&rows, 30523, "inst1");
        std::fs::write("/tmp/tail_gen_inst1.lean", &out).unwrap();
        assert!(out.contains("deployedTail_addSpec"));
    }

    #[test]
    fn emit_inst0_prefix() {
        let sr = load_sr1cs("../../../tools/gnark/artifacts/consolidate2x1/consolidate2x1.sr1cs")
            .unwrap();
        let rows = parse_rows(&sr).unwrap();
        let n: usize = std::env::var("RVK_N")
            .ok()
            .and_then(|s| s.parse().ok())
            .unwrap_or(3);
        let out = emit_rvk_file(&rows, 17148, n, "Inst0");
        std::fs::write("/tmp/rvkfixed_gen.lean", &out).unwrap();
        eprintln!("wrote /tmp/rvkfixed_gen.lean ({} bytes)", out.len());
    }

    #[test]
    fn emit_nb_seg46() {
        let sr = load_sr1cs("../../../tools/gnark/artifacts/consolidate2x1/consolidate2x1.sr1cs")
            .unwrap();
        let rows = parse_rows(&sr).unwrap();
        let n: usize = std::env::var("NB_N")
            .ok()
            .and_then(|s| s.parse().ok())
            .unwrap_or(149);
        // seg46 (NB-1 conservation shape) starts at absolute row 32840; first
        // fused blinding rung at segment-relative 640 (BLIND_COPY_ROW + 1; see
        // gen/gen_nb_slice.py BLIND_* constants).
        let out = emit_nb_file(&rows, 32840 + 640, n);
        std::fs::write(
            "../../../tools/gnark/lean/ShielddGnarkFormal/NbFixedGenSeg46.lean",
            &out,
        )
        .unwrap();
        eprintln!("wrote NbFixedGenSeg46.lean ({} bytes)", out.len());
    }

    #[test]
    fn emit_inst1_prefix() {
        let sr = load_sr1cs("../../../tools/gnark/artifacts/consolidate2x1/consolidate2x1.sr1cs")
            .unwrap();
        let rows = parse_rows(&sr).unwrap();
        let n: usize = std::env::var("RVK_N")
            .ok()
            .and_then(|s| s.parse().ok())
            .unwrap_or(3);
        // inst1 fused ladder base = inst0 17148 + tail offset (30523-17893) = 29778.
        let out = emit_rvk_file(&rows, 29778, n, "Inst1");
        std::fs::write("/tmp/rvkfixed_gen_inst1.lean", &out).unwrap();
        eprintln!("wrote /tmp/rvkfixed_gen_inst1.lean ({} bytes)", out.len());
    }
}

#[cfg(test)]
mod fanout_probe {
    use crate::ir::parse_rows;
    use crate::load_sr1cs;
    #[test]
    fn detect_b0() {
        let sr = load_sr1cs("../../../tools/gnark/artifacts/consolidate2x1/consolidate2x1.sr1cs")
            .unwrap();
        let rows = parse_rows(&sr).unwrap();
        for (name, fb) in [("inst0", 17148usize), ("inst1", 29778usize)] {
            let v2 = &rows[fb];
            eprintln!(
                "{name} fb={fb}: L={:?} R.len={} O={:?}",
                v2.l.iter().map(|t| t.wire).collect::<Vec<_>>(),
                v2.r.len(),
                v2.o.iter().map(|t| t.wire).collect::<Vec<_>>()
            );
        }
    }
}

#[cfg(test)]
mod transfer_probe {
    use super::*;
    use crate::ir::parse_rows;
    use crate::load_sr1cs;
    #[test]
    fn locate_transfer_rvk() {
        let sr = load_sr1cs("../../../tools/gnark/artifacts/transfer/transfer.sr1cs").unwrap();
        let rows = parse_rows(&sr).unwrap();
        eprintln!("transfer total rows: {}", rows.len());
        // i67-style tail row: L = single w0 coeff "1", R len > 250, O len 1.
        // fused-rung fingerprint: v2 product row has L.len 1, R.len 2, O.len 1.
        let is_v2 = |c: &Constraint| c.l.len() == 1 && c.r.len() == 2 && c.o.len() == 1;
        // scan for stride-5 runs of v2 rows; report run length >= 100.
        let mut idx = 0usize;
        while idx + 5 < rows.len() {
            if is_v2(&rows[idx]) {
                let mut run = 1;
                while is_v2(&rows[idx + run * 5]) && idx + (run + 1) * 5 < rows.len() {
                    run += 1;
                }
                if run >= 100 {
                    eprintln!(
                        "v2-run fused_base {idx} len {run} b0={}",
                        rows[idx].l[0].wire
                    );
                    idx += run * 5;
                    continue;
                }
            }
            idx += 1;
        }
    }
}
