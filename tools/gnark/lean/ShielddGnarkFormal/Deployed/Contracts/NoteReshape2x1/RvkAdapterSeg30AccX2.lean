import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccX1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg30AccX21 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX20 rho + rho 28665
def seg30AccX22 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX21 rho + rho 28670
def seg30AccX23 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX22 rho + rho 28675
def seg30AccX24 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX23 rho + rho 28680
def seg30AccX25 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX24 rho + rho 28685
def seg30AccX26 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX25 rho + rho 28690
def seg30AccX27 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX26 rho + rho 28695
def seg30AccX28 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX27 rho + rho 28700
def seg30AccX29 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX28 rho + rho 28705
def seg30AccX30 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX29 rho + rho 28710

theorem seg30AccX21_sum (rho : Nat -> Seg30.F) :
    seg30AccX21 rho = ((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) := by
  rw [seg30AccX21, seg30AccX20_sum]

theorem seg30AccX22_sum (rho : Nat -> Seg30.F) :
    seg30AccX22 rho = (((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) := by
  rw [seg30AccX22, seg30AccX21_sum]

theorem seg30AccX23_sum (rho : Nat -> Seg30.F) :
    seg30AccX23 rho = ((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) := by
  rw [seg30AccX23, seg30AccX22_sum]

theorem seg30AccX24_sum (rho : Nat -> Seg30.F) :
    seg30AccX24 rho = (((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) := by
  rw [seg30AccX24, seg30AccX23_sum]

theorem seg30AccX25_sum (rho : Nat -> Seg30.F) :
    seg30AccX25 rho = ((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) := by
  rw [seg30AccX25, seg30AccX24_sum]

theorem seg30AccX26_sum (rho : Nat -> Seg30.F) :
    seg30AccX26 rho = (((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) := by
  rw [seg30AccX26, seg30AccX25_sum]

theorem seg30AccX27_sum (rho : Nat -> Seg30.F) :
    seg30AccX27 rho = ((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) := by
  rw [seg30AccX27, seg30AccX26_sum]

theorem seg30AccX28_sum (rho : Nat -> Seg30.F) :
    seg30AccX28 rho = (((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) := by
  rw [seg30AccX28, seg30AccX27_sum]

theorem seg30AccX29_sum (rho : Nat -> Seg30.F) :
    seg30AccX29 rho = ((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) := by
  rw [seg30AccX29, seg30AccX28_sum]

theorem seg30AccX30_sum (rho : Nat -> Seg30.F) :
    seg30AccX30 rho = (((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) := by
  rw [seg30AccX30, seg30AccX29_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
