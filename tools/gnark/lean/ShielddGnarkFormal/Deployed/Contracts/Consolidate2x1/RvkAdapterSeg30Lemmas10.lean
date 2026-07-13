import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_lc1439 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1439 rho = seg30AccX249 rho + seg30AccY249 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1439, Seg30.relationLc1439Part0, Seg30.relationLc1439Part1, Seg30.relationLc1439Part2, Seg30.relationLc1439Part3, Seg30.relationLc1439Part4, Seg30.relationLc1439Part5, Seg30.relationLc1439Part6, Seg30.relationLc1439Part7, Seg30.relationLc1439Part8, Seg30.relationLc1439Part9, Seg30.relationLc1439Part10, Seg30.relationLc1439Part11, Seg30.relationLc1439Part12, Seg30.relationLc1439Part13, Seg30.relationLc1439Part14, Seg30.relationLc1439Part15]
  rw [seg30AccX249_sum, seg30AccY249_sum]
  ring

theorem seg30_lc1440 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1440 rho = 4064883095062247340147603835378916187508183055445169435732389489036001704408*seg30AccX249 rho + 2586703773231270539878676380651414243603465923206936704484651928336413050533*rho 28317 := by
  simp only [Seg30.relationLc1440, Seg30.relationLc1440Part0, Seg30.relationLc1440Part1, Seg30.relationLc1440Part2, Seg30.relationLc1440Part3, Seg30.relationLc1440Part4, Seg30.relationLc1440Part5, Seg30.relationLc1440Part6, Seg30.relationLc1440Part7]
  rw [seg30AccX249_sum]
  ring

theorem seg30_lc1441 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1441 rho = 1984710607226089818020725577334409086216133409436227188525394559293030245463*seg30AccY249 rho + 1984710607226089818020725577334409086216133409436227188525394559293030245463 + 8190687850680179368374512318543963712238846217710026704016266914143778228996*rho 28317 := by
  simp only [Seg30.relationLc1441, Seg30.relationLc1441Part0, Seg30.relationLc1441Part1, Seg30.relationLc1441Part2, Seg30.relationLc1441Part3, Seg30.relationLc1441Part4, Seg30.relationLc1441Part5, Seg30.relationLc1441Part6, Seg30.relationLc1441Part7]
  rw [seg30AccY249_sum]
  ring

theorem seg30_lc1442 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1442 rho = 823150161346244009291394285282076662168825748954233675885035096169729996022*seg30AccX249 rho + 1984710607226089818020725577334409086216133409436227188525394559293030245463*seg30AccY249 rho + 1984710607226089818020725577334409086216133409436227188525394559293030245463 + 7713555690673883416038639962320530066882449223208822474333234716515992539878*rho 28317 := by
  simp only [Seg30.relationLc1442, Seg30.relationLc1442Part0, Seg30.relationLc1442Part1, Seg30.relationLc1442Part2, Seg30.relationLc1442Part3, Seg30.relationLc1442Part4, Seg30.relationLc1442Part5, Seg30.relationLc1442Part6, Seg30.relationLc1442Part7, Seg30.relationLc1442Part8, Seg30.relationLc1442Part9, Seg30.relationLc1442Part10, Seg30.relationLc1442Part11, Seg30.relationLc1442Part12, Seg30.relationLc1442Part13, Seg30.relationLc1442Part14, Seg30.relationLc1442Part15]
  rw [seg30AccX249_sum, seg30AccY249_sum]
  ring

theorem seg30_lc1443 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1443 rho = 7621311588082126414957430653499469869207073586199830152050198359747679243019*seg30AccX249 rho + 6459751142202280606228099361447137445159765925717836639409838896624378993578*seg30AccY249 rho + 6459751142202280606228099361447137445159765925717836639409838896624378993578 + 730906058754487008210184976461016464493450111945241353601998739401416699163*rho 28317 := by
  simp only [Seg30.relationLc1443, Seg30.relationLc1443Part0, Seg30.relationLc1443Part1, Seg30.relationLc1443Part2, Seg30.relationLc1443Part3, Seg30.relationLc1443Part4, Seg30.relationLc1443Part5, Seg30.relationLc1443Part6, Seg30.relationLc1443Part7, Seg30.relationLc1443Part8, Seg30.relationLc1443Part9, Seg30.relationLc1443Part10, Seg30.relationLc1443Part11, Seg30.relationLc1443Part12, Seg30.relationLc1443Part13, Seg30.relationLc1443Part14, Seg30.relationLc1443Part15]
  rw [seg30AccX249_sum, seg30AccY249_sum]
  ring

theorem seg30_lc1444 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1444 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX249 rho + rho 30116 := by
  simp only [Seg30.relationLc1444, Seg30.relationLc1444Part0, Seg30.relationLc1444Part1, Seg30.relationLc1444Part2, Seg30.relationLc1444Part3, Seg30.relationLc1444Part4, Seg30.relationLc1444Part5, Seg30.relationLc1444Part6, Seg30.relationLc1444Part7]
  rw [seg30AccX249_sum]
  ring

theorem seg30_lc1445 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1445 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY249 rho + rho 30118 := by
  simp only [Seg30.relationLc1445, Seg30.relationLc1445Part0, Seg30.relationLc1445Part1, Seg30.relationLc1445Part2, Seg30.relationLc1445Part3, Seg30.relationLc1445Part4, Seg30.relationLc1445Part5, Seg30.relationLc1445Part6, Seg30.relationLc1445Part7]
  rw [seg30AccY249_sum]
  ring

theorem seg30_lcx (rho : Nat -> Seg30.F) :
    Seg30.relationLc1448 rho = 4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 28317 + seg30AccX250 rho := by
  simp only [Seg30.relationLc1448, Seg30.relationLc1448Part0, Seg30.relationLc1448Part1, Seg30.relationLc1448Part2, Seg30.relationLc1448Part3, Seg30.relationLc1448Part4, Seg30.relationLc1448Part5, Seg30.relationLc1448Part6, Seg30.relationLc1448Part7]
  rw [seg30AccX250_sum]
  ring

theorem seg30_lcy (rho : Nat -> Seg30.F) :
    Seg30.relationLc1447 rho = 1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 28317 + seg30AccY250 rho := by
  simp only [Seg30.relationLc1447, Seg30.relationLc1447Part0, Seg30.relationLc1447Part1, Seg30.relationLc1447Part2, Seg30.relationLc1447Part3, Seg30.relationLc1447Part4, Seg30.relationLc1447Part5, Seg30.relationLc1447Part6, Seg30.relationLc1447Part7]
  rw [seg30AccY250_sum]
  ring

theorem seg30_lc46_part0 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1446Part0 rho = 1 + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + seg30AccX15 rho + seg30AccY15 rho := by
  simp only [Seg30.relationLc1446Part0]
  rw [seg30AccX15, seg30AccX14, seg30AccX13, seg30AccX12, seg30AccX11, seg30AccX10, seg30AccX9, seg30AccX8, seg30AccX7, seg30AccX6, seg30AccX5, seg30AccX4, seg30AccX3, seg30AccX2, seg30AccX1, seg30AccY15, seg30AccY14, seg30AccY13, seg30AccY12, seg30AccY11, seg30AccY10, seg30AccY9, seg30AccY8, seg30AccY7, seg30AccY6, seg30AccY5, seg30AccY4, seg30AccY3, seg30AccY2, seg30AccY1]
  ring

theorem seg30_lc46_part1 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1446Part1 rho + (seg30AccX15 rho + seg30AccY15 rho) = seg30AccX31 rho + seg30AccY31 rho := by
  simp only [Seg30.relationLc1446Part1]
  rw [seg30AccX31, seg30AccX30, seg30AccX29, seg30AccX28, seg30AccX27, seg30AccX26, seg30AccX25, seg30AccX24, seg30AccX23, seg30AccX22, seg30AccX21, seg30AccX20, seg30AccX19, seg30AccX18, seg30AccX17, seg30AccX16, seg30AccY31, seg30AccY30, seg30AccY29, seg30AccY28, seg30AccY27, seg30AccY26, seg30AccY25, seg30AccY24, seg30AccY23, seg30AccY22, seg30AccY21, seg30AccY20, seg30AccY19, seg30AccY18, seg30AccY17, seg30AccY16]
  ring

theorem seg30_lc46_part2 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1446Part2 rho + (seg30AccX31 rho + seg30AccY31 rho) = seg30AccX47 rho + seg30AccY47 rho := by
  simp only [Seg30.relationLc1446Part2]
  rw [seg30AccX47, seg30AccX46, seg30AccX45, seg30AccX44, seg30AccX43, seg30AccX42, seg30AccX41, seg30AccX40, seg30AccX39, seg30AccX38, seg30AccX37, seg30AccX36, seg30AccX35, seg30AccX34, seg30AccX33, seg30AccX32, seg30AccY47, seg30AccY46, seg30AccY45, seg30AccY44, seg30AccY43, seg30AccY42, seg30AccY41, seg30AccY40, seg30AccY39, seg30AccY38, seg30AccY37, seg30AccY36, seg30AccY35, seg30AccY34, seg30AccY33, seg30AccY32]
  ring

theorem seg30_lc46_part3 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1446Part3 rho + (seg30AccX47 rho + seg30AccY47 rho) = seg30AccX63 rho + seg30AccY63 rho := by
  simp only [Seg30.relationLc1446Part3]
  rw [seg30AccX63, seg30AccX62, seg30AccX61, seg30AccX60, seg30AccX59, seg30AccX58, seg30AccX57, seg30AccX56, seg30AccX55, seg30AccX54, seg30AccX53, seg30AccX52, seg30AccX51, seg30AccX50, seg30AccX49, seg30AccX48, seg30AccY63, seg30AccY62, seg30AccY61, seg30AccY60, seg30AccY59, seg30AccY58, seg30AccY57, seg30AccY56, seg30AccY55, seg30AccY54, seg30AccY53, seg30AccY52, seg30AccY51, seg30AccY50, seg30AccY49, seg30AccY48]
  ring

theorem seg30_lc46_part4 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1446Part4 rho + (seg30AccX63 rho + seg30AccY63 rho) = seg30AccX79 rho + seg30AccY79 rho := by
  simp only [Seg30.relationLc1446Part4]
  rw [seg30AccX79, seg30AccX78, seg30AccX77, seg30AccX76, seg30AccX75, seg30AccX74, seg30AccX73, seg30AccX72, seg30AccX71, seg30AccX70, seg30AccX69, seg30AccX68, seg30AccX67, seg30AccX66, seg30AccX65, seg30AccX64, seg30AccY79, seg30AccY78, seg30AccY77, seg30AccY76, seg30AccY75, seg30AccY74, seg30AccY73, seg30AccY72, seg30AccY71, seg30AccY70, seg30AccY69, seg30AccY68, seg30AccY67, seg30AccY66, seg30AccY65, seg30AccY64]
  ring

theorem seg30_lc46_part5 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1446Part5 rho + (seg30AccX79 rho + seg30AccY79 rho) = seg30AccX95 rho + seg30AccY95 rho := by
  simp only [Seg30.relationLc1446Part5]
  rw [seg30AccX95, seg30AccX94, seg30AccX93, seg30AccX92, seg30AccX91, seg30AccX90, seg30AccX89, seg30AccX88, seg30AccX87, seg30AccX86, seg30AccX85, seg30AccX84, seg30AccX83, seg30AccX82, seg30AccX81, seg30AccX80, seg30AccY95, seg30AccY94, seg30AccY93, seg30AccY92, seg30AccY91, seg30AccY90, seg30AccY89, seg30AccY88, seg30AccY87, seg30AccY86, seg30AccY85, seg30AccY84, seg30AccY83, seg30AccY82, seg30AccY81, seg30AccY80]
  ring

theorem seg30_lc46_part6 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1446Part6 rho + (seg30AccX95 rho + seg30AccY95 rho) = seg30AccX111 rho + seg30AccY111 rho := by
  simp only [Seg30.relationLc1446Part6]
  rw [seg30AccX111, seg30AccX110, seg30AccX109, seg30AccX108, seg30AccX107, seg30AccX106, seg30AccX105, seg30AccX104, seg30AccX103, seg30AccX102, seg30AccX101, seg30AccX100, seg30AccX99, seg30AccX98, seg30AccX97, seg30AccX96, seg30AccY111, seg30AccY110, seg30AccY109, seg30AccY108, seg30AccY107, seg30AccY106, seg30AccY105, seg30AccY104, seg30AccY103, seg30AccY102, seg30AccY101, seg30AccY100, seg30AccY99, seg30AccY98, seg30AccY97, seg30AccY96]
  ring

theorem seg30_lc46_part7 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1446Part7 rho + (seg30AccX111 rho + seg30AccY111 rho) = seg30AccX127 rho + seg30AccY127 rho := by
  simp only [Seg30.relationLc1446Part7]
  rw [seg30AccX127, seg30AccX126, seg30AccX125, seg30AccX124, seg30AccX123, seg30AccX122, seg30AccX121, seg30AccX120, seg30AccX119, seg30AccX118, seg30AccX117, seg30AccX116, seg30AccX115, seg30AccX114, seg30AccX113, seg30AccX112, seg30AccY127, seg30AccY126, seg30AccY125, seg30AccY124, seg30AccY123, seg30AccY122, seg30AccY121, seg30AccY120, seg30AccY119, seg30AccY118, seg30AccY117, seg30AccY116, seg30AccY115, seg30AccY114, seg30AccY113, seg30AccY112]
  ring

theorem seg30_lc46_part8 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1446Part8 rho + (seg30AccX127 rho + seg30AccY127 rho) = seg30AccX143 rho + seg30AccY143 rho := by
  simp only [Seg30.relationLc1446Part8]
  rw [seg30AccX143, seg30AccX142, seg30AccX141, seg30AccX140, seg30AccX139, seg30AccX138, seg30AccX137, seg30AccX136, seg30AccX135, seg30AccX134, seg30AccX133, seg30AccX132, seg30AccX131, seg30AccX130, seg30AccX129, seg30AccX128, seg30AccY143, seg30AccY142, seg30AccY141, seg30AccY140, seg30AccY139, seg30AccY138, seg30AccY137, seg30AccY136, seg30AccY135, seg30AccY134, seg30AccY133, seg30AccY132, seg30AccY131, seg30AccY130, seg30AccY129, seg30AccY128]
  ring

theorem seg30_lc46_part9 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1446Part9 rho + (seg30AccX143 rho + seg30AccY143 rho) = seg30AccX159 rho + seg30AccY159 rho := by
  simp only [Seg30.relationLc1446Part9]
  rw [seg30AccX159, seg30AccX158, seg30AccX157, seg30AccX156, seg30AccX155, seg30AccX154, seg30AccX153, seg30AccX152, seg30AccX151, seg30AccX150, seg30AccX149, seg30AccX148, seg30AccX147, seg30AccX146, seg30AccX145, seg30AccX144, seg30AccY159, seg30AccY158, seg30AccY157, seg30AccY156, seg30AccY155, seg30AccY154, seg30AccY153, seg30AccY152, seg30AccY151, seg30AccY150, seg30AccY149, seg30AccY148, seg30AccY147, seg30AccY146, seg30AccY145, seg30AccY144]
  ring

theorem seg30_lc46_part10 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1446Part10 rho + (seg30AccX159 rho + seg30AccY159 rho) = seg30AccX175 rho + seg30AccY175 rho := by
  simp only [Seg30.relationLc1446Part10]
  rw [seg30AccX175, seg30AccX174, seg30AccX173, seg30AccX172, seg30AccX171, seg30AccX170, seg30AccX169, seg30AccX168, seg30AccX167, seg30AccX166, seg30AccX165, seg30AccX164, seg30AccX163, seg30AccX162, seg30AccX161, seg30AccX160, seg30AccY175, seg30AccY174, seg30AccY173, seg30AccY172, seg30AccY171, seg30AccY170, seg30AccY169, seg30AccY168, seg30AccY167, seg30AccY166, seg30AccY165, seg30AccY164, seg30AccY163, seg30AccY162, seg30AccY161, seg30AccY160]
  ring

theorem seg30_lc46_part11 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1446Part11 rho + (seg30AccX175 rho + seg30AccY175 rho) = seg30AccX191 rho + seg30AccY191 rho := by
  simp only [Seg30.relationLc1446Part11]
  rw [seg30AccX191, seg30AccX190, seg30AccX189, seg30AccX188, seg30AccX187, seg30AccX186, seg30AccX185, seg30AccX184, seg30AccX183, seg30AccX182, seg30AccX181, seg30AccX180, seg30AccX179, seg30AccX178, seg30AccX177, seg30AccX176, seg30AccY191, seg30AccY190, seg30AccY189, seg30AccY188, seg30AccY187, seg30AccY186, seg30AccY185, seg30AccY184, seg30AccY183, seg30AccY182, seg30AccY181, seg30AccY180, seg30AccY179, seg30AccY178, seg30AccY177, seg30AccY176]
  ring

theorem seg30_lc46_part12 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1446Part12 rho + (seg30AccX191 rho + seg30AccY191 rho) = seg30AccX207 rho + seg30AccY207 rho := by
  simp only [Seg30.relationLc1446Part12]
  rw [seg30AccX207, seg30AccX206, seg30AccX205, seg30AccX204, seg30AccX203, seg30AccX202, seg30AccX201, seg30AccX200, seg30AccX199, seg30AccX198, seg30AccX197, seg30AccX196, seg30AccX195, seg30AccX194, seg30AccX193, seg30AccX192, seg30AccY207, seg30AccY206, seg30AccY205, seg30AccY204, seg30AccY203, seg30AccY202, seg30AccY201, seg30AccY200, seg30AccY199, seg30AccY198, seg30AccY197, seg30AccY196, seg30AccY195, seg30AccY194, seg30AccY193, seg30AccY192]
  ring

theorem seg30_lc46_part13 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1446Part13 rho + (seg30AccX207 rho + seg30AccY207 rho) = seg30AccX223 rho + seg30AccY223 rho := by
  simp only [Seg30.relationLc1446Part13]
  rw [seg30AccX223, seg30AccX222, seg30AccX221, seg30AccX220, seg30AccX219, seg30AccX218, seg30AccX217, seg30AccX216, seg30AccX215, seg30AccX214, seg30AccX213, seg30AccX212, seg30AccX211, seg30AccX210, seg30AccX209, seg30AccX208, seg30AccY223, seg30AccY222, seg30AccY221, seg30AccY220, seg30AccY219, seg30AccY218, seg30AccY217, seg30AccY216, seg30AccY215, seg30AccY214, seg30AccY213, seg30AccY212, seg30AccY211, seg30AccY210, seg30AccY209, seg30AccY208]
  ring

theorem seg30_lc46_part14 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1446Part14 rho + (seg30AccX223 rho + seg30AccY223 rho) = seg30AccX239 rho + seg30AccY239 rho := by
  simp only [Seg30.relationLc1446Part14]
  rw [seg30AccX239, seg30AccX238, seg30AccX237, seg30AccX236, seg30AccX235, seg30AccX234, seg30AccX233, seg30AccX232, seg30AccX231, seg30AccX230, seg30AccX229, seg30AccX228, seg30AccX227, seg30AccX226, seg30AccX225, seg30AccX224, seg30AccY239, seg30AccY238, seg30AccY237, seg30AccY236, seg30AccY235, seg30AccY234, seg30AccY233, seg30AccY232, seg30AccY231, seg30AccY230, seg30AccY229, seg30AccY228, seg30AccY227, seg30AccY226, seg30AccY225, seg30AccY224]
  ring

theorem seg30_lc46_part15 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1446Part15 rho + (seg30AccX239 rho + seg30AccY239 rho) = seg30AccX250 rho + seg30AccY250 rho := by
  simp only [Seg30.relationLc1446Part15]
  rw [seg30AccX250, seg30AccX249, seg30AccX248, seg30AccX247, seg30AccX246, seg30AccX245, seg30AccX244, seg30AccX243, seg30AccX242, seg30AccX241, seg30AccX240, seg30AccY250, seg30AccY249, seg30AccY248, seg30AccY247, seg30AccY246, seg30AccY245, seg30AccY244, seg30AccY243, seg30AccY242, seg30AccY241, seg30AccY240]
  ring

theorem seg30_lc46_acc (rho : Nat -> Seg30.F) :
    Seg30.relationLc1446 rho = 1 + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + seg30AccX250 rho + seg30AccY250 rho := by
  simp only [Seg30.relationLc1446]
  have h0 := seg30_lc46_part0 rho
  have h1 := seg30_lc46_part1 rho
  have h2 := seg30_lc46_part2 rho
  have h3 := seg30_lc46_part3 rho
  have h4 := seg30_lc46_part4 rho
  have h5 := seg30_lc46_part5 rho
  have h6 := seg30_lc46_part6 rho
  have h7 := seg30_lc46_part7 rho
  have h8 := seg30_lc46_part8 rho
  have h9 := seg30_lc46_part9 rho
  have h10 := seg30_lc46_part10 rho
  have h11 := seg30_lc46_part11 rho
  have h12 := seg30_lc46_part12 rho
  have h13 := seg30_lc46_part13 rho
  have h14 := seg30_lc46_part14 rho
  have h15 := seg30_lc46_part15 rho
  linear_combination h0 + h1 + h2 + h3 + h4 + h5 + h6 + h7 + h8 + h9 + h10 + h11 + h12 + h13 + h14 + h15

theorem seg30_lc46 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1446 rho = (Seg30.relationLc1448 rho) + (Seg30.relationLc1447 rho) := by
  rw [seg30_lc46_acc rho, seg30_lcx rho, seg30_lcy rho]
  ring_nf
  rw [show (11019917739428672292467176045515618920009047319701787790132518851619194178914 : Seg30.F) = (2575455990000301868218351106734072388633147984547723962197285395701784939873 : Seg30.F) from by decide]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
