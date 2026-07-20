import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccX0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg30AccX11 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX10 rho + rho 28615
def seg30AccX12 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX11 rho + rho 28620
def seg30AccX13 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX12 rho + rho 28625
def seg30AccX14 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX13 rho + rho 28630
def seg30AccX15 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX14 rho + rho 28635
def seg30AccX16 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX15 rho + rho 28640
def seg30AccX17 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX16 rho + rho 28645
def seg30AccX18 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX17 rho + rho 28650
def seg30AccX19 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX18 rho + rho 28655
def seg30AccX20 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX19 rho + rho 28660

theorem seg30AccX11_sum (rho : Nat -> Seg30.F) :
    seg30AccX11 rho = ((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) := by
  rw [seg30AccX11, seg30AccX10_sum]

theorem seg30AccX12_sum (rho : Nat -> Seg30.F) :
    seg30AccX12 rho = (((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) := by
  rw [seg30AccX12, seg30AccX11_sum]

theorem seg30AccX13_sum (rho : Nat -> Seg30.F) :
    seg30AccX13 rho = ((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) := by
  rw [seg30AccX13, seg30AccX12_sum]

theorem seg30AccX14_sum (rho : Nat -> Seg30.F) :
    seg30AccX14 rho = (((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) := by
  rw [seg30AccX14, seg30AccX13_sum]

theorem seg30AccX15_sum (rho : Nat -> Seg30.F) :
    seg30AccX15 rho = ((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) := by
  rw [seg30AccX15, seg30AccX14_sum]

theorem seg30AccX16_sum (rho : Nat -> Seg30.F) :
    seg30AccX16 rho = (((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) := by
  rw [seg30AccX16, seg30AccX15_sum]

theorem seg30AccX17_sum (rho : Nat -> Seg30.F) :
    seg30AccX17 rho = ((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) := by
  rw [seg30AccX17, seg30AccX16_sum]

theorem seg30AccX18_sum (rho : Nat -> Seg30.F) :
    seg30AccX18 rho = (((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) := by
  rw [seg30AccX18, seg30AccX17_sum]

theorem seg30AccX19_sum (rho : Nat -> Seg30.F) :
    seg30AccX19 rho = ((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) := by
  rw [seg30AccX19, seg30AccX18_sum]

theorem seg30AccX20_sum (rho : Nat -> Seg30.F) :
    seg30AccX20 rho = (((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) := by
  rw [seg30AccX20, seg30AccX19_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
