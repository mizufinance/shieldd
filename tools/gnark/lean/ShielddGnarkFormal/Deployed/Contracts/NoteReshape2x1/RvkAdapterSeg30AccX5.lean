import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccX4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg30AccX51 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX50 rho + rho 28815
def seg30AccX52 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX51 rho + rho 28820
def seg30AccX53 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX52 rho + rho 28825
def seg30AccX54 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX53 rho + rho 28830
def seg30AccX55 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX54 rho + rho 28835
def seg30AccX56 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX55 rho + rho 28840
def seg30AccX57 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX56 rho + rho 28845
def seg30AccX58 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX57 rho + rho 28850
def seg30AccX59 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX58 rho + rho 28855
def seg30AccX60 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX59 rho + rho 28860

theorem seg30AccX51_sum (rho : Nat -> Seg30.F) :
    seg30AccX51 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) + rho 28815) := by
  rw [seg30AccX51, seg30AccX50_sum]

theorem seg30AccX52_sum (rho : Nat -> Seg30.F) :
    seg30AccX52 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) + rho 28815) + rho 28820) := by
  rw [seg30AccX52, seg30AccX51_sum]

theorem seg30AccX53_sum (rho : Nat -> Seg30.F) :
    seg30AccX53 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) + rho 28815) + rho 28820) + rho 28825) := by
  rw [seg30AccX53, seg30AccX52_sum]

theorem seg30AccX54_sum (rho : Nat -> Seg30.F) :
    seg30AccX54 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) + rho 28815) + rho 28820) + rho 28825) + rho 28830) := by
  rw [seg30AccX54, seg30AccX53_sum]

theorem seg30AccX55_sum (rho : Nat -> Seg30.F) :
    seg30AccX55 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) + rho 28815) + rho 28820) + rho 28825) + rho 28830) + rho 28835) := by
  rw [seg30AccX55, seg30AccX54_sum]

theorem seg30AccX56_sum (rho : Nat -> Seg30.F) :
    seg30AccX56 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) + rho 28815) + rho 28820) + rho 28825) + rho 28830) + rho 28835) + rho 28840) := by
  rw [seg30AccX56, seg30AccX55_sum]

theorem seg30AccX57_sum (rho : Nat -> Seg30.F) :
    seg30AccX57 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) + rho 28815) + rho 28820) + rho 28825) + rho 28830) + rho 28835) + rho 28840) + rho 28845) := by
  rw [seg30AccX57, seg30AccX56_sum]

theorem seg30AccX58_sum (rho : Nat -> Seg30.F) :
    seg30AccX58 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) + rho 28815) + rho 28820) + rho 28825) + rho 28830) + rho 28835) + rho 28840) + rho 28845) + rho 28850) := by
  rw [seg30AccX58, seg30AccX57_sum]

theorem seg30AccX59_sum (rho : Nat -> Seg30.F) :
    seg30AccX59 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) + rho 28815) + rho 28820) + rho 28825) + rho 28830) + rho 28835) + rho 28840) + rho 28845) + rho 28850) + rho 28855) := by
  rw [seg30AccX59, seg30AccX58_sum]

theorem seg30AccX60_sum (rho : Nat -> Seg30.F) :
    seg30AccX60 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) + rho 28815) + rho 28820) + rho 28825) + rho 28830) + rho 28835) + rho 28840) + rho 28845) + rho 28850) + rho 28855) + rho 28860) := by
  rw [seg30AccX60, seg30AccX59_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
