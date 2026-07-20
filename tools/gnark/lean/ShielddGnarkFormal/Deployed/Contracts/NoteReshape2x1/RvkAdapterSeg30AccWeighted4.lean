import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccWeighted3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30AccWeighted41 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX41 rho + cy * seg30AccY41 rho =
      ((((((((((((((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 + cx * rho 28715) + cy * rho 28716 + cx * rho 28720) + cy * rho 28721 + cx * rho 28725) + cy * rho 28726 + cx * rho 28730) + cy * rho 28731 + cx * rho 28735) + cy * rho 28736 + cx * rho 28740) + cy * rho 28741 + cx * rho 28745) + cy * rho 28746 + cx * rho 28750) + cy * rho 28751 + cx * rho 28755) + cy * rho 28756 + cx * rho 28760) + cy * rho 28761 + cx * rho 28765) + cy * rho 28766 := by
  calc
    _ = (cx * seg30AccX40 rho + cy * seg30AccY40 rho) +
        cx * rho 28765 + cy * rho 28766 := by
      rw [seg30AccX41, seg30AccY41]
      ring
    _ = _ := by rw [seg30AccWeighted40]

theorem seg30AccWeighted42 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX42 rho + cy * seg30AccY42 rho =
      (((((((((((((((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 + cx * rho 28715) + cy * rho 28716 + cx * rho 28720) + cy * rho 28721 + cx * rho 28725) + cy * rho 28726 + cx * rho 28730) + cy * rho 28731 + cx * rho 28735) + cy * rho 28736 + cx * rho 28740) + cy * rho 28741 + cx * rho 28745) + cy * rho 28746 + cx * rho 28750) + cy * rho 28751 + cx * rho 28755) + cy * rho 28756 + cx * rho 28760) + cy * rho 28761 + cx * rho 28765) + cy * rho 28766 + cx * rho 28770) + cy * rho 28771 := by
  calc
    _ = (cx * seg30AccX41 rho + cy * seg30AccY41 rho) +
        cx * rho 28770 + cy * rho 28771 := by
      rw [seg30AccX42, seg30AccY42]
      ring
    _ = _ := by rw [seg30AccWeighted41]

theorem seg30AccWeighted43 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX43 rho + cy * seg30AccY43 rho =
      ((((((((((((((((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 + cx * rho 28715) + cy * rho 28716 + cx * rho 28720) + cy * rho 28721 + cx * rho 28725) + cy * rho 28726 + cx * rho 28730) + cy * rho 28731 + cx * rho 28735) + cy * rho 28736 + cx * rho 28740) + cy * rho 28741 + cx * rho 28745) + cy * rho 28746 + cx * rho 28750) + cy * rho 28751 + cx * rho 28755) + cy * rho 28756 + cx * rho 28760) + cy * rho 28761 + cx * rho 28765) + cy * rho 28766 + cx * rho 28770) + cy * rho 28771 + cx * rho 28775) + cy * rho 28776 := by
  calc
    _ = (cx * seg30AccX42 rho + cy * seg30AccY42 rho) +
        cx * rho 28775 + cy * rho 28776 := by
      rw [seg30AccX43, seg30AccY43]
      ring
    _ = _ := by rw [seg30AccWeighted42]

theorem seg30AccWeighted44 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX44 rho + cy * seg30AccY44 rho =
      (((((((((((((((((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 + cx * rho 28715) + cy * rho 28716 + cx * rho 28720) + cy * rho 28721 + cx * rho 28725) + cy * rho 28726 + cx * rho 28730) + cy * rho 28731 + cx * rho 28735) + cy * rho 28736 + cx * rho 28740) + cy * rho 28741 + cx * rho 28745) + cy * rho 28746 + cx * rho 28750) + cy * rho 28751 + cx * rho 28755) + cy * rho 28756 + cx * rho 28760) + cy * rho 28761 + cx * rho 28765) + cy * rho 28766 + cx * rho 28770) + cy * rho 28771 + cx * rho 28775) + cy * rho 28776 + cx * rho 28780) + cy * rho 28781 := by
  calc
    _ = (cx * seg30AccX43 rho + cy * seg30AccY43 rho) +
        cx * rho 28780 + cy * rho 28781 := by
      rw [seg30AccX44, seg30AccY44]
      ring
    _ = _ := by rw [seg30AccWeighted43]

theorem seg30AccWeighted45 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX45 rho + cy * seg30AccY45 rho =
      ((((((((((((((((((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 + cx * rho 28715) + cy * rho 28716 + cx * rho 28720) + cy * rho 28721 + cx * rho 28725) + cy * rho 28726 + cx * rho 28730) + cy * rho 28731 + cx * rho 28735) + cy * rho 28736 + cx * rho 28740) + cy * rho 28741 + cx * rho 28745) + cy * rho 28746 + cx * rho 28750) + cy * rho 28751 + cx * rho 28755) + cy * rho 28756 + cx * rho 28760) + cy * rho 28761 + cx * rho 28765) + cy * rho 28766 + cx * rho 28770) + cy * rho 28771 + cx * rho 28775) + cy * rho 28776 + cx * rho 28780) + cy * rho 28781 + cx * rho 28785) + cy * rho 28786 := by
  calc
    _ = (cx * seg30AccX44 rho + cy * seg30AccY44 rho) +
        cx * rho 28785 + cy * rho 28786 := by
      rw [seg30AccX45, seg30AccY45]
      ring
    _ = _ := by rw [seg30AccWeighted44]

theorem seg30AccWeighted46 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX46 rho + cy * seg30AccY46 rho =
      (((((((((((((((((((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 + cx * rho 28715) + cy * rho 28716 + cx * rho 28720) + cy * rho 28721 + cx * rho 28725) + cy * rho 28726 + cx * rho 28730) + cy * rho 28731 + cx * rho 28735) + cy * rho 28736 + cx * rho 28740) + cy * rho 28741 + cx * rho 28745) + cy * rho 28746 + cx * rho 28750) + cy * rho 28751 + cx * rho 28755) + cy * rho 28756 + cx * rho 28760) + cy * rho 28761 + cx * rho 28765) + cy * rho 28766 + cx * rho 28770) + cy * rho 28771 + cx * rho 28775) + cy * rho 28776 + cx * rho 28780) + cy * rho 28781 + cx * rho 28785) + cy * rho 28786 + cx * rho 28790) + cy * rho 28791 := by
  calc
    _ = (cx * seg30AccX45 rho + cy * seg30AccY45 rho) +
        cx * rho 28790 + cy * rho 28791 := by
      rw [seg30AccX46, seg30AccY46]
      ring
    _ = _ := by rw [seg30AccWeighted45]

theorem seg30AccWeighted47 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX47 rho + cy * seg30AccY47 rho =
      ((((((((((((((((((((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 + cx * rho 28715) + cy * rho 28716 + cx * rho 28720) + cy * rho 28721 + cx * rho 28725) + cy * rho 28726 + cx * rho 28730) + cy * rho 28731 + cx * rho 28735) + cy * rho 28736 + cx * rho 28740) + cy * rho 28741 + cx * rho 28745) + cy * rho 28746 + cx * rho 28750) + cy * rho 28751 + cx * rho 28755) + cy * rho 28756 + cx * rho 28760) + cy * rho 28761 + cx * rho 28765) + cy * rho 28766 + cx * rho 28770) + cy * rho 28771 + cx * rho 28775) + cy * rho 28776 + cx * rho 28780) + cy * rho 28781 + cx * rho 28785) + cy * rho 28786 + cx * rho 28790) + cy * rho 28791 + cx * rho 28795) + cy * rho 28796 := by
  calc
    _ = (cx * seg30AccX46 rho + cy * seg30AccY46 rho) +
        cx * rho 28795 + cy * rho 28796 := by
      rw [seg30AccX47, seg30AccY47]
      ring
    _ = _ := by rw [seg30AccWeighted46]

theorem seg30AccWeighted48 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX48 rho + cy * seg30AccY48 rho =
      (((((((((((((((((((((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 + cx * rho 28715) + cy * rho 28716 + cx * rho 28720) + cy * rho 28721 + cx * rho 28725) + cy * rho 28726 + cx * rho 28730) + cy * rho 28731 + cx * rho 28735) + cy * rho 28736 + cx * rho 28740) + cy * rho 28741 + cx * rho 28745) + cy * rho 28746 + cx * rho 28750) + cy * rho 28751 + cx * rho 28755) + cy * rho 28756 + cx * rho 28760) + cy * rho 28761 + cx * rho 28765) + cy * rho 28766 + cx * rho 28770) + cy * rho 28771 + cx * rho 28775) + cy * rho 28776 + cx * rho 28780) + cy * rho 28781 + cx * rho 28785) + cy * rho 28786 + cx * rho 28790) + cy * rho 28791 + cx * rho 28795) + cy * rho 28796 + cx * rho 28800) + cy * rho 28801 := by
  calc
    _ = (cx * seg30AccX47 rho + cy * seg30AccY47 rho) +
        cx * rho 28800 + cy * rho 28801 := by
      rw [seg30AccX48, seg30AccY48]
      ring
    _ = _ := by rw [seg30AccWeighted47]

theorem seg30AccWeighted49 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX49 rho + cy * seg30AccY49 rho =
      ((((((((((((((((((((((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 + cx * rho 28715) + cy * rho 28716 + cx * rho 28720) + cy * rho 28721 + cx * rho 28725) + cy * rho 28726 + cx * rho 28730) + cy * rho 28731 + cx * rho 28735) + cy * rho 28736 + cx * rho 28740) + cy * rho 28741 + cx * rho 28745) + cy * rho 28746 + cx * rho 28750) + cy * rho 28751 + cx * rho 28755) + cy * rho 28756 + cx * rho 28760) + cy * rho 28761 + cx * rho 28765) + cy * rho 28766 + cx * rho 28770) + cy * rho 28771 + cx * rho 28775) + cy * rho 28776 + cx * rho 28780) + cy * rho 28781 + cx * rho 28785) + cy * rho 28786 + cx * rho 28790) + cy * rho 28791 + cx * rho 28795) + cy * rho 28796 + cx * rho 28800) + cy * rho 28801 + cx * rho 28805) + cy * rho 28806 := by
  calc
    _ = (cx * seg30AccX48 rho + cy * seg30AccY48 rho) +
        cx * rho 28805 + cy * rho 28806 := by
      rw [seg30AccX49, seg30AccY49]
      ring
    _ = _ := by rw [seg30AccWeighted48]

theorem seg30AccWeighted50 (rho : Nat -> Seg30.F) (cx cy : Seg30.F) :
    cx * seg30AccX50 rho + cy * seg30AccY50 rho =
      (((((((((((((((((((((((((((((((((((((((((((((((((cx * rho 28565 + cy * rho 28566 + cx * rho 28570) + cy * rho 28571 + cx * rho 28575) + cy * rho 28576 + cx * rho 28580) + cy * rho 28581 + cx * rho 28585) + cy * rho 28586 + cx * rho 28590) + cy * rho 28591 + cx * rho 28595) + cy * rho 28596 + cx * rho 28600) + cy * rho 28601 + cx * rho 28605) + cy * rho 28606 + cx * rho 28610) + cy * rho 28611 + cx * rho 28615) + cy * rho 28616 + cx * rho 28620) + cy * rho 28621 + cx * rho 28625) + cy * rho 28626 + cx * rho 28630) + cy * rho 28631 + cx * rho 28635) + cy * rho 28636 + cx * rho 28640) + cy * rho 28641 + cx * rho 28645) + cy * rho 28646 + cx * rho 28650) + cy * rho 28651 + cx * rho 28655) + cy * rho 28656 + cx * rho 28660) + cy * rho 28661 + cx * rho 28665) + cy * rho 28666 + cx * rho 28670) + cy * rho 28671 + cx * rho 28675) + cy * rho 28676 + cx * rho 28680) + cy * rho 28681 + cx * rho 28685) + cy * rho 28686 + cx * rho 28690) + cy * rho 28691 + cx * rho 28695) + cy * rho 28696 + cx * rho 28700) + cy * rho 28701 + cx * rho 28705) + cy * rho 28706 + cx * rho 28710) + cy * rho 28711 + cx * rho 28715) + cy * rho 28716 + cx * rho 28720) + cy * rho 28721 + cx * rho 28725) + cy * rho 28726 + cx * rho 28730) + cy * rho 28731 + cx * rho 28735) + cy * rho 28736 + cx * rho 28740) + cy * rho 28741 + cx * rho 28745) + cy * rho 28746 + cx * rho 28750) + cy * rho 28751 + cx * rho 28755) + cy * rho 28756 + cx * rho 28760) + cy * rho 28761 + cx * rho 28765) + cy * rho 28766 + cx * rho 28770) + cy * rho 28771 + cx * rho 28775) + cy * rho 28776 + cx * rho 28780) + cy * rho 28781 + cx * rho 28785) + cy * rho 28786 + cx * rho 28790) + cy * rho 28791 + cx * rho 28795) + cy * rho 28796 + cx * rho 28800) + cy * rho 28801 + cx * rho 28805) + cy * rho 28806 + cx * rho 28810) + cy * rho 28811 := by
  calc
    _ = (cx * seg30AccX49 rho + cy * seg30AccY49 rho) +
        cx * rho 28810 + cy * rho 28811 := by
      rw [seg30AccX50, seg30AccY50]
      ring
    _ = _ := by rw [seg30AccWeighted49]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
