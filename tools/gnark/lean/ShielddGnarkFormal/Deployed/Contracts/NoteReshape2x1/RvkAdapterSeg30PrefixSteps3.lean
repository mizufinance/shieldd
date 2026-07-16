import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep31
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep32
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep33
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep34
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep35
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep36
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep37
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep38
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep39
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep40

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_steps3 (rho : Nat -> Seg30.F)
    (r31 : Seg30.relationRow31 rho)
    (r402 : Seg30.relationRow402 rho)
    (r403 : Seg30.relationRow403 rho)
    (r404 : Seg30.relationRow404 rho)
    (r405 : Seg30.relationRow405 rho)
    (r406 : Seg30.relationRow406 rho)
    (r32 : Seg30.relationRow32 rho)
    (r407 : Seg30.relationRow407 rho)
    (r408 : Seg30.relationRow408 rho)
    (r409 : Seg30.relationRow409 rho)
    (r410 : Seg30.relationRow410 rho)
    (r411 : Seg30.relationRow411 rho)
    (r33 : Seg30.relationRow33 rho)
    (r412 : Seg30.relationRow412 rho)
    (r413 : Seg30.relationRow413 rho)
    (r414 : Seg30.relationRow414 rho)
    (r415 : Seg30.relationRow415 rho)
    (r416 : Seg30.relationRow416 rho)
    (r34 : Seg30.relationRow34 rho)
    (r417 : Seg30.relationRow417 rho)
    (r418 : Seg30.relationRow418 rho)
    (r419 : Seg30.relationRow419 rho)
    (r420 : Seg30.relationRow420 rho)
    (r421 : Seg30.relationRow421 rho)
    (r35 : Seg30.relationRow35 rho)
    (r422 : Seg30.relationRow422 rho)
    (r423 : Seg30.relationRow423 rho)
    (r424 : Seg30.relationRow424 rho)
    (r425 : Seg30.relationRow425 rho)
    (r426 : Seg30.relationRow426 rho)
    (r36 : Seg30.relationRow36 rho)
    (r427 : Seg30.relationRow427 rho)
    (r428 : Seg30.relationRow428 rho)
    (r429 : Seg30.relationRow429 rho)
    (r430 : Seg30.relationRow430 rho)
    (r431 : Seg30.relationRow431 rho)
    (r37 : Seg30.relationRow37 rho)
    (r432 : Seg30.relationRow432 rho)
    (r433 : Seg30.relationRow433 rho)
    (r434 : Seg30.relationRow434 rho)
    (r435 : Seg30.relationRow435 rho)
    (r436 : Seg30.relationRow436 rho)
    (r38 : Seg30.relationRow38 rho)
    (r437 : Seg30.relationRow437 rho)
    (r438 : Seg30.relationRow438 rho)
    (r439 : Seg30.relationRow439 rho)
    (r440 : Seg30.relationRow440 rho)
    (r441 : Seg30.relationRow441 rho)
    (r39 : Seg30.relationRow39 rho)
    (r442 : Seg30.relationRow442 rho)
    (r443 : Seg30.relationRow443 rho)
    (r444 : Seg30.relationRow444 rho)
    (r445 : Seg30.relationRow445 rho)
    (r446 : Seg30.relationRow446 rho)
    (r40 : Seg30.relationRow40 rho)
    (r447 : Seg30.relationRow447 rho)
    (r448 : Seg30.relationRow448 rho)
    (r449 : Seg30.relationRow449 rho)
    (r450 : Seg30.relationRow450 rho)
    (r451 : Seg30.relationRow451 rho)
    : ∀ i, 31 ≤ i → i ≤ 40 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_prefix_step31 rho r31 r402 r403 r404 r405 r406 hacc
  · exact seg30_prefix_step32 rho r32 r407 r408 r409 r410 r411 hacc
  · exact seg30_prefix_step33 rho r33 r412 r413 r414 r415 r416 hacc
  · exact seg30_prefix_step34 rho r34 r417 r418 r419 r420 r421 hacc
  · exact seg30_prefix_step35 rho r35 r422 r423 r424 r425 r426 hacc
  · exact seg30_prefix_step36 rho r36 r427 r428 r429 r430 r431 hacc
  · exact seg30_prefix_step37 rho r37 r432 r433 r434 r435 r436 hacc
  · exact seg30_prefix_step38 rho r38 r437 r438 r439 r440 r441 hacc
  · exact seg30_prefix_step39 rho r39 r442 r443 r444 r445 r446 hacc
  · exact seg30_prefix_step40 rho r40 r447 r448 r449 r450 r451 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

