import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccY4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg30AccY51 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY50 rho + rho 28816
def seg30AccY52 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY51 rho + rho 28821
def seg30AccY53 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY52 rho + rho 28826
def seg30AccY54 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY53 rho + rho 28831
def seg30AccY55 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY54 rho + rho 28836
def seg30AccY56 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY55 rho + rho 28841
def seg30AccY57 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY56 rho + rho 28846
def seg30AccY58 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY57 rho + rho 28851
def seg30AccY59 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY58 rho + rho 28856
def seg30AccY60 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY59 rho + rho 28861

theorem seg30AccY51_sum (rho : Nat -> Seg30.F) :
    seg30AccY51 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) := by
  rw [seg30AccY51, seg30AccY50_sum]

theorem seg30AccY52_sum (rho : Nat -> Seg30.F) :
    seg30AccY52 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) := by
  rw [seg30AccY52, seg30AccY51_sum]

theorem seg30AccY53_sum (rho : Nat -> Seg30.F) :
    seg30AccY53 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) := by
  rw [seg30AccY53, seg30AccY52_sum]

theorem seg30AccY54_sum (rho : Nat -> Seg30.F) :
    seg30AccY54 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) := by
  rw [seg30AccY54, seg30AccY53_sum]

theorem seg30AccY55_sum (rho : Nat -> Seg30.F) :
    seg30AccY55 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) := by
  rw [seg30AccY55, seg30AccY54_sum]

theorem seg30AccY56_sum (rho : Nat -> Seg30.F) :
    seg30AccY56 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) := by
  rw [seg30AccY56, seg30AccY55_sum]

theorem seg30AccY57_sum (rho : Nat -> Seg30.F) :
    seg30AccY57 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) := by
  rw [seg30AccY57, seg30AccY56_sum]

theorem seg30AccY58_sum (rho : Nat -> Seg30.F) :
    seg30AccY58 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) := by
  rw [seg30AccY58, seg30AccY57_sum]

theorem seg30AccY59_sum (rho : Nat -> Seg30.F) :
    seg30AccY59 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) := by
  rw [seg30AccY59, seg30AccY58_sum]

theorem seg30AccY60_sum (rho : Nat -> Seg30.F) :
    seg30AccY60 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) := by
  rw [seg30AccY60, seg30AccY59_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
