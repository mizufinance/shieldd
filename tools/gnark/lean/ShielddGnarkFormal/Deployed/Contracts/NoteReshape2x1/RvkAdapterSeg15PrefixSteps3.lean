import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep31
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep32
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep33
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep34
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep35
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep36
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep37
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep38
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep39
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep40

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_steps3 (rho : Nat -> Seg15.F)
    (r31 : Seg15.relationRow31 rho)
    (r402 : Seg15.relationRow402 rho)
    (r403 : Seg15.relationRow403 rho)
    (r404 : Seg15.relationRow404 rho)
    (r405 : Seg15.relationRow405 rho)
    (r406 : Seg15.relationRow406 rho)
    (r32 : Seg15.relationRow32 rho)
    (r407 : Seg15.relationRow407 rho)
    (r408 : Seg15.relationRow408 rho)
    (r409 : Seg15.relationRow409 rho)
    (r410 : Seg15.relationRow410 rho)
    (r411 : Seg15.relationRow411 rho)
    (r33 : Seg15.relationRow33 rho)
    (r412 : Seg15.relationRow412 rho)
    (r413 : Seg15.relationRow413 rho)
    (r414 : Seg15.relationRow414 rho)
    (r415 : Seg15.relationRow415 rho)
    (r416 : Seg15.relationRow416 rho)
    (r34 : Seg15.relationRow34 rho)
    (r417 : Seg15.relationRow417 rho)
    (r418 : Seg15.relationRow418 rho)
    (r419 : Seg15.relationRow419 rho)
    (r420 : Seg15.relationRow420 rho)
    (r421 : Seg15.relationRow421 rho)
    (r35 : Seg15.relationRow35 rho)
    (r422 : Seg15.relationRow422 rho)
    (r423 : Seg15.relationRow423 rho)
    (r424 : Seg15.relationRow424 rho)
    (r425 : Seg15.relationRow425 rho)
    (r426 : Seg15.relationRow426 rho)
    (r36 : Seg15.relationRow36 rho)
    (r427 : Seg15.relationRow427 rho)
    (r428 : Seg15.relationRow428 rho)
    (r429 : Seg15.relationRow429 rho)
    (r430 : Seg15.relationRow430 rho)
    (r431 : Seg15.relationRow431 rho)
    (r37 : Seg15.relationRow37 rho)
    (r432 : Seg15.relationRow432 rho)
    (r433 : Seg15.relationRow433 rho)
    (r434 : Seg15.relationRow434 rho)
    (r435 : Seg15.relationRow435 rho)
    (r436 : Seg15.relationRow436 rho)
    (r38 : Seg15.relationRow38 rho)
    (r437 : Seg15.relationRow437 rho)
    (r438 : Seg15.relationRow438 rho)
    (r439 : Seg15.relationRow439 rho)
    (r440 : Seg15.relationRow440 rho)
    (r441 : Seg15.relationRow441 rho)
    (r39 : Seg15.relationRow39 rho)
    (r442 : Seg15.relationRow442 rho)
    (r443 : Seg15.relationRow443 rho)
    (r444 : Seg15.relationRow444 rho)
    (r445 : Seg15.relationRow445 rho)
    (r446 : Seg15.relationRow446 rho)
    (r40 : Seg15.relationRow40 rho)
    (r447 : Seg15.relationRow447 rho)
    (r448 : Seg15.relationRow448 rho)
    (r449 : Seg15.relationRow449 rho)
    (r450 : Seg15.relationRow450 rho)
    (r451 : Seg15.relationRow451 rho)
    : ∀ i, 31 ≤ i → i ≤ 40 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16130 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_prefix_step31 rho r31 r402 r403 r404 r405 r406 hacc
  · exact seg15_prefix_step32 rho r32 r407 r408 r409 r410 r411 hacc
  · exact seg15_prefix_step33 rho r33 r412 r413 r414 r415 r416 hacc
  · exact seg15_prefix_step34 rho r34 r417 r418 r419 r420 r421 hacc
  · exact seg15_prefix_step35 rho r35 r422 r423 r424 r425 r426 hacc
  · exact seg15_prefix_step36 rho r36 r427 r428 r429 r430 r431 hacc
  · exact seg15_prefix_step37 rho r37 r432 r433 r434 r435 r436 hacc
  · exact seg15_prefix_step38 rho r38 r437 r438 r439 r440 r441 hacc
  · exact seg15_prefix_step39 rho r39 r442 r443 r444 r445 r446 hacc
  · exact seg15_prefix_step40 rho r40 r447 r448 r449 r450 r451 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

