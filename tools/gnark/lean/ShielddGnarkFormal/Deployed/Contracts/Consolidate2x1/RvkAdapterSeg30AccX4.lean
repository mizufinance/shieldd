import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30AccX3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

def seg30AccX41 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX40 rho + rho 28771
def seg30AccX42 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX41 rho + rho 28776
def seg30AccX43 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX42 rho + rho 28781
def seg30AccX44 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX43 rho + rho 28786
def seg30AccX45 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX44 rho + rho 28791
def seg30AccX46 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX45 rho + rho 28796
def seg30AccX47 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX46 rho + rho 28801
def seg30AccX48 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX47 rho + rho 28806
def seg30AccX49 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX48 rho + rho 28811
def seg30AccX50 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX49 rho + rho 28816

theorem seg30AccX41_sum (rho : Nat -> Seg30.F) :
    seg30AccX41 rho = ((((((((((((((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) := by
  rw [seg30AccX41, seg30AccX40_sum]

theorem seg30AccX42_sum (rho : Nat -> Seg30.F) :
    seg30AccX42 rho = (((((((((((((((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) := by
  rw [seg30AccX42, seg30AccX41_sum]

theorem seg30AccX43_sum (rho : Nat -> Seg30.F) :
    seg30AccX43 rho = ((((((((((((((((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) := by
  rw [seg30AccX43, seg30AccX42_sum]

theorem seg30AccX44_sum (rho : Nat -> Seg30.F) :
    seg30AccX44 rho = (((((((((((((((((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) := by
  rw [seg30AccX44, seg30AccX43_sum]

theorem seg30AccX45_sum (rho : Nat -> Seg30.F) :
    seg30AccX45 rho = ((((((((((((((((((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) := by
  rw [seg30AccX45, seg30AccX44_sum]

theorem seg30AccX46_sum (rho : Nat -> Seg30.F) :
    seg30AccX46 rho = (((((((((((((((((((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) := by
  rw [seg30AccX46, seg30AccX45_sum]

theorem seg30AccX47_sum (rho : Nat -> Seg30.F) :
    seg30AccX47 rho = ((((((((((((((((((((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) := by
  rw [seg30AccX47, seg30AccX46_sum]

theorem seg30AccX48_sum (rho : Nat -> Seg30.F) :
    seg30AccX48 rho = (((((((((((((((((((((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) := by
  rw [seg30AccX48, seg30AccX47_sum]

theorem seg30AccX49_sum (rho : Nat -> Seg30.F) :
    seg30AccX49 rho = ((((((((((((((((((((((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) := by
  rw [seg30AccX49, seg30AccX48_sum]

theorem seg30AccX50_sum (rho : Nat -> Seg30.F) :
    seg30AccX50 rho = (((((((((((((((((((((((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) := by
  rw [seg30AccX50, seg30AccX49_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
