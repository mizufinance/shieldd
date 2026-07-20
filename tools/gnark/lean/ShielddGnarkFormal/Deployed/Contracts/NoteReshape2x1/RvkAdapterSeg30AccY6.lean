import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30AccY5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg30AccY61 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY60 rho + rho 28866
def seg30AccY62 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY61 rho + rho 28871
def seg30AccY63 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY62 rho + rho 28876
def seg30AccY64 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY63 rho + rho 28881
def seg30AccY65 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY64 rho + rho 28886
def seg30AccY66 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY65 rho + rho 28891
def seg30AccY67 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY66 rho + rho 28896
def seg30AccY68 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY67 rho + rho 28901
def seg30AccY69 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY68 rho + rho 28906
def seg30AccY70 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccY69 rho + rho 28911

theorem seg30AccY61_sum (rho : Nat -> Seg30.F) :
    seg30AccY61 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) + rho 28866) := by
  rw [seg30AccY61, seg30AccY60_sum]

theorem seg30AccY62_sum (rho : Nat -> Seg30.F) :
    seg30AccY62 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) + rho 28866) + rho 28871) := by
  rw [seg30AccY62, seg30AccY61_sum]

theorem seg30AccY63_sum (rho : Nat -> Seg30.F) :
    seg30AccY63 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) + rho 28866) + rho 28871) + rho 28876) := by
  rw [seg30AccY63, seg30AccY62_sum]

theorem seg30AccY64_sum (rho : Nat -> Seg30.F) :
    seg30AccY64 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) + rho 28866) + rho 28871) + rho 28876) + rho 28881) := by
  rw [seg30AccY64, seg30AccY63_sum]

theorem seg30AccY65_sum (rho : Nat -> Seg30.F) :
    seg30AccY65 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) + rho 28866) + rho 28871) + rho 28876) + rho 28881) + rho 28886) := by
  rw [seg30AccY65, seg30AccY64_sum]

theorem seg30AccY66_sum (rho : Nat -> Seg30.F) :
    seg30AccY66 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) + rho 28866) + rho 28871) + rho 28876) + rho 28881) + rho 28886) + rho 28891) := by
  rw [seg30AccY66, seg30AccY65_sum]

theorem seg30AccY67_sum (rho : Nat -> Seg30.F) :
    seg30AccY67 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) + rho 28866) + rho 28871) + rho 28876) + rho 28881) + rho 28886) + rho 28891) + rho 28896) := by
  rw [seg30AccY67, seg30AccY66_sum]

theorem seg30AccY68_sum (rho : Nat -> Seg30.F) :
    seg30AccY68 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) + rho 28866) + rho 28871) + rho 28876) + rho 28881) + rho 28886) + rho 28891) + rho 28896) + rho 28901) := by
  rw [seg30AccY68, seg30AccY67_sum]

theorem seg30AccY69_sum (rho : Nat -> Seg30.F) :
    seg30AccY69 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) + rho 28866) + rho 28871) + rho 28876) + rho 28881) + rho 28886) + rho 28891) + rho 28896) + rho 28901) + rho 28906) := by
  rw [seg30AccY69, seg30AccY68_sum]

theorem seg30AccY70_sum (rho : Nat -> Seg30.F) :
    seg30AccY70 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28566 + rho 28571) + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) + rho 28866) + rho 28871) + rho 28876) + rho 28881) + rho 28886) + rho 28891) + rho 28896) + rho 28901) + rho 28906) + rho 28911) := by
  rw [seg30AccY70, seg30AccY69_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
