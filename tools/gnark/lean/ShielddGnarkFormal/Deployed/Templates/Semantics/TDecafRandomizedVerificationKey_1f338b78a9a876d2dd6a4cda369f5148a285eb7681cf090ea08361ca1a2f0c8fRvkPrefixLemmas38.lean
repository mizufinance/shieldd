import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem rvk_prefix_39_v2 (rho : Nat -> F)
    (r442 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow442 rho) :
    (4055808561599814462885459923885954734183140044469009082707959598090942531216*rho 1 + 919177287557471400886151427262146296905684745211404392707875994351732261419*rvkAccX38 rho)*(2459406165588571115311174697897461555967218978176849787735079515445045239877 + 3561836517110067914917388337528013887729344884646458938509273390102621545248*rho 1 + 2459406165588571115311174697897461555967218978176849787735079515445045239877*rvkAccY38 rho) = rho 443 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow442 at r442
  simp only [one_mul, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc181, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX38, rvkAccY38, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc182] at r442 ⊢
  ring_nf at r442 ⊢
  exact r442

theorem rvk_prefix_39_addX (rho : Nat -> F)
    (r443 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow443 rho) :
    rho 444*(1 + rho 443) = 2459406165588571115311174697897461555967218978176849787735079515445045239877 + 5366117760719104240009535820294641980238990105175700970320241128819874078089*rho 1 + 5034556368092701954807355136104875024596127238450076252401212621682093933060*rvkAccX38 rho + 2459406165588571115311174697897461555967218978176849787735079515445045239877*rvkAccY38 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow443 at r443
  simp only [one_mul, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc183, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX38, rvkAccY38] at r443 ⊢
  ring_nf at r443 ⊢
  exact r443

theorem rvk_prefix_39_addY (rho : Nat -> F)
    (r444 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow444 rho) :
    rho 445*(1 + (-1)*rho 443) = 5034556368092701954807355136104875024596127238450076252401212621682093933060 + 2776352286685200723773157721639124171677345230423218268294247495348690302387*rho 1 + 2459406165588571115311174697897461555967218978176849787735079515445045239877*rvkAccX38 rho + 5034556368092701954807355136104875024596127238450076252401212621682093933060*rvkAccY38 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow444 at r444
  simp only [one_mul, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc184, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX38, rvkAccY38] at r444 ⊢
  ring_nf at r444 ⊢
  exact r444

theorem rvk_prefix_39_selX (rho : Nat -> F)
    (r445 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow445 rho) :
    (1*rho 40)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX38 rho + rho 444) = rho 446 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow445 at r445
  simp only [one_mul, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc185, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX38, rvkAccY38] at r445 ⊢
  ring_nf at r445 ⊢
  exact r445

theorem rvk_prefix_39_selY (rho : Nat -> F)
    (r446 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow446 rho) :
    (1*rho 40)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY38 rho + rho 445) = rho 447 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow446 at r446
  simp only [one_mul, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc186, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX38, rvkAccY38] at r446 ⊢
  ring_nf at r446 ⊢
  exact r446


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

