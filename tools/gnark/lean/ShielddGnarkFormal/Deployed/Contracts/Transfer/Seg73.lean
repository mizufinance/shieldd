import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Transfer.Specs
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg73

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relationRow0 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71761) * ((1 : F) + (-1 : F) * rho 71761) = ((0 : F))

def relationRow1 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71762) * ((1 : F) + (-1 : F) * rho 71762) = ((0 : F))

def relationRow2 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71763) * ((1 : F) + (-1 : F) * rho 71763) = ((0 : F))

def relationRow3 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71764) * ((1 : F) + (-1 : F) * rho 71764) = ((0 : F))

def relationRow4 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71765) * ((1 : F) + (-1 : F) * rho 71765) = ((0 : F))

def relationRow5 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71766) * ((1 : F) + (-1 : F) * rho 71766) = ((0 : F))

def relationRow6 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71767) * ((1 : F) + (-1 : F) * rho 71767) = ((0 : F))

def relationRow7 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71768) * ((1 : F) + (-1 : F) * rho 71768) = ((0 : F))

def relationRow8 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71769) * ((1 : F) + (-1 : F) * rho 71769) = ((0 : F))

def relationRow9 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71770) * ((1 : F) + (-1 : F) * rho 71770) = ((0 : F))

def relationRow10 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71771) * ((1 : F) + (-1 : F) * rho 71771) = ((0 : F))

def relationRow11 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71772) * ((1 : F) + (-1 : F) * rho 71772) = ((0 : F))

def relationRow12 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71773) * ((1 : F) + (-1 : F) * rho 71773) = ((0 : F))

def relationRow13 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71774) * ((1 : F) + (-1 : F) * rho 71774) = ((0 : F))

def relationRow14 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71775) * ((1 : F) + (-1 : F) * rho 71775) = ((0 : F))

def relationRow15 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71776) * ((1 : F) + (-1 : F) * rho 71776) = ((0 : F))

def relationRow16 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71777) * ((1 : F) + (-1 : F) * rho 71777) = ((0 : F))

def relationRow17 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71778) * ((1 : F) + (-1 : F) * rho 71778) = ((0 : F))

def relationRow18 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71779) * ((1 : F) + (-1 : F) * rho 71779) = ((0 : F))

def relationRow19 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71780) * ((1 : F) + (-1 : F) * rho 71780) = ((0 : F))

def relationRow20 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71781) * ((1 : F) + (-1 : F) * rho 71781) = ((0 : F))

def relationRow21 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71782) * ((1 : F) + (-1 : F) * rho 71782) = ((0 : F))

def relationRow22 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71783) * ((1 : F) + (-1 : F) * rho 71783) = ((0 : F))

def relationRow23 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71784) * ((1 : F) + (-1 : F) * rho 71784) = ((0 : F))

def relationRow24 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71785) * ((1 : F) + (-1 : F) * rho 71785) = ((0 : F))

def relationRow25 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71786) * ((1 : F) + (-1 : F) * rho 71786) = ((0 : F))

def relationRow26 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71787) * ((1 : F) + (-1 : F) * rho 71787) = ((0 : F))

def relationRow27 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71788) * ((1 : F) + (-1 : F) * rho 71788) = ((0 : F))

def relationRow28 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71789) * ((1 : F) + (-1 : F) * rho 71789) = ((0 : F))

def relationRow29 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71790) * ((1 : F) + (-1 : F) * rho 71790) = ((0 : F))

def relationRow30 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71791) * ((1 : F) + (-1 : F) * rho 71791) = ((0 : F))

def relationRow31 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71792) * ((1 : F) + (-1 : F) * rho 71792) = ((0 : F))

def relationRow32 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71793) * ((1 : F) + (-1 : F) * rho 71793) = ((0 : F))

def relationRow33 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71794) * ((1 : F) + (-1 : F) * rho 71794) = ((0 : F))

def relationRow34 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71795) * ((1 : F) + (-1 : F) * rho 71795) = ((0 : F))

def relationRow35 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71796) * ((1 : F) + (-1 : F) * rho 71796) = ((0 : F))

def relationRow36 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71797) * ((1 : F) + (-1 : F) * rho 71797) = ((0 : F))

def relationRow37 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71798) * ((1 : F) + (-1 : F) * rho 71798) = ((0 : F))

def relationRow38 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71799) * ((1 : F) + (-1 : F) * rho 71799) = ((0 : F))

def relationRow39 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71800) * ((1 : F) + (-1 : F) * rho 71800) = ((0 : F))

def relationRow40 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71801) * ((1 : F) + (-1 : F) * rho 71801) = ((0 : F))

def relationRow41 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71802) * ((1 : F) + (-1 : F) * rho 71802) = ((0 : F))

def relationRow42 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71803) * ((1 : F) + (-1 : F) * rho 71803) = ((0 : F))

def relationRow43 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71804) * ((1 : F) + (-1 : F) * rho 71804) = ((0 : F))

def relationRow44 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71805) * ((1 : F) + (-1 : F) * rho 71805) = ((0 : F))

def relationRow45 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71806) * ((1 : F) + (-1 : F) * rho 71806) = ((0 : F))

def relationRow46 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71807) * ((1 : F) + (-1 : F) * rho 71807) = ((0 : F))

def relationRow47 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71808) * ((1 : F) + (-1 : F) * rho 71808) = ((0 : F))

def relationRow48 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71809) * ((1 : F) + (-1 : F) * rho 71809) = ((0 : F))

def relationRow49 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71810) * ((1 : F) + (-1 : F) * rho 71810) = ((0 : F))

def relationRow50 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71811) * ((1 : F) + (-1 : F) * rho 71811) = ((0 : F))

def relationRow51 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71812) * ((1 : F) + (-1 : F) * rho 71812) = ((0 : F))

def relationRow52 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71813) * ((1 : F) + (-1 : F) * rho 71813) = ((0 : F))

def relationRow53 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71814) * ((1 : F) + (-1 : F) * rho 71814) = ((0 : F))

def relationRow54 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71815) * ((1 : F) + (-1 : F) * rho 71815) = ((0 : F))

def relationRow55 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71816) * ((1 : F) + (-1 : F) * rho 71816) = ((0 : F))

def relationRow56 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71817) * ((1 : F) + (-1 : F) * rho 71817) = ((0 : F))

def relationRow57 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71818) * ((1 : F) + (-1 : F) * rho 71818) = ((0 : F))

def relationRow58 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71819) * ((1 : F) + (-1 : F) * rho 71819) = ((0 : F))

def relationRow59 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71820) * ((1 : F) + (-1 : F) * rho 71820) = ((0 : F))

def relationRow60 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71821) * ((1 : F) + (-1 : F) * rho 71821) = ((0 : F))

def relationRow61 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71822) * ((1 : F) + (-1 : F) * rho 71822) = ((0 : F))

def relationRow62 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71823) * ((1 : F) + (-1 : F) * rho 71823) = ((0 : F))

def relationRow63 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71824) * ((1 : F) + (-1 : F) * rho 71824) = ((0 : F))

def relationRow64 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71825) * ((1 : F) + (-1 : F) * rho 71825) = ((0 : F))

def relationRow65 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71826) * ((1 : F) + (-1 : F) * rho 71826) = ((0 : F))

def relationRow66 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71827) * ((1 : F) + (-1 : F) * rho 71827) = ((0 : F))

def relationRow67 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71828) * ((1 : F) + (-1 : F) * rho 71828) = ((0 : F))

def relationRow68 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71829) * ((1 : F) + (-1 : F) * rho 71829) = ((0 : F))

def relationRow69 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71830) * ((1 : F) + (-1 : F) * rho 71830) = ((0 : F))

def relationRow70 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71831) * ((1 : F) + (-1 : F) * rho 71831) = ((0 : F))

def relationRow71 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71832) * ((1 : F) + (-1 : F) * rho 71832) = ((0 : F))

def relationRow72 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71833) * ((1 : F) + (-1 : F) * rho 71833) = ((0 : F))

def relationRow73 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71834) * ((1 : F) + (-1 : F) * rho 71834) = ((0 : F))

def relationRow74 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71835) * ((1 : F) + (-1 : F) * rho 71835) = ((0 : F))

def relationRow75 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71836) * ((1 : F) + (-1 : F) * rho 71836) = ((0 : F))

def relationRow76 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71837) * ((1 : F) + (-1 : F) * rho 71837) = ((0 : F))

def relationRow77 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71838) * ((1 : F) + (-1 : F) * rho 71838) = ((0 : F))

def relationRow78 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71839) * ((1 : F) + (-1 : F) * rho 71839) = ((0 : F))

def relationRow79 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71840) * ((1 : F) + (-1 : F) * rho 71840) = ((0 : F))

def relationRow80 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71841) * ((1 : F) + (-1 : F) * rho 71841) = ((0 : F))

def relationRow81 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71842) * ((1 : F) + (-1 : F) * rho 71842) = ((0 : F))

def relationRow82 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71843) * ((1 : F) + (-1 : F) * rho 71843) = ((0 : F))

def relationRow83 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71844) * ((1 : F) + (-1 : F) * rho 71844) = ((0 : F))

def relationRow84 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71845) * ((1 : F) + (-1 : F) * rho 71845) = ((0 : F))

def relationRow85 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71846) * ((1 : F) + (-1 : F) * rho 71846) = ((0 : F))

def relationRow86 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71847) * ((1 : F) + (-1 : F) * rho 71847) = ((0 : F))

def relationRow87 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71848) * ((1 : F) + (-1 : F) * rho 71848) = ((0 : F))

def relationRow88 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71849) * ((1 : F) + (-1 : F) * rho 71849) = ((0 : F))

def relationRow89 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71850) * ((1 : F) + (-1 : F) * rho 71850) = ((0 : F))

def relationRow90 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71851) * ((1 : F) + (-1 : F) * rho 71851) = ((0 : F))

def relationRow91 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71852) * ((1 : F) + (-1 : F) * rho 71852) = ((0 : F))

def relationRow92 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71853) * ((1 : F) + (-1 : F) * rho 71853) = ((0 : F))

def relationRow93 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71854) * ((1 : F) + (-1 : F) * rho 71854) = ((0 : F))

def relationRow94 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71855) * ((1 : F) + (-1 : F) * rho 71855) = ((0 : F))

def relationRow95 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71856) * ((1 : F) + (-1 : F) * rho 71856) = ((0 : F))

def relationRow96 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71857) * ((1 : F) + (-1 : F) * rho 71857) = ((0 : F))

def relationRow97 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71858) * ((1 : F) + (-1 : F) * rho 71858) = ((0 : F))

def relationRow98 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71859) * ((1 : F) + (-1 : F) * rho 71859) = ((0 : F))

def relationRow99 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71860) * ((1 : F) + (-1 : F) * rho 71860) = ((0 : F))

def relationRow100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71861) * ((1 : F) + (-1 : F) * rho 71861) = ((0 : F))

def relationRow101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71862) * ((1 : F) + (-1 : F) * rho 71862) = ((0 : F))

def relationRow102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71863) * ((1 : F) + (-1 : F) * rho 71863) = ((0 : F))

def relationRow103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71864) * ((1 : F) + (-1 : F) * rho 71864) = ((0 : F))

def relationRow104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71865) * ((1 : F) + (-1 : F) * rho 71865) = ((0 : F))

def relationRow105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71866) * ((1 : F) + (-1 : F) * rho 71866) = ((0 : F))

def relationRow106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71867) * ((1 : F) + (-1 : F) * rho 71867) = ((0 : F))

def relationRow107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71868) * ((1 : F) + (-1 : F) * rho 71868) = ((0 : F))

def relationRow108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71869) * ((1 : F) + (-1 : F) * rho 71869) = ((0 : F))

def relationRow109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71870) * ((1 : F) + (-1 : F) * rho 71870) = ((0 : F))

def relationRow110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71871) * ((1 : F) + (-1 : F) * rho 71871) = ((0 : F))

def relationRow111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71872) * ((1 : F) + (-1 : F) * rho 71872) = ((0 : F))

def relationRow112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71873) * ((1 : F) + (-1 : F) * rho 71873) = ((0 : F))

def relationRow113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71874) * ((1 : F) + (-1 : F) * rho 71874) = ((0 : F))

def relationRow114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71875) * ((1 : F) + (-1 : F) * rho 71875) = ((0 : F))

def relationRow115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71876) * ((1 : F) + (-1 : F) * rho 71876) = ((0 : F))

def relationRow116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71877) * ((1 : F) + (-1 : F) * rho 71877) = ((0 : F))

def relationRow117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71878) * ((1 : F) + (-1 : F) * rho 71878) = ((0 : F))

def relationRow118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71879) * ((1 : F) + (-1 : F) * rho 71879) = ((0 : F))

def relationRow119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71880) * ((1 : F) + (-1 : F) * rho 71880) = ((0 : F))

def relationRow120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71881) * ((1 : F) + (-1 : F) * rho 71881) = ((0 : F))

def relationRow121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71882) * ((1 : F) + (-1 : F) * rho 71882) = ((0 : F))

def relationRow122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71883) * ((1 : F) + (-1 : F) * rho 71883) = ((0 : F))

def relationRow123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71884) * ((1 : F) + (-1 : F) * rho 71884) = ((0 : F))

def relationRow124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71885) * ((1 : F) + (-1 : F) * rho 71885) = ((0 : F))

def relationRow125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71886) * ((1 : F) + (-1 : F) * rho 71886) = ((0 : F))

def relationRow126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71887) * ((1 : F) + (-1 : F) * rho 71887) = ((0 : F))

def relationRow127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71888) * ((1 : F) + (-1 : F) * rho 71888) = ((0 : F))

def relationRow128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71889) * ((1 : F) + (-1 : F) * rho 71889) = ((0 : F))

def relationRow129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71890) * ((1 : F) + (-1 : F) * rho 71890) = ((0 : F))

def relationRow130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71891) * ((1 : F) + (-1 : F) * rho 71891) = ((0 : F))

def relationRow131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71892) * ((1 : F) + (-1 : F) * rho 71892) = ((0 : F))

def relationRow132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71893) * ((1 : F) + (-1 : F) * rho 71893) = ((0 : F))

def relationRow133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71894) * ((1 : F) + (-1 : F) * rho 71894) = ((0 : F))

def relationRow134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71895) * ((1 : F) + (-1 : F) * rho 71895) = ((0 : F))

def relationRow135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71896) * ((1 : F) + (-1 : F) * rho 71896) = ((0 : F))

def relationRow136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71897) * ((1 : F) + (-1 : F) * rho 71897) = ((0 : F))

def relationRow137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71898) * ((1 : F) + (-1 : F) * rho 71898) = ((0 : F))

def relationRow138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71899) * ((1 : F) + (-1 : F) * rho 71899) = ((0 : F))

def relationRow139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71900) * ((1 : F) + (-1 : F) * rho 71900) = ((0 : F))

def relationRow140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71901) * ((1 : F) + (-1 : F) * rho 71901) = ((0 : F))

def relationRow141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71902) * ((1 : F) + (-1 : F) * rho 71902) = ((0 : F))

def relationRow142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71903) * ((1 : F) + (-1 : F) * rho 71903) = ((0 : F))

def relationRow143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71904) * ((1 : F) + (-1 : F) * rho 71904) = ((0 : F))

def relationRow144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71905) * ((1 : F) + (-1 : F) * rho 71905) = ((0 : F))

def relationRow145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71906) * ((1 : F) + (-1 : F) * rho 71906) = ((0 : F))

def relationRow146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71907) * ((1 : F) + (-1 : F) * rho 71907) = ((0 : F))

def relationRow147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71908) * ((1 : F) + (-1 : F) * rho 71908) = ((0 : F))

def relationRow148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71909) * ((1 : F) + (-1 : F) * rho 71909) = ((0 : F))

def relationRow149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71910) * ((1 : F) + (-1 : F) * rho 71910) = ((0 : F))

def relationRow150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71911) * ((1 : F) + (-1 : F) * rho 71911) = ((0 : F))

def relationRow151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71912) * ((1 : F) + (-1 : F) * rho 71912) = ((0 : F))

def relationRow152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71913) * ((1 : F) + (-1 : F) * rho 71913) = ((0 : F))

def relationRow153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71914) * ((1 : F) + (-1 : F) * rho 71914) = ((0 : F))

def relationRow154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71915) * ((1 : F) + (-1 : F) * rho 71915) = ((0 : F))

def relationRow155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71916) * ((1 : F) + (-1 : F) * rho 71916) = ((0 : F))

def relationRow156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71917) * ((1 : F) + (-1 : F) * rho 71917) = ((0 : F))

def relationRow157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71918) * ((1 : F) + (-1 : F) * rho 71918) = ((0 : F))

def relationRow158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71919) * ((1 : F) + (-1 : F) * rho 71919) = ((0 : F))

def relationRow159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71920) * ((1 : F) + (-1 : F) * rho 71920) = ((0 : F))

def relationRow160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71921) * ((1 : F) + (-1 : F) * rho 71921) = ((0 : F))

def relationRow161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71922) * ((1 : F) + (-1 : F) * rho 71922) = ((0 : F))

def relationRow162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71923) * ((1 : F) + (-1 : F) * rho 71923) = ((0 : F))

def relationRow163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71924) * ((1 : F) + (-1 : F) * rho 71924) = ((0 : F))

def relationRow164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71925) * ((1 : F) + (-1 : F) * rho 71925) = ((0 : F))

def relationRow165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71926) * ((1 : F) + (-1 : F) * rho 71926) = ((0 : F))

def relationRow166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71927) * ((1 : F) + (-1 : F) * rho 71927) = ((0 : F))

def relationRow167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71928) * ((1 : F) + (-1 : F) * rho 71928) = ((0 : F))

def relationRow168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71929) * ((1 : F) + (-1 : F) * rho 71929) = ((0 : F))

def relationRow169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71930) * ((1 : F) + (-1 : F) * rho 71930) = ((0 : F))

def relationRow170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71931) * ((1 : F) + (-1 : F) * rho 71931) = ((0 : F))

def relationRow171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71932) * ((1 : F) + (-1 : F) * rho 71932) = ((0 : F))

def relationRow172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71933) * ((1 : F) + (-1 : F) * rho 71933) = ((0 : F))

def relationRow173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71934) * ((1 : F) + (-1 : F) * rho 71934) = ((0 : F))

def relationRow174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71935) * ((1 : F) + (-1 : F) * rho 71935) = ((0 : F))

def relationRow175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71936) * ((1 : F) + (-1 : F) * rho 71936) = ((0 : F))

def relationRow176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71937) * ((1 : F) + (-1 : F) * rho 71937) = ((0 : F))

def relationRow177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71938) * ((1 : F) + (-1 : F) * rho 71938) = ((0 : F))

def relationRow178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71939) * ((1 : F) + (-1 : F) * rho 71939) = ((0 : F))

def relationRow179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71940) * ((1 : F) + (-1 : F) * rho 71940) = ((0 : F))

def relationRow180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71941) * ((1 : F) + (-1 : F) * rho 71941) = ((0 : F))

def relationRow181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71942) * ((1 : F) + (-1 : F) * rho 71942) = ((0 : F))

def relationRow182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71943) * ((1 : F) + (-1 : F) * rho 71943) = ((0 : F))

def relationRow183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71944) * ((1 : F) + (-1 : F) * rho 71944) = ((0 : F))

def relationRow184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71945) * ((1 : F) + (-1 : F) * rho 71945) = ((0 : F))

def relationRow185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71946) * ((1 : F) + (-1 : F) * rho 71946) = ((0 : F))

def relationRow186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71947) * ((1 : F) + (-1 : F) * rho 71947) = ((0 : F))

def relationRow187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71948) * ((1 : F) + (-1 : F) * rho 71948) = ((0 : F))

def relationRow188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71949) * ((1 : F) + (-1 : F) * rho 71949) = ((0 : F))

def relationRow189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71950) * ((1 : F) + (-1 : F) * rho 71950) = ((0 : F))

def relationRow190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71951) * ((1 : F) + (-1 : F) * rho 71951) = ((0 : F))

def relationRow191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71952) * ((1 : F) + (-1 : F) * rho 71952) = ((0 : F))

def relationRow192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71953) * ((1 : F) + (-1 : F) * rho 71953) = ((0 : F))

def relationRow193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71954) * ((1 : F) + (-1 : F) * rho 71954) = ((0 : F))

def relationRow194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71955) * ((1 : F) + (-1 : F) * rho 71955) = ((0 : F))

def relationRow195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71956) * ((1 : F) + (-1 : F) * rho 71956) = ((0 : F))

def relationRow196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71957) * ((1 : F) + (-1 : F) * rho 71957) = ((0 : F))

def relationRow197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71958) * ((1 : F) + (-1 : F) * rho 71958) = ((0 : F))

def relationRow198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71959) * ((1 : F) + (-1 : F) * rho 71959) = ((0 : F))

def relationRow199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71960) * ((1 : F) + (-1 : F) * rho 71960) = ((0 : F))

def relationRow200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71961) * ((1 : F) + (-1 : F) * rho 71961) = ((0 : F))

def relationRow201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71962) * ((1 : F) + (-1 : F) * rho 71962) = ((0 : F))

def relationRow202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71963) * ((1 : F) + (-1 : F) * rho 71963) = ((0 : F))

def relationRow203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71964) * ((1 : F) + (-1 : F) * rho 71964) = ((0 : F))

def relationRow204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71965) * ((1 : F) + (-1 : F) * rho 71965) = ((0 : F))

def relationRow205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71966) * ((1 : F) + (-1 : F) * rho 71966) = ((0 : F))

def relationRow206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71967) * ((1 : F) + (-1 : F) * rho 71967) = ((0 : F))

def relationRow207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71968) * ((1 : F) + (-1 : F) * rho 71968) = ((0 : F))

def relationRow208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71969) * ((1 : F) + (-1 : F) * rho 71969) = ((0 : F))

def relationRow209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71970) * ((1 : F) + (-1 : F) * rho 71970) = ((0 : F))

def relationRow210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71971) * ((1 : F) + (-1 : F) * rho 71971) = ((0 : F))

def relationRow211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71972) * ((1 : F) + (-1 : F) * rho 71972) = ((0 : F))

def relationRow212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71973) * ((1 : F) + (-1 : F) * rho 71973) = ((0 : F))

def relationRow213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71974) * ((1 : F) + (-1 : F) * rho 71974) = ((0 : F))

def relationRow214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71975) * ((1 : F) + (-1 : F) * rho 71975) = ((0 : F))

def relationRow215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71976) * ((1 : F) + (-1 : F) * rho 71976) = ((0 : F))

def relationRow216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71977) * ((1 : F) + (-1 : F) * rho 71977) = ((0 : F))

def relationRow217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71978) * ((1 : F) + (-1 : F) * rho 71978) = ((0 : F))

def relationRow218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71979) * ((1 : F) + (-1 : F) * rho 71979) = ((0 : F))

def relationRow219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71980) * ((1 : F) + (-1 : F) * rho 71980) = ((0 : F))

def relationRow220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71981) * ((1 : F) + (-1 : F) * rho 71981) = ((0 : F))

def relationRow221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71982) * ((1 : F) + (-1 : F) * rho 71982) = ((0 : F))

def relationRow222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71983) * ((1 : F) + (-1 : F) * rho 71983) = ((0 : F))

def relationRow223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71984) * ((1 : F) + (-1 : F) * rho 71984) = ((0 : F))

def relationRow224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71985) * ((1 : F) + (-1 : F) * rho 71985) = ((0 : F))

def relationRow225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71986) * ((1 : F) + (-1 : F) * rho 71986) = ((0 : F))

def relationRow226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71987) * ((1 : F) + (-1 : F) * rho 71987) = ((0 : F))

def relationRow227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71988) * ((1 : F) + (-1 : F) * rho 71988) = ((0 : F))

def relationRow228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71989) * ((1 : F) + (-1 : F) * rho 71989) = ((0 : F))

def relationRow229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71990) * ((1 : F) + (-1 : F) * rho 71990) = ((0 : F))

def relationRow230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71991) * ((1 : F) + (-1 : F) * rho 71991) = ((0 : F))

def relationRow231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71992) * ((1 : F) + (-1 : F) * rho 71992) = ((0 : F))

def relationRow232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71993) * ((1 : F) + (-1 : F) * rho 71993) = ((0 : F))

def relationRow233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71994) * ((1 : F) + (-1 : F) * rho 71994) = ((0 : F))

def relationRow234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71995) * ((1 : F) + (-1 : F) * rho 71995) = ((0 : F))

def relationRow235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71996) * ((1 : F) + (-1 : F) * rho 71996) = ((0 : F))

def relationRow236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71997) * ((1 : F) + (-1 : F) * rho 71997) = ((0 : F))

def relationRow237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71998) * ((1 : F) + (-1 : F) * rho 71998) = ((0 : F))

def relationRow238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71999) * ((1 : F) + (-1 : F) * rho 71999) = ((0 : F))

def relationRow239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72000) * ((1 : F) + (-1 : F) * rho 72000) = ((0 : F))

def relationRow240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72001) * ((1 : F) + (-1 : F) * rho 72001) = ((0 : F))

def relationRow241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72002) * ((1 : F) + (-1 : F) * rho 72002) = ((0 : F))

def relationRow242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72003) * ((1 : F) + (-1 : F) * rho 72003) = ((0 : F))

def relationRow243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72004) * ((1 : F) + (-1 : F) * rho 72004) = ((0 : F))

def relationRow244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72005) * ((1 : F) + (-1 : F) * rho 72005) = ((0 : F))

def relationRow245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72006) * ((1 : F) + (-1 : F) * rho 72006) = ((0 : F))

def relationRow246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72007) * ((1 : F) + (-1 : F) * rho 72007) = ((0 : F))

def relationRow247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72008) * ((1 : F) + (-1 : F) * rho 72008) = ((0 : F))

def relationRow248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72009) * ((1 : F) + (-1 : F) * rho 72009) = ((0 : F))

def relationRow249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72010) * ((1 : F) + (-1 : F) * rho 72010) = ((0 : F))

def relationRow250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72011) * ((1 : F) + (-1 : F) * rho 72011) = ((0 : F))

def relationLc0Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 71761 + (2 : F) * rho 71762 + (4 : F) * rho 71763 + (8 : F) * rho 71764 + (16 : F) * rho 71765 + (32 : F) * rho 71766 + (64 : F) * rho 71767 + (128 : F) * rho 71768 + (256 : F) * rho 71769 + (512 : F) * rho 71770 + (1024 : F) * rho 71771 + (2048 : F) * rho 71772 + (4096 : F) * rho 71773 + (8192 : F) * rho 71774 + (16384 : F) * rho 71775 + (32768 : F) * rho 71776 + (65536 : F) * rho 71777 + (131072 : F) * rho 71778 + (262144 : F) * rho 71779 + (524288 : F) * rho 71780 + (1048576 : F) * rho 71781 + (2097152 : F) * rho 71782 + (4194304 : F) * rho 71783 + (8388608 : F) * rho 71784 + (16777216 : F) * rho 71785 + (33554432 : F) * rho 71786 + (67108864 : F) * rho 71787 + (134217728 : F) * rho 71788 + (268435456 : F) * rho 71789 + (536870912 : F) * rho 71790 + (1073741824 : F) * rho 71791 + (2147483648 : F) * rho 71792

def relationLc0Part1 (rho : Nat -> F) : F :=
    (4294967296 : F) * rho 71793 + (8589934592 : F) * rho 71794 + (17179869184 : F) * rho 71795 + (34359738368 : F) * rho 71796 + (68719476736 : F) * rho 71797 + (137438953472 : F) * rho 71798 + (274877906944 : F) * rho 71799 + (549755813888 : F) * rho 71800 + (1099511627776 : F) * rho 71801 + (2199023255552 : F) * rho 71802 + (4398046511104 : F) * rho 71803 + (8796093022208 : F) * rho 71804 + (17592186044416 : F) * rho 71805 + (35184372088832 : F) * rho 71806 + (70368744177664 : F) * rho 71807 + (140737488355328 : F) * rho 71808 + (281474976710656 : F) * rho 71809 + (562949953421312 : F) * rho 71810 + (1125899906842624 : F) * rho 71811 + (2251799813685248 : F) * rho 71812 + (4503599627370496 : F) * rho 71813 + (9007199254740992 : F) * rho 71814 + (18014398509481984 : F) * rho 71815 + (36028797018963968 : F) * rho 71816 + (72057594037927936 : F) * rho 71817 + (144115188075855872 : F) * rho 71818 + (288230376151711744 : F) * rho 71819 + (576460752303423488 : F) * rho 71820 + (1152921504606846976 : F) * rho 71821 + (2305843009213693952 : F) * rho 71822 + (4611686018427387904 : F) * rho 71823 + (9223372036854775808 : F) * rho 71824

def relationLc0Part2 (rho : Nat -> F) : F :=
    (18446744073709551616 : F) * rho 71825 + (36893488147419103232 : F) * rho 71826 + (73786976294838206464 : F) * rho 71827 + (147573952589676412928 : F) * rho 71828 + (295147905179352825856 : F) * rho 71829 + (590295810358705651712 : F) * rho 71830 + (1180591620717411303424 : F) * rho 71831 + (2361183241434822606848 : F) * rho 71832 + (4722366482869645213696 : F) * rho 71833 + (9444732965739290427392 : F) * rho 71834 + (18889465931478580854784 : F) * rho 71835 + (37778931862957161709568 : F) * rho 71836 + (75557863725914323419136 : F) * rho 71837 + (151115727451828646838272 : F) * rho 71838 + (302231454903657293676544 : F) * rho 71839 + (604462909807314587353088 : F) * rho 71840 + (1208925819614629174706176 : F) * rho 71841 + (2417851639229258349412352 : F) * rho 71842 + (4835703278458516698824704 : F) * rho 71843 + (9671406556917033397649408 : F) * rho 71844 + (19342813113834066795298816 : F) * rho 71845 + (38685626227668133590597632 : F) * rho 71846 + (77371252455336267181195264 : F) * rho 71847 + (154742504910672534362390528 : F) * rho 71848 + (309485009821345068724781056 : F) * rho 71849 + (618970019642690137449562112 : F) * rho 71850 + (1237940039285380274899124224 : F) * rho 71851 + (2475880078570760549798248448 : F) * rho 71852 + (4951760157141521099596496896 : F) * rho 71853 + (9903520314283042199192993792 : F) * rho 71854 + (19807040628566084398385987584 : F) * rho 71855 + (39614081257132168796771975168 : F) * rho 71856

def relationLc0Part3 (rho : Nat -> F) : F :=
    (79228162514264337593543950336 : F) * rho 71857 + (158456325028528675187087900672 : F) * rho 71858 + (316912650057057350374175801344 : F) * rho 71859 + (633825300114114700748351602688 : F) * rho 71860 + (1267650600228229401496703205376 : F) * rho 71861 + (2535301200456458802993406410752 : F) * rho 71862 + (5070602400912917605986812821504 : F) * rho 71863 + (10141204801825835211973625643008 : F) * rho 71864 + (20282409603651670423947251286016 : F) * rho 71865 + (40564819207303340847894502572032 : F) * rho 71866 + (81129638414606681695789005144064 : F) * rho 71867 + (162259276829213363391578010288128 : F) * rho 71868 + (324518553658426726783156020576256 : F) * rho 71869 + (649037107316853453566312041152512 : F) * rho 71870 + (1298074214633706907132624082305024 : F) * rho 71871 + (2596148429267413814265248164610048 : F) * rho 71872 + (5192296858534827628530496329220096 : F) * rho 71873 + (10384593717069655257060992658440192 : F) * rho 71874 + (20769187434139310514121985316880384 : F) * rho 71875 + (41538374868278621028243970633760768 : F) * rho 71876 + (83076749736557242056487941267521536 : F) * rho 71877 + (166153499473114484112975882535043072 : F) * rho 71878 + (332306998946228968225951765070086144 : F) * rho 71879 + (664613997892457936451903530140172288 : F) * rho 71880 + (1329227995784915872903807060280344576 : F) * rho 71881 + (2658455991569831745807614120560689152 : F) * rho 71882 + (5316911983139663491615228241121378304 : F) * rho 71883 + (10633823966279326983230456482242756608 : F) * rho 71884 + (21267647932558653966460912964485513216 : F) * rho 71885 + (42535295865117307932921825928971026432 : F) * rho 71886 + (85070591730234615865843651857942052864 : F) * rho 71887 + (170141183460469231731687303715884105728 : F) * rho 71888

def relationLc0Part4 (rho : Nat -> F) : F :=
    (340282366920938463463374607431768211456 : F) * rho 71889 + (680564733841876926926749214863536422912 : F) * rho 71890 + (1361129467683753853853498429727072845824 : F) * rho 71891 + (2722258935367507707706996859454145691648 : F) * rho 71892 + (5444517870735015415413993718908291383296 : F) * rho 71893 + (10889035741470030830827987437816582766592 : F) * rho 71894 + (21778071482940061661655974875633165533184 : F) * rho 71895 + (43556142965880123323311949751266331066368 : F) * rho 71896 + (87112285931760246646623899502532662132736 : F) * rho 71897 + (174224571863520493293247799005065324265472 : F) * rho 71898 + (348449143727040986586495598010130648530944 : F) * rho 71899 + (696898287454081973172991196020261297061888 : F) * rho 71900 + (1393796574908163946345982392040522594123776 : F) * rho 71901 + (2787593149816327892691964784081045188247552 : F) * rho 71902 + (5575186299632655785383929568162090376495104 : F) * rho 71903 + (11150372599265311570767859136324180752990208 : F) * rho 71904 + (22300745198530623141535718272648361505980416 : F) * rho 71905 + (44601490397061246283071436545296723011960832 : F) * rho 71906 + (89202980794122492566142873090593446023921664 : F) * rho 71907 + (178405961588244985132285746181186892047843328 : F) * rho 71908 + (356811923176489970264571492362373784095686656 : F) * rho 71909 + (713623846352979940529142984724747568191373312 : F) * rho 71910 + (1427247692705959881058285969449495136382746624 : F) * rho 71911 + (2854495385411919762116571938898990272765493248 : F) * rho 71912 + (5708990770823839524233143877797980545530986496 : F) * rho 71913 + (11417981541647679048466287755595961091061972992 : F) * rho 71914 + (22835963083295358096932575511191922182123945984 : F) * rho 71915 + (45671926166590716193865151022383844364247891968 : F) * rho 71916 + (91343852333181432387730302044767688728495783936 : F) * rho 71917 + (182687704666362864775460604089535377456991567872 : F) * rho 71918 + (365375409332725729550921208179070754913983135744 : F) * rho 71919 + (730750818665451459101842416358141509827966271488 : F) * rho 71920

def relationLc0Part5 (rho : Nat -> F) : F :=
    (1461501637330902918203684832716283019655932542976 : F) * rho 71921 + (2923003274661805836407369665432566039311865085952 : F) * rho 71922 + (5846006549323611672814739330865132078623730171904 : F) * rho 71923 + (11692013098647223345629478661730264157247460343808 : F) * rho 71924 + (23384026197294446691258957323460528314494920687616 : F) * rho 71925 + (46768052394588893382517914646921056628989841375232 : F) * rho 71926 + (93536104789177786765035829293842113257979682750464 : F) * rho 71927 + (187072209578355573530071658587684226515959365500928 : F) * rho 71928 + (374144419156711147060143317175368453031918731001856 : F) * rho 71929 + (748288838313422294120286634350736906063837462003712 : F) * rho 71930 + (1496577676626844588240573268701473812127674924007424 : F) * rho 71931 + (2993155353253689176481146537402947624255349848014848 : F) * rho 71932 + (5986310706507378352962293074805895248510699696029696 : F) * rho 71933 + (11972621413014756705924586149611790497021399392059392 : F) * rho 71934 + (23945242826029513411849172299223580994042798784118784 : F) * rho 71935 + (47890485652059026823698344598447161988085597568237568 : F) * rho 71936 + (95780971304118053647396689196894323976171195136475136 : F) * rho 71937 + (191561942608236107294793378393788647952342390272950272 : F) * rho 71938 + (383123885216472214589586756787577295904684780545900544 : F) * rho 71939 + (766247770432944429179173513575154591809369561091801088 : F) * rho 71940 + (1532495540865888858358347027150309183618739122183602176 : F) * rho 71941 + (3064991081731777716716694054300618367237478244367204352 : F) * rho 71942 + (6129982163463555433433388108601236734474956488734408704 : F) * rho 71943 + (12259964326927110866866776217202473468949912977468817408 : F) * rho 71944 + (24519928653854221733733552434404946937899825954937634816 : F) * rho 71945 + (49039857307708443467467104868809893875799651909875269632 : F) * rho 71946 + (98079714615416886934934209737619787751599303819750539264 : F) * rho 71947 + (196159429230833773869868419475239575503198607639501078528 : F) * rho 71948 + (392318858461667547739736838950479151006397215279002157056 : F) * rho 71949 + (784637716923335095479473677900958302012794430558004314112 : F) * rho 71950 + (1569275433846670190958947355801916604025588861116008628224 : F) * rho 71951 + (3138550867693340381917894711603833208051177722232017256448 : F) * rho 71952

def relationLc0Part6 (rho : Nat -> F) : F :=
    (6277101735386680763835789423207666416102355444464034512896 : F) * rho 71953 + (12554203470773361527671578846415332832204710888928069025792 : F) * rho 71954 + (25108406941546723055343157692830665664409421777856138051584 : F) * rho 71955 + (50216813883093446110686315385661331328818843555712276103168 : F) * rho 71956 + (100433627766186892221372630771322662657637687111424552206336 : F) * rho 71957 + (200867255532373784442745261542645325315275374222849104412672 : F) * rho 71958 + (401734511064747568885490523085290650630550748445698208825344 : F) * rho 71959 + (803469022129495137770981046170581301261101496891396417650688 : F) * rho 71960 + (1606938044258990275541962092341162602522202993782792835301376 : F) * rho 71961 + (3213876088517980551083924184682325205044405987565585670602752 : F) * rho 71962 + (6427752177035961102167848369364650410088811975131171341205504 : F) * rho 71963 + (12855504354071922204335696738729300820177623950262342682411008 : F) * rho 71964 + (25711008708143844408671393477458601640355247900524685364822016 : F) * rho 71965 + (51422017416287688817342786954917203280710495801049370729644032 : F) * rho 71966 + (102844034832575377634685573909834406561420991602098741459288064 : F) * rho 71967 + (205688069665150755269371147819668813122841983204197482918576128 : F) * rho 71968 + (411376139330301510538742295639337626245683966408394965837152256 : F) * rho 71969 + (822752278660603021077484591278675252491367932816789931674304512 : F) * rho 71970 + (1645504557321206042154969182557350504982735865633579863348609024 : F) * rho 71971 + (3291009114642412084309938365114701009965471731267159726697218048 : F) * rho 71972 + (6582018229284824168619876730229402019930943462534319453394436096 : F) * rho 71973 + (13164036458569648337239753460458804039861886925068638906788872192 : F) * rho 71974 + (26328072917139296674479506920917608079723773850137277813577744384 : F) * rho 71975 + (52656145834278593348959013841835216159447547700274555627155488768 : F) * rho 71976 + (105312291668557186697918027683670432318895095400549111254310977536 : F) * rho 71977 + (210624583337114373395836055367340864637790190801098222508621955072 : F) * rho 71978 + (421249166674228746791672110734681729275580381602196445017243910144 : F) * rho 71979 + (842498333348457493583344221469363458551160763204392890034487820288 : F) * rho 71980 + (1684996666696914987166688442938726917102321526408785780068975640576 : F) * rho 71981 + (3369993333393829974333376885877453834204643052817571560137951281152 : F) * rho 71982 + (6739986666787659948666753771754907668409286105635143120275902562304 : F) * rho 71983 + (13479973333575319897333507543509815336818572211270286240551805124608 : F) * rho 71984

def relationLc0Part7 (rho : Nat -> F) : F :=
    (26959946667150639794667015087019630673637144422540572481103610249216 : F) * rho 71985 + (53919893334301279589334030174039261347274288845081144962207220498432 : F) * rho 71986 + (107839786668602559178668060348078522694548577690162289924414440996864 : F) * rho 71987 + (215679573337205118357336120696157045389097155380324579848828881993728 : F) * rho 71988 + (431359146674410236714672241392314090778194310760649159697657763987456 : F) * rho 71989 + (862718293348820473429344482784628181556388621521298319395315527974912 : F) * rho 71990 + (1725436586697640946858688965569256363112777243042596638790631055949824 : F) * rho 71991 + (3450873173395281893717377931138512726225554486085193277581262111899648 : F) * rho 71992 + (6901746346790563787434755862277025452451108972170386555162524223799296 : F) * rho 71993 + (13803492693581127574869511724554050904902217944340773110325048447598592 : F) * rho 71994 + (27606985387162255149739023449108101809804435888681546220650096895197184 : F) * rho 71995 + (55213970774324510299478046898216203619608871777363092441300193790394368 : F) * rho 71996 + (110427941548649020598956093796432407239217743554726184882600387580788736 : F) * rho 71997 + (220855883097298041197912187592864814478435487109452369765200775161577472 : F) * rho 71998 + (441711766194596082395824375185729628956870974218904739530401550323154944 : F) * rho 71999 + (883423532389192164791648750371459257913741948437809479060803100646309888 : F) * rho 72000 + (1766847064778384329583297500742918515827483896875618958121606201292619776 : F) * rho 72001 + (3533694129556768659166595001485837031654967793751237916243212402585239552 : F) * rho 72002 + (7067388259113537318333190002971674063309935587502475832486424805170479104 : F) * rho 72003 + (14134776518227074636666380005943348126619871175004951664972849610340958208 : F) * rho 72004 + (28269553036454149273332760011886696253239742350009903329945699220681916416 : F) * rho 72005 + (56539106072908298546665520023773392506479484700019806659891398441363832832 : F) * rho 72006 + (113078212145816597093331040047546785012958969400039613319782796882727665664 : F) * rho 72007 + (226156424291633194186662080095093570025917938800079226639565593765455331328 : F) * rho 72008 + (452312848583266388373324160190187140051835877600158453279131187530910662656 : F) * rho 72009 + (904625697166532776746648320380374280103671755200316906558262375061821325312 : F) * rho 72010 + (1809251394333065553493296640760748560207343510400633813116524750123642650624 : F) * rho 72011

def relationLc0 (rho : Nat -> F) : F :=
    relationLc0Part0 rho +
    relationLc0Part1 rho +
    relationLc0Part2 rho +
    relationLc0Part3 rho +
    relationLc0Part4 rho +
    relationLc0Part5 rho +
    relationLc0Part6 rho +
    relationLc0Part7 rho

def relationRow251 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc0 rho) = ((1 : F) * rho 425)

def relationRow252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71761) * ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 544) = ((1 : F) * rho 72012)

def relationRow253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71761) * ((4435054869909997083204234178514060517908537592280323551921416368800279852460 : F) + (1 : F) * rho 545) = ((1 : F) * rho 72013)

def relationRow254 (rho : Nat -> F) : Prop :=
    ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 544) * ((4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) + (1 : F) * rho 545) = ((1 : F) * rho 72014)

def relationRow255 (rho : Nat -> F) : Prop :=
    ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 544) * ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 544) = ((1 : F) * rho 72015)

def relationRow256 (rho : Nat -> F) : Prop :=
    ((4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) + (1 : F) * rho 545) * ((4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) + (1 : F) * rho 545) = ((1 : F) * rho 72016)

def relationRow257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72017) * ((-1 : F) * rho 72015 + (1 : F) * rho 72016) = ((2 : F) * rho 72014)

def relationRow258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72018) * ((2 : F) + (1 : F) * rho 72015 + (-1 : F) * rho 72016) = ((1 : F) * rho 72015 + (1 : F) * rho 72016)

def relationRow259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72017 + (1 : F) * rho 72018) * ((1 : F) + (1 : F) * rho 72012 + (1 : F) * rho 72013) = ((1 : F) * rho 72019)

def relationRow260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72018) * ((1 : F) * rho 72012) = ((1 : F) * rho 72020)

def relationRow261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72017) * ((1 : F) + (1 : F) * rho 72013) = ((1 : F) * rho 72021)

def relationRow262 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72020) * ((1 : F) * rho 72021) = ((1 : F) * rho 72022)

def relationRow263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72023) * ((1 : F) + (1 : F) * rho 72022) = ((1 : F) * rho 72020 + (1 : F) * rho 72021)

def relationRow264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72024) * ((1 : F) + (-1 : F) * rho 72022) = ((1 : F) * rho 72019 + (-1 : F) * rho 72020 + (-1 : F) * rho 72021)

def relationRow265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71762) * ((-1 : F) * rho 72012 + (1 : F) * rho 72023) = ((1 : F) * rho 72025)

def relationRow266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71762) * ((-1 : F) + (-1 : F) * rho 72013 + (1 : F) * rho 72024) = ((1 : F) * rho 72026)

def relationRow267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72017) * ((1 : F) * rho 72018) = ((1 : F) * rho 72027)

def relationRow268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72017) * ((1 : F) * rho 72017) = ((1 : F) * rho 72028)

def relationRow269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72018) * ((1 : F) * rho 72018) = ((1 : F) * rho 72029)

def relationRow270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72030) * ((-1 : F) * rho 72028 + (1 : F) * rho 72029) = ((2 : F) * rho 72027)

def relationRow271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72031) * ((2 : F) + (1 : F) * rho 72028 + (-1 : F) * rho 72029) = ((1 : F) * rho 72028 + (1 : F) * rho 72029)

def relationRow272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72030 + (1 : F) * rho 72031) * ((1 : F) + (1 : F) * rho 72012 + (1 : F) * rho 72013 + (1 : F) * rho 72025 + (1 : F) * rho 72026) = ((1 : F) * rho 72032)

def relationRow273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72031) * ((1 : F) * rho 72012 + (1 : F) * rho 72025) = ((1 : F) * rho 72033)

def relationRow274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72030) * ((1 : F) + (1 : F) * rho 72013 + (1 : F) * rho 72026) = ((1 : F) * rho 72034)

def relationRow275 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72033) * ((1 : F) * rho 72034) = ((1 : F) * rho 72035)

def relationRow276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72036) * ((1 : F) + (1 : F) * rho 72035) = ((1 : F) * rho 72033 + (1 : F) * rho 72034)

def relationRow277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72037) * ((1 : F) + (-1 : F) * rho 72035) = ((1 : F) * rho 72032 + (-1 : F) * rho 72033 + (-1 : F) * rho 72034)

def relationRow278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71763) * ((-1 : F) * rho 72012 + (-1 : F) * rho 72025 + (1 : F) * rho 72036) = ((1 : F) * rho 72038)

def relationRow279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71763) * ((-1 : F) + (-1 : F) * rho 72013 + (-1 : F) * rho 72026 + (1 : F) * rho 72037) = ((1 : F) * rho 72039)

def relationRow280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72030) * ((1 : F) * rho 72031) = ((1 : F) * rho 72040)

def relationRow281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72030) * ((1 : F) * rho 72030) = ((1 : F) * rho 72041)

def relationRow282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72031) * ((1 : F) * rho 72031) = ((1 : F) * rho 72042)

def relationRow283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72043) * ((-1 : F) * rho 72041 + (1 : F) * rho 72042) = ((2 : F) * rho 72040)

def relationRow284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72044) * ((2 : F) + (1 : F) * rho 72041 + (-1 : F) * rho 72042) = ((1 : F) * rho 72041 + (1 : F) * rho 72042)

def relationRow285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72043 + (1 : F) * rho 72044) * ((1 : F) + (1 : F) * rho 72012 + (1 : F) * rho 72013 + (1 : F) * rho 72025 + (1 : F) * rho 72026 + (1 : F) * rho 72038 + (1 : F) * rho 72039) = ((1 : F) * rho 72045)

def relationRow286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72044) * ((1 : F) * rho 72012 + (1 : F) * rho 72025 + (1 : F) * rho 72038) = ((1 : F) * rho 72046)

def relationRow287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72043) * ((1 : F) + (1 : F) * rho 72013 + (1 : F) * rho 72026 + (1 : F) * rho 72039) = ((1 : F) * rho 72047)

def relationRow288 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72046) * ((1 : F) * rho 72047) = ((1 : F) * rho 72048)

def relationRow289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72049) * ((1 : F) + (1 : F) * rho 72048) = ((1 : F) * rho 72046 + (1 : F) * rho 72047)

def relationRow290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72050) * ((1 : F) + (-1 : F) * rho 72048) = ((1 : F) * rho 72045 + (-1 : F) * rho 72046 + (-1 : F) * rho 72047)

def relationRow291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71764) * ((-1 : F) * rho 72012 + (-1 : F) * rho 72025 + (-1 : F) * rho 72038 + (1 : F) * rho 72049) = ((1 : F) * rho 72051)

def relationRow292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71764) * ((-1 : F) + (-1 : F) * rho 72013 + (-1 : F) * rho 72026 + (-1 : F) * rho 72039 + (1 : F) * rho 72050) = ((1 : F) * rho 72052)

def relationRow293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72043) * ((1 : F) * rho 72044) = ((1 : F) * rho 72053)

def relationRow294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72043) * ((1 : F) * rho 72043) = ((1 : F) * rho 72054)

def relationRow295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72044) * ((1 : F) * rho 72044) = ((1 : F) * rho 72055)

def relationRow296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72056) * ((-1 : F) * rho 72054 + (1 : F) * rho 72055) = ((2 : F) * rho 72053)

def relationRow297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72057) * ((2 : F) + (1 : F) * rho 72054 + (-1 : F) * rho 72055) = ((1 : F) * rho 72054 + (1 : F) * rho 72055)

def relationRow298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72056 + (1 : F) * rho 72057) * ((1 : F) + (1 : F) * rho 72012 + (1 : F) * rho 72013 + (1 : F) * rho 72025 + (1 : F) * rho 72026 + (1 : F) * rho 72038 + (1 : F) * rho 72039 + (1 : F) * rho 72051 + (1 : F) * rho 72052) = ((1 : F) * rho 72058)

def relationRow299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72057) * ((1 : F) * rho 72012 + (1 : F) * rho 72025 + (1 : F) * rho 72038 + (1 : F) * rho 72051) = ((1 : F) * rho 72059)

def relationRow300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72056) * ((1 : F) + (1 : F) * rho 72013 + (1 : F) * rho 72026 + (1 : F) * rho 72039 + (1 : F) * rho 72052) = ((1 : F) * rho 72060)

def relationRow301 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72059) * ((1 : F) * rho 72060) = ((1 : F) * rho 72061)

def relationRow302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72062) * ((1 : F) + (1 : F) * rho 72061) = ((1 : F) * rho 72059 + (1 : F) * rho 72060)

def relationRow303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72063) * ((1 : F) + (-1 : F) * rho 72061) = ((1 : F) * rho 72058 + (-1 : F) * rho 72059 + (-1 : F) * rho 72060)

def relationRow304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71765) * ((-1 : F) * rho 72012 + (-1 : F) * rho 72025 + (-1 : F) * rho 72038 + (-1 : F) * rho 72051 + (1 : F) * rho 72062) = ((1 : F) * rho 72064)

def relationRow305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71765) * ((-1 : F) + (-1 : F) * rho 72013 + (-1 : F) * rho 72026 + (-1 : F) * rho 72039 + (-1 : F) * rho 72052 + (1 : F) * rho 72063) = ((1 : F) * rho 72065)

def relationRow306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72056) * ((1 : F) * rho 72057) = ((1 : F) * rho 72066)

def relationRow307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72056) * ((1 : F) * rho 72056) = ((1 : F) * rho 72067)

def relationRow308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72057) * ((1 : F) * rho 72057) = ((1 : F) * rho 72068)

def relationRow309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72069) * ((-1 : F) * rho 72067 + (1 : F) * rho 72068) = ((2 : F) * rho 72066)

def relationRow310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72070) * ((2 : F) + (1 : F) * rho 72067 + (-1 : F) * rho 72068) = ((1 : F) * rho 72067 + (1 : F) * rho 72068)

def relationRow311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72069 + (1 : F) * rho 72070) * ((1 : F) + (1 : F) * rho 72012 + (1 : F) * rho 72013 + (1 : F) * rho 72025 + (1 : F) * rho 72026 + (1 : F) * rho 72038 + (1 : F) * rho 72039 + (1 : F) * rho 72051 + (1 : F) * rho 72052 + (1 : F) * rho 72064 + (1 : F) * rho 72065) = ((1 : F) * rho 72071)

def relationRow312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72070) * ((1 : F) * rho 72012 + (1 : F) * rho 72025 + (1 : F) * rho 72038 + (1 : F) * rho 72051 + (1 : F) * rho 72064) = ((1 : F) * rho 72072)

def relationRow313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72069) * ((1 : F) + (1 : F) * rho 72013 + (1 : F) * rho 72026 + (1 : F) * rho 72039 + (1 : F) * rho 72052 + (1 : F) * rho 72065) = ((1 : F) * rho 72073)

def relationRow314 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72072) * ((1 : F) * rho 72073) = ((1 : F) * rho 72074)

def relationRow315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72075) * ((1 : F) + (1 : F) * rho 72074) = ((1 : F) * rho 72072 + (1 : F) * rho 72073)

def relationRow316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72076) * ((1 : F) + (-1 : F) * rho 72074) = ((1 : F) * rho 72071 + (-1 : F) * rho 72072 + (-1 : F) * rho 72073)

def relationRow317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71766) * ((-1 : F) * rho 72012 + (-1 : F) * rho 72025 + (-1 : F) * rho 72038 + (-1 : F) * rho 72051 + (-1 : F) * rho 72064 + (1 : F) * rho 72075) = ((1 : F) * rho 72077)

def relationRow318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71766) * ((-1 : F) + (-1 : F) * rho 72013 + (-1 : F) * rho 72026 + (-1 : F) * rho 72039 + (-1 : F) * rho 72052 + (-1 : F) * rho 72065 + (1 : F) * rho 72076) = ((1 : F) * rho 72078)

def relationRow319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72069) * ((1 : F) * rho 72070) = ((1 : F) * rho 72079)

def relationRow320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72069) * ((1 : F) * rho 72069) = ((1 : F) * rho 72080)

def relationRow321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72070) * ((1 : F) * rho 72070) = ((1 : F) * rho 72081)

def relationRow322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72082) * ((-1 : F) * rho 72080 + (1 : F) * rho 72081) = ((2 : F) * rho 72079)

def relationRow323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72083) * ((2 : F) + (1 : F) * rho 72080 + (-1 : F) * rho 72081) = ((1 : F) * rho 72080 + (1 : F) * rho 72081)

def relationRow324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72082 + (1 : F) * rho 72083) * ((1 : F) + (1 : F) * rho 72012 + (1 : F) * rho 72013 + (1 : F) * rho 72025 + (1 : F) * rho 72026 + (1 : F) * rho 72038 + (1 : F) * rho 72039 + (1 : F) * rho 72051 + (1 : F) * rho 72052 + (1 : F) * rho 72064 + (1 : F) * rho 72065 + (1 : F) * rho 72077 + (1 : F) * rho 72078) = ((1 : F) * rho 72084)

def relationRow325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72083) * ((1 : F) * rho 72012 + (1 : F) * rho 72025 + (1 : F) * rho 72038 + (1 : F) * rho 72051 + (1 : F) * rho 72064 + (1 : F) * rho 72077) = ((1 : F) * rho 72085)

def relationRow326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72082) * ((1 : F) + (1 : F) * rho 72013 + (1 : F) * rho 72026 + (1 : F) * rho 72039 + (1 : F) * rho 72052 + (1 : F) * rho 72065 + (1 : F) * rho 72078) = ((1 : F) * rho 72086)

def relationRow327 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72085) * ((1 : F) * rho 72086) = ((1 : F) * rho 72087)

def relationRow328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72088) * ((1 : F) + (1 : F) * rho 72087) = ((1 : F) * rho 72085 + (1 : F) * rho 72086)

def relationRow329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72089) * ((1 : F) + (-1 : F) * rho 72087) = ((1 : F) * rho 72084 + (-1 : F) * rho 72085 + (-1 : F) * rho 72086)

def relationRow330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71767) * ((-1 : F) * rho 72012 + (-1 : F) * rho 72025 + (-1 : F) * rho 72038 + (-1 : F) * rho 72051 + (-1 : F) * rho 72064 + (-1 : F) * rho 72077 + (1 : F) * rho 72088) = ((1 : F) * rho 72090)

def relationRow331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71767) * ((-1 : F) + (-1 : F) * rho 72013 + (-1 : F) * rho 72026 + (-1 : F) * rho 72039 + (-1 : F) * rho 72052 + (-1 : F) * rho 72065 + (-1 : F) * rho 72078 + (1 : F) * rho 72089) = ((1 : F) * rho 72091)

def relationRow332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72082) * ((1 : F) * rho 72083) = ((1 : F) * rho 72092)

def relationRow333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72082) * ((1 : F) * rho 72082) = ((1 : F) * rho 72093)

def relationRow334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72083) * ((1 : F) * rho 72083) = ((1 : F) * rho 72094)

def relationRow335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72095) * ((-1 : F) * rho 72093 + (1 : F) * rho 72094) = ((2 : F) * rho 72092)

def relationRow336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72096) * ((2 : F) + (1 : F) * rho 72093 + (-1 : F) * rho 72094) = ((1 : F) * rho 72093 + (1 : F) * rho 72094)

def relationRow337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72095 + (1 : F) * rho 72096) * ((1 : F) + (1 : F) * rho 72012 + (1 : F) * rho 72013 + (1 : F) * rho 72025 + (1 : F) * rho 72026 + (1 : F) * rho 72038 + (1 : F) * rho 72039 + (1 : F) * rho 72051 + (1 : F) * rho 72052 + (1 : F) * rho 72064 + (1 : F) * rho 72065 + (1 : F) * rho 72077 + (1 : F) * rho 72078 + (1 : F) * rho 72090 + (1 : F) * rho 72091) = ((1 : F) * rho 72097)

def relationRow338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72096) * ((1 : F) * rho 72012 + (1 : F) * rho 72025 + (1 : F) * rho 72038 + (1 : F) * rho 72051 + (1 : F) * rho 72064 + (1 : F) * rho 72077 + (1 : F) * rho 72090) = ((1 : F) * rho 72098)

def relationRow339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72095) * ((1 : F) + (1 : F) * rho 72013 + (1 : F) * rho 72026 + (1 : F) * rho 72039 + (1 : F) * rho 72052 + (1 : F) * rho 72065 + (1 : F) * rho 72078 + (1 : F) * rho 72091) = ((1 : F) * rho 72099)

def relationRow340 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72098) * ((1 : F) * rho 72099) = ((1 : F) * rho 72100)

def relationRow341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72101) * ((1 : F) + (1 : F) * rho 72100) = ((1 : F) * rho 72098 + (1 : F) * rho 72099)

def relationRow342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72102) * ((1 : F) + (-1 : F) * rho 72100) = ((1 : F) * rho 72097 + (-1 : F) * rho 72098 + (-1 : F) * rho 72099)

def relationRow343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71768) * ((-1 : F) * rho 72012 + (-1 : F) * rho 72025 + (-1 : F) * rho 72038 + (-1 : F) * rho 72051 + (-1 : F) * rho 72064 + (-1 : F) * rho 72077 + (-1 : F) * rho 72090 + (1 : F) * rho 72101) = ((1 : F) * rho 72103)

def relationRow344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71768) * ((-1 : F) + (-1 : F) * rho 72013 + (-1 : F) * rho 72026 + (-1 : F) * rho 72039 + (-1 : F) * rho 72052 + (-1 : F) * rho 72065 + (-1 : F) * rho 72078 + (-1 : F) * rho 72091 + (1 : F) * rho 72102) = ((1 : F) * rho 72104)

def relationRow345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72095) * ((1 : F) * rho 72096) = ((1 : F) * rho 72105)

def relationRow346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72095) * ((1 : F) * rho 72095) = ((1 : F) * rho 72106)

def relationRow347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72096) * ((1 : F) * rho 72096) = ((1 : F) * rho 72107)

def relationRow348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72108) * ((-1 : F) * rho 72106 + (1 : F) * rho 72107) = ((2 : F) * rho 72105)

def relationRow349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72109) * ((2 : F) + (1 : F) * rho 72106 + (-1 : F) * rho 72107) = ((1 : F) * rho 72106 + (1 : F) * rho 72107)

def relationRow350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72108 + (1 : F) * rho 72109) * ((1 : F) + (1 : F) * rho 72012 + (1 : F) * rho 72013 + (1 : F) * rho 72025 + (1 : F) * rho 72026 + (1 : F) * rho 72038 + (1 : F) * rho 72039 + (1 : F) * rho 72051 + (1 : F) * rho 72052 + (1 : F) * rho 72064 + (1 : F) * rho 72065 + (1 : F) * rho 72077 + (1 : F) * rho 72078 + (1 : F) * rho 72090 + (1 : F) * rho 72091 + (1 : F) * rho 72103 + (1 : F) * rho 72104) = ((1 : F) * rho 72110)

def relationRow351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72109) * ((1 : F) * rho 72012 + (1 : F) * rho 72025 + (1 : F) * rho 72038 + (1 : F) * rho 72051 + (1 : F) * rho 72064 + (1 : F) * rho 72077 + (1 : F) * rho 72090 + (1 : F) * rho 72103) = ((1 : F) * rho 72111)

def relationRow352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72108) * ((1 : F) + (1 : F) * rho 72013 + (1 : F) * rho 72026 + (1 : F) * rho 72039 + (1 : F) * rho 72052 + (1 : F) * rho 72065 + (1 : F) * rho 72078 + (1 : F) * rho 72091 + (1 : F) * rho 72104) = ((1 : F) * rho 72112)

def relationRow353 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72111) * ((1 : F) * rho 72112) = ((1 : F) * rho 72113)

def relationRow354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72114) * ((1 : F) + (1 : F) * rho 72113) = ((1 : F) * rho 72111 + (1 : F) * rho 72112)

def relationRow355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72115) * ((1 : F) + (-1 : F) * rho 72113) = ((1 : F) * rho 72110 + (-1 : F) * rho 72111 + (-1 : F) * rho 72112)

def relationRow356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71769) * ((-1 : F) * rho 72012 + (-1 : F) * rho 72025 + (-1 : F) * rho 72038 + (-1 : F) * rho 72051 + (-1 : F) * rho 72064 + (-1 : F) * rho 72077 + (-1 : F) * rho 72090 + (-1 : F) * rho 72103 + (1 : F) * rho 72114) = ((1 : F) * rho 72116)

def relationRow357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71769) * ((-1 : F) + (-1 : F) * rho 72013 + (-1 : F) * rho 72026 + (-1 : F) * rho 72039 + (-1 : F) * rho 72052 + (-1 : F) * rho 72065 + (-1 : F) * rho 72078 + (-1 : F) * rho 72091 + (-1 : F) * rho 72104 + (1 : F) * rho 72115) = ((1 : F) * rho 72117)

def relationRow358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72108) * ((1 : F) * rho 72109) = ((1 : F) * rho 72118)

def relationRow359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72108) * ((1 : F) * rho 72108) = ((1 : F) * rho 72119)

def relationRow360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72109) * ((1 : F) * rho 72109) = ((1 : F) * rho 72120)

def relationRow361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72121) * ((-1 : F) * rho 72119 + (1 : F) * rho 72120) = ((2 : F) * rho 72118)

def relationRow362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72122) * ((2 : F) + (1 : F) * rho 72119 + (-1 : F) * rho 72120) = ((1 : F) * rho 72119 + (1 : F) * rho 72120)

def relationRow363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72121 + (1 : F) * rho 72122) * ((1 : F) + (1 : F) * rho 72012 + (1 : F) * rho 72013 + (1 : F) * rho 72025 + (1 : F) * rho 72026 + (1 : F) * rho 72038 + (1 : F) * rho 72039 + (1 : F) * rho 72051 + (1 : F) * rho 72052 + (1 : F) * rho 72064 + (1 : F) * rho 72065 + (1 : F) * rho 72077 + (1 : F) * rho 72078 + (1 : F) * rho 72090 + (1 : F) * rho 72091 + (1 : F) * rho 72103 + (1 : F) * rho 72104 + (1 : F) * rho 72116 + (1 : F) * rho 72117) = ((1 : F) * rho 72123)

def relationRow364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72122) * ((1 : F) * rho 72012 + (1 : F) * rho 72025 + (1 : F) * rho 72038 + (1 : F) * rho 72051 + (1 : F) * rho 72064 + (1 : F) * rho 72077 + (1 : F) * rho 72090 + (1 : F) * rho 72103 + (1 : F) * rho 72116) = ((1 : F) * rho 72124)

def relationRow365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72121) * ((1 : F) + (1 : F) * rho 72013 + (1 : F) * rho 72026 + (1 : F) * rho 72039 + (1 : F) * rho 72052 + (1 : F) * rho 72065 + (1 : F) * rho 72078 + (1 : F) * rho 72091 + (1 : F) * rho 72104 + (1 : F) * rho 72117) = ((1 : F) * rho 72125)

def relationRow366 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72124) * ((1 : F) * rho 72125) = ((1 : F) * rho 72126)

def relationRow367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72127) * ((1 : F) + (1 : F) * rho 72126) = ((1 : F) * rho 72124 + (1 : F) * rho 72125)

def relationRow368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72128) * ((1 : F) + (-1 : F) * rho 72126) = ((1 : F) * rho 72123 + (-1 : F) * rho 72124 + (-1 : F) * rho 72125)

def relationRow369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71770) * ((-1 : F) * rho 72012 + (-1 : F) * rho 72025 + (-1 : F) * rho 72038 + (-1 : F) * rho 72051 + (-1 : F) * rho 72064 + (-1 : F) * rho 72077 + (-1 : F) * rho 72090 + (-1 : F) * rho 72103 + (-1 : F) * rho 72116 + (1 : F) * rho 72127) = ((1 : F) * rho 72129)

def relationRow370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71770) * ((-1 : F) + (-1 : F) * rho 72013 + (-1 : F) * rho 72026 + (-1 : F) * rho 72039 + (-1 : F) * rho 72052 + (-1 : F) * rho 72065 + (-1 : F) * rho 72078 + (-1 : F) * rho 72091 + (-1 : F) * rho 72104 + (-1 : F) * rho 72117 + (1 : F) * rho 72128) = ((1 : F) * rho 72130)

def relationRow371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72121) * ((1 : F) * rho 72122) = ((1 : F) * rho 72131)

def relationRow372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72121) * ((1 : F) * rho 72121) = ((1 : F) * rho 72132)

def relationRow373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72122) * ((1 : F) * rho 72122) = ((1 : F) * rho 72133)

def relationRow374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72134) * ((-1 : F) * rho 72132 + (1 : F) * rho 72133) = ((2 : F) * rho 72131)

def relationRow375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72135) * ((2 : F) + (1 : F) * rho 72132 + (-1 : F) * rho 72133) = ((1 : F) * rho 72132 + (1 : F) * rho 72133)

def relationRow376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72134 + (1 : F) * rho 72135) * ((1 : F) + (1 : F) * rho 72012 + (1 : F) * rho 72013 + (1 : F) * rho 72025 + (1 : F) * rho 72026 + (1 : F) * rho 72038 + (1 : F) * rho 72039 + (1 : F) * rho 72051 + (1 : F) * rho 72052 + (1 : F) * rho 72064 + (1 : F) * rho 72065 + (1 : F) * rho 72077 + (1 : F) * rho 72078 + (1 : F) * rho 72090 + (1 : F) * rho 72091 + (1 : F) * rho 72103 + (1 : F) * rho 72104 + (1 : F) * rho 72116 + (1 : F) * rho 72117 + (1 : F) * rho 72129 + (1 : F) * rho 72130) = ((1 : F) * rho 72136)

def relationRow377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72135) * ((1 : F) * rho 72012 + (1 : F) * rho 72025 + (1 : F) * rho 72038 + (1 : F) * rho 72051 + (1 : F) * rho 72064 + (1 : F) * rho 72077 + (1 : F) * rho 72090 + (1 : F) * rho 72103 + (1 : F) * rho 72116 + (1 : F) * rho 72129) = ((1 : F) * rho 72137)

def relationRow378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72134) * ((1 : F) + (1 : F) * rho 72013 + (1 : F) * rho 72026 + (1 : F) * rho 72039 + (1 : F) * rho 72052 + (1 : F) * rho 72065 + (1 : F) * rho 72078 + (1 : F) * rho 72091 + (1 : F) * rho 72104 + (1 : F) * rho 72117 + (1 : F) * rho 72130) = ((1 : F) * rho 72138)

def relationRow379 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72137) * ((1 : F) * rho 72138) = ((1 : F) * rho 72139)

def relationRow380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72140) * ((1 : F) + (1 : F) * rho 72139) = ((1 : F) * rho 72137 + (1 : F) * rho 72138)

def relationRow381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72141) * ((1 : F) + (-1 : F) * rho 72139) = ((1 : F) * rho 72136 + (-1 : F) * rho 72137 + (-1 : F) * rho 72138)

def relationRow382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71771) * ((-1 : F) * rho 72012 + (-1 : F) * rho 72025 + (-1 : F) * rho 72038 + (-1 : F) * rho 72051 + (-1 : F) * rho 72064 + (-1 : F) * rho 72077 + (-1 : F) * rho 72090 + (-1 : F) * rho 72103 + (-1 : F) * rho 72116 + (-1 : F) * rho 72129 + (1 : F) * rho 72140) = ((1 : F) * rho 72142)

def relationRow383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71771) * ((-1 : F) + (-1 : F) * rho 72013 + (-1 : F) * rho 72026 + (-1 : F) * rho 72039 + (-1 : F) * rho 72052 + (-1 : F) * rho 72065 + (-1 : F) * rho 72078 + (-1 : F) * rho 72091 + (-1 : F) * rho 72104 + (-1 : F) * rho 72117 + (-1 : F) * rho 72130 + (1 : F) * rho 72141) = ((1 : F) * rho 72143)

def relationRow384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72134) * ((1 : F) * rho 72135) = ((1 : F) * rho 72144)

def relationRow385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72134) * ((1 : F) * rho 72134) = ((1 : F) * rho 72145)

def relationRow386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72135) * ((1 : F) * rho 72135) = ((1 : F) * rho 72146)

def relationRow387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72147) * ((-1 : F) * rho 72145 + (1 : F) * rho 72146) = ((2 : F) * rho 72144)

def relationRow388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72148) * ((2 : F) + (1 : F) * rho 72145 + (-1 : F) * rho 72146) = ((1 : F) * rho 72145 + (1 : F) * rho 72146)

def relationRow389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72147 + (1 : F) * rho 72148) * ((1 : F) + (1 : F) * rho 72012 + (1 : F) * rho 72013 + (1 : F) * rho 72025 + (1 : F) * rho 72026 + (1 : F) * rho 72038 + (1 : F) * rho 72039 + (1 : F) * rho 72051 + (1 : F) * rho 72052 + (1 : F) * rho 72064 + (1 : F) * rho 72065 + (1 : F) * rho 72077 + (1 : F) * rho 72078 + (1 : F) * rho 72090 + (1 : F) * rho 72091 + (1 : F) * rho 72103 + (1 : F) * rho 72104 + (1 : F) * rho 72116 + (1 : F) * rho 72117 + (1 : F) * rho 72129 + (1 : F) * rho 72130 + (1 : F) * rho 72142 + (1 : F) * rho 72143) = ((1 : F) * rho 72149)

def relationRow390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72148) * ((1 : F) * rho 72012 + (1 : F) * rho 72025 + (1 : F) * rho 72038 + (1 : F) * rho 72051 + (1 : F) * rho 72064 + (1 : F) * rho 72077 + (1 : F) * rho 72090 + (1 : F) * rho 72103 + (1 : F) * rho 72116 + (1 : F) * rho 72129 + (1 : F) * rho 72142) = ((1 : F) * rho 72150)

def relationRow391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72147) * ((1 : F) + (1 : F) * rho 72013 + (1 : F) * rho 72026 + (1 : F) * rho 72039 + (1 : F) * rho 72052 + (1 : F) * rho 72065 + (1 : F) * rho 72078 + (1 : F) * rho 72091 + (1 : F) * rho 72104 + (1 : F) * rho 72117 + (1 : F) * rho 72130 + (1 : F) * rho 72143) = ((1 : F) * rho 72151)

def relationRow392 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72150) * ((1 : F) * rho 72151) = ((1 : F) * rho 72152)

def relationRow393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72153) * ((1 : F) + (1 : F) * rho 72152) = ((1 : F) * rho 72150 + (1 : F) * rho 72151)

def relationRow394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72154) * ((1 : F) + (-1 : F) * rho 72152) = ((1 : F) * rho 72149 + (-1 : F) * rho 72150 + (-1 : F) * rho 72151)

def relationRow395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71772) * ((-1 : F) * rho 72012 + (-1 : F) * rho 72025 + (-1 : F) * rho 72038 + (-1 : F) * rho 72051 + (-1 : F) * rho 72064 + (-1 : F) * rho 72077 + (-1 : F) * rho 72090 + (-1 : F) * rho 72103 + (-1 : F) * rho 72116 + (-1 : F) * rho 72129 + (-1 : F) * rho 72142 + (1 : F) * rho 72153) = ((1 : F) * rho 72155)

def relationRow396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71772) * ((-1 : F) + (-1 : F) * rho 72013 + (-1 : F) * rho 72026 + (-1 : F) * rho 72039 + (-1 : F) * rho 72052 + (-1 : F) * rho 72065 + (-1 : F) * rho 72078 + (-1 : F) * rho 72091 + (-1 : F) * rho 72104 + (-1 : F) * rho 72117 + (-1 : F) * rho 72130 + (-1 : F) * rho 72143 + (1 : F) * rho 72154) = ((1 : F) * rho 72156)

def relationRow397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72147) * ((1 : F) * rho 72148) = ((1 : F) * rho 72157)

def relationRow398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72147) * ((1 : F) * rho 72147) = ((1 : F) * rho 72158)

def relationRow399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72148) * ((1 : F) * rho 72148) = ((1 : F) * rho 72159)

def relationRow400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72160) * ((-1 : F) * rho 72158 + (1 : F) * rho 72159) = ((2 : F) * rho 72157)

def relationRow401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72161) * ((2 : F) + (1 : F) * rho 72158 + (-1 : F) * rho 72159) = ((1 : F) * rho 72158 + (1 : F) * rho 72159)

def relationRow402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72160 + (1 : F) * rho 72161) * ((1 : F) + (1 : F) * rho 72012 + (1 : F) * rho 72013 + (1 : F) * rho 72025 + (1 : F) * rho 72026 + (1 : F) * rho 72038 + (1 : F) * rho 72039 + (1 : F) * rho 72051 + (1 : F) * rho 72052 + (1 : F) * rho 72064 + (1 : F) * rho 72065 + (1 : F) * rho 72077 + (1 : F) * rho 72078 + (1 : F) * rho 72090 + (1 : F) * rho 72091 + (1 : F) * rho 72103 + (1 : F) * rho 72104 + (1 : F) * rho 72116 + (1 : F) * rho 72117 + (1 : F) * rho 72129 + (1 : F) * rho 72130 + (1 : F) * rho 72142 + (1 : F) * rho 72143 + (1 : F) * rho 72155 + (1 : F) * rho 72156) = ((1 : F) * rho 72162)

def relationRow403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72161) * ((1 : F) * rho 72012 + (1 : F) * rho 72025 + (1 : F) * rho 72038 + (1 : F) * rho 72051 + (1 : F) * rho 72064 + (1 : F) * rho 72077 + (1 : F) * rho 72090 + (1 : F) * rho 72103 + (1 : F) * rho 72116 + (1 : F) * rho 72129 + (1 : F) * rho 72142 + (1 : F) * rho 72155) = ((1 : F) * rho 72163)

def relationRow404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72160) * ((1 : F) + (1 : F) * rho 72013 + (1 : F) * rho 72026 + (1 : F) * rho 72039 + (1 : F) * rho 72052 + (1 : F) * rho 72065 + (1 : F) * rho 72078 + (1 : F) * rho 72091 + (1 : F) * rho 72104 + (1 : F) * rho 72117 + (1 : F) * rho 72130 + (1 : F) * rho 72143 + (1 : F) * rho 72156) = ((1 : F) * rho 72164)

def relationRow405 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72163) * ((1 : F) * rho 72164) = ((1 : F) * rho 72165)

def relationRow406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72166) * ((1 : F) + (1 : F) * rho 72165) = ((1 : F) * rho 72163 + (1 : F) * rho 72164)

def relationRow407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72167) * ((1 : F) + (-1 : F) * rho 72165) = ((1 : F) * rho 72162 + (-1 : F) * rho 72163 + (-1 : F) * rho 72164)

def relationRow408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71773) * ((-1 : F) * rho 72012 + (-1 : F) * rho 72025 + (-1 : F) * rho 72038 + (-1 : F) * rho 72051 + (-1 : F) * rho 72064 + (-1 : F) * rho 72077 + (-1 : F) * rho 72090 + (-1 : F) * rho 72103 + (-1 : F) * rho 72116 + (-1 : F) * rho 72129 + (-1 : F) * rho 72142 + (-1 : F) * rho 72155 + (1 : F) * rho 72166) = ((1 : F) * rho 72168)

def relationRow409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71773) * ((-1 : F) + (-1 : F) * rho 72013 + (-1 : F) * rho 72026 + (-1 : F) * rho 72039 + (-1 : F) * rho 72052 + (-1 : F) * rho 72065 + (-1 : F) * rho 72078 + (-1 : F) * rho 72091 + (-1 : F) * rho 72104 + (-1 : F) * rho 72117 + (-1 : F) * rho 72130 + (-1 : F) * rho 72143 + (-1 : F) * rho 72156 + (1 : F) * rho 72167) = ((1 : F) * rho 72169)

def relationRow410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72160) * ((1 : F) * rho 72161) = ((1 : F) * rho 72170)

def relationRow411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72160) * ((1 : F) * rho 72160) = ((1 : F) * rho 72171)

def relationRow412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72161) * ((1 : F) * rho 72161) = ((1 : F) * rho 72172)

def relationRow413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72173) * ((-1 : F) * rho 72171 + (1 : F) * rho 72172) = ((2 : F) * rho 72170)

def relationRow414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72174) * ((2 : F) + (1 : F) * rho 72171 + (-1 : F) * rho 72172) = ((1 : F) * rho 72171 + (1 : F) * rho 72172)

def relationRow415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72173 + (1 : F) * rho 72174) * ((1 : F) + (1 : F) * rho 72012 + (1 : F) * rho 72013 + (1 : F) * rho 72025 + (1 : F) * rho 72026 + (1 : F) * rho 72038 + (1 : F) * rho 72039 + (1 : F) * rho 72051 + (1 : F) * rho 72052 + (1 : F) * rho 72064 + (1 : F) * rho 72065 + (1 : F) * rho 72077 + (1 : F) * rho 72078 + (1 : F) * rho 72090 + (1 : F) * rho 72091 + (1 : F) * rho 72103 + (1 : F) * rho 72104 + (1 : F) * rho 72116 + (1 : F) * rho 72117 + (1 : F) * rho 72129 + (1 : F) * rho 72130 + (1 : F) * rho 72142 + (1 : F) * rho 72143 + (1 : F) * rho 72155 + (1 : F) * rho 72156 + (1 : F) * rho 72168 + (1 : F) * rho 72169) = ((1 : F) * rho 72175)

def relationRow416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72174) * ((1 : F) * rho 72012 + (1 : F) * rho 72025 + (1 : F) * rho 72038 + (1 : F) * rho 72051 + (1 : F) * rho 72064 + (1 : F) * rho 72077 + (1 : F) * rho 72090 + (1 : F) * rho 72103 + (1 : F) * rho 72116 + (1 : F) * rho 72129 + (1 : F) * rho 72142 + (1 : F) * rho 72155 + (1 : F) * rho 72168) = ((1 : F) * rho 72176)

def relationRow417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72173) * ((1 : F) + (1 : F) * rho 72013 + (1 : F) * rho 72026 + (1 : F) * rho 72039 + (1 : F) * rho 72052 + (1 : F) * rho 72065 + (1 : F) * rho 72078 + (1 : F) * rho 72091 + (1 : F) * rho 72104 + (1 : F) * rho 72117 + (1 : F) * rho 72130 + (1 : F) * rho 72143 + (1 : F) * rho 72156 + (1 : F) * rho 72169) = ((1 : F) * rho 72177)

def relationRow418 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72176) * ((1 : F) * rho 72177) = ((1 : F) * rho 72178)

def relationRow419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72179) * ((1 : F) + (1 : F) * rho 72178) = ((1 : F) * rho 72176 + (1 : F) * rho 72177)

def relationRow420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72180) * ((1 : F) + (-1 : F) * rho 72178) = ((1 : F) * rho 72175 + (-1 : F) * rho 72176 + (-1 : F) * rho 72177)

def relationRow421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71774) * ((-1 : F) * rho 72012 + (-1 : F) * rho 72025 + (-1 : F) * rho 72038 + (-1 : F) * rho 72051 + (-1 : F) * rho 72064 + (-1 : F) * rho 72077 + (-1 : F) * rho 72090 + (-1 : F) * rho 72103 + (-1 : F) * rho 72116 + (-1 : F) * rho 72129 + (-1 : F) * rho 72142 + (-1 : F) * rho 72155 + (-1 : F) * rho 72168 + (1 : F) * rho 72179) = ((1 : F) * rho 72181)

def relationRow422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71774) * ((-1 : F) + (-1 : F) * rho 72013 + (-1 : F) * rho 72026 + (-1 : F) * rho 72039 + (-1 : F) * rho 72052 + (-1 : F) * rho 72065 + (-1 : F) * rho 72078 + (-1 : F) * rho 72091 + (-1 : F) * rho 72104 + (-1 : F) * rho 72117 + (-1 : F) * rho 72130 + (-1 : F) * rho 72143 + (-1 : F) * rho 72156 + (-1 : F) * rho 72169 + (1 : F) * rho 72180) = ((1 : F) * rho 72182)

def relationRow423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72173) * ((1 : F) * rho 72174) = ((1 : F) * rho 72183)

def relationRow424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72173) * ((1 : F) * rho 72173) = ((1 : F) * rho 72184)

def relationRow425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72174) * ((1 : F) * rho 72174) = ((1 : F) * rho 72185)

def relationRow426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72186) * ((-1 : F) * rho 72184 + (1 : F) * rho 72185) = ((2 : F) * rho 72183)

def relationRow427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72187) * ((2 : F) + (1 : F) * rho 72184 + (-1 : F) * rho 72185) = ((1 : F) * rho 72184 + (1 : F) * rho 72185)

def relationRow428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72186 + (1 : F) * rho 72187) * ((1 : F) + (1 : F) * rho 72012 + (1 : F) * rho 72013 + (1 : F) * rho 72025 + (1 : F) * rho 72026 + (1 : F) * rho 72038 + (1 : F) * rho 72039 + (1 : F) * rho 72051 + (1 : F) * rho 72052 + (1 : F) * rho 72064 + (1 : F) * rho 72065 + (1 : F) * rho 72077 + (1 : F) * rho 72078 + (1 : F) * rho 72090 + (1 : F) * rho 72091 + (1 : F) * rho 72103 + (1 : F) * rho 72104 + (1 : F) * rho 72116 + (1 : F) * rho 72117 + (1 : F) * rho 72129 + (1 : F) * rho 72130 + (1 : F) * rho 72142 + (1 : F) * rho 72143 + (1 : F) * rho 72155 + (1 : F) * rho 72156 + (1 : F) * rho 72168 + (1 : F) * rho 72169 + (1 : F) * rho 72181 + (1 : F) * rho 72182) = ((1 : F) * rho 72188)

def relationRow429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72187) * ((1 : F) * rho 72012 + (1 : F) * rho 72025 + (1 : F) * rho 72038 + (1 : F) * rho 72051 + (1 : F) * rho 72064 + (1 : F) * rho 72077 + (1 : F) * rho 72090 + (1 : F) * rho 72103 + (1 : F) * rho 72116 + (1 : F) * rho 72129 + (1 : F) * rho 72142 + (1 : F) * rho 72155 + (1 : F) * rho 72168 + (1 : F) * rho 72181) = ((1 : F) * rho 72189)

def relationRow430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72186) * ((1 : F) + (1 : F) * rho 72013 + (1 : F) * rho 72026 + (1 : F) * rho 72039 + (1 : F) * rho 72052 + (1 : F) * rho 72065 + (1 : F) * rho 72078 + (1 : F) * rho 72091 + (1 : F) * rho 72104 + (1 : F) * rho 72117 + (1 : F) * rho 72130 + (1 : F) * rho 72143 + (1 : F) * rho 72156 + (1 : F) * rho 72169 + (1 : F) * rho 72182) = ((1 : F) * rho 72190)

def relationRow431 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72189) * ((1 : F) * rho 72190) = ((1 : F) * rho 72191)

def relationRow432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72192) * ((1 : F) + (1 : F) * rho 72191) = ((1 : F) * rho 72189 + (1 : F) * rho 72190)

def relationRow433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72193) * ((1 : F) + (-1 : F) * rho 72191) = ((1 : F) * rho 72188 + (-1 : F) * rho 72189 + (-1 : F) * rho 72190)

def relationRow434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71775) * ((-1 : F) * rho 72012 + (-1 : F) * rho 72025 + (-1 : F) * rho 72038 + (-1 : F) * rho 72051 + (-1 : F) * rho 72064 + (-1 : F) * rho 72077 + (-1 : F) * rho 72090 + (-1 : F) * rho 72103 + (-1 : F) * rho 72116 + (-1 : F) * rho 72129 + (-1 : F) * rho 72142 + (-1 : F) * rho 72155 + (-1 : F) * rho 72168 + (-1 : F) * rho 72181 + (1 : F) * rho 72192) = ((1 : F) * rho 72194)

def relationRow435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71775) * ((-1 : F) + (-1 : F) * rho 72013 + (-1 : F) * rho 72026 + (-1 : F) * rho 72039 + (-1 : F) * rho 72052 + (-1 : F) * rho 72065 + (-1 : F) * rho 72078 + (-1 : F) * rho 72091 + (-1 : F) * rho 72104 + (-1 : F) * rho 72117 + (-1 : F) * rho 72130 + (-1 : F) * rho 72143 + (-1 : F) * rho 72156 + (-1 : F) * rho 72169 + (-1 : F) * rho 72182 + (1 : F) * rho 72193) = ((1 : F) * rho 72195)

def relationRow436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72186) * ((1 : F) * rho 72187) = ((1 : F) * rho 72196)

def relationRow437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72186) * ((1 : F) * rho 72186) = ((1 : F) * rho 72197)

def relationRow438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72187) * ((1 : F) * rho 72187) = ((1 : F) * rho 72198)

def relationRow439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72199) * ((-1 : F) * rho 72197 + (1 : F) * rho 72198) = ((2 : F) * rho 72196)

def relationRow440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72200) * ((2 : F) + (1 : F) * rho 72197 + (-1 : F) * rho 72198) = ((1 : F) * rho 72197 + (1 : F) * rho 72198)

def relationRow441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72199 + (1 : F) * rho 72200) * ((1 : F) + (1 : F) * rho 72012 + (1 : F) * rho 72013 + (1 : F) * rho 72025 + (1 : F) * rho 72026 + (1 : F) * rho 72038 + (1 : F) * rho 72039 + (1 : F) * rho 72051 + (1 : F) * rho 72052 + (1 : F) * rho 72064 + (1 : F) * rho 72065 + (1 : F) * rho 72077 + (1 : F) * rho 72078 + (1 : F) * rho 72090 + (1 : F) * rho 72091 + (1 : F) * rho 72103 + (1 : F) * rho 72104 + (1 : F) * rho 72116 + (1 : F) * rho 72117 + (1 : F) * rho 72129 + (1 : F) * rho 72130 + (1 : F) * rho 72142 + (1 : F) * rho 72143 + (1 : F) * rho 72155 + (1 : F) * rho 72156 + (1 : F) * rho 72168 + (1 : F) * rho 72169 + (1 : F) * rho 72181 + (1 : F) * rho 72182 + (1 : F) * rho 72194 + (1 : F) * rho 72195) = ((1 : F) * rho 72201)

def relationRow442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72200) * ((1 : F) * rho 72012 + (1 : F) * rho 72025 + (1 : F) * rho 72038 + (1 : F) * rho 72051 + (1 : F) * rho 72064 + (1 : F) * rho 72077 + (1 : F) * rho 72090 + (1 : F) * rho 72103 + (1 : F) * rho 72116 + (1 : F) * rho 72129 + (1 : F) * rho 72142 + (1 : F) * rho 72155 + (1 : F) * rho 72168 + (1 : F) * rho 72181 + (1 : F) * rho 72194) = ((1 : F) * rho 72202)

def relationRow443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72199) * ((1 : F) + (1 : F) * rho 72013 + (1 : F) * rho 72026 + (1 : F) * rho 72039 + (1 : F) * rho 72052 + (1 : F) * rho 72065 + (1 : F) * rho 72078 + (1 : F) * rho 72091 + (1 : F) * rho 72104 + (1 : F) * rho 72117 + (1 : F) * rho 72130 + (1 : F) * rho 72143 + (1 : F) * rho 72156 + (1 : F) * rho 72169 + (1 : F) * rho 72182 + (1 : F) * rho 72195) = ((1 : F) * rho 72203)

def relationRow444 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72202) * ((1 : F) * rho 72203) = ((1 : F) * rho 72204)

def relationRow445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72205) * ((1 : F) + (1 : F) * rho 72204) = ((1 : F) * rho 72202 + (1 : F) * rho 72203)

def relationRow446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72206) * ((1 : F) + (-1 : F) * rho 72204) = ((1 : F) * rho 72201 + (-1 : F) * rho 72202 + (-1 : F) * rho 72203)

def relationRow447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71776) * ((-1 : F) * rho 72012 + (-1 : F) * rho 72025 + (-1 : F) * rho 72038 + (-1 : F) * rho 72051 + (-1 : F) * rho 72064 + (-1 : F) * rho 72077 + (-1 : F) * rho 72090 + (-1 : F) * rho 72103 + (-1 : F) * rho 72116 + (-1 : F) * rho 72129 + (-1 : F) * rho 72142 + (-1 : F) * rho 72155 + (-1 : F) * rho 72168 + (-1 : F) * rho 72181 + (-1 : F) * rho 72194 + (1 : F) * rho 72205) = ((1 : F) * rho 72207)

def relationRow448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71776) * ((-1 : F) + (-1 : F) * rho 72013 + (-1 : F) * rho 72026 + (-1 : F) * rho 72039 + (-1 : F) * rho 72052 + (-1 : F) * rho 72065 + (-1 : F) * rho 72078 + (-1 : F) * rho 72091 + (-1 : F) * rho 72104 + (-1 : F) * rho 72117 + (-1 : F) * rho 72130 + (-1 : F) * rho 72143 + (-1 : F) * rho 72156 + (-1 : F) * rho 72169 + (-1 : F) * rho 72182 + (-1 : F) * rho 72195 + (1 : F) * rho 72206) = ((1 : F) * rho 72208)

def relationRow449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72199) * ((1 : F) * rho 72200) = ((1 : F) * rho 72209)

def relationRow450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72199) * ((1 : F) * rho 72199) = ((1 : F) * rho 72210)

def relationRow451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72200) * ((1 : F) * rho 72200) = ((1 : F) * rho 72211)

def relationRow452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72212) * ((-1 : F) * rho 72210 + (1 : F) * rho 72211) = ((2 : F) * rho 72209)

def relationRow453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72213) * ((2 : F) + (1 : F) * rho 72210 + (-1 : F) * rho 72211) = ((1 : F) * rho 72210 + (1 : F) * rho 72211)

def relationLc1 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 16⟩, ⟨(1 : F), 72013, 13, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72212 + (1 : F) * rho 72213) * (relationLc1 rho) = ((1 : F) * rho 72214)

def relationLc2 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72213) * (relationLc2 rho) = ((1 : F) * rho 72215)

def relationLc3 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72212) * (relationLc3 rho) = ((1 : F) * rho 72216)

def relationRow457 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72215) * ((1 : F) * rho 72216) = ((1 : F) * rho 72217)

def relationRow458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72218) * ((1 : F) + (1 : F) * rho 72217) = ((1 : F) * rho 72215 + (1 : F) * rho 72216)

def relationRow459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72219) * ((1 : F) + (-1 : F) * rho 72217) = ((1 : F) * rho 72214 + (-1 : F) * rho 72215 + (-1 : F) * rho 72216)

def relationLc4 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 16⟩], residual := [((1 : F), 72218)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71777) * (relationLc4 rho) = ((1 : F) * rho 72220)

def relationLc5 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 16⟩], residual := [((1 : F), 72219)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71777) * (relationLc5 rho) = ((1 : F) * rho 72221)

def relationRow462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72212) * ((1 : F) * rho 72213) = ((1 : F) * rho 72222)

def relationRow463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72212) * ((1 : F) * rho 72212) = ((1 : F) * rho 72223)

def relationRow464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72213) * ((1 : F) * rho 72213) = ((1 : F) * rho 72224)

def relationRow465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72225) * ((-1 : F) * rho 72223 + (1 : F) * rho 72224) = ((2 : F) * rho 72222)

def relationRow466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72226) * ((2 : F) + (1 : F) * rho 72223 + (-1 : F) * rho 72224) = ((1 : F) * rho 72223 + (1 : F) * rho 72224)

def relationLc6 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 17⟩, ⟨(1 : F), 72013, 13, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72225 + (1 : F) * rho 72226) * (relationLc6 rho) = ((1 : F) * rho 72227)

def relationLc7 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72226) * (relationLc7 rho) = ((1 : F) * rho 72228)

def relationLc8 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72225) * (relationLc8 rho) = ((1 : F) * rho 72229)

def relationRow470 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72228) * ((1 : F) * rho 72229) = ((1 : F) * rho 72230)

def relationRow471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72231) * ((1 : F) + (1 : F) * rho 72230) = ((1 : F) * rho 72228 + (1 : F) * rho 72229)

def relationRow472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72232) * ((1 : F) + (-1 : F) * rho 72230) = ((1 : F) * rho 72227 + (-1 : F) * rho 72228 + (-1 : F) * rho 72229)

def relationLc9 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 17⟩], residual := [((1 : F), 72231)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71778) * (relationLc9 rho) = ((1 : F) * rho 72233)

def relationLc10 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 17⟩], residual := [((1 : F), 72232)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71778) * (relationLc10 rho) = ((1 : F) * rho 72234)

def relationRow475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72225) * ((1 : F) * rho 72226) = ((1 : F) * rho 72235)

def relationRow476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72225) * ((1 : F) * rho 72225) = ((1 : F) * rho 72236)

def relationRow477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72226) * ((1 : F) * rho 72226) = ((1 : F) * rho 72237)

def relationRow478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72238) * ((-1 : F) * rho 72236 + (1 : F) * rho 72237) = ((2 : F) * rho 72235)

def relationRow479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72239) * ((2 : F) + (1 : F) * rho 72236 + (-1 : F) * rho 72237) = ((1 : F) * rho 72236 + (1 : F) * rho 72237)

def relationLc11 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 18⟩, ⟨(1 : F), 72013, 13, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72238 + (1 : F) * rho 72239) * (relationLc11 rho) = ((1 : F) * rho 72240)

def relationLc12 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72239) * (relationLc12 rho) = ((1 : F) * rho 72241)

def relationLc13 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72238) * (relationLc13 rho) = ((1 : F) * rho 72242)

def relationRow483 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72241) * ((1 : F) * rho 72242) = ((1 : F) * rho 72243)

def relationRow484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72244) * ((1 : F) + (1 : F) * rho 72243) = ((1 : F) * rho 72241 + (1 : F) * rho 72242)

def relationRow485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72245) * ((1 : F) + (-1 : F) * rho 72243) = ((1 : F) * rho 72240 + (-1 : F) * rho 72241 + (-1 : F) * rho 72242)

def relationLc14 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 18⟩], residual := [((1 : F), 72244)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71779) * (relationLc14 rho) = ((1 : F) * rho 72246)

def relationLc15 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 18⟩], residual := [((1 : F), 72245)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71779) * (relationLc15 rho) = ((1 : F) * rho 72247)

def relationRow488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72238) * ((1 : F) * rho 72239) = ((1 : F) * rho 72248)

def relationRow489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72238) * ((1 : F) * rho 72238) = ((1 : F) * rho 72249)

def relationRow490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72239) * ((1 : F) * rho 72239) = ((1 : F) * rho 72250)

def relationRow491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72251) * ((-1 : F) * rho 72249 + (1 : F) * rho 72250) = ((2 : F) * rho 72248)

def relationRow492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72252) * ((2 : F) + (1 : F) * rho 72249 + (-1 : F) * rho 72250) = ((1 : F) * rho 72249 + (1 : F) * rho 72250)

def relationLc16 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 19⟩, ⟨(1 : F), 72013, 13, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72251 + (1 : F) * rho 72252) * (relationLc16 rho) = ((1 : F) * rho 72253)

def relationLc17 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72252) * (relationLc17 rho) = ((1 : F) * rho 72254)

def relationLc18 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72251) * (relationLc18 rho) = ((1 : F) * rho 72255)

def relationRow496 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72254) * ((1 : F) * rho 72255) = ((1 : F) * rho 72256)

def relationRow497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72257) * ((1 : F) + (1 : F) * rho 72256) = ((1 : F) * rho 72254 + (1 : F) * rho 72255)

def relationRow498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72258) * ((1 : F) + (-1 : F) * rho 72256) = ((1 : F) * rho 72253 + (-1 : F) * rho 72254 + (-1 : F) * rho 72255)

def relationLc19 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 19⟩], residual := [((1 : F), 72257)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71780) * (relationLc19 rho) = ((1 : F) * rho 72259)

def relationLc20 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 19⟩], residual := [((1 : F), 72258)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71780) * (relationLc20 rho) = ((1 : F) * rho 72260)

def relationRow501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72251) * ((1 : F) * rho 72252) = ((1 : F) * rho 72261)

def relationRow502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72251) * ((1 : F) * rho 72251) = ((1 : F) * rho 72262)

def relationRow503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72252) * ((1 : F) * rho 72252) = ((1 : F) * rho 72263)

def relationRow504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72264) * ((-1 : F) * rho 72262 + (1 : F) * rho 72263) = ((2 : F) * rho 72261)

def relationRow505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72265) * ((2 : F) + (1 : F) * rho 72262 + (-1 : F) * rho 72263) = ((1 : F) * rho 72262 + (1 : F) * rho 72263)

def relationLc21 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 20⟩, ⟨(1 : F), 72013, 13, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72264 + (1 : F) * rho 72265) * (relationLc21 rho) = ((1 : F) * rho 72266)

def relationLc22 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72265) * (relationLc22 rho) = ((1 : F) * rho 72267)

def relationLc23 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72264) * (relationLc23 rho) = ((1 : F) * rho 72268)

def relationRow509 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72267) * ((1 : F) * rho 72268) = ((1 : F) * rho 72269)

def relationRow510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72270) * ((1 : F) + (1 : F) * rho 72269) = ((1 : F) * rho 72267 + (1 : F) * rho 72268)

def relationRow511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72271) * ((1 : F) + (-1 : F) * rho 72269) = ((1 : F) * rho 72266 + (-1 : F) * rho 72267 + (-1 : F) * rho 72268)

def relationLc24 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 20⟩], residual := [((1 : F), 72270)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71781) * (relationLc24 rho) = ((1 : F) * rho 72272)

def relationLc25 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 20⟩], residual := [((1 : F), 72271)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71781) * (relationLc25 rho) = ((1 : F) * rho 72273)

def relationRow514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72264) * ((1 : F) * rho 72265) = ((1 : F) * rho 72274)

def relationRow515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72264) * ((1 : F) * rho 72264) = ((1 : F) * rho 72275)

def relationRow516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72265) * ((1 : F) * rho 72265) = ((1 : F) * rho 72276)

def relationRow517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72277) * ((-1 : F) * rho 72275 + (1 : F) * rho 72276) = ((2 : F) * rho 72274)

def relationRow518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72278) * ((2 : F) + (1 : F) * rho 72275 + (-1 : F) * rho 72276) = ((1 : F) * rho 72275 + (1 : F) * rho 72276)

def relationLc26 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 21⟩, ⟨(1 : F), 72013, 13, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72277 + (1 : F) * rho 72278) * (relationLc26 rho) = ((1 : F) * rho 72279)

def relationLc27 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72278) * (relationLc27 rho) = ((1 : F) * rho 72280)

def relationLc28 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72277) * (relationLc28 rho) = ((1 : F) * rho 72281)

def relationRow522 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72280) * ((1 : F) * rho 72281) = ((1 : F) * rho 72282)

def relationRow523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72283) * ((1 : F) + (1 : F) * rho 72282) = ((1 : F) * rho 72280 + (1 : F) * rho 72281)

def relationRow524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72284) * ((1 : F) + (-1 : F) * rho 72282) = ((1 : F) * rho 72279 + (-1 : F) * rho 72280 + (-1 : F) * rho 72281)

def relationLc29 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 21⟩], residual := [((1 : F), 72283)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71782) * (relationLc29 rho) = ((1 : F) * rho 72285)

def relationLc30 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 21⟩], residual := [((1 : F), 72284)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71782) * (relationLc30 rho) = ((1 : F) * rho 72286)

def relationRow527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72277) * ((1 : F) * rho 72278) = ((1 : F) * rho 72287)

def relationRow528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72277) * ((1 : F) * rho 72277) = ((1 : F) * rho 72288)

def relationRow529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72278) * ((1 : F) * rho 72278) = ((1 : F) * rho 72289)

def relationRow530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72290) * ((-1 : F) * rho 72288 + (1 : F) * rho 72289) = ((2 : F) * rho 72287)

def relationRow531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72291) * ((2 : F) + (1 : F) * rho 72288 + (-1 : F) * rho 72289) = ((1 : F) * rho 72288 + (1 : F) * rho 72289)

def relationLc31 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 22⟩, ⟨(1 : F), 72013, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72290 + (1 : F) * rho 72291) * (relationLc31 rho) = ((1 : F) * rho 72292)

def relationLc32 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72291) * (relationLc32 rho) = ((1 : F) * rho 72293)

def relationLc33 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72290) * (relationLc33 rho) = ((1 : F) * rho 72294)

def relationRow535 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72293) * ((1 : F) * rho 72294) = ((1 : F) * rho 72295)

def relationRow536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72296) * ((1 : F) + (1 : F) * rho 72295) = ((1 : F) * rho 72293 + (1 : F) * rho 72294)

def relationRow537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72297) * ((1 : F) + (-1 : F) * rho 72295) = ((1 : F) * rho 72292 + (-1 : F) * rho 72293 + (-1 : F) * rho 72294)

def relationLc34 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 22⟩], residual := [((1 : F), 72296)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71783) * (relationLc34 rho) = ((1 : F) * rho 72298)

def relationLc35 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 22⟩], residual := [((1 : F), 72297)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71783) * (relationLc35 rho) = ((1 : F) * rho 72299)

def relationRow540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72290) * ((1 : F) * rho 72291) = ((1 : F) * rho 72300)

def relationRow541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72290) * ((1 : F) * rho 72290) = ((1 : F) * rho 72301)

def relationRow542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72291) * ((1 : F) * rho 72291) = ((1 : F) * rho 72302)

def relationRow543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72303) * ((-1 : F) * rho 72301 + (1 : F) * rho 72302) = ((2 : F) * rho 72300)

def relationRow544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72304) * ((2 : F) + (1 : F) * rho 72301 + (-1 : F) * rho 72302) = ((1 : F) * rho 72301 + (1 : F) * rho 72302)

def relationLc36 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 23⟩, ⟨(1 : F), 72013, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72303 + (1 : F) * rho 72304) * (relationLc36 rho) = ((1 : F) * rho 72305)

def relationLc37 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72304) * (relationLc37 rho) = ((1 : F) * rho 72306)

def relationLc38 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72303) * (relationLc38 rho) = ((1 : F) * rho 72307)

def relationRow548 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72306) * ((1 : F) * rho 72307) = ((1 : F) * rho 72308)

def relationRow549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72309) * ((1 : F) + (1 : F) * rho 72308) = ((1 : F) * rho 72306 + (1 : F) * rho 72307)

def relationRow550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72310) * ((1 : F) + (-1 : F) * rho 72308) = ((1 : F) * rho 72305 + (-1 : F) * rho 72306 + (-1 : F) * rho 72307)

def relationLc39 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 23⟩], residual := [((1 : F), 72309)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71784) * (relationLc39 rho) = ((1 : F) * rho 72311)

def relationLc40 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 23⟩], residual := [((1 : F), 72310)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71784) * (relationLc40 rho) = ((1 : F) * rho 72312)

def relationRow553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72303) * ((1 : F) * rho 72304) = ((1 : F) * rho 72313)

def relationRow554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72303) * ((1 : F) * rho 72303) = ((1 : F) * rho 72314)

def relationRow555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72304) * ((1 : F) * rho 72304) = ((1 : F) * rho 72315)

def relationRow556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72316) * ((-1 : F) * rho 72314 + (1 : F) * rho 72315) = ((2 : F) * rho 72313)

def relationRow557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72317) * ((2 : F) + (1 : F) * rho 72314 + (-1 : F) * rho 72315) = ((1 : F) * rho 72314 + (1 : F) * rho 72315)

def relationLc41 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 24⟩, ⟨(1 : F), 72013, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72316 + (1 : F) * rho 72317) * (relationLc41 rho) = ((1 : F) * rho 72318)

def relationLc42 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72317) * (relationLc42 rho) = ((1 : F) * rho 72319)

def relationLc43 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72316) * (relationLc43 rho) = ((1 : F) * rho 72320)

def relationRow561 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72319) * ((1 : F) * rho 72320) = ((1 : F) * rho 72321)

def relationRow562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72322) * ((1 : F) + (1 : F) * rho 72321) = ((1 : F) * rho 72319 + (1 : F) * rho 72320)

def relationRow563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72323) * ((1 : F) + (-1 : F) * rho 72321) = ((1 : F) * rho 72318 + (-1 : F) * rho 72319 + (-1 : F) * rho 72320)

def relationLc44 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 24⟩], residual := [((1 : F), 72322)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71785) * (relationLc44 rho) = ((1 : F) * rho 72324)

def relationLc45 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 24⟩], residual := [((1 : F), 72323)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71785) * (relationLc45 rho) = ((1 : F) * rho 72325)

def relationRow566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72316) * ((1 : F) * rho 72317) = ((1 : F) * rho 72326)

def relationRow567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72316) * ((1 : F) * rho 72316) = ((1 : F) * rho 72327)

def relationRow568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72317) * ((1 : F) * rho 72317) = ((1 : F) * rho 72328)

def relationRow569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72329) * ((-1 : F) * rho 72327 + (1 : F) * rho 72328) = ((2 : F) * rho 72326)

def relationRow570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72330) * ((2 : F) + (1 : F) * rho 72327 + (-1 : F) * rho 72328) = ((1 : F) * rho 72327 + (1 : F) * rho 72328)

def relationLc46 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 25⟩, ⟨(1 : F), 72013, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72329 + (1 : F) * rho 72330) * (relationLc46 rho) = ((1 : F) * rho 72331)

def relationLc47 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72330) * (relationLc47 rho) = ((1 : F) * rho 72332)

def relationLc48 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72329) * (relationLc48 rho) = ((1 : F) * rho 72333)

def relationRow574 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72332) * ((1 : F) * rho 72333) = ((1 : F) * rho 72334)

def relationRow575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72335) * ((1 : F) + (1 : F) * rho 72334) = ((1 : F) * rho 72332 + (1 : F) * rho 72333)

def relationRow576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72336) * ((1 : F) + (-1 : F) * rho 72334) = ((1 : F) * rho 72331 + (-1 : F) * rho 72332 + (-1 : F) * rho 72333)

def relationLc49 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 25⟩], residual := [((1 : F), 72335)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71786) * (relationLc49 rho) = ((1 : F) * rho 72337)

def relationLc50 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 25⟩], residual := [((1 : F), 72336)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71786) * (relationLc50 rho) = ((1 : F) * rho 72338)

def relationRow579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72329) * ((1 : F) * rho 72330) = ((1 : F) * rho 72339)

def relationRow580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72329) * ((1 : F) * rho 72329) = ((1 : F) * rho 72340)

def relationRow581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72330) * ((1 : F) * rho 72330) = ((1 : F) * rho 72341)

def relationRow582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72342) * ((-1 : F) * rho 72340 + (1 : F) * rho 72341) = ((2 : F) * rho 72339)

def relationRow583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72343) * ((2 : F) + (1 : F) * rho 72340 + (-1 : F) * rho 72341) = ((1 : F) * rho 72340 + (1 : F) * rho 72341)

def relationLc51 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 26⟩, ⟨(1 : F), 72013, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72342 + (1 : F) * rho 72343) * (relationLc51 rho) = ((1 : F) * rho 72344)

def relationLc52 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72343) * (relationLc52 rho) = ((1 : F) * rho 72345)

def relationLc53 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72342) * (relationLc53 rho) = ((1 : F) * rho 72346)

def relationRow587 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72345) * ((1 : F) * rho 72346) = ((1 : F) * rho 72347)

def relationRow588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72348) * ((1 : F) + (1 : F) * rho 72347) = ((1 : F) * rho 72345 + (1 : F) * rho 72346)

def relationRow589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72349) * ((1 : F) + (-1 : F) * rho 72347) = ((1 : F) * rho 72344 + (-1 : F) * rho 72345 + (-1 : F) * rho 72346)

def relationLc54 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 26⟩], residual := [((1 : F), 72348)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71787) * (relationLc54 rho) = ((1 : F) * rho 72350)

def relationLc55 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 26⟩], residual := [((1 : F), 72349)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71787) * (relationLc55 rho) = ((1 : F) * rho 72351)

def relationRow592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72342) * ((1 : F) * rho 72343) = ((1 : F) * rho 72352)

def relationRow593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72342) * ((1 : F) * rho 72342) = ((1 : F) * rho 72353)

def relationRow594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72343) * ((1 : F) * rho 72343) = ((1 : F) * rho 72354)

def relationRow595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72355) * ((-1 : F) * rho 72353 + (1 : F) * rho 72354) = ((2 : F) * rho 72352)

def relationRow596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72356) * ((2 : F) + (1 : F) * rho 72353 + (-1 : F) * rho 72354) = ((1 : F) * rho 72353 + (1 : F) * rho 72354)

def relationLc56 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 27⟩, ⟨(1 : F), 72013, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72355 + (1 : F) * rho 72356) * (relationLc56 rho) = ((1 : F) * rho 72357)

def relationLc57 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72356) * (relationLc57 rho) = ((1 : F) * rho 72358)

def relationLc58 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72355) * (relationLc58 rho) = ((1 : F) * rho 72359)

def relationRow600 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72358) * ((1 : F) * rho 72359) = ((1 : F) * rho 72360)

def relationRow601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72361) * ((1 : F) + (1 : F) * rho 72360) = ((1 : F) * rho 72358 + (1 : F) * rho 72359)

def relationRow602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72362) * ((1 : F) + (-1 : F) * rho 72360) = ((1 : F) * rho 72357 + (-1 : F) * rho 72358 + (-1 : F) * rho 72359)

def relationLc59 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 27⟩], residual := [((1 : F), 72361)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71788) * (relationLc59 rho) = ((1 : F) * rho 72363)

def relationLc60 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 27⟩], residual := [((1 : F), 72362)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71788) * (relationLc60 rho) = ((1 : F) * rho 72364)

def relationRow605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72355) * ((1 : F) * rho 72356) = ((1 : F) * rho 72365)

def relationRow606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72355) * ((1 : F) * rho 72355) = ((1 : F) * rho 72366)

def relationRow607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72356) * ((1 : F) * rho 72356) = ((1 : F) * rho 72367)

def relationRow608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72368) * ((-1 : F) * rho 72366 + (1 : F) * rho 72367) = ((2 : F) * rho 72365)

def relationRow609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72369) * ((2 : F) + (1 : F) * rho 72366 + (-1 : F) * rho 72367) = ((1 : F) * rho 72366 + (1 : F) * rho 72367)

def relationLc61 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 28⟩, ⟨(1 : F), 72013, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72368 + (1 : F) * rho 72369) * (relationLc61 rho) = ((1 : F) * rho 72370)

def relationLc62 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72369) * (relationLc62 rho) = ((1 : F) * rho 72371)

def relationLc63 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72368) * (relationLc63 rho) = ((1 : F) * rho 72372)

def relationRow613 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72371) * ((1 : F) * rho 72372) = ((1 : F) * rho 72373)

def relationRow614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72374) * ((1 : F) + (1 : F) * rho 72373) = ((1 : F) * rho 72371 + (1 : F) * rho 72372)

def relationRow615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72375) * ((1 : F) + (-1 : F) * rho 72373) = ((1 : F) * rho 72370 + (-1 : F) * rho 72371 + (-1 : F) * rho 72372)

def relationLc64 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 28⟩], residual := [((1 : F), 72374)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71789) * (relationLc64 rho) = ((1 : F) * rho 72376)

def relationLc65 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 28⟩], residual := [((1 : F), 72375)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71789) * (relationLc65 rho) = ((1 : F) * rho 72377)

def relationRow618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72368) * ((1 : F) * rho 72369) = ((1 : F) * rho 72378)

def relationRow619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72368) * ((1 : F) * rho 72368) = ((1 : F) * rho 72379)

def relationRow620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72369) * ((1 : F) * rho 72369) = ((1 : F) * rho 72380)

def relationRow621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72381) * ((-1 : F) * rho 72379 + (1 : F) * rho 72380) = ((2 : F) * rho 72378)

def relationRow622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72382) * ((2 : F) + (1 : F) * rho 72379 + (-1 : F) * rho 72380) = ((1 : F) * rho 72379 + (1 : F) * rho 72380)

def relationLc66 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 29⟩, ⟨(1 : F), 72013, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72381 + (1 : F) * rho 72382) * (relationLc66 rho) = ((1 : F) * rho 72383)

def relationLc67 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72382) * (relationLc67 rho) = ((1 : F) * rho 72384)

def relationLc68 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72381) * (relationLc68 rho) = ((1 : F) * rho 72385)

def relationRow626 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72384) * ((1 : F) * rho 72385) = ((1 : F) * rho 72386)

def relationRow627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72387) * ((1 : F) + (1 : F) * rho 72386) = ((1 : F) * rho 72384 + (1 : F) * rho 72385)

def relationRow628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72388) * ((1 : F) + (-1 : F) * rho 72386) = ((1 : F) * rho 72383 + (-1 : F) * rho 72384 + (-1 : F) * rho 72385)

def relationLc69 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 29⟩], residual := [((1 : F), 72387)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71790) * (relationLc69 rho) = ((1 : F) * rho 72389)

def relationLc70 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 29⟩], residual := [((1 : F), 72388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71790) * (relationLc70 rho) = ((1 : F) * rho 72390)

def relationRow631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72381) * ((1 : F) * rho 72382) = ((1 : F) * rho 72391)

def relationRow632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72381) * ((1 : F) * rho 72381) = ((1 : F) * rho 72392)

def relationRow633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72382) * ((1 : F) * rho 72382) = ((1 : F) * rho 72393)

def relationRow634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72394) * ((-1 : F) * rho 72392 + (1 : F) * rho 72393) = ((2 : F) * rho 72391)

def relationRow635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72395) * ((2 : F) + (1 : F) * rho 72392 + (-1 : F) * rho 72393) = ((1 : F) * rho 72392 + (1 : F) * rho 72393)

def relationLc71 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 30⟩, ⟨(1 : F), 72013, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72394 + (1 : F) * rho 72395) * (relationLc71 rho) = ((1 : F) * rho 72396)

def relationLc72 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72395) * (relationLc72 rho) = ((1 : F) * rho 72397)

def relationLc73 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72394) * (relationLc73 rho) = ((1 : F) * rho 72398)

def relationRow639 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72397) * ((1 : F) * rho 72398) = ((1 : F) * rho 72399)

def relationRow640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72400) * ((1 : F) + (1 : F) * rho 72399) = ((1 : F) * rho 72397 + (1 : F) * rho 72398)

def relationRow641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72401) * ((1 : F) + (-1 : F) * rho 72399) = ((1 : F) * rho 72396 + (-1 : F) * rho 72397 + (-1 : F) * rho 72398)

def relationLc74 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 30⟩], residual := [((1 : F), 72400)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71791) * (relationLc74 rho) = ((1 : F) * rho 72402)

def relationLc75 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 30⟩], residual := [((1 : F), 72401)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71791) * (relationLc75 rho) = ((1 : F) * rho 72403)

def relationRow644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72394) * ((1 : F) * rho 72395) = ((1 : F) * rho 72404)

def relationRow645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72394) * ((1 : F) * rho 72394) = ((1 : F) * rho 72405)

def relationRow646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72395) * ((1 : F) * rho 72395) = ((1 : F) * rho 72406)

def relationRow647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72407) * ((-1 : F) * rho 72405 + (1 : F) * rho 72406) = ((2 : F) * rho 72404)

def relationRow648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72408) * ((2 : F) + (1 : F) * rho 72405 + (-1 : F) * rho 72406) = ((1 : F) * rho 72405 + (1 : F) * rho 72406)

def relationLc76 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 31⟩, ⟨(1 : F), 72013, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72407 + (1 : F) * rho 72408) * (relationLc76 rho) = ((1 : F) * rho 72409)

def relationLc77 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72408) * (relationLc77 rho) = ((1 : F) * rho 72410)

def relationLc78 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72407) * (relationLc78 rho) = ((1 : F) * rho 72411)

def relationRow652 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72410) * ((1 : F) * rho 72411) = ((1 : F) * rho 72412)

def relationRow653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72413) * ((1 : F) + (1 : F) * rho 72412) = ((1 : F) * rho 72410 + (1 : F) * rho 72411)

def relationRow654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72414) * ((1 : F) + (-1 : F) * rho 72412) = ((1 : F) * rho 72409 + (-1 : F) * rho 72410 + (-1 : F) * rho 72411)

def relationLc79 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 31⟩], residual := [((1 : F), 72413)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71792) * (relationLc79 rho) = ((1 : F) * rho 72415)

def relationLc80 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 31⟩], residual := [((1 : F), 72414)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71792) * (relationLc80 rho) = ((1 : F) * rho 72416)

def relationRow657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72407) * ((1 : F) * rho 72408) = ((1 : F) * rho 72417)

def relationRow658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72407) * ((1 : F) * rho 72407) = ((1 : F) * rho 72418)

def relationRow659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72408) * ((1 : F) * rho 72408) = ((1 : F) * rho 72419)

def relationRow660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72420) * ((-1 : F) * rho 72418 + (1 : F) * rho 72419) = ((2 : F) * rho 72417)

def relationRow661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72421) * ((2 : F) + (1 : F) * rho 72418 + (-1 : F) * rho 72419) = ((1 : F) * rho 72418 + (1 : F) * rho 72419)

def relationLc81 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 32⟩, ⟨(1 : F), 72013, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72420 + (1 : F) * rho 72421) * (relationLc81 rho) = ((1 : F) * rho 72422)

def relationLc82 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72421) * (relationLc82 rho) = ((1 : F) * rho 72423)

def relationLc83 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72420) * (relationLc83 rho) = ((1 : F) * rho 72424)

def relationRow665 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72423) * ((1 : F) * rho 72424) = ((1 : F) * rho 72425)

def relationRow666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72426) * ((1 : F) + (1 : F) * rho 72425) = ((1 : F) * rho 72423 + (1 : F) * rho 72424)

def relationRow667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72427) * ((1 : F) + (-1 : F) * rho 72425) = ((1 : F) * rho 72422 + (-1 : F) * rho 72423 + (-1 : F) * rho 72424)

def relationLc84 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 32⟩], residual := [((1 : F), 72426)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71793) * (relationLc84 rho) = ((1 : F) * rho 72428)

def relationLc85 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 32⟩], residual := [((1 : F), 72427)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71793) * (relationLc85 rho) = ((1 : F) * rho 72429)

def relationRow670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72420) * ((1 : F) * rho 72421) = ((1 : F) * rho 72430)

def relationRow671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72420) * ((1 : F) * rho 72420) = ((1 : F) * rho 72431)

def relationRow672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72421) * ((1 : F) * rho 72421) = ((1 : F) * rho 72432)

def relationRow673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72433) * ((-1 : F) * rho 72431 + (1 : F) * rho 72432) = ((2 : F) * rho 72430)

def relationRow674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72434) * ((2 : F) + (1 : F) * rho 72431 + (-1 : F) * rho 72432) = ((1 : F) * rho 72431 + (1 : F) * rho 72432)

def relationLc86 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 33⟩, ⟨(1 : F), 72013, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72433 + (1 : F) * rho 72434) * (relationLc86 rho) = ((1 : F) * rho 72435)

def relationLc87 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72434) * (relationLc87 rho) = ((1 : F) * rho 72436)

def relationLc88 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72433) * (relationLc88 rho) = ((1 : F) * rho 72437)

def relationRow678 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72436) * ((1 : F) * rho 72437) = ((1 : F) * rho 72438)

def relationRow679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72439) * ((1 : F) + (1 : F) * rho 72438) = ((1 : F) * rho 72436 + (1 : F) * rho 72437)

def relationRow680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72440) * ((1 : F) + (-1 : F) * rho 72438) = ((1 : F) * rho 72435 + (-1 : F) * rho 72436 + (-1 : F) * rho 72437)

def relationLc89 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 33⟩], residual := [((1 : F), 72439)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71794) * (relationLc89 rho) = ((1 : F) * rho 72441)

def relationLc90 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 33⟩], residual := [((1 : F), 72440)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71794) * (relationLc90 rho) = ((1 : F) * rho 72442)

def relationRow683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72433) * ((1 : F) * rho 72434) = ((1 : F) * rho 72443)

def relationRow684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72433) * ((1 : F) * rho 72433) = ((1 : F) * rho 72444)

def relationRow685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72434) * ((1 : F) * rho 72434) = ((1 : F) * rho 72445)

def relationRow686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72446) * ((-1 : F) * rho 72444 + (1 : F) * rho 72445) = ((2 : F) * rho 72443)

def relationRow687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72447) * ((2 : F) + (1 : F) * rho 72444 + (-1 : F) * rho 72445) = ((1 : F) * rho 72444 + (1 : F) * rho 72445)

def relationLc91 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 34⟩, ⟨(1 : F), 72013, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72446 + (1 : F) * rho 72447) * (relationLc91 rho) = ((1 : F) * rho 72448)

def relationLc92 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72447) * (relationLc92 rho) = ((1 : F) * rho 72449)

def relationLc93 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72446) * (relationLc93 rho) = ((1 : F) * rho 72450)

def relationRow691 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72449) * ((1 : F) * rho 72450) = ((1 : F) * rho 72451)

def relationRow692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72452) * ((1 : F) + (1 : F) * rho 72451) = ((1 : F) * rho 72449 + (1 : F) * rho 72450)

def relationRow693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72453) * ((1 : F) + (-1 : F) * rho 72451) = ((1 : F) * rho 72448 + (-1 : F) * rho 72449 + (-1 : F) * rho 72450)

def relationLc94 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 34⟩], residual := [((1 : F), 72452)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71795) * (relationLc94 rho) = ((1 : F) * rho 72454)

def relationLc95 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 34⟩], residual := [((1 : F), 72453)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71795) * (relationLc95 rho) = ((1 : F) * rho 72455)

def relationRow696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72446) * ((1 : F) * rho 72447) = ((1 : F) * rho 72456)

def relationRow697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72446) * ((1 : F) * rho 72446) = ((1 : F) * rho 72457)

def relationRow698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72447) * ((1 : F) * rho 72447) = ((1 : F) * rho 72458)

def relationRow699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72459) * ((-1 : F) * rho 72457 + (1 : F) * rho 72458) = ((2 : F) * rho 72456)

def relationRow700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72460) * ((2 : F) + (1 : F) * rho 72457 + (-1 : F) * rho 72458) = ((1 : F) * rho 72457 + (1 : F) * rho 72458)

def relationLc96 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 35⟩, ⟨(1 : F), 72013, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72459 + (1 : F) * rho 72460) * (relationLc96 rho) = ((1 : F) * rho 72461)

def relationLc97 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72460) * (relationLc97 rho) = ((1 : F) * rho 72462)

def relationLc98 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72459) * (relationLc98 rho) = ((1 : F) * rho 72463)

def relationRow704 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72462) * ((1 : F) * rho 72463) = ((1 : F) * rho 72464)

def relationRow705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72465) * ((1 : F) + (1 : F) * rho 72464) = ((1 : F) * rho 72462 + (1 : F) * rho 72463)

def relationRow706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72466) * ((1 : F) + (-1 : F) * rho 72464) = ((1 : F) * rho 72461 + (-1 : F) * rho 72462 + (-1 : F) * rho 72463)

def relationLc99 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 35⟩], residual := [((1 : F), 72465)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71796) * (relationLc99 rho) = ((1 : F) * rho 72467)

def relationLc100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 35⟩], residual := [((1 : F), 72466)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71796) * (relationLc100 rho) = ((1 : F) * rho 72468)

def relationRow709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72459) * ((1 : F) * rho 72460) = ((1 : F) * rho 72469)

def relationRow710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72459) * ((1 : F) * rho 72459) = ((1 : F) * rho 72470)

def relationRow711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72460) * ((1 : F) * rho 72460) = ((1 : F) * rho 72471)

def relationRow712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72472) * ((-1 : F) * rho 72470 + (1 : F) * rho 72471) = ((2 : F) * rho 72469)

def relationRow713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72473) * ((2 : F) + (1 : F) * rho 72470 + (-1 : F) * rho 72471) = ((1 : F) * rho 72470 + (1 : F) * rho 72471)

def relationLc101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 36⟩, ⟨(1 : F), 72013, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72472 + (1 : F) * rho 72473) * (relationLc101 rho) = ((1 : F) * rho 72474)

def relationLc102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72473) * (relationLc102 rho) = ((1 : F) * rho 72475)

def relationLc103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72472) * (relationLc103 rho) = ((1 : F) * rho 72476)

def relationRow717 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72475) * ((1 : F) * rho 72476) = ((1 : F) * rho 72477)

def relationRow718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72478) * ((1 : F) + (1 : F) * rho 72477) = ((1 : F) * rho 72475 + (1 : F) * rho 72476)

def relationRow719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72479) * ((1 : F) + (-1 : F) * rho 72477) = ((1 : F) * rho 72474 + (-1 : F) * rho 72475 + (-1 : F) * rho 72476)

def relationLc104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 36⟩], residual := [((1 : F), 72478)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71797) * (relationLc104 rho) = ((1 : F) * rho 72480)

def relationLc105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 36⟩], residual := [((1 : F), 72479)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71797) * (relationLc105 rho) = ((1 : F) * rho 72481)

def relationRow722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72472) * ((1 : F) * rho 72473) = ((1 : F) * rho 72482)

def relationRow723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72472) * ((1 : F) * rho 72472) = ((1 : F) * rho 72483)

def relationRow724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72473) * ((1 : F) * rho 72473) = ((1 : F) * rho 72484)

def relationRow725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72485) * ((-1 : F) * rho 72483 + (1 : F) * rho 72484) = ((2 : F) * rho 72482)

def relationRow726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72486) * ((2 : F) + (1 : F) * rho 72483 + (-1 : F) * rho 72484) = ((1 : F) * rho 72483 + (1 : F) * rho 72484)

def relationLc106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 37⟩, ⟨(1 : F), 72013, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72485 + (1 : F) * rho 72486) * (relationLc106 rho) = ((1 : F) * rho 72487)

def relationLc107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72486) * (relationLc107 rho) = ((1 : F) * rho 72488)

def relationLc108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72485) * (relationLc108 rho) = ((1 : F) * rho 72489)

def relationRow730 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72488) * ((1 : F) * rho 72489) = ((1 : F) * rho 72490)

def relationRow731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72491) * ((1 : F) + (1 : F) * rho 72490) = ((1 : F) * rho 72488 + (1 : F) * rho 72489)

def relationRow732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72492) * ((1 : F) + (-1 : F) * rho 72490) = ((1 : F) * rho 72487 + (-1 : F) * rho 72488 + (-1 : F) * rho 72489)

def relationLc109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 37⟩], residual := [((1 : F), 72491)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71798) * (relationLc109 rho) = ((1 : F) * rho 72493)

def relationLc110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 37⟩], residual := [((1 : F), 72492)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71798) * (relationLc110 rho) = ((1 : F) * rho 72494)

def relationRow735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72485) * ((1 : F) * rho 72486) = ((1 : F) * rho 72495)

def relationRow736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72485) * ((1 : F) * rho 72485) = ((1 : F) * rho 72496)

def relationRow737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72486) * ((1 : F) * rho 72486) = ((1 : F) * rho 72497)

def relationRow738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72498) * ((-1 : F) * rho 72496 + (1 : F) * rho 72497) = ((2 : F) * rho 72495)

def relationRow739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72499) * ((2 : F) + (1 : F) * rho 72496 + (-1 : F) * rho 72497) = ((1 : F) * rho 72496 + (1 : F) * rho 72497)

def relationLc111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 38⟩, ⟨(1 : F), 72013, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72498 + (1 : F) * rho 72499) * (relationLc111 rho) = ((1 : F) * rho 72500)

def relationLc112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72499) * (relationLc112 rho) = ((1 : F) * rho 72501)

def relationLc113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72498) * (relationLc113 rho) = ((1 : F) * rho 72502)

def relationRow743 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72501) * ((1 : F) * rho 72502) = ((1 : F) * rho 72503)

def relationRow744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72504) * ((1 : F) + (1 : F) * rho 72503) = ((1 : F) * rho 72501 + (1 : F) * rho 72502)

def relationRow745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72505) * ((1 : F) + (-1 : F) * rho 72503) = ((1 : F) * rho 72500 + (-1 : F) * rho 72501 + (-1 : F) * rho 72502)

def relationLc114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 38⟩], residual := [((1 : F), 72504)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71799) * (relationLc114 rho) = ((1 : F) * rho 72506)

def relationLc115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 38⟩], residual := [((1 : F), 72505)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71799) * (relationLc115 rho) = ((1 : F) * rho 72507)

def relationRow748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72498) * ((1 : F) * rho 72499) = ((1 : F) * rho 72508)

def relationRow749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72498) * ((1 : F) * rho 72498) = ((1 : F) * rho 72509)

def relationRow750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72499) * ((1 : F) * rho 72499) = ((1 : F) * rho 72510)

def relationRow751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72511) * ((-1 : F) * rho 72509 + (1 : F) * rho 72510) = ((2 : F) * rho 72508)

def relationRow752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72512) * ((2 : F) + (1 : F) * rho 72509 + (-1 : F) * rho 72510) = ((1 : F) * rho 72509 + (1 : F) * rho 72510)

def relationLc116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 39⟩, ⟨(1 : F), 72013, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72511 + (1 : F) * rho 72512) * (relationLc116 rho) = ((1 : F) * rho 72513)

def relationLc117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72512) * (relationLc117 rho) = ((1 : F) * rho 72514)

def relationLc118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72511) * (relationLc118 rho) = ((1 : F) * rho 72515)

def relationRow756 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72514) * ((1 : F) * rho 72515) = ((1 : F) * rho 72516)

def relationRow757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72517) * ((1 : F) + (1 : F) * rho 72516) = ((1 : F) * rho 72514 + (1 : F) * rho 72515)

def relationRow758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72518) * ((1 : F) + (-1 : F) * rho 72516) = ((1 : F) * rho 72513 + (-1 : F) * rho 72514 + (-1 : F) * rho 72515)

def relationLc119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 39⟩], residual := [((1 : F), 72517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71800) * (relationLc119 rho) = ((1 : F) * rho 72519)

def relationLc120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 39⟩], residual := [((1 : F), 72518)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71800) * (relationLc120 rho) = ((1 : F) * rho 72520)

def relationRow761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72511) * ((1 : F) * rho 72512) = ((1 : F) * rho 72521)

def relationRow762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72511) * ((1 : F) * rho 72511) = ((1 : F) * rho 72522)

def relationRow763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72512) * ((1 : F) * rho 72512) = ((1 : F) * rho 72523)

def relationRow764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72524) * ((-1 : F) * rho 72522 + (1 : F) * rho 72523) = ((2 : F) * rho 72521)

def relationRow765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72525) * ((2 : F) + (1 : F) * rho 72522 + (-1 : F) * rho 72523) = ((1 : F) * rho 72522 + (1 : F) * rho 72523)

def relationLc121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 40⟩, ⟨(1 : F), 72013, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72524 + (1 : F) * rho 72525) * (relationLc121 rho) = ((1 : F) * rho 72526)

def relationLc122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72525) * (relationLc122 rho) = ((1 : F) * rho 72527)

def relationLc123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72524) * (relationLc123 rho) = ((1 : F) * rho 72528)

def relationRow769 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72527) * ((1 : F) * rho 72528) = ((1 : F) * rho 72529)

def relationRow770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72530) * ((1 : F) + (1 : F) * rho 72529) = ((1 : F) * rho 72527 + (1 : F) * rho 72528)

def relationRow771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72531) * ((1 : F) + (-1 : F) * rho 72529) = ((1 : F) * rho 72526 + (-1 : F) * rho 72527 + (-1 : F) * rho 72528)

def relationLc124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 40⟩], residual := [((1 : F), 72530)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71801) * (relationLc124 rho) = ((1 : F) * rho 72532)

def relationLc125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 40⟩], residual := [((1 : F), 72531)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71801) * (relationLc125 rho) = ((1 : F) * rho 72533)

def relationRow774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72524) * ((1 : F) * rho 72525) = ((1 : F) * rho 72534)

def relationRow775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72524) * ((1 : F) * rho 72524) = ((1 : F) * rho 72535)

def relationRow776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72525) * ((1 : F) * rho 72525) = ((1 : F) * rho 72536)

def relationRow777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72537) * ((-1 : F) * rho 72535 + (1 : F) * rho 72536) = ((2 : F) * rho 72534)

def relationRow778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72538) * ((2 : F) + (1 : F) * rho 72535 + (-1 : F) * rho 72536) = ((1 : F) * rho 72535 + (1 : F) * rho 72536)

def relationLc126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 41⟩, ⟨(1 : F), 72013, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72537 + (1 : F) * rho 72538) * (relationLc126 rho) = ((1 : F) * rho 72539)

def relationLc127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72538) * (relationLc127 rho) = ((1 : F) * rho 72540)

def relationLc128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72537) * (relationLc128 rho) = ((1 : F) * rho 72541)

def relationRow782 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72540) * ((1 : F) * rho 72541) = ((1 : F) * rho 72542)

def relationRow783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72543) * ((1 : F) + (1 : F) * rho 72542) = ((1 : F) * rho 72540 + (1 : F) * rho 72541)

def relationRow784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72544) * ((1 : F) + (-1 : F) * rho 72542) = ((1 : F) * rho 72539 + (-1 : F) * rho 72540 + (-1 : F) * rho 72541)

def relationLc129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 41⟩], residual := [((1 : F), 72543)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71802) * (relationLc129 rho) = ((1 : F) * rho 72545)

def relationLc130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 41⟩], residual := [((1 : F), 72544)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71802) * (relationLc130 rho) = ((1 : F) * rho 72546)

def relationRow787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72537) * ((1 : F) * rho 72538) = ((1 : F) * rho 72547)

def relationRow788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72537) * ((1 : F) * rho 72537) = ((1 : F) * rho 72548)

def relationRow789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72538) * ((1 : F) * rho 72538) = ((1 : F) * rho 72549)

def relationRow790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72550) * ((-1 : F) * rho 72548 + (1 : F) * rho 72549) = ((2 : F) * rho 72547)

def relationRow791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72551) * ((2 : F) + (1 : F) * rho 72548 + (-1 : F) * rho 72549) = ((1 : F) * rho 72548 + (1 : F) * rho 72549)

def relationLc131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 42⟩, ⟨(1 : F), 72013, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72550 + (1 : F) * rho 72551) * (relationLc131 rho) = ((1 : F) * rho 72552)

def relationLc132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72551) * (relationLc132 rho) = ((1 : F) * rho 72553)

def relationLc133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72550) * (relationLc133 rho) = ((1 : F) * rho 72554)

def relationRow795 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72553) * ((1 : F) * rho 72554) = ((1 : F) * rho 72555)

def relationRow796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72556) * ((1 : F) + (1 : F) * rho 72555) = ((1 : F) * rho 72553 + (1 : F) * rho 72554)

def relationRow797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72557) * ((1 : F) + (-1 : F) * rho 72555) = ((1 : F) * rho 72552 + (-1 : F) * rho 72553 + (-1 : F) * rho 72554)

def relationLc134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 42⟩], residual := [((1 : F), 72556)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71803) * (relationLc134 rho) = ((1 : F) * rho 72558)

def relationLc135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 42⟩], residual := [((1 : F), 72557)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71803) * (relationLc135 rho) = ((1 : F) * rho 72559)

def relationRow800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72550) * ((1 : F) * rho 72551) = ((1 : F) * rho 72560)

def relationRow801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72550) * ((1 : F) * rho 72550) = ((1 : F) * rho 72561)

def relationRow802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72551) * ((1 : F) * rho 72551) = ((1 : F) * rho 72562)

def relationRow803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72563) * ((-1 : F) * rho 72561 + (1 : F) * rho 72562) = ((2 : F) * rho 72560)

def relationRow804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72564) * ((2 : F) + (1 : F) * rho 72561 + (-1 : F) * rho 72562) = ((1 : F) * rho 72561 + (1 : F) * rho 72562)

def relationLc136 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 43⟩, ⟨(1 : F), 72013, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72563 + (1 : F) * rho 72564) * (relationLc136 rho) = ((1 : F) * rho 72565)

def relationLc137 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72564) * (relationLc137 rho) = ((1 : F) * rho 72566)

def relationLc138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72563) * (relationLc138 rho) = ((1 : F) * rho 72567)

def relationRow808 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72566) * ((1 : F) * rho 72567) = ((1 : F) * rho 72568)

def relationRow809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72569) * ((1 : F) + (1 : F) * rho 72568) = ((1 : F) * rho 72566 + (1 : F) * rho 72567)

def relationRow810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72570) * ((1 : F) + (-1 : F) * rho 72568) = ((1 : F) * rho 72565 + (-1 : F) * rho 72566 + (-1 : F) * rho 72567)

def relationLc139 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 43⟩], residual := [((1 : F), 72569)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71804) * (relationLc139 rho) = ((1 : F) * rho 72571)

def relationLc140 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 43⟩], residual := [((1 : F), 72570)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71804) * (relationLc140 rho) = ((1 : F) * rho 72572)

def relationRow813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72563) * ((1 : F) * rho 72564) = ((1 : F) * rho 72573)

def relationRow814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72563) * ((1 : F) * rho 72563) = ((1 : F) * rho 72574)

def relationRow815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72564) * ((1 : F) * rho 72564) = ((1 : F) * rho 72575)

def relationRow816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72576) * ((-1 : F) * rho 72574 + (1 : F) * rho 72575) = ((2 : F) * rho 72573)

def relationRow817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72577) * ((2 : F) + (1 : F) * rho 72574 + (-1 : F) * rho 72575) = ((1 : F) * rho 72574 + (1 : F) * rho 72575)

def relationLc141 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 44⟩, ⟨(1 : F), 72013, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72576 + (1 : F) * rho 72577) * (relationLc141 rho) = ((1 : F) * rho 72578)

def relationLc142 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72577) * (relationLc142 rho) = ((1 : F) * rho 72579)

def relationLc143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72576) * (relationLc143 rho) = ((1 : F) * rho 72580)

def relationRow821 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72579) * ((1 : F) * rho 72580) = ((1 : F) * rho 72581)

def relationRow822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72582) * ((1 : F) + (1 : F) * rho 72581) = ((1 : F) * rho 72579 + (1 : F) * rho 72580)

def relationRow823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72583) * ((1 : F) + (-1 : F) * rho 72581) = ((1 : F) * rho 72578 + (-1 : F) * rho 72579 + (-1 : F) * rho 72580)

def relationLc144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 44⟩], residual := [((1 : F), 72582)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71805) * (relationLc144 rho) = ((1 : F) * rho 72584)

def relationLc145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 44⟩], residual := [((1 : F), 72583)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71805) * (relationLc145 rho) = ((1 : F) * rho 72585)

def relationRow826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72576) * ((1 : F) * rho 72577) = ((1 : F) * rho 72586)

def relationRow827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72576) * ((1 : F) * rho 72576) = ((1 : F) * rho 72587)

def relationRow828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72577) * ((1 : F) * rho 72577) = ((1 : F) * rho 72588)

def relationRow829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72589) * ((-1 : F) * rho 72587 + (1 : F) * rho 72588) = ((2 : F) * rho 72586)

def relationRow830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72590) * ((2 : F) + (1 : F) * rho 72587 + (-1 : F) * rho 72588) = ((1 : F) * rho 72587 + (1 : F) * rho 72588)

def relationLc146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 45⟩, ⟨(1 : F), 72013, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72589 + (1 : F) * rho 72590) * (relationLc146 rho) = ((1 : F) * rho 72591)

def relationLc147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72590) * (relationLc147 rho) = ((1 : F) * rho 72592)

def relationLc148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72589) * (relationLc148 rho) = ((1 : F) * rho 72593)

def relationRow834 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72592) * ((1 : F) * rho 72593) = ((1 : F) * rho 72594)

def relationRow835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72595) * ((1 : F) + (1 : F) * rho 72594) = ((1 : F) * rho 72592 + (1 : F) * rho 72593)

def relationRow836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72596) * ((1 : F) + (-1 : F) * rho 72594) = ((1 : F) * rho 72591 + (-1 : F) * rho 72592 + (-1 : F) * rho 72593)

def relationLc149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 45⟩], residual := [((1 : F), 72595)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71806) * (relationLc149 rho) = ((1 : F) * rho 72597)

def relationLc150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 45⟩], residual := [((1 : F), 72596)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71806) * (relationLc150 rho) = ((1 : F) * rho 72598)

def relationRow839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72589) * ((1 : F) * rho 72590) = ((1 : F) * rho 72599)

def relationRow840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72589) * ((1 : F) * rho 72589) = ((1 : F) * rho 72600)

def relationRow841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72590) * ((1 : F) * rho 72590) = ((1 : F) * rho 72601)

def relationRow842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72602) * ((-1 : F) * rho 72600 + (1 : F) * rho 72601) = ((2 : F) * rho 72599)

def relationRow843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72603) * ((2 : F) + (1 : F) * rho 72600 + (-1 : F) * rho 72601) = ((1 : F) * rho 72600 + (1 : F) * rho 72601)

def relationLc151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 46⟩, ⟨(1 : F), 72013, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72602 + (1 : F) * rho 72603) * (relationLc151 rho) = ((1 : F) * rho 72604)

def relationLc152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72603) * (relationLc152 rho) = ((1 : F) * rho 72605)

def relationLc153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72602) * (relationLc153 rho) = ((1 : F) * rho 72606)

def relationRow847 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72605) * ((1 : F) * rho 72606) = ((1 : F) * rho 72607)

def relationRow848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72608) * ((1 : F) + (1 : F) * rho 72607) = ((1 : F) * rho 72605 + (1 : F) * rho 72606)

def relationRow849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72609) * ((1 : F) + (-1 : F) * rho 72607) = ((1 : F) * rho 72604 + (-1 : F) * rho 72605 + (-1 : F) * rho 72606)

def relationLc154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 46⟩], residual := [((1 : F), 72608)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71807) * (relationLc154 rho) = ((1 : F) * rho 72610)

def relationLc155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 46⟩], residual := [((1 : F), 72609)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71807) * (relationLc155 rho) = ((1 : F) * rho 72611)

def relationRow852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72602) * ((1 : F) * rho 72603) = ((1 : F) * rho 72612)

def relationRow853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72602) * ((1 : F) * rho 72602) = ((1 : F) * rho 72613)

def relationRow854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72603) * ((1 : F) * rho 72603) = ((1 : F) * rho 72614)

def relationRow855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72615) * ((-1 : F) * rho 72613 + (1 : F) * rho 72614) = ((2 : F) * rho 72612)

def relationRow856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72616) * ((2 : F) + (1 : F) * rho 72613 + (-1 : F) * rho 72614) = ((1 : F) * rho 72613 + (1 : F) * rho 72614)

def relationLc156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 47⟩, ⟨(1 : F), 72013, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72615 + (1 : F) * rho 72616) * (relationLc156 rho) = ((1 : F) * rho 72617)

def relationLc157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72616) * (relationLc157 rho) = ((1 : F) * rho 72618)

def relationLc158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72615) * (relationLc158 rho) = ((1 : F) * rho 72619)

def relationRow860 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72618) * ((1 : F) * rho 72619) = ((1 : F) * rho 72620)

def relationRow861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72621) * ((1 : F) + (1 : F) * rho 72620) = ((1 : F) * rho 72618 + (1 : F) * rho 72619)

def relationRow862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72622) * ((1 : F) + (-1 : F) * rho 72620) = ((1 : F) * rho 72617 + (-1 : F) * rho 72618 + (-1 : F) * rho 72619)

def relationLc159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 47⟩], residual := [((1 : F), 72621)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71808) * (relationLc159 rho) = ((1 : F) * rho 72623)

def relationLc160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 47⟩], residual := [((1 : F), 72622)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71808) * (relationLc160 rho) = ((1 : F) * rho 72624)

def relationRow865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72615) * ((1 : F) * rho 72616) = ((1 : F) * rho 72625)

def relationRow866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72615) * ((1 : F) * rho 72615) = ((1 : F) * rho 72626)

def relationRow867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72616) * ((1 : F) * rho 72616) = ((1 : F) * rho 72627)

def relationRow868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72628) * ((-1 : F) * rho 72626 + (1 : F) * rho 72627) = ((2 : F) * rho 72625)

def relationRow869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72629) * ((2 : F) + (1 : F) * rho 72626 + (-1 : F) * rho 72627) = ((1 : F) * rho 72626 + (1 : F) * rho 72627)

def relationLc161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 48⟩, ⟨(1 : F), 72013, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72628 + (1 : F) * rho 72629) * (relationLc161 rho) = ((1 : F) * rho 72630)

def relationLc162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72629) * (relationLc162 rho) = ((1 : F) * rho 72631)

def relationLc163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72628) * (relationLc163 rho) = ((1 : F) * rho 72632)

def relationRow873 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72631) * ((1 : F) * rho 72632) = ((1 : F) * rho 72633)

def relationRow874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72634) * ((1 : F) + (1 : F) * rho 72633) = ((1 : F) * rho 72631 + (1 : F) * rho 72632)

def relationRow875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72635) * ((1 : F) + (-1 : F) * rho 72633) = ((1 : F) * rho 72630 + (-1 : F) * rho 72631 + (-1 : F) * rho 72632)

def relationLc164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 48⟩], residual := [((1 : F), 72634)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71809) * (relationLc164 rho) = ((1 : F) * rho 72636)

def relationLc165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 48⟩], residual := [((1 : F), 72635)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71809) * (relationLc165 rho) = ((1 : F) * rho 72637)

def relationRow878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72628) * ((1 : F) * rho 72629) = ((1 : F) * rho 72638)

def relationRow879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72628) * ((1 : F) * rho 72628) = ((1 : F) * rho 72639)

def relationRow880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72629) * ((1 : F) * rho 72629) = ((1 : F) * rho 72640)

def relationRow881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72641) * ((-1 : F) * rho 72639 + (1 : F) * rho 72640) = ((2 : F) * rho 72638)

def relationRow882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72642) * ((2 : F) + (1 : F) * rho 72639 + (-1 : F) * rho 72640) = ((1 : F) * rho 72639 + (1 : F) * rho 72640)

def relationLc166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 49⟩, ⟨(1 : F), 72013, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72641 + (1 : F) * rho 72642) * (relationLc166 rho) = ((1 : F) * rho 72643)

def relationLc167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72642) * (relationLc167 rho) = ((1 : F) * rho 72644)

def relationLc168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72641) * (relationLc168 rho) = ((1 : F) * rho 72645)

def relationRow886 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72644) * ((1 : F) * rho 72645) = ((1 : F) * rho 72646)

def relationRow887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72647) * ((1 : F) + (1 : F) * rho 72646) = ((1 : F) * rho 72644 + (1 : F) * rho 72645)

def relationRow888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72648) * ((1 : F) + (-1 : F) * rho 72646) = ((1 : F) * rho 72643 + (-1 : F) * rho 72644 + (-1 : F) * rho 72645)

def relationLc169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 49⟩], residual := [((1 : F), 72647)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71810) * (relationLc169 rho) = ((1 : F) * rho 72649)

def relationLc170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 49⟩], residual := [((1 : F), 72648)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71810) * (relationLc170 rho) = ((1 : F) * rho 72650)

def relationRow891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72641) * ((1 : F) * rho 72642) = ((1 : F) * rho 72651)

def relationRow892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72641) * ((1 : F) * rho 72641) = ((1 : F) * rho 72652)

def relationRow893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72642) * ((1 : F) * rho 72642) = ((1 : F) * rho 72653)

def relationRow894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72654) * ((-1 : F) * rho 72652 + (1 : F) * rho 72653) = ((2 : F) * rho 72651)

def relationRow895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72655) * ((2 : F) + (1 : F) * rho 72652 + (-1 : F) * rho 72653) = ((1 : F) * rho 72652 + (1 : F) * rho 72653)

def relationLc171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 50⟩, ⟨(1 : F), 72013, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72654 + (1 : F) * rho 72655) * (relationLc171 rho) = ((1 : F) * rho 72656)

def relationLc172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72655) * (relationLc172 rho) = ((1 : F) * rho 72657)

def relationLc173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72654) * (relationLc173 rho) = ((1 : F) * rho 72658)

def relationRow899 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72657) * ((1 : F) * rho 72658) = ((1 : F) * rho 72659)

def relationRow900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72660) * ((1 : F) + (1 : F) * rho 72659) = ((1 : F) * rho 72657 + (1 : F) * rho 72658)

def relationRow901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72661) * ((1 : F) + (-1 : F) * rho 72659) = ((1 : F) * rho 72656 + (-1 : F) * rho 72657 + (-1 : F) * rho 72658)

def relationLc174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 50⟩], residual := [((1 : F), 72660)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71811) * (relationLc174 rho) = ((1 : F) * rho 72662)

def relationLc175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 50⟩], residual := [((1 : F), 72661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71811) * (relationLc175 rho) = ((1 : F) * rho 72663)

def relationRow904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72654) * ((1 : F) * rho 72655) = ((1 : F) * rho 72664)

def relationRow905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72654) * ((1 : F) * rho 72654) = ((1 : F) * rho 72665)

def relationRow906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72655) * ((1 : F) * rho 72655) = ((1 : F) * rho 72666)

def relationRow907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72667) * ((-1 : F) * rho 72665 + (1 : F) * rho 72666) = ((2 : F) * rho 72664)

def relationRow908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72668) * ((2 : F) + (1 : F) * rho 72665 + (-1 : F) * rho 72666) = ((1 : F) * rho 72665 + (1 : F) * rho 72666)

def relationLc176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 51⟩, ⟨(1 : F), 72013, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72667 + (1 : F) * rho 72668) * (relationLc176 rho) = ((1 : F) * rho 72669)

def relationLc177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72668) * (relationLc177 rho) = ((1 : F) * rho 72670)

def relationLc178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72667) * (relationLc178 rho) = ((1 : F) * rho 72671)

def relationRow912 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72670) * ((1 : F) * rho 72671) = ((1 : F) * rho 72672)

def relationRow913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72673) * ((1 : F) + (1 : F) * rho 72672) = ((1 : F) * rho 72670 + (1 : F) * rho 72671)

def relationRow914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72674) * ((1 : F) + (-1 : F) * rho 72672) = ((1 : F) * rho 72669 + (-1 : F) * rho 72670 + (-1 : F) * rho 72671)

def relationLc179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 51⟩], residual := [((1 : F), 72673)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71812) * (relationLc179 rho) = ((1 : F) * rho 72675)

def relationLc180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 51⟩], residual := [((1 : F), 72674)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71812) * (relationLc180 rho) = ((1 : F) * rho 72676)

def relationRow917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72667) * ((1 : F) * rho 72668) = ((1 : F) * rho 72677)

def relationRow918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72667) * ((1 : F) * rho 72667) = ((1 : F) * rho 72678)

def relationRow919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72668) * ((1 : F) * rho 72668) = ((1 : F) * rho 72679)

def relationRow920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72680) * ((-1 : F) * rho 72678 + (1 : F) * rho 72679) = ((2 : F) * rho 72677)

def relationRow921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72681) * ((2 : F) + (1 : F) * rho 72678 + (-1 : F) * rho 72679) = ((1 : F) * rho 72678 + (1 : F) * rho 72679)

def relationLc181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 52⟩, ⟨(1 : F), 72013, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72680 + (1 : F) * rho 72681) * (relationLc181 rho) = ((1 : F) * rho 72682)

def relationLc182 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72681) * (relationLc182 rho) = ((1 : F) * rho 72683)

def relationLc183 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72680) * (relationLc183 rho) = ((1 : F) * rho 72684)

def relationRow925 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72683) * ((1 : F) * rho 72684) = ((1 : F) * rho 72685)

def relationRow926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72686) * ((1 : F) + (1 : F) * rho 72685) = ((1 : F) * rho 72683 + (1 : F) * rho 72684)

def relationRow927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72687) * ((1 : F) + (-1 : F) * rho 72685) = ((1 : F) * rho 72682 + (-1 : F) * rho 72683 + (-1 : F) * rho 72684)

def relationLc184 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 52⟩], residual := [((1 : F), 72686)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71813) * (relationLc184 rho) = ((1 : F) * rho 72688)

def relationLc185 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 52⟩], residual := [((1 : F), 72687)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71813) * (relationLc185 rho) = ((1 : F) * rho 72689)

def relationRow930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72680) * ((1 : F) * rho 72681) = ((1 : F) * rho 72690)

def relationRow931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72680) * ((1 : F) * rho 72680) = ((1 : F) * rho 72691)

def relationRow932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72681) * ((1 : F) * rho 72681) = ((1 : F) * rho 72692)

def relationRow933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72693) * ((-1 : F) * rho 72691 + (1 : F) * rho 72692) = ((2 : F) * rho 72690)

def relationRow934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72694) * ((2 : F) + (1 : F) * rho 72691 + (-1 : F) * rho 72692) = ((1 : F) * rho 72691 + (1 : F) * rho 72692)

def relationLc186 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 53⟩, ⟨(1 : F), 72013, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72693 + (1 : F) * rho 72694) * (relationLc186 rho) = ((1 : F) * rho 72695)

def relationLc187 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72694) * (relationLc187 rho) = ((1 : F) * rho 72696)

def relationLc188 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72693) * (relationLc188 rho) = ((1 : F) * rho 72697)

def relationRow938 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72696) * ((1 : F) * rho 72697) = ((1 : F) * rho 72698)

def relationRow939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72699) * ((1 : F) + (1 : F) * rho 72698) = ((1 : F) * rho 72696 + (1 : F) * rho 72697)

def relationRow940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72700) * ((1 : F) + (-1 : F) * rho 72698) = ((1 : F) * rho 72695 + (-1 : F) * rho 72696 + (-1 : F) * rho 72697)

def relationLc189 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 53⟩], residual := [((1 : F), 72699)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71814) * (relationLc189 rho) = ((1 : F) * rho 72701)

def relationLc190 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 53⟩], residual := [((1 : F), 72700)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71814) * (relationLc190 rho) = ((1 : F) * rho 72702)

def relationRow943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72693) * ((1 : F) * rho 72694) = ((1 : F) * rho 72703)

def relationRow944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72693) * ((1 : F) * rho 72693) = ((1 : F) * rho 72704)

def relationRow945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72694) * ((1 : F) * rho 72694) = ((1 : F) * rho 72705)

def relationRow946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72706) * ((-1 : F) * rho 72704 + (1 : F) * rho 72705) = ((2 : F) * rho 72703)

def relationRow947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72707) * ((2 : F) + (1 : F) * rho 72704 + (-1 : F) * rho 72705) = ((1 : F) * rho 72704 + (1 : F) * rho 72705)

def relationLc191 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 54⟩, ⟨(1 : F), 72013, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72706 + (1 : F) * rho 72707) * (relationLc191 rho) = ((1 : F) * rho 72708)

def relationLc192 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72707) * (relationLc192 rho) = ((1 : F) * rho 72709)

def relationLc193 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72706) * (relationLc193 rho) = ((1 : F) * rho 72710)

def relationRow951 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72709) * ((1 : F) * rho 72710) = ((1 : F) * rho 72711)

def relationRow952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72712) * ((1 : F) + (1 : F) * rho 72711) = ((1 : F) * rho 72709 + (1 : F) * rho 72710)

def relationRow953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72713) * ((1 : F) + (-1 : F) * rho 72711) = ((1 : F) * rho 72708 + (-1 : F) * rho 72709 + (-1 : F) * rho 72710)

def relationLc194 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 54⟩], residual := [((1 : F), 72712)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71815) * (relationLc194 rho) = ((1 : F) * rho 72714)

def relationLc195 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 54⟩], residual := [((1 : F), 72713)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71815) * (relationLc195 rho) = ((1 : F) * rho 72715)

def relationRow956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72706) * ((1 : F) * rho 72707) = ((1 : F) * rho 72716)

def relationRow957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72706) * ((1 : F) * rho 72706) = ((1 : F) * rho 72717)

def relationRow958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72707) * ((1 : F) * rho 72707) = ((1 : F) * rho 72718)

def relationRow959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72719) * ((-1 : F) * rho 72717 + (1 : F) * rho 72718) = ((2 : F) * rho 72716)

def relationRow960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72720) * ((2 : F) + (1 : F) * rho 72717 + (-1 : F) * rho 72718) = ((1 : F) * rho 72717 + (1 : F) * rho 72718)

def relationLc196 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 55⟩, ⟨(1 : F), 72013, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72719 + (1 : F) * rho 72720) * (relationLc196 rho) = ((1 : F) * rho 72721)

def relationLc197 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72720) * (relationLc197 rho) = ((1 : F) * rho 72722)

def relationLc198 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72719) * (relationLc198 rho) = ((1 : F) * rho 72723)

def relationRow964 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72722) * ((1 : F) * rho 72723) = ((1 : F) * rho 72724)

def relationRow965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72725) * ((1 : F) + (1 : F) * rho 72724) = ((1 : F) * rho 72722 + (1 : F) * rho 72723)

def relationRow966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72726) * ((1 : F) + (-1 : F) * rho 72724) = ((1 : F) * rho 72721 + (-1 : F) * rho 72722 + (-1 : F) * rho 72723)

def relationLc199 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 55⟩], residual := [((1 : F), 72725)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71816) * (relationLc199 rho) = ((1 : F) * rho 72727)

def relationLc200 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 55⟩], residual := [((1 : F), 72726)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71816) * (relationLc200 rho) = ((1 : F) * rho 72728)

def relationRow969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72719) * ((1 : F) * rho 72720) = ((1 : F) * rho 72729)

def relationRow970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72719) * ((1 : F) * rho 72719) = ((1 : F) * rho 72730)

def relationRow971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72720) * ((1 : F) * rho 72720) = ((1 : F) * rho 72731)

def relationRow972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72732) * ((-1 : F) * rho 72730 + (1 : F) * rho 72731) = ((2 : F) * rho 72729)

def relationRow973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72733) * ((2 : F) + (1 : F) * rho 72730 + (-1 : F) * rho 72731) = ((1 : F) * rho 72730 + (1 : F) * rho 72731)

def relationLc201 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 56⟩, ⟨(1 : F), 72013, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72732 + (1 : F) * rho 72733) * (relationLc201 rho) = ((1 : F) * rho 72734)

def relationLc202 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72733) * (relationLc202 rho) = ((1 : F) * rho 72735)

def relationLc203 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72732) * (relationLc203 rho) = ((1 : F) * rho 72736)

def relationRow977 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72735) * ((1 : F) * rho 72736) = ((1 : F) * rho 72737)

def relationRow978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72738) * ((1 : F) + (1 : F) * rho 72737) = ((1 : F) * rho 72735 + (1 : F) * rho 72736)

def relationRow979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72739) * ((1 : F) + (-1 : F) * rho 72737) = ((1 : F) * rho 72734 + (-1 : F) * rho 72735 + (-1 : F) * rho 72736)

def relationLc204 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 56⟩], residual := [((1 : F), 72738)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71817) * (relationLc204 rho) = ((1 : F) * rho 72740)

def relationLc205 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 56⟩], residual := [((1 : F), 72739)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71817) * (relationLc205 rho) = ((1 : F) * rho 72741)

def relationRow982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72732) * ((1 : F) * rho 72733) = ((1 : F) * rho 72742)

def relationRow983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72732) * ((1 : F) * rho 72732) = ((1 : F) * rho 72743)

def relationRow984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72733) * ((1 : F) * rho 72733) = ((1 : F) * rho 72744)

def relationRow985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72745) * ((-1 : F) * rho 72743 + (1 : F) * rho 72744) = ((2 : F) * rho 72742)

def relationRow986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72746) * ((2 : F) + (1 : F) * rho 72743 + (-1 : F) * rho 72744) = ((1 : F) * rho 72743 + (1 : F) * rho 72744)

def relationLc206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 57⟩, ⟨(1 : F), 72013, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72745 + (1 : F) * rho 72746) * (relationLc206 rho) = ((1 : F) * rho 72747)

def relationLc207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72746) * (relationLc207 rho) = ((1 : F) * rho 72748)

def relationLc208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72745) * (relationLc208 rho) = ((1 : F) * rho 72749)

def relationRow990 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72748) * ((1 : F) * rho 72749) = ((1 : F) * rho 72750)

def relationRow991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72751) * ((1 : F) + (1 : F) * rho 72750) = ((1 : F) * rho 72748 + (1 : F) * rho 72749)

def relationRow992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72752) * ((1 : F) + (-1 : F) * rho 72750) = ((1 : F) * rho 72747 + (-1 : F) * rho 72748 + (-1 : F) * rho 72749)

def relationLc209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 57⟩], residual := [((1 : F), 72751)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71818) * (relationLc209 rho) = ((1 : F) * rho 72753)

def relationLc210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 57⟩], residual := [((1 : F), 72752)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71818) * (relationLc210 rho) = ((1 : F) * rho 72754)

def relationRow995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72745) * ((1 : F) * rho 72746) = ((1 : F) * rho 72755)

def relationRow996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72745) * ((1 : F) * rho 72745) = ((1 : F) * rho 72756)

def relationRow997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72746) * ((1 : F) * rho 72746) = ((1 : F) * rho 72757)

def relationRow998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72758) * ((-1 : F) * rho 72756 + (1 : F) * rho 72757) = ((2 : F) * rho 72755)

def relationRow999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72759) * ((2 : F) + (1 : F) * rho 72756 + (-1 : F) * rho 72757) = ((1 : F) * rho 72756 + (1 : F) * rho 72757)

def relationLc211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 58⟩, ⟨(1 : F), 72013, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72758 + (1 : F) * rho 72759) * (relationLc211 rho) = ((1 : F) * rho 72760)

def relationLc212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72759) * (relationLc212 rho) = ((1 : F) * rho 72761)

def relationLc213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72758) * (relationLc213 rho) = ((1 : F) * rho 72762)

def relationRow1003 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72761) * ((1 : F) * rho 72762) = ((1 : F) * rho 72763)

def relationRow1004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72764) * ((1 : F) + (1 : F) * rho 72763) = ((1 : F) * rho 72761 + (1 : F) * rho 72762)

def relationRow1005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72765) * ((1 : F) + (-1 : F) * rho 72763) = ((1 : F) * rho 72760 + (-1 : F) * rho 72761 + (-1 : F) * rho 72762)

def relationLc214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 58⟩], residual := [((1 : F), 72764)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71819) * (relationLc214 rho) = ((1 : F) * rho 72766)

def relationLc215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 58⟩], residual := [((1 : F), 72765)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71819) * (relationLc215 rho) = ((1 : F) * rho 72767)

def relationRow1008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72758) * ((1 : F) * rho 72759) = ((1 : F) * rho 72768)

def relationRow1009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72758) * ((1 : F) * rho 72758) = ((1 : F) * rho 72769)

def relationRow1010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72759) * ((1 : F) * rho 72759) = ((1 : F) * rho 72770)

def relationRow1011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72771) * ((-1 : F) * rho 72769 + (1 : F) * rho 72770) = ((2 : F) * rho 72768)

def relationRow1012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72772) * ((2 : F) + (1 : F) * rho 72769 + (-1 : F) * rho 72770) = ((1 : F) * rho 72769 + (1 : F) * rho 72770)

def relationLc216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 59⟩, ⟨(1 : F), 72013, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72771 + (1 : F) * rho 72772) * (relationLc216 rho) = ((1 : F) * rho 72773)

def relationLc217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72772) * (relationLc217 rho) = ((1 : F) * rho 72774)

def relationLc218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72771) * (relationLc218 rho) = ((1 : F) * rho 72775)

def relationRow1016 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72774) * ((1 : F) * rho 72775) = ((1 : F) * rho 72776)

def relationRow1017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72777) * ((1 : F) + (1 : F) * rho 72776) = ((1 : F) * rho 72774 + (1 : F) * rho 72775)

def relationRow1018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72778) * ((1 : F) + (-1 : F) * rho 72776) = ((1 : F) * rho 72773 + (-1 : F) * rho 72774 + (-1 : F) * rho 72775)

def relationLc219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 59⟩], residual := [((1 : F), 72777)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71820) * (relationLc219 rho) = ((1 : F) * rho 72779)

def relationLc220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 59⟩], residual := [((1 : F), 72778)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71820) * (relationLc220 rho) = ((1 : F) * rho 72780)

def relationRow1021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72771) * ((1 : F) * rho 72772) = ((1 : F) * rho 72781)

def relationRow1022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72771) * ((1 : F) * rho 72771) = ((1 : F) * rho 72782)

def relationRow1023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72772) * ((1 : F) * rho 72772) = ((1 : F) * rho 72783)

def relationRow1024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72784) * ((-1 : F) * rho 72782 + (1 : F) * rho 72783) = ((2 : F) * rho 72781)

def relationRow1025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72785) * ((2 : F) + (1 : F) * rho 72782 + (-1 : F) * rho 72783) = ((1 : F) * rho 72782 + (1 : F) * rho 72783)

def relationLc221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 60⟩, ⟨(1 : F), 72013, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72784 + (1 : F) * rho 72785) * (relationLc221 rho) = ((1 : F) * rho 72786)

def relationLc222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72785) * (relationLc222 rho) = ((1 : F) * rho 72787)

def relationLc223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72784) * (relationLc223 rho) = ((1 : F) * rho 72788)

def relationRow1029 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72787) * ((1 : F) * rho 72788) = ((1 : F) * rho 72789)

def relationRow1030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72790) * ((1 : F) + (1 : F) * rho 72789) = ((1 : F) * rho 72787 + (1 : F) * rho 72788)

def relationRow1031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72791) * ((1 : F) + (-1 : F) * rho 72789) = ((1 : F) * rho 72786 + (-1 : F) * rho 72787 + (-1 : F) * rho 72788)

def relationLc224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 60⟩], residual := [((1 : F), 72790)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71821) * (relationLc224 rho) = ((1 : F) * rho 72792)

def relationLc225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 60⟩], residual := [((1 : F), 72791)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71821) * (relationLc225 rho) = ((1 : F) * rho 72793)

def relationRow1034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72784) * ((1 : F) * rho 72785) = ((1 : F) * rho 72794)

def relationRow1035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72784) * ((1 : F) * rho 72784) = ((1 : F) * rho 72795)

def relationRow1036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72785) * ((1 : F) * rho 72785) = ((1 : F) * rho 72796)

def relationRow1037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72797) * ((-1 : F) * rho 72795 + (1 : F) * rho 72796) = ((2 : F) * rho 72794)

def relationRow1038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72798) * ((2 : F) + (1 : F) * rho 72795 + (-1 : F) * rho 72796) = ((1 : F) * rho 72795 + (1 : F) * rho 72796)

def relationLc226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 61⟩, ⟨(1 : F), 72013, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72797 + (1 : F) * rho 72798) * (relationLc226 rho) = ((1 : F) * rho 72799)

def relationLc227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72798) * (relationLc227 rho) = ((1 : F) * rho 72800)

def relationLc228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72797) * (relationLc228 rho) = ((1 : F) * rho 72801)

def relationRow1042 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72800) * ((1 : F) * rho 72801) = ((1 : F) * rho 72802)

def relationRow1043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72803) * ((1 : F) + (1 : F) * rho 72802) = ((1 : F) * rho 72800 + (1 : F) * rho 72801)

def relationRow1044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72804) * ((1 : F) + (-1 : F) * rho 72802) = ((1 : F) * rho 72799 + (-1 : F) * rho 72800 + (-1 : F) * rho 72801)

def relationLc229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 61⟩], residual := [((1 : F), 72803)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71822) * (relationLc229 rho) = ((1 : F) * rho 72805)

def relationLc230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 61⟩], residual := [((1 : F), 72804)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71822) * (relationLc230 rho) = ((1 : F) * rho 72806)

def relationRow1047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72797) * ((1 : F) * rho 72798) = ((1 : F) * rho 72807)

def relationRow1048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72797) * ((1 : F) * rho 72797) = ((1 : F) * rho 72808)

def relationRow1049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72798) * ((1 : F) * rho 72798) = ((1 : F) * rho 72809)

def relationRow1050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72810) * ((-1 : F) * rho 72808 + (1 : F) * rho 72809) = ((2 : F) * rho 72807)

def relationRow1051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72811) * ((2 : F) + (1 : F) * rho 72808 + (-1 : F) * rho 72809) = ((1 : F) * rho 72808 + (1 : F) * rho 72809)

def relationLc231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 62⟩, ⟨(1 : F), 72013, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72810 + (1 : F) * rho 72811) * (relationLc231 rho) = ((1 : F) * rho 72812)

def relationLc232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72811) * (relationLc232 rho) = ((1 : F) * rho 72813)

def relationLc233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72810) * (relationLc233 rho) = ((1 : F) * rho 72814)

def relationRow1055 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72813) * ((1 : F) * rho 72814) = ((1 : F) * rho 72815)

def relationRow1056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72816) * ((1 : F) + (1 : F) * rho 72815) = ((1 : F) * rho 72813 + (1 : F) * rho 72814)

def relationRow1057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72817) * ((1 : F) + (-1 : F) * rho 72815) = ((1 : F) * rho 72812 + (-1 : F) * rho 72813 + (-1 : F) * rho 72814)

def relationLc234 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 62⟩], residual := [((1 : F), 72816)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71823) * (relationLc234 rho) = ((1 : F) * rho 72818)

def relationLc235 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 62⟩], residual := [((1 : F), 72817)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71823) * (relationLc235 rho) = ((1 : F) * rho 72819)

def relationRow1060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72810) * ((1 : F) * rho 72811) = ((1 : F) * rho 72820)

def relationRow1061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72810) * ((1 : F) * rho 72810) = ((1 : F) * rho 72821)

def relationRow1062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72811) * ((1 : F) * rho 72811) = ((1 : F) * rho 72822)

def relationRow1063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72823) * ((-1 : F) * rho 72821 + (1 : F) * rho 72822) = ((2 : F) * rho 72820)

def relationRow1064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72824) * ((2 : F) + (1 : F) * rho 72821 + (-1 : F) * rho 72822) = ((1 : F) * rho 72821 + (1 : F) * rho 72822)

def relationLc236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 63⟩, ⟨(1 : F), 72013, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72823 + (1 : F) * rho 72824) * (relationLc236 rho) = ((1 : F) * rho 72825)

def relationLc237 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72824) * (relationLc237 rho) = ((1 : F) * rho 72826)

def relationLc238 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72823) * (relationLc238 rho) = ((1 : F) * rho 72827)

def relationRow1068 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72826) * ((1 : F) * rho 72827) = ((1 : F) * rho 72828)

def relationRow1069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72829) * ((1 : F) + (1 : F) * rho 72828) = ((1 : F) * rho 72826 + (1 : F) * rho 72827)

def relationRow1070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72830) * ((1 : F) + (-1 : F) * rho 72828) = ((1 : F) * rho 72825 + (-1 : F) * rho 72826 + (-1 : F) * rho 72827)

def relationLc239 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 63⟩], residual := [((1 : F), 72829)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71824) * (relationLc239 rho) = ((1 : F) * rho 72831)

def relationLc240 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 63⟩], residual := [((1 : F), 72830)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71824) * (relationLc240 rho) = ((1 : F) * rho 72832)

def relationRow1073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72823) * ((1 : F) * rho 72824) = ((1 : F) * rho 72833)

def relationRow1074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72823) * ((1 : F) * rho 72823) = ((1 : F) * rho 72834)

def relationRow1075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72824) * ((1 : F) * rho 72824) = ((1 : F) * rho 72835)

def relationRow1076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72836) * ((-1 : F) * rho 72834 + (1 : F) * rho 72835) = ((2 : F) * rho 72833)

def relationRow1077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72837) * ((2 : F) + (1 : F) * rho 72834 + (-1 : F) * rho 72835) = ((1 : F) * rho 72834 + (1 : F) * rho 72835)

def relationLc241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 64⟩, ⟨(1 : F), 72013, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72836 + (1 : F) * rho 72837) * (relationLc241 rho) = ((1 : F) * rho 72838)

def relationLc242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72837) * (relationLc242 rho) = ((1 : F) * rho 72839)

def relationLc243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72836) * (relationLc243 rho) = ((1 : F) * rho 72840)

def relationRow1081 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72839) * ((1 : F) * rho 72840) = ((1 : F) * rho 72841)

def relationRow1082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72842) * ((1 : F) + (1 : F) * rho 72841) = ((1 : F) * rho 72839 + (1 : F) * rho 72840)

def relationRow1083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72843) * ((1 : F) + (-1 : F) * rho 72841) = ((1 : F) * rho 72838 + (-1 : F) * rho 72839 + (-1 : F) * rho 72840)

def relationLc244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 64⟩], residual := [((1 : F), 72842)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71825) * (relationLc244 rho) = ((1 : F) * rho 72844)

def relationLc245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 64⟩], residual := [((1 : F), 72843)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71825) * (relationLc245 rho) = ((1 : F) * rho 72845)

def relationRow1086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72836) * ((1 : F) * rho 72837) = ((1 : F) * rho 72846)

def relationRow1087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72836) * ((1 : F) * rho 72836) = ((1 : F) * rho 72847)

def relationRow1088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72837) * ((1 : F) * rho 72837) = ((1 : F) * rho 72848)

def relationRow1089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72849) * ((-1 : F) * rho 72847 + (1 : F) * rho 72848) = ((2 : F) * rho 72846)

def relationRow1090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72850) * ((2 : F) + (1 : F) * rho 72847 + (-1 : F) * rho 72848) = ((1 : F) * rho 72847 + (1 : F) * rho 72848)

def relationLc246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 65⟩, ⟨(1 : F), 72013, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72849 + (1 : F) * rho 72850) * (relationLc246 rho) = ((1 : F) * rho 72851)

def relationLc247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72850) * (relationLc247 rho) = ((1 : F) * rho 72852)

def relationLc248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72849) * (relationLc248 rho) = ((1 : F) * rho 72853)

def relationRow1094 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72852) * ((1 : F) * rho 72853) = ((1 : F) * rho 72854)

def relationRow1095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72855) * ((1 : F) + (1 : F) * rho 72854) = ((1 : F) * rho 72852 + (1 : F) * rho 72853)

def relationRow1096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72856) * ((1 : F) + (-1 : F) * rho 72854) = ((1 : F) * rho 72851 + (-1 : F) * rho 72852 + (-1 : F) * rho 72853)

def relationLc249 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 65⟩], residual := [((1 : F), 72855)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71826) * (relationLc249 rho) = ((1 : F) * rho 72857)

def relationLc250 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 65⟩], residual := [((1 : F), 72856)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71826) * (relationLc250 rho) = ((1 : F) * rho 72858)

def relationRow1099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72849) * ((1 : F) * rho 72850) = ((1 : F) * rho 72859)

def relationRow1100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72849) * ((1 : F) * rho 72849) = ((1 : F) * rho 72860)

def relationRow1101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72850) * ((1 : F) * rho 72850) = ((1 : F) * rho 72861)

def relationRow1102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72862) * ((-1 : F) * rho 72860 + (1 : F) * rho 72861) = ((2 : F) * rho 72859)

def relationRow1103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72863) * ((2 : F) + (1 : F) * rho 72860 + (-1 : F) * rho 72861) = ((1 : F) * rho 72860 + (1 : F) * rho 72861)

def relationLc251 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 66⟩, ⟨(1 : F), 72013, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72862 + (1 : F) * rho 72863) * (relationLc251 rho) = ((1 : F) * rho 72864)

def relationLc252 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72863) * (relationLc252 rho) = ((1 : F) * rho 72865)

def relationLc253 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72862) * (relationLc253 rho) = ((1 : F) * rho 72866)

def relationRow1107 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72865) * ((1 : F) * rho 72866) = ((1 : F) * rho 72867)

def relationRow1108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72868) * ((1 : F) + (1 : F) * rho 72867) = ((1 : F) * rho 72865 + (1 : F) * rho 72866)

def relationRow1109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72869) * ((1 : F) + (-1 : F) * rho 72867) = ((1 : F) * rho 72864 + (-1 : F) * rho 72865 + (-1 : F) * rho 72866)

def relationLc254 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 66⟩], residual := [((1 : F), 72868)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71827) * (relationLc254 rho) = ((1 : F) * rho 72870)

def relationLc255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 66⟩], residual := [((1 : F), 72869)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71827) * (relationLc255 rho) = ((1 : F) * rho 72871)

def relationRow1112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72862) * ((1 : F) * rho 72863) = ((1 : F) * rho 72872)

def relationRow1113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72862) * ((1 : F) * rho 72862) = ((1 : F) * rho 72873)

def relationRow1114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72863) * ((1 : F) * rho 72863) = ((1 : F) * rho 72874)

def relationRow1115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72875) * ((-1 : F) * rho 72873 + (1 : F) * rho 72874) = ((2 : F) * rho 72872)

def relationRow1116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72876) * ((2 : F) + (1 : F) * rho 72873 + (-1 : F) * rho 72874) = ((1 : F) * rho 72873 + (1 : F) * rho 72874)

def relationLc256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 67⟩, ⟨(1 : F), 72013, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72875 + (1 : F) * rho 72876) * (relationLc256 rho) = ((1 : F) * rho 72877)

def relationLc257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72876) * (relationLc257 rho) = ((1 : F) * rho 72878)

def relationLc258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72875) * (relationLc258 rho) = ((1 : F) * rho 72879)

def relationRow1120 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72878) * ((1 : F) * rho 72879) = ((1 : F) * rho 72880)

def relationRow1121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72881) * ((1 : F) + (1 : F) * rho 72880) = ((1 : F) * rho 72878 + (1 : F) * rho 72879)

def relationRow1122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72882) * ((1 : F) + (-1 : F) * rho 72880) = ((1 : F) * rho 72877 + (-1 : F) * rho 72878 + (-1 : F) * rho 72879)

def relationLc259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 67⟩], residual := [((1 : F), 72881)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71828) * (relationLc259 rho) = ((1 : F) * rho 72883)

def relationLc260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 67⟩], residual := [((1 : F), 72882)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71828) * (relationLc260 rho) = ((1 : F) * rho 72884)

def relationRow1125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72875) * ((1 : F) * rho 72876) = ((1 : F) * rho 72885)

def relationRow1126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72875) * ((1 : F) * rho 72875) = ((1 : F) * rho 72886)

def relationRow1127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72876) * ((1 : F) * rho 72876) = ((1 : F) * rho 72887)

def relationRow1128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72888) * ((-1 : F) * rho 72886 + (1 : F) * rho 72887) = ((2 : F) * rho 72885)

def relationRow1129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72889) * ((2 : F) + (1 : F) * rho 72886 + (-1 : F) * rho 72887) = ((1 : F) * rho 72886 + (1 : F) * rho 72887)

def relationLc261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 68⟩, ⟨(1 : F), 72013, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72888 + (1 : F) * rho 72889) * (relationLc261 rho) = ((1 : F) * rho 72890)

def relationLc262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72889) * (relationLc262 rho) = ((1 : F) * rho 72891)

def relationLc263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72888) * (relationLc263 rho) = ((1 : F) * rho 72892)

def relationRow1133 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72891) * ((1 : F) * rho 72892) = ((1 : F) * rho 72893)

def relationRow1134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72894) * ((1 : F) + (1 : F) * rho 72893) = ((1 : F) * rho 72891 + (1 : F) * rho 72892)

def relationRow1135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72895) * ((1 : F) + (-1 : F) * rho 72893) = ((1 : F) * rho 72890 + (-1 : F) * rho 72891 + (-1 : F) * rho 72892)

def relationLc264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 68⟩], residual := [((1 : F), 72894)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71829) * (relationLc264 rho) = ((1 : F) * rho 72896)

def relationLc265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 68⟩], residual := [((1 : F), 72895)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71829) * (relationLc265 rho) = ((1 : F) * rho 72897)

def relationRow1138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72888) * ((1 : F) * rho 72889) = ((1 : F) * rho 72898)

def relationRow1139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72888) * ((1 : F) * rho 72888) = ((1 : F) * rho 72899)

def relationRow1140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72889) * ((1 : F) * rho 72889) = ((1 : F) * rho 72900)

def relationRow1141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72901) * ((-1 : F) * rho 72899 + (1 : F) * rho 72900) = ((2 : F) * rho 72898)

def relationRow1142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72902) * ((2 : F) + (1 : F) * rho 72899 + (-1 : F) * rho 72900) = ((1 : F) * rho 72899 + (1 : F) * rho 72900)

def relationLc266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 69⟩, ⟨(1 : F), 72013, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72901 + (1 : F) * rho 72902) * (relationLc266 rho) = ((1 : F) * rho 72903)

def relationLc267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72902) * (relationLc267 rho) = ((1 : F) * rho 72904)

def relationLc268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72901) * (relationLc268 rho) = ((1 : F) * rho 72905)

def relationRow1146 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72904) * ((1 : F) * rho 72905) = ((1 : F) * rho 72906)

def relationRow1147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72907) * ((1 : F) + (1 : F) * rho 72906) = ((1 : F) * rho 72904 + (1 : F) * rho 72905)

def relationRow1148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72908) * ((1 : F) + (-1 : F) * rho 72906) = ((1 : F) * rho 72903 + (-1 : F) * rho 72904 + (-1 : F) * rho 72905)

def relationLc269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 69⟩], residual := [((1 : F), 72907)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71830) * (relationLc269 rho) = ((1 : F) * rho 72909)

def relationLc270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 69⟩], residual := [((1 : F), 72908)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71830) * (relationLc270 rho) = ((1 : F) * rho 72910)

def relationRow1151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72901) * ((1 : F) * rho 72902) = ((1 : F) * rho 72911)

def relationRow1152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72901) * ((1 : F) * rho 72901) = ((1 : F) * rho 72912)

def relationRow1153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72902) * ((1 : F) * rho 72902) = ((1 : F) * rho 72913)

def relationRow1154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72914) * ((-1 : F) * rho 72912 + (1 : F) * rho 72913) = ((2 : F) * rho 72911)

def relationRow1155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72915) * ((2 : F) + (1 : F) * rho 72912 + (-1 : F) * rho 72913) = ((1 : F) * rho 72912 + (1 : F) * rho 72913)

def relationLc271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 70⟩, ⟨(1 : F), 72013, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72914 + (1 : F) * rho 72915) * (relationLc271 rho) = ((1 : F) * rho 72916)

def relationLc272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72915) * (relationLc272 rho) = ((1 : F) * rho 72917)

def relationLc273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72914) * (relationLc273 rho) = ((1 : F) * rho 72918)

def relationRow1159 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72917) * ((1 : F) * rho 72918) = ((1 : F) * rho 72919)

def relationRow1160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72920) * ((1 : F) + (1 : F) * rho 72919) = ((1 : F) * rho 72917 + (1 : F) * rho 72918)

def relationRow1161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72921) * ((1 : F) + (-1 : F) * rho 72919) = ((1 : F) * rho 72916 + (-1 : F) * rho 72917 + (-1 : F) * rho 72918)

def relationLc274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 70⟩], residual := [((1 : F), 72920)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71831) * (relationLc274 rho) = ((1 : F) * rho 72922)

def relationLc275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 70⟩], residual := [((1 : F), 72921)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71831) * (relationLc275 rho) = ((1 : F) * rho 72923)

def relationRow1164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72914) * ((1 : F) * rho 72915) = ((1 : F) * rho 72924)

def relationRow1165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72914) * ((1 : F) * rho 72914) = ((1 : F) * rho 72925)

def relationRow1166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72915) * ((1 : F) * rho 72915) = ((1 : F) * rho 72926)

def relationRow1167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72927) * ((-1 : F) * rho 72925 + (1 : F) * rho 72926) = ((2 : F) * rho 72924)

def relationRow1168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72928) * ((2 : F) + (1 : F) * rho 72925 + (-1 : F) * rho 72926) = ((1 : F) * rho 72925 + (1 : F) * rho 72926)

def relationLc276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 71⟩, ⟨(1 : F), 72013, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72927 + (1 : F) * rho 72928) * (relationLc276 rho) = ((1 : F) * rho 72929)

def relationLc277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72928) * (relationLc277 rho) = ((1 : F) * rho 72930)

def relationLc278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72927) * (relationLc278 rho) = ((1 : F) * rho 72931)

def relationRow1172 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72930) * ((1 : F) * rho 72931) = ((1 : F) * rho 72932)

def relationRow1173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72933) * ((1 : F) + (1 : F) * rho 72932) = ((1 : F) * rho 72930 + (1 : F) * rho 72931)

def relationRow1174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72934) * ((1 : F) + (-1 : F) * rho 72932) = ((1 : F) * rho 72929 + (-1 : F) * rho 72930 + (-1 : F) * rho 72931)

def relationLc279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 71⟩], residual := [((1 : F), 72933)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71832) * (relationLc279 rho) = ((1 : F) * rho 72935)

def relationLc280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 71⟩], residual := [((1 : F), 72934)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71832) * (relationLc280 rho) = ((1 : F) * rho 72936)

def relationRow1177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72927) * ((1 : F) * rho 72928) = ((1 : F) * rho 72937)

def relationRow1178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72927) * ((1 : F) * rho 72927) = ((1 : F) * rho 72938)

def relationRow1179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72928) * ((1 : F) * rho 72928) = ((1 : F) * rho 72939)

def relationRow1180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72940) * ((-1 : F) * rho 72938 + (1 : F) * rho 72939) = ((2 : F) * rho 72937)

def relationRow1181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72941) * ((2 : F) + (1 : F) * rho 72938 + (-1 : F) * rho 72939) = ((1 : F) * rho 72938 + (1 : F) * rho 72939)

def relationLc281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 72⟩, ⟨(1 : F), 72013, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72940 + (1 : F) * rho 72941) * (relationLc281 rho) = ((1 : F) * rho 72942)

def relationLc282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72941) * (relationLc282 rho) = ((1 : F) * rho 72943)

def relationLc283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72940) * (relationLc283 rho) = ((1 : F) * rho 72944)

def relationRow1185 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72943) * ((1 : F) * rho 72944) = ((1 : F) * rho 72945)

def relationRow1186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72946) * ((1 : F) + (1 : F) * rho 72945) = ((1 : F) * rho 72943 + (1 : F) * rho 72944)

def relationRow1187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72947) * ((1 : F) + (-1 : F) * rho 72945) = ((1 : F) * rho 72942 + (-1 : F) * rho 72943 + (-1 : F) * rho 72944)

def relationLc284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 72⟩], residual := [((1 : F), 72946)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71833) * (relationLc284 rho) = ((1 : F) * rho 72948)

def relationLc285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 72⟩], residual := [((1 : F), 72947)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71833) * (relationLc285 rho) = ((1 : F) * rho 72949)

def relationRow1190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72940) * ((1 : F) * rho 72941) = ((1 : F) * rho 72950)

def relationRow1191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72940) * ((1 : F) * rho 72940) = ((1 : F) * rho 72951)

def relationRow1192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72941) * ((1 : F) * rho 72941) = ((1 : F) * rho 72952)

def relationRow1193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72953) * ((-1 : F) * rho 72951 + (1 : F) * rho 72952) = ((2 : F) * rho 72950)

def relationRow1194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72954) * ((2 : F) + (1 : F) * rho 72951 + (-1 : F) * rho 72952) = ((1 : F) * rho 72951 + (1 : F) * rho 72952)

def relationLc286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 73⟩, ⟨(1 : F), 72013, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72953 + (1 : F) * rho 72954) * (relationLc286 rho) = ((1 : F) * rho 72955)

def relationLc287 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72954) * (relationLc287 rho) = ((1 : F) * rho 72956)

def relationLc288 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72953) * (relationLc288 rho) = ((1 : F) * rho 72957)

def relationRow1198 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72956) * ((1 : F) * rho 72957) = ((1 : F) * rho 72958)

def relationRow1199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72959) * ((1 : F) + (1 : F) * rho 72958) = ((1 : F) * rho 72956 + (1 : F) * rho 72957)

def relationRow1200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72960) * ((1 : F) + (-1 : F) * rho 72958) = ((1 : F) * rho 72955 + (-1 : F) * rho 72956 + (-1 : F) * rho 72957)

def relationLc289 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 73⟩], residual := [((1 : F), 72959)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71834) * (relationLc289 rho) = ((1 : F) * rho 72961)

def relationLc290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 73⟩], residual := [((1 : F), 72960)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71834) * (relationLc290 rho) = ((1 : F) * rho 72962)

def relationRow1203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72953) * ((1 : F) * rho 72954) = ((1 : F) * rho 72963)

def relationRow1204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72953) * ((1 : F) * rho 72953) = ((1 : F) * rho 72964)

def relationRow1205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72954) * ((1 : F) * rho 72954) = ((1 : F) * rho 72965)

def relationRow1206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72966) * ((-1 : F) * rho 72964 + (1 : F) * rho 72965) = ((2 : F) * rho 72963)

def relationRow1207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72967) * ((2 : F) + (1 : F) * rho 72964 + (-1 : F) * rho 72965) = ((1 : F) * rho 72964 + (1 : F) * rho 72965)

def relationLc291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 74⟩, ⟨(1 : F), 72013, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72966 + (1 : F) * rho 72967) * (relationLc291 rho) = ((1 : F) * rho 72968)

def relationLc292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72967) * (relationLc292 rho) = ((1 : F) * rho 72969)

def relationLc293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72966) * (relationLc293 rho) = ((1 : F) * rho 72970)

def relationRow1211 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72969) * ((1 : F) * rho 72970) = ((1 : F) * rho 72971)

def relationRow1212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72972) * ((1 : F) + (1 : F) * rho 72971) = ((1 : F) * rho 72969 + (1 : F) * rho 72970)

def relationRow1213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72973) * ((1 : F) + (-1 : F) * rho 72971) = ((1 : F) * rho 72968 + (-1 : F) * rho 72969 + (-1 : F) * rho 72970)

def relationLc294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 74⟩], residual := [((1 : F), 72972)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71835) * (relationLc294 rho) = ((1 : F) * rho 72974)

def relationLc295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 74⟩], residual := [((1 : F), 72973)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71835) * (relationLc295 rho) = ((1 : F) * rho 72975)

def relationRow1216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72966) * ((1 : F) * rho 72967) = ((1 : F) * rho 72976)

def relationRow1217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72966) * ((1 : F) * rho 72966) = ((1 : F) * rho 72977)

def relationRow1218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72967) * ((1 : F) * rho 72967) = ((1 : F) * rho 72978)

def relationRow1219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72979) * ((-1 : F) * rho 72977 + (1 : F) * rho 72978) = ((2 : F) * rho 72976)

def relationRow1220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72980) * ((2 : F) + (1 : F) * rho 72977 + (-1 : F) * rho 72978) = ((1 : F) * rho 72977 + (1 : F) * rho 72978)

def relationLc296 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 75⟩, ⟨(1 : F), 72013, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72979 + (1 : F) * rho 72980) * (relationLc296 rho) = ((1 : F) * rho 72981)

def relationLc297 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72980) * (relationLc297 rho) = ((1 : F) * rho 72982)

def relationLc298 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72979) * (relationLc298 rho) = ((1 : F) * rho 72983)

def relationRow1224 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72982) * ((1 : F) * rho 72983) = ((1 : F) * rho 72984)

def relationRow1225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72985) * ((1 : F) + (1 : F) * rho 72984) = ((1 : F) * rho 72982 + (1 : F) * rho 72983)

def relationRow1226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72986) * ((1 : F) + (-1 : F) * rho 72984) = ((1 : F) * rho 72981 + (-1 : F) * rho 72982 + (-1 : F) * rho 72983)

def relationLc299 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 75⟩], residual := [((1 : F), 72985)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71836) * (relationLc299 rho) = ((1 : F) * rho 72987)

def relationLc300 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 75⟩], residual := [((1 : F), 72986)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71836) * (relationLc300 rho) = ((1 : F) * rho 72988)

def relationRow1229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72979) * ((1 : F) * rho 72980) = ((1 : F) * rho 72989)

def relationRow1230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72979) * ((1 : F) * rho 72979) = ((1 : F) * rho 72990)

def relationRow1231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72980) * ((1 : F) * rho 72980) = ((1 : F) * rho 72991)

def relationRow1232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72992) * ((-1 : F) * rho 72990 + (1 : F) * rho 72991) = ((2 : F) * rho 72989)

def relationRow1233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72993) * ((2 : F) + (1 : F) * rho 72990 + (-1 : F) * rho 72991) = ((1 : F) * rho 72990 + (1 : F) * rho 72991)

def relationLc301 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 76⟩, ⟨(1 : F), 72013, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72992 + (1 : F) * rho 72993) * (relationLc301 rho) = ((1 : F) * rho 72994)

def relationLc302 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72993) * (relationLc302 rho) = ((1 : F) * rho 72995)

def relationLc303 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72992) * (relationLc303 rho) = ((1 : F) * rho 72996)

def relationRow1237 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 72995) * ((1 : F) * rho 72996) = ((1 : F) * rho 72997)

def relationRow1238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72998) * ((1 : F) + (1 : F) * rho 72997) = ((1 : F) * rho 72995 + (1 : F) * rho 72996)

def relationRow1239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72999) * ((1 : F) + (-1 : F) * rho 72997) = ((1 : F) * rho 72994 + (-1 : F) * rho 72995 + (-1 : F) * rho 72996)

def relationLc304 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 76⟩], residual := [((1 : F), 72998)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71837) * (relationLc304 rho) = ((1 : F) * rho 73000)

def relationLc305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 76⟩], residual := [((1 : F), 72999)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71837) * (relationLc305 rho) = ((1 : F) * rho 73001)

def relationRow1242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72992) * ((1 : F) * rho 72993) = ((1 : F) * rho 73002)

def relationRow1243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72992) * ((1 : F) * rho 72992) = ((1 : F) * rho 73003)

def relationRow1244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72993) * ((1 : F) * rho 72993) = ((1 : F) * rho 73004)

def relationRow1245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73005) * ((-1 : F) * rho 73003 + (1 : F) * rho 73004) = ((2 : F) * rho 73002)

def relationRow1246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73006) * ((2 : F) + (1 : F) * rho 73003 + (-1 : F) * rho 73004) = ((1 : F) * rho 73003 + (1 : F) * rho 73004)

def relationLc306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 77⟩, ⟨(1 : F), 72013, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73005 + (1 : F) * rho 73006) * (relationLc306 rho) = ((1 : F) * rho 73007)

def relationLc307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73006) * (relationLc307 rho) = ((1 : F) * rho 73008)

def relationLc308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73005) * (relationLc308 rho) = ((1 : F) * rho 73009)

def relationRow1250 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73008) * ((1 : F) * rho 73009) = ((1 : F) * rho 73010)

def relationRow1251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73011) * ((1 : F) + (1 : F) * rho 73010) = ((1 : F) * rho 73008 + (1 : F) * rho 73009)

def relationRow1252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73012) * ((1 : F) + (-1 : F) * rho 73010) = ((1 : F) * rho 73007 + (-1 : F) * rho 73008 + (-1 : F) * rho 73009)

def relationLc309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 77⟩], residual := [((1 : F), 73011)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71838) * (relationLc309 rho) = ((1 : F) * rho 73013)

def relationLc310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 77⟩], residual := [((1 : F), 73012)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71838) * (relationLc310 rho) = ((1 : F) * rho 73014)

def relationRow1255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73005) * ((1 : F) * rho 73006) = ((1 : F) * rho 73015)

def relationRow1256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73005) * ((1 : F) * rho 73005) = ((1 : F) * rho 73016)

def relationRow1257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73006) * ((1 : F) * rho 73006) = ((1 : F) * rho 73017)

def relationRow1258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73018) * ((-1 : F) * rho 73016 + (1 : F) * rho 73017) = ((2 : F) * rho 73015)

def relationRow1259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73019) * ((2 : F) + (1 : F) * rho 73016 + (-1 : F) * rho 73017) = ((1 : F) * rho 73016 + (1 : F) * rho 73017)

def relationLc311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 78⟩, ⟨(1 : F), 72013, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73018 + (1 : F) * rho 73019) * (relationLc311 rho) = ((1 : F) * rho 73020)

def relationLc312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73019) * (relationLc312 rho) = ((1 : F) * rho 73021)

def relationLc313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73018) * (relationLc313 rho) = ((1 : F) * rho 73022)

def relationRow1263 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73021) * ((1 : F) * rho 73022) = ((1 : F) * rho 73023)

def relationRow1264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73024) * ((1 : F) + (1 : F) * rho 73023) = ((1 : F) * rho 73021 + (1 : F) * rho 73022)

def relationRow1265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73025) * ((1 : F) + (-1 : F) * rho 73023) = ((1 : F) * rho 73020 + (-1 : F) * rho 73021 + (-1 : F) * rho 73022)

def relationLc314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 78⟩], residual := [((1 : F), 73024)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71839) * (relationLc314 rho) = ((1 : F) * rho 73026)

def relationLc315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 78⟩], residual := [((1 : F), 73025)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71839) * (relationLc315 rho) = ((1 : F) * rho 73027)

def relationRow1268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73018) * ((1 : F) * rho 73019) = ((1 : F) * rho 73028)

def relationRow1269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73018) * ((1 : F) * rho 73018) = ((1 : F) * rho 73029)

def relationRow1270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73019) * ((1 : F) * rho 73019) = ((1 : F) * rho 73030)

def relationRow1271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73031) * ((-1 : F) * rho 73029 + (1 : F) * rho 73030) = ((2 : F) * rho 73028)

def relationRow1272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73032) * ((2 : F) + (1 : F) * rho 73029 + (-1 : F) * rho 73030) = ((1 : F) * rho 73029 + (1 : F) * rho 73030)

def relationLc316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 79⟩, ⟨(1 : F), 72013, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73031 + (1 : F) * rho 73032) * (relationLc316 rho) = ((1 : F) * rho 73033)

def relationLc317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73032) * (relationLc317 rho) = ((1 : F) * rho 73034)

def relationLc318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73031) * (relationLc318 rho) = ((1 : F) * rho 73035)

def relationRow1276 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73034) * ((1 : F) * rho 73035) = ((1 : F) * rho 73036)

def relationRow1277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73037) * ((1 : F) + (1 : F) * rho 73036) = ((1 : F) * rho 73034 + (1 : F) * rho 73035)

def relationRow1278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73038) * ((1 : F) + (-1 : F) * rho 73036) = ((1 : F) * rho 73033 + (-1 : F) * rho 73034 + (-1 : F) * rho 73035)

def relationLc319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 79⟩], residual := [((1 : F), 73037)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71840) * (relationLc319 rho) = ((1 : F) * rho 73039)

def relationLc320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 79⟩], residual := [((1 : F), 73038)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71840) * (relationLc320 rho) = ((1 : F) * rho 73040)

def relationRow1281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73031) * ((1 : F) * rho 73032) = ((1 : F) * rho 73041)

def relationRow1282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73031) * ((1 : F) * rho 73031) = ((1 : F) * rho 73042)

def relationRow1283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73032) * ((1 : F) * rho 73032) = ((1 : F) * rho 73043)

def relationRow1284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73044) * ((-1 : F) * rho 73042 + (1 : F) * rho 73043) = ((2 : F) * rho 73041)

def relationRow1285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73045) * ((2 : F) + (1 : F) * rho 73042 + (-1 : F) * rho 73043) = ((1 : F) * rho 73042 + (1 : F) * rho 73043)

def relationLc321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 80⟩, ⟨(1 : F), 72013, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73044 + (1 : F) * rho 73045) * (relationLc321 rho) = ((1 : F) * rho 73046)

def relationLc322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73045) * (relationLc322 rho) = ((1 : F) * rho 73047)

def relationLc323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73044) * (relationLc323 rho) = ((1 : F) * rho 73048)

def relationRow1289 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73047) * ((1 : F) * rho 73048) = ((1 : F) * rho 73049)

def relationRow1290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73050) * ((1 : F) + (1 : F) * rho 73049) = ((1 : F) * rho 73047 + (1 : F) * rho 73048)

def relationRow1291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73051) * ((1 : F) + (-1 : F) * rho 73049) = ((1 : F) * rho 73046 + (-1 : F) * rho 73047 + (-1 : F) * rho 73048)

def relationLc324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 80⟩], residual := [((1 : F), 73050)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71841) * (relationLc324 rho) = ((1 : F) * rho 73052)

def relationLc325 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 80⟩], residual := [((1 : F), 73051)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71841) * (relationLc325 rho) = ((1 : F) * rho 73053)

def relationRow1294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73044) * ((1 : F) * rho 73045) = ((1 : F) * rho 73054)

def relationRow1295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73044) * ((1 : F) * rho 73044) = ((1 : F) * rho 73055)

def relationRow1296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73045) * ((1 : F) * rho 73045) = ((1 : F) * rho 73056)

def relationRow1297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73057) * ((-1 : F) * rho 73055 + (1 : F) * rho 73056) = ((2 : F) * rho 73054)

def relationRow1298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73058) * ((2 : F) + (1 : F) * rho 73055 + (-1 : F) * rho 73056) = ((1 : F) * rho 73055 + (1 : F) * rho 73056)

def relationLc326 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 81⟩, ⟨(1 : F), 72013, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73057 + (1 : F) * rho 73058) * (relationLc326 rho) = ((1 : F) * rho 73059)

def relationLc327 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73058) * (relationLc327 rho) = ((1 : F) * rho 73060)

def relationLc328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73057) * (relationLc328 rho) = ((1 : F) * rho 73061)

def relationRow1302 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73060) * ((1 : F) * rho 73061) = ((1 : F) * rho 73062)

def relationRow1303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73063) * ((1 : F) + (1 : F) * rho 73062) = ((1 : F) * rho 73060 + (1 : F) * rho 73061)

def relationRow1304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73064) * ((1 : F) + (-1 : F) * rho 73062) = ((1 : F) * rho 73059 + (-1 : F) * rho 73060 + (-1 : F) * rho 73061)

def relationLc329 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 81⟩], residual := [((1 : F), 73063)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71842) * (relationLc329 rho) = ((1 : F) * rho 73065)

def relationLc330 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 81⟩], residual := [((1 : F), 73064)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71842) * (relationLc330 rho) = ((1 : F) * rho 73066)

def relationRow1307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73057) * ((1 : F) * rho 73058) = ((1 : F) * rho 73067)

def relationRow1308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73057) * ((1 : F) * rho 73057) = ((1 : F) * rho 73068)

def relationRow1309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73058) * ((1 : F) * rho 73058) = ((1 : F) * rho 73069)

def relationRow1310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73070) * ((-1 : F) * rho 73068 + (1 : F) * rho 73069) = ((2 : F) * rho 73067)

def relationRow1311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73071) * ((2 : F) + (1 : F) * rho 73068 + (-1 : F) * rho 73069) = ((1 : F) * rho 73068 + (1 : F) * rho 73069)

def relationLc331 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 82⟩, ⟨(1 : F), 72013, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73070 + (1 : F) * rho 73071) * (relationLc331 rho) = ((1 : F) * rho 73072)

def relationLc332 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73071) * (relationLc332 rho) = ((1 : F) * rho 73073)

def relationLc333 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73070) * (relationLc333 rho) = ((1 : F) * rho 73074)

def relationRow1315 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73073) * ((1 : F) * rho 73074) = ((1 : F) * rho 73075)

def relationRow1316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73076) * ((1 : F) + (1 : F) * rho 73075) = ((1 : F) * rho 73073 + (1 : F) * rho 73074)

def relationRow1317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73077) * ((1 : F) + (-1 : F) * rho 73075) = ((1 : F) * rho 73072 + (-1 : F) * rho 73073 + (-1 : F) * rho 73074)

def relationLc334 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 82⟩], residual := [((1 : F), 73076)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71843) * (relationLc334 rho) = ((1 : F) * rho 73078)

def relationLc335 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 82⟩], residual := [((1 : F), 73077)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71843) * (relationLc335 rho) = ((1 : F) * rho 73079)

def relationRow1320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73070) * ((1 : F) * rho 73071) = ((1 : F) * rho 73080)

def relationRow1321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73070) * ((1 : F) * rho 73070) = ((1 : F) * rho 73081)

def relationRow1322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73071) * ((1 : F) * rho 73071) = ((1 : F) * rho 73082)

def relationRow1323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73083) * ((-1 : F) * rho 73081 + (1 : F) * rho 73082) = ((2 : F) * rho 73080)

def relationRow1324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73084) * ((2 : F) + (1 : F) * rho 73081 + (-1 : F) * rho 73082) = ((1 : F) * rho 73081 + (1 : F) * rho 73082)

def relationLc336 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 83⟩, ⟨(1 : F), 72013, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73083 + (1 : F) * rho 73084) * (relationLc336 rho) = ((1 : F) * rho 73085)

def relationLc337 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73084) * (relationLc337 rho) = ((1 : F) * rho 73086)

def relationLc338 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73083) * (relationLc338 rho) = ((1 : F) * rho 73087)

def relationRow1328 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73086) * ((1 : F) * rho 73087) = ((1 : F) * rho 73088)

def relationRow1329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73089) * ((1 : F) + (1 : F) * rho 73088) = ((1 : F) * rho 73086 + (1 : F) * rho 73087)

def relationRow1330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73090) * ((1 : F) + (-1 : F) * rho 73088) = ((1 : F) * rho 73085 + (-1 : F) * rho 73086 + (-1 : F) * rho 73087)

def relationLc339 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 83⟩], residual := [((1 : F), 73089)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71844) * (relationLc339 rho) = ((1 : F) * rho 73091)

def relationLc340 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 83⟩], residual := [((1 : F), 73090)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71844) * (relationLc340 rho) = ((1 : F) * rho 73092)

def relationRow1333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73083) * ((1 : F) * rho 73084) = ((1 : F) * rho 73093)

def relationRow1334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73083) * ((1 : F) * rho 73083) = ((1 : F) * rho 73094)

def relationRow1335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73084) * ((1 : F) * rho 73084) = ((1 : F) * rho 73095)

def relationRow1336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73096) * ((-1 : F) * rho 73094 + (1 : F) * rho 73095) = ((2 : F) * rho 73093)

def relationRow1337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73097) * ((2 : F) + (1 : F) * rho 73094 + (-1 : F) * rho 73095) = ((1 : F) * rho 73094 + (1 : F) * rho 73095)

def relationLc341 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 84⟩, ⟨(1 : F), 72013, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73096 + (1 : F) * rho 73097) * (relationLc341 rho) = ((1 : F) * rho 73098)

def relationLc342 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73097) * (relationLc342 rho) = ((1 : F) * rho 73099)

def relationLc343 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73096) * (relationLc343 rho) = ((1 : F) * rho 73100)

def relationRow1341 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73099) * ((1 : F) * rho 73100) = ((1 : F) * rho 73101)

def relationRow1342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73102) * ((1 : F) + (1 : F) * rho 73101) = ((1 : F) * rho 73099 + (1 : F) * rho 73100)

def relationRow1343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73103) * ((1 : F) + (-1 : F) * rho 73101) = ((1 : F) * rho 73098 + (-1 : F) * rho 73099 + (-1 : F) * rho 73100)

def relationLc344 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 84⟩], residual := [((1 : F), 73102)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71845) * (relationLc344 rho) = ((1 : F) * rho 73104)

def relationLc345 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 84⟩], residual := [((1 : F), 73103)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71845) * (relationLc345 rho) = ((1 : F) * rho 73105)

def relationRow1346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73096) * ((1 : F) * rho 73097) = ((1 : F) * rho 73106)

def relationRow1347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73096) * ((1 : F) * rho 73096) = ((1 : F) * rho 73107)

def relationRow1348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73097) * ((1 : F) * rho 73097) = ((1 : F) * rho 73108)

def relationRow1349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73109) * ((-1 : F) * rho 73107 + (1 : F) * rho 73108) = ((2 : F) * rho 73106)

def relationRow1350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73110) * ((2 : F) + (1 : F) * rho 73107 + (-1 : F) * rho 73108) = ((1 : F) * rho 73107 + (1 : F) * rho 73108)

def relationLc346 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 85⟩, ⟨(1 : F), 72013, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73109 + (1 : F) * rho 73110) * (relationLc346 rho) = ((1 : F) * rho 73111)

def relationLc347 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73110) * (relationLc347 rho) = ((1 : F) * rho 73112)

def relationLc348 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73109) * (relationLc348 rho) = ((1 : F) * rho 73113)

def relationRow1354 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73112) * ((1 : F) * rho 73113) = ((1 : F) * rho 73114)

def relationRow1355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73115) * ((1 : F) + (1 : F) * rho 73114) = ((1 : F) * rho 73112 + (1 : F) * rho 73113)

def relationRow1356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73116) * ((1 : F) + (-1 : F) * rho 73114) = ((1 : F) * rho 73111 + (-1 : F) * rho 73112 + (-1 : F) * rho 73113)

def relationLc349 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 85⟩], residual := [((1 : F), 73115)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71846) * (relationLc349 rho) = ((1 : F) * rho 73117)

def relationLc350 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 85⟩], residual := [((1 : F), 73116)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71846) * (relationLc350 rho) = ((1 : F) * rho 73118)

def relationRow1359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73109) * ((1 : F) * rho 73110) = ((1 : F) * rho 73119)

def relationRow1360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73109) * ((1 : F) * rho 73109) = ((1 : F) * rho 73120)

def relationRow1361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73110) * ((1 : F) * rho 73110) = ((1 : F) * rho 73121)

def relationRow1362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73122) * ((-1 : F) * rho 73120 + (1 : F) * rho 73121) = ((2 : F) * rho 73119)

def relationRow1363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73123) * ((2 : F) + (1 : F) * rho 73120 + (-1 : F) * rho 73121) = ((1 : F) * rho 73120 + (1 : F) * rho 73121)

def relationLc351 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 86⟩, ⟨(1 : F), 72013, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73122 + (1 : F) * rho 73123) * (relationLc351 rho) = ((1 : F) * rho 73124)

def relationLc352 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73123) * (relationLc352 rho) = ((1 : F) * rho 73125)

def relationLc353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73122) * (relationLc353 rho) = ((1 : F) * rho 73126)

def relationRow1367 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73125) * ((1 : F) * rho 73126) = ((1 : F) * rho 73127)

def relationRow1368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73128) * ((1 : F) + (1 : F) * rho 73127) = ((1 : F) * rho 73125 + (1 : F) * rho 73126)

def relationRow1369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73129) * ((1 : F) + (-1 : F) * rho 73127) = ((1 : F) * rho 73124 + (-1 : F) * rho 73125 + (-1 : F) * rho 73126)

def relationLc354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 86⟩], residual := [((1 : F), 73128)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71847) * (relationLc354 rho) = ((1 : F) * rho 73130)

def relationLc355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 86⟩], residual := [((1 : F), 73129)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71847) * (relationLc355 rho) = ((1 : F) * rho 73131)

def relationRow1372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73122) * ((1 : F) * rho 73123) = ((1 : F) * rho 73132)

def relationRow1373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73122) * ((1 : F) * rho 73122) = ((1 : F) * rho 73133)

def relationRow1374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73123) * ((1 : F) * rho 73123) = ((1 : F) * rho 73134)

def relationRow1375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73135) * ((-1 : F) * rho 73133 + (1 : F) * rho 73134) = ((2 : F) * rho 73132)

def relationRow1376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73136) * ((2 : F) + (1 : F) * rho 73133 + (-1 : F) * rho 73134) = ((1 : F) * rho 73133 + (1 : F) * rho 73134)

def relationLc356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 87⟩, ⟨(1 : F), 72013, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73135 + (1 : F) * rho 73136) * (relationLc356 rho) = ((1 : F) * rho 73137)

def relationLc357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73136) * (relationLc357 rho) = ((1 : F) * rho 73138)

def relationLc358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73135) * (relationLc358 rho) = ((1 : F) * rho 73139)

def relationRow1380 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73138) * ((1 : F) * rho 73139) = ((1 : F) * rho 73140)

def relationRow1381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73141) * ((1 : F) + (1 : F) * rho 73140) = ((1 : F) * rho 73138 + (1 : F) * rho 73139)

def relationRow1382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73142) * ((1 : F) + (-1 : F) * rho 73140) = ((1 : F) * rho 73137 + (-1 : F) * rho 73138 + (-1 : F) * rho 73139)

def relationLc359 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 87⟩], residual := [((1 : F), 73141)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71848) * (relationLc359 rho) = ((1 : F) * rho 73143)

def relationLc360 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 87⟩], residual := [((1 : F), 73142)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71848) * (relationLc360 rho) = ((1 : F) * rho 73144)

def relationRow1385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73135) * ((1 : F) * rho 73136) = ((1 : F) * rho 73145)

def relationRow1386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73135) * ((1 : F) * rho 73135) = ((1 : F) * rho 73146)

def relationRow1387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73136) * ((1 : F) * rho 73136) = ((1 : F) * rho 73147)

def relationRow1388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73148) * ((-1 : F) * rho 73146 + (1 : F) * rho 73147) = ((2 : F) * rho 73145)

def relationRow1389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73149) * ((2 : F) + (1 : F) * rho 73146 + (-1 : F) * rho 73147) = ((1 : F) * rho 73146 + (1 : F) * rho 73147)

def relationLc361 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 88⟩, ⟨(1 : F), 72013, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73148 + (1 : F) * rho 73149) * (relationLc361 rho) = ((1 : F) * rho 73150)

def relationLc362 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73149) * (relationLc362 rho) = ((1 : F) * rho 73151)

def relationLc363 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73148) * (relationLc363 rho) = ((1 : F) * rho 73152)

def relationRow1393 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73151) * ((1 : F) * rho 73152) = ((1 : F) * rho 73153)

def relationRow1394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73154) * ((1 : F) + (1 : F) * rho 73153) = ((1 : F) * rho 73151 + (1 : F) * rho 73152)

def relationRow1395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73155) * ((1 : F) + (-1 : F) * rho 73153) = ((1 : F) * rho 73150 + (-1 : F) * rho 73151 + (-1 : F) * rho 73152)

def relationLc364 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 88⟩], residual := [((1 : F), 73154)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71849) * (relationLc364 rho) = ((1 : F) * rho 73156)

def relationLc365 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 88⟩], residual := [((1 : F), 73155)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71849) * (relationLc365 rho) = ((1 : F) * rho 73157)

def relationRow1398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73148) * ((1 : F) * rho 73149) = ((1 : F) * rho 73158)

def relationRow1399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73148) * ((1 : F) * rho 73148) = ((1 : F) * rho 73159)

def relationRow1400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73149) * ((1 : F) * rho 73149) = ((1 : F) * rho 73160)

def relationRow1401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73161) * ((-1 : F) * rho 73159 + (1 : F) * rho 73160) = ((2 : F) * rho 73158)

def relationRow1402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73162) * ((2 : F) + (1 : F) * rho 73159 + (-1 : F) * rho 73160) = ((1 : F) * rho 73159 + (1 : F) * rho 73160)

def relationLc366 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 89⟩, ⟨(1 : F), 72013, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73161 + (1 : F) * rho 73162) * (relationLc366 rho) = ((1 : F) * rho 73163)

def relationLc367 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73162) * (relationLc367 rho) = ((1 : F) * rho 73164)

def relationLc368 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73161) * (relationLc368 rho) = ((1 : F) * rho 73165)

def relationRow1406 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73164) * ((1 : F) * rho 73165) = ((1 : F) * rho 73166)

def relationRow1407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73167) * ((1 : F) + (1 : F) * rho 73166) = ((1 : F) * rho 73164 + (1 : F) * rho 73165)

def relationRow1408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73168) * ((1 : F) + (-1 : F) * rho 73166) = ((1 : F) * rho 73163 + (-1 : F) * rho 73164 + (-1 : F) * rho 73165)

def relationLc369 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 89⟩], residual := [((1 : F), 73167)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71850) * (relationLc369 rho) = ((1 : F) * rho 73169)

def relationLc370 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 89⟩], residual := [((1 : F), 73168)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71850) * (relationLc370 rho) = ((1 : F) * rho 73170)

def relationRow1411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73161) * ((1 : F) * rho 73162) = ((1 : F) * rho 73171)

def relationRow1412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73161) * ((1 : F) * rho 73161) = ((1 : F) * rho 73172)

def relationRow1413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73162) * ((1 : F) * rho 73162) = ((1 : F) * rho 73173)

def relationRow1414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73174) * ((-1 : F) * rho 73172 + (1 : F) * rho 73173) = ((2 : F) * rho 73171)

def relationRow1415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73175) * ((2 : F) + (1 : F) * rho 73172 + (-1 : F) * rho 73173) = ((1 : F) * rho 73172 + (1 : F) * rho 73173)

def relationLc371 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 90⟩, ⟨(1 : F), 72013, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73174 + (1 : F) * rho 73175) * (relationLc371 rho) = ((1 : F) * rho 73176)

def relationLc372 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73175) * (relationLc372 rho) = ((1 : F) * rho 73177)

def relationLc373 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73174) * (relationLc373 rho) = ((1 : F) * rho 73178)

def relationRow1419 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73177) * ((1 : F) * rho 73178) = ((1 : F) * rho 73179)

def relationRow1420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73180) * ((1 : F) + (1 : F) * rho 73179) = ((1 : F) * rho 73177 + (1 : F) * rho 73178)

def relationRow1421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73181) * ((1 : F) + (-1 : F) * rho 73179) = ((1 : F) * rho 73176 + (-1 : F) * rho 73177 + (-1 : F) * rho 73178)

def relationLc374 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 90⟩], residual := [((1 : F), 73180)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71851) * (relationLc374 rho) = ((1 : F) * rho 73182)

def relationLc375 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 90⟩], residual := [((1 : F), 73181)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71851) * (relationLc375 rho) = ((1 : F) * rho 73183)

def relationRow1424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73174) * ((1 : F) * rho 73175) = ((1 : F) * rho 73184)

def relationRow1425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73174) * ((1 : F) * rho 73174) = ((1 : F) * rho 73185)

def relationRow1426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73175) * ((1 : F) * rho 73175) = ((1 : F) * rho 73186)

def relationRow1427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73187) * ((-1 : F) * rho 73185 + (1 : F) * rho 73186) = ((2 : F) * rho 73184)

def relationRow1428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73188) * ((2 : F) + (1 : F) * rho 73185 + (-1 : F) * rho 73186) = ((1 : F) * rho 73185 + (1 : F) * rho 73186)

def relationLc376 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 91⟩, ⟨(1 : F), 72013, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73187 + (1 : F) * rho 73188) * (relationLc376 rho) = ((1 : F) * rho 73189)

def relationLc377 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73188) * (relationLc377 rho) = ((1 : F) * rho 73190)

def relationLc378 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73187) * (relationLc378 rho) = ((1 : F) * rho 73191)

def relationRow1432 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73190) * ((1 : F) * rho 73191) = ((1 : F) * rho 73192)

def relationRow1433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73193) * ((1 : F) + (1 : F) * rho 73192) = ((1 : F) * rho 73190 + (1 : F) * rho 73191)

def relationRow1434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73194) * ((1 : F) + (-1 : F) * rho 73192) = ((1 : F) * rho 73189 + (-1 : F) * rho 73190 + (-1 : F) * rho 73191)

def relationLc379 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 91⟩], residual := [((1 : F), 73193)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71852) * (relationLc379 rho) = ((1 : F) * rho 73195)

def relationLc380 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 91⟩], residual := [((1 : F), 73194)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71852) * (relationLc380 rho) = ((1 : F) * rho 73196)

def relationRow1437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73187) * ((1 : F) * rho 73188) = ((1 : F) * rho 73197)

def relationRow1438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73187) * ((1 : F) * rho 73187) = ((1 : F) * rho 73198)

def relationRow1439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73188) * ((1 : F) * rho 73188) = ((1 : F) * rho 73199)

def relationRow1440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73200) * ((-1 : F) * rho 73198 + (1 : F) * rho 73199) = ((2 : F) * rho 73197)

def relationRow1441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73201) * ((2 : F) + (1 : F) * rho 73198 + (-1 : F) * rho 73199) = ((1 : F) * rho 73198 + (1 : F) * rho 73199)

def relationLc381 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 92⟩, ⟨(1 : F), 72013, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73200 + (1 : F) * rho 73201) * (relationLc381 rho) = ((1 : F) * rho 73202)

def relationLc382 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73201) * (relationLc382 rho) = ((1 : F) * rho 73203)

def relationLc383 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73200) * (relationLc383 rho) = ((1 : F) * rho 73204)

def relationRow1445 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73203) * ((1 : F) * rho 73204) = ((1 : F) * rho 73205)

def relationRow1446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73206) * ((1 : F) + (1 : F) * rho 73205) = ((1 : F) * rho 73203 + (1 : F) * rho 73204)

def relationRow1447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73207) * ((1 : F) + (-1 : F) * rho 73205) = ((1 : F) * rho 73202 + (-1 : F) * rho 73203 + (-1 : F) * rho 73204)

def relationLc384 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 92⟩], residual := [((1 : F), 73206)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71853) * (relationLc384 rho) = ((1 : F) * rho 73208)

def relationLc385 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 92⟩], residual := [((1 : F), 73207)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71853) * (relationLc385 rho) = ((1 : F) * rho 73209)

def relationRow1450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73200) * ((1 : F) * rho 73201) = ((1 : F) * rho 73210)

def relationRow1451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73200) * ((1 : F) * rho 73200) = ((1 : F) * rho 73211)

def relationRow1452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73201) * ((1 : F) * rho 73201) = ((1 : F) * rho 73212)

def relationRow1453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73213) * ((-1 : F) * rho 73211 + (1 : F) * rho 73212) = ((2 : F) * rho 73210)

def relationRow1454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73214) * ((2 : F) + (1 : F) * rho 73211 + (-1 : F) * rho 73212) = ((1 : F) * rho 73211 + (1 : F) * rho 73212)

def relationLc386 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 93⟩, ⟨(1 : F), 72013, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73213 + (1 : F) * rho 73214) * (relationLc386 rho) = ((1 : F) * rho 73215)

def relationLc387 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73214) * (relationLc387 rho) = ((1 : F) * rho 73216)

def relationLc388 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73213) * (relationLc388 rho) = ((1 : F) * rho 73217)

def relationRow1458 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73216) * ((1 : F) * rho 73217) = ((1 : F) * rho 73218)

def relationRow1459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73219) * ((1 : F) + (1 : F) * rho 73218) = ((1 : F) * rho 73216 + (1 : F) * rho 73217)

def relationRow1460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73220) * ((1 : F) + (-1 : F) * rho 73218) = ((1 : F) * rho 73215 + (-1 : F) * rho 73216 + (-1 : F) * rho 73217)

def relationLc389 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 93⟩], residual := [((1 : F), 73219)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71854) * (relationLc389 rho) = ((1 : F) * rho 73221)

def relationLc390 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 93⟩], residual := [((1 : F), 73220)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71854) * (relationLc390 rho) = ((1 : F) * rho 73222)

def relationRow1463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73213) * ((1 : F) * rho 73214) = ((1 : F) * rho 73223)

def relationRow1464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73213) * ((1 : F) * rho 73213) = ((1 : F) * rho 73224)

def relationRow1465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73214) * ((1 : F) * rho 73214) = ((1 : F) * rho 73225)

def relationRow1466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73226) * ((-1 : F) * rho 73224 + (1 : F) * rho 73225) = ((2 : F) * rho 73223)

def relationRow1467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73227) * ((2 : F) + (1 : F) * rho 73224 + (-1 : F) * rho 73225) = ((1 : F) * rho 73224 + (1 : F) * rho 73225)

def relationLc391 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 94⟩, ⟨(1 : F), 72013, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73226 + (1 : F) * rho 73227) * (relationLc391 rho) = ((1 : F) * rho 73228)

def relationLc392 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73227) * (relationLc392 rho) = ((1 : F) * rho 73229)

def relationLc393 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73226) * (relationLc393 rho) = ((1 : F) * rho 73230)

def relationRow1471 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73229) * ((1 : F) * rho 73230) = ((1 : F) * rho 73231)

def relationRow1472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73232) * ((1 : F) + (1 : F) * rho 73231) = ((1 : F) * rho 73229 + (1 : F) * rho 73230)

def relationRow1473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73233) * ((1 : F) + (-1 : F) * rho 73231) = ((1 : F) * rho 73228 + (-1 : F) * rho 73229 + (-1 : F) * rho 73230)

def relationLc394 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 94⟩], residual := [((1 : F), 73232)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71855) * (relationLc394 rho) = ((1 : F) * rho 73234)

def relationLc395 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 94⟩], residual := [((1 : F), 73233)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71855) * (relationLc395 rho) = ((1 : F) * rho 73235)

def relationRow1476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73226) * ((1 : F) * rho 73227) = ((1 : F) * rho 73236)

def relationRow1477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73226) * ((1 : F) * rho 73226) = ((1 : F) * rho 73237)

def relationRow1478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73227) * ((1 : F) * rho 73227) = ((1 : F) * rho 73238)

def relationRow1479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73239) * ((-1 : F) * rho 73237 + (1 : F) * rho 73238) = ((2 : F) * rho 73236)

def relationRow1480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73240) * ((2 : F) + (1 : F) * rho 73237 + (-1 : F) * rho 73238) = ((1 : F) * rho 73237 + (1 : F) * rho 73238)

def relationLc396 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 95⟩, ⟨(1 : F), 72013, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73239 + (1 : F) * rho 73240) * (relationLc396 rho) = ((1 : F) * rho 73241)

def relationLc397 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73240) * (relationLc397 rho) = ((1 : F) * rho 73242)

def relationLc398 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73239) * (relationLc398 rho) = ((1 : F) * rho 73243)

def relationRow1484 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73242) * ((1 : F) * rho 73243) = ((1 : F) * rho 73244)

def relationRow1485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73245) * ((1 : F) + (1 : F) * rho 73244) = ((1 : F) * rho 73242 + (1 : F) * rho 73243)

def relationRow1486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73246) * ((1 : F) + (-1 : F) * rho 73244) = ((1 : F) * rho 73241 + (-1 : F) * rho 73242 + (-1 : F) * rho 73243)

def relationLc399 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 95⟩], residual := [((1 : F), 73245)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71856) * (relationLc399 rho) = ((1 : F) * rho 73247)

def relationLc400 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 95⟩], residual := [((1 : F), 73246)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71856) * (relationLc400 rho) = ((1 : F) * rho 73248)

def relationRow1489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73239) * ((1 : F) * rho 73240) = ((1 : F) * rho 73249)

def relationRow1490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73239) * ((1 : F) * rho 73239) = ((1 : F) * rho 73250)

def relationRow1491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73240) * ((1 : F) * rho 73240) = ((1 : F) * rho 73251)

def relationRow1492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73252) * ((-1 : F) * rho 73250 + (1 : F) * rho 73251) = ((2 : F) * rho 73249)

def relationRow1493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73253) * ((2 : F) + (1 : F) * rho 73250 + (-1 : F) * rho 73251) = ((1 : F) * rho 73250 + (1 : F) * rho 73251)

def relationLc401 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 96⟩, ⟨(1 : F), 72013, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73252 + (1 : F) * rho 73253) * (relationLc401 rho) = ((1 : F) * rho 73254)

def relationLc402 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73253) * (relationLc402 rho) = ((1 : F) * rho 73255)

def relationLc403 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73252) * (relationLc403 rho) = ((1 : F) * rho 73256)

def relationRow1497 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73255) * ((1 : F) * rho 73256) = ((1 : F) * rho 73257)

def relationRow1498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73258) * ((1 : F) + (1 : F) * rho 73257) = ((1 : F) * rho 73255 + (1 : F) * rho 73256)

def relationRow1499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73259) * ((1 : F) + (-1 : F) * rho 73257) = ((1 : F) * rho 73254 + (-1 : F) * rho 73255 + (-1 : F) * rho 73256)

def relationLc404 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 96⟩], residual := [((1 : F), 73258)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71857) * (relationLc404 rho) = ((1 : F) * rho 73260)

def relationLc405 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 96⟩], residual := [((1 : F), 73259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71857) * (relationLc405 rho) = ((1 : F) * rho 73261)

def relationRow1502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73252) * ((1 : F) * rho 73253) = ((1 : F) * rho 73262)

def relationRow1503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73252) * ((1 : F) * rho 73252) = ((1 : F) * rho 73263)

def relationRow1504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73253) * ((1 : F) * rho 73253) = ((1 : F) * rho 73264)

def relationRow1505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73265) * ((-1 : F) * rho 73263 + (1 : F) * rho 73264) = ((2 : F) * rho 73262)

def relationRow1506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73266) * ((2 : F) + (1 : F) * rho 73263 + (-1 : F) * rho 73264) = ((1 : F) * rho 73263 + (1 : F) * rho 73264)

def relationLc406 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 97⟩, ⟨(1 : F), 72013, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73265 + (1 : F) * rho 73266) * (relationLc406 rho) = ((1 : F) * rho 73267)

def relationLc407 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73266) * (relationLc407 rho) = ((1 : F) * rho 73268)

def relationLc408 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73265) * (relationLc408 rho) = ((1 : F) * rho 73269)

def relationRow1510 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73268) * ((1 : F) * rho 73269) = ((1 : F) * rho 73270)

def relationRow1511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73271) * ((1 : F) + (1 : F) * rho 73270) = ((1 : F) * rho 73268 + (1 : F) * rho 73269)

def relationRow1512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73272) * ((1 : F) + (-1 : F) * rho 73270) = ((1 : F) * rho 73267 + (-1 : F) * rho 73268 + (-1 : F) * rho 73269)

def relationLc409 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 97⟩], residual := [((1 : F), 73271)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71858) * (relationLc409 rho) = ((1 : F) * rho 73273)

def relationLc410 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 97⟩], residual := [((1 : F), 73272)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71858) * (relationLc410 rho) = ((1 : F) * rho 73274)

def relationRow1515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73265) * ((1 : F) * rho 73266) = ((1 : F) * rho 73275)

def relationRow1516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73265) * ((1 : F) * rho 73265) = ((1 : F) * rho 73276)

def relationRow1517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73266) * ((1 : F) * rho 73266) = ((1 : F) * rho 73277)

def relationRow1518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73278) * ((-1 : F) * rho 73276 + (1 : F) * rho 73277) = ((2 : F) * rho 73275)

def relationRow1519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73279) * ((2 : F) + (1 : F) * rho 73276 + (-1 : F) * rho 73277) = ((1 : F) * rho 73276 + (1 : F) * rho 73277)

def relationLc411 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 98⟩, ⟨(1 : F), 72013, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73278 + (1 : F) * rho 73279) * (relationLc411 rho) = ((1 : F) * rho 73280)

def relationLc412 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73279) * (relationLc412 rho) = ((1 : F) * rho 73281)

def relationLc413 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73278) * (relationLc413 rho) = ((1 : F) * rho 73282)

def relationRow1523 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73281) * ((1 : F) * rho 73282) = ((1 : F) * rho 73283)

def relationRow1524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73284) * ((1 : F) + (1 : F) * rho 73283) = ((1 : F) * rho 73281 + (1 : F) * rho 73282)

def relationRow1525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73285) * ((1 : F) + (-1 : F) * rho 73283) = ((1 : F) * rho 73280 + (-1 : F) * rho 73281 + (-1 : F) * rho 73282)

def relationLc414 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 98⟩], residual := [((1 : F), 73284)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71859) * (relationLc414 rho) = ((1 : F) * rho 73286)

def relationLc415 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 98⟩], residual := [((1 : F), 73285)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71859) * (relationLc415 rho) = ((1 : F) * rho 73287)

def relationRow1528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73278) * ((1 : F) * rho 73279) = ((1 : F) * rho 73288)

def relationRow1529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73278) * ((1 : F) * rho 73278) = ((1 : F) * rho 73289)

def relationRow1530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73279) * ((1 : F) * rho 73279) = ((1 : F) * rho 73290)

def relationRow1531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73291) * ((-1 : F) * rho 73289 + (1 : F) * rho 73290) = ((2 : F) * rho 73288)

def relationRow1532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73292) * ((2 : F) + (1 : F) * rho 73289 + (-1 : F) * rho 73290) = ((1 : F) * rho 73289 + (1 : F) * rho 73290)

def relationLc416 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 99⟩, ⟨(1 : F), 72013, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73291 + (1 : F) * rho 73292) * (relationLc416 rho) = ((1 : F) * rho 73293)

def relationLc417 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73292) * (relationLc417 rho) = ((1 : F) * rho 73294)

def relationLc418 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73291) * (relationLc418 rho) = ((1 : F) * rho 73295)

def relationRow1536 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73294) * ((1 : F) * rho 73295) = ((1 : F) * rho 73296)

def relationRow1537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73297) * ((1 : F) + (1 : F) * rho 73296) = ((1 : F) * rho 73294 + (1 : F) * rho 73295)

def relationRow1538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73298) * ((1 : F) + (-1 : F) * rho 73296) = ((1 : F) * rho 73293 + (-1 : F) * rho 73294 + (-1 : F) * rho 73295)

def relationLc419 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 99⟩], residual := [((1 : F), 73297)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71860) * (relationLc419 rho) = ((1 : F) * rho 73299)

def relationLc420 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 99⟩], residual := [((1 : F), 73298)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71860) * (relationLc420 rho) = ((1 : F) * rho 73300)

def relationRow1541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73291) * ((1 : F) * rho 73292) = ((1 : F) * rho 73301)

def relationRow1542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73291) * ((1 : F) * rho 73291) = ((1 : F) * rho 73302)

def relationRow1543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73292) * ((1 : F) * rho 73292) = ((1 : F) * rho 73303)

def relationRow1544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73304) * ((-1 : F) * rho 73302 + (1 : F) * rho 73303) = ((2 : F) * rho 73301)

def relationRow1545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73305) * ((2 : F) + (1 : F) * rho 73302 + (-1 : F) * rho 73303) = ((1 : F) * rho 73302 + (1 : F) * rho 73303)

def relationLc421 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 100⟩, ⟨(1 : F), 72013, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73304 + (1 : F) * rho 73305) * (relationLc421 rho) = ((1 : F) * rho 73306)

def relationLc422 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73305) * (relationLc422 rho) = ((1 : F) * rho 73307)

def relationLc423 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73304) * (relationLc423 rho) = ((1 : F) * rho 73308)

def relationRow1549 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73307) * ((1 : F) * rho 73308) = ((1 : F) * rho 73309)

def relationRow1550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73310) * ((1 : F) + (1 : F) * rho 73309) = ((1 : F) * rho 73307 + (1 : F) * rho 73308)

def relationRow1551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73311) * ((1 : F) + (-1 : F) * rho 73309) = ((1 : F) * rho 73306 + (-1 : F) * rho 73307 + (-1 : F) * rho 73308)

def relationLc424 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 100⟩], residual := [((1 : F), 73310)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71861) * (relationLc424 rho) = ((1 : F) * rho 73312)

def relationLc425 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 100⟩], residual := [((1 : F), 73311)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71861) * (relationLc425 rho) = ((1 : F) * rho 73313)

def relationRow1554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73304) * ((1 : F) * rho 73305) = ((1 : F) * rho 73314)

def relationRow1555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73304) * ((1 : F) * rho 73304) = ((1 : F) * rho 73315)

def relationRow1556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73305) * ((1 : F) * rho 73305) = ((1 : F) * rho 73316)

def relationRow1557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73317) * ((-1 : F) * rho 73315 + (1 : F) * rho 73316) = ((2 : F) * rho 73314)

def relationRow1558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73318) * ((2 : F) + (1 : F) * rho 73315 + (-1 : F) * rho 73316) = ((1 : F) * rho 73315 + (1 : F) * rho 73316)

def relationLc426 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 101⟩, ⟨(1 : F), 72013, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73317 + (1 : F) * rho 73318) * (relationLc426 rho) = ((1 : F) * rho 73319)

def relationLc427 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73318) * (relationLc427 rho) = ((1 : F) * rho 73320)

def relationLc428 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73317) * (relationLc428 rho) = ((1 : F) * rho 73321)

def relationRow1562 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73320) * ((1 : F) * rho 73321) = ((1 : F) * rho 73322)

def relationRow1563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73323) * ((1 : F) + (1 : F) * rho 73322) = ((1 : F) * rho 73320 + (1 : F) * rho 73321)

def relationRow1564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73324) * ((1 : F) + (-1 : F) * rho 73322) = ((1 : F) * rho 73319 + (-1 : F) * rho 73320 + (-1 : F) * rho 73321)

def relationLc429 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 101⟩], residual := [((1 : F), 73323)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71862) * (relationLc429 rho) = ((1 : F) * rho 73325)

def relationLc430 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 101⟩], residual := [((1 : F), 73324)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71862) * (relationLc430 rho) = ((1 : F) * rho 73326)

def relationRow1567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73317) * ((1 : F) * rho 73318) = ((1 : F) * rho 73327)

def relationRow1568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73317) * ((1 : F) * rho 73317) = ((1 : F) * rho 73328)

def relationRow1569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73318) * ((1 : F) * rho 73318) = ((1 : F) * rho 73329)

def relationRow1570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73330) * ((-1 : F) * rho 73328 + (1 : F) * rho 73329) = ((2 : F) * rho 73327)

def relationRow1571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73331) * ((2 : F) + (1 : F) * rho 73328 + (-1 : F) * rho 73329) = ((1 : F) * rho 73328 + (1 : F) * rho 73329)

def relationLc431 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 102⟩, ⟨(1 : F), 72013, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73330 + (1 : F) * rho 73331) * (relationLc431 rho) = ((1 : F) * rho 73332)

def relationLc432 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73331) * (relationLc432 rho) = ((1 : F) * rho 73333)

def relationLc433 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73330) * (relationLc433 rho) = ((1 : F) * rho 73334)

def relationRow1575 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73333) * ((1 : F) * rho 73334) = ((1 : F) * rho 73335)

def relationRow1576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73336) * ((1 : F) + (1 : F) * rho 73335) = ((1 : F) * rho 73333 + (1 : F) * rho 73334)

def relationRow1577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73337) * ((1 : F) + (-1 : F) * rho 73335) = ((1 : F) * rho 73332 + (-1 : F) * rho 73333 + (-1 : F) * rho 73334)

def relationLc434 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 102⟩], residual := [((1 : F), 73336)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71863) * (relationLc434 rho) = ((1 : F) * rho 73338)

def relationLc435 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 102⟩], residual := [((1 : F), 73337)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71863) * (relationLc435 rho) = ((1 : F) * rho 73339)

def relationRow1580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73330) * ((1 : F) * rho 73331) = ((1 : F) * rho 73340)

def relationRow1581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73330) * ((1 : F) * rho 73330) = ((1 : F) * rho 73341)

def relationRow1582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73331) * ((1 : F) * rho 73331) = ((1 : F) * rho 73342)

def relationRow1583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73343) * ((-1 : F) * rho 73341 + (1 : F) * rho 73342) = ((2 : F) * rho 73340)

def relationRow1584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73344) * ((2 : F) + (1 : F) * rho 73341 + (-1 : F) * rho 73342) = ((1 : F) * rho 73341 + (1 : F) * rho 73342)

def relationLc436 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 103⟩, ⟨(1 : F), 72013, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73343 + (1 : F) * rho 73344) * (relationLc436 rho) = ((1 : F) * rho 73345)

def relationLc437 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73344) * (relationLc437 rho) = ((1 : F) * rho 73346)

def relationLc438 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73343) * (relationLc438 rho) = ((1 : F) * rho 73347)

def relationRow1588 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73346) * ((1 : F) * rho 73347) = ((1 : F) * rho 73348)

def relationRow1589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73349) * ((1 : F) + (1 : F) * rho 73348) = ((1 : F) * rho 73346 + (1 : F) * rho 73347)

def relationRow1590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73350) * ((1 : F) + (-1 : F) * rho 73348) = ((1 : F) * rho 73345 + (-1 : F) * rho 73346 + (-1 : F) * rho 73347)

def relationLc439 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 103⟩], residual := [((1 : F), 73349)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71864) * (relationLc439 rho) = ((1 : F) * rho 73351)

def relationLc440 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 103⟩], residual := [((1 : F), 73350)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71864) * (relationLc440 rho) = ((1 : F) * rho 73352)

def relationRow1593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73343) * ((1 : F) * rho 73344) = ((1 : F) * rho 73353)

def relationRow1594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73343) * ((1 : F) * rho 73343) = ((1 : F) * rho 73354)

def relationRow1595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73344) * ((1 : F) * rho 73344) = ((1 : F) * rho 73355)

def relationRow1596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73356) * ((-1 : F) * rho 73354 + (1 : F) * rho 73355) = ((2 : F) * rho 73353)

def relationRow1597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73357) * ((2 : F) + (1 : F) * rho 73354 + (-1 : F) * rho 73355) = ((1 : F) * rho 73354 + (1 : F) * rho 73355)

def relationLc441 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 104⟩, ⟨(1 : F), 72013, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73356 + (1 : F) * rho 73357) * (relationLc441 rho) = ((1 : F) * rho 73358)

def relationLc442 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73357) * (relationLc442 rho) = ((1 : F) * rho 73359)

def relationLc443 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73356) * (relationLc443 rho) = ((1 : F) * rho 73360)

def relationRow1601 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73359) * ((1 : F) * rho 73360) = ((1 : F) * rho 73361)

def relationRow1602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73362) * ((1 : F) + (1 : F) * rho 73361) = ((1 : F) * rho 73359 + (1 : F) * rho 73360)

def relationRow1603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73363) * ((1 : F) + (-1 : F) * rho 73361) = ((1 : F) * rho 73358 + (-1 : F) * rho 73359 + (-1 : F) * rho 73360)

def relationLc444 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 104⟩], residual := [((1 : F), 73362)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71865) * (relationLc444 rho) = ((1 : F) * rho 73364)

def relationLc445 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 104⟩], residual := [((1 : F), 73363)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71865) * (relationLc445 rho) = ((1 : F) * rho 73365)

def relationRow1606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73356) * ((1 : F) * rho 73357) = ((1 : F) * rho 73366)

def relationRow1607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73356) * ((1 : F) * rho 73356) = ((1 : F) * rho 73367)

def relationRow1608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73357) * ((1 : F) * rho 73357) = ((1 : F) * rho 73368)

def relationRow1609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73369) * ((-1 : F) * rho 73367 + (1 : F) * rho 73368) = ((2 : F) * rho 73366)

def relationRow1610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73370) * ((2 : F) + (1 : F) * rho 73367 + (-1 : F) * rho 73368) = ((1 : F) * rho 73367 + (1 : F) * rho 73368)

def relationLc446 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 105⟩, ⟨(1 : F), 72013, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73369 + (1 : F) * rho 73370) * (relationLc446 rho) = ((1 : F) * rho 73371)

def relationLc447 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73370) * (relationLc447 rho) = ((1 : F) * rho 73372)

def relationLc448 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73369) * (relationLc448 rho) = ((1 : F) * rho 73373)

def relationRow1614 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73372) * ((1 : F) * rho 73373) = ((1 : F) * rho 73374)

def relationRow1615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73375) * ((1 : F) + (1 : F) * rho 73374) = ((1 : F) * rho 73372 + (1 : F) * rho 73373)

def relationRow1616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73376) * ((1 : F) + (-1 : F) * rho 73374) = ((1 : F) * rho 73371 + (-1 : F) * rho 73372 + (-1 : F) * rho 73373)

def relationLc449 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 105⟩], residual := [((1 : F), 73375)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71866) * (relationLc449 rho) = ((1 : F) * rho 73377)

def relationLc450 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 105⟩], residual := [((1 : F), 73376)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71866) * (relationLc450 rho) = ((1 : F) * rho 73378)

def relationRow1619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73369) * ((1 : F) * rho 73370) = ((1 : F) * rho 73379)

def relationRow1620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73369) * ((1 : F) * rho 73369) = ((1 : F) * rho 73380)

def relationRow1621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73370) * ((1 : F) * rho 73370) = ((1 : F) * rho 73381)

def relationRow1622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73382) * ((-1 : F) * rho 73380 + (1 : F) * rho 73381) = ((2 : F) * rho 73379)

def relationRow1623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73383) * ((2 : F) + (1 : F) * rho 73380 + (-1 : F) * rho 73381) = ((1 : F) * rho 73380 + (1 : F) * rho 73381)

def relationLc451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 106⟩, ⟨(1 : F), 72013, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73382 + (1 : F) * rho 73383) * (relationLc451 rho) = ((1 : F) * rho 73384)

def relationLc452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73383) * (relationLc452 rho) = ((1 : F) * rho 73385)

def relationLc453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73382) * (relationLc453 rho) = ((1 : F) * rho 73386)

def relationRow1627 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73385) * ((1 : F) * rho 73386) = ((1 : F) * rho 73387)

def relationRow1628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73388) * ((1 : F) + (1 : F) * rho 73387) = ((1 : F) * rho 73385 + (1 : F) * rho 73386)

def relationRow1629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73389) * ((1 : F) + (-1 : F) * rho 73387) = ((1 : F) * rho 73384 + (-1 : F) * rho 73385 + (-1 : F) * rho 73386)

def relationLc454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 106⟩], residual := [((1 : F), 73388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71867) * (relationLc454 rho) = ((1 : F) * rho 73390)

def relationLc455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 106⟩], residual := [((1 : F), 73389)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71867) * (relationLc455 rho) = ((1 : F) * rho 73391)

def relationRow1632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73382) * ((1 : F) * rho 73383) = ((1 : F) * rho 73392)

def relationRow1633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73382) * ((1 : F) * rho 73382) = ((1 : F) * rho 73393)

def relationRow1634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73383) * ((1 : F) * rho 73383) = ((1 : F) * rho 73394)

def relationRow1635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73395) * ((-1 : F) * rho 73393 + (1 : F) * rho 73394) = ((2 : F) * rho 73392)

def relationRow1636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73396) * ((2 : F) + (1 : F) * rho 73393 + (-1 : F) * rho 73394) = ((1 : F) * rho 73393 + (1 : F) * rho 73394)

def relationLc456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 107⟩, ⟨(1 : F), 72013, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73395 + (1 : F) * rho 73396) * (relationLc456 rho) = ((1 : F) * rho 73397)

def relationLc457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73396) * (relationLc457 rho) = ((1 : F) * rho 73398)

def relationLc458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73395) * (relationLc458 rho) = ((1 : F) * rho 73399)

def relationRow1640 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73398) * ((1 : F) * rho 73399) = ((1 : F) * rho 73400)

def relationRow1641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73401) * ((1 : F) + (1 : F) * rho 73400) = ((1 : F) * rho 73398 + (1 : F) * rho 73399)

def relationRow1642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73402) * ((1 : F) + (-1 : F) * rho 73400) = ((1 : F) * rho 73397 + (-1 : F) * rho 73398 + (-1 : F) * rho 73399)

def relationLc459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 107⟩], residual := [((1 : F), 73401)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71868) * (relationLc459 rho) = ((1 : F) * rho 73403)

def relationLc460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 107⟩], residual := [((1 : F), 73402)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71868) * (relationLc460 rho) = ((1 : F) * rho 73404)

def relationRow1645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73395) * ((1 : F) * rho 73396) = ((1 : F) * rho 73405)

def relationRow1646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73395) * ((1 : F) * rho 73395) = ((1 : F) * rho 73406)

def relationRow1647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73396) * ((1 : F) * rho 73396) = ((1 : F) * rho 73407)

def relationRow1648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73408) * ((-1 : F) * rho 73406 + (1 : F) * rho 73407) = ((2 : F) * rho 73405)

def relationRow1649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73409) * ((2 : F) + (1 : F) * rho 73406 + (-1 : F) * rho 73407) = ((1 : F) * rho 73406 + (1 : F) * rho 73407)

def relationLc461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 108⟩, ⟨(1 : F), 72013, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73408 + (1 : F) * rho 73409) * (relationLc461 rho) = ((1 : F) * rho 73410)

def relationLc462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73409) * (relationLc462 rho) = ((1 : F) * rho 73411)

def relationLc463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73408) * (relationLc463 rho) = ((1 : F) * rho 73412)

def relationRow1653 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73411) * ((1 : F) * rho 73412) = ((1 : F) * rho 73413)

def relationRow1654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73414) * ((1 : F) + (1 : F) * rho 73413) = ((1 : F) * rho 73411 + (1 : F) * rho 73412)

def relationRow1655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73415) * ((1 : F) + (-1 : F) * rho 73413) = ((1 : F) * rho 73410 + (-1 : F) * rho 73411 + (-1 : F) * rho 73412)

def relationLc464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 108⟩], residual := [((1 : F), 73414)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71869) * (relationLc464 rho) = ((1 : F) * rho 73416)

def relationLc465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 108⟩], residual := [((1 : F), 73415)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71869) * (relationLc465 rho) = ((1 : F) * rho 73417)

def relationRow1658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73408) * ((1 : F) * rho 73409) = ((1 : F) * rho 73418)

def relationRow1659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73408) * ((1 : F) * rho 73408) = ((1 : F) * rho 73419)

def relationRow1660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73409) * ((1 : F) * rho 73409) = ((1 : F) * rho 73420)

def relationRow1661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73421) * ((-1 : F) * rho 73419 + (1 : F) * rho 73420) = ((2 : F) * rho 73418)

def relationRow1662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73422) * ((2 : F) + (1 : F) * rho 73419 + (-1 : F) * rho 73420) = ((1 : F) * rho 73419 + (1 : F) * rho 73420)

def relationLc466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 109⟩, ⟨(1 : F), 72013, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73421 + (1 : F) * rho 73422) * (relationLc466 rho) = ((1 : F) * rho 73423)

def relationLc467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73422) * (relationLc467 rho) = ((1 : F) * rho 73424)

def relationLc468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73421) * (relationLc468 rho) = ((1 : F) * rho 73425)

def relationRow1666 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73424) * ((1 : F) * rho 73425) = ((1 : F) * rho 73426)

def relationRow1667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73427) * ((1 : F) + (1 : F) * rho 73426) = ((1 : F) * rho 73424 + (1 : F) * rho 73425)

def relationRow1668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73428) * ((1 : F) + (-1 : F) * rho 73426) = ((1 : F) * rho 73423 + (-1 : F) * rho 73424 + (-1 : F) * rho 73425)

def relationLc469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 109⟩], residual := [((1 : F), 73427)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71870) * (relationLc469 rho) = ((1 : F) * rho 73429)

def relationLc470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 109⟩], residual := [((1 : F), 73428)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71870) * (relationLc470 rho) = ((1 : F) * rho 73430)

def relationRow1671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73421) * ((1 : F) * rho 73422) = ((1 : F) * rho 73431)

def relationRow1672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73421) * ((1 : F) * rho 73421) = ((1 : F) * rho 73432)

def relationRow1673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73422) * ((1 : F) * rho 73422) = ((1 : F) * rho 73433)

def relationRow1674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73434) * ((-1 : F) * rho 73432 + (1 : F) * rho 73433) = ((2 : F) * rho 73431)

def relationRow1675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73435) * ((2 : F) + (1 : F) * rho 73432 + (-1 : F) * rho 73433) = ((1 : F) * rho 73432 + (1 : F) * rho 73433)

def relationLc471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 110⟩, ⟨(1 : F), 72013, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73434 + (1 : F) * rho 73435) * (relationLc471 rho) = ((1 : F) * rho 73436)

def relationLc472 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73435) * (relationLc472 rho) = ((1 : F) * rho 73437)

def relationLc473 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73434) * (relationLc473 rho) = ((1 : F) * rho 73438)

def relationRow1679 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73437) * ((1 : F) * rho 73438) = ((1 : F) * rho 73439)

def relationRow1680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73440) * ((1 : F) + (1 : F) * rho 73439) = ((1 : F) * rho 73437 + (1 : F) * rho 73438)

def relationRow1681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73441) * ((1 : F) + (-1 : F) * rho 73439) = ((1 : F) * rho 73436 + (-1 : F) * rho 73437 + (-1 : F) * rho 73438)

def relationLc474 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 110⟩], residual := [((1 : F), 73440)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71871) * (relationLc474 rho) = ((1 : F) * rho 73442)

def relationLc475 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 110⟩], residual := [((1 : F), 73441)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71871) * (relationLc475 rho) = ((1 : F) * rho 73443)

def relationRow1684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73434) * ((1 : F) * rho 73435) = ((1 : F) * rho 73444)

def relationRow1685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73434) * ((1 : F) * rho 73434) = ((1 : F) * rho 73445)

def relationRow1686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73435) * ((1 : F) * rho 73435) = ((1 : F) * rho 73446)

def relationRow1687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73447) * ((-1 : F) * rho 73445 + (1 : F) * rho 73446) = ((2 : F) * rho 73444)

def relationRow1688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73448) * ((2 : F) + (1 : F) * rho 73445 + (-1 : F) * rho 73446) = ((1 : F) * rho 73445 + (1 : F) * rho 73446)

def relationLc476 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 111⟩, ⟨(1 : F), 72013, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73447 + (1 : F) * rho 73448) * (relationLc476 rho) = ((1 : F) * rho 73449)

def relationLc477 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73448) * (relationLc477 rho) = ((1 : F) * rho 73450)

def relationLc478 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73447) * (relationLc478 rho) = ((1 : F) * rho 73451)

def relationRow1692 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73450) * ((1 : F) * rho 73451) = ((1 : F) * rho 73452)

def relationRow1693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73453) * ((1 : F) + (1 : F) * rho 73452) = ((1 : F) * rho 73450 + (1 : F) * rho 73451)

def relationRow1694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73454) * ((1 : F) + (-1 : F) * rho 73452) = ((1 : F) * rho 73449 + (-1 : F) * rho 73450 + (-1 : F) * rho 73451)

def relationLc479 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 111⟩], residual := [((1 : F), 73453)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71872) * (relationLc479 rho) = ((1 : F) * rho 73455)

def relationLc480 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 111⟩], residual := [((1 : F), 73454)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71872) * (relationLc480 rho) = ((1 : F) * rho 73456)

def relationRow1697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73447) * ((1 : F) * rho 73448) = ((1 : F) * rho 73457)

def relationRow1698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73447) * ((1 : F) * rho 73447) = ((1 : F) * rho 73458)

def relationRow1699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73448) * ((1 : F) * rho 73448) = ((1 : F) * rho 73459)

def relationRow1700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73460) * ((-1 : F) * rho 73458 + (1 : F) * rho 73459) = ((2 : F) * rho 73457)

def relationRow1701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73461) * ((2 : F) + (1 : F) * rho 73458 + (-1 : F) * rho 73459) = ((1 : F) * rho 73458 + (1 : F) * rho 73459)

def relationLc481 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 112⟩, ⟨(1 : F), 72013, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73460 + (1 : F) * rho 73461) * (relationLc481 rho) = ((1 : F) * rho 73462)

def relationLc482 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73461) * (relationLc482 rho) = ((1 : F) * rho 73463)

def relationLc483 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73460) * (relationLc483 rho) = ((1 : F) * rho 73464)

def relationRow1705 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73463) * ((1 : F) * rho 73464) = ((1 : F) * rho 73465)

def relationRow1706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73466) * ((1 : F) + (1 : F) * rho 73465) = ((1 : F) * rho 73463 + (1 : F) * rho 73464)

def relationRow1707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73467) * ((1 : F) + (-1 : F) * rho 73465) = ((1 : F) * rho 73462 + (-1 : F) * rho 73463 + (-1 : F) * rho 73464)

def relationLc484 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 112⟩], residual := [((1 : F), 73466)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71873) * (relationLc484 rho) = ((1 : F) * rho 73468)

def relationLc485 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 112⟩], residual := [((1 : F), 73467)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71873) * (relationLc485 rho) = ((1 : F) * rho 73469)

def relationRow1710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73460) * ((1 : F) * rho 73461) = ((1 : F) * rho 73470)

def relationRow1711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73460) * ((1 : F) * rho 73460) = ((1 : F) * rho 73471)

def relationRow1712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73461) * ((1 : F) * rho 73461) = ((1 : F) * rho 73472)

def relationRow1713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73473) * ((-1 : F) * rho 73471 + (1 : F) * rho 73472) = ((2 : F) * rho 73470)

def relationRow1714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73474) * ((2 : F) + (1 : F) * rho 73471 + (-1 : F) * rho 73472) = ((1 : F) * rho 73471 + (1 : F) * rho 73472)

def relationLc486 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 113⟩, ⟨(1 : F), 72013, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73473 + (1 : F) * rho 73474) * (relationLc486 rho) = ((1 : F) * rho 73475)

def relationLc487 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73474) * (relationLc487 rho) = ((1 : F) * rho 73476)

def relationLc488 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73473) * (relationLc488 rho) = ((1 : F) * rho 73477)

def relationRow1718 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73476) * ((1 : F) * rho 73477) = ((1 : F) * rho 73478)

def relationRow1719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73479) * ((1 : F) + (1 : F) * rho 73478) = ((1 : F) * rho 73476 + (1 : F) * rho 73477)

def relationRow1720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73480) * ((1 : F) + (-1 : F) * rho 73478) = ((1 : F) * rho 73475 + (-1 : F) * rho 73476 + (-1 : F) * rho 73477)

def relationLc489 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 113⟩], residual := [((1 : F), 73479)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71874) * (relationLc489 rho) = ((1 : F) * rho 73481)

def relationLc490 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 113⟩], residual := [((1 : F), 73480)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71874) * (relationLc490 rho) = ((1 : F) * rho 73482)

def relationRow1723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73473) * ((1 : F) * rho 73474) = ((1 : F) * rho 73483)

def relationRow1724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73473) * ((1 : F) * rho 73473) = ((1 : F) * rho 73484)

def relationRow1725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73474) * ((1 : F) * rho 73474) = ((1 : F) * rho 73485)

def relationRow1726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73486) * ((-1 : F) * rho 73484 + (1 : F) * rho 73485) = ((2 : F) * rho 73483)

def relationRow1727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73487) * ((2 : F) + (1 : F) * rho 73484 + (-1 : F) * rho 73485) = ((1 : F) * rho 73484 + (1 : F) * rho 73485)

def relationLc491 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 114⟩, ⟨(1 : F), 72013, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73486 + (1 : F) * rho 73487) * (relationLc491 rho) = ((1 : F) * rho 73488)

def relationLc492 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73487) * (relationLc492 rho) = ((1 : F) * rho 73489)

def relationLc493 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73486) * (relationLc493 rho) = ((1 : F) * rho 73490)

def relationRow1731 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73489) * ((1 : F) * rho 73490) = ((1 : F) * rho 73491)

def relationRow1732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73492) * ((1 : F) + (1 : F) * rho 73491) = ((1 : F) * rho 73489 + (1 : F) * rho 73490)

def relationRow1733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73493) * ((1 : F) + (-1 : F) * rho 73491) = ((1 : F) * rho 73488 + (-1 : F) * rho 73489 + (-1 : F) * rho 73490)

def relationLc494 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 114⟩], residual := [((1 : F), 73492)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71875) * (relationLc494 rho) = ((1 : F) * rho 73494)

def relationLc495 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 114⟩], residual := [((1 : F), 73493)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71875) * (relationLc495 rho) = ((1 : F) * rho 73495)

def relationRow1736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73486) * ((1 : F) * rho 73487) = ((1 : F) * rho 73496)

def relationRow1737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73486) * ((1 : F) * rho 73486) = ((1 : F) * rho 73497)

def relationRow1738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73487) * ((1 : F) * rho 73487) = ((1 : F) * rho 73498)

def relationRow1739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73499) * ((-1 : F) * rho 73497 + (1 : F) * rho 73498) = ((2 : F) * rho 73496)

def relationRow1740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73500) * ((2 : F) + (1 : F) * rho 73497 + (-1 : F) * rho 73498) = ((1 : F) * rho 73497 + (1 : F) * rho 73498)

def relationLc496 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 115⟩, ⟨(1 : F), 72013, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73499 + (1 : F) * rho 73500) * (relationLc496 rho) = ((1 : F) * rho 73501)

def relationLc497 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73500) * (relationLc497 rho) = ((1 : F) * rho 73502)

def relationLc498 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73499) * (relationLc498 rho) = ((1 : F) * rho 73503)

def relationRow1744 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73502) * ((1 : F) * rho 73503) = ((1 : F) * rho 73504)

def relationRow1745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73505) * ((1 : F) + (1 : F) * rho 73504) = ((1 : F) * rho 73502 + (1 : F) * rho 73503)

def relationRow1746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73506) * ((1 : F) + (-1 : F) * rho 73504) = ((1 : F) * rho 73501 + (-1 : F) * rho 73502 + (-1 : F) * rho 73503)

def relationLc499 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 115⟩], residual := [((1 : F), 73505)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71876) * (relationLc499 rho) = ((1 : F) * rho 73507)

def relationLc500 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 115⟩], residual := [((1 : F), 73506)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71876) * (relationLc500 rho) = ((1 : F) * rho 73508)

def relationRow1749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73499) * ((1 : F) * rho 73500) = ((1 : F) * rho 73509)

def relationRow1750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73499) * ((1 : F) * rho 73499) = ((1 : F) * rho 73510)

def relationRow1751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73500) * ((1 : F) * rho 73500) = ((1 : F) * rho 73511)

def relationRow1752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73512) * ((-1 : F) * rho 73510 + (1 : F) * rho 73511) = ((2 : F) * rho 73509)

def relationRow1753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73513) * ((2 : F) + (1 : F) * rho 73510 + (-1 : F) * rho 73511) = ((1 : F) * rho 73510 + (1 : F) * rho 73511)

def relationLc501 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 116⟩, ⟨(1 : F), 72013, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73512 + (1 : F) * rho 73513) * (relationLc501 rho) = ((1 : F) * rho 73514)

def relationLc502 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73513) * (relationLc502 rho) = ((1 : F) * rho 73515)

def relationLc503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73512) * (relationLc503 rho) = ((1 : F) * rho 73516)

def relationRow1757 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73515) * ((1 : F) * rho 73516) = ((1 : F) * rho 73517)

def relationRow1758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73518) * ((1 : F) + (1 : F) * rho 73517) = ((1 : F) * rho 73515 + (1 : F) * rho 73516)

def relationRow1759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73519) * ((1 : F) + (-1 : F) * rho 73517) = ((1 : F) * rho 73514 + (-1 : F) * rho 73515 + (-1 : F) * rho 73516)

def relationLc504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 116⟩], residual := [((1 : F), 73518)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71877) * (relationLc504 rho) = ((1 : F) * rho 73520)

def relationLc505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 116⟩], residual := [((1 : F), 73519)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71877) * (relationLc505 rho) = ((1 : F) * rho 73521)

def relationRow1762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73512) * ((1 : F) * rho 73513) = ((1 : F) * rho 73522)

def relationRow1763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73512) * ((1 : F) * rho 73512) = ((1 : F) * rho 73523)

def relationRow1764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73513) * ((1 : F) * rho 73513) = ((1 : F) * rho 73524)

def relationRow1765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73525) * ((-1 : F) * rho 73523 + (1 : F) * rho 73524) = ((2 : F) * rho 73522)

def relationRow1766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73526) * ((2 : F) + (1 : F) * rho 73523 + (-1 : F) * rho 73524) = ((1 : F) * rho 73523 + (1 : F) * rho 73524)

def relationLc506 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 117⟩, ⟨(1 : F), 72013, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73525 + (1 : F) * rho 73526) * (relationLc506 rho) = ((1 : F) * rho 73527)

def relationLc507 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73526) * (relationLc507 rho) = ((1 : F) * rho 73528)

def relationLc508 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73525) * (relationLc508 rho) = ((1 : F) * rho 73529)

def relationRow1770 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73528) * ((1 : F) * rho 73529) = ((1 : F) * rho 73530)

def relationRow1771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73531) * ((1 : F) + (1 : F) * rho 73530) = ((1 : F) * rho 73528 + (1 : F) * rho 73529)

def relationRow1772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73532) * ((1 : F) + (-1 : F) * rho 73530) = ((1 : F) * rho 73527 + (-1 : F) * rho 73528 + (-1 : F) * rho 73529)

def relationLc509 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 117⟩], residual := [((1 : F), 73531)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71878) * (relationLc509 rho) = ((1 : F) * rho 73533)

def relationLc510 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 117⟩], residual := [((1 : F), 73532)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71878) * (relationLc510 rho) = ((1 : F) * rho 73534)

def relationRow1775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73525) * ((1 : F) * rho 73526) = ((1 : F) * rho 73535)

def relationRow1776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73525) * ((1 : F) * rho 73525) = ((1 : F) * rho 73536)

def relationRow1777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73526) * ((1 : F) * rho 73526) = ((1 : F) * rho 73537)

def relationRow1778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73538) * ((-1 : F) * rho 73536 + (1 : F) * rho 73537) = ((2 : F) * rho 73535)

def relationRow1779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73539) * ((2 : F) + (1 : F) * rho 73536 + (-1 : F) * rho 73537) = ((1 : F) * rho 73536 + (1 : F) * rho 73537)

def relationLc511 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 118⟩, ⟨(1 : F), 72013, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73538 + (1 : F) * rho 73539) * (relationLc511 rho) = ((1 : F) * rho 73540)

def relationLc512 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73539) * (relationLc512 rho) = ((1 : F) * rho 73541)

def relationLc513 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73538) * (relationLc513 rho) = ((1 : F) * rho 73542)

def relationRow1783 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73541) * ((1 : F) * rho 73542) = ((1 : F) * rho 73543)

def relationRow1784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73544) * ((1 : F) + (1 : F) * rho 73543) = ((1 : F) * rho 73541 + (1 : F) * rho 73542)

def relationRow1785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73545) * ((1 : F) + (-1 : F) * rho 73543) = ((1 : F) * rho 73540 + (-1 : F) * rho 73541 + (-1 : F) * rho 73542)

def relationLc514 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 118⟩], residual := [((1 : F), 73544)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71879) * (relationLc514 rho) = ((1 : F) * rho 73546)

def relationLc515 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 118⟩], residual := [((1 : F), 73545)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71879) * (relationLc515 rho) = ((1 : F) * rho 73547)

def relationRow1788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73538) * ((1 : F) * rho 73539) = ((1 : F) * rho 73548)

def relationRow1789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73538) * ((1 : F) * rho 73538) = ((1 : F) * rho 73549)

def relationRow1790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73539) * ((1 : F) * rho 73539) = ((1 : F) * rho 73550)

def relationRow1791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73551) * ((-1 : F) * rho 73549 + (1 : F) * rho 73550) = ((2 : F) * rho 73548)

def relationRow1792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73552) * ((2 : F) + (1 : F) * rho 73549 + (-1 : F) * rho 73550) = ((1 : F) * rho 73549 + (1 : F) * rho 73550)

def relationLc516 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 119⟩, ⟨(1 : F), 72013, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73551 + (1 : F) * rho 73552) * (relationLc516 rho) = ((1 : F) * rho 73553)

def relationLc517 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73552) * (relationLc517 rho) = ((1 : F) * rho 73554)

def relationLc518 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73551) * (relationLc518 rho) = ((1 : F) * rho 73555)

def relationRow1796 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73554) * ((1 : F) * rho 73555) = ((1 : F) * rho 73556)

def relationRow1797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73557) * ((1 : F) + (1 : F) * rho 73556) = ((1 : F) * rho 73554 + (1 : F) * rho 73555)

def relationRow1798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73558) * ((1 : F) + (-1 : F) * rho 73556) = ((1 : F) * rho 73553 + (-1 : F) * rho 73554 + (-1 : F) * rho 73555)

def relationLc519 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 119⟩], residual := [((1 : F), 73557)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71880) * (relationLc519 rho) = ((1 : F) * rho 73559)

def relationLc520 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 119⟩], residual := [((1 : F), 73558)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71880) * (relationLc520 rho) = ((1 : F) * rho 73560)

def relationRow1801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73551) * ((1 : F) * rho 73552) = ((1 : F) * rho 73561)

def relationRow1802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73551) * ((1 : F) * rho 73551) = ((1 : F) * rho 73562)

def relationRow1803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73552) * ((1 : F) * rho 73552) = ((1 : F) * rho 73563)

def relationRow1804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73564) * ((-1 : F) * rho 73562 + (1 : F) * rho 73563) = ((2 : F) * rho 73561)

def relationRow1805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73565) * ((2 : F) + (1 : F) * rho 73562 + (-1 : F) * rho 73563) = ((1 : F) * rho 73562 + (1 : F) * rho 73563)

def relationLc521 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 120⟩, ⟨(1 : F), 72013, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73564 + (1 : F) * rho 73565) * (relationLc521 rho) = ((1 : F) * rho 73566)

def relationLc522 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73565) * (relationLc522 rho) = ((1 : F) * rho 73567)

def relationLc523 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73564) * (relationLc523 rho) = ((1 : F) * rho 73568)

def relationRow1809 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73567) * ((1 : F) * rho 73568) = ((1 : F) * rho 73569)

def relationRow1810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73570) * ((1 : F) + (1 : F) * rho 73569) = ((1 : F) * rho 73567 + (1 : F) * rho 73568)

def relationRow1811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73571) * ((1 : F) + (-1 : F) * rho 73569) = ((1 : F) * rho 73566 + (-1 : F) * rho 73567 + (-1 : F) * rho 73568)

def relationLc524 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 120⟩], residual := [((1 : F), 73570)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71881) * (relationLc524 rho) = ((1 : F) * rho 73572)

def relationLc525 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 120⟩], residual := [((1 : F), 73571)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71881) * (relationLc525 rho) = ((1 : F) * rho 73573)

def relationRow1814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73564) * ((1 : F) * rho 73565) = ((1 : F) * rho 73574)

def relationRow1815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73564) * ((1 : F) * rho 73564) = ((1 : F) * rho 73575)

def relationRow1816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73565) * ((1 : F) * rho 73565) = ((1 : F) * rho 73576)

def relationRow1817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73577) * ((-1 : F) * rho 73575 + (1 : F) * rho 73576) = ((2 : F) * rho 73574)

def relationRow1818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73578) * ((2 : F) + (1 : F) * rho 73575 + (-1 : F) * rho 73576) = ((1 : F) * rho 73575 + (1 : F) * rho 73576)

def relationLc526 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 121⟩, ⟨(1 : F), 72013, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73577 + (1 : F) * rho 73578) * (relationLc526 rho) = ((1 : F) * rho 73579)

def relationLc527 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73578) * (relationLc527 rho) = ((1 : F) * rho 73580)

def relationLc528 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73577) * (relationLc528 rho) = ((1 : F) * rho 73581)

def relationRow1822 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73580) * ((1 : F) * rho 73581) = ((1 : F) * rho 73582)

def relationRow1823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73583) * ((1 : F) + (1 : F) * rho 73582) = ((1 : F) * rho 73580 + (1 : F) * rho 73581)

def relationRow1824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73584) * ((1 : F) + (-1 : F) * rho 73582) = ((1 : F) * rho 73579 + (-1 : F) * rho 73580 + (-1 : F) * rho 73581)

def relationLc529 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 121⟩], residual := [((1 : F), 73583)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71882) * (relationLc529 rho) = ((1 : F) * rho 73585)

def relationLc530 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 121⟩], residual := [((1 : F), 73584)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71882) * (relationLc530 rho) = ((1 : F) * rho 73586)

def relationRow1827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73577) * ((1 : F) * rho 73578) = ((1 : F) * rho 73587)

def relationRow1828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73577) * ((1 : F) * rho 73577) = ((1 : F) * rho 73588)

def relationRow1829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73578) * ((1 : F) * rho 73578) = ((1 : F) * rho 73589)

def relationRow1830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73590) * ((-1 : F) * rho 73588 + (1 : F) * rho 73589) = ((2 : F) * rho 73587)

def relationRow1831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73591) * ((2 : F) + (1 : F) * rho 73588 + (-1 : F) * rho 73589) = ((1 : F) * rho 73588 + (1 : F) * rho 73589)

def relationLc531 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 122⟩, ⟨(1 : F), 72013, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73590 + (1 : F) * rho 73591) * (relationLc531 rho) = ((1 : F) * rho 73592)

def relationLc532 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73591) * (relationLc532 rho) = ((1 : F) * rho 73593)

def relationLc533 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73590) * (relationLc533 rho) = ((1 : F) * rho 73594)

def relationRow1835 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73593) * ((1 : F) * rho 73594) = ((1 : F) * rho 73595)

def relationRow1836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73596) * ((1 : F) + (1 : F) * rho 73595) = ((1 : F) * rho 73593 + (1 : F) * rho 73594)

def relationRow1837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73597) * ((1 : F) + (-1 : F) * rho 73595) = ((1 : F) * rho 73592 + (-1 : F) * rho 73593 + (-1 : F) * rho 73594)

def relationLc534 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 122⟩], residual := [((1 : F), 73596)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71883) * (relationLc534 rho) = ((1 : F) * rho 73598)

def relationLc535 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 122⟩], residual := [((1 : F), 73597)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71883) * (relationLc535 rho) = ((1 : F) * rho 73599)

def relationRow1840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73590) * ((1 : F) * rho 73591) = ((1 : F) * rho 73600)

def relationRow1841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73590) * ((1 : F) * rho 73590) = ((1 : F) * rho 73601)

def relationRow1842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73591) * ((1 : F) * rho 73591) = ((1 : F) * rho 73602)

def relationRow1843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73603) * ((-1 : F) * rho 73601 + (1 : F) * rho 73602) = ((2 : F) * rho 73600)

def relationRow1844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73604) * ((2 : F) + (1 : F) * rho 73601 + (-1 : F) * rho 73602) = ((1 : F) * rho 73601 + (1 : F) * rho 73602)

def relationLc536 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 123⟩, ⟨(1 : F), 72013, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73603 + (1 : F) * rho 73604) * (relationLc536 rho) = ((1 : F) * rho 73605)

def relationLc537 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73604) * (relationLc537 rho) = ((1 : F) * rho 73606)

def relationLc538 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73603) * (relationLc538 rho) = ((1 : F) * rho 73607)

def relationRow1848 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73606) * ((1 : F) * rho 73607) = ((1 : F) * rho 73608)

def relationRow1849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73609) * ((1 : F) + (1 : F) * rho 73608) = ((1 : F) * rho 73606 + (1 : F) * rho 73607)

def relationRow1850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73610) * ((1 : F) + (-1 : F) * rho 73608) = ((1 : F) * rho 73605 + (-1 : F) * rho 73606 + (-1 : F) * rho 73607)

def relationLc539 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 123⟩], residual := [((1 : F), 73609)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71884) * (relationLc539 rho) = ((1 : F) * rho 73611)

def relationLc540 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 123⟩], residual := [((1 : F), 73610)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71884) * (relationLc540 rho) = ((1 : F) * rho 73612)

def relationRow1853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73603) * ((1 : F) * rho 73604) = ((1 : F) * rho 73613)

def relationRow1854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73603) * ((1 : F) * rho 73603) = ((1 : F) * rho 73614)

def relationRow1855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73604) * ((1 : F) * rho 73604) = ((1 : F) * rho 73615)

def relationRow1856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73616) * ((-1 : F) * rho 73614 + (1 : F) * rho 73615) = ((2 : F) * rho 73613)

def relationRow1857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73617) * ((2 : F) + (1 : F) * rho 73614 + (-1 : F) * rho 73615) = ((1 : F) * rho 73614 + (1 : F) * rho 73615)

def relationLc541 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 124⟩, ⟨(1 : F), 72013, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73616 + (1 : F) * rho 73617) * (relationLc541 rho) = ((1 : F) * rho 73618)

def relationLc542 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73617) * (relationLc542 rho) = ((1 : F) * rho 73619)

def relationLc543 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73616) * (relationLc543 rho) = ((1 : F) * rho 73620)

def relationRow1861 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73619) * ((1 : F) * rho 73620) = ((1 : F) * rho 73621)

def relationRow1862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73622) * ((1 : F) + (1 : F) * rho 73621) = ((1 : F) * rho 73619 + (1 : F) * rho 73620)

def relationRow1863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73623) * ((1 : F) + (-1 : F) * rho 73621) = ((1 : F) * rho 73618 + (-1 : F) * rho 73619 + (-1 : F) * rho 73620)

def relationLc544 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 124⟩], residual := [((1 : F), 73622)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71885) * (relationLc544 rho) = ((1 : F) * rho 73624)

def relationLc545 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 124⟩], residual := [((1 : F), 73623)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71885) * (relationLc545 rho) = ((1 : F) * rho 73625)

def relationRow1866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73616) * ((1 : F) * rho 73617) = ((1 : F) * rho 73626)

def relationRow1867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73616) * ((1 : F) * rho 73616) = ((1 : F) * rho 73627)

def relationRow1868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73617) * ((1 : F) * rho 73617) = ((1 : F) * rho 73628)

def relationRow1869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73629) * ((-1 : F) * rho 73627 + (1 : F) * rho 73628) = ((2 : F) * rho 73626)

def relationRow1870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73630) * ((2 : F) + (1 : F) * rho 73627 + (-1 : F) * rho 73628) = ((1 : F) * rho 73627 + (1 : F) * rho 73628)

def relationLc546 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 125⟩, ⟨(1 : F), 72013, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73629 + (1 : F) * rho 73630) * (relationLc546 rho) = ((1 : F) * rho 73631)

def relationLc547 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73630) * (relationLc547 rho) = ((1 : F) * rho 73632)

def relationLc548 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73629) * (relationLc548 rho) = ((1 : F) * rho 73633)

def relationRow1874 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73632) * ((1 : F) * rho 73633) = ((1 : F) * rho 73634)

def relationRow1875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73635) * ((1 : F) + (1 : F) * rho 73634) = ((1 : F) * rho 73632 + (1 : F) * rho 73633)

def relationRow1876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73636) * ((1 : F) + (-1 : F) * rho 73634) = ((1 : F) * rho 73631 + (-1 : F) * rho 73632 + (-1 : F) * rho 73633)

def relationLc549 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 125⟩], residual := [((1 : F), 73635)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71886) * (relationLc549 rho) = ((1 : F) * rho 73637)

def relationLc550 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 125⟩], residual := [((1 : F), 73636)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71886) * (relationLc550 rho) = ((1 : F) * rho 73638)

def relationRow1879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73629) * ((1 : F) * rho 73630) = ((1 : F) * rho 73639)

def relationRow1880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73629) * ((1 : F) * rho 73629) = ((1 : F) * rho 73640)

def relationRow1881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73630) * ((1 : F) * rho 73630) = ((1 : F) * rho 73641)

def relationRow1882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73642) * ((-1 : F) * rho 73640 + (1 : F) * rho 73641) = ((2 : F) * rho 73639)

def relationRow1883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73643) * ((2 : F) + (1 : F) * rho 73640 + (-1 : F) * rho 73641) = ((1 : F) * rho 73640 + (1 : F) * rho 73641)

def relationLc551 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 126⟩, ⟨(1 : F), 72013, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73642 + (1 : F) * rho 73643) * (relationLc551 rho) = ((1 : F) * rho 73644)

def relationLc552 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73643) * (relationLc552 rho) = ((1 : F) * rho 73645)

def relationLc553 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73642) * (relationLc553 rho) = ((1 : F) * rho 73646)

def relationRow1887 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73645) * ((1 : F) * rho 73646) = ((1 : F) * rho 73647)

def relationRow1888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73648) * ((1 : F) + (1 : F) * rho 73647) = ((1 : F) * rho 73645 + (1 : F) * rho 73646)

def relationRow1889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73649) * ((1 : F) + (-1 : F) * rho 73647) = ((1 : F) * rho 73644 + (-1 : F) * rho 73645 + (-1 : F) * rho 73646)

def relationLc554 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 126⟩], residual := [((1 : F), 73648)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71887) * (relationLc554 rho) = ((1 : F) * rho 73650)

def relationLc555 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 126⟩], residual := [((1 : F), 73649)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71887) * (relationLc555 rho) = ((1 : F) * rho 73651)

def relationRow1892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73642) * ((1 : F) * rho 73643) = ((1 : F) * rho 73652)

def relationRow1893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73642) * ((1 : F) * rho 73642) = ((1 : F) * rho 73653)

def relationRow1894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73643) * ((1 : F) * rho 73643) = ((1 : F) * rho 73654)

def relationRow1895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73655) * ((-1 : F) * rho 73653 + (1 : F) * rho 73654) = ((2 : F) * rho 73652)

def relationRow1896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73656) * ((2 : F) + (1 : F) * rho 73653 + (-1 : F) * rho 73654) = ((1 : F) * rho 73653 + (1 : F) * rho 73654)

def relationLc556 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 127⟩, ⟨(1 : F), 72013, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73655 + (1 : F) * rho 73656) * (relationLc556 rho) = ((1 : F) * rho 73657)

def relationLc557 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73656) * (relationLc557 rho) = ((1 : F) * rho 73658)

def relationLc558 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73655) * (relationLc558 rho) = ((1 : F) * rho 73659)

def relationRow1900 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73658) * ((1 : F) * rho 73659) = ((1 : F) * rho 73660)

def relationRow1901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73661) * ((1 : F) + (1 : F) * rho 73660) = ((1 : F) * rho 73658 + (1 : F) * rho 73659)

def relationRow1902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73662) * ((1 : F) + (-1 : F) * rho 73660) = ((1 : F) * rho 73657 + (-1 : F) * rho 73658 + (-1 : F) * rho 73659)

def relationLc559 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 127⟩], residual := [((1 : F), 73661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71888) * (relationLc559 rho) = ((1 : F) * rho 73663)

def relationLc560 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 127⟩], residual := [((1 : F), 73662)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71888) * (relationLc560 rho) = ((1 : F) * rho 73664)

def relationRow1905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73655) * ((1 : F) * rho 73656) = ((1 : F) * rho 73665)

def relationRow1906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73655) * ((1 : F) * rho 73655) = ((1 : F) * rho 73666)

def relationRow1907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73656) * ((1 : F) * rho 73656) = ((1 : F) * rho 73667)

def relationRow1908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73668) * ((-1 : F) * rho 73666 + (1 : F) * rho 73667) = ((2 : F) * rho 73665)

def relationRow1909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73669) * ((2 : F) + (1 : F) * rho 73666 + (-1 : F) * rho 73667) = ((1 : F) * rho 73666 + (1 : F) * rho 73667)

def relationLc561 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 128⟩, ⟨(1 : F), 72013, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73668 + (1 : F) * rho 73669) * (relationLc561 rho) = ((1 : F) * rho 73670)

def relationLc562 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73669) * (relationLc562 rho) = ((1 : F) * rho 73671)

def relationLc563 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73668) * (relationLc563 rho) = ((1 : F) * rho 73672)

def relationRow1913 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73671) * ((1 : F) * rho 73672) = ((1 : F) * rho 73673)

def relationRow1914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73674) * ((1 : F) + (1 : F) * rho 73673) = ((1 : F) * rho 73671 + (1 : F) * rho 73672)

def relationRow1915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73675) * ((1 : F) + (-1 : F) * rho 73673) = ((1 : F) * rho 73670 + (-1 : F) * rho 73671 + (-1 : F) * rho 73672)

def relationLc564 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 128⟩], residual := [((1 : F), 73674)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71889) * (relationLc564 rho) = ((1 : F) * rho 73676)

def relationLc565 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 128⟩], residual := [((1 : F), 73675)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71889) * (relationLc565 rho) = ((1 : F) * rho 73677)

def relationRow1918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73668) * ((1 : F) * rho 73669) = ((1 : F) * rho 73678)

def relationRow1919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73668) * ((1 : F) * rho 73668) = ((1 : F) * rho 73679)

def relationRow1920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73669) * ((1 : F) * rho 73669) = ((1 : F) * rho 73680)

def relationRow1921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73681) * ((-1 : F) * rho 73679 + (1 : F) * rho 73680) = ((2 : F) * rho 73678)

def relationRow1922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73682) * ((2 : F) + (1 : F) * rho 73679 + (-1 : F) * rho 73680) = ((1 : F) * rho 73679 + (1 : F) * rho 73680)

def relationLc566 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 129⟩, ⟨(1 : F), 72013, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73681 + (1 : F) * rho 73682) * (relationLc566 rho) = ((1 : F) * rho 73683)

def relationLc567 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73682) * (relationLc567 rho) = ((1 : F) * rho 73684)

def relationLc568 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73681) * (relationLc568 rho) = ((1 : F) * rho 73685)

def relationRow1926 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73684) * ((1 : F) * rho 73685) = ((1 : F) * rho 73686)

def relationRow1927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73687) * ((1 : F) + (1 : F) * rho 73686) = ((1 : F) * rho 73684 + (1 : F) * rho 73685)

def relationRow1928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73688) * ((1 : F) + (-1 : F) * rho 73686) = ((1 : F) * rho 73683 + (-1 : F) * rho 73684 + (-1 : F) * rho 73685)

def relationLc569 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 129⟩], residual := [((1 : F), 73687)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71890) * (relationLc569 rho) = ((1 : F) * rho 73689)

def relationLc570 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 129⟩], residual := [((1 : F), 73688)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71890) * (relationLc570 rho) = ((1 : F) * rho 73690)

def relationRow1931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73681) * ((1 : F) * rho 73682) = ((1 : F) * rho 73691)

def relationRow1932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73681) * ((1 : F) * rho 73681) = ((1 : F) * rho 73692)

def relationRow1933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73682) * ((1 : F) * rho 73682) = ((1 : F) * rho 73693)

def relationRow1934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73694) * ((-1 : F) * rho 73692 + (1 : F) * rho 73693) = ((2 : F) * rho 73691)

def relationRow1935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73695) * ((2 : F) + (1 : F) * rho 73692 + (-1 : F) * rho 73693) = ((1 : F) * rho 73692 + (1 : F) * rho 73693)

def relationLc571 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 130⟩, ⟨(1 : F), 72013, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73694 + (1 : F) * rho 73695) * (relationLc571 rho) = ((1 : F) * rho 73696)

def relationLc572 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73695) * (relationLc572 rho) = ((1 : F) * rho 73697)

def relationLc573 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73694) * (relationLc573 rho) = ((1 : F) * rho 73698)

def relationRow1939 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73697) * ((1 : F) * rho 73698) = ((1 : F) * rho 73699)

def relationRow1940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73700) * ((1 : F) + (1 : F) * rho 73699) = ((1 : F) * rho 73697 + (1 : F) * rho 73698)

def relationRow1941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73701) * ((1 : F) + (-1 : F) * rho 73699) = ((1 : F) * rho 73696 + (-1 : F) * rho 73697 + (-1 : F) * rho 73698)

def relationLc574 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 130⟩], residual := [((1 : F), 73700)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71891) * (relationLc574 rho) = ((1 : F) * rho 73702)

def relationLc575 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 130⟩], residual := [((1 : F), 73701)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71891) * (relationLc575 rho) = ((1 : F) * rho 73703)

def relationRow1944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73694) * ((1 : F) * rho 73695) = ((1 : F) * rho 73704)

def relationRow1945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73694) * ((1 : F) * rho 73694) = ((1 : F) * rho 73705)

def relationRow1946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73695) * ((1 : F) * rho 73695) = ((1 : F) * rho 73706)

def relationRow1947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73707) * ((-1 : F) * rho 73705 + (1 : F) * rho 73706) = ((2 : F) * rho 73704)

def relationRow1948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73708) * ((2 : F) + (1 : F) * rho 73705 + (-1 : F) * rho 73706) = ((1 : F) * rho 73705 + (1 : F) * rho 73706)

def relationLc576 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 131⟩, ⟨(1 : F), 72013, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73707 + (1 : F) * rho 73708) * (relationLc576 rho) = ((1 : F) * rho 73709)

def relationLc577 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73708) * (relationLc577 rho) = ((1 : F) * rho 73710)

def relationLc578 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73707) * (relationLc578 rho) = ((1 : F) * rho 73711)

def relationRow1952 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73710) * ((1 : F) * rho 73711) = ((1 : F) * rho 73712)

def relationRow1953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73713) * ((1 : F) + (1 : F) * rho 73712) = ((1 : F) * rho 73710 + (1 : F) * rho 73711)

def relationRow1954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73714) * ((1 : F) + (-1 : F) * rho 73712) = ((1 : F) * rho 73709 + (-1 : F) * rho 73710 + (-1 : F) * rho 73711)

def relationLc579 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 131⟩], residual := [((1 : F), 73713)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71892) * (relationLc579 rho) = ((1 : F) * rho 73715)

def relationLc580 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 131⟩], residual := [((1 : F), 73714)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71892) * (relationLc580 rho) = ((1 : F) * rho 73716)

def relationRow1957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73707) * ((1 : F) * rho 73708) = ((1 : F) * rho 73717)

def relationRow1958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73707) * ((1 : F) * rho 73707) = ((1 : F) * rho 73718)

def relationRow1959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73708) * ((1 : F) * rho 73708) = ((1 : F) * rho 73719)

def relationRow1960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73720) * ((-1 : F) * rho 73718 + (1 : F) * rho 73719) = ((2 : F) * rho 73717)

def relationRow1961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73721) * ((2 : F) + (1 : F) * rho 73718 + (-1 : F) * rho 73719) = ((1 : F) * rho 73718 + (1 : F) * rho 73719)

def relationLc581 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 132⟩, ⟨(1 : F), 72013, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73720 + (1 : F) * rho 73721) * (relationLc581 rho) = ((1 : F) * rho 73722)

def relationLc582 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73721) * (relationLc582 rho) = ((1 : F) * rho 73723)

def relationLc583 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73720) * (relationLc583 rho) = ((1 : F) * rho 73724)

def relationRow1965 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73723) * ((1 : F) * rho 73724) = ((1 : F) * rho 73725)

def relationRow1966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73726) * ((1 : F) + (1 : F) * rho 73725) = ((1 : F) * rho 73723 + (1 : F) * rho 73724)

def relationRow1967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73727) * ((1 : F) + (-1 : F) * rho 73725) = ((1 : F) * rho 73722 + (-1 : F) * rho 73723 + (-1 : F) * rho 73724)

def relationLc584 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 132⟩], residual := [((1 : F), 73726)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71893) * (relationLc584 rho) = ((1 : F) * rho 73728)

def relationLc585 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 132⟩], residual := [((1 : F), 73727)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71893) * (relationLc585 rho) = ((1 : F) * rho 73729)

def relationRow1970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73720) * ((1 : F) * rho 73721) = ((1 : F) * rho 73730)

def relationRow1971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73720) * ((1 : F) * rho 73720) = ((1 : F) * rho 73731)

def relationRow1972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73721) * ((1 : F) * rho 73721) = ((1 : F) * rho 73732)

def relationRow1973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73733) * ((-1 : F) * rho 73731 + (1 : F) * rho 73732) = ((2 : F) * rho 73730)

def relationRow1974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73734) * ((2 : F) + (1 : F) * rho 73731 + (-1 : F) * rho 73732) = ((1 : F) * rho 73731 + (1 : F) * rho 73732)

def relationLc586 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 133⟩, ⟨(1 : F), 72013, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73733 + (1 : F) * rho 73734) * (relationLc586 rho) = ((1 : F) * rho 73735)

def relationLc587 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73734) * (relationLc587 rho) = ((1 : F) * rho 73736)

def relationLc588 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73733) * (relationLc588 rho) = ((1 : F) * rho 73737)

def relationRow1978 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73736) * ((1 : F) * rho 73737) = ((1 : F) * rho 73738)

def relationRow1979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73739) * ((1 : F) + (1 : F) * rho 73738) = ((1 : F) * rho 73736 + (1 : F) * rho 73737)

def relationRow1980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73740) * ((1 : F) + (-1 : F) * rho 73738) = ((1 : F) * rho 73735 + (-1 : F) * rho 73736 + (-1 : F) * rho 73737)

def relationLc589 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 133⟩], residual := [((1 : F), 73739)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71894) * (relationLc589 rho) = ((1 : F) * rho 73741)

def relationLc590 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 133⟩], residual := [((1 : F), 73740)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71894) * (relationLc590 rho) = ((1 : F) * rho 73742)

def relationRow1983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73733) * ((1 : F) * rho 73734) = ((1 : F) * rho 73743)

def relationRow1984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73733) * ((1 : F) * rho 73733) = ((1 : F) * rho 73744)

def relationRow1985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73734) * ((1 : F) * rho 73734) = ((1 : F) * rho 73745)

def relationRow1986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73746) * ((-1 : F) * rho 73744 + (1 : F) * rho 73745) = ((2 : F) * rho 73743)

def relationRow1987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73747) * ((2 : F) + (1 : F) * rho 73744 + (-1 : F) * rho 73745) = ((1 : F) * rho 73744 + (1 : F) * rho 73745)

def relationLc591 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 134⟩, ⟨(1 : F), 72013, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73746 + (1 : F) * rho 73747) * (relationLc591 rho) = ((1 : F) * rho 73748)

def relationLc592 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73747) * (relationLc592 rho) = ((1 : F) * rho 73749)

def relationLc593 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73746) * (relationLc593 rho) = ((1 : F) * rho 73750)

def relationRow1991 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73749) * ((1 : F) * rho 73750) = ((1 : F) * rho 73751)

def relationRow1992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73752) * ((1 : F) + (1 : F) * rho 73751) = ((1 : F) * rho 73749 + (1 : F) * rho 73750)

def relationRow1993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73753) * ((1 : F) + (-1 : F) * rho 73751) = ((1 : F) * rho 73748 + (-1 : F) * rho 73749 + (-1 : F) * rho 73750)

def relationLc594 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 134⟩], residual := [((1 : F), 73752)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71895) * (relationLc594 rho) = ((1 : F) * rho 73754)

def relationLc595 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 134⟩], residual := [((1 : F), 73753)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71895) * (relationLc595 rho) = ((1 : F) * rho 73755)

def relationRow1996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73746) * ((1 : F) * rho 73747) = ((1 : F) * rho 73756)

def relationRow1997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73746) * ((1 : F) * rho 73746) = ((1 : F) * rho 73757)

def relationRow1998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73747) * ((1 : F) * rho 73747) = ((1 : F) * rho 73758)

def relationRow1999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73759) * ((-1 : F) * rho 73757 + (1 : F) * rho 73758) = ((2 : F) * rho 73756)

def relationRow2000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73760) * ((2 : F) + (1 : F) * rho 73757 + (-1 : F) * rho 73758) = ((1 : F) * rho 73757 + (1 : F) * rho 73758)

def relationLc596 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 135⟩, ⟨(1 : F), 72013, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73759 + (1 : F) * rho 73760) * (relationLc596 rho) = ((1 : F) * rho 73761)

def relationLc597 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73760) * (relationLc597 rho) = ((1 : F) * rho 73762)

def relationLc598 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73759) * (relationLc598 rho) = ((1 : F) * rho 73763)

def relationRow2004 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73762) * ((1 : F) * rho 73763) = ((1 : F) * rho 73764)

def relationRow2005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73765) * ((1 : F) + (1 : F) * rho 73764) = ((1 : F) * rho 73762 + (1 : F) * rho 73763)

def relationRow2006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73766) * ((1 : F) + (-1 : F) * rho 73764) = ((1 : F) * rho 73761 + (-1 : F) * rho 73762 + (-1 : F) * rho 73763)

def relationLc599 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 135⟩], residual := [((1 : F), 73765)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71896) * (relationLc599 rho) = ((1 : F) * rho 73767)

def relationLc600 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 135⟩], residual := [((1 : F), 73766)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71896) * (relationLc600 rho) = ((1 : F) * rho 73768)

def relationRow2009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73759) * ((1 : F) * rho 73760) = ((1 : F) * rho 73769)

def relationRow2010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73759) * ((1 : F) * rho 73759) = ((1 : F) * rho 73770)

def relationRow2011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73760) * ((1 : F) * rho 73760) = ((1 : F) * rho 73771)

def relationRow2012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73772) * ((-1 : F) * rho 73770 + (1 : F) * rho 73771) = ((2 : F) * rho 73769)

def relationRow2013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73773) * ((2 : F) + (1 : F) * rho 73770 + (-1 : F) * rho 73771) = ((1 : F) * rho 73770 + (1 : F) * rho 73771)

def relationLc601 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 136⟩, ⟨(1 : F), 72013, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73772 + (1 : F) * rho 73773) * (relationLc601 rho) = ((1 : F) * rho 73774)

def relationLc602 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73773) * (relationLc602 rho) = ((1 : F) * rho 73775)

def relationLc603 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73772) * (relationLc603 rho) = ((1 : F) * rho 73776)

def relationRow2017 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73775) * ((1 : F) * rho 73776) = ((1 : F) * rho 73777)

def relationRow2018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73778) * ((1 : F) + (1 : F) * rho 73777) = ((1 : F) * rho 73775 + (1 : F) * rho 73776)

def relationRow2019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73779) * ((1 : F) + (-1 : F) * rho 73777) = ((1 : F) * rho 73774 + (-1 : F) * rho 73775 + (-1 : F) * rho 73776)

def relationLc604 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 136⟩], residual := [((1 : F), 73778)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71897) * (relationLc604 rho) = ((1 : F) * rho 73780)

def relationLc605 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 136⟩], residual := [((1 : F), 73779)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71897) * (relationLc605 rho) = ((1 : F) * rho 73781)

def relationRow2022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73772) * ((1 : F) * rho 73773) = ((1 : F) * rho 73782)

def relationRow2023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73772) * ((1 : F) * rho 73772) = ((1 : F) * rho 73783)

def relationRow2024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73773) * ((1 : F) * rho 73773) = ((1 : F) * rho 73784)

def relationRow2025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73785) * ((-1 : F) * rho 73783 + (1 : F) * rho 73784) = ((2 : F) * rho 73782)

def relationRow2026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73786) * ((2 : F) + (1 : F) * rho 73783 + (-1 : F) * rho 73784) = ((1 : F) * rho 73783 + (1 : F) * rho 73784)

def relationLc606 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 137⟩, ⟨(1 : F), 72013, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73785 + (1 : F) * rho 73786) * (relationLc606 rho) = ((1 : F) * rho 73787)

def relationLc607 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73786) * (relationLc607 rho) = ((1 : F) * rho 73788)

def relationLc608 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73785) * (relationLc608 rho) = ((1 : F) * rho 73789)

def relationRow2030 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73788) * ((1 : F) * rho 73789) = ((1 : F) * rho 73790)

def relationRow2031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73791) * ((1 : F) + (1 : F) * rho 73790) = ((1 : F) * rho 73788 + (1 : F) * rho 73789)

def relationRow2032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73792) * ((1 : F) + (-1 : F) * rho 73790) = ((1 : F) * rho 73787 + (-1 : F) * rho 73788 + (-1 : F) * rho 73789)

def relationLc609 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 137⟩], residual := [((1 : F), 73791)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71898) * (relationLc609 rho) = ((1 : F) * rho 73793)

def relationLc610 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 137⟩], residual := [((1 : F), 73792)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71898) * (relationLc610 rho) = ((1 : F) * rho 73794)

def relationRow2035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73785) * ((1 : F) * rho 73786) = ((1 : F) * rho 73795)

def relationRow2036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73785) * ((1 : F) * rho 73785) = ((1 : F) * rho 73796)

def relationRow2037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73786) * ((1 : F) * rho 73786) = ((1 : F) * rho 73797)

def relationRow2038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73798) * ((-1 : F) * rho 73796 + (1 : F) * rho 73797) = ((2 : F) * rho 73795)

def relationRow2039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73799) * ((2 : F) + (1 : F) * rho 73796 + (-1 : F) * rho 73797) = ((1 : F) * rho 73796 + (1 : F) * rho 73797)

def relationLc611 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 138⟩, ⟨(1 : F), 72013, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73798 + (1 : F) * rho 73799) * (relationLc611 rho) = ((1 : F) * rho 73800)

def relationLc612 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73799) * (relationLc612 rho) = ((1 : F) * rho 73801)

def relationLc613 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73798) * (relationLc613 rho) = ((1 : F) * rho 73802)

def relationRow2043 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73801) * ((1 : F) * rho 73802) = ((1 : F) * rho 73803)

def relationRow2044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73804) * ((1 : F) + (1 : F) * rho 73803) = ((1 : F) * rho 73801 + (1 : F) * rho 73802)

def relationRow2045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73805) * ((1 : F) + (-1 : F) * rho 73803) = ((1 : F) * rho 73800 + (-1 : F) * rho 73801 + (-1 : F) * rho 73802)

def relationLc614 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 138⟩], residual := [((1 : F), 73804)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71899) * (relationLc614 rho) = ((1 : F) * rho 73806)

def relationLc615 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 138⟩], residual := [((1 : F), 73805)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71899) * (relationLc615 rho) = ((1 : F) * rho 73807)

def relationRow2048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73798) * ((1 : F) * rho 73799) = ((1 : F) * rho 73808)

def relationRow2049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73798) * ((1 : F) * rho 73798) = ((1 : F) * rho 73809)

def relationRow2050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73799) * ((1 : F) * rho 73799) = ((1 : F) * rho 73810)

def relationRow2051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73811) * ((-1 : F) * rho 73809 + (1 : F) * rho 73810) = ((2 : F) * rho 73808)

def relationRow2052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73812) * ((2 : F) + (1 : F) * rho 73809 + (-1 : F) * rho 73810) = ((1 : F) * rho 73809 + (1 : F) * rho 73810)

def relationLc616 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 139⟩, ⟨(1 : F), 72013, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73811 + (1 : F) * rho 73812) * (relationLc616 rho) = ((1 : F) * rho 73813)

def relationLc617 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73812) * (relationLc617 rho) = ((1 : F) * rho 73814)

def relationLc618 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73811) * (relationLc618 rho) = ((1 : F) * rho 73815)

def relationRow2056 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73814) * ((1 : F) * rho 73815) = ((1 : F) * rho 73816)

def relationRow2057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73817) * ((1 : F) + (1 : F) * rho 73816) = ((1 : F) * rho 73814 + (1 : F) * rho 73815)

def relationRow2058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73818) * ((1 : F) + (-1 : F) * rho 73816) = ((1 : F) * rho 73813 + (-1 : F) * rho 73814 + (-1 : F) * rho 73815)

def relationLc619 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 139⟩], residual := [((1 : F), 73817)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71900) * (relationLc619 rho) = ((1 : F) * rho 73819)

def relationLc620 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 139⟩], residual := [((1 : F), 73818)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71900) * (relationLc620 rho) = ((1 : F) * rho 73820)

def relationRow2061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73811) * ((1 : F) * rho 73812) = ((1 : F) * rho 73821)

def relationRow2062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73811) * ((1 : F) * rho 73811) = ((1 : F) * rho 73822)

def relationRow2063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73812) * ((1 : F) * rho 73812) = ((1 : F) * rho 73823)

def relationRow2064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73824) * ((-1 : F) * rho 73822 + (1 : F) * rho 73823) = ((2 : F) * rho 73821)

def relationRow2065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73825) * ((2 : F) + (1 : F) * rho 73822 + (-1 : F) * rho 73823) = ((1 : F) * rho 73822 + (1 : F) * rho 73823)

def relationLc621 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 140⟩, ⟨(1 : F), 72013, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73824 + (1 : F) * rho 73825) * (relationLc621 rho) = ((1 : F) * rho 73826)

def relationLc622 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73825) * (relationLc622 rho) = ((1 : F) * rho 73827)

def relationLc623 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73824) * (relationLc623 rho) = ((1 : F) * rho 73828)

def relationRow2069 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73827) * ((1 : F) * rho 73828) = ((1 : F) * rho 73829)

def relationRow2070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73830) * ((1 : F) + (1 : F) * rho 73829) = ((1 : F) * rho 73827 + (1 : F) * rho 73828)

def relationRow2071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73831) * ((1 : F) + (-1 : F) * rho 73829) = ((1 : F) * rho 73826 + (-1 : F) * rho 73827 + (-1 : F) * rho 73828)

def relationLc624 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 140⟩], residual := [((1 : F), 73830)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71901) * (relationLc624 rho) = ((1 : F) * rho 73832)

def relationLc625 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 140⟩], residual := [((1 : F), 73831)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71901) * (relationLc625 rho) = ((1 : F) * rho 73833)

def relationRow2074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73824) * ((1 : F) * rho 73825) = ((1 : F) * rho 73834)

def relationRow2075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73824) * ((1 : F) * rho 73824) = ((1 : F) * rho 73835)

def relationRow2076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73825) * ((1 : F) * rho 73825) = ((1 : F) * rho 73836)

def relationRow2077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73837) * ((-1 : F) * rho 73835 + (1 : F) * rho 73836) = ((2 : F) * rho 73834)

def relationRow2078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73838) * ((2 : F) + (1 : F) * rho 73835 + (-1 : F) * rho 73836) = ((1 : F) * rho 73835 + (1 : F) * rho 73836)

def relationLc626 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 141⟩, ⟨(1 : F), 72013, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73837 + (1 : F) * rho 73838) * (relationLc626 rho) = ((1 : F) * rho 73839)

def relationLc627 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73838) * (relationLc627 rho) = ((1 : F) * rho 73840)

def relationLc628 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73837) * (relationLc628 rho) = ((1 : F) * rho 73841)

def relationRow2082 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73840) * ((1 : F) * rho 73841) = ((1 : F) * rho 73842)

def relationRow2083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73843) * ((1 : F) + (1 : F) * rho 73842) = ((1 : F) * rho 73840 + (1 : F) * rho 73841)

def relationRow2084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73844) * ((1 : F) + (-1 : F) * rho 73842) = ((1 : F) * rho 73839 + (-1 : F) * rho 73840 + (-1 : F) * rho 73841)

def relationLc629 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 141⟩], residual := [((1 : F), 73843)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71902) * (relationLc629 rho) = ((1 : F) * rho 73845)

def relationLc630 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 141⟩], residual := [((1 : F), 73844)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71902) * (relationLc630 rho) = ((1 : F) * rho 73846)

def relationRow2087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73837) * ((1 : F) * rho 73838) = ((1 : F) * rho 73847)

def relationRow2088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73837) * ((1 : F) * rho 73837) = ((1 : F) * rho 73848)

def relationRow2089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73838) * ((1 : F) * rho 73838) = ((1 : F) * rho 73849)

def relationRow2090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73850) * ((-1 : F) * rho 73848 + (1 : F) * rho 73849) = ((2 : F) * rho 73847)

def relationRow2091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73851) * ((2 : F) + (1 : F) * rho 73848 + (-1 : F) * rho 73849) = ((1 : F) * rho 73848 + (1 : F) * rho 73849)

def relationLc631 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 142⟩, ⟨(1 : F), 72013, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73850 + (1 : F) * rho 73851) * (relationLc631 rho) = ((1 : F) * rho 73852)

def relationLc632 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73851) * (relationLc632 rho) = ((1 : F) * rho 73853)

def relationLc633 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73850) * (relationLc633 rho) = ((1 : F) * rho 73854)

def relationRow2095 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73853) * ((1 : F) * rho 73854) = ((1 : F) * rho 73855)

def relationRow2096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73856) * ((1 : F) + (1 : F) * rho 73855) = ((1 : F) * rho 73853 + (1 : F) * rho 73854)

def relationRow2097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73857) * ((1 : F) + (-1 : F) * rho 73855) = ((1 : F) * rho 73852 + (-1 : F) * rho 73853 + (-1 : F) * rho 73854)

def relationLc634 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 142⟩], residual := [((1 : F), 73856)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71903) * (relationLc634 rho) = ((1 : F) * rho 73858)

def relationLc635 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 142⟩], residual := [((1 : F), 73857)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71903) * (relationLc635 rho) = ((1 : F) * rho 73859)

def relationRow2100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73850) * ((1 : F) * rho 73851) = ((1 : F) * rho 73860)

def relationRow2101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73850) * ((1 : F) * rho 73850) = ((1 : F) * rho 73861)

def relationRow2102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73851) * ((1 : F) * rho 73851) = ((1 : F) * rho 73862)

def relationRow2103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73863) * ((-1 : F) * rho 73861 + (1 : F) * rho 73862) = ((2 : F) * rho 73860)

def relationRow2104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73864) * ((2 : F) + (1 : F) * rho 73861 + (-1 : F) * rho 73862) = ((1 : F) * rho 73861 + (1 : F) * rho 73862)

def relationLc636 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 143⟩, ⟨(1 : F), 72013, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73863 + (1 : F) * rho 73864) * (relationLc636 rho) = ((1 : F) * rho 73865)

def relationLc637 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73864) * (relationLc637 rho) = ((1 : F) * rho 73866)

def relationLc638 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73863) * (relationLc638 rho) = ((1 : F) * rho 73867)

def relationRow2108 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73866) * ((1 : F) * rho 73867) = ((1 : F) * rho 73868)

def relationRow2109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73869) * ((1 : F) + (1 : F) * rho 73868) = ((1 : F) * rho 73866 + (1 : F) * rho 73867)

def relationRow2110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73870) * ((1 : F) + (-1 : F) * rho 73868) = ((1 : F) * rho 73865 + (-1 : F) * rho 73866 + (-1 : F) * rho 73867)

def relationLc639 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 143⟩], residual := [((1 : F), 73869)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71904) * (relationLc639 rho) = ((1 : F) * rho 73871)

def relationLc640 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 143⟩], residual := [((1 : F), 73870)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71904) * (relationLc640 rho) = ((1 : F) * rho 73872)

def relationRow2113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73863) * ((1 : F) * rho 73864) = ((1 : F) * rho 73873)

def relationRow2114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73863) * ((1 : F) * rho 73863) = ((1 : F) * rho 73874)

def relationRow2115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73864) * ((1 : F) * rho 73864) = ((1 : F) * rho 73875)

def relationRow2116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73876) * ((-1 : F) * rho 73874 + (1 : F) * rho 73875) = ((2 : F) * rho 73873)

def relationRow2117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73877) * ((2 : F) + (1 : F) * rho 73874 + (-1 : F) * rho 73875) = ((1 : F) * rho 73874 + (1 : F) * rho 73875)

def relationLc641 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 144⟩, ⟨(1 : F), 72013, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73876 + (1 : F) * rho 73877) * (relationLc641 rho) = ((1 : F) * rho 73878)

def relationLc642 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73877) * (relationLc642 rho) = ((1 : F) * rho 73879)

def relationLc643 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73876) * (relationLc643 rho) = ((1 : F) * rho 73880)

def relationRow2121 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73879) * ((1 : F) * rho 73880) = ((1 : F) * rho 73881)

def relationRow2122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73882) * ((1 : F) + (1 : F) * rho 73881) = ((1 : F) * rho 73879 + (1 : F) * rho 73880)

def relationRow2123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73883) * ((1 : F) + (-1 : F) * rho 73881) = ((1 : F) * rho 73878 + (-1 : F) * rho 73879 + (-1 : F) * rho 73880)

def relationLc644 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 144⟩], residual := [((1 : F), 73882)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71905) * (relationLc644 rho) = ((1 : F) * rho 73884)

def relationLc645 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 144⟩], residual := [((1 : F), 73883)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71905) * (relationLc645 rho) = ((1 : F) * rho 73885)

def relationRow2126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73876) * ((1 : F) * rho 73877) = ((1 : F) * rho 73886)

def relationRow2127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73876) * ((1 : F) * rho 73876) = ((1 : F) * rho 73887)

def relationRow2128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73877) * ((1 : F) * rho 73877) = ((1 : F) * rho 73888)

def relationRow2129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73889) * ((-1 : F) * rho 73887 + (1 : F) * rho 73888) = ((2 : F) * rho 73886)

def relationRow2130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73890) * ((2 : F) + (1 : F) * rho 73887 + (-1 : F) * rho 73888) = ((1 : F) * rho 73887 + (1 : F) * rho 73888)

def relationLc646 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 145⟩, ⟨(1 : F), 72013, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73889 + (1 : F) * rho 73890) * (relationLc646 rho) = ((1 : F) * rho 73891)

def relationLc647 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73890) * (relationLc647 rho) = ((1 : F) * rho 73892)

def relationLc648 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73889) * (relationLc648 rho) = ((1 : F) * rho 73893)

def relationRow2134 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73892) * ((1 : F) * rho 73893) = ((1 : F) * rho 73894)

def relationRow2135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73895) * ((1 : F) + (1 : F) * rho 73894) = ((1 : F) * rho 73892 + (1 : F) * rho 73893)

def relationRow2136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73896) * ((1 : F) + (-1 : F) * rho 73894) = ((1 : F) * rho 73891 + (-1 : F) * rho 73892 + (-1 : F) * rho 73893)

def relationLc649 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 145⟩], residual := [((1 : F), 73895)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71906) * (relationLc649 rho) = ((1 : F) * rho 73897)

def relationLc650 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 145⟩], residual := [((1 : F), 73896)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71906) * (relationLc650 rho) = ((1 : F) * rho 73898)

def relationRow2139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73889) * ((1 : F) * rho 73890) = ((1 : F) * rho 73899)

def relationRow2140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73889) * ((1 : F) * rho 73889) = ((1 : F) * rho 73900)

def relationRow2141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73890) * ((1 : F) * rho 73890) = ((1 : F) * rho 73901)

def relationRow2142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73902) * ((-1 : F) * rho 73900 + (1 : F) * rho 73901) = ((2 : F) * rho 73899)

def relationRow2143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73903) * ((2 : F) + (1 : F) * rho 73900 + (-1 : F) * rho 73901) = ((1 : F) * rho 73900 + (1 : F) * rho 73901)

def relationLc651 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 146⟩, ⟨(1 : F), 72013, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73902 + (1 : F) * rho 73903) * (relationLc651 rho) = ((1 : F) * rho 73904)

def relationLc652 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73903) * (relationLc652 rho) = ((1 : F) * rho 73905)

def relationLc653 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73902) * (relationLc653 rho) = ((1 : F) * rho 73906)

def relationRow2147 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73905) * ((1 : F) * rho 73906) = ((1 : F) * rho 73907)

def relationRow2148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73908) * ((1 : F) + (1 : F) * rho 73907) = ((1 : F) * rho 73905 + (1 : F) * rho 73906)

def relationRow2149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73909) * ((1 : F) + (-1 : F) * rho 73907) = ((1 : F) * rho 73904 + (-1 : F) * rho 73905 + (-1 : F) * rho 73906)

def relationLc654 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 146⟩], residual := [((1 : F), 73908)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71907) * (relationLc654 rho) = ((1 : F) * rho 73910)

def relationLc655 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 146⟩], residual := [((1 : F), 73909)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71907) * (relationLc655 rho) = ((1 : F) * rho 73911)

def relationRow2152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73902) * ((1 : F) * rho 73903) = ((1 : F) * rho 73912)

def relationRow2153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73902) * ((1 : F) * rho 73902) = ((1 : F) * rho 73913)

def relationRow2154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73903) * ((1 : F) * rho 73903) = ((1 : F) * rho 73914)

def relationRow2155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73915) * ((-1 : F) * rho 73913 + (1 : F) * rho 73914) = ((2 : F) * rho 73912)

def relationRow2156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73916) * ((2 : F) + (1 : F) * rho 73913 + (-1 : F) * rho 73914) = ((1 : F) * rho 73913 + (1 : F) * rho 73914)

def relationLc656 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 147⟩, ⟨(1 : F), 72013, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73915 + (1 : F) * rho 73916) * (relationLc656 rho) = ((1 : F) * rho 73917)

def relationLc657 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73916) * (relationLc657 rho) = ((1 : F) * rho 73918)

def relationLc658 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73915) * (relationLc658 rho) = ((1 : F) * rho 73919)

def relationRow2160 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73918) * ((1 : F) * rho 73919) = ((1 : F) * rho 73920)

def relationRow2161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73921) * ((1 : F) + (1 : F) * rho 73920) = ((1 : F) * rho 73918 + (1 : F) * rho 73919)

def relationRow2162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73922) * ((1 : F) + (-1 : F) * rho 73920) = ((1 : F) * rho 73917 + (-1 : F) * rho 73918 + (-1 : F) * rho 73919)

def relationLc659 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 147⟩], residual := [((1 : F), 73921)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71908) * (relationLc659 rho) = ((1 : F) * rho 73923)

def relationLc660 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 147⟩], residual := [((1 : F), 73922)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71908) * (relationLc660 rho) = ((1 : F) * rho 73924)

def relationRow2165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73915) * ((1 : F) * rho 73916) = ((1 : F) * rho 73925)

def relationRow2166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73915) * ((1 : F) * rho 73915) = ((1 : F) * rho 73926)

def relationRow2167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73916) * ((1 : F) * rho 73916) = ((1 : F) * rho 73927)

def relationRow2168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73928) * ((-1 : F) * rho 73926 + (1 : F) * rho 73927) = ((2 : F) * rho 73925)

def relationRow2169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73929) * ((2 : F) + (1 : F) * rho 73926 + (-1 : F) * rho 73927) = ((1 : F) * rho 73926 + (1 : F) * rho 73927)

def relationLc661 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 148⟩, ⟨(1 : F), 72013, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73928 + (1 : F) * rho 73929) * (relationLc661 rho) = ((1 : F) * rho 73930)

def relationLc662 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73929) * (relationLc662 rho) = ((1 : F) * rho 73931)

def relationLc663 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73928) * (relationLc663 rho) = ((1 : F) * rho 73932)

def relationRow2173 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73931) * ((1 : F) * rho 73932) = ((1 : F) * rho 73933)

def relationRow2174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73934) * ((1 : F) + (1 : F) * rho 73933) = ((1 : F) * rho 73931 + (1 : F) * rho 73932)

def relationRow2175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73935) * ((1 : F) + (-1 : F) * rho 73933) = ((1 : F) * rho 73930 + (-1 : F) * rho 73931 + (-1 : F) * rho 73932)

def relationLc664 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 148⟩], residual := [((1 : F), 73934)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71909) * (relationLc664 rho) = ((1 : F) * rho 73936)

def relationLc665 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 148⟩], residual := [((1 : F), 73935)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71909) * (relationLc665 rho) = ((1 : F) * rho 73937)

def relationRow2178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73928) * ((1 : F) * rho 73929) = ((1 : F) * rho 73938)

def relationRow2179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73928) * ((1 : F) * rho 73928) = ((1 : F) * rho 73939)

def relationRow2180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73929) * ((1 : F) * rho 73929) = ((1 : F) * rho 73940)

def relationRow2181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73941) * ((-1 : F) * rho 73939 + (1 : F) * rho 73940) = ((2 : F) * rho 73938)

def relationRow2182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73942) * ((2 : F) + (1 : F) * rho 73939 + (-1 : F) * rho 73940) = ((1 : F) * rho 73939 + (1 : F) * rho 73940)

def relationLc666 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 149⟩, ⟨(1 : F), 72013, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73941 + (1 : F) * rho 73942) * (relationLc666 rho) = ((1 : F) * rho 73943)

def relationLc667 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73942) * (relationLc667 rho) = ((1 : F) * rho 73944)

def relationLc668 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73941) * (relationLc668 rho) = ((1 : F) * rho 73945)

def relationRow2186 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73944) * ((1 : F) * rho 73945) = ((1 : F) * rho 73946)

def relationRow2187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73947) * ((1 : F) + (1 : F) * rho 73946) = ((1 : F) * rho 73944 + (1 : F) * rho 73945)

def relationRow2188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73948) * ((1 : F) + (-1 : F) * rho 73946) = ((1 : F) * rho 73943 + (-1 : F) * rho 73944 + (-1 : F) * rho 73945)

def relationLc669 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 149⟩], residual := [((1 : F), 73947)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71910) * (relationLc669 rho) = ((1 : F) * rho 73949)

def relationLc670 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 149⟩], residual := [((1 : F), 73948)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71910) * (relationLc670 rho) = ((1 : F) * rho 73950)

def relationRow2191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73941) * ((1 : F) * rho 73942) = ((1 : F) * rho 73951)

def relationRow2192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73941) * ((1 : F) * rho 73941) = ((1 : F) * rho 73952)

def relationRow2193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73942) * ((1 : F) * rho 73942) = ((1 : F) * rho 73953)

def relationRow2194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73954) * ((-1 : F) * rho 73952 + (1 : F) * rho 73953) = ((2 : F) * rho 73951)

def relationRow2195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73955) * ((2 : F) + (1 : F) * rho 73952 + (-1 : F) * rho 73953) = ((1 : F) * rho 73952 + (1 : F) * rho 73953)

def relationLc671 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2196 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc671 rho) = ((1 : F) * rho 73956)

def relationRow2197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73956) * ((1 : F) * rho 73954 + (1 : F) * rho 73955) = ((1 : F) * rho 73957)

def relationLc672 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73955) * (relationLc672 rho) = ((1 : F) * rho 73958)

def relationLc673 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73954) * (relationLc673 rho) = ((1 : F) * rho 73959)

def relationRow2200 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73958) * ((1 : F) * rho 73959) = ((1 : F) * rho 73960)

def relationRow2201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73961) * ((1 : F) + (1 : F) * rho 73960) = ((1 : F) * rho 73958 + (1 : F) * rho 73959)

def relationRow2202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73962) * ((1 : F) + (-1 : F) * rho 73960) = ((1 : F) * rho 73957 + (-1 : F) * rho 73958 + (-1 : F) * rho 73959)

def relationLc674 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩], residual := [((1 : F), 73961)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71911) * (relationLc674 rho) = ((1 : F) * rho 73963)

def relationLc675 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73962)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71911) * (relationLc675 rho) = ((1 : F) * rho 73964)

def relationRow2205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73954) * ((1 : F) * rho 73955) = ((1 : F) * rho 73965)

def relationRow2206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73954) * ((1 : F) * rho 73954) = ((1 : F) * rho 73966)

def relationRow2207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73955) * ((1 : F) * rho 73955) = ((1 : F) * rho 73967)

def relationRow2208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73968) * ((-1 : F) * rho 73966 + (1 : F) * rho 73967) = ((2 : F) * rho 73965)

def relationRow2209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73969) * ((2 : F) + (1 : F) * rho 73966 + (-1 : F) * rho 73967) = ((1 : F) * rho 73966 + (1 : F) * rho 73967)

def relationLc676 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73964)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2210 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc676 rho) = ((1 : F) * rho 73970)

def relationRow2211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73970) * ((1 : F) * rho 73968 + (1 : F) * rho 73969) = ((1 : F) * rho 73971)

def relationLc677 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩], residual := [((1 : F), 73963)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73969) * (relationLc677 rho) = ((1 : F) * rho 73972)

def relationLc678 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73964)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73968) * (relationLc678 rho) = ((1 : F) * rho 73973)

def relationRow2214 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73972) * ((1 : F) * rho 73973) = ((1 : F) * rho 73974)

def relationRow2215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73975) * ((1 : F) + (1 : F) * rho 73974) = ((1 : F) * rho 73972 + (1 : F) * rho 73973)

def relationRow2216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73976) * ((1 : F) + (-1 : F) * rho 73974) = ((1 : F) * rho 73971 + (-1 : F) * rho 73972 + (-1 : F) * rho 73973)

def relationLc679 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩], residual := [((-1 : F), 73963), ((1 : F), 73975)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71912) * (relationLc679 rho) = ((1 : F) * rho 73977)

def relationLc680 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩], residual := [((-1 : F), 73964), ((1 : F), 73976)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71912) * (relationLc680 rho) = ((1 : F) * rho 73978)

def relationRow2219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73968) * ((1 : F) * rho 73969) = ((1 : F) * rho 73979)

def relationRow2220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73968) * ((1 : F) * rho 73968) = ((1 : F) * rho 73980)

def relationRow2221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73969) * ((1 : F) * rho 73969) = ((1 : F) * rho 73981)

def relationRow2222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73982) * ((-1 : F) * rho 73980 + (1 : F) * rho 73981) = ((2 : F) * rho 73979)

def relationRow2223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73983) * ((2 : F) + (1 : F) * rho 73980 + (-1 : F) * rho 73981) = ((1 : F) * rho 73980 + (1 : F) * rho 73981)

def relationLc681 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73964), ((1 : F), 73977), ((1 : F), 73978)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2224 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc681 rho) = ((1 : F) * rho 73984)

def relationRow2225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73984) * ((1 : F) * rho 73982 + (1 : F) * rho 73983) = ((1 : F) * rho 73985)

def relationLc682 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73977)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73983) * (relationLc682 rho) = ((1 : F) * rho 73986)

def relationLc683 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73964), ((1 : F), 73978)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73982) * (relationLc683 rho) = ((1 : F) * rho 73987)

def relationRow2228 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 73986) * ((1 : F) * rho 73987) = ((1 : F) * rho 73988)

def relationRow2229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73989) * ((1 : F) + (1 : F) * rho 73988) = ((1 : F) * rho 73986 + (1 : F) * rho 73987)

def relationRow2230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73990) * ((1 : F) + (-1 : F) * rho 73988) = ((1 : F) * rho 73985 + (-1 : F) * rho 73986 + (-1 : F) * rho 73987)

def relationLc684 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩], residual := [((-1 : F), 73963), ((-1 : F), 73977), ((1 : F), 73989)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71913) * (relationLc684 rho) = ((1 : F) * rho 73991)

def relationLc685 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩], residual := [((-1 : F), 73964), ((-1 : F), 73978), ((1 : F), 73990)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71913) * (relationLc685 rho) = ((1 : F) * rho 73992)

def relationRow2233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73982) * ((1 : F) * rho 73983) = ((1 : F) * rho 73993)

def relationRow2234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73982) * ((1 : F) * rho 73982) = ((1 : F) * rho 73994)

def relationRow2235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73983) * ((1 : F) * rho 73983) = ((1 : F) * rho 73995)

def relationRow2236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73996) * ((-1 : F) * rho 73994 + (1 : F) * rho 73995) = ((2 : F) * rho 73993)

def relationRow2237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73997) * ((2 : F) + (1 : F) * rho 73994 + (-1 : F) * rho 73995) = ((1 : F) * rho 73994 + (1 : F) * rho 73995)

def relationLc686 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73964), ((1 : F), 73977), ((1 : F), 73978), ((1 : F), 73991), ((1 : F), 73992)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2238 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc686 rho) = ((1 : F) * rho 73998)

def relationRow2239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73998) * ((1 : F) * rho 73996 + (1 : F) * rho 73997) = ((1 : F) * rho 73999)

def relationLc687 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73977), ((1 : F), 73991)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73997) * (relationLc687 rho) = ((1 : F) * rho 74000)

def relationLc688 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73964), ((1 : F), 73978), ((1 : F), 73992)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73996) * (relationLc688 rho) = ((1 : F) * rho 74001)

def relationRow2242 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74000) * ((1 : F) * rho 74001) = ((1 : F) * rho 74002)

def relationRow2243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74003) * ((1 : F) + (1 : F) * rho 74002) = ((1 : F) * rho 74000 + (1 : F) * rho 74001)

def relationRow2244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74004) * ((1 : F) + (-1 : F) * rho 74002) = ((1 : F) * rho 73999 + (-1 : F) * rho 74000 + (-1 : F) * rho 74001)

def relationLc689 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩], residual := [((-1 : F), 73963), ((-1 : F), 73977), ((-1 : F), 73991), ((1 : F), 74003)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71914) * (relationLc689 rho) = ((1 : F) * rho 74005)

def relationLc690 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩], residual := [((-1 : F), 73964), ((-1 : F), 73978), ((-1 : F), 73992), ((1 : F), 74004)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71914) * (relationLc690 rho) = ((1 : F) * rho 74006)

def relationRow2247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73996) * ((1 : F) * rho 73997) = ((1 : F) * rho 74007)

def relationRow2248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73996) * ((1 : F) * rho 73996) = ((1 : F) * rho 74008)

def relationRow2249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 73997) * ((1 : F) * rho 73997) = ((1 : F) * rho 74009)

def relationRow2250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74010) * ((-1 : F) * rho 74008 + (1 : F) * rho 74009) = ((2 : F) * rho 74007)

def relationRow2251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74011) * ((2 : F) + (1 : F) * rho 74008 + (-1 : F) * rho 74009) = ((1 : F) * rho 74008 + (1 : F) * rho 74009)

def relationLc691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73964), ((1 : F), 73977), ((1 : F), 73978), ((1 : F), 73991), ((1 : F), 73992), ((1 : F), 74005), ((1 : F), 74006)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2252 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc691 rho) = ((1 : F) * rho 74012)

def relationRow2253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74012) * ((1 : F) * rho 74010 + (1 : F) * rho 74011) = ((1 : F) * rho 74013)

def relationLc692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73977), ((1 : F), 73991), ((1 : F), 74005)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74011) * (relationLc692 rho) = ((1 : F) * rho 74014)

def relationLc693 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73964), ((1 : F), 73978), ((1 : F), 73992), ((1 : F), 74006)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74010) * (relationLc693 rho) = ((1 : F) * rho 74015)

def relationRow2256 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74014) * ((1 : F) * rho 74015) = ((1 : F) * rho 74016)

def relationRow2257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74017) * ((1 : F) + (1 : F) * rho 74016) = ((1 : F) * rho 74014 + (1 : F) * rho 74015)

def relationRow2258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74018) * ((1 : F) + (-1 : F) * rho 74016) = ((1 : F) * rho 74013 + (-1 : F) * rho 74014 + (-1 : F) * rho 74015)

def relationLc694 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩], residual := [((-1 : F), 73963), ((-1 : F), 73977), ((-1 : F), 73991), ((-1 : F), 74005), ((1 : F), 74017)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71915) * (relationLc694 rho) = ((1 : F) * rho 74019)

def relationLc695 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩], residual := [((-1 : F), 73964), ((-1 : F), 73978), ((-1 : F), 73992), ((-1 : F), 74006), ((1 : F), 74018)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71915) * (relationLc695 rho) = ((1 : F) * rho 74020)

def relationRow2261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74010) * ((1 : F) * rho 74011) = ((1 : F) * rho 74021)

def relationRow2262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74010) * ((1 : F) * rho 74010) = ((1 : F) * rho 74022)

def relationRow2263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74011) * ((1 : F) * rho 74011) = ((1 : F) * rho 74023)

def relationRow2264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74024) * ((-1 : F) * rho 74022 + (1 : F) * rho 74023) = ((2 : F) * rho 74021)

def relationRow2265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74025) * ((2 : F) + (1 : F) * rho 74022 + (-1 : F) * rho 74023) = ((1 : F) * rho 74022 + (1 : F) * rho 74023)

def relationLc696 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73964), ((1 : F), 73977), ((1 : F), 73978), ((1 : F), 73991), ((1 : F), 73992), ((1 : F), 74005), ((1 : F), 74006), ((1 : F), 74019), ((1 : F), 74020)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2266 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc696 rho) = ((1 : F) * rho 74026)

def relationRow2267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74026) * ((1 : F) * rho 74024 + (1 : F) * rho 74025) = ((1 : F) * rho 74027)

def relationLc697 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73977), ((1 : F), 73991), ((1 : F), 74005), ((1 : F), 74019)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74025) * (relationLc697 rho) = ((1 : F) * rho 74028)

def relationLc698 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73964), ((1 : F), 73978), ((1 : F), 73992), ((1 : F), 74006), ((1 : F), 74020)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74024) * (relationLc698 rho) = ((1 : F) * rho 74029)

def relationRow2270 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74028) * ((1 : F) * rho 74029) = ((1 : F) * rho 74030)

def relationRow2271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74031) * ((1 : F) + (1 : F) * rho 74030) = ((1 : F) * rho 74028 + (1 : F) * rho 74029)

def relationRow2272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74032) * ((1 : F) + (-1 : F) * rho 74030) = ((1 : F) * rho 74027 + (-1 : F) * rho 74028 + (-1 : F) * rho 74029)

def relationLc699 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩], residual := [((-1 : F), 73963), ((-1 : F), 73977), ((-1 : F), 73991), ((-1 : F), 74005), ((-1 : F), 74019), ((1 : F), 74031)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71916) * (relationLc699 rho) = ((1 : F) * rho 74033)

def relationLc700 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩], residual := [((-1 : F), 73964), ((-1 : F), 73978), ((-1 : F), 73992), ((-1 : F), 74006), ((-1 : F), 74020), ((1 : F), 74032)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71916) * (relationLc700 rho) = ((1 : F) * rho 74034)

def relationRow2275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74024) * ((1 : F) * rho 74025) = ((1 : F) * rho 74035)

def relationRow2276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74024) * ((1 : F) * rho 74024) = ((1 : F) * rho 74036)

def relationRow2277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74025) * ((1 : F) * rho 74025) = ((1 : F) * rho 74037)

def relationRow2278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74038) * ((-1 : F) * rho 74036 + (1 : F) * rho 74037) = ((2 : F) * rho 74035)

def relationRow2279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74039) * ((2 : F) + (1 : F) * rho 74036 + (-1 : F) * rho 74037) = ((1 : F) * rho 74036 + (1 : F) * rho 74037)

def relationLc701 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73964), ((1 : F), 73977), ((1 : F), 73978), ((1 : F), 73991), ((1 : F), 73992), ((1 : F), 74005), ((1 : F), 74006), ((1 : F), 74019), ((1 : F), 74020), ((1 : F), 74033), ((1 : F), 74034)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2280 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc701 rho) = ((1 : F) * rho 74040)

def relationRow2281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74040) * ((1 : F) * rho 74038 + (1 : F) * rho 74039) = ((1 : F) * rho 74041)

def relationLc702 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73977), ((1 : F), 73991), ((1 : F), 74005), ((1 : F), 74019), ((1 : F), 74033)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74039) * (relationLc702 rho) = ((1 : F) * rho 74042)

def relationLc703 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73964), ((1 : F), 73978), ((1 : F), 73992), ((1 : F), 74006), ((1 : F), 74020), ((1 : F), 74034)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74038) * (relationLc703 rho) = ((1 : F) * rho 74043)

def relationRow2284 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74042) * ((1 : F) * rho 74043) = ((1 : F) * rho 74044)

def relationRow2285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74045) * ((1 : F) + (1 : F) * rho 74044) = ((1 : F) * rho 74042 + (1 : F) * rho 74043)

def relationRow2286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74046) * ((1 : F) + (-1 : F) * rho 74044) = ((1 : F) * rho 74041 + (-1 : F) * rho 74042 + (-1 : F) * rho 74043)

def relationLc704 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩], residual := [((-1 : F), 73963), ((-1 : F), 73977), ((-1 : F), 73991), ((-1 : F), 74005), ((-1 : F), 74019), ((-1 : F), 74033), ((1 : F), 74045)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71917) * (relationLc704 rho) = ((1 : F) * rho 74047)

def relationLc705 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩], residual := [((-1 : F), 73964), ((-1 : F), 73978), ((-1 : F), 73992), ((-1 : F), 74006), ((-1 : F), 74020), ((-1 : F), 74034), ((1 : F), 74046)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71917) * (relationLc705 rho) = ((1 : F) * rho 74048)

def relationRow2289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74038) * ((1 : F) * rho 74039) = ((1 : F) * rho 74049)

def relationRow2290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74038) * ((1 : F) * rho 74038) = ((1 : F) * rho 74050)

def relationRow2291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74039) * ((1 : F) * rho 74039) = ((1 : F) * rho 74051)

def relationRow2292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74052) * ((-1 : F) * rho 74050 + (1 : F) * rho 74051) = ((2 : F) * rho 74049)

def relationRow2293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74053) * ((2 : F) + (1 : F) * rho 74050 + (-1 : F) * rho 74051) = ((1 : F) * rho 74050 + (1 : F) * rho 74051)

def relationLc706 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73964), ((1 : F), 73977), ((1 : F), 73978), ((1 : F), 73991), ((1 : F), 73992), ((1 : F), 74005), ((1 : F), 74006), ((1 : F), 74019), ((1 : F), 74020), ((1 : F), 74033), ((1 : F), 74034), ((1 : F), 74047), ((1 : F), 74048)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2294 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc706 rho) = ((1 : F) * rho 74054)

def relationRow2295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74054) * ((1 : F) * rho 74052 + (1 : F) * rho 74053) = ((1 : F) * rho 74055)

def relationLc707 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73977), ((1 : F), 73991), ((1 : F), 74005), ((1 : F), 74019), ((1 : F), 74033), ((1 : F), 74047)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74053) * (relationLc707 rho) = ((1 : F) * rho 74056)

def relationLc708 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73964), ((1 : F), 73978), ((1 : F), 73992), ((1 : F), 74006), ((1 : F), 74020), ((1 : F), 74034), ((1 : F), 74048)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74052) * (relationLc708 rho) = ((1 : F) * rho 74057)

def relationRow2298 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74056) * ((1 : F) * rho 74057) = ((1 : F) * rho 74058)

def relationRow2299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74059) * ((1 : F) + (1 : F) * rho 74058) = ((1 : F) * rho 74056 + (1 : F) * rho 74057)

def relationRow2300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74060) * ((1 : F) + (-1 : F) * rho 74058) = ((1 : F) * rho 74055 + (-1 : F) * rho 74056 + (-1 : F) * rho 74057)

def relationLc709 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩], residual := [((-1 : F), 73963), ((-1 : F), 73977), ((-1 : F), 73991), ((-1 : F), 74005), ((-1 : F), 74019), ((-1 : F), 74033), ((-1 : F), 74047), ((1 : F), 74059)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71918) * (relationLc709 rho) = ((1 : F) * rho 74061)

def relationLc710 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩], residual := [((-1 : F), 73964), ((-1 : F), 73978), ((-1 : F), 73992), ((-1 : F), 74006), ((-1 : F), 74020), ((-1 : F), 74034), ((-1 : F), 74048), ((1 : F), 74060)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71918) * (relationLc710 rho) = ((1 : F) * rho 74062)

def relationRow2303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74052) * ((1 : F) * rho 74053) = ((1 : F) * rho 74063)

def relationRow2304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74052) * ((1 : F) * rho 74052) = ((1 : F) * rho 74064)

def relationRow2305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74053) * ((1 : F) * rho 74053) = ((1 : F) * rho 74065)

def relationRow2306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74066) * ((-1 : F) * rho 74064 + (1 : F) * rho 74065) = ((2 : F) * rho 74063)

def relationRow2307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74067) * ((2 : F) + (1 : F) * rho 74064 + (-1 : F) * rho 74065) = ((1 : F) * rho 74064 + (1 : F) * rho 74065)

def relationLc711 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73964), ((1 : F), 73977), ((1 : F), 73978), ((1 : F), 73991), ((1 : F), 73992), ((1 : F), 74005), ((1 : F), 74006), ((1 : F), 74019), ((1 : F), 74020), ((1 : F), 74033), ((1 : F), 74034), ((1 : F), 74047), ((1 : F), 74048), ((1 : F), 74061), ((1 : F), 74062)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2308 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc711 rho) = ((1 : F) * rho 74068)

def relationRow2309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74068) * ((1 : F) * rho 74066 + (1 : F) * rho 74067) = ((1 : F) * rho 74069)

def relationLc712 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73977), ((1 : F), 73991), ((1 : F), 74005), ((1 : F), 74019), ((1 : F), 74033), ((1 : F), 74047), ((1 : F), 74061)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74067) * (relationLc712 rho) = ((1 : F) * rho 74070)

def relationLc713 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73964), ((1 : F), 73978), ((1 : F), 73992), ((1 : F), 74006), ((1 : F), 74020), ((1 : F), 74034), ((1 : F), 74048), ((1 : F), 74062)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74066) * (relationLc713 rho) = ((1 : F) * rho 74071)

def relationRow2312 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74070) * ((1 : F) * rho 74071) = ((1 : F) * rho 74072)

def relationRow2313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74073) * ((1 : F) + (1 : F) * rho 74072) = ((1 : F) * rho 74070 + (1 : F) * rho 74071)

def relationRow2314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74074) * ((1 : F) + (-1 : F) * rho 74072) = ((1 : F) * rho 74069 + (-1 : F) * rho 74070 + (-1 : F) * rho 74071)

def relationLc714 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩], residual := [((-1 : F), 73963), ((-1 : F), 73977), ((-1 : F), 73991), ((-1 : F), 74005), ((-1 : F), 74019), ((-1 : F), 74033), ((-1 : F), 74047), ((-1 : F), 74061), ((1 : F), 74073)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71919) * (relationLc714 rho) = ((1 : F) * rho 74075)

def relationLc715 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩], residual := [((-1 : F), 73964), ((-1 : F), 73978), ((-1 : F), 73992), ((-1 : F), 74006), ((-1 : F), 74020), ((-1 : F), 74034), ((-1 : F), 74048), ((-1 : F), 74062), ((1 : F), 74074)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71919) * (relationLc715 rho) = ((1 : F) * rho 74076)

def relationRow2317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74066) * ((1 : F) * rho 74067) = ((1 : F) * rho 74077)

def relationRow2318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74066) * ((1 : F) * rho 74066) = ((1 : F) * rho 74078)

def relationRow2319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74067) * ((1 : F) * rho 74067) = ((1 : F) * rho 74079)

def relationRow2320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74080) * ((-1 : F) * rho 74078 + (1 : F) * rho 74079) = ((2 : F) * rho 74077)

def relationRow2321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74081) * ((2 : F) + (1 : F) * rho 74078 + (-1 : F) * rho 74079) = ((1 : F) * rho 74078 + (1 : F) * rho 74079)

def relationLc716 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73964), ((1 : F), 73977), ((1 : F), 73978), ((1 : F), 73991), ((1 : F), 73992), ((1 : F), 74005), ((1 : F), 74006), ((1 : F), 74019), ((1 : F), 74020), ((1 : F), 74033), ((1 : F), 74034), ((1 : F), 74047), ((1 : F), 74048), ((1 : F), 74061), ((1 : F), 74062), ((1 : F), 74075), ((1 : F), 74076)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2322 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc716 rho) = ((1 : F) * rho 74082)

def relationRow2323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74082) * ((1 : F) * rho 74080 + (1 : F) * rho 74081) = ((1 : F) * rho 74083)

def relationLc717 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73977), ((1 : F), 73991), ((1 : F), 74005), ((1 : F), 74019), ((1 : F), 74033), ((1 : F), 74047), ((1 : F), 74061), ((1 : F), 74075)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74081) * (relationLc717 rho) = ((1 : F) * rho 74084)

def relationLc718 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73964), ((1 : F), 73978), ((1 : F), 73992), ((1 : F), 74006), ((1 : F), 74020), ((1 : F), 74034), ((1 : F), 74048), ((1 : F), 74062), ((1 : F), 74076)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74080) * (relationLc718 rho) = ((1 : F) * rho 74085)

def relationRow2326 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74084) * ((1 : F) * rho 74085) = ((1 : F) * rho 74086)

def relationRow2327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74087) * ((1 : F) + (1 : F) * rho 74086) = ((1 : F) * rho 74084 + (1 : F) * rho 74085)

def relationRow2328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74088) * ((1 : F) + (-1 : F) * rho 74086) = ((1 : F) * rho 74083 + (-1 : F) * rho 74084 + (-1 : F) * rho 74085)

def relationLc719 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩], residual := [((-1 : F), 73963), ((-1 : F), 73977), ((-1 : F), 73991), ((-1 : F), 74005), ((-1 : F), 74019), ((-1 : F), 74033), ((-1 : F), 74047), ((-1 : F), 74061), ((-1 : F), 74075), ((1 : F), 74087)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71920) * (relationLc719 rho) = ((1 : F) * rho 74089)

def relationLc720 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩], residual := [((-1 : F), 73964), ((-1 : F), 73978), ((-1 : F), 73992), ((-1 : F), 74006), ((-1 : F), 74020), ((-1 : F), 74034), ((-1 : F), 74048), ((-1 : F), 74062), ((-1 : F), 74076), ((1 : F), 74088)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71920) * (relationLc720 rho) = ((1 : F) * rho 74090)

def relationRow2331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74080) * ((1 : F) * rho 74081) = ((1 : F) * rho 74091)

def relationRow2332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74080) * ((1 : F) * rho 74080) = ((1 : F) * rho 74092)

def relationRow2333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74081) * ((1 : F) * rho 74081) = ((1 : F) * rho 74093)

def relationRow2334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74094) * ((-1 : F) * rho 74092 + (1 : F) * rho 74093) = ((2 : F) * rho 74091)

def relationRow2335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74095) * ((2 : F) + (1 : F) * rho 74092 + (-1 : F) * rho 74093) = ((1 : F) * rho 74092 + (1 : F) * rho 74093)

def relationLc721 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73964), ((1 : F), 73977), ((1 : F), 73978), ((1 : F), 73991), ((1 : F), 73992), ((1 : F), 74005), ((1 : F), 74006), ((1 : F), 74019), ((1 : F), 74020), ((1 : F), 74033), ((1 : F), 74034), ((1 : F), 74047), ((1 : F), 74048), ((1 : F), 74061), ((1 : F), 74062), ((1 : F), 74075), ((1 : F), 74076), ((1 : F), 74089), ((1 : F), 74090)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2336 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc721 rho) = ((1 : F) * rho 74096)

def relationRow2337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74096) * ((1 : F) * rho 74094 + (1 : F) * rho 74095) = ((1 : F) * rho 74097)

def relationLc722 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73977), ((1 : F), 73991), ((1 : F), 74005), ((1 : F), 74019), ((1 : F), 74033), ((1 : F), 74047), ((1 : F), 74061), ((1 : F), 74075), ((1 : F), 74089)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74095) * (relationLc722 rho) = ((1 : F) * rho 74098)

def relationLc723 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73964), ((1 : F), 73978), ((1 : F), 73992), ((1 : F), 74006), ((1 : F), 74020), ((1 : F), 74034), ((1 : F), 74048), ((1 : F), 74062), ((1 : F), 74076), ((1 : F), 74090)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74094) * (relationLc723 rho) = ((1 : F) * rho 74099)

def relationRow2340 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74098) * ((1 : F) * rho 74099) = ((1 : F) * rho 74100)

def relationRow2341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74101) * ((1 : F) + (1 : F) * rho 74100) = ((1 : F) * rho 74098 + (1 : F) * rho 74099)

def relationRow2342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74102) * ((1 : F) + (-1 : F) * rho 74100) = ((1 : F) * rho 74097 + (-1 : F) * rho 74098 + (-1 : F) * rho 74099)

def relationLc724 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩], residual := [((-1 : F), 73963), ((-1 : F), 73977), ((-1 : F), 73991), ((-1 : F), 74005), ((-1 : F), 74019), ((-1 : F), 74033), ((-1 : F), 74047), ((-1 : F), 74061), ((-1 : F), 74075), ((-1 : F), 74089), ((1 : F), 74101)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71921) * (relationLc724 rho) = ((1 : F) * rho 74103)

def relationLc725 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩], residual := [((-1 : F), 73964), ((-1 : F), 73978), ((-1 : F), 73992), ((-1 : F), 74006), ((-1 : F), 74020), ((-1 : F), 74034), ((-1 : F), 74048), ((-1 : F), 74062), ((-1 : F), 74076), ((-1 : F), 74090), ((1 : F), 74102)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71921) * (relationLc725 rho) = ((1 : F) * rho 74104)

def relationRow2345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74094) * ((1 : F) * rho 74095) = ((1 : F) * rho 74105)

def relationRow2346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74094) * ((1 : F) * rho 74094) = ((1 : F) * rho 74106)

def relationRow2347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74095) * ((1 : F) * rho 74095) = ((1 : F) * rho 74107)

def relationRow2348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74108) * ((-1 : F) * rho 74106 + (1 : F) * rho 74107) = ((2 : F) * rho 74105)

def relationRow2349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74109) * ((2 : F) + (1 : F) * rho 74106 + (-1 : F) * rho 74107) = ((1 : F) * rho 74106 + (1 : F) * rho 74107)

def relationLc726 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73964), ((1 : F), 73977), ((1 : F), 73978), ((1 : F), 73991), ((1 : F), 73992), ((1 : F), 74005), ((1 : F), 74006), ((1 : F), 74019), ((1 : F), 74020), ((1 : F), 74033), ((1 : F), 74034), ((1 : F), 74047), ((1 : F), 74048), ((1 : F), 74061), ((1 : F), 74062), ((1 : F), 74075), ((1 : F), 74076), ((1 : F), 74089), ((1 : F), 74090), ((1 : F), 74103), ((1 : F), 74104)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2350 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc726 rho) = ((1 : F) * rho 74110)

def relationRow2351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74110) * ((1 : F) * rho 74108 + (1 : F) * rho 74109) = ((1 : F) * rho 74111)

def relationLc727 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73977), ((1 : F), 73991), ((1 : F), 74005), ((1 : F), 74019), ((1 : F), 74033), ((1 : F), 74047), ((1 : F), 74061), ((1 : F), 74075), ((1 : F), 74089), ((1 : F), 74103)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74109) * (relationLc727 rho) = ((1 : F) * rho 74112)

def relationLc728 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73964), ((1 : F), 73978), ((1 : F), 73992), ((1 : F), 74006), ((1 : F), 74020), ((1 : F), 74034), ((1 : F), 74048), ((1 : F), 74062), ((1 : F), 74076), ((1 : F), 74090), ((1 : F), 74104)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74108) * (relationLc728 rho) = ((1 : F) * rho 74113)

def relationRow2354 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74112) * ((1 : F) * rho 74113) = ((1 : F) * rho 74114)

def relationRow2355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74115) * ((1 : F) + (1 : F) * rho 74114) = ((1 : F) * rho 74112 + (1 : F) * rho 74113)

def relationRow2356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74116) * ((1 : F) + (-1 : F) * rho 74114) = ((1 : F) * rho 74111 + (-1 : F) * rho 74112 + (-1 : F) * rho 74113)

def relationLc729 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩], residual := [((-1 : F), 73963), ((-1 : F), 73977), ((-1 : F), 73991), ((-1 : F), 74005), ((-1 : F), 74019), ((-1 : F), 74033), ((-1 : F), 74047), ((-1 : F), 74061), ((-1 : F), 74075), ((-1 : F), 74089), ((-1 : F), 74103), ((1 : F), 74115)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71922) * (relationLc729 rho) = ((1 : F) * rho 74117)

def relationLc730 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩], residual := [((-1 : F), 73964), ((-1 : F), 73978), ((-1 : F), 73992), ((-1 : F), 74006), ((-1 : F), 74020), ((-1 : F), 74034), ((-1 : F), 74048), ((-1 : F), 74062), ((-1 : F), 74076), ((-1 : F), 74090), ((-1 : F), 74104), ((1 : F), 74116)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71922) * (relationLc730 rho) = ((1 : F) * rho 74118)

def relationRow2359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74108) * ((1 : F) * rho 74109) = ((1 : F) * rho 74119)

def relationRow2360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74108) * ((1 : F) * rho 74108) = ((1 : F) * rho 74120)

def relationRow2361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74109) * ((1 : F) * rho 74109) = ((1 : F) * rho 74121)

def relationRow2362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74122) * ((-1 : F) * rho 74120 + (1 : F) * rho 74121) = ((2 : F) * rho 74119)

def relationRow2363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74123) * ((2 : F) + (1 : F) * rho 74120 + (-1 : F) * rho 74121) = ((1 : F) * rho 74120 + (1 : F) * rho 74121)

def relationLc731 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73964), ((1 : F), 73977), ((1 : F), 73978), ((1 : F), 73991), ((1 : F), 73992), ((1 : F), 74005), ((1 : F), 74006), ((1 : F), 74019), ((1 : F), 74020), ((1 : F), 74033), ((1 : F), 74034), ((1 : F), 74047), ((1 : F), 74048), ((1 : F), 74061), ((1 : F), 74062), ((1 : F), 74075), ((1 : F), 74076), ((1 : F), 74089), ((1 : F), 74090), ((1 : F), 74103), ((1 : F), 74104), ((1 : F), 74117), ((1 : F), 74118)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2364 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc731 rho) = ((1 : F) * rho 74124)

def relationRow2365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74124) * ((1 : F) * rho 74122 + (1 : F) * rho 74123) = ((1 : F) * rho 74125)

def relationLc732 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73977), ((1 : F), 73991), ((1 : F), 74005), ((1 : F), 74019), ((1 : F), 74033), ((1 : F), 74047), ((1 : F), 74061), ((1 : F), 74075), ((1 : F), 74089), ((1 : F), 74103), ((1 : F), 74117)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74123) * (relationLc732 rho) = ((1 : F) * rho 74126)

def relationLc733 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73964), ((1 : F), 73978), ((1 : F), 73992), ((1 : F), 74006), ((1 : F), 74020), ((1 : F), 74034), ((1 : F), 74048), ((1 : F), 74062), ((1 : F), 74076), ((1 : F), 74090), ((1 : F), 74104), ((1 : F), 74118)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74122) * (relationLc733 rho) = ((1 : F) * rho 74127)

def relationRow2368 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74126) * ((1 : F) * rho 74127) = ((1 : F) * rho 74128)

def relationRow2369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74129) * ((1 : F) + (1 : F) * rho 74128) = ((1 : F) * rho 74126 + (1 : F) * rho 74127)

def relationRow2370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74130) * ((1 : F) + (-1 : F) * rho 74128) = ((1 : F) * rho 74125 + (-1 : F) * rho 74126 + (-1 : F) * rho 74127)

def relationLc734 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩], residual := [((-1 : F), 73963), ((-1 : F), 73977), ((-1 : F), 73991), ((-1 : F), 74005), ((-1 : F), 74019), ((-1 : F), 74033), ((-1 : F), 74047), ((-1 : F), 74061), ((-1 : F), 74075), ((-1 : F), 74089), ((-1 : F), 74103), ((-1 : F), 74117), ((1 : F), 74129)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71923) * (relationLc734 rho) = ((1 : F) * rho 74131)

def relationLc735 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩], residual := [((-1 : F), 73964), ((-1 : F), 73978), ((-1 : F), 73992), ((-1 : F), 74006), ((-1 : F), 74020), ((-1 : F), 74034), ((-1 : F), 74048), ((-1 : F), 74062), ((-1 : F), 74076), ((-1 : F), 74090), ((-1 : F), 74104), ((-1 : F), 74118), ((1 : F), 74130)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71923) * (relationLc735 rho) = ((1 : F) * rho 74132)

def relationRow2373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74122) * ((1 : F) * rho 74123) = ((1 : F) * rho 74133)

def relationRow2374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74122) * ((1 : F) * rho 74122) = ((1 : F) * rho 74134)

def relationRow2375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74123) * ((1 : F) * rho 74123) = ((1 : F) * rho 74135)

def relationRow2376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74136) * ((-1 : F) * rho 74134 + (1 : F) * rho 74135) = ((2 : F) * rho 74133)

def relationRow2377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74137) * ((2 : F) + (1 : F) * rho 74134 + (-1 : F) * rho 74135) = ((1 : F) * rho 74134 + (1 : F) * rho 74135)

def relationLc736 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73964), ((1 : F), 73977), ((1 : F), 73978), ((1 : F), 73991), ((1 : F), 73992), ((1 : F), 74005), ((1 : F), 74006), ((1 : F), 74019), ((1 : F), 74020), ((1 : F), 74033), ((1 : F), 74034), ((1 : F), 74047), ((1 : F), 74048), ((1 : F), 74061), ((1 : F), 74062), ((1 : F), 74075), ((1 : F), 74076), ((1 : F), 74089), ((1 : F), 74090), ((1 : F), 74103), ((1 : F), 74104), ((1 : F), 74117), ((1 : F), 74118), ((1 : F), 74131), ((1 : F), 74132)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2378 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc736 rho) = ((1 : F) * rho 74138)

def relationRow2379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74138) * ((1 : F) * rho 74136 + (1 : F) * rho 74137) = ((1 : F) * rho 74139)

def relationLc737 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73977), ((1 : F), 73991), ((1 : F), 74005), ((1 : F), 74019), ((1 : F), 74033), ((1 : F), 74047), ((1 : F), 74061), ((1 : F), 74075), ((1 : F), 74089), ((1 : F), 74103), ((1 : F), 74117), ((1 : F), 74131)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74137) * (relationLc737 rho) = ((1 : F) * rho 74140)

def relationLc738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73964), ((1 : F), 73978), ((1 : F), 73992), ((1 : F), 74006), ((1 : F), 74020), ((1 : F), 74034), ((1 : F), 74048), ((1 : F), 74062), ((1 : F), 74076), ((1 : F), 74090), ((1 : F), 74104), ((1 : F), 74118), ((1 : F), 74132)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74136) * (relationLc738 rho) = ((1 : F) * rho 74141)

def relationRow2382 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74140) * ((1 : F) * rho 74141) = ((1 : F) * rho 74142)

def relationRow2383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74143) * ((1 : F) + (1 : F) * rho 74142) = ((1 : F) * rho 74140 + (1 : F) * rho 74141)

def relationRow2384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74144) * ((1 : F) + (-1 : F) * rho 74142) = ((1 : F) * rho 74139 + (-1 : F) * rho 74140 + (-1 : F) * rho 74141)

def relationLc739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩], residual := [((-1 : F), 73963), ((-1 : F), 73977), ((-1 : F), 73991), ((-1 : F), 74005), ((-1 : F), 74019), ((-1 : F), 74033), ((-1 : F), 74047), ((-1 : F), 74061), ((-1 : F), 74075), ((-1 : F), 74089), ((-1 : F), 74103), ((-1 : F), 74117), ((-1 : F), 74131), ((1 : F), 74143)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71924) * (relationLc739 rho) = ((1 : F) * rho 74145)

def relationLc740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩], residual := [((-1 : F), 73964), ((-1 : F), 73978), ((-1 : F), 73992), ((-1 : F), 74006), ((-1 : F), 74020), ((-1 : F), 74034), ((-1 : F), 74048), ((-1 : F), 74062), ((-1 : F), 74076), ((-1 : F), 74090), ((-1 : F), 74104), ((-1 : F), 74118), ((-1 : F), 74132), ((1 : F), 74144)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71924) * (relationLc740 rho) = ((1 : F) * rho 74146)

def relationRow2387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74136) * ((1 : F) * rho 74137) = ((1 : F) * rho 74147)

def relationRow2388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74136) * ((1 : F) * rho 74136) = ((1 : F) * rho 74148)

def relationRow2389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74137) * ((1 : F) * rho 74137) = ((1 : F) * rho 74149)

def relationRow2390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74150) * ((-1 : F) * rho 74148 + (1 : F) * rho 74149) = ((2 : F) * rho 74147)

def relationRow2391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74151) * ((2 : F) + (1 : F) * rho 74148 + (-1 : F) * rho 74149) = ((1 : F) * rho 74148 + (1 : F) * rho 74149)

def relationLc741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73964), ((1 : F), 73977), ((1 : F), 73978), ((1 : F), 73991), ((1 : F), 73992), ((1 : F), 74005), ((1 : F), 74006), ((1 : F), 74019), ((1 : F), 74020), ((1 : F), 74033), ((1 : F), 74034), ((1 : F), 74047), ((1 : F), 74048), ((1 : F), 74061), ((1 : F), 74062), ((1 : F), 74075), ((1 : F), 74076), ((1 : F), 74089), ((1 : F), 74090), ((1 : F), 74103), ((1 : F), 74104), ((1 : F), 74117), ((1 : F), 74118), ((1 : F), 74131), ((1 : F), 74132), ((1 : F), 74145), ((1 : F), 74146)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2392 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc741 rho) = ((1 : F) * rho 74152)

def relationRow2393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74152) * ((1 : F) * rho 74150 + (1 : F) * rho 74151) = ((1 : F) * rho 74153)

def relationLc742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73977), ((1 : F), 73991), ((1 : F), 74005), ((1 : F), 74019), ((1 : F), 74033), ((1 : F), 74047), ((1 : F), 74061), ((1 : F), 74075), ((1 : F), 74089), ((1 : F), 74103), ((1 : F), 74117), ((1 : F), 74131), ((1 : F), 74145)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74151) * (relationLc742 rho) = ((1 : F) * rho 74154)

def relationLc743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73964), ((1 : F), 73978), ((1 : F), 73992), ((1 : F), 74006), ((1 : F), 74020), ((1 : F), 74034), ((1 : F), 74048), ((1 : F), 74062), ((1 : F), 74076), ((1 : F), 74090), ((1 : F), 74104), ((1 : F), 74118), ((1 : F), 74132), ((1 : F), 74146)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74150) * (relationLc743 rho) = ((1 : F) * rho 74155)

def relationRow2396 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74154) * ((1 : F) * rho 74155) = ((1 : F) * rho 74156)

def relationRow2397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74157) * ((1 : F) + (1 : F) * rho 74156) = ((1 : F) * rho 74154 + (1 : F) * rho 74155)

def relationRow2398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74158) * ((1 : F) + (-1 : F) * rho 74156) = ((1 : F) * rho 74153 + (-1 : F) * rho 74154 + (-1 : F) * rho 74155)

def relationLc744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩], residual := [((-1 : F), 73963), ((-1 : F), 73977), ((-1 : F), 73991), ((-1 : F), 74005), ((-1 : F), 74019), ((-1 : F), 74033), ((-1 : F), 74047), ((-1 : F), 74061), ((-1 : F), 74075), ((-1 : F), 74089), ((-1 : F), 74103), ((-1 : F), 74117), ((-1 : F), 74131), ((-1 : F), 74145), ((1 : F), 74157)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71925) * (relationLc744 rho) = ((1 : F) * rho 74159)

def relationLc745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩], residual := [((-1 : F), 73964), ((-1 : F), 73978), ((-1 : F), 73992), ((-1 : F), 74006), ((-1 : F), 74020), ((-1 : F), 74034), ((-1 : F), 74048), ((-1 : F), 74062), ((-1 : F), 74076), ((-1 : F), 74090), ((-1 : F), 74104), ((-1 : F), 74118), ((-1 : F), 74132), ((-1 : F), 74146), ((1 : F), 74158)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71925) * (relationLc745 rho) = ((1 : F) * rho 74160)

def relationRow2401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74150) * ((1 : F) * rho 74151) = ((1 : F) * rho 74161)

def relationRow2402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74150) * ((1 : F) * rho 74150) = ((1 : F) * rho 74162)

def relationRow2403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74151) * ((1 : F) * rho 74151) = ((1 : F) * rho 74163)

def relationRow2404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74164) * ((-1 : F) * rho 74162 + (1 : F) * rho 74163) = ((2 : F) * rho 74161)

def relationRow2405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74165) * ((2 : F) + (1 : F) * rho 74162 + (-1 : F) * rho 74163) = ((1 : F) * rho 74162 + (1 : F) * rho 74163)

def relationLc746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73964), ((1 : F), 73977), ((1 : F), 73978), ((1 : F), 73991), ((1 : F), 73992), ((1 : F), 74005), ((1 : F), 74006), ((1 : F), 74019), ((1 : F), 74020), ((1 : F), 74033), ((1 : F), 74034), ((1 : F), 74047), ((1 : F), 74048), ((1 : F), 74061), ((1 : F), 74062), ((1 : F), 74075), ((1 : F), 74076), ((1 : F), 74089), ((1 : F), 74090), ((1 : F), 74103), ((1 : F), 74104), ((1 : F), 74117), ((1 : F), 74118), ((1 : F), 74131), ((1 : F), 74132), ((1 : F), 74145), ((1 : F), 74146), ((1 : F), 74159), ((1 : F), 74160)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2406 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc746 rho) = ((1 : F) * rho 74166)

def relationRow2407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74166) * ((1 : F) * rho 74164 + (1 : F) * rho 74165) = ((1 : F) * rho 74167)

def relationLc747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩], residual := [((1 : F), 73963), ((1 : F), 73977), ((1 : F), 73991), ((1 : F), 74005), ((1 : F), 74019), ((1 : F), 74033), ((1 : F), 74047), ((1 : F), 74061), ((1 : F), 74075), ((1 : F), 74089), ((1 : F), 74103), ((1 : F), 74117), ((1 : F), 74131), ((1 : F), 74145), ((1 : F), 74159)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74165) * (relationLc747 rho) = ((1 : F) * rho 74168)

def relationLc748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩], residual := [((1 : F), 73964), ((1 : F), 73978), ((1 : F), 73992), ((1 : F), 74006), ((1 : F), 74020), ((1 : F), 74034), ((1 : F), 74048), ((1 : F), 74062), ((1 : F), 74076), ((1 : F), 74090), ((1 : F), 74104), ((1 : F), 74118), ((1 : F), 74132), ((1 : F), 74146), ((1 : F), 74160)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74164) * (relationLc748 rho) = ((1 : F) * rho 74169)

def relationRow2410 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74168) * ((1 : F) * rho 74169) = ((1 : F) * rho 74170)

def relationRow2411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74171) * ((1 : F) + (1 : F) * rho 74170) = ((1 : F) * rho 74168 + (1 : F) * rho 74169)

def relationRow2412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74172) * ((1 : F) + (-1 : F) * rho 74170) = ((1 : F) * rho 74167 + (-1 : F) * rho 74168 + (-1 : F) * rho 74169)

def relationLc749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩], residual := [((-1 : F), 73963), ((-1 : F), 73977), ((-1 : F), 73991), ((-1 : F), 74005), ((-1 : F), 74019), ((-1 : F), 74033), ((-1 : F), 74047), ((-1 : F), 74061), ((-1 : F), 74075), ((-1 : F), 74089), ((-1 : F), 74103), ((-1 : F), 74117), ((-1 : F), 74131), ((-1 : F), 74145), ((-1 : F), 74159), ((1 : F), 74171)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71926) * (relationLc749 rho) = ((1 : F) * rho 74173)

def relationLc750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩], residual := [((-1 : F), 73964), ((-1 : F), 73978), ((-1 : F), 73992), ((-1 : F), 74006), ((-1 : F), 74020), ((-1 : F), 74034), ((-1 : F), 74048), ((-1 : F), 74062), ((-1 : F), 74076), ((-1 : F), 74090), ((-1 : F), 74104), ((-1 : F), 74118), ((-1 : F), 74132), ((-1 : F), 74146), ((-1 : F), 74160), ((1 : F), 74172)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71926) * (relationLc750 rho) = ((1 : F) * rho 74174)

def relationRow2415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74164) * ((1 : F) * rho 74165) = ((1 : F) * rho 74175)

def relationRow2416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74164) * ((1 : F) * rho 74164) = ((1 : F) * rho 74176)

def relationRow2417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74165) * ((1 : F) * rho 74165) = ((1 : F) * rho 74177)

def relationRow2418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74178) * ((-1 : F) * rho 74176 + (1 : F) * rho 74177) = ((2 : F) * rho 74175)

def relationRow2419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74179) * ((2 : F) + (1 : F) * rho 74176 + (-1 : F) * rho 74177) = ((1 : F) * rho 74176 + (1 : F) * rho 74177)

def relationLc751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 16⟩, ⟨(1 : F), 73964, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2420 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc751 rho) = ((1 : F) * rho 74180)

def relationRow2421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74180) * ((1 : F) * rho 74178 + (1 : F) * rho 74179) = ((1 : F) * rho 74181)

def relationLc752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74179) * (relationLc752 rho) = ((1 : F) * rho 74182)

def relationLc753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74178) * (relationLc753 rho) = ((1 : F) * rho 74183)

def relationRow2424 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74182) * ((1 : F) * rho 74183) = ((1 : F) * rho 74184)

def relationRow2425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74185) * ((1 : F) + (1 : F) * rho 74184) = ((1 : F) * rho 74182 + (1 : F) * rho 74183)

def relationRow2426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74186) * ((1 : F) + (-1 : F) * rho 74184) = ((1 : F) * rho 74181 + (-1 : F) * rho 74182 + (-1 : F) * rho 74183)

def relationLc754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 16⟩], residual := [((1 : F), 74185)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71927) * (relationLc754 rho) = ((1 : F) * rho 74187)

def relationLc755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 16⟩], residual := [((1 : F), 74186)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71927) * (relationLc755 rho) = ((1 : F) * rho 74188)

def relationRow2429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74178) * ((1 : F) * rho 74179) = ((1 : F) * rho 74189)

def relationRow2430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74178) * ((1 : F) * rho 74178) = ((1 : F) * rho 74190)

def relationRow2431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74179) * ((1 : F) * rho 74179) = ((1 : F) * rho 74191)

def relationRow2432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74192) * ((-1 : F) * rho 74190 + (1 : F) * rho 74191) = ((2 : F) * rho 74189)

def relationRow2433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74193) * ((2 : F) + (1 : F) * rho 74190 + (-1 : F) * rho 74191) = ((1 : F) * rho 74190 + (1 : F) * rho 74191)

def relationLc756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 17⟩, ⟨(1 : F), 73964, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2434 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc756 rho) = ((1 : F) * rho 74194)

def relationRow2435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74194) * ((1 : F) * rho 74192 + (1 : F) * rho 74193) = ((1 : F) * rho 74195)

def relationLc757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74193) * (relationLc757 rho) = ((1 : F) * rho 74196)

def relationLc758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74192) * (relationLc758 rho) = ((1 : F) * rho 74197)

def relationRow2438 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74196) * ((1 : F) * rho 74197) = ((1 : F) * rho 74198)

def relationRow2439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74199) * ((1 : F) + (1 : F) * rho 74198) = ((1 : F) * rho 74196 + (1 : F) * rho 74197)

def relationRow2440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74200) * ((1 : F) + (-1 : F) * rho 74198) = ((1 : F) * rho 74195 + (-1 : F) * rho 74196 + (-1 : F) * rho 74197)

def relationLc759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 17⟩], residual := [((1 : F), 74199)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71928) * (relationLc759 rho) = ((1 : F) * rho 74201)

def relationLc760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 17⟩], residual := [((1 : F), 74200)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71928) * (relationLc760 rho) = ((1 : F) * rho 74202)

def relationRow2443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74192) * ((1 : F) * rho 74193) = ((1 : F) * rho 74203)

def relationRow2444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74192) * ((1 : F) * rho 74192) = ((1 : F) * rho 74204)

def relationRow2445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74193) * ((1 : F) * rho 74193) = ((1 : F) * rho 74205)

def relationRow2446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74206) * ((-1 : F) * rho 74204 + (1 : F) * rho 74205) = ((2 : F) * rho 74203)

def relationRow2447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74207) * ((2 : F) + (1 : F) * rho 74204 + (-1 : F) * rho 74205) = ((1 : F) * rho 74204 + (1 : F) * rho 74205)

def relationLc761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 18⟩, ⟨(1 : F), 73964, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2448 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc761 rho) = ((1 : F) * rho 74208)

def relationRow2449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74208) * ((1 : F) * rho 74206 + (1 : F) * rho 74207) = ((1 : F) * rho 74209)

def relationLc762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74207) * (relationLc762 rho) = ((1 : F) * rho 74210)

def relationLc763 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74206) * (relationLc763 rho) = ((1 : F) * rho 74211)

def relationRow2452 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74210) * ((1 : F) * rho 74211) = ((1 : F) * rho 74212)

def relationRow2453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74213) * ((1 : F) + (1 : F) * rho 74212) = ((1 : F) * rho 74210 + (1 : F) * rho 74211)

def relationRow2454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74214) * ((1 : F) + (-1 : F) * rho 74212) = ((1 : F) * rho 74209 + (-1 : F) * rho 74210 + (-1 : F) * rho 74211)

def relationLc764 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 18⟩], residual := [((1 : F), 74213)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71929) * (relationLc764 rho) = ((1 : F) * rho 74215)

def relationLc765 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 18⟩], residual := [((1 : F), 74214)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71929) * (relationLc765 rho) = ((1 : F) * rho 74216)

def relationRow2457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74206) * ((1 : F) * rho 74207) = ((1 : F) * rho 74217)

def relationRow2458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74206) * ((1 : F) * rho 74206) = ((1 : F) * rho 74218)

def relationRow2459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74207) * ((1 : F) * rho 74207) = ((1 : F) * rho 74219)

def relationRow2460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74220) * ((-1 : F) * rho 74218 + (1 : F) * rho 74219) = ((2 : F) * rho 74217)

def relationRow2461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74221) * ((2 : F) + (1 : F) * rho 74218 + (-1 : F) * rho 74219) = ((1 : F) * rho 74218 + (1 : F) * rho 74219)

def relationLc766 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 19⟩, ⟨(1 : F), 73964, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2462 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc766 rho) = ((1 : F) * rho 74222)

def relationRow2463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74222) * ((1 : F) * rho 74220 + (1 : F) * rho 74221) = ((1 : F) * rho 74223)

def relationLc767 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74221) * (relationLc767 rho) = ((1 : F) * rho 74224)

def relationLc768 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74220) * (relationLc768 rho) = ((1 : F) * rho 74225)

def relationRow2466 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74224) * ((1 : F) * rho 74225) = ((1 : F) * rho 74226)

def relationRow2467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74227) * ((1 : F) + (1 : F) * rho 74226) = ((1 : F) * rho 74224 + (1 : F) * rho 74225)

def relationRow2468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74228) * ((1 : F) + (-1 : F) * rho 74226) = ((1 : F) * rho 74223 + (-1 : F) * rho 74224 + (-1 : F) * rho 74225)

def relationLc769 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 19⟩], residual := [((1 : F), 74227)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71930) * (relationLc769 rho) = ((1 : F) * rho 74229)

def relationLc770 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 19⟩], residual := [((1 : F), 74228)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71930) * (relationLc770 rho) = ((1 : F) * rho 74230)

def relationRow2471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74220) * ((1 : F) * rho 74221) = ((1 : F) * rho 74231)

def relationRow2472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74220) * ((1 : F) * rho 74220) = ((1 : F) * rho 74232)

def relationRow2473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74221) * ((1 : F) * rho 74221) = ((1 : F) * rho 74233)

def relationRow2474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74234) * ((-1 : F) * rho 74232 + (1 : F) * rho 74233) = ((2 : F) * rho 74231)

def relationRow2475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74235) * ((2 : F) + (1 : F) * rho 74232 + (-1 : F) * rho 74233) = ((1 : F) * rho 74232 + (1 : F) * rho 74233)

def relationLc771 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 20⟩, ⟨(1 : F), 73964, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2476 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc771 rho) = ((1 : F) * rho 74236)

def relationRow2477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74236) * ((1 : F) * rho 74234 + (1 : F) * rho 74235) = ((1 : F) * rho 74237)

def relationLc772 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74235) * (relationLc772 rho) = ((1 : F) * rho 74238)

def relationLc773 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74234) * (relationLc773 rho) = ((1 : F) * rho 74239)

def relationRow2480 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74238) * ((1 : F) * rho 74239) = ((1 : F) * rho 74240)

def relationRow2481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74241) * ((1 : F) + (1 : F) * rho 74240) = ((1 : F) * rho 74238 + (1 : F) * rho 74239)

def relationRow2482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74242) * ((1 : F) + (-1 : F) * rho 74240) = ((1 : F) * rho 74237 + (-1 : F) * rho 74238 + (-1 : F) * rho 74239)

def relationLc774 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 20⟩], residual := [((1 : F), 74241)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71931) * (relationLc774 rho) = ((1 : F) * rho 74243)

def relationLc775 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 20⟩], residual := [((1 : F), 74242)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71931) * (relationLc775 rho) = ((1 : F) * rho 74244)

def relationRow2485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74234) * ((1 : F) * rho 74235) = ((1 : F) * rho 74245)

def relationRow2486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74234) * ((1 : F) * rho 74234) = ((1 : F) * rho 74246)

def relationRow2487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74235) * ((1 : F) * rho 74235) = ((1 : F) * rho 74247)

def relationRow2488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74248) * ((-1 : F) * rho 74246 + (1 : F) * rho 74247) = ((2 : F) * rho 74245)

def relationRow2489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74249) * ((2 : F) + (1 : F) * rho 74246 + (-1 : F) * rho 74247) = ((1 : F) * rho 74246 + (1 : F) * rho 74247)

def relationLc776 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 21⟩, ⟨(1 : F), 73964, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2490 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc776 rho) = ((1 : F) * rho 74250)

def relationRow2491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74250) * ((1 : F) * rho 74248 + (1 : F) * rho 74249) = ((1 : F) * rho 74251)

def relationLc777 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74249) * (relationLc777 rho) = ((1 : F) * rho 74252)

def relationLc778 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74248) * (relationLc778 rho) = ((1 : F) * rho 74253)

def relationRow2494 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74252) * ((1 : F) * rho 74253) = ((1 : F) * rho 74254)

def relationRow2495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74255) * ((1 : F) + (1 : F) * rho 74254) = ((1 : F) * rho 74252 + (1 : F) * rho 74253)

def relationRow2496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74256) * ((1 : F) + (-1 : F) * rho 74254) = ((1 : F) * rho 74251 + (-1 : F) * rho 74252 + (-1 : F) * rho 74253)

def relationLc779 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 21⟩], residual := [((1 : F), 74255)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71932) * (relationLc779 rho) = ((1 : F) * rho 74257)

def relationLc780 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 21⟩], residual := [((1 : F), 74256)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71932) * (relationLc780 rho) = ((1 : F) * rho 74258)

def relationRow2499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74248) * ((1 : F) * rho 74249) = ((1 : F) * rho 74259)

def relationRow2500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74248) * ((1 : F) * rho 74248) = ((1 : F) * rho 74260)

def relationRow2501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74249) * ((1 : F) * rho 74249) = ((1 : F) * rho 74261)

def relationRow2502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74262) * ((-1 : F) * rho 74260 + (1 : F) * rho 74261) = ((2 : F) * rho 74259)

def relationRow2503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74263) * ((2 : F) + (1 : F) * rho 74260 + (-1 : F) * rho 74261) = ((1 : F) * rho 74260 + (1 : F) * rho 74261)

def relationLc781 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 22⟩, ⟨(1 : F), 73964, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2504 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc781 rho) = ((1 : F) * rho 74264)

def relationRow2505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74264) * ((1 : F) * rho 74262 + (1 : F) * rho 74263) = ((1 : F) * rho 74265)

def relationLc782 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74263) * (relationLc782 rho) = ((1 : F) * rho 74266)

def relationLc783 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74262) * (relationLc783 rho) = ((1 : F) * rho 74267)

def relationRow2508 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74266) * ((1 : F) * rho 74267) = ((1 : F) * rho 74268)

def relationRow2509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74269) * ((1 : F) + (1 : F) * rho 74268) = ((1 : F) * rho 74266 + (1 : F) * rho 74267)

def relationRow2510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74270) * ((1 : F) + (-1 : F) * rho 74268) = ((1 : F) * rho 74265 + (-1 : F) * rho 74266 + (-1 : F) * rho 74267)

def relationLc784 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 22⟩], residual := [((1 : F), 74269)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71933) * (relationLc784 rho) = ((1 : F) * rho 74271)

def relationLc785 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 22⟩], residual := [((1 : F), 74270)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71933) * (relationLc785 rho) = ((1 : F) * rho 74272)

def relationRow2513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74262) * ((1 : F) * rho 74263) = ((1 : F) * rho 74273)

def relationRow2514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74262) * ((1 : F) * rho 74262) = ((1 : F) * rho 74274)

def relationRow2515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74263) * ((1 : F) * rho 74263) = ((1 : F) * rho 74275)

def relationRow2516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74276) * ((-1 : F) * rho 74274 + (1 : F) * rho 74275) = ((2 : F) * rho 74273)

def relationRow2517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74277) * ((2 : F) + (1 : F) * rho 74274 + (-1 : F) * rho 74275) = ((1 : F) * rho 74274 + (1 : F) * rho 74275)

def relationLc786 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 23⟩, ⟨(1 : F), 73964, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2518 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc786 rho) = ((1 : F) * rho 74278)

def relationRow2519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74278) * ((1 : F) * rho 74276 + (1 : F) * rho 74277) = ((1 : F) * rho 74279)

def relationLc787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74277) * (relationLc787 rho) = ((1 : F) * rho 74280)

def relationLc788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74276) * (relationLc788 rho) = ((1 : F) * rho 74281)

def relationRow2522 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74280) * ((1 : F) * rho 74281) = ((1 : F) * rho 74282)

def relationRow2523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74283) * ((1 : F) + (1 : F) * rho 74282) = ((1 : F) * rho 74280 + (1 : F) * rho 74281)

def relationRow2524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74284) * ((1 : F) + (-1 : F) * rho 74282) = ((1 : F) * rho 74279 + (-1 : F) * rho 74280 + (-1 : F) * rho 74281)

def relationLc789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 23⟩], residual := [((1 : F), 74283)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71934) * (relationLc789 rho) = ((1 : F) * rho 74285)

def relationLc790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 23⟩], residual := [((1 : F), 74284)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71934) * (relationLc790 rho) = ((1 : F) * rho 74286)

def relationRow2527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74276) * ((1 : F) * rho 74277) = ((1 : F) * rho 74287)

def relationRow2528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74276) * ((1 : F) * rho 74276) = ((1 : F) * rho 74288)

def relationRow2529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74277) * ((1 : F) * rho 74277) = ((1 : F) * rho 74289)

def relationRow2530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74290) * ((-1 : F) * rho 74288 + (1 : F) * rho 74289) = ((2 : F) * rho 74287)

def relationRow2531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74291) * ((2 : F) + (1 : F) * rho 74288 + (-1 : F) * rho 74289) = ((1 : F) * rho 74288 + (1 : F) * rho 74289)

def relationLc791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 24⟩, ⟨(1 : F), 73964, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2532 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc791 rho) = ((1 : F) * rho 74292)

def relationRow2533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74292) * ((1 : F) * rho 74290 + (1 : F) * rho 74291) = ((1 : F) * rho 74293)

def relationLc792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74291) * (relationLc792 rho) = ((1 : F) * rho 74294)

def relationLc793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74290) * (relationLc793 rho) = ((1 : F) * rho 74295)

def relationRow2536 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74294) * ((1 : F) * rho 74295) = ((1 : F) * rho 74296)

def relationRow2537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74297) * ((1 : F) + (1 : F) * rho 74296) = ((1 : F) * rho 74294 + (1 : F) * rho 74295)

def relationRow2538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74298) * ((1 : F) + (-1 : F) * rho 74296) = ((1 : F) * rho 74293 + (-1 : F) * rho 74294 + (-1 : F) * rho 74295)

def relationLc794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 24⟩], residual := [((1 : F), 74297)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71935) * (relationLc794 rho) = ((1 : F) * rho 74299)

def relationLc795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 24⟩], residual := [((1 : F), 74298)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71935) * (relationLc795 rho) = ((1 : F) * rho 74300)

def relationRow2541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74290) * ((1 : F) * rho 74291) = ((1 : F) * rho 74301)

def relationRow2542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74290) * ((1 : F) * rho 74290) = ((1 : F) * rho 74302)

def relationRow2543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74291) * ((1 : F) * rho 74291) = ((1 : F) * rho 74303)

def relationRow2544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74304) * ((-1 : F) * rho 74302 + (1 : F) * rho 74303) = ((2 : F) * rho 74301)

def relationRow2545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74305) * ((2 : F) + (1 : F) * rho 74302 + (-1 : F) * rho 74303) = ((1 : F) * rho 74302 + (1 : F) * rho 74303)

def relationLc796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 25⟩, ⟨(1 : F), 73964, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2546 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc796 rho) = ((1 : F) * rho 74306)

def relationRow2547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74306) * ((1 : F) * rho 74304 + (1 : F) * rho 74305) = ((1 : F) * rho 74307)

def relationLc797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74305) * (relationLc797 rho) = ((1 : F) * rho 74308)

def relationLc798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74304) * (relationLc798 rho) = ((1 : F) * rho 74309)

def relationRow2550 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74308) * ((1 : F) * rho 74309) = ((1 : F) * rho 74310)

def relationRow2551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74311) * ((1 : F) + (1 : F) * rho 74310) = ((1 : F) * rho 74308 + (1 : F) * rho 74309)

def relationRow2552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74312) * ((1 : F) + (-1 : F) * rho 74310) = ((1 : F) * rho 74307 + (-1 : F) * rho 74308 + (-1 : F) * rho 74309)

def relationLc799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 25⟩], residual := [((1 : F), 74311)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71936) * (relationLc799 rho) = ((1 : F) * rho 74313)

def relationLc800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 25⟩], residual := [((1 : F), 74312)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71936) * (relationLc800 rho) = ((1 : F) * rho 74314)

def relationRow2555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74304) * ((1 : F) * rho 74305) = ((1 : F) * rho 74315)

def relationRow2556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74304) * ((1 : F) * rho 74304) = ((1 : F) * rho 74316)

def relationRow2557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74305) * ((1 : F) * rho 74305) = ((1 : F) * rho 74317)

def relationRow2558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74318) * ((-1 : F) * rho 74316 + (1 : F) * rho 74317) = ((2 : F) * rho 74315)

def relationRow2559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74319) * ((2 : F) + (1 : F) * rho 74316 + (-1 : F) * rho 74317) = ((1 : F) * rho 74316 + (1 : F) * rho 74317)

def relationLc801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 26⟩, ⟨(1 : F), 73964, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2560 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc801 rho) = ((1 : F) * rho 74320)

def relationRow2561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74320) * ((1 : F) * rho 74318 + (1 : F) * rho 74319) = ((1 : F) * rho 74321)

def relationLc802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74319) * (relationLc802 rho) = ((1 : F) * rho 74322)

def relationLc803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74318) * (relationLc803 rho) = ((1 : F) * rho 74323)

def relationRow2564 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74322) * ((1 : F) * rho 74323) = ((1 : F) * rho 74324)

def relationRow2565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74325) * ((1 : F) + (1 : F) * rho 74324) = ((1 : F) * rho 74322 + (1 : F) * rho 74323)

def relationRow2566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74326) * ((1 : F) + (-1 : F) * rho 74324) = ((1 : F) * rho 74321 + (-1 : F) * rho 74322 + (-1 : F) * rho 74323)

def relationLc804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 26⟩], residual := [((1 : F), 74325)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71937) * (relationLc804 rho) = ((1 : F) * rho 74327)

def relationLc805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 26⟩], residual := [((1 : F), 74326)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71937) * (relationLc805 rho) = ((1 : F) * rho 74328)

def relationRow2569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74318) * ((1 : F) * rho 74319) = ((1 : F) * rho 74329)

def relationRow2570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74318) * ((1 : F) * rho 74318) = ((1 : F) * rho 74330)

def relationRow2571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74319) * ((1 : F) * rho 74319) = ((1 : F) * rho 74331)

def relationRow2572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74332) * ((-1 : F) * rho 74330 + (1 : F) * rho 74331) = ((2 : F) * rho 74329)

def relationRow2573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74333) * ((2 : F) + (1 : F) * rho 74330 + (-1 : F) * rho 74331) = ((1 : F) * rho 74330 + (1 : F) * rho 74331)

def relationLc806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 27⟩, ⟨(1 : F), 73964, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2574 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc806 rho) = ((1 : F) * rho 74334)

def relationRow2575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74334) * ((1 : F) * rho 74332 + (1 : F) * rho 74333) = ((1 : F) * rho 74335)

def relationLc807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74333) * (relationLc807 rho) = ((1 : F) * rho 74336)

def relationLc808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74332) * (relationLc808 rho) = ((1 : F) * rho 74337)

def relationRow2578 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74336) * ((1 : F) * rho 74337) = ((1 : F) * rho 74338)

def relationRow2579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74339) * ((1 : F) + (1 : F) * rho 74338) = ((1 : F) * rho 74336 + (1 : F) * rho 74337)

def relationRow2580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74340) * ((1 : F) + (-1 : F) * rho 74338) = ((1 : F) * rho 74335 + (-1 : F) * rho 74336 + (-1 : F) * rho 74337)

def relationLc809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 27⟩], residual := [((1 : F), 74339)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71938) * (relationLc809 rho) = ((1 : F) * rho 74341)

def relationLc810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 27⟩], residual := [((1 : F), 74340)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71938) * (relationLc810 rho) = ((1 : F) * rho 74342)

def relationRow2583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74332) * ((1 : F) * rho 74333) = ((1 : F) * rho 74343)

def relationRow2584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74332) * ((1 : F) * rho 74332) = ((1 : F) * rho 74344)

def relationRow2585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74333) * ((1 : F) * rho 74333) = ((1 : F) * rho 74345)

def relationRow2586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74346) * ((-1 : F) * rho 74344 + (1 : F) * rho 74345) = ((2 : F) * rho 74343)

def relationRow2587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74347) * ((2 : F) + (1 : F) * rho 74344 + (-1 : F) * rho 74345) = ((1 : F) * rho 74344 + (1 : F) * rho 74345)

def relationLc811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 28⟩, ⟨(1 : F), 73964, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2588 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc811 rho) = ((1 : F) * rho 74348)

def relationRow2589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74348) * ((1 : F) * rho 74346 + (1 : F) * rho 74347) = ((1 : F) * rho 74349)

def relationLc812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74347) * (relationLc812 rho) = ((1 : F) * rho 74350)

def relationLc813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74346) * (relationLc813 rho) = ((1 : F) * rho 74351)

def relationRow2592 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74350) * ((1 : F) * rho 74351) = ((1 : F) * rho 74352)

def relationRow2593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74353) * ((1 : F) + (1 : F) * rho 74352) = ((1 : F) * rho 74350 + (1 : F) * rho 74351)

def relationRow2594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74354) * ((1 : F) + (-1 : F) * rho 74352) = ((1 : F) * rho 74349 + (-1 : F) * rho 74350 + (-1 : F) * rho 74351)

def relationLc814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 28⟩], residual := [((1 : F), 74353)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71939) * (relationLc814 rho) = ((1 : F) * rho 74355)

def relationLc815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 28⟩], residual := [((1 : F), 74354)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71939) * (relationLc815 rho) = ((1 : F) * rho 74356)

def relationRow2597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74346) * ((1 : F) * rho 74347) = ((1 : F) * rho 74357)

def relationRow2598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74346) * ((1 : F) * rho 74346) = ((1 : F) * rho 74358)

def relationRow2599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74347) * ((1 : F) * rho 74347) = ((1 : F) * rho 74359)

def relationRow2600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74360) * ((-1 : F) * rho 74358 + (1 : F) * rho 74359) = ((2 : F) * rho 74357)

def relationRow2601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74361) * ((2 : F) + (1 : F) * rho 74358 + (-1 : F) * rho 74359) = ((1 : F) * rho 74358 + (1 : F) * rho 74359)

def relationLc816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 29⟩, ⟨(1 : F), 73964, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2602 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc816 rho) = ((1 : F) * rho 74362)

def relationRow2603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74362) * ((1 : F) * rho 74360 + (1 : F) * rho 74361) = ((1 : F) * rho 74363)

def relationLc817 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74361) * (relationLc817 rho) = ((1 : F) * rho 74364)

def relationLc818 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74360) * (relationLc818 rho) = ((1 : F) * rho 74365)

def relationRow2606 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74364) * ((1 : F) * rho 74365) = ((1 : F) * rho 74366)

def relationRow2607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74367) * ((1 : F) + (1 : F) * rho 74366) = ((1 : F) * rho 74364 + (1 : F) * rho 74365)

def relationRow2608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74368) * ((1 : F) + (-1 : F) * rho 74366) = ((1 : F) * rho 74363 + (-1 : F) * rho 74364 + (-1 : F) * rho 74365)

def relationLc819 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 29⟩], residual := [((1 : F), 74367)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71940) * (relationLc819 rho) = ((1 : F) * rho 74369)

def relationLc820 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 29⟩], residual := [((1 : F), 74368)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71940) * (relationLc820 rho) = ((1 : F) * rho 74370)

def relationRow2611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74360) * ((1 : F) * rho 74361) = ((1 : F) * rho 74371)

def relationRow2612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74360) * ((1 : F) * rho 74360) = ((1 : F) * rho 74372)

def relationRow2613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74361) * ((1 : F) * rho 74361) = ((1 : F) * rho 74373)

def relationRow2614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74374) * ((-1 : F) * rho 74372 + (1 : F) * rho 74373) = ((2 : F) * rho 74371)

def relationRow2615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74375) * ((2 : F) + (1 : F) * rho 74372 + (-1 : F) * rho 74373) = ((1 : F) * rho 74372 + (1 : F) * rho 74373)

def relationLc821 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 30⟩, ⟨(1 : F), 73964, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2616 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc821 rho) = ((1 : F) * rho 74376)

def relationRow2617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74376) * ((1 : F) * rho 74374 + (1 : F) * rho 74375) = ((1 : F) * rho 74377)

def relationLc822 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74375) * (relationLc822 rho) = ((1 : F) * rho 74378)

def relationLc823 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74374) * (relationLc823 rho) = ((1 : F) * rho 74379)

def relationRow2620 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74378) * ((1 : F) * rho 74379) = ((1 : F) * rho 74380)

def relationRow2621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74381) * ((1 : F) + (1 : F) * rho 74380) = ((1 : F) * rho 74378 + (1 : F) * rho 74379)

def relationRow2622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74382) * ((1 : F) + (-1 : F) * rho 74380) = ((1 : F) * rho 74377 + (-1 : F) * rho 74378 + (-1 : F) * rho 74379)

def relationLc824 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 30⟩], residual := [((1 : F), 74381)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71941) * (relationLc824 rho) = ((1 : F) * rho 74383)

def relationLc825 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 30⟩], residual := [((1 : F), 74382)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71941) * (relationLc825 rho) = ((1 : F) * rho 74384)

def relationRow2625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74374) * ((1 : F) * rho 74375) = ((1 : F) * rho 74385)

def relationRow2626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74374) * ((1 : F) * rho 74374) = ((1 : F) * rho 74386)

def relationRow2627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74375) * ((1 : F) * rho 74375) = ((1 : F) * rho 74387)

def relationRow2628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74388) * ((-1 : F) * rho 74386 + (1 : F) * rho 74387) = ((2 : F) * rho 74385)

def relationRow2629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74389) * ((2 : F) + (1 : F) * rho 74386 + (-1 : F) * rho 74387) = ((1 : F) * rho 74386 + (1 : F) * rho 74387)

def relationLc826 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 31⟩, ⟨(1 : F), 73964, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2630 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc826 rho) = ((1 : F) * rho 74390)

def relationRow2631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74390) * ((1 : F) * rho 74388 + (1 : F) * rho 74389) = ((1 : F) * rho 74391)

def relationLc827 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74389) * (relationLc827 rho) = ((1 : F) * rho 74392)

def relationLc828 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74388) * (relationLc828 rho) = ((1 : F) * rho 74393)

def relationRow2634 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74392) * ((1 : F) * rho 74393) = ((1 : F) * rho 74394)

def relationRow2635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74395) * ((1 : F) + (1 : F) * rho 74394) = ((1 : F) * rho 74392 + (1 : F) * rho 74393)

def relationRow2636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74396) * ((1 : F) + (-1 : F) * rho 74394) = ((1 : F) * rho 74391 + (-1 : F) * rho 74392 + (-1 : F) * rho 74393)

def relationLc829 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 31⟩], residual := [((1 : F), 74395)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71942) * (relationLc829 rho) = ((1 : F) * rho 74397)

def relationLc830 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 31⟩], residual := [((1 : F), 74396)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71942) * (relationLc830 rho) = ((1 : F) * rho 74398)

def relationRow2639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74388) * ((1 : F) * rho 74389) = ((1 : F) * rho 74399)

def relationRow2640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74388) * ((1 : F) * rho 74388) = ((1 : F) * rho 74400)

def relationRow2641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74389) * ((1 : F) * rho 74389) = ((1 : F) * rho 74401)

def relationRow2642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74402) * ((-1 : F) * rho 74400 + (1 : F) * rho 74401) = ((2 : F) * rho 74399)

def relationRow2643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74403) * ((2 : F) + (1 : F) * rho 74400 + (-1 : F) * rho 74401) = ((1 : F) * rho 74400 + (1 : F) * rho 74401)

def relationLc831 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 32⟩, ⟨(1 : F), 73964, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2644 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc831 rho) = ((1 : F) * rho 74404)

def relationRow2645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74404) * ((1 : F) * rho 74402 + (1 : F) * rho 74403) = ((1 : F) * rho 74405)

def relationLc832 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74403) * (relationLc832 rho) = ((1 : F) * rho 74406)

def relationLc833 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74402) * (relationLc833 rho) = ((1 : F) * rho 74407)

def relationRow2648 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74406) * ((1 : F) * rho 74407) = ((1 : F) * rho 74408)

def relationRow2649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74409) * ((1 : F) + (1 : F) * rho 74408) = ((1 : F) * rho 74406 + (1 : F) * rho 74407)

def relationRow2650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74410) * ((1 : F) + (-1 : F) * rho 74408) = ((1 : F) * rho 74405 + (-1 : F) * rho 74406 + (-1 : F) * rho 74407)

def relationLc834 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 32⟩], residual := [((1 : F), 74409)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71943) * (relationLc834 rho) = ((1 : F) * rho 74411)

def relationLc835 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 32⟩], residual := [((1 : F), 74410)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71943) * (relationLc835 rho) = ((1 : F) * rho 74412)

def relationRow2653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74402) * ((1 : F) * rho 74403) = ((1 : F) * rho 74413)

def relationRow2654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74402) * ((1 : F) * rho 74402) = ((1 : F) * rho 74414)

def relationRow2655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74403) * ((1 : F) * rho 74403) = ((1 : F) * rho 74415)

def relationRow2656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74416) * ((-1 : F) * rho 74414 + (1 : F) * rho 74415) = ((2 : F) * rho 74413)

def relationRow2657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74417) * ((2 : F) + (1 : F) * rho 74414 + (-1 : F) * rho 74415) = ((1 : F) * rho 74414 + (1 : F) * rho 74415)

def relationLc836 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 33⟩, ⟨(1 : F), 73964, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2658 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc836 rho) = ((1 : F) * rho 74418)

def relationRow2659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74418) * ((1 : F) * rho 74416 + (1 : F) * rho 74417) = ((1 : F) * rho 74419)

def relationLc837 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74417) * (relationLc837 rho) = ((1 : F) * rho 74420)

def relationLc838 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74416) * (relationLc838 rho) = ((1 : F) * rho 74421)

def relationRow2662 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74420) * ((1 : F) * rho 74421) = ((1 : F) * rho 74422)

def relationRow2663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74423) * ((1 : F) + (1 : F) * rho 74422) = ((1 : F) * rho 74420 + (1 : F) * rho 74421)

def relationRow2664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74424) * ((1 : F) + (-1 : F) * rho 74422) = ((1 : F) * rho 74419 + (-1 : F) * rho 74420 + (-1 : F) * rho 74421)

def relationLc839 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 33⟩], residual := [((1 : F), 74423)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71944) * (relationLc839 rho) = ((1 : F) * rho 74425)

def relationLc840 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 33⟩], residual := [((1 : F), 74424)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71944) * (relationLc840 rho) = ((1 : F) * rho 74426)

def relationRow2667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74416) * ((1 : F) * rho 74417) = ((1 : F) * rho 74427)

def relationRow2668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74416) * ((1 : F) * rho 74416) = ((1 : F) * rho 74428)

def relationRow2669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74417) * ((1 : F) * rho 74417) = ((1 : F) * rho 74429)

def relationRow2670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74430) * ((-1 : F) * rho 74428 + (1 : F) * rho 74429) = ((2 : F) * rho 74427)

def relationRow2671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74431) * ((2 : F) + (1 : F) * rho 74428 + (-1 : F) * rho 74429) = ((1 : F) * rho 74428 + (1 : F) * rho 74429)

def relationLc841 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 34⟩, ⟨(1 : F), 73964, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2672 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc841 rho) = ((1 : F) * rho 74432)

def relationRow2673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74432) * ((1 : F) * rho 74430 + (1 : F) * rho 74431) = ((1 : F) * rho 74433)

def relationLc842 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74431) * (relationLc842 rho) = ((1 : F) * rho 74434)

def relationLc843 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74430) * (relationLc843 rho) = ((1 : F) * rho 74435)

def relationRow2676 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74434) * ((1 : F) * rho 74435) = ((1 : F) * rho 74436)

def relationRow2677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74437) * ((1 : F) + (1 : F) * rho 74436) = ((1 : F) * rho 74434 + (1 : F) * rho 74435)

def relationRow2678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74438) * ((1 : F) + (-1 : F) * rho 74436) = ((1 : F) * rho 74433 + (-1 : F) * rho 74434 + (-1 : F) * rho 74435)

def relationLc844 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 34⟩], residual := [((1 : F), 74437)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71945) * (relationLc844 rho) = ((1 : F) * rho 74439)

def relationLc845 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 34⟩], residual := [((1 : F), 74438)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71945) * (relationLc845 rho) = ((1 : F) * rho 74440)

def relationRow2681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74430) * ((1 : F) * rho 74431) = ((1 : F) * rho 74441)

def relationRow2682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74430) * ((1 : F) * rho 74430) = ((1 : F) * rho 74442)

def relationRow2683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74431) * ((1 : F) * rho 74431) = ((1 : F) * rho 74443)

def relationRow2684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74444) * ((-1 : F) * rho 74442 + (1 : F) * rho 74443) = ((2 : F) * rho 74441)

def relationRow2685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74445) * ((2 : F) + (1 : F) * rho 74442 + (-1 : F) * rho 74443) = ((1 : F) * rho 74442 + (1 : F) * rho 74443)

def relationLc846 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 35⟩, ⟨(1 : F), 73964, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2686 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc846 rho) = ((1 : F) * rho 74446)

def relationRow2687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74446) * ((1 : F) * rho 74444 + (1 : F) * rho 74445) = ((1 : F) * rho 74447)

def relationLc847 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74445) * (relationLc847 rho) = ((1 : F) * rho 74448)

def relationLc848 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74444) * (relationLc848 rho) = ((1 : F) * rho 74449)

def relationRow2690 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74448) * ((1 : F) * rho 74449) = ((1 : F) * rho 74450)

def relationRow2691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74451) * ((1 : F) + (1 : F) * rho 74450) = ((1 : F) * rho 74448 + (1 : F) * rho 74449)

def relationRow2692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74452) * ((1 : F) + (-1 : F) * rho 74450) = ((1 : F) * rho 74447 + (-1 : F) * rho 74448 + (-1 : F) * rho 74449)

def relationLc849 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 35⟩], residual := [((1 : F), 74451)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71946) * (relationLc849 rho) = ((1 : F) * rho 74453)

def relationLc850 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 35⟩], residual := [((1 : F), 74452)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71946) * (relationLc850 rho) = ((1 : F) * rho 74454)

def relationRow2695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74444) * ((1 : F) * rho 74445) = ((1 : F) * rho 74455)

def relationRow2696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74444) * ((1 : F) * rho 74444) = ((1 : F) * rho 74456)

def relationRow2697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74445) * ((1 : F) * rho 74445) = ((1 : F) * rho 74457)

def relationRow2698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74458) * ((-1 : F) * rho 74456 + (1 : F) * rho 74457) = ((2 : F) * rho 74455)

def relationRow2699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74459) * ((2 : F) + (1 : F) * rho 74456 + (-1 : F) * rho 74457) = ((1 : F) * rho 74456 + (1 : F) * rho 74457)

def relationLc851 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 36⟩, ⟨(1 : F), 73964, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2700 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc851 rho) = ((1 : F) * rho 74460)

def relationRow2701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74460) * ((1 : F) * rho 74458 + (1 : F) * rho 74459) = ((1 : F) * rho 74461)

def relationLc852 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74459) * (relationLc852 rho) = ((1 : F) * rho 74462)

def relationLc853 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74458) * (relationLc853 rho) = ((1 : F) * rho 74463)

def relationRow2704 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74462) * ((1 : F) * rho 74463) = ((1 : F) * rho 74464)

def relationRow2705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74465) * ((1 : F) + (1 : F) * rho 74464) = ((1 : F) * rho 74462 + (1 : F) * rho 74463)

def relationRow2706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74466) * ((1 : F) + (-1 : F) * rho 74464) = ((1 : F) * rho 74461 + (-1 : F) * rho 74462 + (-1 : F) * rho 74463)

def relationLc854 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 36⟩], residual := [((1 : F), 74465)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71947) * (relationLc854 rho) = ((1 : F) * rho 74467)

def relationLc855 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 36⟩], residual := [((1 : F), 74466)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71947) * (relationLc855 rho) = ((1 : F) * rho 74468)

def relationRow2709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74458) * ((1 : F) * rho 74459) = ((1 : F) * rho 74469)

def relationRow2710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74458) * ((1 : F) * rho 74458) = ((1 : F) * rho 74470)

def relationRow2711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74459) * ((1 : F) * rho 74459) = ((1 : F) * rho 74471)

def relationRow2712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74472) * ((-1 : F) * rho 74470 + (1 : F) * rho 74471) = ((2 : F) * rho 74469)

def relationRow2713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74473) * ((2 : F) + (1 : F) * rho 74470 + (-1 : F) * rho 74471) = ((1 : F) * rho 74470 + (1 : F) * rho 74471)

def relationLc856 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 37⟩, ⟨(1 : F), 73964, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2714 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc856 rho) = ((1 : F) * rho 74474)

def relationRow2715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74474) * ((1 : F) * rho 74472 + (1 : F) * rho 74473) = ((1 : F) * rho 74475)

def relationLc857 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74473) * (relationLc857 rho) = ((1 : F) * rho 74476)

def relationLc858 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74472) * (relationLc858 rho) = ((1 : F) * rho 74477)

def relationRow2718 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74476) * ((1 : F) * rho 74477) = ((1 : F) * rho 74478)

def relationRow2719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74479) * ((1 : F) + (1 : F) * rho 74478) = ((1 : F) * rho 74476 + (1 : F) * rho 74477)

def relationRow2720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74480) * ((1 : F) + (-1 : F) * rho 74478) = ((1 : F) * rho 74475 + (-1 : F) * rho 74476 + (-1 : F) * rho 74477)

def relationLc859 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 37⟩], residual := [((1 : F), 74479)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71948) * (relationLc859 rho) = ((1 : F) * rho 74481)

def relationLc860 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 37⟩], residual := [((1 : F), 74480)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71948) * (relationLc860 rho) = ((1 : F) * rho 74482)

def relationRow2723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74472) * ((1 : F) * rho 74473) = ((1 : F) * rho 74483)

def relationRow2724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74472) * ((1 : F) * rho 74472) = ((1 : F) * rho 74484)

def relationRow2725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74473) * ((1 : F) * rho 74473) = ((1 : F) * rho 74485)

def relationRow2726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74486) * ((-1 : F) * rho 74484 + (1 : F) * rho 74485) = ((2 : F) * rho 74483)

def relationRow2727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74487) * ((2 : F) + (1 : F) * rho 74484 + (-1 : F) * rho 74485) = ((1 : F) * rho 74484 + (1 : F) * rho 74485)

def relationLc861 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 38⟩, ⟨(1 : F), 73964, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2728 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc861 rho) = ((1 : F) * rho 74488)

def relationRow2729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74488) * ((1 : F) * rho 74486 + (1 : F) * rho 74487) = ((1 : F) * rho 74489)

def relationLc862 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74487) * (relationLc862 rho) = ((1 : F) * rho 74490)

def relationLc863 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74486) * (relationLc863 rho) = ((1 : F) * rho 74491)

def relationRow2732 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74490) * ((1 : F) * rho 74491) = ((1 : F) * rho 74492)

def relationRow2733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74493) * ((1 : F) + (1 : F) * rho 74492) = ((1 : F) * rho 74490 + (1 : F) * rho 74491)

def relationRow2734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74494) * ((1 : F) + (-1 : F) * rho 74492) = ((1 : F) * rho 74489 + (-1 : F) * rho 74490 + (-1 : F) * rho 74491)

def relationLc864 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 38⟩], residual := [((1 : F), 74493)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71949) * (relationLc864 rho) = ((1 : F) * rho 74495)

def relationLc865 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 38⟩], residual := [((1 : F), 74494)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71949) * (relationLc865 rho) = ((1 : F) * rho 74496)

def relationRow2737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74486) * ((1 : F) * rho 74487) = ((1 : F) * rho 74497)

def relationRow2738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74486) * ((1 : F) * rho 74486) = ((1 : F) * rho 74498)

def relationRow2739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74487) * ((1 : F) * rho 74487) = ((1 : F) * rho 74499)

def relationRow2740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74500) * ((-1 : F) * rho 74498 + (1 : F) * rho 74499) = ((2 : F) * rho 74497)

def relationRow2741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74501) * ((2 : F) + (1 : F) * rho 74498 + (-1 : F) * rho 74499) = ((1 : F) * rho 74498 + (1 : F) * rho 74499)

def relationLc866 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 39⟩, ⟨(1 : F), 73964, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2742 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc866 rho) = ((1 : F) * rho 74502)

def relationRow2743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74502) * ((1 : F) * rho 74500 + (1 : F) * rho 74501) = ((1 : F) * rho 74503)

def relationLc867 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74501) * (relationLc867 rho) = ((1 : F) * rho 74504)

def relationLc868 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74500) * (relationLc868 rho) = ((1 : F) * rho 74505)

def relationRow2746 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74504) * ((1 : F) * rho 74505) = ((1 : F) * rho 74506)

def relationRow2747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74507) * ((1 : F) + (1 : F) * rho 74506) = ((1 : F) * rho 74504 + (1 : F) * rho 74505)

def relationRow2748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74508) * ((1 : F) + (-1 : F) * rho 74506) = ((1 : F) * rho 74503 + (-1 : F) * rho 74504 + (-1 : F) * rho 74505)

def relationLc869 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 39⟩], residual := [((1 : F), 74507)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71950) * (relationLc869 rho) = ((1 : F) * rho 74509)

def relationLc870 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 39⟩], residual := [((1 : F), 74508)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71950) * (relationLc870 rho) = ((1 : F) * rho 74510)

def relationRow2751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74500) * ((1 : F) * rho 74501) = ((1 : F) * rho 74511)

def relationRow2752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74500) * ((1 : F) * rho 74500) = ((1 : F) * rho 74512)

def relationRow2753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74501) * ((1 : F) * rho 74501) = ((1 : F) * rho 74513)

def relationRow2754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74514) * ((-1 : F) * rho 74512 + (1 : F) * rho 74513) = ((2 : F) * rho 74511)

def relationRow2755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74515) * ((2 : F) + (1 : F) * rho 74512 + (-1 : F) * rho 74513) = ((1 : F) * rho 74512 + (1 : F) * rho 74513)

def relationLc871 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 40⟩, ⟨(1 : F), 73964, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2756 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc871 rho) = ((1 : F) * rho 74516)

def relationRow2757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74516) * ((1 : F) * rho 74514 + (1 : F) * rho 74515) = ((1 : F) * rho 74517)

def relationLc872 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74515) * (relationLc872 rho) = ((1 : F) * rho 74518)

def relationLc873 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74514) * (relationLc873 rho) = ((1 : F) * rho 74519)

def relationRow2760 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74518) * ((1 : F) * rho 74519) = ((1 : F) * rho 74520)

def relationRow2761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74521) * ((1 : F) + (1 : F) * rho 74520) = ((1 : F) * rho 74518 + (1 : F) * rho 74519)

def relationRow2762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74522) * ((1 : F) + (-1 : F) * rho 74520) = ((1 : F) * rho 74517 + (-1 : F) * rho 74518 + (-1 : F) * rho 74519)

def relationLc874 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 40⟩], residual := [((1 : F), 74521)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71951) * (relationLc874 rho) = ((1 : F) * rho 74523)

def relationLc875 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 40⟩], residual := [((1 : F), 74522)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71951) * (relationLc875 rho) = ((1 : F) * rho 74524)

def relationRow2765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74514) * ((1 : F) * rho 74515) = ((1 : F) * rho 74525)

def relationRow2766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74514) * ((1 : F) * rho 74514) = ((1 : F) * rho 74526)

def relationRow2767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74515) * ((1 : F) * rho 74515) = ((1 : F) * rho 74527)

def relationRow2768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74528) * ((-1 : F) * rho 74526 + (1 : F) * rho 74527) = ((2 : F) * rho 74525)

def relationRow2769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74529) * ((2 : F) + (1 : F) * rho 74526 + (-1 : F) * rho 74527) = ((1 : F) * rho 74526 + (1 : F) * rho 74527)

def relationLc876 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 41⟩, ⟨(1 : F), 73964, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2770 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc876 rho) = ((1 : F) * rho 74530)

def relationRow2771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74530) * ((1 : F) * rho 74528 + (1 : F) * rho 74529) = ((1 : F) * rho 74531)

def relationLc877 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74529) * (relationLc877 rho) = ((1 : F) * rho 74532)

def relationLc878 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74528) * (relationLc878 rho) = ((1 : F) * rho 74533)

def relationRow2774 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74532) * ((1 : F) * rho 74533) = ((1 : F) * rho 74534)

def relationRow2775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74535) * ((1 : F) + (1 : F) * rho 74534) = ((1 : F) * rho 74532 + (1 : F) * rho 74533)

def relationRow2776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74536) * ((1 : F) + (-1 : F) * rho 74534) = ((1 : F) * rho 74531 + (-1 : F) * rho 74532 + (-1 : F) * rho 74533)

def relationLc879 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 41⟩], residual := [((1 : F), 74535)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71952) * (relationLc879 rho) = ((1 : F) * rho 74537)

def relationLc880 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 41⟩], residual := [((1 : F), 74536)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71952) * (relationLc880 rho) = ((1 : F) * rho 74538)

def relationRow2779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74528) * ((1 : F) * rho 74529) = ((1 : F) * rho 74539)

def relationRow2780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74528) * ((1 : F) * rho 74528) = ((1 : F) * rho 74540)

def relationRow2781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74529) * ((1 : F) * rho 74529) = ((1 : F) * rho 74541)

def relationRow2782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74542) * ((-1 : F) * rho 74540 + (1 : F) * rho 74541) = ((2 : F) * rho 74539)

def relationRow2783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74543) * ((2 : F) + (1 : F) * rho 74540 + (-1 : F) * rho 74541) = ((1 : F) * rho 74540 + (1 : F) * rho 74541)

def relationLc881 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 42⟩, ⟨(1 : F), 73964, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2784 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc881 rho) = ((1 : F) * rho 74544)

def relationRow2785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74544) * ((1 : F) * rho 74542 + (1 : F) * rho 74543) = ((1 : F) * rho 74545)

def relationLc882 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74543) * (relationLc882 rho) = ((1 : F) * rho 74546)

def relationLc883 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74542) * (relationLc883 rho) = ((1 : F) * rho 74547)

def relationRow2788 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74546) * ((1 : F) * rho 74547) = ((1 : F) * rho 74548)

def relationRow2789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74549) * ((1 : F) + (1 : F) * rho 74548) = ((1 : F) * rho 74546 + (1 : F) * rho 74547)

def relationRow2790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74550) * ((1 : F) + (-1 : F) * rho 74548) = ((1 : F) * rho 74545 + (-1 : F) * rho 74546 + (-1 : F) * rho 74547)

def relationLc884 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 42⟩], residual := [((1 : F), 74549)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71953) * (relationLc884 rho) = ((1 : F) * rho 74551)

def relationLc885 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 42⟩], residual := [((1 : F), 74550)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71953) * (relationLc885 rho) = ((1 : F) * rho 74552)

def relationRow2793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74542) * ((1 : F) * rho 74543) = ((1 : F) * rho 74553)

def relationRow2794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74542) * ((1 : F) * rho 74542) = ((1 : F) * rho 74554)

def relationRow2795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74543) * ((1 : F) * rho 74543) = ((1 : F) * rho 74555)

def relationRow2796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74556) * ((-1 : F) * rho 74554 + (1 : F) * rho 74555) = ((2 : F) * rho 74553)

def relationRow2797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74557) * ((2 : F) + (1 : F) * rho 74554 + (-1 : F) * rho 74555) = ((1 : F) * rho 74554 + (1 : F) * rho 74555)

def relationLc886 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 43⟩, ⟨(1 : F), 73964, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2798 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc886 rho) = ((1 : F) * rho 74558)

def relationRow2799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74558) * ((1 : F) * rho 74556 + (1 : F) * rho 74557) = ((1 : F) * rho 74559)

def relationLc887 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74557) * (relationLc887 rho) = ((1 : F) * rho 74560)

def relationLc888 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74556) * (relationLc888 rho) = ((1 : F) * rho 74561)

def relationRow2802 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74560) * ((1 : F) * rho 74561) = ((1 : F) * rho 74562)

def relationRow2803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74563) * ((1 : F) + (1 : F) * rho 74562) = ((1 : F) * rho 74560 + (1 : F) * rho 74561)

def relationRow2804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74564) * ((1 : F) + (-1 : F) * rho 74562) = ((1 : F) * rho 74559 + (-1 : F) * rho 74560 + (-1 : F) * rho 74561)

def relationLc889 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 43⟩], residual := [((1 : F), 74563)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71954) * (relationLc889 rho) = ((1 : F) * rho 74565)

def relationLc890 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 43⟩], residual := [((1 : F), 74564)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71954) * (relationLc890 rho) = ((1 : F) * rho 74566)

def relationRow2807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74556) * ((1 : F) * rho 74557) = ((1 : F) * rho 74567)

def relationRow2808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74556) * ((1 : F) * rho 74556) = ((1 : F) * rho 74568)

def relationRow2809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74557) * ((1 : F) * rho 74557) = ((1 : F) * rho 74569)

def relationRow2810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74570) * ((-1 : F) * rho 74568 + (1 : F) * rho 74569) = ((2 : F) * rho 74567)

def relationRow2811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74571) * ((2 : F) + (1 : F) * rho 74568 + (-1 : F) * rho 74569) = ((1 : F) * rho 74568 + (1 : F) * rho 74569)

def relationLc891 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 44⟩, ⟨(1 : F), 73964, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2812 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc891 rho) = ((1 : F) * rho 74572)

def relationRow2813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74572) * ((1 : F) * rho 74570 + (1 : F) * rho 74571) = ((1 : F) * rho 74573)

def relationLc892 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74571) * (relationLc892 rho) = ((1 : F) * rho 74574)

def relationLc893 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74570) * (relationLc893 rho) = ((1 : F) * rho 74575)

def relationRow2816 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74574) * ((1 : F) * rho 74575) = ((1 : F) * rho 74576)

def relationRow2817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74577) * ((1 : F) + (1 : F) * rho 74576) = ((1 : F) * rho 74574 + (1 : F) * rho 74575)

def relationRow2818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74578) * ((1 : F) + (-1 : F) * rho 74576) = ((1 : F) * rho 74573 + (-1 : F) * rho 74574 + (-1 : F) * rho 74575)

def relationLc894 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 44⟩], residual := [((1 : F), 74577)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71955) * (relationLc894 rho) = ((1 : F) * rho 74579)

def relationLc895 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 44⟩], residual := [((1 : F), 74578)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71955) * (relationLc895 rho) = ((1 : F) * rho 74580)

def relationRow2821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74570) * ((1 : F) * rho 74571) = ((1 : F) * rho 74581)

def relationRow2822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74570) * ((1 : F) * rho 74570) = ((1 : F) * rho 74582)

def relationRow2823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74571) * ((1 : F) * rho 74571) = ((1 : F) * rho 74583)

def relationRow2824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74584) * ((-1 : F) * rho 74582 + (1 : F) * rho 74583) = ((2 : F) * rho 74581)

def relationRow2825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74585) * ((2 : F) + (1 : F) * rho 74582 + (-1 : F) * rho 74583) = ((1 : F) * rho 74582 + (1 : F) * rho 74583)

def relationLc896 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 45⟩, ⟨(1 : F), 73964, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2826 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc896 rho) = ((1 : F) * rho 74586)

def relationRow2827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74586) * ((1 : F) * rho 74584 + (1 : F) * rho 74585) = ((1 : F) * rho 74587)

def relationLc897 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74585) * (relationLc897 rho) = ((1 : F) * rho 74588)

def relationLc898 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74584) * (relationLc898 rho) = ((1 : F) * rho 74589)

def relationRow2830 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74588) * ((1 : F) * rho 74589) = ((1 : F) * rho 74590)

def relationRow2831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74591) * ((1 : F) + (1 : F) * rho 74590) = ((1 : F) * rho 74588 + (1 : F) * rho 74589)

def relationRow2832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74592) * ((1 : F) + (-1 : F) * rho 74590) = ((1 : F) * rho 74587 + (-1 : F) * rho 74588 + (-1 : F) * rho 74589)

def relationLc899 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 45⟩], residual := [((1 : F), 74591)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71956) * (relationLc899 rho) = ((1 : F) * rho 74593)

def relationLc900 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 45⟩], residual := [((1 : F), 74592)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71956) * (relationLc900 rho) = ((1 : F) * rho 74594)

def relationRow2835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74584) * ((1 : F) * rho 74585) = ((1 : F) * rho 74595)

def relationRow2836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74584) * ((1 : F) * rho 74584) = ((1 : F) * rho 74596)

def relationRow2837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74585) * ((1 : F) * rho 74585) = ((1 : F) * rho 74597)

def relationRow2838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74598) * ((-1 : F) * rho 74596 + (1 : F) * rho 74597) = ((2 : F) * rho 74595)

def relationRow2839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74599) * ((2 : F) + (1 : F) * rho 74596 + (-1 : F) * rho 74597) = ((1 : F) * rho 74596 + (1 : F) * rho 74597)

def relationLc901 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 46⟩, ⟨(1 : F), 73964, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2840 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc901 rho) = ((1 : F) * rho 74600)

def relationRow2841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74600) * ((1 : F) * rho 74598 + (1 : F) * rho 74599) = ((1 : F) * rho 74601)

def relationLc902 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74599) * (relationLc902 rho) = ((1 : F) * rho 74602)

def relationLc903 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74598) * (relationLc903 rho) = ((1 : F) * rho 74603)

def relationRow2844 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74602) * ((1 : F) * rho 74603) = ((1 : F) * rho 74604)

def relationRow2845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74605) * ((1 : F) + (1 : F) * rho 74604) = ((1 : F) * rho 74602 + (1 : F) * rho 74603)

def relationRow2846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74606) * ((1 : F) + (-1 : F) * rho 74604) = ((1 : F) * rho 74601 + (-1 : F) * rho 74602 + (-1 : F) * rho 74603)

def relationLc904 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 46⟩], residual := [((1 : F), 74605)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71957) * (relationLc904 rho) = ((1 : F) * rho 74607)

def relationLc905 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 46⟩], residual := [((1 : F), 74606)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71957) * (relationLc905 rho) = ((1 : F) * rho 74608)

def relationRow2849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74598) * ((1 : F) * rho 74599) = ((1 : F) * rho 74609)

def relationRow2850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74598) * ((1 : F) * rho 74598) = ((1 : F) * rho 74610)

def relationRow2851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74599) * ((1 : F) * rho 74599) = ((1 : F) * rho 74611)

def relationRow2852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74612) * ((-1 : F) * rho 74610 + (1 : F) * rho 74611) = ((2 : F) * rho 74609)

def relationRow2853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74613) * ((2 : F) + (1 : F) * rho 74610 + (-1 : F) * rho 74611) = ((1 : F) * rho 74610 + (1 : F) * rho 74611)

def relationLc906 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 47⟩, ⟨(1 : F), 73964, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2854 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc906 rho) = ((1 : F) * rho 74614)

def relationRow2855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74614) * ((1 : F) * rho 74612 + (1 : F) * rho 74613) = ((1 : F) * rho 74615)

def relationLc907 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74613) * (relationLc907 rho) = ((1 : F) * rho 74616)

def relationLc908 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74612) * (relationLc908 rho) = ((1 : F) * rho 74617)

def relationRow2858 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74616) * ((1 : F) * rho 74617) = ((1 : F) * rho 74618)

def relationRow2859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74619) * ((1 : F) + (1 : F) * rho 74618) = ((1 : F) * rho 74616 + (1 : F) * rho 74617)

def relationRow2860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74620) * ((1 : F) + (-1 : F) * rho 74618) = ((1 : F) * rho 74615 + (-1 : F) * rho 74616 + (-1 : F) * rho 74617)

def relationLc909 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 47⟩], residual := [((1 : F), 74619)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71958) * (relationLc909 rho) = ((1 : F) * rho 74621)

def relationLc910 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 47⟩], residual := [((1 : F), 74620)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71958) * (relationLc910 rho) = ((1 : F) * rho 74622)

def relationRow2863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74612) * ((1 : F) * rho 74613) = ((1 : F) * rho 74623)

def relationRow2864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74612) * ((1 : F) * rho 74612) = ((1 : F) * rho 74624)

def relationRow2865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74613) * ((1 : F) * rho 74613) = ((1 : F) * rho 74625)

def relationRow2866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74626) * ((-1 : F) * rho 74624 + (1 : F) * rho 74625) = ((2 : F) * rho 74623)

def relationRow2867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74627) * ((2 : F) + (1 : F) * rho 74624 + (-1 : F) * rho 74625) = ((1 : F) * rho 74624 + (1 : F) * rho 74625)

def relationLc911 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 48⟩, ⟨(1 : F), 73964, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2868 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc911 rho) = ((1 : F) * rho 74628)

def relationRow2869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74628) * ((1 : F) * rho 74626 + (1 : F) * rho 74627) = ((1 : F) * rho 74629)

def relationLc912 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74627) * (relationLc912 rho) = ((1 : F) * rho 74630)

def relationLc913 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74626) * (relationLc913 rho) = ((1 : F) * rho 74631)

def relationRow2872 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74630) * ((1 : F) * rho 74631) = ((1 : F) * rho 74632)

def relationRow2873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74633) * ((1 : F) + (1 : F) * rho 74632) = ((1 : F) * rho 74630 + (1 : F) * rho 74631)

def relationRow2874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74634) * ((1 : F) + (-1 : F) * rho 74632) = ((1 : F) * rho 74629 + (-1 : F) * rho 74630 + (-1 : F) * rho 74631)

def relationLc914 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 48⟩], residual := [((1 : F), 74633)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71959) * (relationLc914 rho) = ((1 : F) * rho 74635)

def relationLc915 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 48⟩], residual := [((1 : F), 74634)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71959) * (relationLc915 rho) = ((1 : F) * rho 74636)

def relationRow2877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74626) * ((1 : F) * rho 74627) = ((1 : F) * rho 74637)

def relationRow2878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74626) * ((1 : F) * rho 74626) = ((1 : F) * rho 74638)

def relationRow2879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74627) * ((1 : F) * rho 74627) = ((1 : F) * rho 74639)

def relationRow2880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74640) * ((-1 : F) * rho 74638 + (1 : F) * rho 74639) = ((2 : F) * rho 74637)

def relationRow2881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74641) * ((2 : F) + (1 : F) * rho 74638 + (-1 : F) * rho 74639) = ((1 : F) * rho 74638 + (1 : F) * rho 74639)

def relationLc916 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 49⟩, ⟨(1 : F), 73964, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2882 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc916 rho) = ((1 : F) * rho 74642)

def relationRow2883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74642) * ((1 : F) * rho 74640 + (1 : F) * rho 74641) = ((1 : F) * rho 74643)

def relationLc917 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74641) * (relationLc917 rho) = ((1 : F) * rho 74644)

def relationLc918 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74640) * (relationLc918 rho) = ((1 : F) * rho 74645)

def relationRow2886 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74644) * ((1 : F) * rho 74645) = ((1 : F) * rho 74646)

def relationRow2887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74647) * ((1 : F) + (1 : F) * rho 74646) = ((1 : F) * rho 74644 + (1 : F) * rho 74645)

def relationRow2888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74648) * ((1 : F) + (-1 : F) * rho 74646) = ((1 : F) * rho 74643 + (-1 : F) * rho 74644 + (-1 : F) * rho 74645)

def relationLc919 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 49⟩], residual := [((1 : F), 74647)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71960) * (relationLc919 rho) = ((1 : F) * rho 74649)

def relationLc920 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 49⟩], residual := [((1 : F), 74648)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71960) * (relationLc920 rho) = ((1 : F) * rho 74650)

def relationRow2891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74640) * ((1 : F) * rho 74641) = ((1 : F) * rho 74651)

def relationRow2892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74640) * ((1 : F) * rho 74640) = ((1 : F) * rho 74652)

def relationRow2893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74641) * ((1 : F) * rho 74641) = ((1 : F) * rho 74653)

def relationRow2894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74654) * ((-1 : F) * rho 74652 + (1 : F) * rho 74653) = ((2 : F) * rho 74651)

def relationRow2895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74655) * ((2 : F) + (1 : F) * rho 74652 + (-1 : F) * rho 74653) = ((1 : F) * rho 74652 + (1 : F) * rho 74653)

def relationLc921 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 50⟩, ⟨(1 : F), 73964, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2896 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc921 rho) = ((1 : F) * rho 74656)

def relationRow2897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74656) * ((1 : F) * rho 74654 + (1 : F) * rho 74655) = ((1 : F) * rho 74657)

def relationLc922 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74655) * (relationLc922 rho) = ((1 : F) * rho 74658)

def relationLc923 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74654) * (relationLc923 rho) = ((1 : F) * rho 74659)

def relationRow2900 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74658) * ((1 : F) * rho 74659) = ((1 : F) * rho 74660)

def relationRow2901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74661) * ((1 : F) + (1 : F) * rho 74660) = ((1 : F) * rho 74658 + (1 : F) * rho 74659)

def relationRow2902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74662) * ((1 : F) + (-1 : F) * rho 74660) = ((1 : F) * rho 74657 + (-1 : F) * rho 74658 + (-1 : F) * rho 74659)

def relationLc924 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 50⟩], residual := [((1 : F), 74661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71961) * (relationLc924 rho) = ((1 : F) * rho 74663)

def relationLc925 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 50⟩], residual := [((1 : F), 74662)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71961) * (relationLc925 rho) = ((1 : F) * rho 74664)

def relationRow2905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74654) * ((1 : F) * rho 74655) = ((1 : F) * rho 74665)

def relationRow2906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74654) * ((1 : F) * rho 74654) = ((1 : F) * rho 74666)

def relationRow2907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74655) * ((1 : F) * rho 74655) = ((1 : F) * rho 74667)

def relationRow2908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74668) * ((-1 : F) * rho 74666 + (1 : F) * rho 74667) = ((2 : F) * rho 74665)

def relationRow2909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74669) * ((2 : F) + (1 : F) * rho 74666 + (-1 : F) * rho 74667) = ((1 : F) * rho 74666 + (1 : F) * rho 74667)

def relationLc926 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 51⟩, ⟨(1 : F), 73964, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2910 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc926 rho) = ((1 : F) * rho 74670)

def relationRow2911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74670) * ((1 : F) * rho 74668 + (1 : F) * rho 74669) = ((1 : F) * rho 74671)

def relationLc927 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74669) * (relationLc927 rho) = ((1 : F) * rho 74672)

def relationLc928 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74668) * (relationLc928 rho) = ((1 : F) * rho 74673)

def relationRow2914 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74672) * ((1 : F) * rho 74673) = ((1 : F) * rho 74674)

def relationRow2915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74675) * ((1 : F) + (1 : F) * rho 74674) = ((1 : F) * rho 74672 + (1 : F) * rho 74673)

def relationRow2916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74676) * ((1 : F) + (-1 : F) * rho 74674) = ((1 : F) * rho 74671 + (-1 : F) * rho 74672 + (-1 : F) * rho 74673)

def relationLc929 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 51⟩], residual := [((1 : F), 74675)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71962) * (relationLc929 rho) = ((1 : F) * rho 74677)

def relationLc930 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 51⟩], residual := [((1 : F), 74676)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71962) * (relationLc930 rho) = ((1 : F) * rho 74678)

def relationRow2919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74668) * ((1 : F) * rho 74669) = ((1 : F) * rho 74679)

def relationRow2920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74668) * ((1 : F) * rho 74668) = ((1 : F) * rho 74680)

def relationRow2921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74669) * ((1 : F) * rho 74669) = ((1 : F) * rho 74681)

def relationRow2922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74682) * ((-1 : F) * rho 74680 + (1 : F) * rho 74681) = ((2 : F) * rho 74679)

def relationRow2923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74683) * ((2 : F) + (1 : F) * rho 74680 + (-1 : F) * rho 74681) = ((1 : F) * rho 74680 + (1 : F) * rho 74681)

def relationLc931 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 52⟩, ⟨(1 : F), 73964, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2924 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc931 rho) = ((1 : F) * rho 74684)

def relationRow2925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74684) * ((1 : F) * rho 74682 + (1 : F) * rho 74683) = ((1 : F) * rho 74685)

def relationLc932 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74683) * (relationLc932 rho) = ((1 : F) * rho 74686)

def relationLc933 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74682) * (relationLc933 rho) = ((1 : F) * rho 74687)

def relationRow2928 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74686) * ((1 : F) * rho 74687) = ((1 : F) * rho 74688)

def relationRow2929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74689) * ((1 : F) + (1 : F) * rho 74688) = ((1 : F) * rho 74686 + (1 : F) * rho 74687)

def relationRow2930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74690) * ((1 : F) + (-1 : F) * rho 74688) = ((1 : F) * rho 74685 + (-1 : F) * rho 74686 + (-1 : F) * rho 74687)

def relationLc934 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 52⟩], residual := [((1 : F), 74689)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71963) * (relationLc934 rho) = ((1 : F) * rho 74691)

def relationLc935 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 52⟩], residual := [((1 : F), 74690)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71963) * (relationLc935 rho) = ((1 : F) * rho 74692)

def relationRow2933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74682) * ((1 : F) * rho 74683) = ((1 : F) * rho 74693)

def relationRow2934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74682) * ((1 : F) * rho 74682) = ((1 : F) * rho 74694)

def relationRow2935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74683) * ((1 : F) * rho 74683) = ((1 : F) * rho 74695)

def relationRow2936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74696) * ((-1 : F) * rho 74694 + (1 : F) * rho 74695) = ((2 : F) * rho 74693)

def relationRow2937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74697) * ((2 : F) + (1 : F) * rho 74694 + (-1 : F) * rho 74695) = ((1 : F) * rho 74694 + (1 : F) * rho 74695)

def relationLc936 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 53⟩, ⟨(1 : F), 73964, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2938 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc936 rho) = ((1 : F) * rho 74698)

def relationRow2939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74698) * ((1 : F) * rho 74696 + (1 : F) * rho 74697) = ((1 : F) * rho 74699)

def relationLc937 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74697) * (relationLc937 rho) = ((1 : F) * rho 74700)

def relationLc938 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74696) * (relationLc938 rho) = ((1 : F) * rho 74701)

def relationRow2942 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74700) * ((1 : F) * rho 74701) = ((1 : F) * rho 74702)

def relationRow2943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74703) * ((1 : F) + (1 : F) * rho 74702) = ((1 : F) * rho 74700 + (1 : F) * rho 74701)

def relationRow2944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74704) * ((1 : F) + (-1 : F) * rho 74702) = ((1 : F) * rho 74699 + (-1 : F) * rho 74700 + (-1 : F) * rho 74701)

def relationLc939 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 53⟩], residual := [((1 : F), 74703)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71964) * (relationLc939 rho) = ((1 : F) * rho 74705)

def relationLc940 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 53⟩], residual := [((1 : F), 74704)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71964) * (relationLc940 rho) = ((1 : F) * rho 74706)

def relationRow2947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74696) * ((1 : F) * rho 74697) = ((1 : F) * rho 74707)

def relationRow2948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74696) * ((1 : F) * rho 74696) = ((1 : F) * rho 74708)

def relationRow2949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74697) * ((1 : F) * rho 74697) = ((1 : F) * rho 74709)

def relationRow2950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74710) * ((-1 : F) * rho 74708 + (1 : F) * rho 74709) = ((2 : F) * rho 74707)

def relationRow2951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74711) * ((2 : F) + (1 : F) * rho 74708 + (-1 : F) * rho 74709) = ((1 : F) * rho 74708 + (1 : F) * rho 74709)

def relationLc941 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 54⟩, ⟨(1 : F), 73964, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2952 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc941 rho) = ((1 : F) * rho 74712)

def relationRow2953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74712) * ((1 : F) * rho 74710 + (1 : F) * rho 74711) = ((1 : F) * rho 74713)

def relationLc942 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74711) * (relationLc942 rho) = ((1 : F) * rho 74714)

def relationLc943 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74710) * (relationLc943 rho) = ((1 : F) * rho 74715)

def relationRow2956 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74714) * ((1 : F) * rho 74715) = ((1 : F) * rho 74716)

def relationRow2957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74717) * ((1 : F) + (1 : F) * rho 74716) = ((1 : F) * rho 74714 + (1 : F) * rho 74715)

def relationRow2958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74718) * ((1 : F) + (-1 : F) * rho 74716) = ((1 : F) * rho 74713 + (-1 : F) * rho 74714 + (-1 : F) * rho 74715)

def relationLc944 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 54⟩], residual := [((1 : F), 74717)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71965) * (relationLc944 rho) = ((1 : F) * rho 74719)

def relationLc945 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 54⟩], residual := [((1 : F), 74718)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71965) * (relationLc945 rho) = ((1 : F) * rho 74720)

def relationRow2961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74710) * ((1 : F) * rho 74711) = ((1 : F) * rho 74721)

def relationRow2962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74710) * ((1 : F) * rho 74710) = ((1 : F) * rho 74722)

def relationRow2963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74711) * ((1 : F) * rho 74711) = ((1 : F) * rho 74723)

def relationRow2964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74724) * ((-1 : F) * rho 74722 + (1 : F) * rho 74723) = ((2 : F) * rho 74721)

def relationRow2965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74725) * ((2 : F) + (1 : F) * rho 74722 + (-1 : F) * rho 74723) = ((1 : F) * rho 74722 + (1 : F) * rho 74723)

def relationLc946 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 55⟩, ⟨(1 : F), 73964, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2966 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc946 rho) = ((1 : F) * rho 74726)

def relationRow2967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74726) * ((1 : F) * rho 74724 + (1 : F) * rho 74725) = ((1 : F) * rho 74727)

def relationLc947 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74725) * (relationLc947 rho) = ((1 : F) * rho 74728)

def relationLc948 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74724) * (relationLc948 rho) = ((1 : F) * rho 74729)

def relationRow2970 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74728) * ((1 : F) * rho 74729) = ((1 : F) * rho 74730)

def relationRow2971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74731) * ((1 : F) + (1 : F) * rho 74730) = ((1 : F) * rho 74728 + (1 : F) * rho 74729)

def relationRow2972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74732) * ((1 : F) + (-1 : F) * rho 74730) = ((1 : F) * rho 74727 + (-1 : F) * rho 74728 + (-1 : F) * rho 74729)

def relationLc949 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 55⟩], residual := [((1 : F), 74731)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71966) * (relationLc949 rho) = ((1 : F) * rho 74733)

def relationLc950 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 55⟩], residual := [((1 : F), 74732)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71966) * (relationLc950 rho) = ((1 : F) * rho 74734)

def relationRow2975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74724) * ((1 : F) * rho 74725) = ((1 : F) * rho 74735)

def relationRow2976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74724) * ((1 : F) * rho 74724) = ((1 : F) * rho 74736)

def relationRow2977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74725) * ((1 : F) * rho 74725) = ((1 : F) * rho 74737)

def relationRow2978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74738) * ((-1 : F) * rho 74736 + (1 : F) * rho 74737) = ((2 : F) * rho 74735)

def relationRow2979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74739) * ((2 : F) + (1 : F) * rho 74736 + (-1 : F) * rho 74737) = ((1 : F) * rho 74736 + (1 : F) * rho 74737)

def relationLc951 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 56⟩, ⟨(1 : F), 73964, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2980 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc951 rho) = ((1 : F) * rho 74740)

def relationRow2981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74740) * ((1 : F) * rho 74738 + (1 : F) * rho 74739) = ((1 : F) * rho 74741)

def relationLc952 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74739) * (relationLc952 rho) = ((1 : F) * rho 74742)

def relationLc953 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74738) * (relationLc953 rho) = ((1 : F) * rho 74743)

def relationRow2984 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74742) * ((1 : F) * rho 74743) = ((1 : F) * rho 74744)

def relationRow2985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74745) * ((1 : F) + (1 : F) * rho 74744) = ((1 : F) * rho 74742 + (1 : F) * rho 74743)

def relationRow2986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74746) * ((1 : F) + (-1 : F) * rho 74744) = ((1 : F) * rho 74741 + (-1 : F) * rho 74742 + (-1 : F) * rho 74743)

def relationLc954 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 56⟩], residual := [((1 : F), 74745)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71967) * (relationLc954 rho) = ((1 : F) * rho 74747)

def relationLc955 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 56⟩], residual := [((1 : F), 74746)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71967) * (relationLc955 rho) = ((1 : F) * rho 74748)

def relationRow2989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74738) * ((1 : F) * rho 74739) = ((1 : F) * rho 74749)

def relationRow2990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74738) * ((1 : F) * rho 74738) = ((1 : F) * rho 74750)

def relationRow2991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74739) * ((1 : F) * rho 74739) = ((1 : F) * rho 74751)

def relationRow2992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74752) * ((-1 : F) * rho 74750 + (1 : F) * rho 74751) = ((2 : F) * rho 74749)

def relationRow2993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74753) * ((2 : F) + (1 : F) * rho 74750 + (-1 : F) * rho 74751) = ((1 : F) * rho 74750 + (1 : F) * rho 74751)

def relationLc956 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 57⟩, ⟨(1 : F), 73964, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2994 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc956 rho) = ((1 : F) * rho 74754)

def relationRow2995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74754) * ((1 : F) * rho 74752 + (1 : F) * rho 74753) = ((1 : F) * rho 74755)

def relationLc957 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74753) * (relationLc957 rho) = ((1 : F) * rho 74756)

def relationLc958 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74752) * (relationLc958 rho) = ((1 : F) * rho 74757)

def relationRow2998 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74756) * ((1 : F) * rho 74757) = ((1 : F) * rho 74758)

def relationRow2999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74759) * ((1 : F) + (1 : F) * rho 74758) = ((1 : F) * rho 74756 + (1 : F) * rho 74757)

def relationRow3000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74760) * ((1 : F) + (-1 : F) * rho 74758) = ((1 : F) * rho 74755 + (-1 : F) * rho 74756 + (-1 : F) * rho 74757)

def relationLc959 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 57⟩], residual := [((1 : F), 74759)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71968) * (relationLc959 rho) = ((1 : F) * rho 74761)

def relationLc960 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 57⟩], residual := [((1 : F), 74760)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71968) * (relationLc960 rho) = ((1 : F) * rho 74762)

def relationRow3003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74752) * ((1 : F) * rho 74753) = ((1 : F) * rho 74763)

def relationRow3004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74752) * ((1 : F) * rho 74752) = ((1 : F) * rho 74764)

def relationRow3005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74753) * ((1 : F) * rho 74753) = ((1 : F) * rho 74765)

def relationRow3006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74766) * ((-1 : F) * rho 74764 + (1 : F) * rho 74765) = ((2 : F) * rho 74763)

def relationRow3007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74767) * ((2 : F) + (1 : F) * rho 74764 + (-1 : F) * rho 74765) = ((1 : F) * rho 74764 + (1 : F) * rho 74765)

def relationLc961 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 58⟩, ⟨(1 : F), 73964, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3008 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc961 rho) = ((1 : F) * rho 74768)

def relationRow3009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74768) * ((1 : F) * rho 74766 + (1 : F) * rho 74767) = ((1 : F) * rho 74769)

def relationLc962 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74767) * (relationLc962 rho) = ((1 : F) * rho 74770)

def relationLc963 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74766) * (relationLc963 rho) = ((1 : F) * rho 74771)

def relationRow3012 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74770) * ((1 : F) * rho 74771) = ((1 : F) * rho 74772)

def relationRow3013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74773) * ((1 : F) + (1 : F) * rho 74772) = ((1 : F) * rho 74770 + (1 : F) * rho 74771)

def relationRow3014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74774) * ((1 : F) + (-1 : F) * rho 74772) = ((1 : F) * rho 74769 + (-1 : F) * rho 74770 + (-1 : F) * rho 74771)

def relationLc964 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 58⟩], residual := [((1 : F), 74773)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71969) * (relationLc964 rho) = ((1 : F) * rho 74775)

def relationLc965 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 58⟩], residual := [((1 : F), 74774)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71969) * (relationLc965 rho) = ((1 : F) * rho 74776)

def relationRow3017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74766) * ((1 : F) * rho 74767) = ((1 : F) * rho 74777)

def relationRow3018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74766) * ((1 : F) * rho 74766) = ((1 : F) * rho 74778)

def relationRow3019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74767) * ((1 : F) * rho 74767) = ((1 : F) * rho 74779)

def relationRow3020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74780) * ((-1 : F) * rho 74778 + (1 : F) * rho 74779) = ((2 : F) * rho 74777)

def relationRow3021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74781) * ((2 : F) + (1 : F) * rho 74778 + (-1 : F) * rho 74779) = ((1 : F) * rho 74778 + (1 : F) * rho 74779)

def relationLc966 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 59⟩, ⟨(1 : F), 73964, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3022 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc966 rho) = ((1 : F) * rho 74782)

def relationRow3023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74782) * ((1 : F) * rho 74780 + (1 : F) * rho 74781) = ((1 : F) * rho 74783)

def relationLc967 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74781) * (relationLc967 rho) = ((1 : F) * rho 74784)

def relationLc968 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74780) * (relationLc968 rho) = ((1 : F) * rho 74785)

def relationRow3026 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74784) * ((1 : F) * rho 74785) = ((1 : F) * rho 74786)

def relationRow3027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74787) * ((1 : F) + (1 : F) * rho 74786) = ((1 : F) * rho 74784 + (1 : F) * rho 74785)

def relationRow3028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74788) * ((1 : F) + (-1 : F) * rho 74786) = ((1 : F) * rho 74783 + (-1 : F) * rho 74784 + (-1 : F) * rho 74785)

def relationLc969 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 59⟩], residual := [((1 : F), 74787)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71970) * (relationLc969 rho) = ((1 : F) * rho 74789)

def relationLc970 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 59⟩], residual := [((1 : F), 74788)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71970) * (relationLc970 rho) = ((1 : F) * rho 74790)

def relationRow3031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74780) * ((1 : F) * rho 74781) = ((1 : F) * rho 74791)

def relationRow3032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74780) * ((1 : F) * rho 74780) = ((1 : F) * rho 74792)

def relationRow3033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74781) * ((1 : F) * rho 74781) = ((1 : F) * rho 74793)

def relationRow3034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74794) * ((-1 : F) * rho 74792 + (1 : F) * rho 74793) = ((2 : F) * rho 74791)

def relationRow3035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74795) * ((2 : F) + (1 : F) * rho 74792 + (-1 : F) * rho 74793) = ((1 : F) * rho 74792 + (1 : F) * rho 74793)

def relationLc971 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 60⟩, ⟨(1 : F), 73964, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3036 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc971 rho) = ((1 : F) * rho 74796)

def relationRow3037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74796) * ((1 : F) * rho 74794 + (1 : F) * rho 74795) = ((1 : F) * rho 74797)

def relationLc972 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74795) * (relationLc972 rho) = ((1 : F) * rho 74798)

def relationLc973 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74794) * (relationLc973 rho) = ((1 : F) * rho 74799)

def relationRow3040 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74798) * ((1 : F) * rho 74799) = ((1 : F) * rho 74800)

def relationRow3041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74801) * ((1 : F) + (1 : F) * rho 74800) = ((1 : F) * rho 74798 + (1 : F) * rho 74799)

def relationRow3042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74802) * ((1 : F) + (-1 : F) * rho 74800) = ((1 : F) * rho 74797 + (-1 : F) * rho 74798 + (-1 : F) * rho 74799)

def relationLc974 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 60⟩], residual := [((1 : F), 74801)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71971) * (relationLc974 rho) = ((1 : F) * rho 74803)

def relationLc975 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 60⟩], residual := [((1 : F), 74802)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71971) * (relationLc975 rho) = ((1 : F) * rho 74804)

def relationRow3045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74794) * ((1 : F) * rho 74795) = ((1 : F) * rho 74805)

def relationRow3046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74794) * ((1 : F) * rho 74794) = ((1 : F) * rho 74806)

def relationRow3047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74795) * ((1 : F) * rho 74795) = ((1 : F) * rho 74807)

def relationRow3048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74808) * ((-1 : F) * rho 74806 + (1 : F) * rho 74807) = ((2 : F) * rho 74805)

def relationRow3049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74809) * ((2 : F) + (1 : F) * rho 74806 + (-1 : F) * rho 74807) = ((1 : F) * rho 74806 + (1 : F) * rho 74807)

def relationLc976 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 61⟩, ⟨(1 : F), 73964, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3050 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc976 rho) = ((1 : F) * rho 74810)

def relationRow3051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74810) * ((1 : F) * rho 74808 + (1 : F) * rho 74809) = ((1 : F) * rho 74811)

def relationLc977 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74809) * (relationLc977 rho) = ((1 : F) * rho 74812)

def relationLc978 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74808) * (relationLc978 rho) = ((1 : F) * rho 74813)

def relationRow3054 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74812) * ((1 : F) * rho 74813) = ((1 : F) * rho 74814)

def relationRow3055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74815) * ((1 : F) + (1 : F) * rho 74814) = ((1 : F) * rho 74812 + (1 : F) * rho 74813)

def relationRow3056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74816) * ((1 : F) + (-1 : F) * rho 74814) = ((1 : F) * rho 74811 + (-1 : F) * rho 74812 + (-1 : F) * rho 74813)

def relationLc979 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 61⟩], residual := [((1 : F), 74815)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71972) * (relationLc979 rho) = ((1 : F) * rho 74817)

def relationLc980 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 61⟩], residual := [((1 : F), 74816)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71972) * (relationLc980 rho) = ((1 : F) * rho 74818)

def relationRow3059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74808) * ((1 : F) * rho 74809) = ((1 : F) * rho 74819)

def relationRow3060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74808) * ((1 : F) * rho 74808) = ((1 : F) * rho 74820)

def relationRow3061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74809) * ((1 : F) * rho 74809) = ((1 : F) * rho 74821)

def relationRow3062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74822) * ((-1 : F) * rho 74820 + (1 : F) * rho 74821) = ((2 : F) * rho 74819)

def relationRow3063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74823) * ((2 : F) + (1 : F) * rho 74820 + (-1 : F) * rho 74821) = ((1 : F) * rho 74820 + (1 : F) * rho 74821)

def relationLc981 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 62⟩, ⟨(1 : F), 73964, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3064 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc981 rho) = ((1 : F) * rho 74824)

def relationRow3065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74824) * ((1 : F) * rho 74822 + (1 : F) * rho 74823) = ((1 : F) * rho 74825)

def relationLc982 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74823) * (relationLc982 rho) = ((1 : F) * rho 74826)

def relationLc983 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74822) * (relationLc983 rho) = ((1 : F) * rho 74827)

def relationRow3068 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74826) * ((1 : F) * rho 74827) = ((1 : F) * rho 74828)

def relationRow3069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74829) * ((1 : F) + (1 : F) * rho 74828) = ((1 : F) * rho 74826 + (1 : F) * rho 74827)

def relationRow3070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74830) * ((1 : F) + (-1 : F) * rho 74828) = ((1 : F) * rho 74825 + (-1 : F) * rho 74826 + (-1 : F) * rho 74827)

def relationLc984 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 62⟩], residual := [((1 : F), 74829)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71973) * (relationLc984 rho) = ((1 : F) * rho 74831)

def relationLc985 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 62⟩], residual := [((1 : F), 74830)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71973) * (relationLc985 rho) = ((1 : F) * rho 74832)

def relationRow3073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74822) * ((1 : F) * rho 74823) = ((1 : F) * rho 74833)

def relationRow3074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74822) * ((1 : F) * rho 74822) = ((1 : F) * rho 74834)

def relationRow3075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74823) * ((1 : F) * rho 74823) = ((1 : F) * rho 74835)

def relationRow3076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74836) * ((-1 : F) * rho 74834 + (1 : F) * rho 74835) = ((2 : F) * rho 74833)

def relationRow3077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74837) * ((2 : F) + (1 : F) * rho 74834 + (-1 : F) * rho 74835) = ((1 : F) * rho 74834 + (1 : F) * rho 74835)

def relationLc986 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 63⟩, ⟨(1 : F), 73964, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3078 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc986 rho) = ((1 : F) * rho 74838)

def relationRow3079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74838) * ((1 : F) * rho 74836 + (1 : F) * rho 74837) = ((1 : F) * rho 74839)

def relationLc987 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74837) * (relationLc987 rho) = ((1 : F) * rho 74840)

def relationLc988 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74836) * (relationLc988 rho) = ((1 : F) * rho 74841)

def relationRow3082 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74840) * ((1 : F) * rho 74841) = ((1 : F) * rho 74842)

def relationRow3083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74843) * ((1 : F) + (1 : F) * rho 74842) = ((1 : F) * rho 74840 + (1 : F) * rho 74841)

def relationRow3084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74844) * ((1 : F) + (-1 : F) * rho 74842) = ((1 : F) * rho 74839 + (-1 : F) * rho 74840 + (-1 : F) * rho 74841)

def relationLc989 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 63⟩], residual := [((1 : F), 74843)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71974) * (relationLc989 rho) = ((1 : F) * rho 74845)

def relationLc990 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 63⟩], residual := [((1 : F), 74844)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71974) * (relationLc990 rho) = ((1 : F) * rho 74846)

def relationRow3087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74836) * ((1 : F) * rho 74837) = ((1 : F) * rho 74847)

def relationRow3088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74836) * ((1 : F) * rho 74836) = ((1 : F) * rho 74848)

def relationRow3089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74837) * ((1 : F) * rho 74837) = ((1 : F) * rho 74849)

def relationRow3090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74850) * ((-1 : F) * rho 74848 + (1 : F) * rho 74849) = ((2 : F) * rho 74847)

def relationRow3091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74851) * ((2 : F) + (1 : F) * rho 74848 + (-1 : F) * rho 74849) = ((1 : F) * rho 74848 + (1 : F) * rho 74849)

def relationLc991 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 64⟩, ⟨(1 : F), 73964, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3092 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc991 rho) = ((1 : F) * rho 74852)

def relationRow3093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74852) * ((1 : F) * rho 74850 + (1 : F) * rho 74851) = ((1 : F) * rho 74853)

def relationLc992 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74851) * (relationLc992 rho) = ((1 : F) * rho 74854)

def relationLc993 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74850) * (relationLc993 rho) = ((1 : F) * rho 74855)

def relationRow3096 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74854) * ((1 : F) * rho 74855) = ((1 : F) * rho 74856)

def relationRow3097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74857) * ((1 : F) + (1 : F) * rho 74856) = ((1 : F) * rho 74854 + (1 : F) * rho 74855)

def relationRow3098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74858) * ((1 : F) + (-1 : F) * rho 74856) = ((1 : F) * rho 74853 + (-1 : F) * rho 74854 + (-1 : F) * rho 74855)

def relationLc994 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 64⟩], residual := [((1 : F), 74857)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71975) * (relationLc994 rho) = ((1 : F) * rho 74859)

def relationLc995 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 64⟩], residual := [((1 : F), 74858)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71975) * (relationLc995 rho) = ((1 : F) * rho 74860)

def relationRow3101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74850) * ((1 : F) * rho 74851) = ((1 : F) * rho 74861)

def relationRow3102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74850) * ((1 : F) * rho 74850) = ((1 : F) * rho 74862)

def relationRow3103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74851) * ((1 : F) * rho 74851) = ((1 : F) * rho 74863)

def relationRow3104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74864) * ((-1 : F) * rho 74862 + (1 : F) * rho 74863) = ((2 : F) * rho 74861)

def relationRow3105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74865) * ((2 : F) + (1 : F) * rho 74862 + (-1 : F) * rho 74863) = ((1 : F) * rho 74862 + (1 : F) * rho 74863)

def relationLc996 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 65⟩, ⟨(1 : F), 73964, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3106 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc996 rho) = ((1 : F) * rho 74866)

def relationRow3107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74866) * ((1 : F) * rho 74864 + (1 : F) * rho 74865) = ((1 : F) * rho 74867)

def relationLc997 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74865) * (relationLc997 rho) = ((1 : F) * rho 74868)

def relationLc998 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74864) * (relationLc998 rho) = ((1 : F) * rho 74869)

def relationRow3110 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74868) * ((1 : F) * rho 74869) = ((1 : F) * rho 74870)

def relationRow3111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74871) * ((1 : F) + (1 : F) * rho 74870) = ((1 : F) * rho 74868 + (1 : F) * rho 74869)

def relationRow3112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74872) * ((1 : F) + (-1 : F) * rho 74870) = ((1 : F) * rho 74867 + (-1 : F) * rho 74868 + (-1 : F) * rho 74869)

def relationLc999 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 65⟩], residual := [((1 : F), 74871)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71976) * (relationLc999 rho) = ((1 : F) * rho 74873)

def relationLc1000 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 65⟩], residual := [((1 : F), 74872)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71976) * (relationLc1000 rho) = ((1 : F) * rho 74874)

def relationRow3115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74864) * ((1 : F) * rho 74865) = ((1 : F) * rho 74875)

def relationRow3116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74864) * ((1 : F) * rho 74864) = ((1 : F) * rho 74876)

def relationRow3117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74865) * ((1 : F) * rho 74865) = ((1 : F) * rho 74877)

def relationRow3118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74878) * ((-1 : F) * rho 74876 + (1 : F) * rho 74877) = ((2 : F) * rho 74875)

def relationRow3119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74879) * ((2 : F) + (1 : F) * rho 74876 + (-1 : F) * rho 74877) = ((1 : F) * rho 74876 + (1 : F) * rho 74877)

def relationLc1001 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 66⟩, ⟨(1 : F), 73964, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3120 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1001 rho) = ((1 : F) * rho 74880)

def relationRow3121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74880) * ((1 : F) * rho 74878 + (1 : F) * rho 74879) = ((1 : F) * rho 74881)

def relationLc1002 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74879) * (relationLc1002 rho) = ((1 : F) * rho 74882)

def relationLc1003 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74878) * (relationLc1003 rho) = ((1 : F) * rho 74883)

def relationRow3124 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74882) * ((1 : F) * rho 74883) = ((1 : F) * rho 74884)

def relationRow3125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74885) * ((1 : F) + (1 : F) * rho 74884) = ((1 : F) * rho 74882 + (1 : F) * rho 74883)

def relationRow3126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74886) * ((1 : F) + (-1 : F) * rho 74884) = ((1 : F) * rho 74881 + (-1 : F) * rho 74882 + (-1 : F) * rho 74883)

def relationLc1004 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 66⟩], residual := [((1 : F), 74885)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71977) * (relationLc1004 rho) = ((1 : F) * rho 74887)

def relationLc1005 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 66⟩], residual := [((1 : F), 74886)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71977) * (relationLc1005 rho) = ((1 : F) * rho 74888)

def relationRow3129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74878) * ((1 : F) * rho 74879) = ((1 : F) * rho 74889)

def relationRow3130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74878) * ((1 : F) * rho 74878) = ((1 : F) * rho 74890)

def relationRow3131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74879) * ((1 : F) * rho 74879) = ((1 : F) * rho 74891)

def relationRow3132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74892) * ((-1 : F) * rho 74890 + (1 : F) * rho 74891) = ((2 : F) * rho 74889)

def relationRow3133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74893) * ((2 : F) + (1 : F) * rho 74890 + (-1 : F) * rho 74891) = ((1 : F) * rho 74890 + (1 : F) * rho 74891)

def relationLc1006 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 67⟩, ⟨(1 : F), 73964, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3134 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1006 rho) = ((1 : F) * rho 74894)

def relationRow3135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74894) * ((1 : F) * rho 74892 + (1 : F) * rho 74893) = ((1 : F) * rho 74895)

def relationLc1007 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74893) * (relationLc1007 rho) = ((1 : F) * rho 74896)

def relationLc1008 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74892) * (relationLc1008 rho) = ((1 : F) * rho 74897)

def relationRow3138 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74896) * ((1 : F) * rho 74897) = ((1 : F) * rho 74898)

def relationRow3139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74899) * ((1 : F) + (1 : F) * rho 74898) = ((1 : F) * rho 74896 + (1 : F) * rho 74897)

def relationRow3140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74900) * ((1 : F) + (-1 : F) * rho 74898) = ((1 : F) * rho 74895 + (-1 : F) * rho 74896 + (-1 : F) * rho 74897)

def relationLc1009 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 67⟩], residual := [((1 : F), 74899)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71978) * (relationLc1009 rho) = ((1 : F) * rho 74901)

def relationLc1010 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 67⟩], residual := [((1 : F), 74900)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71978) * (relationLc1010 rho) = ((1 : F) * rho 74902)

def relationRow3143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74892) * ((1 : F) * rho 74893) = ((1 : F) * rho 74903)

def relationRow3144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74892) * ((1 : F) * rho 74892) = ((1 : F) * rho 74904)

def relationRow3145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74893) * ((1 : F) * rho 74893) = ((1 : F) * rho 74905)

def relationRow3146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74906) * ((-1 : F) * rho 74904 + (1 : F) * rho 74905) = ((2 : F) * rho 74903)

def relationRow3147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74907) * ((2 : F) + (1 : F) * rho 74904 + (-1 : F) * rho 74905) = ((1 : F) * rho 74904 + (1 : F) * rho 74905)

def relationLc1011 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 68⟩, ⟨(1 : F), 73964, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3148 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1011 rho) = ((1 : F) * rho 74908)

def relationRow3149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74908) * ((1 : F) * rho 74906 + (1 : F) * rho 74907) = ((1 : F) * rho 74909)

def relationLc1012 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74907) * (relationLc1012 rho) = ((1 : F) * rho 74910)

def relationLc1013 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74906) * (relationLc1013 rho) = ((1 : F) * rho 74911)

def relationRow3152 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74910) * ((1 : F) * rho 74911) = ((1 : F) * rho 74912)

def relationRow3153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74913) * ((1 : F) + (1 : F) * rho 74912) = ((1 : F) * rho 74910 + (1 : F) * rho 74911)

def relationRow3154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74914) * ((1 : F) + (-1 : F) * rho 74912) = ((1 : F) * rho 74909 + (-1 : F) * rho 74910 + (-1 : F) * rho 74911)

def relationLc1014 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 68⟩], residual := [((1 : F), 74913)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71979) * (relationLc1014 rho) = ((1 : F) * rho 74915)

def relationLc1015 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 68⟩], residual := [((1 : F), 74914)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71979) * (relationLc1015 rho) = ((1 : F) * rho 74916)

def relationRow3157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74906) * ((1 : F) * rho 74907) = ((1 : F) * rho 74917)

def relationRow3158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74906) * ((1 : F) * rho 74906) = ((1 : F) * rho 74918)

def relationRow3159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74907) * ((1 : F) * rho 74907) = ((1 : F) * rho 74919)

def relationRow3160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74920) * ((-1 : F) * rho 74918 + (1 : F) * rho 74919) = ((2 : F) * rho 74917)

def relationRow3161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74921) * ((2 : F) + (1 : F) * rho 74918 + (-1 : F) * rho 74919) = ((1 : F) * rho 74918 + (1 : F) * rho 74919)

def relationLc1016 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 69⟩, ⟨(1 : F), 73964, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3162 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1016 rho) = ((1 : F) * rho 74922)

def relationRow3163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74922) * ((1 : F) * rho 74920 + (1 : F) * rho 74921) = ((1 : F) * rho 74923)

def relationLc1017 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74921) * (relationLc1017 rho) = ((1 : F) * rho 74924)

def relationLc1018 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74920) * (relationLc1018 rho) = ((1 : F) * rho 74925)

def relationRow3166 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74924) * ((1 : F) * rho 74925) = ((1 : F) * rho 74926)

def relationRow3167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74927) * ((1 : F) + (1 : F) * rho 74926) = ((1 : F) * rho 74924 + (1 : F) * rho 74925)

def relationRow3168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74928) * ((1 : F) + (-1 : F) * rho 74926) = ((1 : F) * rho 74923 + (-1 : F) * rho 74924 + (-1 : F) * rho 74925)

def relationLc1019 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 69⟩], residual := [((1 : F), 74927)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71980) * (relationLc1019 rho) = ((1 : F) * rho 74929)

def relationLc1020 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 69⟩], residual := [((1 : F), 74928)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71980) * (relationLc1020 rho) = ((1 : F) * rho 74930)

def relationRow3171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74920) * ((1 : F) * rho 74921) = ((1 : F) * rho 74931)

def relationRow3172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74920) * ((1 : F) * rho 74920) = ((1 : F) * rho 74932)

def relationRow3173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74921) * ((1 : F) * rho 74921) = ((1 : F) * rho 74933)

def relationRow3174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74934) * ((-1 : F) * rho 74932 + (1 : F) * rho 74933) = ((2 : F) * rho 74931)

def relationRow3175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74935) * ((2 : F) + (1 : F) * rho 74932 + (-1 : F) * rho 74933) = ((1 : F) * rho 74932 + (1 : F) * rho 74933)

def relationLc1021 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 70⟩, ⟨(1 : F), 73964, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3176 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1021 rho) = ((1 : F) * rho 74936)

def relationRow3177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74936) * ((1 : F) * rho 74934 + (1 : F) * rho 74935) = ((1 : F) * rho 74937)

def relationLc1022 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74935) * (relationLc1022 rho) = ((1 : F) * rho 74938)

def relationLc1023 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74934) * (relationLc1023 rho) = ((1 : F) * rho 74939)

def relationRow3180 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74938) * ((1 : F) * rho 74939) = ((1 : F) * rho 74940)

def relationRow3181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74941) * ((1 : F) + (1 : F) * rho 74940) = ((1 : F) * rho 74938 + (1 : F) * rho 74939)

def relationRow3182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74942) * ((1 : F) + (-1 : F) * rho 74940) = ((1 : F) * rho 74937 + (-1 : F) * rho 74938 + (-1 : F) * rho 74939)

def relationLc1024 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 70⟩], residual := [((1 : F), 74941)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71981) * (relationLc1024 rho) = ((1 : F) * rho 74943)

def relationLc1025 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 70⟩], residual := [((1 : F), 74942)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71981) * (relationLc1025 rho) = ((1 : F) * rho 74944)

def relationRow3185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74934) * ((1 : F) * rho 74935) = ((1 : F) * rho 74945)

def relationRow3186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74934) * ((1 : F) * rho 74934) = ((1 : F) * rho 74946)

def relationRow3187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74935) * ((1 : F) * rho 74935) = ((1 : F) * rho 74947)

def relationRow3188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74948) * ((-1 : F) * rho 74946 + (1 : F) * rho 74947) = ((2 : F) * rho 74945)

def relationRow3189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74949) * ((2 : F) + (1 : F) * rho 74946 + (-1 : F) * rho 74947) = ((1 : F) * rho 74946 + (1 : F) * rho 74947)

def relationLc1026 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 71⟩, ⟨(1 : F), 73964, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3190 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1026 rho) = ((1 : F) * rho 74950)

def relationRow3191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74950) * ((1 : F) * rho 74948 + (1 : F) * rho 74949) = ((1 : F) * rho 74951)

def relationLc1027 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74949) * (relationLc1027 rho) = ((1 : F) * rho 74952)

def relationLc1028 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74948) * (relationLc1028 rho) = ((1 : F) * rho 74953)

def relationRow3194 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74952) * ((1 : F) * rho 74953) = ((1 : F) * rho 74954)

def relationRow3195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74955) * ((1 : F) + (1 : F) * rho 74954) = ((1 : F) * rho 74952 + (1 : F) * rho 74953)

def relationRow3196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74956) * ((1 : F) + (-1 : F) * rho 74954) = ((1 : F) * rho 74951 + (-1 : F) * rho 74952 + (-1 : F) * rho 74953)

def relationLc1029 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 71⟩], residual := [((1 : F), 74955)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71982) * (relationLc1029 rho) = ((1 : F) * rho 74957)

def relationLc1030 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 71⟩], residual := [((1 : F), 74956)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71982) * (relationLc1030 rho) = ((1 : F) * rho 74958)

def relationRow3199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74948) * ((1 : F) * rho 74949) = ((1 : F) * rho 74959)

def relationRow3200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74948) * ((1 : F) * rho 74948) = ((1 : F) * rho 74960)

def relationRow3201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74949) * ((1 : F) * rho 74949) = ((1 : F) * rho 74961)

def relationRow3202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74962) * ((-1 : F) * rho 74960 + (1 : F) * rho 74961) = ((2 : F) * rho 74959)

def relationRow3203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74963) * ((2 : F) + (1 : F) * rho 74960 + (-1 : F) * rho 74961) = ((1 : F) * rho 74960 + (1 : F) * rho 74961)

def relationLc1031 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 72⟩, ⟨(1 : F), 73964, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3204 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1031 rho) = ((1 : F) * rho 74964)

def relationRow3205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74964) * ((1 : F) * rho 74962 + (1 : F) * rho 74963) = ((1 : F) * rho 74965)

def relationLc1032 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74963) * (relationLc1032 rho) = ((1 : F) * rho 74966)

def relationLc1033 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74962) * (relationLc1033 rho) = ((1 : F) * rho 74967)

def relationRow3208 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74966) * ((1 : F) * rho 74967) = ((1 : F) * rho 74968)

def relationRow3209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74969) * ((1 : F) + (1 : F) * rho 74968) = ((1 : F) * rho 74966 + (1 : F) * rho 74967)

def relationRow3210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74970) * ((1 : F) + (-1 : F) * rho 74968) = ((1 : F) * rho 74965 + (-1 : F) * rho 74966 + (-1 : F) * rho 74967)

def relationLc1034 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 72⟩], residual := [((1 : F), 74969)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71983) * (relationLc1034 rho) = ((1 : F) * rho 74971)

def relationLc1035 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 72⟩], residual := [((1 : F), 74970)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71983) * (relationLc1035 rho) = ((1 : F) * rho 74972)

def relationRow3213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74962) * ((1 : F) * rho 74963) = ((1 : F) * rho 74973)

def relationRow3214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74962) * ((1 : F) * rho 74962) = ((1 : F) * rho 74974)

def relationRow3215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74963) * ((1 : F) * rho 74963) = ((1 : F) * rho 74975)

def relationRow3216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74976) * ((-1 : F) * rho 74974 + (1 : F) * rho 74975) = ((2 : F) * rho 74973)

def relationRow3217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74977) * ((2 : F) + (1 : F) * rho 74974 + (-1 : F) * rho 74975) = ((1 : F) * rho 74974 + (1 : F) * rho 74975)

def relationLc1036 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 73⟩, ⟨(1 : F), 73964, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3218 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1036 rho) = ((1 : F) * rho 74978)

def relationRow3219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74978) * ((1 : F) * rho 74976 + (1 : F) * rho 74977) = ((1 : F) * rho 74979)

def relationLc1037 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74977) * (relationLc1037 rho) = ((1 : F) * rho 74980)

def relationLc1038 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74976) * (relationLc1038 rho) = ((1 : F) * rho 74981)

def relationRow3222 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74980) * ((1 : F) * rho 74981) = ((1 : F) * rho 74982)

def relationRow3223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74983) * ((1 : F) + (1 : F) * rho 74982) = ((1 : F) * rho 74980 + (1 : F) * rho 74981)

def relationRow3224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74984) * ((1 : F) + (-1 : F) * rho 74982) = ((1 : F) * rho 74979 + (-1 : F) * rho 74980 + (-1 : F) * rho 74981)

def relationLc1039 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 73⟩], residual := [((1 : F), 74983)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71984) * (relationLc1039 rho) = ((1 : F) * rho 74985)

def relationLc1040 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 73⟩], residual := [((1 : F), 74984)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71984) * (relationLc1040 rho) = ((1 : F) * rho 74986)

def relationRow3227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74976) * ((1 : F) * rho 74977) = ((1 : F) * rho 74987)

def relationRow3228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74976) * ((1 : F) * rho 74976) = ((1 : F) * rho 74988)

def relationRow3229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74977) * ((1 : F) * rho 74977) = ((1 : F) * rho 74989)

def relationRow3230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74990) * ((-1 : F) * rho 74988 + (1 : F) * rho 74989) = ((2 : F) * rho 74987)

def relationRow3231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74991) * ((2 : F) + (1 : F) * rho 74988 + (-1 : F) * rho 74989) = ((1 : F) * rho 74988 + (1 : F) * rho 74989)

def relationLc1041 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 74⟩, ⟨(1 : F), 73964, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3232 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1041 rho) = ((1 : F) * rho 74992)

def relationRow3233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74992) * ((1 : F) * rho 74990 + (1 : F) * rho 74991) = ((1 : F) * rho 74993)

def relationLc1042 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74991) * (relationLc1042 rho) = ((1 : F) * rho 74994)

def relationLc1043 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74990) * (relationLc1043 rho) = ((1 : F) * rho 74995)

def relationRow3236 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 74994) * ((1 : F) * rho 74995) = ((1 : F) * rho 74996)

def relationRow3237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74997) * ((1 : F) + (1 : F) * rho 74996) = ((1 : F) * rho 74994 + (1 : F) * rho 74995)

def relationRow3238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74998) * ((1 : F) + (-1 : F) * rho 74996) = ((1 : F) * rho 74993 + (-1 : F) * rho 74994 + (-1 : F) * rho 74995)

def relationLc1044 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 74⟩], residual := [((1 : F), 74997)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71985) * (relationLc1044 rho) = ((1 : F) * rho 74999)

def relationLc1045 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 74⟩], residual := [((1 : F), 74998)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71985) * (relationLc1045 rho) = ((1 : F) * rho 75000)

def relationRow3241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74990) * ((1 : F) * rho 74991) = ((1 : F) * rho 75001)

def relationRow3242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74990) * ((1 : F) * rho 74990) = ((1 : F) * rho 75002)

def relationRow3243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 74991) * ((1 : F) * rho 74991) = ((1 : F) * rho 75003)

def relationRow3244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75004) * ((-1 : F) * rho 75002 + (1 : F) * rho 75003) = ((2 : F) * rho 75001)

def relationRow3245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75005) * ((2 : F) + (1 : F) * rho 75002 + (-1 : F) * rho 75003) = ((1 : F) * rho 75002 + (1 : F) * rho 75003)

def relationLc1046 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 75⟩, ⟨(1 : F), 73964, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3246 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1046 rho) = ((1 : F) * rho 75006)

def relationRow3247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75006) * ((1 : F) * rho 75004 + (1 : F) * rho 75005) = ((1 : F) * rho 75007)

def relationLc1047 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75005) * (relationLc1047 rho) = ((1 : F) * rho 75008)

def relationLc1048 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75004) * (relationLc1048 rho) = ((1 : F) * rho 75009)

def relationRow3250 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75008) * ((1 : F) * rho 75009) = ((1 : F) * rho 75010)

def relationRow3251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75011) * ((1 : F) + (1 : F) * rho 75010) = ((1 : F) * rho 75008 + (1 : F) * rho 75009)

def relationRow3252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75012) * ((1 : F) + (-1 : F) * rho 75010) = ((1 : F) * rho 75007 + (-1 : F) * rho 75008 + (-1 : F) * rho 75009)

def relationLc1049 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 75⟩], residual := [((1 : F), 75011)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71986) * (relationLc1049 rho) = ((1 : F) * rho 75013)

def relationLc1050 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 75⟩], residual := [((1 : F), 75012)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71986) * (relationLc1050 rho) = ((1 : F) * rho 75014)

def relationRow3255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75004) * ((1 : F) * rho 75005) = ((1 : F) * rho 75015)

def relationRow3256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75004) * ((1 : F) * rho 75004) = ((1 : F) * rho 75016)

def relationRow3257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75005) * ((1 : F) * rho 75005) = ((1 : F) * rho 75017)

def relationRow3258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75018) * ((-1 : F) * rho 75016 + (1 : F) * rho 75017) = ((2 : F) * rho 75015)

def relationRow3259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75019) * ((2 : F) + (1 : F) * rho 75016 + (-1 : F) * rho 75017) = ((1 : F) * rho 75016 + (1 : F) * rho 75017)

def relationLc1051 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 76⟩, ⟨(1 : F), 73964, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3260 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1051 rho) = ((1 : F) * rho 75020)

def relationRow3261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75020) * ((1 : F) * rho 75018 + (1 : F) * rho 75019) = ((1 : F) * rho 75021)

def relationLc1052 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75019) * (relationLc1052 rho) = ((1 : F) * rho 75022)

def relationLc1053 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75018) * (relationLc1053 rho) = ((1 : F) * rho 75023)

def relationRow3264 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75022) * ((1 : F) * rho 75023) = ((1 : F) * rho 75024)

def relationRow3265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75025) * ((1 : F) + (1 : F) * rho 75024) = ((1 : F) * rho 75022 + (1 : F) * rho 75023)

def relationRow3266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75026) * ((1 : F) + (-1 : F) * rho 75024) = ((1 : F) * rho 75021 + (-1 : F) * rho 75022 + (-1 : F) * rho 75023)

def relationLc1054 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 76⟩], residual := [((1 : F), 75025)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71987) * (relationLc1054 rho) = ((1 : F) * rho 75027)

def relationLc1055 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 76⟩], residual := [((1 : F), 75026)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71987) * (relationLc1055 rho) = ((1 : F) * rho 75028)

def relationRow3269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75018) * ((1 : F) * rho 75019) = ((1 : F) * rho 75029)

def relationRow3270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75018) * ((1 : F) * rho 75018) = ((1 : F) * rho 75030)

def relationRow3271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75019) * ((1 : F) * rho 75019) = ((1 : F) * rho 75031)

def relationRow3272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75032) * ((-1 : F) * rho 75030 + (1 : F) * rho 75031) = ((2 : F) * rho 75029)

def relationRow3273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75033) * ((2 : F) + (1 : F) * rho 75030 + (-1 : F) * rho 75031) = ((1 : F) * rho 75030 + (1 : F) * rho 75031)

def relationLc1056 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 77⟩, ⟨(1 : F), 73964, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3274 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1056 rho) = ((1 : F) * rho 75034)

def relationRow3275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75034) * ((1 : F) * rho 75032 + (1 : F) * rho 75033) = ((1 : F) * rho 75035)

def relationLc1057 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75033) * (relationLc1057 rho) = ((1 : F) * rho 75036)

def relationLc1058 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75032) * (relationLc1058 rho) = ((1 : F) * rho 75037)

def relationRow3278 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75036) * ((1 : F) * rho 75037) = ((1 : F) * rho 75038)

def relationRow3279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75039) * ((1 : F) + (1 : F) * rho 75038) = ((1 : F) * rho 75036 + (1 : F) * rho 75037)

def relationRow3280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75040) * ((1 : F) + (-1 : F) * rho 75038) = ((1 : F) * rho 75035 + (-1 : F) * rho 75036 + (-1 : F) * rho 75037)

def relationLc1059 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 77⟩], residual := [((1 : F), 75039)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71988) * (relationLc1059 rho) = ((1 : F) * rho 75041)

def relationLc1060 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 77⟩], residual := [((1 : F), 75040)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71988) * (relationLc1060 rho) = ((1 : F) * rho 75042)

def relationRow3283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75032) * ((1 : F) * rho 75033) = ((1 : F) * rho 75043)

def relationRow3284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75032) * ((1 : F) * rho 75032) = ((1 : F) * rho 75044)

def relationRow3285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75033) * ((1 : F) * rho 75033) = ((1 : F) * rho 75045)

def relationRow3286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75046) * ((-1 : F) * rho 75044 + (1 : F) * rho 75045) = ((2 : F) * rho 75043)

def relationRow3287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75047) * ((2 : F) + (1 : F) * rho 75044 + (-1 : F) * rho 75045) = ((1 : F) * rho 75044 + (1 : F) * rho 75045)

def relationLc1061 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 78⟩, ⟨(1 : F), 73964, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3288 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1061 rho) = ((1 : F) * rho 75048)

def relationRow3289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75048) * ((1 : F) * rho 75046 + (1 : F) * rho 75047) = ((1 : F) * rho 75049)

def relationLc1062 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75047) * (relationLc1062 rho) = ((1 : F) * rho 75050)

def relationLc1063 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75046) * (relationLc1063 rho) = ((1 : F) * rho 75051)

def relationRow3292 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75050) * ((1 : F) * rho 75051) = ((1 : F) * rho 75052)

def relationRow3293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75053) * ((1 : F) + (1 : F) * rho 75052) = ((1 : F) * rho 75050 + (1 : F) * rho 75051)

def relationRow3294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75054) * ((1 : F) + (-1 : F) * rho 75052) = ((1 : F) * rho 75049 + (-1 : F) * rho 75050 + (-1 : F) * rho 75051)

def relationLc1064 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 78⟩], residual := [((1 : F), 75053)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71989) * (relationLc1064 rho) = ((1 : F) * rho 75055)

def relationLc1065 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 78⟩], residual := [((1 : F), 75054)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71989) * (relationLc1065 rho) = ((1 : F) * rho 75056)

def relationRow3297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75046) * ((1 : F) * rho 75047) = ((1 : F) * rho 75057)

def relationRow3298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75046) * ((1 : F) * rho 75046) = ((1 : F) * rho 75058)

def relationRow3299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75047) * ((1 : F) * rho 75047) = ((1 : F) * rho 75059)

def relationRow3300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75060) * ((-1 : F) * rho 75058 + (1 : F) * rho 75059) = ((2 : F) * rho 75057)

def relationRow3301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75061) * ((2 : F) + (1 : F) * rho 75058 + (-1 : F) * rho 75059) = ((1 : F) * rho 75058 + (1 : F) * rho 75059)

def relationLc1066 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 79⟩, ⟨(1 : F), 73964, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3302 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1066 rho) = ((1 : F) * rho 75062)

def relationRow3303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75062) * ((1 : F) * rho 75060 + (1 : F) * rho 75061) = ((1 : F) * rho 75063)

def relationLc1067 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75061) * (relationLc1067 rho) = ((1 : F) * rho 75064)

def relationLc1068 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75060) * (relationLc1068 rho) = ((1 : F) * rho 75065)

def relationRow3306 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75064) * ((1 : F) * rho 75065) = ((1 : F) * rho 75066)

def relationRow3307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75067) * ((1 : F) + (1 : F) * rho 75066) = ((1 : F) * rho 75064 + (1 : F) * rho 75065)

def relationRow3308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75068) * ((1 : F) + (-1 : F) * rho 75066) = ((1 : F) * rho 75063 + (-1 : F) * rho 75064 + (-1 : F) * rho 75065)

def relationLc1069 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 79⟩], residual := [((1 : F), 75067)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71990) * (relationLc1069 rho) = ((1 : F) * rho 75069)

def relationLc1070 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 79⟩], residual := [((1 : F), 75068)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71990) * (relationLc1070 rho) = ((1 : F) * rho 75070)

def relationRow3311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75060) * ((1 : F) * rho 75061) = ((1 : F) * rho 75071)

def relationRow3312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75060) * ((1 : F) * rho 75060) = ((1 : F) * rho 75072)

def relationRow3313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75061) * ((1 : F) * rho 75061) = ((1 : F) * rho 75073)

def relationRow3314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75074) * ((-1 : F) * rho 75072 + (1 : F) * rho 75073) = ((2 : F) * rho 75071)

def relationRow3315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75075) * ((2 : F) + (1 : F) * rho 75072 + (-1 : F) * rho 75073) = ((1 : F) * rho 75072 + (1 : F) * rho 75073)

def relationLc1071 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 80⟩, ⟨(1 : F), 73964, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3316 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1071 rho) = ((1 : F) * rho 75076)

def relationRow3317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75076) * ((1 : F) * rho 75074 + (1 : F) * rho 75075) = ((1 : F) * rho 75077)

def relationLc1072 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75075) * (relationLc1072 rho) = ((1 : F) * rho 75078)

def relationLc1073 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75074) * (relationLc1073 rho) = ((1 : F) * rho 75079)

def relationRow3320 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75078) * ((1 : F) * rho 75079) = ((1 : F) * rho 75080)

def relationRow3321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75081) * ((1 : F) + (1 : F) * rho 75080) = ((1 : F) * rho 75078 + (1 : F) * rho 75079)

def relationRow3322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75082) * ((1 : F) + (-1 : F) * rho 75080) = ((1 : F) * rho 75077 + (-1 : F) * rho 75078 + (-1 : F) * rho 75079)

def relationLc1074 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 80⟩], residual := [((1 : F), 75081)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71991) * (relationLc1074 rho) = ((1 : F) * rho 75083)

def relationLc1075 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 80⟩], residual := [((1 : F), 75082)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71991) * (relationLc1075 rho) = ((1 : F) * rho 75084)

def relationRow3325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75074) * ((1 : F) * rho 75075) = ((1 : F) * rho 75085)

def relationRow3326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75074) * ((1 : F) * rho 75074) = ((1 : F) * rho 75086)

def relationRow3327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75075) * ((1 : F) * rho 75075) = ((1 : F) * rho 75087)

def relationRow3328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75088) * ((-1 : F) * rho 75086 + (1 : F) * rho 75087) = ((2 : F) * rho 75085)

def relationRow3329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75089) * ((2 : F) + (1 : F) * rho 75086 + (-1 : F) * rho 75087) = ((1 : F) * rho 75086 + (1 : F) * rho 75087)

def relationLc1076 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 81⟩, ⟨(1 : F), 73964, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3330 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1076 rho) = ((1 : F) * rho 75090)

def relationRow3331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75090) * ((1 : F) * rho 75088 + (1 : F) * rho 75089) = ((1 : F) * rho 75091)

def relationLc1077 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75089) * (relationLc1077 rho) = ((1 : F) * rho 75092)

def relationLc1078 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75088) * (relationLc1078 rho) = ((1 : F) * rho 75093)

def relationRow3334 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75092) * ((1 : F) * rho 75093) = ((1 : F) * rho 75094)

def relationRow3335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75095) * ((1 : F) + (1 : F) * rho 75094) = ((1 : F) * rho 75092 + (1 : F) * rho 75093)

def relationRow3336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75096) * ((1 : F) + (-1 : F) * rho 75094) = ((1 : F) * rho 75091 + (-1 : F) * rho 75092 + (-1 : F) * rho 75093)

def relationLc1079 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 81⟩], residual := [((1 : F), 75095)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71992) * (relationLc1079 rho) = ((1 : F) * rho 75097)

def relationLc1080 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 81⟩], residual := [((1 : F), 75096)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71992) * (relationLc1080 rho) = ((1 : F) * rho 75098)

def relationRow3339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75088) * ((1 : F) * rho 75089) = ((1 : F) * rho 75099)

def relationRow3340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75088) * ((1 : F) * rho 75088) = ((1 : F) * rho 75100)

def relationRow3341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75089) * ((1 : F) * rho 75089) = ((1 : F) * rho 75101)

def relationRow3342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75102) * ((-1 : F) * rho 75100 + (1 : F) * rho 75101) = ((2 : F) * rho 75099)

def relationRow3343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75103) * ((2 : F) + (1 : F) * rho 75100 + (-1 : F) * rho 75101) = ((1 : F) * rho 75100 + (1 : F) * rho 75101)

def relationLc1081 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 82⟩, ⟨(1 : F), 73964, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3344 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1081 rho) = ((1 : F) * rho 75104)

def relationRow3345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75104) * ((1 : F) * rho 75102 + (1 : F) * rho 75103) = ((1 : F) * rho 75105)

def relationLc1082 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75103) * (relationLc1082 rho) = ((1 : F) * rho 75106)

def relationLc1083 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75102) * (relationLc1083 rho) = ((1 : F) * rho 75107)

def relationRow3348 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75106) * ((1 : F) * rho 75107) = ((1 : F) * rho 75108)

def relationRow3349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75109) * ((1 : F) + (1 : F) * rho 75108) = ((1 : F) * rho 75106 + (1 : F) * rho 75107)

def relationRow3350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75110) * ((1 : F) + (-1 : F) * rho 75108) = ((1 : F) * rho 75105 + (-1 : F) * rho 75106 + (-1 : F) * rho 75107)

def relationLc1084 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 82⟩], residual := [((1 : F), 75109)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71993) * (relationLc1084 rho) = ((1 : F) * rho 75111)

def relationLc1085 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 82⟩], residual := [((1 : F), 75110)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71993) * (relationLc1085 rho) = ((1 : F) * rho 75112)

def relationRow3353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75102) * ((1 : F) * rho 75103) = ((1 : F) * rho 75113)

def relationRow3354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75102) * ((1 : F) * rho 75102) = ((1 : F) * rho 75114)

def relationRow3355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75103) * ((1 : F) * rho 75103) = ((1 : F) * rho 75115)

def relationRow3356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75116) * ((-1 : F) * rho 75114 + (1 : F) * rho 75115) = ((2 : F) * rho 75113)

def relationRow3357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75117) * ((2 : F) + (1 : F) * rho 75114 + (-1 : F) * rho 75115) = ((1 : F) * rho 75114 + (1 : F) * rho 75115)

def relationLc1086 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 83⟩, ⟨(1 : F), 73964, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3358 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1086 rho) = ((1 : F) * rho 75118)

def relationRow3359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75118) * ((1 : F) * rho 75116 + (1 : F) * rho 75117) = ((1 : F) * rho 75119)

def relationLc1087 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75117) * (relationLc1087 rho) = ((1 : F) * rho 75120)

def relationLc1088 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75116) * (relationLc1088 rho) = ((1 : F) * rho 75121)

def relationRow3362 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75120) * ((1 : F) * rho 75121) = ((1 : F) * rho 75122)

def relationRow3363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75123) * ((1 : F) + (1 : F) * rho 75122) = ((1 : F) * rho 75120 + (1 : F) * rho 75121)

def relationRow3364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75124) * ((1 : F) + (-1 : F) * rho 75122) = ((1 : F) * rho 75119 + (-1 : F) * rho 75120 + (-1 : F) * rho 75121)

def relationLc1089 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 83⟩], residual := [((1 : F), 75123)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71994) * (relationLc1089 rho) = ((1 : F) * rho 75125)

def relationLc1090 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 83⟩], residual := [((1 : F), 75124)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71994) * (relationLc1090 rho) = ((1 : F) * rho 75126)

def relationRow3367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75116) * ((1 : F) * rho 75117) = ((1 : F) * rho 75127)

def relationRow3368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75116) * ((1 : F) * rho 75116) = ((1 : F) * rho 75128)

def relationRow3369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75117) * ((1 : F) * rho 75117) = ((1 : F) * rho 75129)

def relationRow3370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75130) * ((-1 : F) * rho 75128 + (1 : F) * rho 75129) = ((2 : F) * rho 75127)

def relationRow3371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75131) * ((2 : F) + (1 : F) * rho 75128 + (-1 : F) * rho 75129) = ((1 : F) * rho 75128 + (1 : F) * rho 75129)

def relationLc1091 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 84⟩, ⟨(1 : F), 73964, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3372 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1091 rho) = ((1 : F) * rho 75132)

def relationRow3373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75132) * ((1 : F) * rho 75130 + (1 : F) * rho 75131) = ((1 : F) * rho 75133)

def relationLc1092 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75131) * (relationLc1092 rho) = ((1 : F) * rho 75134)

def relationLc1093 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75130) * (relationLc1093 rho) = ((1 : F) * rho 75135)

def relationRow3376 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75134) * ((1 : F) * rho 75135) = ((1 : F) * rho 75136)

def relationRow3377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75137) * ((1 : F) + (1 : F) * rho 75136) = ((1 : F) * rho 75134 + (1 : F) * rho 75135)

def relationRow3378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75138) * ((1 : F) + (-1 : F) * rho 75136) = ((1 : F) * rho 75133 + (-1 : F) * rho 75134 + (-1 : F) * rho 75135)

def relationLc1094 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 84⟩], residual := [((1 : F), 75137)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71995) * (relationLc1094 rho) = ((1 : F) * rho 75139)

def relationLc1095 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 84⟩], residual := [((1 : F), 75138)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71995) * (relationLc1095 rho) = ((1 : F) * rho 75140)

def relationRow3381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75130) * ((1 : F) * rho 75131) = ((1 : F) * rho 75141)

def relationRow3382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75130) * ((1 : F) * rho 75130) = ((1 : F) * rho 75142)

def relationRow3383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75131) * ((1 : F) * rho 75131) = ((1 : F) * rho 75143)

def relationRow3384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75144) * ((-1 : F) * rho 75142 + (1 : F) * rho 75143) = ((2 : F) * rho 75141)

def relationRow3385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75145) * ((2 : F) + (1 : F) * rho 75142 + (-1 : F) * rho 75143) = ((1 : F) * rho 75142 + (1 : F) * rho 75143)

def relationLc1096 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 85⟩, ⟨(1 : F), 73964, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3386 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1096 rho) = ((1 : F) * rho 75146)

def relationRow3387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75146) * ((1 : F) * rho 75144 + (1 : F) * rho 75145) = ((1 : F) * rho 75147)

def relationLc1097 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75145) * (relationLc1097 rho) = ((1 : F) * rho 75148)

def relationLc1098 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75144) * (relationLc1098 rho) = ((1 : F) * rho 75149)

def relationRow3390 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75148) * ((1 : F) * rho 75149) = ((1 : F) * rho 75150)

def relationRow3391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75151) * ((1 : F) + (1 : F) * rho 75150) = ((1 : F) * rho 75148 + (1 : F) * rho 75149)

def relationRow3392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75152) * ((1 : F) + (-1 : F) * rho 75150) = ((1 : F) * rho 75147 + (-1 : F) * rho 75148 + (-1 : F) * rho 75149)

def relationLc1099 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 85⟩], residual := [((1 : F), 75151)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71996) * (relationLc1099 rho) = ((1 : F) * rho 75153)

def relationLc1100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 85⟩], residual := [((1 : F), 75152)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71996) * (relationLc1100 rho) = ((1 : F) * rho 75154)

def relationRow3395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75144) * ((1 : F) * rho 75145) = ((1 : F) * rho 75155)

def relationRow3396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75144) * ((1 : F) * rho 75144) = ((1 : F) * rho 75156)

def relationRow3397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75145) * ((1 : F) * rho 75145) = ((1 : F) * rho 75157)

def relationRow3398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75158) * ((-1 : F) * rho 75156 + (1 : F) * rho 75157) = ((2 : F) * rho 75155)

def relationRow3399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75159) * ((2 : F) + (1 : F) * rho 75156 + (-1 : F) * rho 75157) = ((1 : F) * rho 75156 + (1 : F) * rho 75157)

def relationLc1101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 86⟩, ⟨(1 : F), 73964, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3400 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1101 rho) = ((1 : F) * rho 75160)

def relationRow3401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75160) * ((1 : F) * rho 75158 + (1 : F) * rho 75159) = ((1 : F) * rho 75161)

def relationLc1102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75159) * (relationLc1102 rho) = ((1 : F) * rho 75162)

def relationLc1103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75158) * (relationLc1103 rho) = ((1 : F) * rho 75163)

def relationRow3404 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75162) * ((1 : F) * rho 75163) = ((1 : F) * rho 75164)

def relationRow3405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75165) * ((1 : F) + (1 : F) * rho 75164) = ((1 : F) * rho 75162 + (1 : F) * rho 75163)

def relationRow3406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75166) * ((1 : F) + (-1 : F) * rho 75164) = ((1 : F) * rho 75161 + (-1 : F) * rho 75162 + (-1 : F) * rho 75163)

def relationLc1104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 86⟩], residual := [((1 : F), 75165)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71997) * (relationLc1104 rho) = ((1 : F) * rho 75167)

def relationLc1105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 86⟩], residual := [((1 : F), 75166)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71997) * (relationLc1105 rho) = ((1 : F) * rho 75168)

def relationRow3409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75158) * ((1 : F) * rho 75159) = ((1 : F) * rho 75169)

def relationRow3410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75158) * ((1 : F) * rho 75158) = ((1 : F) * rho 75170)

def relationRow3411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75159) * ((1 : F) * rho 75159) = ((1 : F) * rho 75171)

def relationRow3412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75172) * ((-1 : F) * rho 75170 + (1 : F) * rho 75171) = ((2 : F) * rho 75169)

def relationRow3413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75173) * ((2 : F) + (1 : F) * rho 75170 + (-1 : F) * rho 75171) = ((1 : F) * rho 75170 + (1 : F) * rho 75171)

def relationLc1106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 87⟩, ⟨(1 : F), 73964, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3414 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1106 rho) = ((1 : F) * rho 75174)

def relationRow3415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75174) * ((1 : F) * rho 75172 + (1 : F) * rho 75173) = ((1 : F) * rho 75175)

def relationLc1107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75173) * (relationLc1107 rho) = ((1 : F) * rho 75176)

def relationLc1108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75172) * (relationLc1108 rho) = ((1 : F) * rho 75177)

def relationRow3418 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75176) * ((1 : F) * rho 75177) = ((1 : F) * rho 75178)

def relationRow3419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75179) * ((1 : F) + (1 : F) * rho 75178) = ((1 : F) * rho 75176 + (1 : F) * rho 75177)

def relationRow3420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75180) * ((1 : F) + (-1 : F) * rho 75178) = ((1 : F) * rho 75175 + (-1 : F) * rho 75176 + (-1 : F) * rho 75177)

def relationLc1109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 87⟩], residual := [((1 : F), 75179)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71998) * (relationLc1109 rho) = ((1 : F) * rho 75181)

def relationLc1110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 87⟩], residual := [((1 : F), 75180)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71998) * (relationLc1110 rho) = ((1 : F) * rho 75182)

def relationRow3423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75172) * ((1 : F) * rho 75173) = ((1 : F) * rho 75183)

def relationRow3424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75172) * ((1 : F) * rho 75172) = ((1 : F) * rho 75184)

def relationRow3425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75173) * ((1 : F) * rho 75173) = ((1 : F) * rho 75185)

def relationRow3426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75186) * ((-1 : F) * rho 75184 + (1 : F) * rho 75185) = ((2 : F) * rho 75183)

def relationRow3427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75187) * ((2 : F) + (1 : F) * rho 75184 + (-1 : F) * rho 75185) = ((1 : F) * rho 75184 + (1 : F) * rho 75185)

def relationLc1111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 88⟩, ⟨(1 : F), 73964, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3428 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1111 rho) = ((1 : F) * rho 75188)

def relationRow3429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75188) * ((1 : F) * rho 75186 + (1 : F) * rho 75187) = ((1 : F) * rho 75189)

def relationLc1112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75187) * (relationLc1112 rho) = ((1 : F) * rho 75190)

def relationLc1113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75186) * (relationLc1113 rho) = ((1 : F) * rho 75191)

def relationRow3432 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75190) * ((1 : F) * rho 75191) = ((1 : F) * rho 75192)

def relationRow3433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75193) * ((1 : F) + (1 : F) * rho 75192) = ((1 : F) * rho 75190 + (1 : F) * rho 75191)

def relationRow3434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75194) * ((1 : F) + (-1 : F) * rho 75192) = ((1 : F) * rho 75189 + (-1 : F) * rho 75190 + (-1 : F) * rho 75191)

def relationLc1114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 88⟩], residual := [((1 : F), 75193)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71999) * (relationLc1114 rho) = ((1 : F) * rho 75195)

def relationLc1115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 88⟩], residual := [((1 : F), 75194)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 71999) * (relationLc1115 rho) = ((1 : F) * rho 75196)

def relationRow3437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75186) * ((1 : F) * rho 75187) = ((1 : F) * rho 75197)

def relationRow3438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75186) * ((1 : F) * rho 75186) = ((1 : F) * rho 75198)

def relationRow3439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75187) * ((1 : F) * rho 75187) = ((1 : F) * rho 75199)

def relationRow3440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75200) * ((-1 : F) * rho 75198 + (1 : F) * rho 75199) = ((2 : F) * rho 75197)

def relationRow3441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75201) * ((2 : F) + (1 : F) * rho 75198 + (-1 : F) * rho 75199) = ((1 : F) * rho 75198 + (1 : F) * rho 75199)

def relationLc1116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 89⟩, ⟨(1 : F), 73964, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3442 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1116 rho) = ((1 : F) * rho 75202)

def relationRow3443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75202) * ((1 : F) * rho 75200 + (1 : F) * rho 75201) = ((1 : F) * rho 75203)

def relationLc1117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75201) * (relationLc1117 rho) = ((1 : F) * rho 75204)

def relationLc1118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75200) * (relationLc1118 rho) = ((1 : F) * rho 75205)

def relationRow3446 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75204) * ((1 : F) * rho 75205) = ((1 : F) * rho 75206)

def relationRow3447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75207) * ((1 : F) + (1 : F) * rho 75206) = ((1 : F) * rho 75204 + (1 : F) * rho 75205)

def relationRow3448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75208) * ((1 : F) + (-1 : F) * rho 75206) = ((1 : F) * rho 75203 + (-1 : F) * rho 75204 + (-1 : F) * rho 75205)

def relationLc1119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 89⟩], residual := [((1 : F), 75207)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72000) * (relationLc1119 rho) = ((1 : F) * rho 75209)

def relationLc1120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 89⟩], residual := [((1 : F), 75208)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72000) * (relationLc1120 rho) = ((1 : F) * rho 75210)

def relationRow3451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75200) * ((1 : F) * rho 75201) = ((1 : F) * rho 75211)

def relationRow3452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75200) * ((1 : F) * rho 75200) = ((1 : F) * rho 75212)

def relationRow3453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75201) * ((1 : F) * rho 75201) = ((1 : F) * rho 75213)

def relationRow3454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75214) * ((-1 : F) * rho 75212 + (1 : F) * rho 75213) = ((2 : F) * rho 75211)

def relationRow3455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75215) * ((2 : F) + (1 : F) * rho 75212 + (-1 : F) * rho 75213) = ((1 : F) * rho 75212 + (1 : F) * rho 75213)

def relationLc1121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 90⟩, ⟨(1 : F), 73964, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3456 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1121 rho) = ((1 : F) * rho 75216)

def relationRow3457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75216) * ((1 : F) * rho 75214 + (1 : F) * rho 75215) = ((1 : F) * rho 75217)

def relationLc1122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75215) * (relationLc1122 rho) = ((1 : F) * rho 75218)

def relationLc1123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75214) * (relationLc1123 rho) = ((1 : F) * rho 75219)

def relationRow3460 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75218) * ((1 : F) * rho 75219) = ((1 : F) * rho 75220)

def relationRow3461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75221) * ((1 : F) + (1 : F) * rho 75220) = ((1 : F) * rho 75218 + (1 : F) * rho 75219)

def relationRow3462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75222) * ((1 : F) + (-1 : F) * rho 75220) = ((1 : F) * rho 75217 + (-1 : F) * rho 75218 + (-1 : F) * rho 75219)

def relationLc1124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 90⟩], residual := [((1 : F), 75221)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72001) * (relationLc1124 rho) = ((1 : F) * rho 75223)

def relationLc1125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 90⟩], residual := [((1 : F), 75222)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72001) * (relationLc1125 rho) = ((1 : F) * rho 75224)

def relationRow3465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75214) * ((1 : F) * rho 75215) = ((1 : F) * rho 75225)

def relationRow3466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75214) * ((1 : F) * rho 75214) = ((1 : F) * rho 75226)

def relationRow3467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75215) * ((1 : F) * rho 75215) = ((1 : F) * rho 75227)

def relationRow3468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75228) * ((-1 : F) * rho 75226 + (1 : F) * rho 75227) = ((2 : F) * rho 75225)

def relationRow3469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75229) * ((2 : F) + (1 : F) * rho 75226 + (-1 : F) * rho 75227) = ((1 : F) * rho 75226 + (1 : F) * rho 75227)

def relationLc1126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 91⟩, ⟨(1 : F), 73964, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3470 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1126 rho) = ((1 : F) * rho 75230)

def relationRow3471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75230) * ((1 : F) * rho 75228 + (1 : F) * rho 75229) = ((1 : F) * rho 75231)

def relationLc1127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75229) * (relationLc1127 rho) = ((1 : F) * rho 75232)

def relationLc1128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75228) * (relationLc1128 rho) = ((1 : F) * rho 75233)

def relationRow3474 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75232) * ((1 : F) * rho 75233) = ((1 : F) * rho 75234)

def relationRow3475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75235) * ((1 : F) + (1 : F) * rho 75234) = ((1 : F) * rho 75232 + (1 : F) * rho 75233)

def relationRow3476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75236) * ((1 : F) + (-1 : F) * rho 75234) = ((1 : F) * rho 75231 + (-1 : F) * rho 75232 + (-1 : F) * rho 75233)

def relationLc1129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 91⟩], residual := [((1 : F), 75235)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72002) * (relationLc1129 rho) = ((1 : F) * rho 75237)

def relationLc1130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 91⟩], residual := [((1 : F), 75236)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72002) * (relationLc1130 rho) = ((1 : F) * rho 75238)

def relationRow3479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75228) * ((1 : F) * rho 75229) = ((1 : F) * rho 75239)

def relationRow3480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75228) * ((1 : F) * rho 75228) = ((1 : F) * rho 75240)

def relationRow3481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75229) * ((1 : F) * rho 75229) = ((1 : F) * rho 75241)

def relationRow3482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75242) * ((-1 : F) * rho 75240 + (1 : F) * rho 75241) = ((2 : F) * rho 75239)

def relationRow3483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75243) * ((2 : F) + (1 : F) * rho 75240 + (-1 : F) * rho 75241) = ((1 : F) * rho 75240 + (1 : F) * rho 75241)

def relationLc1131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 92⟩, ⟨(1 : F), 73964, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3484 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1131 rho) = ((1 : F) * rho 75244)

def relationRow3485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75244) * ((1 : F) * rho 75242 + (1 : F) * rho 75243) = ((1 : F) * rho 75245)

def relationLc1132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75243) * (relationLc1132 rho) = ((1 : F) * rho 75246)

def relationLc1133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75242) * (relationLc1133 rho) = ((1 : F) * rho 75247)

def relationRow3488 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75246) * ((1 : F) * rho 75247) = ((1 : F) * rho 75248)

def relationRow3489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75249) * ((1 : F) + (1 : F) * rho 75248) = ((1 : F) * rho 75246 + (1 : F) * rho 75247)

def relationRow3490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75250) * ((1 : F) + (-1 : F) * rho 75248) = ((1 : F) * rho 75245 + (-1 : F) * rho 75246 + (-1 : F) * rho 75247)

def relationLc1134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 92⟩], residual := [((1 : F), 75249)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72003) * (relationLc1134 rho) = ((1 : F) * rho 75251)

def relationLc1135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 92⟩], residual := [((1 : F), 75250)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72003) * (relationLc1135 rho) = ((1 : F) * rho 75252)

def relationRow3493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75242) * ((1 : F) * rho 75243) = ((1 : F) * rho 75253)

def relationRow3494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75242) * ((1 : F) * rho 75242) = ((1 : F) * rho 75254)

def relationRow3495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75243) * ((1 : F) * rho 75243) = ((1 : F) * rho 75255)

def relationRow3496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75256) * ((-1 : F) * rho 75254 + (1 : F) * rho 75255) = ((2 : F) * rho 75253)

def relationRow3497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75257) * ((2 : F) + (1 : F) * rho 75254 + (-1 : F) * rho 75255) = ((1 : F) * rho 75254 + (1 : F) * rho 75255)

def relationLc1136 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 93⟩, ⟨(1 : F), 73964, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3498 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1136 rho) = ((1 : F) * rho 75258)

def relationRow3499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75258) * ((1 : F) * rho 75256 + (1 : F) * rho 75257) = ((1 : F) * rho 75259)

def relationLc1137 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75257) * (relationLc1137 rho) = ((1 : F) * rho 75260)

def relationLc1138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75256) * (relationLc1138 rho) = ((1 : F) * rho 75261)

def relationRow3502 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75260) * ((1 : F) * rho 75261) = ((1 : F) * rho 75262)

def relationRow3503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75263) * ((1 : F) + (1 : F) * rho 75262) = ((1 : F) * rho 75260 + (1 : F) * rho 75261)

def relationRow3504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75264) * ((1 : F) + (-1 : F) * rho 75262) = ((1 : F) * rho 75259 + (-1 : F) * rho 75260 + (-1 : F) * rho 75261)

def relationLc1139 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 93⟩], residual := [((1 : F), 75263)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72004) * (relationLc1139 rho) = ((1 : F) * rho 75265)

def relationLc1140 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 93⟩], residual := [((1 : F), 75264)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72004) * (relationLc1140 rho) = ((1 : F) * rho 75266)

def relationRow3507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75256) * ((1 : F) * rho 75257) = ((1 : F) * rho 75267)

def relationRow3508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75256) * ((1 : F) * rho 75256) = ((1 : F) * rho 75268)

def relationRow3509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75257) * ((1 : F) * rho 75257) = ((1 : F) * rho 75269)

def relationRow3510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75270) * ((-1 : F) * rho 75268 + (1 : F) * rho 75269) = ((2 : F) * rho 75267)

def relationRow3511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75271) * ((2 : F) + (1 : F) * rho 75268 + (-1 : F) * rho 75269) = ((1 : F) * rho 75268 + (1 : F) * rho 75269)

def relationLc1141 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 94⟩, ⟨(1 : F), 73964, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3512 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1141 rho) = ((1 : F) * rho 75272)

def relationRow3513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75272) * ((1 : F) * rho 75270 + (1 : F) * rho 75271) = ((1 : F) * rho 75273)

def relationLc1142 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75271) * (relationLc1142 rho) = ((1 : F) * rho 75274)

def relationLc1143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75270) * (relationLc1143 rho) = ((1 : F) * rho 75275)

def relationRow3516 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75274) * ((1 : F) * rho 75275) = ((1 : F) * rho 75276)

def relationRow3517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75277) * ((1 : F) + (1 : F) * rho 75276) = ((1 : F) * rho 75274 + (1 : F) * rho 75275)

def relationRow3518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75278) * ((1 : F) + (-1 : F) * rho 75276) = ((1 : F) * rho 75273 + (-1 : F) * rho 75274 + (-1 : F) * rho 75275)

def relationLc1144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 94⟩], residual := [((1 : F), 75277)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72005) * (relationLc1144 rho) = ((1 : F) * rho 75279)

def relationLc1145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 94⟩], residual := [((1 : F), 75278)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72005) * (relationLc1145 rho) = ((1 : F) * rho 75280)

def relationRow3521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75270) * ((1 : F) * rho 75271) = ((1 : F) * rho 75281)

def relationRow3522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75270) * ((1 : F) * rho 75270) = ((1 : F) * rho 75282)

def relationRow3523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75271) * ((1 : F) * rho 75271) = ((1 : F) * rho 75283)

def relationRow3524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75284) * ((-1 : F) * rho 75282 + (1 : F) * rho 75283) = ((2 : F) * rho 75281)

def relationRow3525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75285) * ((2 : F) + (1 : F) * rho 75282 + (-1 : F) * rho 75283) = ((1 : F) * rho 75282 + (1 : F) * rho 75283)

def relationLc1146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 95⟩, ⟨(1 : F), 73964, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3526 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1146 rho) = ((1 : F) * rho 75286)

def relationRow3527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75286) * ((1 : F) * rho 75284 + (1 : F) * rho 75285) = ((1 : F) * rho 75287)

def relationLc1147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75285) * (relationLc1147 rho) = ((1 : F) * rho 75288)

def relationLc1148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75284) * (relationLc1148 rho) = ((1 : F) * rho 75289)

def relationRow3530 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75288) * ((1 : F) * rho 75289) = ((1 : F) * rho 75290)

def relationRow3531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75291) * ((1 : F) + (1 : F) * rho 75290) = ((1 : F) * rho 75288 + (1 : F) * rho 75289)

def relationRow3532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75292) * ((1 : F) + (-1 : F) * rho 75290) = ((1 : F) * rho 75287 + (-1 : F) * rho 75288 + (-1 : F) * rho 75289)

def relationLc1149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 95⟩], residual := [((1 : F), 75291)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72006) * (relationLc1149 rho) = ((1 : F) * rho 75293)

def relationLc1150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 95⟩], residual := [((1 : F), 75292)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72006) * (relationLc1150 rho) = ((1 : F) * rho 75294)

def relationRow3535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75284) * ((1 : F) * rho 75285) = ((1 : F) * rho 75295)

def relationRow3536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75284) * ((1 : F) * rho 75284) = ((1 : F) * rho 75296)

def relationRow3537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75285) * ((1 : F) * rho 75285) = ((1 : F) * rho 75297)

def relationRow3538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75298) * ((-1 : F) * rho 75296 + (1 : F) * rho 75297) = ((2 : F) * rho 75295)

def relationRow3539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75299) * ((2 : F) + (1 : F) * rho 75296 + (-1 : F) * rho 75297) = ((1 : F) * rho 75296 + (1 : F) * rho 75297)

def relationLc1151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 96⟩, ⟨(1 : F), 73964, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3540 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1151 rho) = ((1 : F) * rho 75300)

def relationRow3541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75300) * ((1 : F) * rho 75298 + (1 : F) * rho 75299) = ((1 : F) * rho 75301)

def relationLc1152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75299) * (relationLc1152 rho) = ((1 : F) * rho 75302)

def relationLc1153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75298) * (relationLc1153 rho) = ((1 : F) * rho 75303)

def relationRow3544 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75302) * ((1 : F) * rho 75303) = ((1 : F) * rho 75304)

def relationRow3545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75305) * ((1 : F) + (1 : F) * rho 75304) = ((1 : F) * rho 75302 + (1 : F) * rho 75303)

def relationRow3546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75306) * ((1 : F) + (-1 : F) * rho 75304) = ((1 : F) * rho 75301 + (-1 : F) * rho 75302 + (-1 : F) * rho 75303)

def relationLc1154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 96⟩], residual := [((1 : F), 75305)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72007) * (relationLc1154 rho) = ((1 : F) * rho 75307)

def relationLc1155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 96⟩], residual := [((1 : F), 75306)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72007) * (relationLc1155 rho) = ((1 : F) * rho 75308)

def relationRow3549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75298) * ((1 : F) * rho 75299) = ((1 : F) * rho 75309)

def relationRow3550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75298) * ((1 : F) * rho 75298) = ((1 : F) * rho 75310)

def relationRow3551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75299) * ((1 : F) * rho 75299) = ((1 : F) * rho 75311)

def relationRow3552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75312) * ((-1 : F) * rho 75310 + (1 : F) * rho 75311) = ((2 : F) * rho 75309)

def relationRow3553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75313) * ((2 : F) + (1 : F) * rho 75310 + (-1 : F) * rho 75311) = ((1 : F) * rho 75310 + (1 : F) * rho 75311)

def relationLc1156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 97⟩, ⟨(1 : F), 73964, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3554 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1156 rho) = ((1 : F) * rho 75314)

def relationRow3555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75314) * ((1 : F) * rho 75312 + (1 : F) * rho 75313) = ((1 : F) * rho 75315)

def relationLc1157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75313) * (relationLc1157 rho) = ((1 : F) * rho 75316)

def relationLc1158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75312) * (relationLc1158 rho) = ((1 : F) * rho 75317)

def relationRow3558 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75316) * ((1 : F) * rho 75317) = ((1 : F) * rho 75318)

def relationRow3559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75319) * ((1 : F) + (1 : F) * rho 75318) = ((1 : F) * rho 75316 + (1 : F) * rho 75317)

def relationRow3560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75320) * ((1 : F) + (-1 : F) * rho 75318) = ((1 : F) * rho 75315 + (-1 : F) * rho 75316 + (-1 : F) * rho 75317)

def relationLc1159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 97⟩], residual := [((1 : F), 75319)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72008) * (relationLc1159 rho) = ((1 : F) * rho 75321)

def relationLc1160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 97⟩], residual := [((1 : F), 75320)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72008) * (relationLc1160 rho) = ((1 : F) * rho 75322)

def relationRow3563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75312) * ((1 : F) * rho 75313) = ((1 : F) * rho 75323)

def relationRow3564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75312) * ((1 : F) * rho 75312) = ((1 : F) * rho 75324)

def relationRow3565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75313) * ((1 : F) * rho 75313) = ((1 : F) * rho 75325)

def relationRow3566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75326) * ((-1 : F) * rho 75324 + (1 : F) * rho 75325) = ((2 : F) * rho 75323)

def relationRow3567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75327) * ((2 : F) + (1 : F) * rho 75324 + (-1 : F) * rho 75325) = ((1 : F) * rho 75324 + (1 : F) * rho 75325)

def relationLc1161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 98⟩, ⟨(1 : F), 73964, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3568 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1161 rho) = ((1 : F) * rho 75328)

def relationRow3569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75328) * ((1 : F) * rho 75326 + (1 : F) * rho 75327) = ((1 : F) * rho 75329)

def relationLc1162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75327) * (relationLc1162 rho) = ((1 : F) * rho 75330)

def relationLc1163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75326) * (relationLc1163 rho) = ((1 : F) * rho 75331)

def relationRow3572 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75330) * ((1 : F) * rho 75331) = ((1 : F) * rho 75332)

def relationRow3573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75333) * ((1 : F) + (1 : F) * rho 75332) = ((1 : F) * rho 75330 + (1 : F) * rho 75331)

def relationRow3574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75334) * ((1 : F) + (-1 : F) * rho 75332) = ((1 : F) * rho 75329 + (-1 : F) * rho 75330 + (-1 : F) * rho 75331)

def relationLc1164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 98⟩], residual := [((1 : F), 75333)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72009) * (relationLc1164 rho) = ((1 : F) * rho 75335)

def relationLc1165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 98⟩], residual := [((1 : F), 75334)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72009) * (relationLc1165 rho) = ((1 : F) * rho 75336)

def relationRow3577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75326) * ((1 : F) * rho 75327) = ((1 : F) * rho 75337)

def relationRow3578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75326) * ((1 : F) * rho 75326) = ((1 : F) * rho 75338)

def relationRow3579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75327) * ((1 : F) * rho 75327) = ((1 : F) * rho 75339)

def relationRow3580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75340) * ((-1 : F) * rho 75338 + (1 : F) * rho 75339) = ((2 : F) * rho 75337)

def relationRow3581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75341) * ((2 : F) + (1 : F) * rho 75338 + (-1 : F) * rho 75339) = ((1 : F) * rho 75338 + (1 : F) * rho 75339)

def relationLc1166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 99⟩, ⟨(1 : F), 73964, 14, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3582 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1166 rho) = ((1 : F) * rho 75342)

def relationRow3583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75342) * ((1 : F) * rho 75340 + (1 : F) * rho 75341) = ((1 : F) * rho 75343)

def relationLc1167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75341) * (relationLc1167 rho) = ((1 : F) * rho 75344)

def relationLc1168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75340) * (relationLc1168 rho) = ((1 : F) * rho 75345)

def relationRow3586 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75344) * ((1 : F) * rho 75345) = ((1 : F) * rho 75346)

def relationRow3587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75347) * ((1 : F) + (1 : F) * rho 75346) = ((1 : F) * rho 75344 + (1 : F) * rho 75345)

def relationRow3588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75348) * ((1 : F) + (-1 : F) * rho 75346) = ((1 : F) * rho 75343 + (-1 : F) * rho 75344 + (-1 : F) * rho 75345)

def relationLc1169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 99⟩], residual := [((1 : F), 75347)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72010) * (relationLc1169 rho) = ((1 : F) * rho 75349)

def relationLc1170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 99⟩], residual := [((1 : F), 75348)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72010) * (relationLc1170 rho) = ((1 : F) * rho 75350)

def relationRow3591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75340) * ((1 : F) * rho 75341) = ((1 : F) * rho 75351)

def relationRow3592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75340) * ((1 : F) * rho 75340) = ((1 : F) * rho 75352)

def relationRow3593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75341) * ((1 : F) * rho 75341) = ((1 : F) * rho 75353)

def relationRow3594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75354) * ((-1 : F) * rho 75352 + (1 : F) * rho 75353) = ((2 : F) * rho 75351)

def relationRow3595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75355) * ((2 : F) + (1 : F) * rho 75352 + (-1 : F) * rho 75353) = ((1 : F) * rho 75352 + (1 : F) * rho 75353)

def relationLc1171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73963, 14, 100⟩, ⟨(1 : F), 73964, 14, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3596 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1171 rho) = ((1 : F) * rho 75356)

def relationRow3597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75356) * ((1 : F) * rho 75354 + (1 : F) * rho 75355) = ((1 : F) * rho 75357)

def relationLc1172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 72012, 13, 150⟩, ⟨(1 : F), 73963, 14, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75355) * (relationLc1172 rho) = ((1 : F) * rho 75358)

def relationLc1173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 72013, 13, 150⟩, ⟨(1 : F), 73964, 14, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75354) * (relationLc1173 rho) = ((1 : F) * rho 75359)

def relationRow3600 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 75358) * ((1 : F) * rho 75359) = ((1 : F) * rho 75360)

def relationRow3601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75361) * ((1 : F) + (1 : F) * rho 75360) = ((1 : F) * rho 75358 + (1 : F) * rho 75359)

def relationRow3602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75362) * ((1 : F) + (-1 : F) * rho 75360) = ((1 : F) * rho 75357 + (-1 : F) * rho 75358 + (-1 : F) * rho 75359)

def relationLc1174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 72012, 13, 150⟩, ⟨(-1 : F), 73963, 14, 100⟩], residual := [((1 : F), 75361)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72011) * (relationLc1174 rho) = ((1 : F) * rho 75363)

def relationLc1175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 72013, 13, 150⟩, ⟨(-1 : F), 73964, 14, 100⟩], residual := [((1 : F), 75362)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 72011) * (relationLc1175 rho) = ((1 : F) * rho 75364)

def relationRow3605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75354) * ((1 : F) * rho 75355) = ((1 : F) * rho 75365)

def relationRow3606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75354) * ((1 : F) * rho 75354) = ((1 : F) * rho 75366)

def relationRow3607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75355) * ((1 : F) * rho 75355) = ((1 : F) * rho 75367)

def relationRow3608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75368) * ((-1 : F) * rho 75366 + (1 : F) * rho 75367) = ((2 : F) * rho 75365)

def relationRow3609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 75369) * ((2 : F) + (1 : F) * rho 75366 + (-1 : F) * rho 75367) = ((1 : F) * rho 75366 + (1 : F) * rho 75367)

def relationPart0 (rho : Nat -> F) : Prop :=
    relationRow0 rho ∧
    relationRow1 rho ∧
    relationRow2 rho ∧
    relationRow3 rho ∧
    relationRow4 rho ∧
    relationRow5 rho ∧
    relationRow6 rho ∧
    relationRow7 rho ∧
    relationRow8 rho ∧
    relationRow9 rho ∧
    relationRow10 rho ∧
    relationRow11 rho ∧
    relationRow12 rho ∧
    relationRow13 rho ∧
    relationRow14 rho ∧
    relationRow15 rho ∧
    relationRow16 rho ∧
    relationRow17 rho ∧
    relationRow18 rho ∧
    relationRow19 rho ∧
    relationRow20 rho ∧
    relationRow21 rho ∧
    relationRow22 rho ∧
    relationRow23 rho ∧
    relationRow24 rho ∧
    relationRow25 rho ∧
    relationRow26 rho ∧
    relationRow27 rho ∧
    relationRow28 rho ∧
    relationRow29 rho ∧
    relationRow30 rho ∧
    relationRow31 rho ∧
    relationRow32 rho ∧
    relationRow33 rho ∧
    relationRow34 rho ∧
    relationRow35 rho ∧
    relationRow36 rho ∧
    relationRow37 rho ∧
    relationRow38 rho ∧
    relationRow39 rho ∧
    relationRow40 rho ∧
    relationRow41 rho ∧
    relationRow42 rho ∧
    relationRow43 rho ∧
    relationRow44 rho ∧
    relationRow45 rho ∧
    relationRow46 rho ∧
    relationRow47 rho ∧
    relationRow48 rho ∧
    relationRow49 rho ∧
    relationRow50 rho ∧
    relationRow51 rho ∧
    relationRow52 rho ∧
    relationRow53 rho ∧
    relationRow54 rho ∧
    relationRow55 rho ∧
    relationRow56 rho ∧
    relationRow57 rho ∧
    relationRow58 rho ∧
    relationRow59 rho ∧
    relationRow60 rho ∧
    relationRow61 rho ∧
    relationRow62 rho ∧
    relationRow63 rho ∧
    relationRow64 rho ∧
    relationRow65 rho ∧
    relationRow66 rho ∧
    relationRow67 rho ∧
    relationRow68 rho ∧
    relationRow69 rho ∧
    relationRow70 rho ∧
    relationRow71 rho ∧
    relationRow72 rho ∧
    relationRow73 rho ∧
    relationRow74 rho ∧
    relationRow75 rho ∧
    relationRow76 rho ∧
    relationRow77 rho ∧
    relationRow78 rho ∧
    relationRow79 rho

def relationPart1 (rho : Nat -> F) : Prop :=
    relationRow80 rho ∧
    relationRow81 rho ∧
    relationRow82 rho ∧
    relationRow83 rho ∧
    relationRow84 rho ∧
    relationRow85 rho ∧
    relationRow86 rho ∧
    relationRow87 rho ∧
    relationRow88 rho ∧
    relationRow89 rho ∧
    relationRow90 rho ∧
    relationRow91 rho ∧
    relationRow92 rho ∧
    relationRow93 rho ∧
    relationRow94 rho ∧
    relationRow95 rho ∧
    relationRow96 rho ∧
    relationRow97 rho ∧
    relationRow98 rho ∧
    relationRow99 rho ∧
    relationRow100 rho ∧
    relationRow101 rho ∧
    relationRow102 rho ∧
    relationRow103 rho ∧
    relationRow104 rho ∧
    relationRow105 rho ∧
    relationRow106 rho ∧
    relationRow107 rho ∧
    relationRow108 rho ∧
    relationRow109 rho ∧
    relationRow110 rho ∧
    relationRow111 rho ∧
    relationRow112 rho ∧
    relationRow113 rho ∧
    relationRow114 rho ∧
    relationRow115 rho ∧
    relationRow116 rho ∧
    relationRow117 rho ∧
    relationRow118 rho ∧
    relationRow119 rho ∧
    relationRow120 rho ∧
    relationRow121 rho ∧
    relationRow122 rho ∧
    relationRow123 rho ∧
    relationRow124 rho ∧
    relationRow125 rho ∧
    relationRow126 rho ∧
    relationRow127 rho ∧
    relationRow128 rho ∧
    relationRow129 rho ∧
    relationRow130 rho ∧
    relationRow131 rho ∧
    relationRow132 rho ∧
    relationRow133 rho ∧
    relationRow134 rho ∧
    relationRow135 rho ∧
    relationRow136 rho ∧
    relationRow137 rho ∧
    relationRow138 rho ∧
    relationRow139 rho ∧
    relationRow140 rho ∧
    relationRow141 rho ∧
    relationRow142 rho ∧
    relationRow143 rho ∧
    relationRow144 rho ∧
    relationRow145 rho ∧
    relationRow146 rho ∧
    relationRow147 rho ∧
    relationRow148 rho ∧
    relationRow149 rho ∧
    relationRow150 rho ∧
    relationRow151 rho ∧
    relationRow152 rho ∧
    relationRow153 rho ∧
    relationRow154 rho ∧
    relationRow155 rho ∧
    relationRow156 rho ∧
    relationRow157 rho ∧
    relationRow158 rho ∧
    relationRow159 rho

def relationPart2 (rho : Nat -> F) : Prop :=
    relationRow160 rho ∧
    relationRow161 rho ∧
    relationRow162 rho ∧
    relationRow163 rho ∧
    relationRow164 rho ∧
    relationRow165 rho ∧
    relationRow166 rho ∧
    relationRow167 rho ∧
    relationRow168 rho ∧
    relationRow169 rho ∧
    relationRow170 rho ∧
    relationRow171 rho ∧
    relationRow172 rho ∧
    relationRow173 rho ∧
    relationRow174 rho ∧
    relationRow175 rho ∧
    relationRow176 rho ∧
    relationRow177 rho ∧
    relationRow178 rho ∧
    relationRow179 rho ∧
    relationRow180 rho ∧
    relationRow181 rho ∧
    relationRow182 rho ∧
    relationRow183 rho ∧
    relationRow184 rho ∧
    relationRow185 rho ∧
    relationRow186 rho ∧
    relationRow187 rho ∧
    relationRow188 rho ∧
    relationRow189 rho ∧
    relationRow190 rho ∧
    relationRow191 rho ∧
    relationRow192 rho ∧
    relationRow193 rho ∧
    relationRow194 rho ∧
    relationRow195 rho ∧
    relationRow196 rho ∧
    relationRow197 rho ∧
    relationRow198 rho ∧
    relationRow199 rho ∧
    relationRow200 rho ∧
    relationRow201 rho ∧
    relationRow202 rho ∧
    relationRow203 rho ∧
    relationRow204 rho ∧
    relationRow205 rho ∧
    relationRow206 rho ∧
    relationRow207 rho ∧
    relationRow208 rho ∧
    relationRow209 rho ∧
    relationRow210 rho ∧
    relationRow211 rho ∧
    relationRow212 rho ∧
    relationRow213 rho ∧
    relationRow214 rho ∧
    relationRow215 rho ∧
    relationRow216 rho ∧
    relationRow217 rho ∧
    relationRow218 rho ∧
    relationRow219 rho ∧
    relationRow220 rho ∧
    relationRow221 rho ∧
    relationRow222 rho ∧
    relationRow223 rho ∧
    relationRow224 rho ∧
    relationRow225 rho ∧
    relationRow226 rho ∧
    relationRow227 rho ∧
    relationRow228 rho ∧
    relationRow229 rho ∧
    relationRow230 rho ∧
    relationRow231 rho ∧
    relationRow232 rho ∧
    relationRow233 rho ∧
    relationRow234 rho ∧
    relationRow235 rho ∧
    relationRow236 rho ∧
    relationRow237 rho ∧
    relationRow238 rho ∧
    relationRow239 rho

def relationPart3 (rho : Nat -> F) : Prop :=
    relationRow240 rho ∧
    relationRow241 rho ∧
    relationRow242 rho ∧
    relationRow243 rho ∧
    relationRow244 rho ∧
    relationRow245 rho ∧
    relationRow246 rho ∧
    relationRow247 rho ∧
    relationRow248 rho ∧
    relationRow249 rho ∧
    relationRow250 rho ∧
    relationRow251 rho ∧
    relationRow252 rho ∧
    relationRow253 rho ∧
    relationRow254 rho ∧
    relationRow255 rho ∧
    relationRow256 rho ∧
    relationRow257 rho ∧
    relationRow258 rho ∧
    relationRow259 rho ∧
    relationRow260 rho ∧
    relationRow261 rho ∧
    relationRow262 rho ∧
    relationRow263 rho ∧
    relationRow264 rho ∧
    relationRow265 rho ∧
    relationRow266 rho ∧
    relationRow267 rho ∧
    relationRow268 rho ∧
    relationRow269 rho ∧
    relationRow270 rho ∧
    relationRow271 rho ∧
    relationRow272 rho ∧
    relationRow273 rho ∧
    relationRow274 rho ∧
    relationRow275 rho ∧
    relationRow276 rho ∧
    relationRow277 rho ∧
    relationRow278 rho ∧
    relationRow279 rho ∧
    relationRow280 rho ∧
    relationRow281 rho ∧
    relationRow282 rho ∧
    relationRow283 rho ∧
    relationRow284 rho ∧
    relationRow285 rho ∧
    relationRow286 rho ∧
    relationRow287 rho ∧
    relationRow288 rho ∧
    relationRow289 rho ∧
    relationRow290 rho ∧
    relationRow291 rho ∧
    relationRow292 rho ∧
    relationRow293 rho ∧
    relationRow294 rho ∧
    relationRow295 rho ∧
    relationRow296 rho ∧
    relationRow297 rho ∧
    relationRow298 rho ∧
    relationRow299 rho ∧
    relationRow300 rho ∧
    relationRow301 rho ∧
    relationRow302 rho ∧
    relationRow303 rho ∧
    relationRow304 rho ∧
    relationRow305 rho ∧
    relationRow306 rho ∧
    relationRow307 rho ∧
    relationRow308 rho ∧
    relationRow309 rho ∧
    relationRow310 rho ∧
    relationRow311 rho ∧
    relationRow312 rho ∧
    relationRow313 rho ∧
    relationRow314 rho ∧
    relationRow315 rho ∧
    relationRow316 rho ∧
    relationRow317 rho ∧
    relationRow318 rho ∧
    relationRow319 rho

def relationPart4 (rho : Nat -> F) : Prop :=
    relationRow320 rho ∧
    relationRow321 rho ∧
    relationRow322 rho ∧
    relationRow323 rho ∧
    relationRow324 rho ∧
    relationRow325 rho ∧
    relationRow326 rho ∧
    relationRow327 rho ∧
    relationRow328 rho ∧
    relationRow329 rho ∧
    relationRow330 rho ∧
    relationRow331 rho ∧
    relationRow332 rho ∧
    relationRow333 rho ∧
    relationRow334 rho ∧
    relationRow335 rho ∧
    relationRow336 rho ∧
    relationRow337 rho ∧
    relationRow338 rho ∧
    relationRow339 rho ∧
    relationRow340 rho ∧
    relationRow341 rho ∧
    relationRow342 rho ∧
    relationRow343 rho ∧
    relationRow344 rho ∧
    relationRow345 rho ∧
    relationRow346 rho ∧
    relationRow347 rho ∧
    relationRow348 rho ∧
    relationRow349 rho ∧
    relationRow350 rho ∧
    relationRow351 rho ∧
    relationRow352 rho ∧
    relationRow353 rho ∧
    relationRow354 rho ∧
    relationRow355 rho ∧
    relationRow356 rho ∧
    relationRow357 rho ∧
    relationRow358 rho ∧
    relationRow359 rho ∧
    relationRow360 rho ∧
    relationRow361 rho ∧
    relationRow362 rho ∧
    relationRow363 rho ∧
    relationRow364 rho ∧
    relationRow365 rho ∧
    relationRow366 rho ∧
    relationRow367 rho ∧
    relationRow368 rho ∧
    relationRow369 rho ∧
    relationRow370 rho ∧
    relationRow371 rho ∧
    relationRow372 rho ∧
    relationRow373 rho ∧
    relationRow374 rho ∧
    relationRow375 rho ∧
    relationRow376 rho ∧
    relationRow377 rho ∧
    relationRow378 rho ∧
    relationRow379 rho ∧
    relationRow380 rho ∧
    relationRow381 rho ∧
    relationRow382 rho ∧
    relationRow383 rho ∧
    relationRow384 rho ∧
    relationRow385 rho ∧
    relationRow386 rho ∧
    relationRow387 rho ∧
    relationRow388 rho ∧
    relationRow389 rho ∧
    relationRow390 rho ∧
    relationRow391 rho ∧
    relationRow392 rho ∧
    relationRow393 rho ∧
    relationRow394 rho ∧
    relationRow395 rho ∧
    relationRow396 rho ∧
    relationRow397 rho ∧
    relationRow398 rho ∧
    relationRow399 rho

def relationPart5 (rho : Nat -> F) : Prop :=
    relationRow400 rho ∧
    relationRow401 rho ∧
    relationRow402 rho ∧
    relationRow403 rho ∧
    relationRow404 rho ∧
    relationRow405 rho ∧
    relationRow406 rho ∧
    relationRow407 rho ∧
    relationRow408 rho ∧
    relationRow409 rho ∧
    relationRow410 rho ∧
    relationRow411 rho ∧
    relationRow412 rho ∧
    relationRow413 rho ∧
    relationRow414 rho ∧
    relationRow415 rho ∧
    relationRow416 rho ∧
    relationRow417 rho ∧
    relationRow418 rho ∧
    relationRow419 rho ∧
    relationRow420 rho ∧
    relationRow421 rho ∧
    relationRow422 rho ∧
    relationRow423 rho ∧
    relationRow424 rho ∧
    relationRow425 rho ∧
    relationRow426 rho ∧
    relationRow427 rho ∧
    relationRow428 rho ∧
    relationRow429 rho ∧
    relationRow430 rho ∧
    relationRow431 rho ∧
    relationRow432 rho ∧
    relationRow433 rho ∧
    relationRow434 rho ∧
    relationRow435 rho ∧
    relationRow436 rho ∧
    relationRow437 rho ∧
    relationRow438 rho ∧
    relationRow439 rho ∧
    relationRow440 rho ∧
    relationRow441 rho ∧
    relationRow442 rho ∧
    relationRow443 rho ∧
    relationRow444 rho ∧
    relationRow445 rho ∧
    relationRow446 rho ∧
    relationRow447 rho ∧
    relationRow448 rho ∧
    relationRow449 rho ∧
    relationRow450 rho ∧
    relationRow451 rho ∧
    relationRow452 rho ∧
    relationRow453 rho ∧
    relationRow454 rho ∧
    relationRow455 rho ∧
    relationRow456 rho ∧
    relationRow457 rho ∧
    relationRow458 rho ∧
    relationRow459 rho ∧
    relationRow460 rho ∧
    relationRow461 rho ∧
    relationRow462 rho ∧
    relationRow463 rho ∧
    relationRow464 rho ∧
    relationRow465 rho ∧
    relationRow466 rho ∧
    relationRow467 rho ∧
    relationRow468 rho ∧
    relationRow469 rho ∧
    relationRow470 rho ∧
    relationRow471 rho ∧
    relationRow472 rho ∧
    relationRow473 rho ∧
    relationRow474 rho ∧
    relationRow475 rho ∧
    relationRow476 rho ∧
    relationRow477 rho ∧
    relationRow478 rho ∧
    relationRow479 rho

def relationPart6 (rho : Nat -> F) : Prop :=
    relationRow480 rho ∧
    relationRow481 rho ∧
    relationRow482 rho ∧
    relationRow483 rho ∧
    relationRow484 rho ∧
    relationRow485 rho ∧
    relationRow486 rho ∧
    relationRow487 rho ∧
    relationRow488 rho ∧
    relationRow489 rho ∧
    relationRow490 rho ∧
    relationRow491 rho ∧
    relationRow492 rho ∧
    relationRow493 rho ∧
    relationRow494 rho ∧
    relationRow495 rho ∧
    relationRow496 rho ∧
    relationRow497 rho ∧
    relationRow498 rho ∧
    relationRow499 rho ∧
    relationRow500 rho ∧
    relationRow501 rho ∧
    relationRow502 rho ∧
    relationRow503 rho ∧
    relationRow504 rho ∧
    relationRow505 rho ∧
    relationRow506 rho ∧
    relationRow507 rho ∧
    relationRow508 rho ∧
    relationRow509 rho ∧
    relationRow510 rho ∧
    relationRow511 rho ∧
    relationRow512 rho ∧
    relationRow513 rho ∧
    relationRow514 rho ∧
    relationRow515 rho ∧
    relationRow516 rho ∧
    relationRow517 rho ∧
    relationRow518 rho ∧
    relationRow519 rho ∧
    relationRow520 rho ∧
    relationRow521 rho ∧
    relationRow522 rho ∧
    relationRow523 rho ∧
    relationRow524 rho ∧
    relationRow525 rho ∧
    relationRow526 rho ∧
    relationRow527 rho ∧
    relationRow528 rho ∧
    relationRow529 rho ∧
    relationRow530 rho ∧
    relationRow531 rho ∧
    relationRow532 rho ∧
    relationRow533 rho ∧
    relationRow534 rho ∧
    relationRow535 rho ∧
    relationRow536 rho ∧
    relationRow537 rho ∧
    relationRow538 rho ∧
    relationRow539 rho ∧
    relationRow540 rho ∧
    relationRow541 rho ∧
    relationRow542 rho ∧
    relationRow543 rho ∧
    relationRow544 rho ∧
    relationRow545 rho ∧
    relationRow546 rho ∧
    relationRow547 rho ∧
    relationRow548 rho ∧
    relationRow549 rho ∧
    relationRow550 rho ∧
    relationRow551 rho ∧
    relationRow552 rho ∧
    relationRow553 rho ∧
    relationRow554 rho ∧
    relationRow555 rho ∧
    relationRow556 rho ∧
    relationRow557 rho ∧
    relationRow558 rho ∧
    relationRow559 rho

def relationPart7 (rho : Nat -> F) : Prop :=
    relationRow560 rho ∧
    relationRow561 rho ∧
    relationRow562 rho ∧
    relationRow563 rho ∧
    relationRow564 rho ∧
    relationRow565 rho ∧
    relationRow566 rho ∧
    relationRow567 rho ∧
    relationRow568 rho ∧
    relationRow569 rho ∧
    relationRow570 rho ∧
    relationRow571 rho ∧
    relationRow572 rho ∧
    relationRow573 rho ∧
    relationRow574 rho ∧
    relationRow575 rho ∧
    relationRow576 rho ∧
    relationRow577 rho ∧
    relationRow578 rho ∧
    relationRow579 rho ∧
    relationRow580 rho ∧
    relationRow581 rho ∧
    relationRow582 rho ∧
    relationRow583 rho ∧
    relationRow584 rho ∧
    relationRow585 rho ∧
    relationRow586 rho ∧
    relationRow587 rho ∧
    relationRow588 rho ∧
    relationRow589 rho ∧
    relationRow590 rho ∧
    relationRow591 rho ∧
    relationRow592 rho ∧
    relationRow593 rho ∧
    relationRow594 rho ∧
    relationRow595 rho ∧
    relationRow596 rho ∧
    relationRow597 rho ∧
    relationRow598 rho ∧
    relationRow599 rho ∧
    relationRow600 rho ∧
    relationRow601 rho ∧
    relationRow602 rho ∧
    relationRow603 rho ∧
    relationRow604 rho ∧
    relationRow605 rho ∧
    relationRow606 rho ∧
    relationRow607 rho ∧
    relationRow608 rho ∧
    relationRow609 rho ∧
    relationRow610 rho ∧
    relationRow611 rho ∧
    relationRow612 rho ∧
    relationRow613 rho ∧
    relationRow614 rho ∧
    relationRow615 rho ∧
    relationRow616 rho ∧
    relationRow617 rho ∧
    relationRow618 rho ∧
    relationRow619 rho ∧
    relationRow620 rho ∧
    relationRow621 rho ∧
    relationRow622 rho ∧
    relationRow623 rho ∧
    relationRow624 rho ∧
    relationRow625 rho ∧
    relationRow626 rho ∧
    relationRow627 rho ∧
    relationRow628 rho ∧
    relationRow629 rho ∧
    relationRow630 rho ∧
    relationRow631 rho ∧
    relationRow632 rho ∧
    relationRow633 rho ∧
    relationRow634 rho ∧
    relationRow635 rho ∧
    relationRow636 rho ∧
    relationRow637 rho ∧
    relationRow638 rho ∧
    relationRow639 rho

def relationPart8 (rho : Nat -> F) : Prop :=
    relationRow640 rho ∧
    relationRow641 rho ∧
    relationRow642 rho ∧
    relationRow643 rho ∧
    relationRow644 rho ∧
    relationRow645 rho ∧
    relationRow646 rho ∧
    relationRow647 rho ∧
    relationRow648 rho ∧
    relationRow649 rho ∧
    relationRow650 rho ∧
    relationRow651 rho ∧
    relationRow652 rho ∧
    relationRow653 rho ∧
    relationRow654 rho ∧
    relationRow655 rho ∧
    relationRow656 rho ∧
    relationRow657 rho ∧
    relationRow658 rho ∧
    relationRow659 rho ∧
    relationRow660 rho ∧
    relationRow661 rho ∧
    relationRow662 rho ∧
    relationRow663 rho ∧
    relationRow664 rho ∧
    relationRow665 rho ∧
    relationRow666 rho ∧
    relationRow667 rho ∧
    relationRow668 rho ∧
    relationRow669 rho ∧
    relationRow670 rho ∧
    relationRow671 rho ∧
    relationRow672 rho ∧
    relationRow673 rho ∧
    relationRow674 rho ∧
    relationRow675 rho ∧
    relationRow676 rho ∧
    relationRow677 rho ∧
    relationRow678 rho ∧
    relationRow679 rho ∧
    relationRow680 rho ∧
    relationRow681 rho ∧
    relationRow682 rho ∧
    relationRow683 rho ∧
    relationRow684 rho ∧
    relationRow685 rho ∧
    relationRow686 rho ∧
    relationRow687 rho ∧
    relationRow688 rho ∧
    relationRow689 rho ∧
    relationRow690 rho ∧
    relationRow691 rho ∧
    relationRow692 rho ∧
    relationRow693 rho ∧
    relationRow694 rho ∧
    relationRow695 rho ∧
    relationRow696 rho ∧
    relationRow697 rho ∧
    relationRow698 rho ∧
    relationRow699 rho ∧
    relationRow700 rho ∧
    relationRow701 rho ∧
    relationRow702 rho ∧
    relationRow703 rho ∧
    relationRow704 rho ∧
    relationRow705 rho ∧
    relationRow706 rho ∧
    relationRow707 rho ∧
    relationRow708 rho ∧
    relationRow709 rho ∧
    relationRow710 rho ∧
    relationRow711 rho ∧
    relationRow712 rho ∧
    relationRow713 rho ∧
    relationRow714 rho ∧
    relationRow715 rho ∧
    relationRow716 rho ∧
    relationRow717 rho ∧
    relationRow718 rho ∧
    relationRow719 rho

def relationPart9 (rho : Nat -> F) : Prop :=
    relationRow720 rho ∧
    relationRow721 rho ∧
    relationRow722 rho ∧
    relationRow723 rho ∧
    relationRow724 rho ∧
    relationRow725 rho ∧
    relationRow726 rho ∧
    relationRow727 rho ∧
    relationRow728 rho ∧
    relationRow729 rho ∧
    relationRow730 rho ∧
    relationRow731 rho ∧
    relationRow732 rho ∧
    relationRow733 rho ∧
    relationRow734 rho ∧
    relationRow735 rho ∧
    relationRow736 rho ∧
    relationRow737 rho ∧
    relationRow738 rho ∧
    relationRow739 rho ∧
    relationRow740 rho ∧
    relationRow741 rho ∧
    relationRow742 rho ∧
    relationRow743 rho ∧
    relationRow744 rho ∧
    relationRow745 rho ∧
    relationRow746 rho ∧
    relationRow747 rho ∧
    relationRow748 rho ∧
    relationRow749 rho ∧
    relationRow750 rho ∧
    relationRow751 rho ∧
    relationRow752 rho ∧
    relationRow753 rho ∧
    relationRow754 rho ∧
    relationRow755 rho ∧
    relationRow756 rho ∧
    relationRow757 rho ∧
    relationRow758 rho ∧
    relationRow759 rho ∧
    relationRow760 rho ∧
    relationRow761 rho ∧
    relationRow762 rho ∧
    relationRow763 rho ∧
    relationRow764 rho ∧
    relationRow765 rho ∧
    relationRow766 rho ∧
    relationRow767 rho ∧
    relationRow768 rho ∧
    relationRow769 rho ∧
    relationRow770 rho ∧
    relationRow771 rho ∧
    relationRow772 rho ∧
    relationRow773 rho ∧
    relationRow774 rho ∧
    relationRow775 rho ∧
    relationRow776 rho ∧
    relationRow777 rho ∧
    relationRow778 rho ∧
    relationRow779 rho ∧
    relationRow780 rho ∧
    relationRow781 rho ∧
    relationRow782 rho ∧
    relationRow783 rho ∧
    relationRow784 rho ∧
    relationRow785 rho ∧
    relationRow786 rho ∧
    relationRow787 rho ∧
    relationRow788 rho ∧
    relationRow789 rho ∧
    relationRow790 rho ∧
    relationRow791 rho ∧
    relationRow792 rho ∧
    relationRow793 rho ∧
    relationRow794 rho ∧
    relationRow795 rho ∧
    relationRow796 rho ∧
    relationRow797 rho ∧
    relationRow798 rho ∧
    relationRow799 rho

def relationPart10 (rho : Nat -> F) : Prop :=
    relationRow800 rho ∧
    relationRow801 rho ∧
    relationRow802 rho ∧
    relationRow803 rho ∧
    relationRow804 rho ∧
    relationRow805 rho ∧
    relationRow806 rho ∧
    relationRow807 rho ∧
    relationRow808 rho ∧
    relationRow809 rho ∧
    relationRow810 rho ∧
    relationRow811 rho ∧
    relationRow812 rho ∧
    relationRow813 rho ∧
    relationRow814 rho ∧
    relationRow815 rho ∧
    relationRow816 rho ∧
    relationRow817 rho ∧
    relationRow818 rho ∧
    relationRow819 rho ∧
    relationRow820 rho ∧
    relationRow821 rho ∧
    relationRow822 rho ∧
    relationRow823 rho ∧
    relationRow824 rho ∧
    relationRow825 rho ∧
    relationRow826 rho ∧
    relationRow827 rho ∧
    relationRow828 rho ∧
    relationRow829 rho ∧
    relationRow830 rho ∧
    relationRow831 rho ∧
    relationRow832 rho ∧
    relationRow833 rho ∧
    relationRow834 rho ∧
    relationRow835 rho ∧
    relationRow836 rho ∧
    relationRow837 rho ∧
    relationRow838 rho ∧
    relationRow839 rho ∧
    relationRow840 rho ∧
    relationRow841 rho ∧
    relationRow842 rho ∧
    relationRow843 rho ∧
    relationRow844 rho ∧
    relationRow845 rho ∧
    relationRow846 rho ∧
    relationRow847 rho ∧
    relationRow848 rho ∧
    relationRow849 rho ∧
    relationRow850 rho ∧
    relationRow851 rho ∧
    relationRow852 rho ∧
    relationRow853 rho ∧
    relationRow854 rho ∧
    relationRow855 rho ∧
    relationRow856 rho ∧
    relationRow857 rho ∧
    relationRow858 rho ∧
    relationRow859 rho ∧
    relationRow860 rho ∧
    relationRow861 rho ∧
    relationRow862 rho ∧
    relationRow863 rho ∧
    relationRow864 rho ∧
    relationRow865 rho ∧
    relationRow866 rho ∧
    relationRow867 rho ∧
    relationRow868 rho ∧
    relationRow869 rho ∧
    relationRow870 rho ∧
    relationRow871 rho ∧
    relationRow872 rho ∧
    relationRow873 rho ∧
    relationRow874 rho ∧
    relationRow875 rho ∧
    relationRow876 rho ∧
    relationRow877 rho ∧
    relationRow878 rho ∧
    relationRow879 rho

def relationPart11 (rho : Nat -> F) : Prop :=
    relationRow880 rho ∧
    relationRow881 rho ∧
    relationRow882 rho ∧
    relationRow883 rho ∧
    relationRow884 rho ∧
    relationRow885 rho ∧
    relationRow886 rho ∧
    relationRow887 rho ∧
    relationRow888 rho ∧
    relationRow889 rho ∧
    relationRow890 rho ∧
    relationRow891 rho ∧
    relationRow892 rho ∧
    relationRow893 rho ∧
    relationRow894 rho ∧
    relationRow895 rho ∧
    relationRow896 rho ∧
    relationRow897 rho ∧
    relationRow898 rho ∧
    relationRow899 rho ∧
    relationRow900 rho ∧
    relationRow901 rho ∧
    relationRow902 rho ∧
    relationRow903 rho ∧
    relationRow904 rho ∧
    relationRow905 rho ∧
    relationRow906 rho ∧
    relationRow907 rho ∧
    relationRow908 rho ∧
    relationRow909 rho ∧
    relationRow910 rho ∧
    relationRow911 rho ∧
    relationRow912 rho ∧
    relationRow913 rho ∧
    relationRow914 rho ∧
    relationRow915 rho ∧
    relationRow916 rho ∧
    relationRow917 rho ∧
    relationRow918 rho ∧
    relationRow919 rho ∧
    relationRow920 rho ∧
    relationRow921 rho ∧
    relationRow922 rho ∧
    relationRow923 rho ∧
    relationRow924 rho ∧
    relationRow925 rho ∧
    relationRow926 rho ∧
    relationRow927 rho ∧
    relationRow928 rho ∧
    relationRow929 rho ∧
    relationRow930 rho ∧
    relationRow931 rho ∧
    relationRow932 rho ∧
    relationRow933 rho ∧
    relationRow934 rho ∧
    relationRow935 rho ∧
    relationRow936 rho ∧
    relationRow937 rho ∧
    relationRow938 rho ∧
    relationRow939 rho ∧
    relationRow940 rho ∧
    relationRow941 rho ∧
    relationRow942 rho ∧
    relationRow943 rho ∧
    relationRow944 rho ∧
    relationRow945 rho ∧
    relationRow946 rho ∧
    relationRow947 rho ∧
    relationRow948 rho ∧
    relationRow949 rho ∧
    relationRow950 rho ∧
    relationRow951 rho ∧
    relationRow952 rho ∧
    relationRow953 rho ∧
    relationRow954 rho ∧
    relationRow955 rho ∧
    relationRow956 rho ∧
    relationRow957 rho ∧
    relationRow958 rho ∧
    relationRow959 rho

def relationPart12 (rho : Nat -> F) : Prop :=
    relationRow960 rho ∧
    relationRow961 rho ∧
    relationRow962 rho ∧
    relationRow963 rho ∧
    relationRow964 rho ∧
    relationRow965 rho ∧
    relationRow966 rho ∧
    relationRow967 rho ∧
    relationRow968 rho ∧
    relationRow969 rho ∧
    relationRow970 rho ∧
    relationRow971 rho ∧
    relationRow972 rho ∧
    relationRow973 rho ∧
    relationRow974 rho ∧
    relationRow975 rho ∧
    relationRow976 rho ∧
    relationRow977 rho ∧
    relationRow978 rho ∧
    relationRow979 rho ∧
    relationRow980 rho ∧
    relationRow981 rho ∧
    relationRow982 rho ∧
    relationRow983 rho ∧
    relationRow984 rho ∧
    relationRow985 rho ∧
    relationRow986 rho ∧
    relationRow987 rho ∧
    relationRow988 rho ∧
    relationRow989 rho ∧
    relationRow990 rho ∧
    relationRow991 rho ∧
    relationRow992 rho ∧
    relationRow993 rho ∧
    relationRow994 rho ∧
    relationRow995 rho ∧
    relationRow996 rho ∧
    relationRow997 rho ∧
    relationRow998 rho ∧
    relationRow999 rho ∧
    relationRow1000 rho ∧
    relationRow1001 rho ∧
    relationRow1002 rho ∧
    relationRow1003 rho ∧
    relationRow1004 rho ∧
    relationRow1005 rho ∧
    relationRow1006 rho ∧
    relationRow1007 rho ∧
    relationRow1008 rho ∧
    relationRow1009 rho ∧
    relationRow1010 rho ∧
    relationRow1011 rho ∧
    relationRow1012 rho ∧
    relationRow1013 rho ∧
    relationRow1014 rho ∧
    relationRow1015 rho ∧
    relationRow1016 rho ∧
    relationRow1017 rho ∧
    relationRow1018 rho ∧
    relationRow1019 rho ∧
    relationRow1020 rho ∧
    relationRow1021 rho ∧
    relationRow1022 rho ∧
    relationRow1023 rho ∧
    relationRow1024 rho ∧
    relationRow1025 rho ∧
    relationRow1026 rho ∧
    relationRow1027 rho ∧
    relationRow1028 rho ∧
    relationRow1029 rho ∧
    relationRow1030 rho ∧
    relationRow1031 rho ∧
    relationRow1032 rho ∧
    relationRow1033 rho ∧
    relationRow1034 rho ∧
    relationRow1035 rho ∧
    relationRow1036 rho ∧
    relationRow1037 rho ∧
    relationRow1038 rho ∧
    relationRow1039 rho

def relationPart13 (rho : Nat -> F) : Prop :=
    relationRow1040 rho ∧
    relationRow1041 rho ∧
    relationRow1042 rho ∧
    relationRow1043 rho ∧
    relationRow1044 rho ∧
    relationRow1045 rho ∧
    relationRow1046 rho ∧
    relationRow1047 rho ∧
    relationRow1048 rho ∧
    relationRow1049 rho ∧
    relationRow1050 rho ∧
    relationRow1051 rho ∧
    relationRow1052 rho ∧
    relationRow1053 rho ∧
    relationRow1054 rho ∧
    relationRow1055 rho ∧
    relationRow1056 rho ∧
    relationRow1057 rho ∧
    relationRow1058 rho ∧
    relationRow1059 rho ∧
    relationRow1060 rho ∧
    relationRow1061 rho ∧
    relationRow1062 rho ∧
    relationRow1063 rho ∧
    relationRow1064 rho ∧
    relationRow1065 rho ∧
    relationRow1066 rho ∧
    relationRow1067 rho ∧
    relationRow1068 rho ∧
    relationRow1069 rho ∧
    relationRow1070 rho ∧
    relationRow1071 rho ∧
    relationRow1072 rho ∧
    relationRow1073 rho ∧
    relationRow1074 rho ∧
    relationRow1075 rho ∧
    relationRow1076 rho ∧
    relationRow1077 rho ∧
    relationRow1078 rho ∧
    relationRow1079 rho ∧
    relationRow1080 rho ∧
    relationRow1081 rho ∧
    relationRow1082 rho ∧
    relationRow1083 rho ∧
    relationRow1084 rho ∧
    relationRow1085 rho ∧
    relationRow1086 rho ∧
    relationRow1087 rho ∧
    relationRow1088 rho ∧
    relationRow1089 rho ∧
    relationRow1090 rho ∧
    relationRow1091 rho ∧
    relationRow1092 rho ∧
    relationRow1093 rho ∧
    relationRow1094 rho ∧
    relationRow1095 rho ∧
    relationRow1096 rho ∧
    relationRow1097 rho ∧
    relationRow1098 rho ∧
    relationRow1099 rho ∧
    relationRow1100 rho ∧
    relationRow1101 rho ∧
    relationRow1102 rho ∧
    relationRow1103 rho ∧
    relationRow1104 rho ∧
    relationRow1105 rho ∧
    relationRow1106 rho ∧
    relationRow1107 rho ∧
    relationRow1108 rho ∧
    relationRow1109 rho ∧
    relationRow1110 rho ∧
    relationRow1111 rho ∧
    relationRow1112 rho ∧
    relationRow1113 rho ∧
    relationRow1114 rho ∧
    relationRow1115 rho ∧
    relationRow1116 rho ∧
    relationRow1117 rho ∧
    relationRow1118 rho ∧
    relationRow1119 rho

def relationPart14 (rho : Nat -> F) : Prop :=
    relationRow1120 rho ∧
    relationRow1121 rho ∧
    relationRow1122 rho ∧
    relationRow1123 rho ∧
    relationRow1124 rho ∧
    relationRow1125 rho ∧
    relationRow1126 rho ∧
    relationRow1127 rho ∧
    relationRow1128 rho ∧
    relationRow1129 rho ∧
    relationRow1130 rho ∧
    relationRow1131 rho ∧
    relationRow1132 rho ∧
    relationRow1133 rho ∧
    relationRow1134 rho ∧
    relationRow1135 rho ∧
    relationRow1136 rho ∧
    relationRow1137 rho ∧
    relationRow1138 rho ∧
    relationRow1139 rho ∧
    relationRow1140 rho ∧
    relationRow1141 rho ∧
    relationRow1142 rho ∧
    relationRow1143 rho ∧
    relationRow1144 rho ∧
    relationRow1145 rho ∧
    relationRow1146 rho ∧
    relationRow1147 rho ∧
    relationRow1148 rho ∧
    relationRow1149 rho ∧
    relationRow1150 rho ∧
    relationRow1151 rho ∧
    relationRow1152 rho ∧
    relationRow1153 rho ∧
    relationRow1154 rho ∧
    relationRow1155 rho ∧
    relationRow1156 rho ∧
    relationRow1157 rho ∧
    relationRow1158 rho ∧
    relationRow1159 rho ∧
    relationRow1160 rho ∧
    relationRow1161 rho ∧
    relationRow1162 rho ∧
    relationRow1163 rho ∧
    relationRow1164 rho ∧
    relationRow1165 rho ∧
    relationRow1166 rho ∧
    relationRow1167 rho ∧
    relationRow1168 rho ∧
    relationRow1169 rho ∧
    relationRow1170 rho ∧
    relationRow1171 rho ∧
    relationRow1172 rho ∧
    relationRow1173 rho ∧
    relationRow1174 rho ∧
    relationRow1175 rho ∧
    relationRow1176 rho ∧
    relationRow1177 rho ∧
    relationRow1178 rho ∧
    relationRow1179 rho ∧
    relationRow1180 rho ∧
    relationRow1181 rho ∧
    relationRow1182 rho ∧
    relationRow1183 rho ∧
    relationRow1184 rho ∧
    relationRow1185 rho ∧
    relationRow1186 rho ∧
    relationRow1187 rho ∧
    relationRow1188 rho ∧
    relationRow1189 rho ∧
    relationRow1190 rho ∧
    relationRow1191 rho ∧
    relationRow1192 rho ∧
    relationRow1193 rho ∧
    relationRow1194 rho ∧
    relationRow1195 rho ∧
    relationRow1196 rho ∧
    relationRow1197 rho ∧
    relationRow1198 rho ∧
    relationRow1199 rho

def relationPart15 (rho : Nat -> F) : Prop :=
    relationRow1200 rho ∧
    relationRow1201 rho ∧
    relationRow1202 rho ∧
    relationRow1203 rho ∧
    relationRow1204 rho ∧
    relationRow1205 rho ∧
    relationRow1206 rho ∧
    relationRow1207 rho ∧
    relationRow1208 rho ∧
    relationRow1209 rho ∧
    relationRow1210 rho ∧
    relationRow1211 rho ∧
    relationRow1212 rho ∧
    relationRow1213 rho ∧
    relationRow1214 rho ∧
    relationRow1215 rho ∧
    relationRow1216 rho ∧
    relationRow1217 rho ∧
    relationRow1218 rho ∧
    relationRow1219 rho ∧
    relationRow1220 rho ∧
    relationRow1221 rho ∧
    relationRow1222 rho ∧
    relationRow1223 rho ∧
    relationRow1224 rho ∧
    relationRow1225 rho ∧
    relationRow1226 rho ∧
    relationRow1227 rho ∧
    relationRow1228 rho ∧
    relationRow1229 rho ∧
    relationRow1230 rho ∧
    relationRow1231 rho ∧
    relationRow1232 rho ∧
    relationRow1233 rho ∧
    relationRow1234 rho ∧
    relationRow1235 rho ∧
    relationRow1236 rho ∧
    relationRow1237 rho ∧
    relationRow1238 rho ∧
    relationRow1239 rho ∧
    relationRow1240 rho ∧
    relationRow1241 rho ∧
    relationRow1242 rho ∧
    relationRow1243 rho ∧
    relationRow1244 rho ∧
    relationRow1245 rho ∧
    relationRow1246 rho ∧
    relationRow1247 rho ∧
    relationRow1248 rho ∧
    relationRow1249 rho ∧
    relationRow1250 rho ∧
    relationRow1251 rho ∧
    relationRow1252 rho ∧
    relationRow1253 rho ∧
    relationRow1254 rho ∧
    relationRow1255 rho ∧
    relationRow1256 rho ∧
    relationRow1257 rho ∧
    relationRow1258 rho ∧
    relationRow1259 rho ∧
    relationRow1260 rho ∧
    relationRow1261 rho ∧
    relationRow1262 rho ∧
    relationRow1263 rho ∧
    relationRow1264 rho ∧
    relationRow1265 rho ∧
    relationRow1266 rho ∧
    relationRow1267 rho ∧
    relationRow1268 rho ∧
    relationRow1269 rho ∧
    relationRow1270 rho ∧
    relationRow1271 rho ∧
    relationRow1272 rho ∧
    relationRow1273 rho ∧
    relationRow1274 rho ∧
    relationRow1275 rho ∧
    relationRow1276 rho ∧
    relationRow1277 rho ∧
    relationRow1278 rho ∧
    relationRow1279 rho

def relationPart16 (rho : Nat -> F) : Prop :=
    relationRow1280 rho ∧
    relationRow1281 rho ∧
    relationRow1282 rho ∧
    relationRow1283 rho ∧
    relationRow1284 rho ∧
    relationRow1285 rho ∧
    relationRow1286 rho ∧
    relationRow1287 rho ∧
    relationRow1288 rho ∧
    relationRow1289 rho ∧
    relationRow1290 rho ∧
    relationRow1291 rho ∧
    relationRow1292 rho ∧
    relationRow1293 rho ∧
    relationRow1294 rho ∧
    relationRow1295 rho ∧
    relationRow1296 rho ∧
    relationRow1297 rho ∧
    relationRow1298 rho ∧
    relationRow1299 rho ∧
    relationRow1300 rho ∧
    relationRow1301 rho ∧
    relationRow1302 rho ∧
    relationRow1303 rho ∧
    relationRow1304 rho ∧
    relationRow1305 rho ∧
    relationRow1306 rho ∧
    relationRow1307 rho ∧
    relationRow1308 rho ∧
    relationRow1309 rho ∧
    relationRow1310 rho ∧
    relationRow1311 rho ∧
    relationRow1312 rho ∧
    relationRow1313 rho ∧
    relationRow1314 rho ∧
    relationRow1315 rho ∧
    relationRow1316 rho ∧
    relationRow1317 rho ∧
    relationRow1318 rho ∧
    relationRow1319 rho ∧
    relationRow1320 rho ∧
    relationRow1321 rho ∧
    relationRow1322 rho ∧
    relationRow1323 rho ∧
    relationRow1324 rho ∧
    relationRow1325 rho ∧
    relationRow1326 rho ∧
    relationRow1327 rho ∧
    relationRow1328 rho ∧
    relationRow1329 rho ∧
    relationRow1330 rho ∧
    relationRow1331 rho ∧
    relationRow1332 rho ∧
    relationRow1333 rho ∧
    relationRow1334 rho ∧
    relationRow1335 rho ∧
    relationRow1336 rho ∧
    relationRow1337 rho ∧
    relationRow1338 rho ∧
    relationRow1339 rho ∧
    relationRow1340 rho ∧
    relationRow1341 rho ∧
    relationRow1342 rho ∧
    relationRow1343 rho ∧
    relationRow1344 rho ∧
    relationRow1345 rho ∧
    relationRow1346 rho ∧
    relationRow1347 rho ∧
    relationRow1348 rho ∧
    relationRow1349 rho ∧
    relationRow1350 rho ∧
    relationRow1351 rho ∧
    relationRow1352 rho ∧
    relationRow1353 rho ∧
    relationRow1354 rho ∧
    relationRow1355 rho ∧
    relationRow1356 rho ∧
    relationRow1357 rho ∧
    relationRow1358 rho ∧
    relationRow1359 rho

def relationPart17 (rho : Nat -> F) : Prop :=
    relationRow1360 rho ∧
    relationRow1361 rho ∧
    relationRow1362 rho ∧
    relationRow1363 rho ∧
    relationRow1364 rho ∧
    relationRow1365 rho ∧
    relationRow1366 rho ∧
    relationRow1367 rho ∧
    relationRow1368 rho ∧
    relationRow1369 rho ∧
    relationRow1370 rho ∧
    relationRow1371 rho ∧
    relationRow1372 rho ∧
    relationRow1373 rho ∧
    relationRow1374 rho ∧
    relationRow1375 rho ∧
    relationRow1376 rho ∧
    relationRow1377 rho ∧
    relationRow1378 rho ∧
    relationRow1379 rho ∧
    relationRow1380 rho ∧
    relationRow1381 rho ∧
    relationRow1382 rho ∧
    relationRow1383 rho ∧
    relationRow1384 rho ∧
    relationRow1385 rho ∧
    relationRow1386 rho ∧
    relationRow1387 rho ∧
    relationRow1388 rho ∧
    relationRow1389 rho ∧
    relationRow1390 rho ∧
    relationRow1391 rho ∧
    relationRow1392 rho ∧
    relationRow1393 rho ∧
    relationRow1394 rho ∧
    relationRow1395 rho ∧
    relationRow1396 rho ∧
    relationRow1397 rho ∧
    relationRow1398 rho ∧
    relationRow1399 rho ∧
    relationRow1400 rho ∧
    relationRow1401 rho ∧
    relationRow1402 rho ∧
    relationRow1403 rho ∧
    relationRow1404 rho ∧
    relationRow1405 rho ∧
    relationRow1406 rho ∧
    relationRow1407 rho ∧
    relationRow1408 rho ∧
    relationRow1409 rho ∧
    relationRow1410 rho ∧
    relationRow1411 rho ∧
    relationRow1412 rho ∧
    relationRow1413 rho ∧
    relationRow1414 rho ∧
    relationRow1415 rho ∧
    relationRow1416 rho ∧
    relationRow1417 rho ∧
    relationRow1418 rho ∧
    relationRow1419 rho ∧
    relationRow1420 rho ∧
    relationRow1421 rho ∧
    relationRow1422 rho ∧
    relationRow1423 rho ∧
    relationRow1424 rho ∧
    relationRow1425 rho ∧
    relationRow1426 rho ∧
    relationRow1427 rho ∧
    relationRow1428 rho ∧
    relationRow1429 rho ∧
    relationRow1430 rho ∧
    relationRow1431 rho ∧
    relationRow1432 rho ∧
    relationRow1433 rho ∧
    relationRow1434 rho ∧
    relationRow1435 rho ∧
    relationRow1436 rho ∧
    relationRow1437 rho ∧
    relationRow1438 rho ∧
    relationRow1439 rho

def relationPart18 (rho : Nat -> F) : Prop :=
    relationRow1440 rho ∧
    relationRow1441 rho ∧
    relationRow1442 rho ∧
    relationRow1443 rho ∧
    relationRow1444 rho ∧
    relationRow1445 rho ∧
    relationRow1446 rho ∧
    relationRow1447 rho ∧
    relationRow1448 rho ∧
    relationRow1449 rho ∧
    relationRow1450 rho ∧
    relationRow1451 rho ∧
    relationRow1452 rho ∧
    relationRow1453 rho ∧
    relationRow1454 rho ∧
    relationRow1455 rho ∧
    relationRow1456 rho ∧
    relationRow1457 rho ∧
    relationRow1458 rho ∧
    relationRow1459 rho ∧
    relationRow1460 rho ∧
    relationRow1461 rho ∧
    relationRow1462 rho ∧
    relationRow1463 rho ∧
    relationRow1464 rho ∧
    relationRow1465 rho ∧
    relationRow1466 rho ∧
    relationRow1467 rho ∧
    relationRow1468 rho ∧
    relationRow1469 rho ∧
    relationRow1470 rho ∧
    relationRow1471 rho ∧
    relationRow1472 rho ∧
    relationRow1473 rho ∧
    relationRow1474 rho ∧
    relationRow1475 rho ∧
    relationRow1476 rho ∧
    relationRow1477 rho ∧
    relationRow1478 rho ∧
    relationRow1479 rho ∧
    relationRow1480 rho ∧
    relationRow1481 rho ∧
    relationRow1482 rho ∧
    relationRow1483 rho ∧
    relationRow1484 rho ∧
    relationRow1485 rho ∧
    relationRow1486 rho ∧
    relationRow1487 rho ∧
    relationRow1488 rho ∧
    relationRow1489 rho ∧
    relationRow1490 rho ∧
    relationRow1491 rho ∧
    relationRow1492 rho ∧
    relationRow1493 rho ∧
    relationRow1494 rho ∧
    relationRow1495 rho ∧
    relationRow1496 rho ∧
    relationRow1497 rho ∧
    relationRow1498 rho ∧
    relationRow1499 rho ∧
    relationRow1500 rho ∧
    relationRow1501 rho ∧
    relationRow1502 rho ∧
    relationRow1503 rho ∧
    relationRow1504 rho ∧
    relationRow1505 rho ∧
    relationRow1506 rho ∧
    relationRow1507 rho ∧
    relationRow1508 rho ∧
    relationRow1509 rho ∧
    relationRow1510 rho ∧
    relationRow1511 rho ∧
    relationRow1512 rho ∧
    relationRow1513 rho ∧
    relationRow1514 rho ∧
    relationRow1515 rho ∧
    relationRow1516 rho ∧
    relationRow1517 rho ∧
    relationRow1518 rho ∧
    relationRow1519 rho

def relationPart19 (rho : Nat -> F) : Prop :=
    relationRow1520 rho ∧
    relationRow1521 rho ∧
    relationRow1522 rho ∧
    relationRow1523 rho ∧
    relationRow1524 rho ∧
    relationRow1525 rho ∧
    relationRow1526 rho ∧
    relationRow1527 rho ∧
    relationRow1528 rho ∧
    relationRow1529 rho ∧
    relationRow1530 rho ∧
    relationRow1531 rho ∧
    relationRow1532 rho ∧
    relationRow1533 rho ∧
    relationRow1534 rho ∧
    relationRow1535 rho ∧
    relationRow1536 rho ∧
    relationRow1537 rho ∧
    relationRow1538 rho ∧
    relationRow1539 rho ∧
    relationRow1540 rho ∧
    relationRow1541 rho ∧
    relationRow1542 rho ∧
    relationRow1543 rho ∧
    relationRow1544 rho ∧
    relationRow1545 rho ∧
    relationRow1546 rho ∧
    relationRow1547 rho ∧
    relationRow1548 rho ∧
    relationRow1549 rho ∧
    relationRow1550 rho ∧
    relationRow1551 rho ∧
    relationRow1552 rho ∧
    relationRow1553 rho ∧
    relationRow1554 rho ∧
    relationRow1555 rho ∧
    relationRow1556 rho ∧
    relationRow1557 rho ∧
    relationRow1558 rho ∧
    relationRow1559 rho ∧
    relationRow1560 rho ∧
    relationRow1561 rho ∧
    relationRow1562 rho ∧
    relationRow1563 rho ∧
    relationRow1564 rho ∧
    relationRow1565 rho ∧
    relationRow1566 rho ∧
    relationRow1567 rho ∧
    relationRow1568 rho ∧
    relationRow1569 rho ∧
    relationRow1570 rho ∧
    relationRow1571 rho ∧
    relationRow1572 rho ∧
    relationRow1573 rho ∧
    relationRow1574 rho ∧
    relationRow1575 rho ∧
    relationRow1576 rho ∧
    relationRow1577 rho ∧
    relationRow1578 rho ∧
    relationRow1579 rho ∧
    relationRow1580 rho ∧
    relationRow1581 rho ∧
    relationRow1582 rho ∧
    relationRow1583 rho ∧
    relationRow1584 rho ∧
    relationRow1585 rho ∧
    relationRow1586 rho ∧
    relationRow1587 rho ∧
    relationRow1588 rho ∧
    relationRow1589 rho ∧
    relationRow1590 rho ∧
    relationRow1591 rho ∧
    relationRow1592 rho ∧
    relationRow1593 rho ∧
    relationRow1594 rho ∧
    relationRow1595 rho ∧
    relationRow1596 rho ∧
    relationRow1597 rho ∧
    relationRow1598 rho ∧
    relationRow1599 rho

def relationPart20 (rho : Nat -> F) : Prop :=
    relationRow1600 rho ∧
    relationRow1601 rho ∧
    relationRow1602 rho ∧
    relationRow1603 rho ∧
    relationRow1604 rho ∧
    relationRow1605 rho ∧
    relationRow1606 rho ∧
    relationRow1607 rho ∧
    relationRow1608 rho ∧
    relationRow1609 rho ∧
    relationRow1610 rho ∧
    relationRow1611 rho ∧
    relationRow1612 rho ∧
    relationRow1613 rho ∧
    relationRow1614 rho ∧
    relationRow1615 rho ∧
    relationRow1616 rho ∧
    relationRow1617 rho ∧
    relationRow1618 rho ∧
    relationRow1619 rho ∧
    relationRow1620 rho ∧
    relationRow1621 rho ∧
    relationRow1622 rho ∧
    relationRow1623 rho ∧
    relationRow1624 rho ∧
    relationRow1625 rho ∧
    relationRow1626 rho ∧
    relationRow1627 rho ∧
    relationRow1628 rho ∧
    relationRow1629 rho ∧
    relationRow1630 rho ∧
    relationRow1631 rho ∧
    relationRow1632 rho ∧
    relationRow1633 rho ∧
    relationRow1634 rho ∧
    relationRow1635 rho ∧
    relationRow1636 rho ∧
    relationRow1637 rho ∧
    relationRow1638 rho ∧
    relationRow1639 rho ∧
    relationRow1640 rho ∧
    relationRow1641 rho ∧
    relationRow1642 rho ∧
    relationRow1643 rho ∧
    relationRow1644 rho ∧
    relationRow1645 rho ∧
    relationRow1646 rho ∧
    relationRow1647 rho ∧
    relationRow1648 rho ∧
    relationRow1649 rho ∧
    relationRow1650 rho ∧
    relationRow1651 rho ∧
    relationRow1652 rho ∧
    relationRow1653 rho ∧
    relationRow1654 rho ∧
    relationRow1655 rho ∧
    relationRow1656 rho ∧
    relationRow1657 rho ∧
    relationRow1658 rho ∧
    relationRow1659 rho ∧
    relationRow1660 rho ∧
    relationRow1661 rho ∧
    relationRow1662 rho ∧
    relationRow1663 rho ∧
    relationRow1664 rho ∧
    relationRow1665 rho ∧
    relationRow1666 rho ∧
    relationRow1667 rho ∧
    relationRow1668 rho ∧
    relationRow1669 rho ∧
    relationRow1670 rho ∧
    relationRow1671 rho ∧
    relationRow1672 rho ∧
    relationRow1673 rho ∧
    relationRow1674 rho ∧
    relationRow1675 rho ∧
    relationRow1676 rho ∧
    relationRow1677 rho ∧
    relationRow1678 rho ∧
    relationRow1679 rho

def relationPart21 (rho : Nat -> F) : Prop :=
    relationRow1680 rho ∧
    relationRow1681 rho ∧
    relationRow1682 rho ∧
    relationRow1683 rho ∧
    relationRow1684 rho ∧
    relationRow1685 rho ∧
    relationRow1686 rho ∧
    relationRow1687 rho ∧
    relationRow1688 rho ∧
    relationRow1689 rho ∧
    relationRow1690 rho ∧
    relationRow1691 rho ∧
    relationRow1692 rho ∧
    relationRow1693 rho ∧
    relationRow1694 rho ∧
    relationRow1695 rho ∧
    relationRow1696 rho ∧
    relationRow1697 rho ∧
    relationRow1698 rho ∧
    relationRow1699 rho ∧
    relationRow1700 rho ∧
    relationRow1701 rho ∧
    relationRow1702 rho ∧
    relationRow1703 rho ∧
    relationRow1704 rho ∧
    relationRow1705 rho ∧
    relationRow1706 rho ∧
    relationRow1707 rho ∧
    relationRow1708 rho ∧
    relationRow1709 rho ∧
    relationRow1710 rho ∧
    relationRow1711 rho ∧
    relationRow1712 rho ∧
    relationRow1713 rho ∧
    relationRow1714 rho ∧
    relationRow1715 rho ∧
    relationRow1716 rho ∧
    relationRow1717 rho ∧
    relationRow1718 rho ∧
    relationRow1719 rho ∧
    relationRow1720 rho ∧
    relationRow1721 rho ∧
    relationRow1722 rho ∧
    relationRow1723 rho ∧
    relationRow1724 rho ∧
    relationRow1725 rho ∧
    relationRow1726 rho ∧
    relationRow1727 rho ∧
    relationRow1728 rho ∧
    relationRow1729 rho ∧
    relationRow1730 rho ∧
    relationRow1731 rho ∧
    relationRow1732 rho ∧
    relationRow1733 rho ∧
    relationRow1734 rho ∧
    relationRow1735 rho ∧
    relationRow1736 rho ∧
    relationRow1737 rho ∧
    relationRow1738 rho ∧
    relationRow1739 rho ∧
    relationRow1740 rho ∧
    relationRow1741 rho ∧
    relationRow1742 rho ∧
    relationRow1743 rho ∧
    relationRow1744 rho ∧
    relationRow1745 rho ∧
    relationRow1746 rho ∧
    relationRow1747 rho ∧
    relationRow1748 rho ∧
    relationRow1749 rho ∧
    relationRow1750 rho ∧
    relationRow1751 rho ∧
    relationRow1752 rho ∧
    relationRow1753 rho ∧
    relationRow1754 rho ∧
    relationRow1755 rho ∧
    relationRow1756 rho ∧
    relationRow1757 rho ∧
    relationRow1758 rho ∧
    relationRow1759 rho

def relationPart22 (rho : Nat -> F) : Prop :=
    relationRow1760 rho ∧
    relationRow1761 rho ∧
    relationRow1762 rho ∧
    relationRow1763 rho ∧
    relationRow1764 rho ∧
    relationRow1765 rho ∧
    relationRow1766 rho ∧
    relationRow1767 rho ∧
    relationRow1768 rho ∧
    relationRow1769 rho ∧
    relationRow1770 rho ∧
    relationRow1771 rho ∧
    relationRow1772 rho ∧
    relationRow1773 rho ∧
    relationRow1774 rho ∧
    relationRow1775 rho ∧
    relationRow1776 rho ∧
    relationRow1777 rho ∧
    relationRow1778 rho ∧
    relationRow1779 rho ∧
    relationRow1780 rho ∧
    relationRow1781 rho ∧
    relationRow1782 rho ∧
    relationRow1783 rho ∧
    relationRow1784 rho ∧
    relationRow1785 rho ∧
    relationRow1786 rho ∧
    relationRow1787 rho ∧
    relationRow1788 rho ∧
    relationRow1789 rho ∧
    relationRow1790 rho ∧
    relationRow1791 rho ∧
    relationRow1792 rho ∧
    relationRow1793 rho ∧
    relationRow1794 rho ∧
    relationRow1795 rho ∧
    relationRow1796 rho ∧
    relationRow1797 rho ∧
    relationRow1798 rho ∧
    relationRow1799 rho ∧
    relationRow1800 rho ∧
    relationRow1801 rho ∧
    relationRow1802 rho ∧
    relationRow1803 rho ∧
    relationRow1804 rho ∧
    relationRow1805 rho ∧
    relationRow1806 rho ∧
    relationRow1807 rho ∧
    relationRow1808 rho ∧
    relationRow1809 rho ∧
    relationRow1810 rho ∧
    relationRow1811 rho ∧
    relationRow1812 rho ∧
    relationRow1813 rho ∧
    relationRow1814 rho ∧
    relationRow1815 rho ∧
    relationRow1816 rho ∧
    relationRow1817 rho ∧
    relationRow1818 rho ∧
    relationRow1819 rho ∧
    relationRow1820 rho ∧
    relationRow1821 rho ∧
    relationRow1822 rho ∧
    relationRow1823 rho ∧
    relationRow1824 rho ∧
    relationRow1825 rho ∧
    relationRow1826 rho ∧
    relationRow1827 rho ∧
    relationRow1828 rho ∧
    relationRow1829 rho ∧
    relationRow1830 rho ∧
    relationRow1831 rho ∧
    relationRow1832 rho ∧
    relationRow1833 rho ∧
    relationRow1834 rho ∧
    relationRow1835 rho ∧
    relationRow1836 rho ∧
    relationRow1837 rho ∧
    relationRow1838 rho ∧
    relationRow1839 rho

def relationPart23 (rho : Nat -> F) : Prop :=
    relationRow1840 rho ∧
    relationRow1841 rho ∧
    relationRow1842 rho ∧
    relationRow1843 rho ∧
    relationRow1844 rho ∧
    relationRow1845 rho ∧
    relationRow1846 rho ∧
    relationRow1847 rho ∧
    relationRow1848 rho ∧
    relationRow1849 rho ∧
    relationRow1850 rho ∧
    relationRow1851 rho ∧
    relationRow1852 rho ∧
    relationRow1853 rho ∧
    relationRow1854 rho ∧
    relationRow1855 rho ∧
    relationRow1856 rho ∧
    relationRow1857 rho ∧
    relationRow1858 rho ∧
    relationRow1859 rho ∧
    relationRow1860 rho ∧
    relationRow1861 rho ∧
    relationRow1862 rho ∧
    relationRow1863 rho ∧
    relationRow1864 rho ∧
    relationRow1865 rho ∧
    relationRow1866 rho ∧
    relationRow1867 rho ∧
    relationRow1868 rho ∧
    relationRow1869 rho ∧
    relationRow1870 rho ∧
    relationRow1871 rho ∧
    relationRow1872 rho ∧
    relationRow1873 rho ∧
    relationRow1874 rho ∧
    relationRow1875 rho ∧
    relationRow1876 rho ∧
    relationRow1877 rho ∧
    relationRow1878 rho ∧
    relationRow1879 rho ∧
    relationRow1880 rho ∧
    relationRow1881 rho ∧
    relationRow1882 rho ∧
    relationRow1883 rho ∧
    relationRow1884 rho ∧
    relationRow1885 rho ∧
    relationRow1886 rho ∧
    relationRow1887 rho ∧
    relationRow1888 rho ∧
    relationRow1889 rho ∧
    relationRow1890 rho ∧
    relationRow1891 rho ∧
    relationRow1892 rho ∧
    relationRow1893 rho ∧
    relationRow1894 rho ∧
    relationRow1895 rho ∧
    relationRow1896 rho ∧
    relationRow1897 rho ∧
    relationRow1898 rho ∧
    relationRow1899 rho ∧
    relationRow1900 rho ∧
    relationRow1901 rho ∧
    relationRow1902 rho ∧
    relationRow1903 rho ∧
    relationRow1904 rho ∧
    relationRow1905 rho ∧
    relationRow1906 rho ∧
    relationRow1907 rho ∧
    relationRow1908 rho ∧
    relationRow1909 rho ∧
    relationRow1910 rho ∧
    relationRow1911 rho ∧
    relationRow1912 rho ∧
    relationRow1913 rho ∧
    relationRow1914 rho ∧
    relationRow1915 rho ∧
    relationRow1916 rho ∧
    relationRow1917 rho ∧
    relationRow1918 rho ∧
    relationRow1919 rho

def relationPart24 (rho : Nat -> F) : Prop :=
    relationRow1920 rho ∧
    relationRow1921 rho ∧
    relationRow1922 rho ∧
    relationRow1923 rho ∧
    relationRow1924 rho ∧
    relationRow1925 rho ∧
    relationRow1926 rho ∧
    relationRow1927 rho ∧
    relationRow1928 rho ∧
    relationRow1929 rho ∧
    relationRow1930 rho ∧
    relationRow1931 rho ∧
    relationRow1932 rho ∧
    relationRow1933 rho ∧
    relationRow1934 rho ∧
    relationRow1935 rho ∧
    relationRow1936 rho ∧
    relationRow1937 rho ∧
    relationRow1938 rho ∧
    relationRow1939 rho ∧
    relationRow1940 rho ∧
    relationRow1941 rho ∧
    relationRow1942 rho ∧
    relationRow1943 rho ∧
    relationRow1944 rho ∧
    relationRow1945 rho ∧
    relationRow1946 rho ∧
    relationRow1947 rho ∧
    relationRow1948 rho ∧
    relationRow1949 rho ∧
    relationRow1950 rho ∧
    relationRow1951 rho ∧
    relationRow1952 rho ∧
    relationRow1953 rho ∧
    relationRow1954 rho ∧
    relationRow1955 rho ∧
    relationRow1956 rho ∧
    relationRow1957 rho ∧
    relationRow1958 rho ∧
    relationRow1959 rho ∧
    relationRow1960 rho ∧
    relationRow1961 rho ∧
    relationRow1962 rho ∧
    relationRow1963 rho ∧
    relationRow1964 rho ∧
    relationRow1965 rho ∧
    relationRow1966 rho ∧
    relationRow1967 rho ∧
    relationRow1968 rho ∧
    relationRow1969 rho ∧
    relationRow1970 rho ∧
    relationRow1971 rho ∧
    relationRow1972 rho ∧
    relationRow1973 rho ∧
    relationRow1974 rho ∧
    relationRow1975 rho ∧
    relationRow1976 rho ∧
    relationRow1977 rho ∧
    relationRow1978 rho ∧
    relationRow1979 rho ∧
    relationRow1980 rho ∧
    relationRow1981 rho ∧
    relationRow1982 rho ∧
    relationRow1983 rho ∧
    relationRow1984 rho ∧
    relationRow1985 rho ∧
    relationRow1986 rho ∧
    relationRow1987 rho ∧
    relationRow1988 rho ∧
    relationRow1989 rho ∧
    relationRow1990 rho ∧
    relationRow1991 rho ∧
    relationRow1992 rho ∧
    relationRow1993 rho ∧
    relationRow1994 rho ∧
    relationRow1995 rho ∧
    relationRow1996 rho ∧
    relationRow1997 rho ∧
    relationRow1998 rho ∧
    relationRow1999 rho

def relationPart25 (rho : Nat -> F) : Prop :=
    relationRow2000 rho ∧
    relationRow2001 rho ∧
    relationRow2002 rho ∧
    relationRow2003 rho ∧
    relationRow2004 rho ∧
    relationRow2005 rho ∧
    relationRow2006 rho ∧
    relationRow2007 rho ∧
    relationRow2008 rho ∧
    relationRow2009 rho ∧
    relationRow2010 rho ∧
    relationRow2011 rho ∧
    relationRow2012 rho ∧
    relationRow2013 rho ∧
    relationRow2014 rho ∧
    relationRow2015 rho ∧
    relationRow2016 rho ∧
    relationRow2017 rho ∧
    relationRow2018 rho ∧
    relationRow2019 rho ∧
    relationRow2020 rho ∧
    relationRow2021 rho ∧
    relationRow2022 rho ∧
    relationRow2023 rho ∧
    relationRow2024 rho ∧
    relationRow2025 rho ∧
    relationRow2026 rho ∧
    relationRow2027 rho ∧
    relationRow2028 rho ∧
    relationRow2029 rho ∧
    relationRow2030 rho ∧
    relationRow2031 rho ∧
    relationRow2032 rho ∧
    relationRow2033 rho ∧
    relationRow2034 rho ∧
    relationRow2035 rho ∧
    relationRow2036 rho ∧
    relationRow2037 rho ∧
    relationRow2038 rho ∧
    relationRow2039 rho ∧
    relationRow2040 rho ∧
    relationRow2041 rho ∧
    relationRow2042 rho ∧
    relationRow2043 rho ∧
    relationRow2044 rho ∧
    relationRow2045 rho ∧
    relationRow2046 rho ∧
    relationRow2047 rho ∧
    relationRow2048 rho ∧
    relationRow2049 rho ∧
    relationRow2050 rho ∧
    relationRow2051 rho ∧
    relationRow2052 rho ∧
    relationRow2053 rho ∧
    relationRow2054 rho ∧
    relationRow2055 rho ∧
    relationRow2056 rho ∧
    relationRow2057 rho ∧
    relationRow2058 rho ∧
    relationRow2059 rho ∧
    relationRow2060 rho ∧
    relationRow2061 rho ∧
    relationRow2062 rho ∧
    relationRow2063 rho ∧
    relationRow2064 rho ∧
    relationRow2065 rho ∧
    relationRow2066 rho ∧
    relationRow2067 rho ∧
    relationRow2068 rho ∧
    relationRow2069 rho ∧
    relationRow2070 rho ∧
    relationRow2071 rho ∧
    relationRow2072 rho ∧
    relationRow2073 rho ∧
    relationRow2074 rho ∧
    relationRow2075 rho ∧
    relationRow2076 rho ∧
    relationRow2077 rho ∧
    relationRow2078 rho ∧
    relationRow2079 rho

def relationPart26 (rho : Nat -> F) : Prop :=
    relationRow2080 rho ∧
    relationRow2081 rho ∧
    relationRow2082 rho ∧
    relationRow2083 rho ∧
    relationRow2084 rho ∧
    relationRow2085 rho ∧
    relationRow2086 rho ∧
    relationRow2087 rho ∧
    relationRow2088 rho ∧
    relationRow2089 rho ∧
    relationRow2090 rho ∧
    relationRow2091 rho ∧
    relationRow2092 rho ∧
    relationRow2093 rho ∧
    relationRow2094 rho ∧
    relationRow2095 rho ∧
    relationRow2096 rho ∧
    relationRow2097 rho ∧
    relationRow2098 rho ∧
    relationRow2099 rho ∧
    relationRow2100 rho ∧
    relationRow2101 rho ∧
    relationRow2102 rho ∧
    relationRow2103 rho ∧
    relationRow2104 rho ∧
    relationRow2105 rho ∧
    relationRow2106 rho ∧
    relationRow2107 rho ∧
    relationRow2108 rho ∧
    relationRow2109 rho ∧
    relationRow2110 rho ∧
    relationRow2111 rho ∧
    relationRow2112 rho ∧
    relationRow2113 rho ∧
    relationRow2114 rho ∧
    relationRow2115 rho ∧
    relationRow2116 rho ∧
    relationRow2117 rho ∧
    relationRow2118 rho ∧
    relationRow2119 rho ∧
    relationRow2120 rho ∧
    relationRow2121 rho ∧
    relationRow2122 rho ∧
    relationRow2123 rho ∧
    relationRow2124 rho ∧
    relationRow2125 rho ∧
    relationRow2126 rho ∧
    relationRow2127 rho ∧
    relationRow2128 rho ∧
    relationRow2129 rho ∧
    relationRow2130 rho ∧
    relationRow2131 rho ∧
    relationRow2132 rho ∧
    relationRow2133 rho ∧
    relationRow2134 rho ∧
    relationRow2135 rho ∧
    relationRow2136 rho ∧
    relationRow2137 rho ∧
    relationRow2138 rho ∧
    relationRow2139 rho ∧
    relationRow2140 rho ∧
    relationRow2141 rho ∧
    relationRow2142 rho ∧
    relationRow2143 rho ∧
    relationRow2144 rho ∧
    relationRow2145 rho ∧
    relationRow2146 rho ∧
    relationRow2147 rho ∧
    relationRow2148 rho ∧
    relationRow2149 rho ∧
    relationRow2150 rho ∧
    relationRow2151 rho ∧
    relationRow2152 rho ∧
    relationRow2153 rho ∧
    relationRow2154 rho ∧
    relationRow2155 rho ∧
    relationRow2156 rho ∧
    relationRow2157 rho ∧
    relationRow2158 rho ∧
    relationRow2159 rho

def relationPart27 (rho : Nat -> F) : Prop :=
    relationRow2160 rho ∧
    relationRow2161 rho ∧
    relationRow2162 rho ∧
    relationRow2163 rho ∧
    relationRow2164 rho ∧
    relationRow2165 rho ∧
    relationRow2166 rho ∧
    relationRow2167 rho ∧
    relationRow2168 rho ∧
    relationRow2169 rho ∧
    relationRow2170 rho ∧
    relationRow2171 rho ∧
    relationRow2172 rho ∧
    relationRow2173 rho ∧
    relationRow2174 rho ∧
    relationRow2175 rho ∧
    relationRow2176 rho ∧
    relationRow2177 rho ∧
    relationRow2178 rho ∧
    relationRow2179 rho ∧
    relationRow2180 rho ∧
    relationRow2181 rho ∧
    relationRow2182 rho ∧
    relationRow2183 rho ∧
    relationRow2184 rho ∧
    relationRow2185 rho ∧
    relationRow2186 rho ∧
    relationRow2187 rho ∧
    relationRow2188 rho ∧
    relationRow2189 rho ∧
    relationRow2190 rho ∧
    relationRow2191 rho ∧
    relationRow2192 rho ∧
    relationRow2193 rho ∧
    relationRow2194 rho ∧
    relationRow2195 rho ∧
    relationRow2196 rho ∧
    relationRow2197 rho ∧
    relationRow2198 rho ∧
    relationRow2199 rho ∧
    relationRow2200 rho ∧
    relationRow2201 rho ∧
    relationRow2202 rho ∧
    relationRow2203 rho ∧
    relationRow2204 rho ∧
    relationRow2205 rho ∧
    relationRow2206 rho ∧
    relationRow2207 rho ∧
    relationRow2208 rho ∧
    relationRow2209 rho ∧
    relationRow2210 rho ∧
    relationRow2211 rho ∧
    relationRow2212 rho ∧
    relationRow2213 rho ∧
    relationRow2214 rho ∧
    relationRow2215 rho ∧
    relationRow2216 rho ∧
    relationRow2217 rho ∧
    relationRow2218 rho ∧
    relationRow2219 rho ∧
    relationRow2220 rho ∧
    relationRow2221 rho ∧
    relationRow2222 rho ∧
    relationRow2223 rho ∧
    relationRow2224 rho ∧
    relationRow2225 rho ∧
    relationRow2226 rho ∧
    relationRow2227 rho ∧
    relationRow2228 rho ∧
    relationRow2229 rho ∧
    relationRow2230 rho ∧
    relationRow2231 rho ∧
    relationRow2232 rho ∧
    relationRow2233 rho ∧
    relationRow2234 rho ∧
    relationRow2235 rho ∧
    relationRow2236 rho ∧
    relationRow2237 rho ∧
    relationRow2238 rho ∧
    relationRow2239 rho

def relationPart28 (rho : Nat -> F) : Prop :=
    relationRow2240 rho ∧
    relationRow2241 rho ∧
    relationRow2242 rho ∧
    relationRow2243 rho ∧
    relationRow2244 rho ∧
    relationRow2245 rho ∧
    relationRow2246 rho ∧
    relationRow2247 rho ∧
    relationRow2248 rho ∧
    relationRow2249 rho ∧
    relationRow2250 rho ∧
    relationRow2251 rho ∧
    relationRow2252 rho ∧
    relationRow2253 rho ∧
    relationRow2254 rho ∧
    relationRow2255 rho ∧
    relationRow2256 rho ∧
    relationRow2257 rho ∧
    relationRow2258 rho ∧
    relationRow2259 rho ∧
    relationRow2260 rho ∧
    relationRow2261 rho ∧
    relationRow2262 rho ∧
    relationRow2263 rho ∧
    relationRow2264 rho ∧
    relationRow2265 rho ∧
    relationRow2266 rho ∧
    relationRow2267 rho ∧
    relationRow2268 rho ∧
    relationRow2269 rho ∧
    relationRow2270 rho ∧
    relationRow2271 rho ∧
    relationRow2272 rho ∧
    relationRow2273 rho ∧
    relationRow2274 rho ∧
    relationRow2275 rho ∧
    relationRow2276 rho ∧
    relationRow2277 rho ∧
    relationRow2278 rho ∧
    relationRow2279 rho ∧
    relationRow2280 rho ∧
    relationRow2281 rho ∧
    relationRow2282 rho ∧
    relationRow2283 rho ∧
    relationRow2284 rho ∧
    relationRow2285 rho ∧
    relationRow2286 rho ∧
    relationRow2287 rho ∧
    relationRow2288 rho ∧
    relationRow2289 rho ∧
    relationRow2290 rho ∧
    relationRow2291 rho ∧
    relationRow2292 rho ∧
    relationRow2293 rho ∧
    relationRow2294 rho ∧
    relationRow2295 rho ∧
    relationRow2296 rho ∧
    relationRow2297 rho ∧
    relationRow2298 rho ∧
    relationRow2299 rho ∧
    relationRow2300 rho ∧
    relationRow2301 rho ∧
    relationRow2302 rho ∧
    relationRow2303 rho ∧
    relationRow2304 rho ∧
    relationRow2305 rho ∧
    relationRow2306 rho ∧
    relationRow2307 rho ∧
    relationRow2308 rho ∧
    relationRow2309 rho ∧
    relationRow2310 rho ∧
    relationRow2311 rho ∧
    relationRow2312 rho ∧
    relationRow2313 rho ∧
    relationRow2314 rho ∧
    relationRow2315 rho ∧
    relationRow2316 rho ∧
    relationRow2317 rho ∧
    relationRow2318 rho ∧
    relationRow2319 rho

def relationPart29 (rho : Nat -> F) : Prop :=
    relationRow2320 rho ∧
    relationRow2321 rho ∧
    relationRow2322 rho ∧
    relationRow2323 rho ∧
    relationRow2324 rho ∧
    relationRow2325 rho ∧
    relationRow2326 rho ∧
    relationRow2327 rho ∧
    relationRow2328 rho ∧
    relationRow2329 rho ∧
    relationRow2330 rho ∧
    relationRow2331 rho ∧
    relationRow2332 rho ∧
    relationRow2333 rho ∧
    relationRow2334 rho ∧
    relationRow2335 rho ∧
    relationRow2336 rho ∧
    relationRow2337 rho ∧
    relationRow2338 rho ∧
    relationRow2339 rho ∧
    relationRow2340 rho ∧
    relationRow2341 rho ∧
    relationRow2342 rho ∧
    relationRow2343 rho ∧
    relationRow2344 rho ∧
    relationRow2345 rho ∧
    relationRow2346 rho ∧
    relationRow2347 rho ∧
    relationRow2348 rho ∧
    relationRow2349 rho ∧
    relationRow2350 rho ∧
    relationRow2351 rho ∧
    relationRow2352 rho ∧
    relationRow2353 rho ∧
    relationRow2354 rho ∧
    relationRow2355 rho ∧
    relationRow2356 rho ∧
    relationRow2357 rho ∧
    relationRow2358 rho ∧
    relationRow2359 rho ∧
    relationRow2360 rho ∧
    relationRow2361 rho ∧
    relationRow2362 rho ∧
    relationRow2363 rho ∧
    relationRow2364 rho ∧
    relationRow2365 rho ∧
    relationRow2366 rho ∧
    relationRow2367 rho ∧
    relationRow2368 rho ∧
    relationRow2369 rho ∧
    relationRow2370 rho ∧
    relationRow2371 rho ∧
    relationRow2372 rho ∧
    relationRow2373 rho ∧
    relationRow2374 rho ∧
    relationRow2375 rho ∧
    relationRow2376 rho ∧
    relationRow2377 rho ∧
    relationRow2378 rho ∧
    relationRow2379 rho ∧
    relationRow2380 rho ∧
    relationRow2381 rho ∧
    relationRow2382 rho ∧
    relationRow2383 rho ∧
    relationRow2384 rho ∧
    relationRow2385 rho ∧
    relationRow2386 rho ∧
    relationRow2387 rho ∧
    relationRow2388 rho ∧
    relationRow2389 rho ∧
    relationRow2390 rho ∧
    relationRow2391 rho ∧
    relationRow2392 rho ∧
    relationRow2393 rho ∧
    relationRow2394 rho ∧
    relationRow2395 rho ∧
    relationRow2396 rho ∧
    relationRow2397 rho ∧
    relationRow2398 rho ∧
    relationRow2399 rho

def relationPart30 (rho : Nat -> F) : Prop :=
    relationRow2400 rho ∧
    relationRow2401 rho ∧
    relationRow2402 rho ∧
    relationRow2403 rho ∧
    relationRow2404 rho ∧
    relationRow2405 rho ∧
    relationRow2406 rho ∧
    relationRow2407 rho ∧
    relationRow2408 rho ∧
    relationRow2409 rho ∧
    relationRow2410 rho ∧
    relationRow2411 rho ∧
    relationRow2412 rho ∧
    relationRow2413 rho ∧
    relationRow2414 rho ∧
    relationRow2415 rho ∧
    relationRow2416 rho ∧
    relationRow2417 rho ∧
    relationRow2418 rho ∧
    relationRow2419 rho ∧
    relationRow2420 rho ∧
    relationRow2421 rho ∧
    relationRow2422 rho ∧
    relationRow2423 rho ∧
    relationRow2424 rho ∧
    relationRow2425 rho ∧
    relationRow2426 rho ∧
    relationRow2427 rho ∧
    relationRow2428 rho ∧
    relationRow2429 rho ∧
    relationRow2430 rho ∧
    relationRow2431 rho ∧
    relationRow2432 rho ∧
    relationRow2433 rho ∧
    relationRow2434 rho ∧
    relationRow2435 rho ∧
    relationRow2436 rho ∧
    relationRow2437 rho ∧
    relationRow2438 rho ∧
    relationRow2439 rho ∧
    relationRow2440 rho ∧
    relationRow2441 rho ∧
    relationRow2442 rho ∧
    relationRow2443 rho ∧
    relationRow2444 rho ∧
    relationRow2445 rho ∧
    relationRow2446 rho ∧
    relationRow2447 rho ∧
    relationRow2448 rho ∧
    relationRow2449 rho ∧
    relationRow2450 rho ∧
    relationRow2451 rho ∧
    relationRow2452 rho ∧
    relationRow2453 rho ∧
    relationRow2454 rho ∧
    relationRow2455 rho ∧
    relationRow2456 rho ∧
    relationRow2457 rho ∧
    relationRow2458 rho ∧
    relationRow2459 rho ∧
    relationRow2460 rho ∧
    relationRow2461 rho ∧
    relationRow2462 rho ∧
    relationRow2463 rho ∧
    relationRow2464 rho ∧
    relationRow2465 rho ∧
    relationRow2466 rho ∧
    relationRow2467 rho ∧
    relationRow2468 rho ∧
    relationRow2469 rho ∧
    relationRow2470 rho ∧
    relationRow2471 rho ∧
    relationRow2472 rho ∧
    relationRow2473 rho ∧
    relationRow2474 rho ∧
    relationRow2475 rho ∧
    relationRow2476 rho ∧
    relationRow2477 rho ∧
    relationRow2478 rho ∧
    relationRow2479 rho

def relationPart31 (rho : Nat -> F) : Prop :=
    relationRow2480 rho ∧
    relationRow2481 rho ∧
    relationRow2482 rho ∧
    relationRow2483 rho ∧
    relationRow2484 rho ∧
    relationRow2485 rho ∧
    relationRow2486 rho ∧
    relationRow2487 rho ∧
    relationRow2488 rho ∧
    relationRow2489 rho ∧
    relationRow2490 rho ∧
    relationRow2491 rho ∧
    relationRow2492 rho ∧
    relationRow2493 rho ∧
    relationRow2494 rho ∧
    relationRow2495 rho ∧
    relationRow2496 rho ∧
    relationRow2497 rho ∧
    relationRow2498 rho ∧
    relationRow2499 rho ∧
    relationRow2500 rho ∧
    relationRow2501 rho ∧
    relationRow2502 rho ∧
    relationRow2503 rho ∧
    relationRow2504 rho ∧
    relationRow2505 rho ∧
    relationRow2506 rho ∧
    relationRow2507 rho ∧
    relationRow2508 rho ∧
    relationRow2509 rho ∧
    relationRow2510 rho ∧
    relationRow2511 rho ∧
    relationRow2512 rho ∧
    relationRow2513 rho ∧
    relationRow2514 rho ∧
    relationRow2515 rho ∧
    relationRow2516 rho ∧
    relationRow2517 rho ∧
    relationRow2518 rho ∧
    relationRow2519 rho ∧
    relationRow2520 rho ∧
    relationRow2521 rho ∧
    relationRow2522 rho ∧
    relationRow2523 rho ∧
    relationRow2524 rho ∧
    relationRow2525 rho ∧
    relationRow2526 rho ∧
    relationRow2527 rho ∧
    relationRow2528 rho ∧
    relationRow2529 rho ∧
    relationRow2530 rho ∧
    relationRow2531 rho ∧
    relationRow2532 rho ∧
    relationRow2533 rho ∧
    relationRow2534 rho ∧
    relationRow2535 rho ∧
    relationRow2536 rho ∧
    relationRow2537 rho ∧
    relationRow2538 rho ∧
    relationRow2539 rho ∧
    relationRow2540 rho ∧
    relationRow2541 rho ∧
    relationRow2542 rho ∧
    relationRow2543 rho ∧
    relationRow2544 rho ∧
    relationRow2545 rho ∧
    relationRow2546 rho ∧
    relationRow2547 rho ∧
    relationRow2548 rho ∧
    relationRow2549 rho ∧
    relationRow2550 rho ∧
    relationRow2551 rho ∧
    relationRow2552 rho ∧
    relationRow2553 rho ∧
    relationRow2554 rho ∧
    relationRow2555 rho ∧
    relationRow2556 rho ∧
    relationRow2557 rho ∧
    relationRow2558 rho ∧
    relationRow2559 rho

def relationPart32 (rho : Nat -> F) : Prop :=
    relationRow2560 rho ∧
    relationRow2561 rho ∧
    relationRow2562 rho ∧
    relationRow2563 rho ∧
    relationRow2564 rho ∧
    relationRow2565 rho ∧
    relationRow2566 rho ∧
    relationRow2567 rho ∧
    relationRow2568 rho ∧
    relationRow2569 rho ∧
    relationRow2570 rho ∧
    relationRow2571 rho ∧
    relationRow2572 rho ∧
    relationRow2573 rho ∧
    relationRow2574 rho ∧
    relationRow2575 rho ∧
    relationRow2576 rho ∧
    relationRow2577 rho ∧
    relationRow2578 rho ∧
    relationRow2579 rho ∧
    relationRow2580 rho ∧
    relationRow2581 rho ∧
    relationRow2582 rho ∧
    relationRow2583 rho ∧
    relationRow2584 rho ∧
    relationRow2585 rho ∧
    relationRow2586 rho ∧
    relationRow2587 rho ∧
    relationRow2588 rho ∧
    relationRow2589 rho ∧
    relationRow2590 rho ∧
    relationRow2591 rho ∧
    relationRow2592 rho ∧
    relationRow2593 rho ∧
    relationRow2594 rho ∧
    relationRow2595 rho ∧
    relationRow2596 rho ∧
    relationRow2597 rho ∧
    relationRow2598 rho ∧
    relationRow2599 rho ∧
    relationRow2600 rho ∧
    relationRow2601 rho ∧
    relationRow2602 rho ∧
    relationRow2603 rho ∧
    relationRow2604 rho ∧
    relationRow2605 rho ∧
    relationRow2606 rho ∧
    relationRow2607 rho ∧
    relationRow2608 rho ∧
    relationRow2609 rho ∧
    relationRow2610 rho ∧
    relationRow2611 rho ∧
    relationRow2612 rho ∧
    relationRow2613 rho ∧
    relationRow2614 rho ∧
    relationRow2615 rho ∧
    relationRow2616 rho ∧
    relationRow2617 rho ∧
    relationRow2618 rho ∧
    relationRow2619 rho ∧
    relationRow2620 rho ∧
    relationRow2621 rho ∧
    relationRow2622 rho ∧
    relationRow2623 rho ∧
    relationRow2624 rho ∧
    relationRow2625 rho ∧
    relationRow2626 rho ∧
    relationRow2627 rho ∧
    relationRow2628 rho ∧
    relationRow2629 rho ∧
    relationRow2630 rho ∧
    relationRow2631 rho ∧
    relationRow2632 rho ∧
    relationRow2633 rho ∧
    relationRow2634 rho ∧
    relationRow2635 rho ∧
    relationRow2636 rho ∧
    relationRow2637 rho ∧
    relationRow2638 rho ∧
    relationRow2639 rho

def relationPart33 (rho : Nat -> F) : Prop :=
    relationRow2640 rho ∧
    relationRow2641 rho ∧
    relationRow2642 rho ∧
    relationRow2643 rho ∧
    relationRow2644 rho ∧
    relationRow2645 rho ∧
    relationRow2646 rho ∧
    relationRow2647 rho ∧
    relationRow2648 rho ∧
    relationRow2649 rho ∧
    relationRow2650 rho ∧
    relationRow2651 rho ∧
    relationRow2652 rho ∧
    relationRow2653 rho ∧
    relationRow2654 rho ∧
    relationRow2655 rho ∧
    relationRow2656 rho ∧
    relationRow2657 rho ∧
    relationRow2658 rho ∧
    relationRow2659 rho ∧
    relationRow2660 rho ∧
    relationRow2661 rho ∧
    relationRow2662 rho ∧
    relationRow2663 rho ∧
    relationRow2664 rho ∧
    relationRow2665 rho ∧
    relationRow2666 rho ∧
    relationRow2667 rho ∧
    relationRow2668 rho ∧
    relationRow2669 rho ∧
    relationRow2670 rho ∧
    relationRow2671 rho ∧
    relationRow2672 rho ∧
    relationRow2673 rho ∧
    relationRow2674 rho ∧
    relationRow2675 rho ∧
    relationRow2676 rho ∧
    relationRow2677 rho ∧
    relationRow2678 rho ∧
    relationRow2679 rho ∧
    relationRow2680 rho ∧
    relationRow2681 rho ∧
    relationRow2682 rho ∧
    relationRow2683 rho ∧
    relationRow2684 rho ∧
    relationRow2685 rho ∧
    relationRow2686 rho ∧
    relationRow2687 rho ∧
    relationRow2688 rho ∧
    relationRow2689 rho ∧
    relationRow2690 rho ∧
    relationRow2691 rho ∧
    relationRow2692 rho ∧
    relationRow2693 rho ∧
    relationRow2694 rho ∧
    relationRow2695 rho ∧
    relationRow2696 rho ∧
    relationRow2697 rho ∧
    relationRow2698 rho ∧
    relationRow2699 rho ∧
    relationRow2700 rho ∧
    relationRow2701 rho ∧
    relationRow2702 rho ∧
    relationRow2703 rho ∧
    relationRow2704 rho ∧
    relationRow2705 rho ∧
    relationRow2706 rho ∧
    relationRow2707 rho ∧
    relationRow2708 rho ∧
    relationRow2709 rho ∧
    relationRow2710 rho ∧
    relationRow2711 rho ∧
    relationRow2712 rho ∧
    relationRow2713 rho ∧
    relationRow2714 rho ∧
    relationRow2715 rho ∧
    relationRow2716 rho ∧
    relationRow2717 rho ∧
    relationRow2718 rho ∧
    relationRow2719 rho

def relationPart34 (rho : Nat -> F) : Prop :=
    relationRow2720 rho ∧
    relationRow2721 rho ∧
    relationRow2722 rho ∧
    relationRow2723 rho ∧
    relationRow2724 rho ∧
    relationRow2725 rho ∧
    relationRow2726 rho ∧
    relationRow2727 rho ∧
    relationRow2728 rho ∧
    relationRow2729 rho ∧
    relationRow2730 rho ∧
    relationRow2731 rho ∧
    relationRow2732 rho ∧
    relationRow2733 rho ∧
    relationRow2734 rho ∧
    relationRow2735 rho ∧
    relationRow2736 rho ∧
    relationRow2737 rho ∧
    relationRow2738 rho ∧
    relationRow2739 rho ∧
    relationRow2740 rho ∧
    relationRow2741 rho ∧
    relationRow2742 rho ∧
    relationRow2743 rho ∧
    relationRow2744 rho ∧
    relationRow2745 rho ∧
    relationRow2746 rho ∧
    relationRow2747 rho ∧
    relationRow2748 rho ∧
    relationRow2749 rho ∧
    relationRow2750 rho ∧
    relationRow2751 rho ∧
    relationRow2752 rho ∧
    relationRow2753 rho ∧
    relationRow2754 rho ∧
    relationRow2755 rho ∧
    relationRow2756 rho ∧
    relationRow2757 rho ∧
    relationRow2758 rho ∧
    relationRow2759 rho ∧
    relationRow2760 rho ∧
    relationRow2761 rho ∧
    relationRow2762 rho ∧
    relationRow2763 rho ∧
    relationRow2764 rho ∧
    relationRow2765 rho ∧
    relationRow2766 rho ∧
    relationRow2767 rho ∧
    relationRow2768 rho ∧
    relationRow2769 rho ∧
    relationRow2770 rho ∧
    relationRow2771 rho ∧
    relationRow2772 rho ∧
    relationRow2773 rho ∧
    relationRow2774 rho ∧
    relationRow2775 rho ∧
    relationRow2776 rho ∧
    relationRow2777 rho ∧
    relationRow2778 rho ∧
    relationRow2779 rho ∧
    relationRow2780 rho ∧
    relationRow2781 rho ∧
    relationRow2782 rho ∧
    relationRow2783 rho ∧
    relationRow2784 rho ∧
    relationRow2785 rho ∧
    relationRow2786 rho ∧
    relationRow2787 rho ∧
    relationRow2788 rho ∧
    relationRow2789 rho ∧
    relationRow2790 rho ∧
    relationRow2791 rho ∧
    relationRow2792 rho ∧
    relationRow2793 rho ∧
    relationRow2794 rho ∧
    relationRow2795 rho ∧
    relationRow2796 rho ∧
    relationRow2797 rho ∧
    relationRow2798 rho ∧
    relationRow2799 rho

def relationPart35 (rho : Nat -> F) : Prop :=
    relationRow2800 rho ∧
    relationRow2801 rho ∧
    relationRow2802 rho ∧
    relationRow2803 rho ∧
    relationRow2804 rho ∧
    relationRow2805 rho ∧
    relationRow2806 rho ∧
    relationRow2807 rho ∧
    relationRow2808 rho ∧
    relationRow2809 rho ∧
    relationRow2810 rho ∧
    relationRow2811 rho ∧
    relationRow2812 rho ∧
    relationRow2813 rho ∧
    relationRow2814 rho ∧
    relationRow2815 rho ∧
    relationRow2816 rho ∧
    relationRow2817 rho ∧
    relationRow2818 rho ∧
    relationRow2819 rho ∧
    relationRow2820 rho ∧
    relationRow2821 rho ∧
    relationRow2822 rho ∧
    relationRow2823 rho ∧
    relationRow2824 rho ∧
    relationRow2825 rho ∧
    relationRow2826 rho ∧
    relationRow2827 rho ∧
    relationRow2828 rho ∧
    relationRow2829 rho ∧
    relationRow2830 rho ∧
    relationRow2831 rho ∧
    relationRow2832 rho ∧
    relationRow2833 rho ∧
    relationRow2834 rho ∧
    relationRow2835 rho ∧
    relationRow2836 rho ∧
    relationRow2837 rho ∧
    relationRow2838 rho ∧
    relationRow2839 rho ∧
    relationRow2840 rho ∧
    relationRow2841 rho ∧
    relationRow2842 rho ∧
    relationRow2843 rho ∧
    relationRow2844 rho ∧
    relationRow2845 rho ∧
    relationRow2846 rho ∧
    relationRow2847 rho ∧
    relationRow2848 rho ∧
    relationRow2849 rho ∧
    relationRow2850 rho ∧
    relationRow2851 rho ∧
    relationRow2852 rho ∧
    relationRow2853 rho ∧
    relationRow2854 rho ∧
    relationRow2855 rho ∧
    relationRow2856 rho ∧
    relationRow2857 rho ∧
    relationRow2858 rho ∧
    relationRow2859 rho ∧
    relationRow2860 rho ∧
    relationRow2861 rho ∧
    relationRow2862 rho ∧
    relationRow2863 rho ∧
    relationRow2864 rho ∧
    relationRow2865 rho ∧
    relationRow2866 rho ∧
    relationRow2867 rho ∧
    relationRow2868 rho ∧
    relationRow2869 rho ∧
    relationRow2870 rho ∧
    relationRow2871 rho ∧
    relationRow2872 rho ∧
    relationRow2873 rho ∧
    relationRow2874 rho ∧
    relationRow2875 rho ∧
    relationRow2876 rho ∧
    relationRow2877 rho ∧
    relationRow2878 rho ∧
    relationRow2879 rho

def relationPart36 (rho : Nat -> F) : Prop :=
    relationRow2880 rho ∧
    relationRow2881 rho ∧
    relationRow2882 rho ∧
    relationRow2883 rho ∧
    relationRow2884 rho ∧
    relationRow2885 rho ∧
    relationRow2886 rho ∧
    relationRow2887 rho ∧
    relationRow2888 rho ∧
    relationRow2889 rho ∧
    relationRow2890 rho ∧
    relationRow2891 rho ∧
    relationRow2892 rho ∧
    relationRow2893 rho ∧
    relationRow2894 rho ∧
    relationRow2895 rho ∧
    relationRow2896 rho ∧
    relationRow2897 rho ∧
    relationRow2898 rho ∧
    relationRow2899 rho ∧
    relationRow2900 rho ∧
    relationRow2901 rho ∧
    relationRow2902 rho ∧
    relationRow2903 rho ∧
    relationRow2904 rho ∧
    relationRow2905 rho ∧
    relationRow2906 rho ∧
    relationRow2907 rho ∧
    relationRow2908 rho ∧
    relationRow2909 rho ∧
    relationRow2910 rho ∧
    relationRow2911 rho ∧
    relationRow2912 rho ∧
    relationRow2913 rho ∧
    relationRow2914 rho ∧
    relationRow2915 rho ∧
    relationRow2916 rho ∧
    relationRow2917 rho ∧
    relationRow2918 rho ∧
    relationRow2919 rho ∧
    relationRow2920 rho ∧
    relationRow2921 rho ∧
    relationRow2922 rho ∧
    relationRow2923 rho ∧
    relationRow2924 rho ∧
    relationRow2925 rho ∧
    relationRow2926 rho ∧
    relationRow2927 rho ∧
    relationRow2928 rho ∧
    relationRow2929 rho ∧
    relationRow2930 rho ∧
    relationRow2931 rho ∧
    relationRow2932 rho ∧
    relationRow2933 rho ∧
    relationRow2934 rho ∧
    relationRow2935 rho ∧
    relationRow2936 rho ∧
    relationRow2937 rho ∧
    relationRow2938 rho ∧
    relationRow2939 rho ∧
    relationRow2940 rho ∧
    relationRow2941 rho ∧
    relationRow2942 rho ∧
    relationRow2943 rho ∧
    relationRow2944 rho ∧
    relationRow2945 rho ∧
    relationRow2946 rho ∧
    relationRow2947 rho ∧
    relationRow2948 rho ∧
    relationRow2949 rho ∧
    relationRow2950 rho ∧
    relationRow2951 rho ∧
    relationRow2952 rho ∧
    relationRow2953 rho ∧
    relationRow2954 rho ∧
    relationRow2955 rho ∧
    relationRow2956 rho ∧
    relationRow2957 rho ∧
    relationRow2958 rho ∧
    relationRow2959 rho

def relationPart37 (rho : Nat -> F) : Prop :=
    relationRow2960 rho ∧
    relationRow2961 rho ∧
    relationRow2962 rho ∧
    relationRow2963 rho ∧
    relationRow2964 rho ∧
    relationRow2965 rho ∧
    relationRow2966 rho ∧
    relationRow2967 rho ∧
    relationRow2968 rho ∧
    relationRow2969 rho ∧
    relationRow2970 rho ∧
    relationRow2971 rho ∧
    relationRow2972 rho ∧
    relationRow2973 rho ∧
    relationRow2974 rho ∧
    relationRow2975 rho ∧
    relationRow2976 rho ∧
    relationRow2977 rho ∧
    relationRow2978 rho ∧
    relationRow2979 rho ∧
    relationRow2980 rho ∧
    relationRow2981 rho ∧
    relationRow2982 rho ∧
    relationRow2983 rho ∧
    relationRow2984 rho ∧
    relationRow2985 rho ∧
    relationRow2986 rho ∧
    relationRow2987 rho ∧
    relationRow2988 rho ∧
    relationRow2989 rho ∧
    relationRow2990 rho ∧
    relationRow2991 rho ∧
    relationRow2992 rho ∧
    relationRow2993 rho ∧
    relationRow2994 rho ∧
    relationRow2995 rho ∧
    relationRow2996 rho ∧
    relationRow2997 rho ∧
    relationRow2998 rho ∧
    relationRow2999 rho ∧
    relationRow3000 rho ∧
    relationRow3001 rho ∧
    relationRow3002 rho ∧
    relationRow3003 rho ∧
    relationRow3004 rho ∧
    relationRow3005 rho ∧
    relationRow3006 rho ∧
    relationRow3007 rho ∧
    relationRow3008 rho ∧
    relationRow3009 rho ∧
    relationRow3010 rho ∧
    relationRow3011 rho ∧
    relationRow3012 rho ∧
    relationRow3013 rho ∧
    relationRow3014 rho ∧
    relationRow3015 rho ∧
    relationRow3016 rho ∧
    relationRow3017 rho ∧
    relationRow3018 rho ∧
    relationRow3019 rho ∧
    relationRow3020 rho ∧
    relationRow3021 rho ∧
    relationRow3022 rho ∧
    relationRow3023 rho ∧
    relationRow3024 rho ∧
    relationRow3025 rho ∧
    relationRow3026 rho ∧
    relationRow3027 rho ∧
    relationRow3028 rho ∧
    relationRow3029 rho ∧
    relationRow3030 rho ∧
    relationRow3031 rho ∧
    relationRow3032 rho ∧
    relationRow3033 rho ∧
    relationRow3034 rho ∧
    relationRow3035 rho ∧
    relationRow3036 rho ∧
    relationRow3037 rho ∧
    relationRow3038 rho ∧
    relationRow3039 rho

def relationPart38 (rho : Nat -> F) : Prop :=
    relationRow3040 rho ∧
    relationRow3041 rho ∧
    relationRow3042 rho ∧
    relationRow3043 rho ∧
    relationRow3044 rho ∧
    relationRow3045 rho ∧
    relationRow3046 rho ∧
    relationRow3047 rho ∧
    relationRow3048 rho ∧
    relationRow3049 rho ∧
    relationRow3050 rho ∧
    relationRow3051 rho ∧
    relationRow3052 rho ∧
    relationRow3053 rho ∧
    relationRow3054 rho ∧
    relationRow3055 rho ∧
    relationRow3056 rho ∧
    relationRow3057 rho ∧
    relationRow3058 rho ∧
    relationRow3059 rho ∧
    relationRow3060 rho ∧
    relationRow3061 rho ∧
    relationRow3062 rho ∧
    relationRow3063 rho ∧
    relationRow3064 rho ∧
    relationRow3065 rho ∧
    relationRow3066 rho ∧
    relationRow3067 rho ∧
    relationRow3068 rho ∧
    relationRow3069 rho ∧
    relationRow3070 rho ∧
    relationRow3071 rho ∧
    relationRow3072 rho ∧
    relationRow3073 rho ∧
    relationRow3074 rho ∧
    relationRow3075 rho ∧
    relationRow3076 rho ∧
    relationRow3077 rho ∧
    relationRow3078 rho ∧
    relationRow3079 rho ∧
    relationRow3080 rho ∧
    relationRow3081 rho ∧
    relationRow3082 rho ∧
    relationRow3083 rho ∧
    relationRow3084 rho ∧
    relationRow3085 rho ∧
    relationRow3086 rho ∧
    relationRow3087 rho ∧
    relationRow3088 rho ∧
    relationRow3089 rho ∧
    relationRow3090 rho ∧
    relationRow3091 rho ∧
    relationRow3092 rho ∧
    relationRow3093 rho ∧
    relationRow3094 rho ∧
    relationRow3095 rho ∧
    relationRow3096 rho ∧
    relationRow3097 rho ∧
    relationRow3098 rho ∧
    relationRow3099 rho ∧
    relationRow3100 rho ∧
    relationRow3101 rho ∧
    relationRow3102 rho ∧
    relationRow3103 rho ∧
    relationRow3104 rho ∧
    relationRow3105 rho ∧
    relationRow3106 rho ∧
    relationRow3107 rho ∧
    relationRow3108 rho ∧
    relationRow3109 rho ∧
    relationRow3110 rho ∧
    relationRow3111 rho ∧
    relationRow3112 rho ∧
    relationRow3113 rho ∧
    relationRow3114 rho ∧
    relationRow3115 rho ∧
    relationRow3116 rho ∧
    relationRow3117 rho ∧
    relationRow3118 rho ∧
    relationRow3119 rho

def relationPart39 (rho : Nat -> F) : Prop :=
    relationRow3120 rho ∧
    relationRow3121 rho ∧
    relationRow3122 rho ∧
    relationRow3123 rho ∧
    relationRow3124 rho ∧
    relationRow3125 rho ∧
    relationRow3126 rho ∧
    relationRow3127 rho ∧
    relationRow3128 rho ∧
    relationRow3129 rho ∧
    relationRow3130 rho ∧
    relationRow3131 rho ∧
    relationRow3132 rho ∧
    relationRow3133 rho ∧
    relationRow3134 rho ∧
    relationRow3135 rho ∧
    relationRow3136 rho ∧
    relationRow3137 rho ∧
    relationRow3138 rho ∧
    relationRow3139 rho ∧
    relationRow3140 rho ∧
    relationRow3141 rho ∧
    relationRow3142 rho ∧
    relationRow3143 rho ∧
    relationRow3144 rho ∧
    relationRow3145 rho ∧
    relationRow3146 rho ∧
    relationRow3147 rho ∧
    relationRow3148 rho ∧
    relationRow3149 rho ∧
    relationRow3150 rho ∧
    relationRow3151 rho ∧
    relationRow3152 rho ∧
    relationRow3153 rho ∧
    relationRow3154 rho ∧
    relationRow3155 rho ∧
    relationRow3156 rho ∧
    relationRow3157 rho ∧
    relationRow3158 rho ∧
    relationRow3159 rho ∧
    relationRow3160 rho ∧
    relationRow3161 rho ∧
    relationRow3162 rho ∧
    relationRow3163 rho ∧
    relationRow3164 rho ∧
    relationRow3165 rho ∧
    relationRow3166 rho ∧
    relationRow3167 rho ∧
    relationRow3168 rho ∧
    relationRow3169 rho ∧
    relationRow3170 rho ∧
    relationRow3171 rho ∧
    relationRow3172 rho ∧
    relationRow3173 rho ∧
    relationRow3174 rho ∧
    relationRow3175 rho ∧
    relationRow3176 rho ∧
    relationRow3177 rho ∧
    relationRow3178 rho ∧
    relationRow3179 rho ∧
    relationRow3180 rho ∧
    relationRow3181 rho ∧
    relationRow3182 rho ∧
    relationRow3183 rho ∧
    relationRow3184 rho ∧
    relationRow3185 rho ∧
    relationRow3186 rho ∧
    relationRow3187 rho ∧
    relationRow3188 rho ∧
    relationRow3189 rho ∧
    relationRow3190 rho ∧
    relationRow3191 rho ∧
    relationRow3192 rho ∧
    relationRow3193 rho ∧
    relationRow3194 rho ∧
    relationRow3195 rho ∧
    relationRow3196 rho ∧
    relationRow3197 rho ∧
    relationRow3198 rho ∧
    relationRow3199 rho

def relationPart40 (rho : Nat -> F) : Prop :=
    relationRow3200 rho ∧
    relationRow3201 rho ∧
    relationRow3202 rho ∧
    relationRow3203 rho ∧
    relationRow3204 rho ∧
    relationRow3205 rho ∧
    relationRow3206 rho ∧
    relationRow3207 rho ∧
    relationRow3208 rho ∧
    relationRow3209 rho ∧
    relationRow3210 rho ∧
    relationRow3211 rho ∧
    relationRow3212 rho ∧
    relationRow3213 rho ∧
    relationRow3214 rho ∧
    relationRow3215 rho ∧
    relationRow3216 rho ∧
    relationRow3217 rho ∧
    relationRow3218 rho ∧
    relationRow3219 rho ∧
    relationRow3220 rho ∧
    relationRow3221 rho ∧
    relationRow3222 rho ∧
    relationRow3223 rho ∧
    relationRow3224 rho ∧
    relationRow3225 rho ∧
    relationRow3226 rho ∧
    relationRow3227 rho ∧
    relationRow3228 rho ∧
    relationRow3229 rho ∧
    relationRow3230 rho ∧
    relationRow3231 rho ∧
    relationRow3232 rho ∧
    relationRow3233 rho ∧
    relationRow3234 rho ∧
    relationRow3235 rho ∧
    relationRow3236 rho ∧
    relationRow3237 rho ∧
    relationRow3238 rho ∧
    relationRow3239 rho ∧
    relationRow3240 rho ∧
    relationRow3241 rho ∧
    relationRow3242 rho ∧
    relationRow3243 rho ∧
    relationRow3244 rho ∧
    relationRow3245 rho ∧
    relationRow3246 rho ∧
    relationRow3247 rho ∧
    relationRow3248 rho ∧
    relationRow3249 rho ∧
    relationRow3250 rho ∧
    relationRow3251 rho ∧
    relationRow3252 rho ∧
    relationRow3253 rho ∧
    relationRow3254 rho ∧
    relationRow3255 rho ∧
    relationRow3256 rho ∧
    relationRow3257 rho ∧
    relationRow3258 rho ∧
    relationRow3259 rho ∧
    relationRow3260 rho ∧
    relationRow3261 rho ∧
    relationRow3262 rho ∧
    relationRow3263 rho ∧
    relationRow3264 rho ∧
    relationRow3265 rho ∧
    relationRow3266 rho ∧
    relationRow3267 rho ∧
    relationRow3268 rho ∧
    relationRow3269 rho ∧
    relationRow3270 rho ∧
    relationRow3271 rho ∧
    relationRow3272 rho ∧
    relationRow3273 rho ∧
    relationRow3274 rho ∧
    relationRow3275 rho ∧
    relationRow3276 rho ∧
    relationRow3277 rho ∧
    relationRow3278 rho ∧
    relationRow3279 rho

def relationPart41 (rho : Nat -> F) : Prop :=
    relationRow3280 rho ∧
    relationRow3281 rho ∧
    relationRow3282 rho ∧
    relationRow3283 rho ∧
    relationRow3284 rho ∧
    relationRow3285 rho ∧
    relationRow3286 rho ∧
    relationRow3287 rho ∧
    relationRow3288 rho ∧
    relationRow3289 rho ∧
    relationRow3290 rho ∧
    relationRow3291 rho ∧
    relationRow3292 rho ∧
    relationRow3293 rho ∧
    relationRow3294 rho ∧
    relationRow3295 rho ∧
    relationRow3296 rho ∧
    relationRow3297 rho ∧
    relationRow3298 rho ∧
    relationRow3299 rho ∧
    relationRow3300 rho ∧
    relationRow3301 rho ∧
    relationRow3302 rho ∧
    relationRow3303 rho ∧
    relationRow3304 rho ∧
    relationRow3305 rho ∧
    relationRow3306 rho ∧
    relationRow3307 rho ∧
    relationRow3308 rho ∧
    relationRow3309 rho ∧
    relationRow3310 rho ∧
    relationRow3311 rho ∧
    relationRow3312 rho ∧
    relationRow3313 rho ∧
    relationRow3314 rho ∧
    relationRow3315 rho ∧
    relationRow3316 rho ∧
    relationRow3317 rho ∧
    relationRow3318 rho ∧
    relationRow3319 rho ∧
    relationRow3320 rho ∧
    relationRow3321 rho ∧
    relationRow3322 rho ∧
    relationRow3323 rho ∧
    relationRow3324 rho ∧
    relationRow3325 rho ∧
    relationRow3326 rho ∧
    relationRow3327 rho ∧
    relationRow3328 rho ∧
    relationRow3329 rho ∧
    relationRow3330 rho ∧
    relationRow3331 rho ∧
    relationRow3332 rho ∧
    relationRow3333 rho ∧
    relationRow3334 rho ∧
    relationRow3335 rho ∧
    relationRow3336 rho ∧
    relationRow3337 rho ∧
    relationRow3338 rho ∧
    relationRow3339 rho ∧
    relationRow3340 rho ∧
    relationRow3341 rho ∧
    relationRow3342 rho ∧
    relationRow3343 rho ∧
    relationRow3344 rho ∧
    relationRow3345 rho ∧
    relationRow3346 rho ∧
    relationRow3347 rho ∧
    relationRow3348 rho ∧
    relationRow3349 rho ∧
    relationRow3350 rho ∧
    relationRow3351 rho ∧
    relationRow3352 rho ∧
    relationRow3353 rho ∧
    relationRow3354 rho ∧
    relationRow3355 rho ∧
    relationRow3356 rho ∧
    relationRow3357 rho ∧
    relationRow3358 rho ∧
    relationRow3359 rho

def relationPart42 (rho : Nat -> F) : Prop :=
    relationRow3360 rho ∧
    relationRow3361 rho ∧
    relationRow3362 rho ∧
    relationRow3363 rho ∧
    relationRow3364 rho ∧
    relationRow3365 rho ∧
    relationRow3366 rho ∧
    relationRow3367 rho ∧
    relationRow3368 rho ∧
    relationRow3369 rho ∧
    relationRow3370 rho ∧
    relationRow3371 rho ∧
    relationRow3372 rho ∧
    relationRow3373 rho ∧
    relationRow3374 rho ∧
    relationRow3375 rho ∧
    relationRow3376 rho ∧
    relationRow3377 rho ∧
    relationRow3378 rho ∧
    relationRow3379 rho ∧
    relationRow3380 rho ∧
    relationRow3381 rho ∧
    relationRow3382 rho ∧
    relationRow3383 rho ∧
    relationRow3384 rho ∧
    relationRow3385 rho ∧
    relationRow3386 rho ∧
    relationRow3387 rho ∧
    relationRow3388 rho ∧
    relationRow3389 rho ∧
    relationRow3390 rho ∧
    relationRow3391 rho ∧
    relationRow3392 rho ∧
    relationRow3393 rho ∧
    relationRow3394 rho ∧
    relationRow3395 rho ∧
    relationRow3396 rho ∧
    relationRow3397 rho ∧
    relationRow3398 rho ∧
    relationRow3399 rho ∧
    relationRow3400 rho ∧
    relationRow3401 rho ∧
    relationRow3402 rho ∧
    relationRow3403 rho ∧
    relationRow3404 rho ∧
    relationRow3405 rho ∧
    relationRow3406 rho ∧
    relationRow3407 rho ∧
    relationRow3408 rho ∧
    relationRow3409 rho ∧
    relationRow3410 rho ∧
    relationRow3411 rho ∧
    relationRow3412 rho ∧
    relationRow3413 rho ∧
    relationRow3414 rho ∧
    relationRow3415 rho ∧
    relationRow3416 rho ∧
    relationRow3417 rho ∧
    relationRow3418 rho ∧
    relationRow3419 rho ∧
    relationRow3420 rho ∧
    relationRow3421 rho ∧
    relationRow3422 rho ∧
    relationRow3423 rho ∧
    relationRow3424 rho ∧
    relationRow3425 rho ∧
    relationRow3426 rho ∧
    relationRow3427 rho ∧
    relationRow3428 rho ∧
    relationRow3429 rho ∧
    relationRow3430 rho ∧
    relationRow3431 rho ∧
    relationRow3432 rho ∧
    relationRow3433 rho ∧
    relationRow3434 rho ∧
    relationRow3435 rho ∧
    relationRow3436 rho ∧
    relationRow3437 rho ∧
    relationRow3438 rho ∧
    relationRow3439 rho

def relationPart43 (rho : Nat -> F) : Prop :=
    relationRow3440 rho ∧
    relationRow3441 rho ∧
    relationRow3442 rho ∧
    relationRow3443 rho ∧
    relationRow3444 rho ∧
    relationRow3445 rho ∧
    relationRow3446 rho ∧
    relationRow3447 rho ∧
    relationRow3448 rho ∧
    relationRow3449 rho ∧
    relationRow3450 rho ∧
    relationRow3451 rho ∧
    relationRow3452 rho ∧
    relationRow3453 rho ∧
    relationRow3454 rho ∧
    relationRow3455 rho ∧
    relationRow3456 rho ∧
    relationRow3457 rho ∧
    relationRow3458 rho ∧
    relationRow3459 rho ∧
    relationRow3460 rho ∧
    relationRow3461 rho ∧
    relationRow3462 rho ∧
    relationRow3463 rho ∧
    relationRow3464 rho ∧
    relationRow3465 rho ∧
    relationRow3466 rho ∧
    relationRow3467 rho ∧
    relationRow3468 rho ∧
    relationRow3469 rho ∧
    relationRow3470 rho ∧
    relationRow3471 rho ∧
    relationRow3472 rho ∧
    relationRow3473 rho ∧
    relationRow3474 rho ∧
    relationRow3475 rho ∧
    relationRow3476 rho ∧
    relationRow3477 rho ∧
    relationRow3478 rho ∧
    relationRow3479 rho ∧
    relationRow3480 rho ∧
    relationRow3481 rho ∧
    relationRow3482 rho ∧
    relationRow3483 rho ∧
    relationRow3484 rho ∧
    relationRow3485 rho ∧
    relationRow3486 rho ∧
    relationRow3487 rho ∧
    relationRow3488 rho ∧
    relationRow3489 rho ∧
    relationRow3490 rho ∧
    relationRow3491 rho ∧
    relationRow3492 rho ∧
    relationRow3493 rho ∧
    relationRow3494 rho ∧
    relationRow3495 rho ∧
    relationRow3496 rho ∧
    relationRow3497 rho ∧
    relationRow3498 rho ∧
    relationRow3499 rho ∧
    relationRow3500 rho ∧
    relationRow3501 rho ∧
    relationRow3502 rho ∧
    relationRow3503 rho ∧
    relationRow3504 rho ∧
    relationRow3505 rho ∧
    relationRow3506 rho ∧
    relationRow3507 rho ∧
    relationRow3508 rho ∧
    relationRow3509 rho ∧
    relationRow3510 rho ∧
    relationRow3511 rho ∧
    relationRow3512 rho ∧
    relationRow3513 rho ∧
    relationRow3514 rho ∧
    relationRow3515 rho ∧
    relationRow3516 rho ∧
    relationRow3517 rho ∧
    relationRow3518 rho ∧
    relationRow3519 rho

def relationPart44 (rho : Nat -> F) : Prop :=
    relationRow3520 rho ∧
    relationRow3521 rho ∧
    relationRow3522 rho ∧
    relationRow3523 rho ∧
    relationRow3524 rho ∧
    relationRow3525 rho ∧
    relationRow3526 rho ∧
    relationRow3527 rho ∧
    relationRow3528 rho ∧
    relationRow3529 rho ∧
    relationRow3530 rho ∧
    relationRow3531 rho ∧
    relationRow3532 rho ∧
    relationRow3533 rho ∧
    relationRow3534 rho ∧
    relationRow3535 rho ∧
    relationRow3536 rho ∧
    relationRow3537 rho ∧
    relationRow3538 rho ∧
    relationRow3539 rho ∧
    relationRow3540 rho ∧
    relationRow3541 rho ∧
    relationRow3542 rho ∧
    relationRow3543 rho ∧
    relationRow3544 rho ∧
    relationRow3545 rho ∧
    relationRow3546 rho ∧
    relationRow3547 rho ∧
    relationRow3548 rho ∧
    relationRow3549 rho ∧
    relationRow3550 rho ∧
    relationRow3551 rho ∧
    relationRow3552 rho ∧
    relationRow3553 rho ∧
    relationRow3554 rho ∧
    relationRow3555 rho ∧
    relationRow3556 rho ∧
    relationRow3557 rho ∧
    relationRow3558 rho ∧
    relationRow3559 rho ∧
    relationRow3560 rho ∧
    relationRow3561 rho ∧
    relationRow3562 rho ∧
    relationRow3563 rho ∧
    relationRow3564 rho ∧
    relationRow3565 rho ∧
    relationRow3566 rho ∧
    relationRow3567 rho ∧
    relationRow3568 rho ∧
    relationRow3569 rho ∧
    relationRow3570 rho ∧
    relationRow3571 rho ∧
    relationRow3572 rho ∧
    relationRow3573 rho ∧
    relationRow3574 rho ∧
    relationRow3575 rho ∧
    relationRow3576 rho ∧
    relationRow3577 rho ∧
    relationRow3578 rho ∧
    relationRow3579 rho ∧
    relationRow3580 rho ∧
    relationRow3581 rho ∧
    relationRow3582 rho ∧
    relationRow3583 rho ∧
    relationRow3584 rho ∧
    relationRow3585 rho ∧
    relationRow3586 rho ∧
    relationRow3587 rho ∧
    relationRow3588 rho ∧
    relationRow3589 rho ∧
    relationRow3590 rho ∧
    relationRow3591 rho ∧
    relationRow3592 rho ∧
    relationRow3593 rho ∧
    relationRow3594 rho ∧
    relationRow3595 rho ∧
    relationRow3596 rho ∧
    relationRow3597 rho ∧
    relationRow3598 rho ∧
    relationRow3599 rho

def relationPart45 (rho : Nat -> F) : Prop :=
    relationRow3600 rho ∧
    relationRow3601 rho ∧
    relationRow3602 rho ∧
    relationRow3603 rho ∧
    relationRow3604 rho ∧
    relationRow3605 rho ∧
    relationRow3606 rho ∧
    relationRow3607 rho ∧
    relationRow3608 rho ∧
    relationRow3609 rho

def relation (rho : Nat -> F) : Prop :=
    relationPart0 rho ∧
    relationPart1 rho ∧
    relationPart2 rho ∧
    relationPart3 rho ∧
    relationPart4 rho ∧
    relationPart5 rho ∧
    relationPart6 rho ∧
    relationPart7 rho ∧
    relationPart8 rho ∧
    relationPart9 rho ∧
    relationPart10 rho ∧
    relationPart11 rho ∧
    relationPart12 rho ∧
    relationPart13 rho ∧
    relationPart14 rho ∧
    relationPart15 rho ∧
    relationPart16 rho ∧
    relationPart17 rho ∧
    relationPart18 rho ∧
    relationPart19 rho ∧
    relationPart20 rho ∧
    relationPart21 rho ∧
    relationPart22 rho ∧
    relationPart23 rho ∧
    relationPart24 rho ∧
    relationPart25 rho ∧
    relationPart26 rho ∧
    relationPart27 rho ∧
    relationPart28 rho ∧
    relationPart29 rho ∧
    relationPart30 rho ∧
    relationPart31 rho ∧
    relationPart32 rho ∧
    relationPart33 rho ∧
    relationPart34 rho ∧
    relationPart35 rho ∧
    relationPart36 rho ∧
    relationPart37 rho ∧
    relationPart38 rho ∧
    relationPart39 rho ∧
    relationPart40 rho ∧
    relationPart41 rho ∧
    relationPart42 rho ∧
    relationPart43 rho ∧
    relationPart44 rho ∧
    relationPart45 rho

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec73 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 73,
relationSha256Hex := "fc65951b67a92a9cc27edd53a4086fa84650159faafac1c90590ef4ff2ac1bfd",
wireRoleSha256Hex := "d40a6f615f0b5baa7584e01c39fc8f252d5299441b6804128847c613e278dfe2",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg73
