import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc935 (rho : Nat -> Seg30.F) :
    Seg30.relationLc935 rho = seg30AccX177 rho + seg30AccY177 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc935, Seg30.relationLc935Part0, Seg30.relationLc935Part1, Seg30.relationLc935Part2, Seg30.relationLc935Part3, Seg30.relationLc935Part4, Seg30.relationLc935Part5, Seg30.relationLc935Part6, Seg30.relationLc935Part7, Seg30.relationLc935Part8, Seg30.relationLc935Part9, Seg30.relationLc935Part10, Seg30.relationLc935Part11]
  rw [seg30AccX177_sum, seg30AccY177_sum]
  ring

theorem seg30_lc936 (rho : Nat -> Seg30.F) :
    Seg30.relationLc936 rho = 7478308139881087885260569335756343006702543444976098609857214758479369089981*seg30AccX177 rho + 6009052586955181728039866063746186622919640724674161715721640281959638724821*rho 28317 := by
  simp only [Seg30.relationLc936, Seg30.relationLc936Part0, Seg30.relationLc936Part1, Seg30.relationLc936Part2, Seg30.relationLc936Part3, Seg30.relationLc936Part4, Seg30.relationLc936Part5]
  rw [seg30AccX177_sum]
  ring

theorem seg30_lc937 (rho : Nat -> Seg30.F) :
    Seg30.relationLc937 rho = 1055061368777753524672144280273436402122443037262012233559197529002527081090*seg30AccY177 rho + 1055061368777753524672144280273436402122443037262012233559197529002527081090 + 3199699012557669150509061822340357724213213904444938571111818980989777439425*rho 28317 := by
  simp only [Seg30.relationLc937, Seg30.relationLc937Part0, Seg30.relationLc937Part1, Seg30.relationLc937Part2, Seg30.relationLc937Part3, Seg30.relationLc937Part4, Seg30.relationLc937Part5]
  rw [seg30AccY177_sum]
  ring

theorem seg30_lc938 (rho : Nat -> Seg30.F) :
    Seg30.relationLc938 rho = 7040924526051147903390864536639420890106328060034064487703003990982626889439*seg30AccX177 rho + 1055061368777753524672144280273436402122443037262012233559197529002527081090*seg30AccY177 rho + 1055061368777753524672144280273436402122443037262012233559197529002527081090 + 5834817192150016095682988653984172030462474683802701658708876761776324656208*rho 28317 := by
  simp only [Seg30.relationLc938, Seg30.relationLc938Part0, Seg30.relationLc938Part1, Seg30.relationLc938Part2, Seg30.relationLc938Part3, Seg30.relationLc938Part4, Seg30.relationLc938Part5, Seg30.relationLc938Part6, Seg30.relationLc938Part7, Seg30.relationLc938Part8, Seg30.relationLc938Part9, Seg30.relationLc938Part10, Seg30.relationLc938Part11]
  rw [seg30AccX177_sum, seg30AccY177_sum]
  ring

theorem seg30_lc939 (rho : Nat -> Seg30.F) :
    Seg30.relationLc939 rho = 1403537223377222520857960402142125641269571275119999340232229464934782349602*seg30AccX177 rho + 7389400380650616899576680658508110129253456297892051594376035926914882157951*seg30AccY177 rho + 7389400380650616899576680658508110129253456297892051594376035926914882157951 + 2609644557278354328565836284797374500913424651351362169226356694141084582833*rho 28317 := by
  simp only [Seg30.relationLc939, Seg30.relationLc939Part0, Seg30.relationLc939Part1, Seg30.relationLc939Part2, Seg30.relationLc939Part3, Seg30.relationLc939Part4, Seg30.relationLc939Part5, Seg30.relationLc939Part6, Seg30.relationLc939Part7, Seg30.relationLc939Part8, Seg30.relationLc939Part9, Seg30.relationLc939Part10, Seg30.relationLc939Part11]
  rw [seg30AccX177_sum, seg30AccY177_sum]
  ring

theorem seg30_lc940 (rho : Nat -> Seg30.F) :
    Seg30.relationLc940 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX177 rho + rho 29540 := by
  simp only [Seg30.relationLc940, Seg30.relationLc940Part0, Seg30.relationLc940Part1, Seg30.relationLc940Part2, Seg30.relationLc940Part3, Seg30.relationLc940Part4, Seg30.relationLc940Part5]
  rw [seg30AccX177_sum]
  ring

theorem seg30_lc941 (rho : Nat -> Seg30.F) :
    Seg30.relationLc941 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY177 rho + rho 29542 := by
  simp only [Seg30.relationLc941, Seg30.relationLc941Part0, Seg30.relationLc941Part1, Seg30.relationLc941Part2, Seg30.relationLc941Part3, Seg30.relationLc941Part4, Seg30.relationLc941Part5]
  rw [seg30AccY177_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
