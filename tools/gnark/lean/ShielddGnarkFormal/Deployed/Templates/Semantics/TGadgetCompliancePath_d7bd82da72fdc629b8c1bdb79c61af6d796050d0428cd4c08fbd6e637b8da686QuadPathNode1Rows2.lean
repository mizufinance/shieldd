import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathBase
import ShielddGnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node1_seg20 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → Prop)
    (r511 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow511 rho)
    (r512 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow512 rho)
    (r513 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow513 rho)
    (r514 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow514 rho)
    (r515 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow515 rho)
    (tail : next (rho 491) (rho 496) (rho 501) (rho 506) (rho 511) (rho 516) (rho 521)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg20 (rho 491) (rho 496) (rho 501) (rho 506) (rho 511) (rho 516) next := by
  exact ⟨rho 517, rho 518, rho 519, rho 520, rho 521, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow511 at r511; linear_combination r511), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow512 at r512; linear_combination r512), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow513 at r513; linear_combination r513), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow514 at r514; linear_combination r514), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow515 at r515; linear_combination r515), tail⟩

theorem node1_seg21 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r516 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow516 rho)
    (r517 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow517 rho)
    (r518 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow518 rho)
    (r519 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow519 rho)
    (r520 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow520 rho)
    (tail : next (rho 491) (rho 496) (rho 501) (rho 506) (rho 511) (rho 516) (rho 521) (rho 526)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg21 (rho 491) (rho 496) (rho 501) (rho 506) (rho 511) (rho 516) (rho 521) next := by
  exact ⟨rho 522, rho 523, rho 524, rho 525, rho 526, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow516 at r516; linear_combination r516), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow517 at r517; linear_combination r517), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow518 at r518; linear_combination r518), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow519 at r519; linear_combination r519), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow520 at r520; linear_combination r520), tail⟩

theorem node1_seg22 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r521 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow521 rho)
    (r522 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow522 rho)
    (r523 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow523 rho)
    (r524 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow524 rho)
    (r525 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow525 rho)
    (tail : next (rho 491) (rho 496) (rho 501) (rho 506) (rho 511) (rho 516) (rho 521) (rho 526) (rho 531)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg22 (rho 491) (rho 496) (rho 501) (rho 506) (rho 511) (rho 516) (rho 521) (rho 526) next := by
  exact ⟨rho 527, rho 528, rho 529, rho 530, rho 531, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow521 at r521; linear_combination r521), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow522 at r522; linear_combination r522), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow523 at r523; linear_combination r523), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow524 at r524; linear_combination r524), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow525 at r525; linear_combination r525), tail⟩

theorem node1_seg23 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r526 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow526 rho)
    (r527 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow527 rho)
    (r528 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow528 rho)
    (r529 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow529 rho)
    (r530 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow530 rho)
    (tail : next (rho 491) (rho 496) (rho 501) (rho 506) (rho 511) (rho 516) (rho 521) (rho 526) (rho 531) (rho 536)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg23 (rho 491) (rho 496) (rho 501) (rho 506) (rho 511) (rho 516) (rho 521) (rho 526) (rho 531) next := by
  exact ⟨rho 532, rho 533, rho 534, rho 535, rho 536, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow526 at r526; linear_combination r526), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow527 at r527; linear_combination r527), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow528 at r528; linear_combination r528), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow529 at r529; linear_combination r529), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow530 at r530; linear_combination r530), tail⟩

theorem node1_seg24 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r531 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow531 rho)
    (r532 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow532 rho)
    (r533 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow533 rho)
    (r534 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow534 rho)
    (r535 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow535 rho)
    (tail : next (rho 491) (rho 496) (rho 501) (rho 506) (rho 511) (rho 516) (rho 521) (rho 526) (rho 531) (rho 536) (rho 541)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg24 (rho 491) (rho 496) (rho 501) (rho 506) (rho 511) (rho 516) (rho 521) (rho 526) (rho 531) (rho 536) next := by
  exact ⟨rho 537, rho 538, rho 539, rho 540, rho 541, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow531 at r531; linear_combination r531), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow532 at r532; linear_combination r532), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow533 at r533; linear_combination r533), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow534 at r534; linear_combination r534), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow535 at r535; linear_combination r535), tail⟩

theorem node1_seg25 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r536 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow536 rho)
    (r537 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow537 rho)
    (r538 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow538 rho)
    (r539 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow539 rho)
    (r540 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow540 rho)
    (tail : next (rho 491) (rho 496) (rho 501) (rho 506) (rho 511) (rho 516) (rho 521) (rho 526) (rho 531) (rho 536) (rho 541) (rho 546)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg25 (rho 491) (rho 496) (rho 501) (rho 506) (rho 511) (rho 516) (rho 521) (rho 526) (rho 531) (rho 536) (rho 541) next := by
  exact ⟨rho 542, rho 543, rho 544, rho 545, rho 546, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow536 at r536; linear_combination r536), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow537 at r537; linear_combination r537), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow538 at r538; linear_combination r538), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow539 at r539; linear_combination r539), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow540 at r540; linear_combination r540), tail⟩

theorem node1_seg26 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r541 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow541 rho)
    (r542 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow542 rho)
    (r543 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow543 rho)
    (r544 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow544 rho)
    (r545 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow545 rho)
    (tail : next (rho 491) (rho 496) (rho 501) (rho 506) (rho 511) (rho 516) (rho 521) (rho 526) (rho 531) (rho 536) (rho 541) (rho 546) (rho 551)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg26 (rho 491) (rho 496) (rho 501) (rho 506) (rho 511) (rho 516) (rho 521) (rho 526) (rho 531) (rho 536) (rho 541) (rho 546) next := by
  exact ⟨rho 547, rho 548, rho 549, rho 550, rho 551, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow541 at r541; linear_combination r541), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow542 at r542; linear_combination r542), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow543 at r543; linear_combination r543), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow544 at r544; linear_combination r544), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow545 at r545; linear_combination r545), tail⟩

theorem node1_seg27 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r546 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow546 rho)
    (r547 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow547 rho)
    (r548 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow548 rho)
    (r549 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow549 rho)
    (r550 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow550 rho)
    (tail : next (rho 491) (rho 496) (rho 501) (rho 506) (rho 511) (rho 516) (rho 521) (rho 526) (rho 531) (rho 536) (rho 541) (rho 546) (rho 551) (rho 556)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg27 (rho 491) (rho 496) (rho 501) (rho 506) (rho 511) (rho 516) (rho 521) (rho 526) (rho 531) (rho 536) (rho 541) (rho 546) (rho 551) next := by
  exact ⟨rho 552, rho 553, rho 554, rho 555, rho 556, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow546 at r546; linear_combination r546), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow547 at r547; linear_combination r547), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow548 at r548; linear_combination r548), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow549 at r549; linear_combination r549), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow550 at r550; linear_combination r550), tail⟩

theorem node1_seg28 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r551 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow551 rho)
    (r552 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow552 rho)
    (r553 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow553 rho)
    (r554 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow554 rho)
    (r555 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow555 rho)
    (tail : next (rho 491) (rho 496) (rho 501) (rho 506) (rho 511) (rho 516) (rho 521) (rho 526) (rho 531) (rho 536) (rho 541) (rho 546) (rho 551) (rho 556) (rho 561)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg28 (rho 491) (rho 496) (rho 501) (rho 506) (rho 511) (rho 516) (rho 521) (rho 526) (rho 531) (rho 536) (rho 541) (rho 546) (rho 551) (rho 556) next := by
  exact ⟨rho 557, rho 558, rho 559, rho 560, rho 561, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow551 at r551; linear_combination r551), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow552 at r552; linear_combination r552), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow553 at r553; linear_combination r553), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow554 at r554; linear_combination r554), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow555 at r555; linear_combination r555), tail⟩

theorem node1_seg29 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r556 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow556 rho)
    (r557 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow557 rho)
    (r558 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow558 rho)
    (r559 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow559 rho)
    (r560 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow560 rho)
    (tail : next (rho 491) (rho 496) (rho 501) (rho 506) (rho 511) (rho 516) (rho 521) (rho 526) (rho 531) (rho 536) (rho 541) (rho 546) (rho 551) (rho 556) (rho 561) (rho 566)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg29 (rho 491) (rho 496) (rho 501) (rho 506) (rho 511) (rho 516) (rho 521) (rho 526) (rho 531) (rho 536) (rho 541) (rho 546) (rho 551) (rho 556) (rho 561) next := by
  exact ⟨rho 562, rho 563, rho 564, rho 565, rho 566, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow556 at r556; linear_combination r556), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow557 at r557; linear_combination r557), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow558 at r558; linear_combination r558), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow559 at r559; linear_combination r559), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow560 at r560; linear_combination r560), tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686
