import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node20_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7823 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7823 rho)
    (r7824 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7824 rho)
    (r7825 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7825 rho)
    (r7826 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7826 rho)
    (r7827 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7827 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) (rho 7778) (rho 7783) (rho 7788) (rho 7793) (rho 7798) (rho 7803) (rho 7808)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg50 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) (rho 7778) (rho 7783) (rho 7788) (rho 7793) (rho 7798) (rho 7803) next := by
  exact ⟨rho 7804, rho 7805, rho 7806, rho 7807, rho 7808, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7823 at r7823; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc188, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc188Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc188Part1] at r7823; linear_combination r7823), r7824, r7825, r7826, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7827 at r7827; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc188, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc188Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc188Part1] at r7827; linear_combination r7827), tail⟩

theorem template_scp_node20_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7828 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7828 rho)
    (r7829 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7829 rho)
    (r7830 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7830 rho)
    (r7831 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7831 rho)
    (r7832 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7832 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) (rho 7778) (rho 7783) (rho 7788) (rho 7793) (rho 7798) (rho 7803) (rho 7808) (rho 7813)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg51 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) (rho 7778) (rho 7783) (rho 7788) (rho 7793) (rho 7798) (rho 7803) (rho 7808) next := by
  exact ⟨rho 7809, rho 7810, rho 7811, rho 7812, rho 7813, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7828 at r7828; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc189, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc189Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc189Part1] at r7828; linear_combination r7828), r7829, r7830, r7831, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7832 at r7832; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc189, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc189Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc189Part1] at r7832; linear_combination r7832), tail⟩

theorem template_scp_node20_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7833 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7833 rho)
    (r7834 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7834 rho)
    (r7835 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7835 rho)
    (r7836 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7836 rho)
    (r7837 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7837 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) (rho 7778) (rho 7783) (rho 7788) (rho 7793) (rho 7798) (rho 7803) (rho 7808) (rho 7813) (rho 7818)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg52 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) (rho 7778) (rho 7783) (rho 7788) (rho 7793) (rho 7798) (rho 7803) (rho 7808) (rho 7813) next := by
  exact ⟨rho 7814, rho 7815, rho 7816, rho 7817, rho 7818, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7833 at r7833; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc190, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc190Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc190Part1] at r7833; linear_combination r7833), r7834, r7835, r7836, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7837 at r7837; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc190, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc190Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc190Part1] at r7837; linear_combination r7837), tail⟩

theorem template_scp_node20_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r7838 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7838 rho)
    (r7839 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7839 rho)
    (r7840 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7840 rho)
    (r7841 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7841 rho)
    (r7842 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7842 rho)
    (tail : next (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) (rho 7778) (rho 7783) (rho 7788) (rho 7793) (rho 7798) (rho 7803) (rho 7808) (rho 7813) (rho 7818) (rho 7823)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg53 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) (rho 7778) (rho 7783) (rho 7788) (rho 7793) (rho 7798) (rho 7803) (rho 7808) (rho 7813) (rho 7818) next := by
  exact ⟨rho 7819, rho 7820, rho 7821, rho 7822, rho 7823, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7838 at r7838; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc191, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc191Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc191Part1] at r7838; linear_combination r7838), r7839, r7840, r7841, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7842 at r7842; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc191, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc191Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc191Part1] at r7842; linear_combination r7842), tail⟩

theorem template_scp_node20_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7843 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7843 rho)
    (r7844 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7844 rho)
    (r7845 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7845 rho)
    (r7846 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7846 rho)
    (r7847 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7847 rho)
    (tail : next (rho 7808) (rho 7813) (rho 7818) (rho 7823) (rho 7828)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg54 (rho 7628) (rho 7633) (rho 7638) (rho 7643) (rho 7648) (rho 7653) (rho 7658) (rho 7663) (rho 7668) (rho 7673) (rho 7678) (rho 7683) (rho 7688) (rho 7693) (rho 7698) (rho 7703) (rho 7708) (rho 7713) (rho 7718) (rho 7723) (rho 7728) (rho 7733) (rho 7738) (rho 7743) (rho 7748) (rho 7753) (rho 7758) (rho 7763) (rho 7768) (rho 7773) (rho 7778) (rho 7783) (rho 7788) (rho 7793) (rho 7798) (rho 7803) (rho 7808) (rho 7813) (rho 7818) (rho 7823) next := by
  exact ⟨rho 7824, rho 7825, rho 7826, rho 7827, rho 7828, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7843 at r7843; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc192, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc192Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc192Part1] at r7843; linear_combination r7843), r7844, r7845, r7846, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7847 at r7847; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc192, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc192Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc192Part1] at r7847; linear_combination r7847), tail⟩

theorem template_scp_node20_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r7848 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7848 rho)
    (r7849 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7849 rho)
    (r7850 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7850 rho)
    (r7851 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7851 rho)
    (r7852 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7852 rho)
    (tail : next (rho 7808) (rho 7813) (rho 7818) (rho 7823) (rho 7828) (rho 7833)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg55 (rho 7808) (rho 7813) (rho 7818) (rho 7823) (rho 7828) next := by
  exact ⟨rho 7829, rho 7830, rho 7831, rho 7832, rho 7833, r7848, r7849, r7850, r7851, r7852, tail⟩

theorem template_scp_node20_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r7853 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7853 rho)
    (r7854 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7854 rho)
    (r7855 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7855 rho)
    (r7856 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7856 rho)
    (r7857 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7857 rho)
    (tail : next (rho 7808) (rho 7813) (rho 7818) (rho 7823) (rho 7828) (rho 7833) (rho 7838)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg56 (rho 7808) (rho 7813) (rho 7818) (rho 7823) (rho 7828) (rho 7833) next := by
  exact ⟨rho 7834, rho 7835, rho 7836, rho 7837, rho 7838, r7853, r7854, r7855, r7856, r7857, tail⟩

theorem template_scp_node20_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r7858 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7858 rho)
    (r7859 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7859 rho)
    (r7860 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7860 rho)
    (r7861 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7861 rho)
    (r7862 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7862 rho)
    (tail : next (rho 7808) (rho 7813) (rho 7818) (rho 7823) (rho 7828) (rho 7833) (rho 7838) (rho 7843)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg57 (rho 7808) (rho 7813) (rho 7818) (rho 7823) (rho 7828) (rho 7833) (rho 7838) next := by
  exact ⟨rho 7839, rho 7840, rho 7841, rho 7842, rho 7843, r7858, r7859, r7860, r7861, r7862, tail⟩

theorem template_scp_node20_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r7863 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7863 rho)
    (r7864 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7864 rho)
    (r7865 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7865 rho)
    (r7866 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7866 rho)
    (r7867 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7867 rho)
    (tail : next (rho 7808) (rho 7813) (rho 7818) (rho 7823) (rho 7828) (rho 7833) (rho 7838) (rho 7843) (rho 7848)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg58 (rho 7808) (rho 7813) (rho 7818) (rho 7823) (rho 7828) (rho 7833) (rho 7838) (rho 7843) next := by
  exact ⟨rho 7844, rho 7845, rho 7846, rho 7847, rho 7848, r7863, r7864, r7865, r7866, r7867, tail⟩

theorem template_scp_node20_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7868 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7868 rho)
    (r7869 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7869 rho)
    (r7870 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7870 rho)
    (r7871 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7871 rho)
    (r7872 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7872 rho)
    (tail : next (rho 7833) (rho 7838) (rho 7843) (rho 7848) (rho 7853)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg59 (rho 7808) (rho 7813) (rho 7818) (rho 7823) (rho 7828) (rho 7833) (rho 7838) (rho 7843) (rho 7848) next := by
  exact ⟨rho 7849, rho 7850, rho 7851, rho 7852, rho 7853, r7868, r7869, r7870, r7871, r7872, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

