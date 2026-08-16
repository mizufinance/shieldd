import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs117

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow6177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4464) * (relationLc1500 rho) = ((1 : F) * rho 6003)

def relationLc1501 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 98⟩], residual := [((1 : F), 6002), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4464) * (relationLc1501 rho) = ((1 : F) * rho 6004)

def relationLc1502 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 99⟩, ⟨(1 : F), 5220, 8, 99⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6179 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1502 rho) = ((1 : F) * rho 6005)

def relationLc1503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4293681703212942226241860119445843202620766590413090406420978233149069990778 : F), 4471, 5, 149⟩, ⟨(4293681703212942226241860119445843202620766590413090406420978233149069990778 : F), 5219, 8, 99⟩], residual := [((1305409244711178263509137317536703823855434028379551891190204949390309402401 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6040287128678729511763090676601340065858477829358795237452282720529066134675 : F), runs := [⟨(6040287128678729511763090676601340065858477829358795237452282720529066134675 : F), 4472, 5, 149⟩, ⟨(6040287128678729511763090676601340065858477829358795237452282720529066134675 : F), 5220, 8, 99⟩], residual := [((7669045227694257730776453443358451663824146133794592849966096451796486309872 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6180 (rho : Nat -> F) : Prop :=
    (relationLc1503 rho) * (relationLc1504 rho) = ((1 : F) * rho 6006)

def relationLc1505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6040287128678729511763090676601340065858477829358795237452282720529066134675 : F), runs := [⟨(211065313773697690845714574818954595516654490806675894571851535063540139993 : F), 4471, 5, 149⟩, ⟨(211065313773697690845714574818954595516654490806675894571851535063540139993 : F), 5219, 8, 99⟩, ⟨(6040287128678729511763090676601340065858477829358795237452282720529066134675 : F), 4472, 5, 149⟩, ⟨(6040287128678729511763090676601340065858477829358795237452282720529066134675 : F), 5220, 8, 99⟩], residual := [((1687634193423485956652330228636514267822633673284391909916374707104706944713 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6181 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1505 rho) = ((1 : F) * rho 6007)

def relationRow6182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6008) * ((1 : F) + (1 : F) * rho 6006) = ((1 : F) * rho 6007)

def relationLc1506 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2404174620749640912485734262180206465517421505795268590482950735388343104366 : F), runs := [⟨(2404174620749640912485734262180206465517421505795268590482950735388343104366 : F), 4472, 5, 149⟩, ⟨(2404174620749640912485734262180206465517421505795268590482950735388343104366 : F), 5220, 8, 99⟩, ⟨(8233396435654672733403110363962591935859244844347387933363381920853869099048 : F), 4471, 5, 149⟩, ⟨(8233396435654672733403110363962591935859244844347387933363381920853869099048 : F), 5219, 8, 99⟩], residual := [((6756827556004884467596494710145032263553265661869671918018858748812702294328 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6183 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1506 rho) = ((1 : F) * rho 6009)

def relationRow6184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6010) * ((1 : F) + (-1 : F) * rho 6006) = ((6251352442452427202608805251420294661375132320165471132024134255592606274668 : F) * rho 6005 + (1 : F) * rho 6009)

def relationLc1507 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 99⟩], residual := [((1 : F), 6008), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4465) * (relationLc1507 rho) = ((1 : F) * rho 6011)

def relationLc1508 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 99⟩], residual := [((1 : F), 6010), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4465) * (relationLc1508 rho) = ((1 : F) * rho 6012)

def relationLc1509 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 100⟩, ⟨(1 : F), 5220, 8, 100⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6187 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1509 rho) = ((1 : F) * rho 6013)

def relationLc1510 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(599777004534220749120502838015143623707978608149568606760569517361110658934 : F), 4471, 5, 149⟩, ⟨(599777004534220749120502838015143623707978608149568606760569517361110658934 : F), 5219, 8, 100⟩], residual := [((5525282322157049009926327647925022509614376580291064601095875967132583903437 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1511 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3423249253909403246139040301463916746144409278219181153258610840910387912442 : F), runs := [⟨(3423249253909403246139040301463916746144409278219181153258610840910387912442 : F), 4472, 5, 149⟩, ⟨(3423249253909403246139040301463916746144409278219181153258610840910387912442 : F), 5220, 8, 100⟩], residual := [((4492593394048688590737191085005912262920230107213966480357334310224790308748 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6188 (rho : Nat -> F) : Prop :=
    (relationLc1510 rho) * (relationLc1511 rho) = ((1 : F) * rho 6014)

def relationLc1512 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3423249253909403246139040301463916746144409278219181153258610840910387912442 : F), runs := [⟨(3423249253909403246139040301463916746144409278219181153258610840910387912442 : F), 4472, 5, 149⟩, ⟨(3423249253909403246139040301463916746144409278219181153258610840910387912442 : F), 5220, 8, 100⟩, ⟨(6135780641178353956297679987905829122804967566789579500471565046427035547949 : F), 4471, 5, 149⟩, ⟨(6135780641178353956297679987905829122804967566789579500471565046427035547949 : F), 5219, 8, 100⟩], residual := [((5140125981417146259393730273521788552644641601090457645155128022334705607696 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6189 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1512 rho) = ((1 : F) * rho 6015)

def relationRow6190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6016) * ((1 : F) + (1 : F) * rho 6014) = ((1 : F) * rho 6015)

def relationLc1513 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5021212495518967178109784637317629785231490056934882674676622615007021326599 : F), runs := [⟨(2308681108250016467951144950875717408570931768364484327463668409490373691092 : F), 4471, 5, 149⟩, ⟨(2308681108250016467951144950875717408570931768364484327463668409490373691092 : F), 5219, 8, 100⟩, ⟨(5021212495518967178109784637317629785231490056934882674676622615007021326599 : F), 4472, 5, 149⟩, ⟨(5021212495518967178109784637317629785231490056934882674676622615007021326599 : F), 5220, 8, 100⟩], residual := [((3304335768011224164855094665259757978731257734063606182780105433582703631345 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6191 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1513 rho) = ((1 : F) * rho 6017)

def relationRow6192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6018) * ((1 : F) + (-1 : F) * rho 6014) = ((1114568145659386778187895350588199337573477509854696825794942431420014221350 : F) * rho 6013 + (1 : F) * rho 6017)

def relationLc1514 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 100⟩], residual := [((1 : F), 6016), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4466) * (relationLc1514 rho) = ((1 : F) * rho 6019)

def relationLc1515 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 100⟩], residual := [((1 : F), 6018), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4466) * (relationLc1515 rho) = ((1 : F) * rho 6020)

def relationLc1516 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 101⟩, ⟨(1 : F), 5220, 8, 101⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6195 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1516 rho) = ((1 : F) * rho 6021)

def relationRow6196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6021) * ((1 : F) * rho 4214 + (1 : F) * rho 4215) = ((1 : F) * rho 6022)

def relationLc1517 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5220, 8, 101⟩], residual := [((4337336842509898676347982752646772244181661588533917621717979456142867120377 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4214) * (relationLc1517 rho) = ((1 : F) * rho 6023)

def relationLc1518 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 5219, 8, 101⟩], residual := [((4661681602708190761543544705274244814260880986867766715334030151044279151219 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4215) * (relationLc1518 rho) = ((1 : F) * rho 6024)

def relationRow6199 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6023) * ((1 : F) * rho 6024) = ((1 : F) * rho 6025)

def relationRow6200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6026) * ((1 : F) + (1 : F) * rho 6025) = ((1 : F) * rho 6023 + (1 : F) * rho 6024)

def relationRow6201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6027) * ((1 : F) + (-1 : F) * rho 6025) = ((1 : F) * rho 6022 + (-1 : F) * rho 6023 + (-1 : F) * rho 6024)

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

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
