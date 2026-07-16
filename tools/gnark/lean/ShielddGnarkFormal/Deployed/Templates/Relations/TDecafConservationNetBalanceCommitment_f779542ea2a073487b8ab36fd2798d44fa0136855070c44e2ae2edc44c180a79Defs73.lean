import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs72

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationRow2433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 894) * (relationLc1495 rho) = ((1 : F) * rho 2433)

def relationLc1496 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 98⟩], residual := [((1 : F), 2432), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 894) * (relationLc1496 rho) = ((1 : F) * rho 2434)

def relationLc1497 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 99⟩, ⟨(1 : F), 1650, 8, 99⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2435 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1497 rho) = ((1 : F) * rho 2435)

def relationLc1498 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4293681703212942226241860119445843202620766590413090406420978233149069990778 : F), 901, 5, 149⟩, ⟨(4293681703212942226241860119445843202620766590413090406420978233149069990778 : F), 1649, 8, 99⟩], residual := [((1305409244711178263509137317536703823855434028379551891190204949390309402401 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1499 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6040287128678729511763090676601340065858477829358795237452282720529066134675 : F), runs := [⟨(6040287128678729511763090676601340065858477829358795237452282720529066134675 : F), 902, 5, 149⟩, ⟨(6040287128678729511763090676601340065858477829358795237452282720529066134675 : F), 1650, 8, 99⟩], residual := [((7669045227694257730776453443358451663824146133794592849966096451796486309872 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2436 (rho : Nat -> F) : Prop :=
    (relationLc1498 rho) * (relationLc1499 rho) = ((1 : F) * rho 2436)

def relationLc1500 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6040287128678729511763090676601340065858477829358795237452282720529066134675 : F), runs := [⟨(211065313773697690845714574818954595516654490806675894571851535063540139993 : F), 901, 5, 149⟩, ⟨(211065313773697690845714574818954595516654490806675894571851535063540139993 : F), 1649, 8, 99⟩, ⟨(6040287128678729511763090676601340065858477829358795237452282720529066134675 : F), 902, 5, 149⟩, ⟨(6040287128678729511763090676601340065858477829358795237452282720529066134675 : F), 1650, 8, 99⟩], residual := [((1687634193423485956652330228636514267822633673284391909916374707104706944713 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2437 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1500 rho) = ((1 : F) * rho 2437)

def relationRow2438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2438) * ((1 : F) + (1 : F) * rho 2436) = ((1 : F) * rho 2437)

def relationLc1501 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2404174620749640912485734262180206465517421505795268590482950735388343104366 : F), runs := [⟨(2404174620749640912485734262180206465517421505795268590482950735388343104366 : F), 902, 5, 149⟩, ⟨(2404174620749640912485734262180206465517421505795268590482950735388343104366 : F), 1650, 8, 99⟩, ⟨(8233396435654672733403110363962591935859244844347387933363381920853869099048 : F), 901, 5, 149⟩, ⟨(8233396435654672733403110363962591935859244844347387933363381920853869099048 : F), 1649, 8, 99⟩], residual := [((6756827556004884467596494710145032263553265661869671918018858748812702294328 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2439 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1501 rho) = ((1 : F) * rho 2439)

def relationRow2440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2440) * ((1 : F) + (-1 : F) * rho 2436) = ((6251352442452427202608805251420294661375132320165471132024134255592606274668 : F) * rho 2435 + (1 : F) * rho 2439)

def relationLc1502 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 99⟩], residual := [((1 : F), 2438), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 895) * (relationLc1502 rho) = ((1 : F) * rho 2441)

def relationLc1503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 99⟩], residual := [((1 : F), 2440), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 895) * (relationLc1503 rho) = ((1 : F) * rho 2442)

def relationLc1504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 100⟩, ⟨(1 : F), 1650, 8, 100⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2443 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1504 rho) = ((1 : F) * rho 2443)

def relationLc1505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(599777004534220749120502838015143623707978608149568606760569517361110658934 : F), 901, 5, 149⟩, ⟨(599777004534220749120502838015143623707978608149568606760569517361110658934 : F), 1649, 8, 100⟩], residual := [((5525282322157049009926327647925022509614376580291064601095875967132583903437 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1506 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3423249253909403246139040301463916746144409278219181153258610840910387912442 : F), runs := [⟨(3423249253909403246139040301463916746144409278219181153258610840910387912442 : F), 902, 5, 149⟩, ⟨(3423249253909403246139040301463916746144409278219181153258610840910387912442 : F), 1650, 8, 100⟩], residual := [((4492593394048688590737191085005912262920230107213966480357334310224790308748 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2444 (rho : Nat -> F) : Prop :=
    (relationLc1505 rho) * (relationLc1506 rho) = ((1 : F) * rho 2444)

def relationLc1507 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3423249253909403246139040301463916746144409278219181153258610840910387912442 : F), runs := [⟨(3423249253909403246139040301463916746144409278219181153258610840910387912442 : F), 902, 5, 149⟩, ⟨(3423249253909403246139040301463916746144409278219181153258610840910387912442 : F), 1650, 8, 100⟩, ⟨(6135780641178353956297679987905829122804967566789579500471565046427035547949 : F), 901, 5, 149⟩, ⟨(6135780641178353956297679987905829122804967566789579500471565046427035547949 : F), 1649, 8, 100⟩], residual := [((5140125981417146259393730273521788552644641601090457645155128022334705607696 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2445 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1507 rho) = ((1 : F) * rho 2445)

def relationRow2446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2446) * ((1 : F) + (1 : F) * rho 2444) = ((1 : F) * rho 2445)

def relationLc1508 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5021212495518967178109784637317629785231490056934882674676622615007021326599 : F), runs := [⟨(2308681108250016467951144950875717408570931768364484327463668409490373691092 : F), 901, 5, 149⟩, ⟨(2308681108250016467951144950875717408570931768364484327463668409490373691092 : F), 1649, 8, 100⟩, ⟨(5021212495518967178109784637317629785231490056934882674676622615007021326599 : F), 902, 5, 149⟩, ⟨(5021212495518967178109784637317629785231490056934882674676622615007021326599 : F), 1650, 8, 100⟩], residual := [((3304335768011224164855094665259757978731257734063606182780105433582703631345 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2447 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1508 rho) = ((1 : F) * rho 2447)

def relationRow2448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2448) * ((1 : F) + (-1 : F) * rho 2444) = ((1114568145659386778187895350588199337573477509854696825794942431420014221350 : F) * rho 2443 + (1 : F) * rho 2447)

def relationLc1509 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 100⟩], residual := [((1 : F), 2446), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 896) * (relationLc1509 rho) = ((1 : F) * rho 2449)

def relationLc1510 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 100⟩], residual := [((1 : F), 2448), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 896) * (relationLc1510 rho) = ((1 : F) * rho 2450)

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

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
