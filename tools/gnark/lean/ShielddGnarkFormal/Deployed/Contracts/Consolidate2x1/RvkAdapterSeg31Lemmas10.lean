import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg31_lc1439 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1439 rho = seg31AccX249 rho + seg31AccY249 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1439, Seg31.relationLc1439Part0, Seg31.relationLc1439Part1, Seg31.relationLc1439Part2, Seg31.relationLc1439Part3, Seg31.relationLc1439Part4, Seg31.relationLc1439Part5, Seg31.relationLc1439Part6, Seg31.relationLc1439Part7, Seg31.relationLc1439Part8, Seg31.relationLc1439Part9, Seg31.relationLc1439Part10, Seg31.relationLc1439Part11, Seg31.relationLc1439Part12, Seg31.relationLc1439Part13, Seg31.relationLc1439Part14, Seg31.relationLc1439Part15]
  rw [seg31AccX249_sum, seg31AccY249_sum]
  ring

theorem seg31_lc1440 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1440 rho = 4064883095062247340147603835378916187508183055445169435732389489036001704408*seg31AccX249 rho + 2586703773231270539878676380651414243603465923206936704484651928336413050533*rho 29271 := by
  simp only [Seg31.relationLc1440, Seg31.relationLc1440Part0, Seg31.relationLc1440Part1, Seg31.relationLc1440Part2, Seg31.relationLc1440Part3, Seg31.relationLc1440Part4, Seg31.relationLc1440Part5, Seg31.relationLc1440Part6, Seg31.relationLc1440Part7]
  rw [seg31AccX249_sum]
  ring

theorem seg31_lc1441 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1441 rho = 1984710607226089818020725577334409086216133409436227188525394559293030245463*seg31AccY249 rho + 1984710607226089818020725577334409086216133409436227188525394559293030245463 + 8190687850680179368374512318543963712238846217710026704016266914143778228996*rho 29271 := by
  simp only [Seg31.relationLc1441, Seg31.relationLc1441Part0, Seg31.relationLc1441Part1, Seg31.relationLc1441Part2, Seg31.relationLc1441Part3, Seg31.relationLc1441Part4, Seg31.relationLc1441Part5, Seg31.relationLc1441Part6, Seg31.relationLc1441Part7]
  rw [seg31AccY249_sum]
  ring

theorem seg31_lc1442 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1442 rho = 823150161346244009291394285282076662168825748954233675885035096169729996022*seg31AccX249 rho + 1984710607226089818020725577334409086216133409436227188525394559293030245463*seg31AccY249 rho + 1984710607226089818020725577334409086216133409436227188525394559293030245463 + 7713555690673883416038639962320530066882449223208822474333234716515992539878*rho 29271 := by
  simp only [Seg31.relationLc1442, Seg31.relationLc1442Part0, Seg31.relationLc1442Part1, Seg31.relationLc1442Part2, Seg31.relationLc1442Part3, Seg31.relationLc1442Part4, Seg31.relationLc1442Part5, Seg31.relationLc1442Part6, Seg31.relationLc1442Part7, Seg31.relationLc1442Part8, Seg31.relationLc1442Part9, Seg31.relationLc1442Part10, Seg31.relationLc1442Part11, Seg31.relationLc1442Part12, Seg31.relationLc1442Part13, Seg31.relationLc1442Part14, Seg31.relationLc1442Part15]
  rw [seg31AccX249_sum, seg31AccY249_sum]
  ring

theorem seg31_lc1443 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1443 rho = 7621311588082126414957430653499469869207073586199830152050198359747679243019*seg31AccX249 rho + 6459751142202280606228099361447137445159765925717836639409838896624378993578*seg31AccY249 rho + 6459751142202280606228099361447137445159765925717836639409838896624378993578 + 730906058754487008210184976461016464493450111945241353601998739401416699163*rho 29271 := by
  simp only [Seg31.relationLc1443, Seg31.relationLc1443Part0, Seg31.relationLc1443Part1, Seg31.relationLc1443Part2, Seg31.relationLc1443Part3, Seg31.relationLc1443Part4, Seg31.relationLc1443Part5, Seg31.relationLc1443Part6, Seg31.relationLc1443Part7, Seg31.relationLc1443Part8, Seg31.relationLc1443Part9, Seg31.relationLc1443Part10, Seg31.relationLc1443Part11, Seg31.relationLc1443Part12, Seg31.relationLc1443Part13, Seg31.relationLc1443Part14, Seg31.relationLc1443Part15]
  rw [seg31AccX249_sum, seg31AccY249_sum]
  ring

theorem seg31_lc1444 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1444 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX249 rho + rho 31070 := by
  simp only [Seg31.relationLc1444, Seg31.relationLc1444Part0, Seg31.relationLc1444Part1, Seg31.relationLc1444Part2, Seg31.relationLc1444Part3, Seg31.relationLc1444Part4, Seg31.relationLc1444Part5, Seg31.relationLc1444Part6, Seg31.relationLc1444Part7]
  rw [seg31AccX249_sum]
  ring

theorem seg31_lc1445 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1445 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY249 rho + rho 31072 := by
  simp only [Seg31.relationLc1445, Seg31.relationLc1445Part0, Seg31.relationLc1445Part1, Seg31.relationLc1445Part2, Seg31.relationLc1445Part3, Seg31.relationLc1445Part4, Seg31.relationLc1445Part5, Seg31.relationLc1445Part6, Seg31.relationLc1445Part7]
  rw [seg31AccY249_sum]
  ring

theorem seg31_lcx (rho : Nat -> Seg31.F) :
    Seg31.relationLc1448 rho = 4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 29271 + seg31AccX250 rho := by
  simp only [Seg31.relationLc1448, Seg31.relationLc1448Part0, Seg31.relationLc1448Part1, Seg31.relationLc1448Part2, Seg31.relationLc1448Part3, Seg31.relationLc1448Part4, Seg31.relationLc1448Part5, Seg31.relationLc1448Part6, Seg31.relationLc1448Part7]
  rw [seg31AccX250_sum]
  ring

theorem seg31_lcy (rho : Nat -> Seg31.F) :
    Seg31.relationLc1447 rho = 1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 29271 + seg31AccY250 rho := by
  simp only [Seg31.relationLc1447, Seg31.relationLc1447Part0, Seg31.relationLc1447Part1, Seg31.relationLc1447Part2, Seg31.relationLc1447Part3, Seg31.relationLc1447Part4, Seg31.relationLc1447Part5, Seg31.relationLc1447Part6, Seg31.relationLc1447Part7]
  rw [seg31AccY250_sum]
  ring

theorem seg31_lc46_part0 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1446Part0 rho = 1 + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + seg31AccX15 rho + seg31AccY15 rho := by
  simp only [Seg31.relationLc1446Part0]
  rw [seg31AccX15, seg31AccX14, seg31AccX13, seg31AccX12, seg31AccX11, seg31AccX10, seg31AccX9, seg31AccX8, seg31AccX7, seg31AccX6, seg31AccX5, seg31AccX4, seg31AccX3, seg31AccX2, seg31AccX1, seg31AccY15, seg31AccY14, seg31AccY13, seg31AccY12, seg31AccY11, seg31AccY10, seg31AccY9, seg31AccY8, seg31AccY7, seg31AccY6, seg31AccY5, seg31AccY4, seg31AccY3, seg31AccY2, seg31AccY1]
  ring

theorem seg31_lc46_part1 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1446Part1 rho + (seg31AccX15 rho + seg31AccY15 rho) = seg31AccX31 rho + seg31AccY31 rho := by
  simp only [Seg31.relationLc1446Part1]
  rw [seg31AccX31, seg31AccX30, seg31AccX29, seg31AccX28, seg31AccX27, seg31AccX26, seg31AccX25, seg31AccX24, seg31AccX23, seg31AccX22, seg31AccX21, seg31AccX20, seg31AccX19, seg31AccX18, seg31AccX17, seg31AccX16, seg31AccY31, seg31AccY30, seg31AccY29, seg31AccY28, seg31AccY27, seg31AccY26, seg31AccY25, seg31AccY24, seg31AccY23, seg31AccY22, seg31AccY21, seg31AccY20, seg31AccY19, seg31AccY18, seg31AccY17, seg31AccY16]
  ring

theorem seg31_lc46_part2 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1446Part2 rho + (seg31AccX31 rho + seg31AccY31 rho) = seg31AccX47 rho + seg31AccY47 rho := by
  simp only [Seg31.relationLc1446Part2]
  rw [seg31AccX47, seg31AccX46, seg31AccX45, seg31AccX44, seg31AccX43, seg31AccX42, seg31AccX41, seg31AccX40, seg31AccX39, seg31AccX38, seg31AccX37, seg31AccX36, seg31AccX35, seg31AccX34, seg31AccX33, seg31AccX32, seg31AccY47, seg31AccY46, seg31AccY45, seg31AccY44, seg31AccY43, seg31AccY42, seg31AccY41, seg31AccY40, seg31AccY39, seg31AccY38, seg31AccY37, seg31AccY36, seg31AccY35, seg31AccY34, seg31AccY33, seg31AccY32]
  ring

theorem seg31_lc46_part3 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1446Part3 rho + (seg31AccX47 rho + seg31AccY47 rho) = seg31AccX63 rho + seg31AccY63 rho := by
  simp only [Seg31.relationLc1446Part3]
  rw [seg31AccX63, seg31AccX62, seg31AccX61, seg31AccX60, seg31AccX59, seg31AccX58, seg31AccX57, seg31AccX56, seg31AccX55, seg31AccX54, seg31AccX53, seg31AccX52, seg31AccX51, seg31AccX50, seg31AccX49, seg31AccX48, seg31AccY63, seg31AccY62, seg31AccY61, seg31AccY60, seg31AccY59, seg31AccY58, seg31AccY57, seg31AccY56, seg31AccY55, seg31AccY54, seg31AccY53, seg31AccY52, seg31AccY51, seg31AccY50, seg31AccY49, seg31AccY48]
  ring

theorem seg31_lc46_part4 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1446Part4 rho + (seg31AccX63 rho + seg31AccY63 rho) = seg31AccX79 rho + seg31AccY79 rho := by
  simp only [Seg31.relationLc1446Part4]
  rw [seg31AccX79, seg31AccX78, seg31AccX77, seg31AccX76, seg31AccX75, seg31AccX74, seg31AccX73, seg31AccX72, seg31AccX71, seg31AccX70, seg31AccX69, seg31AccX68, seg31AccX67, seg31AccX66, seg31AccX65, seg31AccX64, seg31AccY79, seg31AccY78, seg31AccY77, seg31AccY76, seg31AccY75, seg31AccY74, seg31AccY73, seg31AccY72, seg31AccY71, seg31AccY70, seg31AccY69, seg31AccY68, seg31AccY67, seg31AccY66, seg31AccY65, seg31AccY64]
  ring

theorem seg31_lc46_part5 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1446Part5 rho + (seg31AccX79 rho + seg31AccY79 rho) = seg31AccX95 rho + seg31AccY95 rho := by
  simp only [Seg31.relationLc1446Part5]
  rw [seg31AccX95, seg31AccX94, seg31AccX93, seg31AccX92, seg31AccX91, seg31AccX90, seg31AccX89, seg31AccX88, seg31AccX87, seg31AccX86, seg31AccX85, seg31AccX84, seg31AccX83, seg31AccX82, seg31AccX81, seg31AccX80, seg31AccY95, seg31AccY94, seg31AccY93, seg31AccY92, seg31AccY91, seg31AccY90, seg31AccY89, seg31AccY88, seg31AccY87, seg31AccY86, seg31AccY85, seg31AccY84, seg31AccY83, seg31AccY82, seg31AccY81, seg31AccY80]
  ring

theorem seg31_lc46_part6 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1446Part6 rho + (seg31AccX95 rho + seg31AccY95 rho) = seg31AccX111 rho + seg31AccY111 rho := by
  simp only [Seg31.relationLc1446Part6]
  rw [seg31AccX111, seg31AccX110, seg31AccX109, seg31AccX108, seg31AccX107, seg31AccX106, seg31AccX105, seg31AccX104, seg31AccX103, seg31AccX102, seg31AccX101, seg31AccX100, seg31AccX99, seg31AccX98, seg31AccX97, seg31AccX96, seg31AccY111, seg31AccY110, seg31AccY109, seg31AccY108, seg31AccY107, seg31AccY106, seg31AccY105, seg31AccY104, seg31AccY103, seg31AccY102, seg31AccY101, seg31AccY100, seg31AccY99, seg31AccY98, seg31AccY97, seg31AccY96]
  ring

theorem seg31_lc46_part7 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1446Part7 rho + (seg31AccX111 rho + seg31AccY111 rho) = seg31AccX127 rho + seg31AccY127 rho := by
  simp only [Seg31.relationLc1446Part7]
  rw [seg31AccX127, seg31AccX126, seg31AccX125, seg31AccX124, seg31AccX123, seg31AccX122, seg31AccX121, seg31AccX120, seg31AccX119, seg31AccX118, seg31AccX117, seg31AccX116, seg31AccX115, seg31AccX114, seg31AccX113, seg31AccX112, seg31AccY127, seg31AccY126, seg31AccY125, seg31AccY124, seg31AccY123, seg31AccY122, seg31AccY121, seg31AccY120, seg31AccY119, seg31AccY118, seg31AccY117, seg31AccY116, seg31AccY115, seg31AccY114, seg31AccY113, seg31AccY112]
  ring

theorem seg31_lc46_part8 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1446Part8 rho + (seg31AccX127 rho + seg31AccY127 rho) = seg31AccX143 rho + seg31AccY143 rho := by
  simp only [Seg31.relationLc1446Part8]
  rw [seg31AccX143, seg31AccX142, seg31AccX141, seg31AccX140, seg31AccX139, seg31AccX138, seg31AccX137, seg31AccX136, seg31AccX135, seg31AccX134, seg31AccX133, seg31AccX132, seg31AccX131, seg31AccX130, seg31AccX129, seg31AccX128, seg31AccY143, seg31AccY142, seg31AccY141, seg31AccY140, seg31AccY139, seg31AccY138, seg31AccY137, seg31AccY136, seg31AccY135, seg31AccY134, seg31AccY133, seg31AccY132, seg31AccY131, seg31AccY130, seg31AccY129, seg31AccY128]
  ring

theorem seg31_lc46_part9 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1446Part9 rho + (seg31AccX143 rho + seg31AccY143 rho) = seg31AccX159 rho + seg31AccY159 rho := by
  simp only [Seg31.relationLc1446Part9]
  rw [seg31AccX159, seg31AccX158, seg31AccX157, seg31AccX156, seg31AccX155, seg31AccX154, seg31AccX153, seg31AccX152, seg31AccX151, seg31AccX150, seg31AccX149, seg31AccX148, seg31AccX147, seg31AccX146, seg31AccX145, seg31AccX144, seg31AccY159, seg31AccY158, seg31AccY157, seg31AccY156, seg31AccY155, seg31AccY154, seg31AccY153, seg31AccY152, seg31AccY151, seg31AccY150, seg31AccY149, seg31AccY148, seg31AccY147, seg31AccY146, seg31AccY145, seg31AccY144]
  ring

theorem seg31_lc46_part10 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1446Part10 rho + (seg31AccX159 rho + seg31AccY159 rho) = seg31AccX175 rho + seg31AccY175 rho := by
  simp only [Seg31.relationLc1446Part10]
  rw [seg31AccX175, seg31AccX174, seg31AccX173, seg31AccX172, seg31AccX171, seg31AccX170, seg31AccX169, seg31AccX168, seg31AccX167, seg31AccX166, seg31AccX165, seg31AccX164, seg31AccX163, seg31AccX162, seg31AccX161, seg31AccX160, seg31AccY175, seg31AccY174, seg31AccY173, seg31AccY172, seg31AccY171, seg31AccY170, seg31AccY169, seg31AccY168, seg31AccY167, seg31AccY166, seg31AccY165, seg31AccY164, seg31AccY163, seg31AccY162, seg31AccY161, seg31AccY160]
  ring

theorem seg31_lc46_part11 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1446Part11 rho + (seg31AccX175 rho + seg31AccY175 rho) = seg31AccX191 rho + seg31AccY191 rho := by
  simp only [Seg31.relationLc1446Part11]
  rw [seg31AccX191, seg31AccX190, seg31AccX189, seg31AccX188, seg31AccX187, seg31AccX186, seg31AccX185, seg31AccX184, seg31AccX183, seg31AccX182, seg31AccX181, seg31AccX180, seg31AccX179, seg31AccX178, seg31AccX177, seg31AccX176, seg31AccY191, seg31AccY190, seg31AccY189, seg31AccY188, seg31AccY187, seg31AccY186, seg31AccY185, seg31AccY184, seg31AccY183, seg31AccY182, seg31AccY181, seg31AccY180, seg31AccY179, seg31AccY178, seg31AccY177, seg31AccY176]
  ring

theorem seg31_lc46_part12 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1446Part12 rho + (seg31AccX191 rho + seg31AccY191 rho) = seg31AccX207 rho + seg31AccY207 rho := by
  simp only [Seg31.relationLc1446Part12]
  rw [seg31AccX207, seg31AccX206, seg31AccX205, seg31AccX204, seg31AccX203, seg31AccX202, seg31AccX201, seg31AccX200, seg31AccX199, seg31AccX198, seg31AccX197, seg31AccX196, seg31AccX195, seg31AccX194, seg31AccX193, seg31AccX192, seg31AccY207, seg31AccY206, seg31AccY205, seg31AccY204, seg31AccY203, seg31AccY202, seg31AccY201, seg31AccY200, seg31AccY199, seg31AccY198, seg31AccY197, seg31AccY196, seg31AccY195, seg31AccY194, seg31AccY193, seg31AccY192]
  ring

theorem seg31_lc46_part13 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1446Part13 rho + (seg31AccX207 rho + seg31AccY207 rho) = seg31AccX223 rho + seg31AccY223 rho := by
  simp only [Seg31.relationLc1446Part13]
  rw [seg31AccX223, seg31AccX222, seg31AccX221, seg31AccX220, seg31AccX219, seg31AccX218, seg31AccX217, seg31AccX216, seg31AccX215, seg31AccX214, seg31AccX213, seg31AccX212, seg31AccX211, seg31AccX210, seg31AccX209, seg31AccX208, seg31AccY223, seg31AccY222, seg31AccY221, seg31AccY220, seg31AccY219, seg31AccY218, seg31AccY217, seg31AccY216, seg31AccY215, seg31AccY214, seg31AccY213, seg31AccY212, seg31AccY211, seg31AccY210, seg31AccY209, seg31AccY208]
  ring

theorem seg31_lc46_part14 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1446Part14 rho + (seg31AccX223 rho + seg31AccY223 rho) = seg31AccX239 rho + seg31AccY239 rho := by
  simp only [Seg31.relationLc1446Part14]
  rw [seg31AccX239, seg31AccX238, seg31AccX237, seg31AccX236, seg31AccX235, seg31AccX234, seg31AccX233, seg31AccX232, seg31AccX231, seg31AccX230, seg31AccX229, seg31AccX228, seg31AccX227, seg31AccX226, seg31AccX225, seg31AccX224, seg31AccY239, seg31AccY238, seg31AccY237, seg31AccY236, seg31AccY235, seg31AccY234, seg31AccY233, seg31AccY232, seg31AccY231, seg31AccY230, seg31AccY229, seg31AccY228, seg31AccY227, seg31AccY226, seg31AccY225, seg31AccY224]
  ring

theorem seg31_lc46_part15 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1446Part15 rho + (seg31AccX239 rho + seg31AccY239 rho) = seg31AccX250 rho + seg31AccY250 rho := by
  simp only [Seg31.relationLc1446Part15]
  rw [seg31AccX250, seg31AccX249, seg31AccX248, seg31AccX247, seg31AccX246, seg31AccX245, seg31AccX244, seg31AccX243, seg31AccX242, seg31AccX241, seg31AccX240, seg31AccY250, seg31AccY249, seg31AccY248, seg31AccY247, seg31AccY246, seg31AccY245, seg31AccY244, seg31AccY243, seg31AccY242, seg31AccY241, seg31AccY240]
  ring

theorem seg31_lc46_acc (rho : Nat -> Seg31.F) :
    Seg31.relationLc1446 rho = 1 + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + seg31AccX250 rho + seg31AccY250 rho := by
  simp only [Seg31.relationLc1446]
  have h0 := seg31_lc46_part0 rho
  have h1 := seg31_lc46_part1 rho
  have h2 := seg31_lc46_part2 rho
  have h3 := seg31_lc46_part3 rho
  have h4 := seg31_lc46_part4 rho
  have h5 := seg31_lc46_part5 rho
  have h6 := seg31_lc46_part6 rho
  have h7 := seg31_lc46_part7 rho
  have h8 := seg31_lc46_part8 rho
  have h9 := seg31_lc46_part9 rho
  have h10 := seg31_lc46_part10 rho
  have h11 := seg31_lc46_part11 rho
  have h12 := seg31_lc46_part12 rho
  have h13 := seg31_lc46_part13 rho
  have h14 := seg31_lc46_part14 rho
  have h15 := seg31_lc46_part15 rho
  linear_combination h0 + h1 + h2 + h3 + h4 + h5 + h6 + h7 + h8 + h9 + h10 + h11 + h12 + h13 + h14 + h15

theorem seg31_lc46 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1446 rho = (Seg31.relationLc1448 rho) + (Seg31.relationLc1447 rho) := by
  rw [seg31_lc46_acc rho, seg31_lcx rho, seg31_lcy rho]
  ring_nf
  rw [show (11019917739428672292467176045515618920009047319701787790132518851619194178914 : Seg31.F) = (2575455990000301868218351106734072388633147984547723962197285395701784939873 : Seg31.F) from by decide]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
