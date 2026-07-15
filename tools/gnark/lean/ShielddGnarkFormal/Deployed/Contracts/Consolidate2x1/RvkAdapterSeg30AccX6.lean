import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30AccX5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

def seg30AccX61 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX60 rho + rho 28871
def seg30AccX62 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX61 rho + rho 28876
def seg30AccX63 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX62 rho + rho 28881
def seg30AccX64 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX63 rho + rho 28886
def seg30AccX65 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX64 rho + rho 28891
def seg30AccX66 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX65 rho + rho 28896
def seg30AccX67 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX66 rho + rho 28901
def seg30AccX68 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX67 rho + rho 28906
def seg30AccX69 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX68 rho + rho 28911
def seg30AccX70 (rho : Nat -> Seg30.F) : Seg30.F := seg30AccX69 rho + rho 28916

theorem seg30AccX61_sum (rho : Nat -> Seg30.F) :
    seg30AccX61 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) + rho 28866) + rho 28871) := by
  rw [seg30AccX61, seg30AccX60_sum]

theorem seg30AccX62_sum (rho : Nat -> Seg30.F) :
    seg30AccX62 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) + rho 28866) + rho 28871) + rho 28876) := by
  rw [seg30AccX62, seg30AccX61_sum]

theorem seg30AccX63_sum (rho : Nat -> Seg30.F) :
    seg30AccX63 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) + rho 28866) + rho 28871) + rho 28876) + rho 28881) := by
  rw [seg30AccX63, seg30AccX62_sum]

theorem seg30AccX64_sum (rho : Nat -> Seg30.F) :
    seg30AccX64 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) + rho 28866) + rho 28871) + rho 28876) + rho 28881) + rho 28886) := by
  rw [seg30AccX64, seg30AccX63_sum]

theorem seg30AccX65_sum (rho : Nat -> Seg30.F) :
    seg30AccX65 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) + rho 28866) + rho 28871) + rho 28876) + rho 28881) + rho 28886) + rho 28891) := by
  rw [seg30AccX65, seg30AccX64_sum]

theorem seg30AccX66_sum (rho : Nat -> Seg30.F) :
    seg30AccX66 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) + rho 28866) + rho 28871) + rho 28876) + rho 28881) + rho 28886) + rho 28891) + rho 28896) := by
  rw [seg30AccX66, seg30AccX65_sum]

theorem seg30AccX67_sum (rho : Nat -> Seg30.F) :
    seg30AccX67 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) + rho 28866) + rho 28871) + rho 28876) + rho 28881) + rho 28886) + rho 28891) + rho 28896) + rho 28901) := by
  rw [seg30AccX67, seg30AccX66_sum]

theorem seg30AccX68_sum (rho : Nat -> Seg30.F) :
    seg30AccX68 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) + rho 28866) + rho 28871) + rho 28876) + rho 28881) + rho 28886) + rho 28891) + rho 28896) + rho 28901) + rho 28906) := by
  rw [seg30AccX68, seg30AccX67_sum]

theorem seg30AccX69_sum (rho : Nat -> Seg30.F) :
    seg30AccX69 rho = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) + rho 28866) + rho 28871) + rho 28876) + rho 28881) + rho 28886) + rho 28891) + rho 28896) + rho 28901) + rho 28906) + rho 28911) := by
  rw [seg30AccX69, seg30AccX68_sum]

theorem seg30AccX70_sum (rho : Nat -> Seg30.F) :
    seg30AccX70 rho = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((rho 28571 + rho 28576) + rho 28581) + rho 28586) + rho 28591) + rho 28596) + rho 28601) + rho 28606) + rho 28611) + rho 28616) + rho 28621) + rho 28626) + rho 28631) + rho 28636) + rho 28641) + rho 28646) + rho 28651) + rho 28656) + rho 28661) + rho 28666) + rho 28671) + rho 28676) + rho 28681) + rho 28686) + rho 28691) + rho 28696) + rho 28701) + rho 28706) + rho 28711) + rho 28716) + rho 28721) + rho 28726) + rho 28731) + rho 28736) + rho 28741) + rho 28746) + rho 28751) + rho 28756) + rho 28761) + rho 28766) + rho 28771) + rho 28776) + rho 28781) + rho 28786) + rho 28791) + rho 28796) + rho 28801) + rho 28806) + rho 28811) + rho 28816) + rho 28821) + rho 28826) + rho 28831) + rho 28836) + rho 28841) + rho 28846) + rho 28851) + rho 28856) + rho 28861) + rho 28866) + rho 28871) + rho 28876) + rho 28881) + rho 28886) + rho 28891) + rho 28896) + rho 28901) + rho 28906) + rho 28911) + rho 28916) := by
  rw [seg30AccX70, seg30AccX69_sum]


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
