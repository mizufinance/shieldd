import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccX5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg30AccX61 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX60 rho + rho 28865
def seg30AccX62 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX61 rho + rho 28870
def seg30AccX63 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX62 rho + rho 28875
def seg30AccX64 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX63 rho + rho 28880
def seg30AccX65 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX64 rho + rho 28885
def seg30AccX66 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX65 rho + rho 28890
def seg30AccX67 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX66 rho + rho 28895
def seg30AccX68 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX67 rho + rho 28900
def seg30AccX69 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX68 rho + rho 28905
def seg30AccX70 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX69 rho + rho 28910

theorem seg30AccX61_sum (rho : Nat -> Seg30.F) :
    seg30AccX61 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) + rho 28815) + rho 28820) + rho 28825) + rho 28830) + rho 28835) + rho 28840) + rho 28845) + rho 28850) + rho 28855) + rho 28860) + rho 28865) := by
  rw [seg30AccX61, seg30AccX60_sum]

theorem seg30AccX62_sum (rho : Nat -> Seg30.F) :
    seg30AccX62 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) + rho 28815) + rho 28820) + rho 28825) + rho 28830) + rho 28835) + rho 28840) + rho 28845) + rho 28850) + rho 28855) + rho 28860) + rho 28865) + rho 28870) := by
  rw [seg30AccX62, seg30AccX61_sum]

theorem seg30AccX63_sum (rho : Nat -> Seg30.F) :
    seg30AccX63 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) + rho 28815) + rho 28820) + rho 28825) + rho 28830) + rho 28835) + rho 28840) + rho 28845) + rho 28850) + rho 28855) + rho 28860) + rho 28865) + rho 28870) + rho 28875) := by
  rw [seg30AccX63, seg30AccX62_sum]

theorem seg30AccX64_sum (rho : Nat -> Seg30.F) :
    seg30AccX64 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) + rho 28815) + rho 28820) + rho 28825) + rho 28830) + rho 28835) + rho 28840) + rho 28845) + rho 28850) + rho 28855) + rho 28860) + rho 28865) + rho 28870) + rho 28875) + rho 28880) := by
  rw [seg30AccX64, seg30AccX63_sum]

theorem seg30AccX65_sum (rho : Nat -> Seg30.F) :
    seg30AccX65 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) + rho 28815) + rho 28820) + rho 28825) + rho 28830) + rho 28835) + rho 28840) + rho 28845) + rho 28850) + rho 28855) + rho 28860) + rho 28865) + rho 28870) + rho 28875) + rho 28880) + rho 28885) := by
  rw [seg30AccX65, seg30AccX64_sum]

theorem seg30AccX66_sum (rho : Nat -> Seg30.F) :
    seg30AccX66 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) + rho 28815) + rho 28820) + rho 28825) + rho 28830) + rho 28835) + rho 28840) + rho 28845) + rho 28850) + rho 28855) + rho 28860) + rho 28865) + rho 28870) + rho 28875) + rho 28880) + rho 28885) + rho 28890) := by
  rw [seg30AccX66, seg30AccX65_sum]

theorem seg30AccX67_sum (rho : Nat -> Seg30.F) :
    seg30AccX67 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) + rho 28815) + rho 28820) + rho 28825) + rho 28830) + rho 28835) + rho 28840) + rho 28845) + rho 28850) + rho 28855) + rho 28860) + rho 28865) + rho 28870) + rho 28875) + rho 28880) + rho 28885) + rho 28890) + rho 28895) := by
  rw [seg30AccX67, seg30AccX66_sum]

theorem seg30AccX68_sum (rho : Nat -> Seg30.F) :
    seg30AccX68 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) + rho 28815) + rho 28820) + rho 28825) + rho 28830) + rho 28835) + rho 28840) + rho 28845) + rho 28850) + rho 28855) + rho 28860) + rho 28865) + rho 28870) + rho 28875) + rho 28880) + rho 28885) + rho 28890) + rho 28895) + rho 28900) := by
  rw [seg30AccX68, seg30AccX67_sum]

theorem seg30AccX69_sum (rho : Nat -> Seg30.F) :
    seg30AccX69 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) + rho 28815) + rho 28820) + rho 28825) + rho 28830) + rho 28835) + rho 28840) + rho 28845) + rho 28850) + rho 28855) + rho 28860) + rho 28865) + rho 28870) + rho 28875) + rho 28880) + rho 28885) + rho 28890) + rho 28895) + rho 28900) + rho 28905) := by
  rw [seg30AccX69, seg30AccX68_sum]

theorem seg30AccX70_sum (rho : Nat -> Seg30.F) :
    seg30AccX70 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28565 + rho 28570) + rho 28575) + rho 28580) + rho 28585) + rho 28590) + rho 28595) + rho 28600) + rho 28605) + rho 28610) + rho 28615) + rho 28620) + rho 28625) + rho 28630) + rho 28635) + rho 28640) + rho 28645) + rho 28650) + rho 28655) + rho 28660) + rho 28665) + rho 28670) + rho 28675) + rho 28680) + rho 28685) + rho 28690) + rho 28695) + rho 28700) + rho 28705) + rho 28710) + rho 28715) + rho 28720) + rho 28725) + rho 28730) + rho 28735) + rho 28740) + rho 28745) + rho 28750) + rho 28755) + rho 28760) + rho 28765) + rho 28770) + rho 28775) + rho 28780) + rho 28785) + rho 28790) + rho 28795) + rho 28800) + rho 28805) + rho 28810) + rho 28815) + rho 28820) + rho 28825) + rho 28830) + rho 28835) + rho 28840) + rho 28845) + rho 28850) + rho 28855) + rho 28860) + rho 28865) + rho 28870) + rho 28875) + rho 28880) + rho 28885) + rho 28890) + rho 28895) + rho 28900) + rho 28905) + rho 28910) := by
  rw [seg30AccX70, seg30AccX69_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
