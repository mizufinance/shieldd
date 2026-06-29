import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg13Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_lc1439 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1439 rho = seg13AccX249 rho + seg13AccY249 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 10571 + 1 := by
  simp only [Seg13.relationLc1439, Seg13.relationLc1439Part0, Seg13.relationLc1439Part1, Seg13.relationLc1439Part2, Seg13.relationLc1439Part3, Seg13.relationLc1439Part4, Seg13.relationLc1439Part5, Seg13.relationLc1439Part6, Seg13.relationLc1439Part7, Seg13.relationLc1439Part8, Seg13.relationLc1439Part9, Seg13.relationLc1439Part10, Seg13.relationLc1439Part11, Seg13.relationLc1439Part12, Seg13.relationLc1439Part13, Seg13.relationLc1439Part14, Seg13.relationLc1439Part15]
  rw [seg13AccX249_sum, seg13AccY249_sum]
  ring

theorem seg13_lc1440 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1440 rho = 4064883095062247340147603835378916187508183055445169435732389489036001704408*seg13AccX249 rho + 2586703773231270539878676380651414243603465923206936704484651928336413050533*rho 10571 := by
  simp only [Seg13.relationLc1440, Seg13.relationLc1440Part0, Seg13.relationLc1440Part1, Seg13.relationLc1440Part2, Seg13.relationLc1440Part3, Seg13.relationLc1440Part4, Seg13.relationLc1440Part5, Seg13.relationLc1440Part6, Seg13.relationLc1440Part7]
  rw [seg13AccX249_sum]
  ring

theorem seg13_lc1441 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1441 rho = 1984710607226089818020725577334409086216133409436227188525394559293030245463*seg13AccY249 rho + 1984710607226089818020725577334409086216133409436227188525394559293030245463 + 8190687850680179368374512318543963712238846217710026704016266914143778228996*rho 10571 := by
  simp only [Seg13.relationLc1441, Seg13.relationLc1441Part0, Seg13.relationLc1441Part1, Seg13.relationLc1441Part2, Seg13.relationLc1441Part3, Seg13.relationLc1441Part4, Seg13.relationLc1441Part5, Seg13.relationLc1441Part6, Seg13.relationLc1441Part7]
  rw [seg13AccY249_sum]
  ring

theorem seg13_lc1442 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1442 rho = 823150161346244009291394285282076662168825748954233675885035096169729996022*seg13AccX249 rho + 1984710607226089818020725577334409086216133409436227188525394559293030245463*seg13AccY249 rho + 1984710607226089818020725577334409086216133409436227188525394559293030245463 + 7713555690673883416038639962320530066882449223208822474333234716515992539878*rho 10571 := by
  simp only [Seg13.relationLc1442, Seg13.relationLc1442Part0, Seg13.relationLc1442Part1, Seg13.relationLc1442Part2, Seg13.relationLc1442Part3, Seg13.relationLc1442Part4, Seg13.relationLc1442Part5, Seg13.relationLc1442Part6, Seg13.relationLc1442Part7, Seg13.relationLc1442Part8, Seg13.relationLc1442Part9, Seg13.relationLc1442Part10, Seg13.relationLc1442Part11, Seg13.relationLc1442Part12, Seg13.relationLc1442Part13, Seg13.relationLc1442Part14, Seg13.relationLc1442Part15]
  rw [seg13AccX249_sum, seg13AccY249_sum]
  ring

theorem seg13_lc1443 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1443 rho = 7621311588082126414957430653499469869207073586199830152050198359747679243019*seg13AccX249 rho + 6459751142202280606228099361447137445159765925717836639409838896624378993578*seg13AccY249 rho + 6459751142202280606228099361447137445159765925717836639409838896624378993578 + 730906058754487008210184976461016464493450111945241353601998739401416699163*rho 10571 := by
  simp only [Seg13.relationLc1443, Seg13.relationLc1443Part0, Seg13.relationLc1443Part1, Seg13.relationLc1443Part2, Seg13.relationLc1443Part3, Seg13.relationLc1443Part4, Seg13.relationLc1443Part5, Seg13.relationLc1443Part6, Seg13.relationLc1443Part7, Seg13.relationLc1443Part8, Seg13.relationLc1443Part9, Seg13.relationLc1443Part10, Seg13.relationLc1443Part11, Seg13.relationLc1443Part12, Seg13.relationLc1443Part13, Seg13.relationLc1443Part14, Seg13.relationLc1443Part15]
  rw [seg13AccX249_sum, seg13AccY249_sum]
  ring

theorem seg13_lc1444 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1444 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 10571 + (-1)*seg13AccX249 rho + rho 12370 := by
  simp only [Seg13.relationLc1444, Seg13.relationLc1444Part0, Seg13.relationLc1444Part1, Seg13.relationLc1444Part2, Seg13.relationLc1444Part3, Seg13.relationLc1444Part4, Seg13.relationLc1444Part5, Seg13.relationLc1444Part6, Seg13.relationLc1444Part7]
  rw [seg13AccX249_sum]
  ring

theorem seg13_lc1445 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1445 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 10571 + (-1)*seg13AccY249 rho + rho 12372 := by
  simp only [Seg13.relationLc1445, Seg13.relationLc1445Part0, Seg13.relationLc1445Part1, Seg13.relationLc1445Part2, Seg13.relationLc1445Part3, Seg13.relationLc1445Part4, Seg13.relationLc1445Part5, Seg13.relationLc1445Part6, Seg13.relationLc1445Part7]
  rw [seg13AccY249_sum]
  ring

theorem seg13_lcx (rho : Nat -> Seg13.F) :
    Seg13.relationLc1448 rho = 4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 10571 + seg13AccX250 rho := by
  simp only [Seg13.relationLc1448, Seg13.relationLc1448Part0, Seg13.relationLc1448Part1, Seg13.relationLc1448Part2, Seg13.relationLc1448Part3, Seg13.relationLc1448Part4, Seg13.relationLc1448Part5, Seg13.relationLc1448Part6, Seg13.relationLc1448Part7]
  rw [seg13AccX250_sum]
  ring

theorem seg13_lcy (rho : Nat -> Seg13.F) :
    Seg13.relationLc1447 rho = 1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 10571 + seg13AccY250 rho := by
  simp only [Seg13.relationLc1447, Seg13.relationLc1447Part0, Seg13.relationLc1447Part1, Seg13.relationLc1447Part2, Seg13.relationLc1447Part3, Seg13.relationLc1447Part4, Seg13.relationLc1447Part5, Seg13.relationLc1447Part6, Seg13.relationLc1447Part7]
  rw [seg13AccY250_sum]
  ring

theorem seg13_lc46_part0 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1446Part0 rho = 1 + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 10571 + seg13AccX15 rho + seg13AccY15 rho := by
  simp only [Seg13.relationLc1446Part0]
  rw [seg13AccX15, seg13AccX14, seg13AccX13, seg13AccX12, seg13AccX11, seg13AccX10, seg13AccX9, seg13AccX8, seg13AccX7, seg13AccX6, seg13AccX5, seg13AccX4, seg13AccX3, seg13AccX2, seg13AccX1, seg13AccY15, seg13AccY14, seg13AccY13, seg13AccY12, seg13AccY11, seg13AccY10, seg13AccY9, seg13AccY8, seg13AccY7, seg13AccY6, seg13AccY5, seg13AccY4, seg13AccY3, seg13AccY2, seg13AccY1]
  ring

theorem seg13_lc46_part1 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1446Part1 rho + (seg13AccX15 rho + seg13AccY15 rho) = seg13AccX31 rho + seg13AccY31 rho := by
  simp only [Seg13.relationLc1446Part1]
  rw [seg13AccX31, seg13AccX30, seg13AccX29, seg13AccX28, seg13AccX27, seg13AccX26, seg13AccX25, seg13AccX24, seg13AccX23, seg13AccX22, seg13AccX21, seg13AccX20, seg13AccX19, seg13AccX18, seg13AccX17, seg13AccX16, seg13AccY31, seg13AccY30, seg13AccY29, seg13AccY28, seg13AccY27, seg13AccY26, seg13AccY25, seg13AccY24, seg13AccY23, seg13AccY22, seg13AccY21, seg13AccY20, seg13AccY19, seg13AccY18, seg13AccY17, seg13AccY16]
  ring

theorem seg13_lc46_part2 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1446Part2 rho + (seg13AccX31 rho + seg13AccY31 rho) = seg13AccX47 rho + seg13AccY47 rho := by
  simp only [Seg13.relationLc1446Part2]
  rw [seg13AccX47, seg13AccX46, seg13AccX45, seg13AccX44, seg13AccX43, seg13AccX42, seg13AccX41, seg13AccX40, seg13AccX39, seg13AccX38, seg13AccX37, seg13AccX36, seg13AccX35, seg13AccX34, seg13AccX33, seg13AccX32, seg13AccY47, seg13AccY46, seg13AccY45, seg13AccY44, seg13AccY43, seg13AccY42, seg13AccY41, seg13AccY40, seg13AccY39, seg13AccY38, seg13AccY37, seg13AccY36, seg13AccY35, seg13AccY34, seg13AccY33, seg13AccY32]
  ring

theorem seg13_lc46_part3 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1446Part3 rho + (seg13AccX47 rho + seg13AccY47 rho) = seg13AccX63 rho + seg13AccY63 rho := by
  simp only [Seg13.relationLc1446Part3]
  rw [seg13AccX63, seg13AccX62, seg13AccX61, seg13AccX60, seg13AccX59, seg13AccX58, seg13AccX57, seg13AccX56, seg13AccX55, seg13AccX54, seg13AccX53, seg13AccX52, seg13AccX51, seg13AccX50, seg13AccX49, seg13AccX48, seg13AccY63, seg13AccY62, seg13AccY61, seg13AccY60, seg13AccY59, seg13AccY58, seg13AccY57, seg13AccY56, seg13AccY55, seg13AccY54, seg13AccY53, seg13AccY52, seg13AccY51, seg13AccY50, seg13AccY49, seg13AccY48]
  ring

theorem seg13_lc46_part4 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1446Part4 rho + (seg13AccX63 rho + seg13AccY63 rho) = seg13AccX79 rho + seg13AccY79 rho := by
  simp only [Seg13.relationLc1446Part4]
  rw [seg13AccX79, seg13AccX78, seg13AccX77, seg13AccX76, seg13AccX75, seg13AccX74, seg13AccX73, seg13AccX72, seg13AccX71, seg13AccX70, seg13AccX69, seg13AccX68, seg13AccX67, seg13AccX66, seg13AccX65, seg13AccX64, seg13AccY79, seg13AccY78, seg13AccY77, seg13AccY76, seg13AccY75, seg13AccY74, seg13AccY73, seg13AccY72, seg13AccY71, seg13AccY70, seg13AccY69, seg13AccY68, seg13AccY67, seg13AccY66, seg13AccY65, seg13AccY64]
  ring

theorem seg13_lc46_part5 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1446Part5 rho + (seg13AccX79 rho + seg13AccY79 rho) = seg13AccX95 rho + seg13AccY95 rho := by
  simp only [Seg13.relationLc1446Part5]
  rw [seg13AccX95, seg13AccX94, seg13AccX93, seg13AccX92, seg13AccX91, seg13AccX90, seg13AccX89, seg13AccX88, seg13AccX87, seg13AccX86, seg13AccX85, seg13AccX84, seg13AccX83, seg13AccX82, seg13AccX81, seg13AccX80, seg13AccY95, seg13AccY94, seg13AccY93, seg13AccY92, seg13AccY91, seg13AccY90, seg13AccY89, seg13AccY88, seg13AccY87, seg13AccY86, seg13AccY85, seg13AccY84, seg13AccY83, seg13AccY82, seg13AccY81, seg13AccY80]
  ring

theorem seg13_lc46_part6 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1446Part6 rho + (seg13AccX95 rho + seg13AccY95 rho) = seg13AccX111 rho + seg13AccY111 rho := by
  simp only [Seg13.relationLc1446Part6]
  rw [seg13AccX111, seg13AccX110, seg13AccX109, seg13AccX108, seg13AccX107, seg13AccX106, seg13AccX105, seg13AccX104, seg13AccX103, seg13AccX102, seg13AccX101, seg13AccX100, seg13AccX99, seg13AccX98, seg13AccX97, seg13AccX96, seg13AccY111, seg13AccY110, seg13AccY109, seg13AccY108, seg13AccY107, seg13AccY106, seg13AccY105, seg13AccY104, seg13AccY103, seg13AccY102, seg13AccY101, seg13AccY100, seg13AccY99, seg13AccY98, seg13AccY97, seg13AccY96]
  ring

theorem seg13_lc46_part7 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1446Part7 rho + (seg13AccX111 rho + seg13AccY111 rho) = seg13AccX127 rho + seg13AccY127 rho := by
  simp only [Seg13.relationLc1446Part7]
  rw [seg13AccX127, seg13AccX126, seg13AccX125, seg13AccX124, seg13AccX123, seg13AccX122, seg13AccX121, seg13AccX120, seg13AccX119, seg13AccX118, seg13AccX117, seg13AccX116, seg13AccX115, seg13AccX114, seg13AccX113, seg13AccX112, seg13AccY127, seg13AccY126, seg13AccY125, seg13AccY124, seg13AccY123, seg13AccY122, seg13AccY121, seg13AccY120, seg13AccY119, seg13AccY118, seg13AccY117, seg13AccY116, seg13AccY115, seg13AccY114, seg13AccY113, seg13AccY112]
  ring

theorem seg13_lc46_part8 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1446Part8 rho + (seg13AccX127 rho + seg13AccY127 rho) = seg13AccX143 rho + seg13AccY143 rho := by
  simp only [Seg13.relationLc1446Part8]
  rw [seg13AccX143, seg13AccX142, seg13AccX141, seg13AccX140, seg13AccX139, seg13AccX138, seg13AccX137, seg13AccX136, seg13AccX135, seg13AccX134, seg13AccX133, seg13AccX132, seg13AccX131, seg13AccX130, seg13AccX129, seg13AccX128, seg13AccY143, seg13AccY142, seg13AccY141, seg13AccY140, seg13AccY139, seg13AccY138, seg13AccY137, seg13AccY136, seg13AccY135, seg13AccY134, seg13AccY133, seg13AccY132, seg13AccY131, seg13AccY130, seg13AccY129, seg13AccY128]
  ring

theorem seg13_lc46_part9 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1446Part9 rho + (seg13AccX143 rho + seg13AccY143 rho) = seg13AccX159 rho + seg13AccY159 rho := by
  simp only [Seg13.relationLc1446Part9]
  rw [seg13AccX159, seg13AccX158, seg13AccX157, seg13AccX156, seg13AccX155, seg13AccX154, seg13AccX153, seg13AccX152, seg13AccX151, seg13AccX150, seg13AccX149, seg13AccX148, seg13AccX147, seg13AccX146, seg13AccX145, seg13AccX144, seg13AccY159, seg13AccY158, seg13AccY157, seg13AccY156, seg13AccY155, seg13AccY154, seg13AccY153, seg13AccY152, seg13AccY151, seg13AccY150, seg13AccY149, seg13AccY148, seg13AccY147, seg13AccY146, seg13AccY145, seg13AccY144]
  ring

theorem seg13_lc46_part10 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1446Part10 rho + (seg13AccX159 rho + seg13AccY159 rho) = seg13AccX175 rho + seg13AccY175 rho := by
  simp only [Seg13.relationLc1446Part10]
  rw [seg13AccX175, seg13AccX174, seg13AccX173, seg13AccX172, seg13AccX171, seg13AccX170, seg13AccX169, seg13AccX168, seg13AccX167, seg13AccX166, seg13AccX165, seg13AccX164, seg13AccX163, seg13AccX162, seg13AccX161, seg13AccX160, seg13AccY175, seg13AccY174, seg13AccY173, seg13AccY172, seg13AccY171, seg13AccY170, seg13AccY169, seg13AccY168, seg13AccY167, seg13AccY166, seg13AccY165, seg13AccY164, seg13AccY163, seg13AccY162, seg13AccY161, seg13AccY160]
  ring

theorem seg13_lc46_part11 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1446Part11 rho + (seg13AccX175 rho + seg13AccY175 rho) = seg13AccX191 rho + seg13AccY191 rho := by
  simp only [Seg13.relationLc1446Part11]
  rw [seg13AccX191, seg13AccX190, seg13AccX189, seg13AccX188, seg13AccX187, seg13AccX186, seg13AccX185, seg13AccX184, seg13AccX183, seg13AccX182, seg13AccX181, seg13AccX180, seg13AccX179, seg13AccX178, seg13AccX177, seg13AccX176, seg13AccY191, seg13AccY190, seg13AccY189, seg13AccY188, seg13AccY187, seg13AccY186, seg13AccY185, seg13AccY184, seg13AccY183, seg13AccY182, seg13AccY181, seg13AccY180, seg13AccY179, seg13AccY178, seg13AccY177, seg13AccY176]
  ring

theorem seg13_lc46_part12 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1446Part12 rho + (seg13AccX191 rho + seg13AccY191 rho) = seg13AccX207 rho + seg13AccY207 rho := by
  simp only [Seg13.relationLc1446Part12]
  rw [seg13AccX207, seg13AccX206, seg13AccX205, seg13AccX204, seg13AccX203, seg13AccX202, seg13AccX201, seg13AccX200, seg13AccX199, seg13AccX198, seg13AccX197, seg13AccX196, seg13AccX195, seg13AccX194, seg13AccX193, seg13AccX192, seg13AccY207, seg13AccY206, seg13AccY205, seg13AccY204, seg13AccY203, seg13AccY202, seg13AccY201, seg13AccY200, seg13AccY199, seg13AccY198, seg13AccY197, seg13AccY196, seg13AccY195, seg13AccY194, seg13AccY193, seg13AccY192]
  ring

theorem seg13_lc46_part13 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1446Part13 rho + (seg13AccX207 rho + seg13AccY207 rho) = seg13AccX223 rho + seg13AccY223 rho := by
  simp only [Seg13.relationLc1446Part13]
  rw [seg13AccX223, seg13AccX222, seg13AccX221, seg13AccX220, seg13AccX219, seg13AccX218, seg13AccX217, seg13AccX216, seg13AccX215, seg13AccX214, seg13AccX213, seg13AccX212, seg13AccX211, seg13AccX210, seg13AccX209, seg13AccX208, seg13AccY223, seg13AccY222, seg13AccY221, seg13AccY220, seg13AccY219, seg13AccY218, seg13AccY217, seg13AccY216, seg13AccY215, seg13AccY214, seg13AccY213, seg13AccY212, seg13AccY211, seg13AccY210, seg13AccY209, seg13AccY208]
  ring

theorem seg13_lc46_part14 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1446Part14 rho + (seg13AccX223 rho + seg13AccY223 rho) = seg13AccX239 rho + seg13AccY239 rho := by
  simp only [Seg13.relationLc1446Part14]
  rw [seg13AccX239, seg13AccX238, seg13AccX237, seg13AccX236, seg13AccX235, seg13AccX234, seg13AccX233, seg13AccX232, seg13AccX231, seg13AccX230, seg13AccX229, seg13AccX228, seg13AccX227, seg13AccX226, seg13AccX225, seg13AccX224, seg13AccY239, seg13AccY238, seg13AccY237, seg13AccY236, seg13AccY235, seg13AccY234, seg13AccY233, seg13AccY232, seg13AccY231, seg13AccY230, seg13AccY229, seg13AccY228, seg13AccY227, seg13AccY226, seg13AccY225, seg13AccY224]
  ring

theorem seg13_lc46_part15 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1446Part15 rho + (seg13AccX239 rho + seg13AccY239 rho) = seg13AccX250 rho + seg13AccY250 rho := by
  simp only [Seg13.relationLc1446Part15]
  rw [seg13AccX250, seg13AccX249, seg13AccX248, seg13AccX247, seg13AccX246, seg13AccX245, seg13AccX244, seg13AccX243, seg13AccX242, seg13AccX241, seg13AccX240, seg13AccY250, seg13AccY249, seg13AccY248, seg13AccY247, seg13AccY246, seg13AccY245, seg13AccY244, seg13AccY243, seg13AccY242, seg13AccY241, seg13AccY240]
  ring

theorem seg13_lc46_acc (rho : Nat -> Seg13.F) :
    Seg13.relationLc1446 rho = 1 + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 10571 + seg13AccX250 rho + seg13AccY250 rho := by
  simp only [Seg13.relationLc1446]
  have h0 := seg13_lc46_part0 rho
  have h1 := seg13_lc46_part1 rho
  have h2 := seg13_lc46_part2 rho
  have h3 := seg13_lc46_part3 rho
  have h4 := seg13_lc46_part4 rho
  have h5 := seg13_lc46_part5 rho
  have h6 := seg13_lc46_part6 rho
  have h7 := seg13_lc46_part7 rho
  have h8 := seg13_lc46_part8 rho
  have h9 := seg13_lc46_part9 rho
  have h10 := seg13_lc46_part10 rho
  have h11 := seg13_lc46_part11 rho
  have h12 := seg13_lc46_part12 rho
  have h13 := seg13_lc46_part13 rho
  have h14 := seg13_lc46_part14 rho
  have h15 := seg13_lc46_part15 rho
  linear_combination h0 + h1 + h2 + h3 + h4 + h5 + h6 + h7 + h8 + h9 + h10 + h11 + h12 + h13 + h14 + h15

theorem seg13_lc46 (rho : Nat -> Seg13.F) :
    Seg13.relationLc1446 rho = (Seg13.relationLc1448 rho) + (Seg13.relationLc1447 rho) := by
  rw [seg13_lc46_acc rho, seg13_lcx rho, seg13_lcy rho]
  ring_nf
  rw [show (11019917739428672292467176045515618920009047319701787790132518851619194178914 : Seg13.F) = (2575455990000301868218351106734072388633147984547723962197285395701784939873 : Seg13.F) from by decide]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
