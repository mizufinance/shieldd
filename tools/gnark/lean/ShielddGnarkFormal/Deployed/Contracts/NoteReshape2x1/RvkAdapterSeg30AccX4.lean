import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccX3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg30AccX41 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX40 rho + rho 28765
def seg30AccX42 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX41 rho + rho 28770
def seg30AccX43 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX42 rho + rho 28775
def seg30AccX44 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX43 rho + rho 28780
def seg30AccX45 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX44 rho + rho 28785
def seg30AccX46 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX45 rho + rho 28790
def seg30AccX47 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX46 rho + rho 28795
def seg30AccX48 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX47 rho + rho 28800
def seg30AccX49 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX48 rho + rho 28805
def seg30AccX50 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX49 rho + rho 28810

theorem seg30AccX41_sum (rho : Nat -> Seg30.F) :
    seg30AccX41 rho = ((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) := by
  rw [seg30AccX41, seg30AccX40_sum]

theorem seg30AccX42_sum (rho : Nat -> Seg30.F) :
    seg30AccX42 rho = (((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) := by
  rw [seg30AccX42, seg30AccX41_sum]

theorem seg30AccX43_sum (rho : Nat -> Seg30.F) :
    seg30AccX43 rho = ((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) := by
  rw [seg30AccX43, seg30AccX42_sum]

theorem seg30AccX44_sum (rho : Nat -> Seg30.F) :
    seg30AccX44 rho = (((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) := by
  rw [seg30AccX44, seg30AccX43_sum]

theorem seg30AccX45_sum (rho : Nat -> Seg30.F) :
    seg30AccX45 rho = ((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) := by
  rw [seg30AccX45, seg30AccX44_sum]

theorem seg30AccX46_sum (rho : Nat -> Seg30.F) :
    seg30AccX46 rho = (((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) := by
  rw [seg30AccX46, seg30AccX45_sum]

theorem seg30AccX47_sum (rho : Nat -> Seg30.F) :
    seg30AccX47 rho = ((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) := by
  rw [seg30AccX47, seg30AccX46_sum]

theorem seg30AccX48_sum (rho : Nat -> Seg30.F) :
    seg30AccX48 rho = (((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) := by
  rw [seg30AccX48, seg30AccX47_sum]

theorem seg30AccX49_sum (rho : Nat -> Seg30.F) :
    seg30AccX49 rho = ((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) := by
  rw [seg30AccX49, seg30AccX48_sum]

theorem seg30AccX50_sum (rho : Nat -> Seg30.F) :
    seg30AccX50 rho = (((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) := by
  rw [seg30AccX50, seg30AccX49_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
