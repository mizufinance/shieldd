import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccX2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg30AccX31 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX30 rho + rho 28715
def seg30AccX32 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX31 rho + rho 28720
def seg30AccX33 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX32 rho + rho 28725
def seg30AccX34 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX33 rho + rho 28730
def seg30AccX35 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX34 rho + rho 28735
def seg30AccX36 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX35 rho + rho 28740
def seg30AccX37 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX36 rho + rho 28745
def seg30AccX38 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX37 rho + rho 28750
def seg30AccX39 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX38 rho + rho 28755
def seg30AccX40 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX39 rho + rho 28760

theorem seg30AccX31_sum (rho : Nat -> Seg30.F) :
    seg30AccX31 rho = ((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) := by
  rw [seg30AccX31, seg30AccX30_sum]

theorem seg30AccX32_sum (rho : Nat -> Seg30.F) :
    seg30AccX32 rho = (((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) := by
  rw [seg30AccX32, seg30AccX31_sum]

theorem seg30AccX33_sum (rho : Nat -> Seg30.F) :
    seg30AccX33 rho = ((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) := by
  rw [seg30AccX33, seg30AccX32_sum]

theorem seg30AccX34_sum (rho : Nat -> Seg30.F) :
    seg30AccX34 rho = (((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) := by
  rw [seg30AccX34, seg30AccX33_sum]

theorem seg30AccX35_sum (rho : Nat -> Seg30.F) :
    seg30AccX35 rho = ((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) := by
  rw [seg30AccX35, seg30AccX34_sum]

theorem seg30AccX36_sum (rho : Nat -> Seg30.F) :
    seg30AccX36 rho = (((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) := by
  rw [seg30AccX36, seg30AccX35_sum]

theorem seg30AccX37_sum (rho : Nat -> Seg30.F) :
    seg30AccX37 rho = ((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) := by
  rw [seg30AccX37, seg30AccX36_sum]

theorem seg30AccX38_sum (rho : Nat -> Seg30.F) :
    seg30AccX38 rho = (((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) := by
  rw [seg30AccX38, seg30AccX37_sum]

theorem seg30AccX39_sum (rho : Nat -> Seg30.F) :
    seg30AccX39 rho = ((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) := by
  rw [seg30AccX39, seg30AccX38_sum]

theorem seg30AccX40_sum (rho : Nat -> Seg30.F) :
    seg30AccX40 rho = (((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) := by
  rw [seg30AccX40, seg30AccX39_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
