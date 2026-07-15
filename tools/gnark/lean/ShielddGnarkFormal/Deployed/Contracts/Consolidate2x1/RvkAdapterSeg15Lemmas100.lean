import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15_lc1439 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1439 rho = seg15AccX249 rho + seg15AccY249 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc1439, Seg15.relationLc1439Part0, Seg15.relationLc1439Part1, Seg15.relationLc1439Part2, Seg15.relationLc1439Part3, Seg15.relationLc1439Part4, Seg15.relationLc1439Part5, Seg15.relationLc1439Part6, Seg15.relationLc1439Part7, Seg15.relationLc1439Part8, Seg15.relationLc1439Part9, Seg15.relationLc1439Part10, Seg15.relationLc1439Part11, Seg15.relationLc1439Part12, Seg15.relationLc1439Part13, Seg15.relationLc1439Part14, Seg15.relationLc1439Part15]
  rw [seg15AccX249_sum, seg15AccY249_sum]
  ring

theorem seg15_lc1440 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1440 rho = 4064883095062247340147603835378916187508183055445169435732389489036001704408*seg15AccX249 rho + 2586703773231270539878676380651414243603465923206936704484651928336413050533*rho 16136 := by
  simp only [Seg15.relationLc1440, Seg15.relationLc1440Part0, Seg15.relationLc1440Part1, Seg15.relationLc1440Part2, Seg15.relationLc1440Part3, Seg15.relationLc1440Part4, Seg15.relationLc1440Part5, Seg15.relationLc1440Part6, Seg15.relationLc1440Part7]
  rw [seg15AccX249_sum]
  ring

theorem seg15_lc1441 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1441 rho = 1984710607226089818020725577334409086216133409436227188525394559293030245463*seg15AccY249 rho + 1984710607226089818020725577334409086216133409436227188525394559293030245463 + 8190687850680179368374512318543963712238846217710026704016266914143778228996*rho 16136 := by
  simp only [Seg15.relationLc1441, Seg15.relationLc1441Part0, Seg15.relationLc1441Part1, Seg15.relationLc1441Part2, Seg15.relationLc1441Part3, Seg15.relationLc1441Part4, Seg15.relationLc1441Part5, Seg15.relationLc1441Part6, Seg15.relationLc1441Part7]
  rw [seg15AccY249_sum]
  ring

theorem seg15_lc1442 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1442 rho = 823150161346244009291394285282076662168825748954233675885035096169729996022*seg15AccX249 rho + 1984710607226089818020725577334409086216133409436227188525394559293030245463*seg15AccY249 rho + 1984710607226089818020725577334409086216133409436227188525394559293030245463 + 7713555690673883416038639962320530066882449223208822474333234716515992539878*rho 16136 := by
  simp only [Seg15.relationLc1442, Seg15.relationLc1442Part0, Seg15.relationLc1442Part1, Seg15.relationLc1442Part2, Seg15.relationLc1442Part3, Seg15.relationLc1442Part4, Seg15.relationLc1442Part5, Seg15.relationLc1442Part6, Seg15.relationLc1442Part7, Seg15.relationLc1442Part8, Seg15.relationLc1442Part9, Seg15.relationLc1442Part10, Seg15.relationLc1442Part11, Seg15.relationLc1442Part12, Seg15.relationLc1442Part13, Seg15.relationLc1442Part14, Seg15.relationLc1442Part15]
  rw [seg15AccX249_sum, seg15AccY249_sum]
  ring

theorem seg15_lc1443 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1443 rho = 7621311588082126414957430653499469869207073586199830152050198359747679243019*seg15AccX249 rho + 6459751142202280606228099361447137445159765925717836639409838896624378993578*seg15AccY249 rho + 6459751142202280606228099361447137445159765925717836639409838896624378993578 + 730906058754487008210184976461016464493450111945241353601998739401416699163*rho 16136 := by
  simp only [Seg15.relationLc1443, Seg15.relationLc1443Part0, Seg15.relationLc1443Part1, Seg15.relationLc1443Part2, Seg15.relationLc1443Part3, Seg15.relationLc1443Part4, Seg15.relationLc1443Part5, Seg15.relationLc1443Part6, Seg15.relationLc1443Part7, Seg15.relationLc1443Part8, Seg15.relationLc1443Part9, Seg15.relationLc1443Part10, Seg15.relationLc1443Part11, Seg15.relationLc1443Part12, Seg15.relationLc1443Part13, Seg15.relationLc1443Part14, Seg15.relationLc1443Part15]
  rw [seg15AccX249_sum, seg15AccY249_sum]
  ring

theorem seg15_lc1444 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1444 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX249 rho + rho 17935 := by
  simp only [Seg15.relationLc1444, Seg15.relationLc1444Part0, Seg15.relationLc1444Part1, Seg15.relationLc1444Part2, Seg15.relationLc1444Part3, Seg15.relationLc1444Part4, Seg15.relationLc1444Part5, Seg15.relationLc1444Part6, Seg15.relationLc1444Part7]
  rw [seg15AccX249_sum]
  ring

theorem seg15_lc1445 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1445 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY249 rho + rho 17937 := by
  simp only [Seg15.relationLc1445, Seg15.relationLc1445Part0, Seg15.relationLc1445Part1, Seg15.relationLc1445Part2, Seg15.relationLc1445Part3, Seg15.relationLc1445Part4, Seg15.relationLc1445Part5, Seg15.relationLc1445Part6, Seg15.relationLc1445Part7]
  rw [seg15AccY249_sum]
  ring

theorem seg15_lcx (rho : Nat -> Seg15.F) :
    Seg15.relationLc1448 rho = 4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 16136 + seg15AccX250 rho := by
  simp only [Seg15.relationLc1448, Seg15.relationLc1448Part0, Seg15.relationLc1448Part1, Seg15.relationLc1448Part2, Seg15.relationLc1448Part3, Seg15.relationLc1448Part4, Seg15.relationLc1448Part5, Seg15.relationLc1448Part6, Seg15.relationLc1448Part7]
  rw [seg15AccX250_sum]
  ring

theorem seg15_lcy (rho : Nat -> Seg15.F) :
    Seg15.relationLc1447 rho = 1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 16136 + seg15AccY250 rho := by
  simp only [Seg15.relationLc1447, Seg15.relationLc1447Part0, Seg15.relationLc1447Part1, Seg15.relationLc1447Part2, Seg15.relationLc1447Part3, Seg15.relationLc1447Part4, Seg15.relationLc1447Part5, Seg15.relationLc1447Part6, Seg15.relationLc1447Part7]
  rw [seg15AccY250_sum]
  ring

theorem seg15_lc46_part0 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1446Part0 rho = 1 + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + seg15AccX15 rho + seg15AccY15 rho := by
  simp only [Seg15.relationLc1446Part0]
  rw [seg15AccX15, seg15AccX14, seg15AccX13, seg15AccX12, seg15AccX11, seg15AccX10, seg15AccX9, seg15AccX8, seg15AccX7, seg15AccX6, seg15AccX5, seg15AccX4, seg15AccX3, seg15AccX2, seg15AccX1, seg15AccY15, seg15AccY14, seg15AccY13, seg15AccY12, seg15AccY11, seg15AccY10, seg15AccY9, seg15AccY8, seg15AccY7, seg15AccY6, seg15AccY5, seg15AccY4, seg15AccY3, seg15AccY2, seg15AccY1]
  ring

theorem seg15_lc46_part1 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1446Part1 rho + (seg15AccX15 rho + seg15AccY15 rho) = seg15AccX31 rho + seg15AccY31 rho := by
  simp only [Seg15.relationLc1446Part1]
  rw [seg15AccX31, seg15AccX30, seg15AccX29, seg15AccX28, seg15AccX27, seg15AccX26, seg15AccX25, seg15AccX24, seg15AccX23, seg15AccX22, seg15AccX21, seg15AccX20, seg15AccX19, seg15AccX18, seg15AccX17, seg15AccX16, seg15AccY31, seg15AccY30, seg15AccY29, seg15AccY28, seg15AccY27, seg15AccY26, seg15AccY25, seg15AccY24, seg15AccY23, seg15AccY22, seg15AccY21, seg15AccY20, seg15AccY19, seg15AccY18, seg15AccY17, seg15AccY16]
  ring

theorem seg15_lc46_part2 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1446Part2 rho + (seg15AccX31 rho + seg15AccY31 rho) = seg15AccX47 rho + seg15AccY47 rho := by
  simp only [Seg15.relationLc1446Part2]
  rw [seg15AccX47, seg15AccX46, seg15AccX45, seg15AccX44, seg15AccX43, seg15AccX42, seg15AccX41, seg15AccX40, seg15AccX39, seg15AccX38, seg15AccX37, seg15AccX36, seg15AccX35, seg15AccX34, seg15AccX33, seg15AccX32, seg15AccY47, seg15AccY46, seg15AccY45, seg15AccY44, seg15AccY43, seg15AccY42, seg15AccY41, seg15AccY40, seg15AccY39, seg15AccY38, seg15AccY37, seg15AccY36, seg15AccY35, seg15AccY34, seg15AccY33, seg15AccY32]
  ring

theorem seg15_lc46_part3 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1446Part3 rho + (seg15AccX47 rho + seg15AccY47 rho) = seg15AccX63 rho + seg15AccY63 rho := by
  simp only [Seg15.relationLc1446Part3]
  rw [seg15AccX63, seg15AccX62, seg15AccX61, seg15AccX60, seg15AccX59, seg15AccX58, seg15AccX57, seg15AccX56, seg15AccX55, seg15AccX54, seg15AccX53, seg15AccX52, seg15AccX51, seg15AccX50, seg15AccX49, seg15AccX48, seg15AccY63, seg15AccY62, seg15AccY61, seg15AccY60, seg15AccY59, seg15AccY58, seg15AccY57, seg15AccY56, seg15AccY55, seg15AccY54, seg15AccY53, seg15AccY52, seg15AccY51, seg15AccY50, seg15AccY49, seg15AccY48]
  ring

theorem seg15_lc46_part4 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1446Part4 rho + (seg15AccX63 rho + seg15AccY63 rho) = seg15AccX79 rho + seg15AccY79 rho := by
  simp only [Seg15.relationLc1446Part4]
  rw [seg15AccX79, seg15AccX78, seg15AccX77, seg15AccX76, seg15AccX75, seg15AccX74, seg15AccX73, seg15AccX72, seg15AccX71, seg15AccX70, seg15AccX69, seg15AccX68, seg15AccX67, seg15AccX66, seg15AccX65, seg15AccX64, seg15AccY79, seg15AccY78, seg15AccY77, seg15AccY76, seg15AccY75, seg15AccY74, seg15AccY73, seg15AccY72, seg15AccY71, seg15AccY70, seg15AccY69, seg15AccY68, seg15AccY67, seg15AccY66, seg15AccY65, seg15AccY64]
  ring

theorem seg15_lc46_part5 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1446Part5 rho + (seg15AccX79 rho + seg15AccY79 rho) = seg15AccX95 rho + seg15AccY95 rho := by
  simp only [Seg15.relationLc1446Part5]
  rw [seg15AccX95, seg15AccX94, seg15AccX93, seg15AccX92, seg15AccX91, seg15AccX90, seg15AccX89, seg15AccX88, seg15AccX87, seg15AccX86, seg15AccX85, seg15AccX84, seg15AccX83, seg15AccX82, seg15AccX81, seg15AccX80, seg15AccY95, seg15AccY94, seg15AccY93, seg15AccY92, seg15AccY91, seg15AccY90, seg15AccY89, seg15AccY88, seg15AccY87, seg15AccY86, seg15AccY85, seg15AccY84, seg15AccY83, seg15AccY82, seg15AccY81, seg15AccY80]
  ring

theorem seg15_lc46_part6 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1446Part6 rho + (seg15AccX95 rho + seg15AccY95 rho) = seg15AccX111 rho + seg15AccY111 rho := by
  simp only [Seg15.relationLc1446Part6]
  rw [seg15AccX111, seg15AccX110, seg15AccX109, seg15AccX108, seg15AccX107, seg15AccX106, seg15AccX105, seg15AccX104, seg15AccX103, seg15AccX102, seg15AccX101, seg15AccX100, seg15AccX99, seg15AccX98, seg15AccX97, seg15AccX96, seg15AccY111, seg15AccY110, seg15AccY109, seg15AccY108, seg15AccY107, seg15AccY106, seg15AccY105, seg15AccY104, seg15AccY103, seg15AccY102, seg15AccY101, seg15AccY100, seg15AccY99, seg15AccY98, seg15AccY97, seg15AccY96]
  ring

theorem seg15_lc46_part7 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1446Part7 rho + (seg15AccX111 rho + seg15AccY111 rho) = seg15AccX127 rho + seg15AccY127 rho := by
  simp only [Seg15.relationLc1446Part7]
  rw [seg15AccX127, seg15AccX126, seg15AccX125, seg15AccX124, seg15AccX123, seg15AccX122, seg15AccX121, seg15AccX120, seg15AccX119, seg15AccX118, seg15AccX117, seg15AccX116, seg15AccX115, seg15AccX114, seg15AccX113, seg15AccX112, seg15AccY127, seg15AccY126, seg15AccY125, seg15AccY124, seg15AccY123, seg15AccY122, seg15AccY121, seg15AccY120, seg15AccY119, seg15AccY118, seg15AccY117, seg15AccY116, seg15AccY115, seg15AccY114, seg15AccY113, seg15AccY112]
  ring

theorem seg15_lc46_part8 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1446Part8 rho + (seg15AccX127 rho + seg15AccY127 rho) = seg15AccX143 rho + seg15AccY143 rho := by
  simp only [Seg15.relationLc1446Part8]
  rw [seg15AccX143, seg15AccX142, seg15AccX141, seg15AccX140, seg15AccX139, seg15AccX138, seg15AccX137, seg15AccX136, seg15AccX135, seg15AccX134, seg15AccX133, seg15AccX132, seg15AccX131, seg15AccX130, seg15AccX129, seg15AccX128, seg15AccY143, seg15AccY142, seg15AccY141, seg15AccY140, seg15AccY139, seg15AccY138, seg15AccY137, seg15AccY136, seg15AccY135, seg15AccY134, seg15AccY133, seg15AccY132, seg15AccY131, seg15AccY130, seg15AccY129, seg15AccY128]
  ring

theorem seg15_lc46_part9 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1446Part9 rho + (seg15AccX143 rho + seg15AccY143 rho) = seg15AccX159 rho + seg15AccY159 rho := by
  simp only [Seg15.relationLc1446Part9]
  rw [seg15AccX159, seg15AccX158, seg15AccX157, seg15AccX156, seg15AccX155, seg15AccX154, seg15AccX153, seg15AccX152, seg15AccX151, seg15AccX150, seg15AccX149, seg15AccX148, seg15AccX147, seg15AccX146, seg15AccX145, seg15AccX144, seg15AccY159, seg15AccY158, seg15AccY157, seg15AccY156, seg15AccY155, seg15AccY154, seg15AccY153, seg15AccY152, seg15AccY151, seg15AccY150, seg15AccY149, seg15AccY148, seg15AccY147, seg15AccY146, seg15AccY145, seg15AccY144]
  ring

theorem seg15_lc46_part10 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1446Part10 rho + (seg15AccX159 rho + seg15AccY159 rho) = seg15AccX175 rho + seg15AccY175 rho := by
  simp only [Seg15.relationLc1446Part10]
  rw [seg15AccX175, seg15AccX174, seg15AccX173, seg15AccX172, seg15AccX171, seg15AccX170, seg15AccX169, seg15AccX168, seg15AccX167, seg15AccX166, seg15AccX165, seg15AccX164, seg15AccX163, seg15AccX162, seg15AccX161, seg15AccX160, seg15AccY175, seg15AccY174, seg15AccY173, seg15AccY172, seg15AccY171, seg15AccY170, seg15AccY169, seg15AccY168, seg15AccY167, seg15AccY166, seg15AccY165, seg15AccY164, seg15AccY163, seg15AccY162, seg15AccY161, seg15AccY160]
  ring

theorem seg15_lc46_part11 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1446Part11 rho + (seg15AccX175 rho + seg15AccY175 rho) = seg15AccX191 rho + seg15AccY191 rho := by
  simp only [Seg15.relationLc1446Part11]
  rw [seg15AccX191, seg15AccX190, seg15AccX189, seg15AccX188, seg15AccX187, seg15AccX186, seg15AccX185, seg15AccX184, seg15AccX183, seg15AccX182, seg15AccX181, seg15AccX180, seg15AccX179, seg15AccX178, seg15AccX177, seg15AccX176, seg15AccY191, seg15AccY190, seg15AccY189, seg15AccY188, seg15AccY187, seg15AccY186, seg15AccY185, seg15AccY184, seg15AccY183, seg15AccY182, seg15AccY181, seg15AccY180, seg15AccY179, seg15AccY178, seg15AccY177, seg15AccY176]
  ring

theorem seg15_lc46_part12 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1446Part12 rho + (seg15AccX191 rho + seg15AccY191 rho) = seg15AccX207 rho + seg15AccY207 rho := by
  simp only [Seg15.relationLc1446Part12]
  rw [seg15AccX207, seg15AccX206, seg15AccX205, seg15AccX204, seg15AccX203, seg15AccX202, seg15AccX201, seg15AccX200, seg15AccX199, seg15AccX198, seg15AccX197, seg15AccX196, seg15AccX195, seg15AccX194, seg15AccX193, seg15AccX192, seg15AccY207, seg15AccY206, seg15AccY205, seg15AccY204, seg15AccY203, seg15AccY202, seg15AccY201, seg15AccY200, seg15AccY199, seg15AccY198, seg15AccY197, seg15AccY196, seg15AccY195, seg15AccY194, seg15AccY193, seg15AccY192]
  ring

theorem seg15_lc46_part13 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1446Part13 rho + (seg15AccX207 rho + seg15AccY207 rho) = seg15AccX223 rho + seg15AccY223 rho := by
  simp only [Seg15.relationLc1446Part13]
  rw [seg15AccX223, seg15AccX222, seg15AccX221, seg15AccX220, seg15AccX219, seg15AccX218, seg15AccX217, seg15AccX216, seg15AccX215, seg15AccX214, seg15AccX213, seg15AccX212, seg15AccX211, seg15AccX210, seg15AccX209, seg15AccX208, seg15AccY223, seg15AccY222, seg15AccY221, seg15AccY220, seg15AccY219, seg15AccY218, seg15AccY217, seg15AccY216, seg15AccY215, seg15AccY214, seg15AccY213, seg15AccY212, seg15AccY211, seg15AccY210, seg15AccY209, seg15AccY208]
  ring

theorem seg15_lc46_part14 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1446Part14 rho + (seg15AccX223 rho + seg15AccY223 rho) = seg15AccX239 rho + seg15AccY239 rho := by
  simp only [Seg15.relationLc1446Part14]
  rw [seg15AccX239, seg15AccX238, seg15AccX237, seg15AccX236, seg15AccX235, seg15AccX234, seg15AccX233, seg15AccX232, seg15AccX231, seg15AccX230, seg15AccX229, seg15AccX228, seg15AccX227, seg15AccX226, seg15AccX225, seg15AccX224, seg15AccY239, seg15AccY238, seg15AccY237, seg15AccY236, seg15AccY235, seg15AccY234, seg15AccY233, seg15AccY232, seg15AccY231, seg15AccY230, seg15AccY229, seg15AccY228, seg15AccY227, seg15AccY226, seg15AccY225, seg15AccY224]
  ring

theorem seg15_lc46_part15 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1446Part15 rho + (seg15AccX239 rho + seg15AccY239 rho) = seg15AccX250 rho + seg15AccY250 rho := by
  simp only [Seg15.relationLc1446Part15]
  rw [seg15AccX250, seg15AccX249, seg15AccX248, seg15AccX247, seg15AccX246, seg15AccX245, seg15AccX244, seg15AccX243, seg15AccX242, seg15AccX241, seg15AccX240, seg15AccY250, seg15AccY249, seg15AccY248, seg15AccY247, seg15AccY246, seg15AccY245, seg15AccY244, seg15AccY243, seg15AccY242, seg15AccY241, seg15AccY240]
  ring

theorem seg15_lc46_acc (rho : Nat -> Seg15.F) :
    Seg15.relationLc1446 rho = 1 + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + seg15AccX250 rho + seg15AccY250 rho := by
  simp only [Seg15.relationLc1446]
  have h0 := seg15_lc46_part0 rho
  have h1 := seg15_lc46_part1 rho
  have h2 := seg15_lc46_part2 rho
  have h3 := seg15_lc46_part3 rho
  have h4 := seg15_lc46_part4 rho
  have h5 := seg15_lc46_part5 rho
  have h6 := seg15_lc46_part6 rho
  have h7 := seg15_lc46_part7 rho
  have h8 := seg15_lc46_part8 rho
  have h9 := seg15_lc46_part9 rho
  have h10 := seg15_lc46_part10 rho
  have h11 := seg15_lc46_part11 rho
  have h12 := seg15_lc46_part12 rho
  have h13 := seg15_lc46_part13 rho
  have h14 := seg15_lc46_part14 rho
  have h15 := seg15_lc46_part15 rho
  linear_combination h0 + h1 + h2 + h3 + h4 + h5 + h6 + h7 + h8 + h9 + h10 + h11 + h12 + h13 + h14 + h15

theorem seg15_lc46 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1446 rho = (Seg15.relationLc1448 rho) + (Seg15.relationLc1447 rho) := by
  rw [seg15_lc46_acc rho, seg15_lcx rho, seg15_lcy rho]
  ring_nf
  rw [show (11019917739428672292467176045515618920009047319701787790132518851619194178914 : Seg15.F) = (2575455990000301868218351106734072388633147984547723962197285395701784939873 : Seg15.F) from by decide]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
