import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs101

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow5729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4408) * (relationLc1108 rho) = ((1 : F) * rho 5555)

def relationLc1109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 42⟩], residual := [((1 : F), 5554), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4408) * (relationLc1109 rho) = ((1 : F) * rho 5556)

def relationLc1110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 43⟩, ⟨(1 : F), 5220, 8, 43⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5731 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1110 rho) = ((1 : F) * rho 5557)

def relationLc1111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5424293512622971143956653721151976634791598216281713958243143416091586587080 : F), 4471, 5, 149⟩, ⟨(5424293512622971143956653721151976634791598216281713958243143416091586587080 : F), 5219, 8, 43⟩], residual := [((1159492356918577458388895628832242118290019297883964640947573388330292787616 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8379505003927404927120020956400071289170845704972341444623697570956102475621 : F), runs := [⟨(8379505003927404927120020956400071289170845704972341444623697570956102475621 : F), 4472, 5, 149⟩, ⟨(8379505003927404927120020956400071289170845704972341444623697570956102475621 : F), 5220, 8, 43⟩], residual := [((7398689112597503690364031459430454241780594976319482742382007271263098015962 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5732 (rho : Nat -> F) : Prop :=
    (relationLc1111 rho) * (relationLc1112 rho) = ((1 : F) * rho 5558)

def relationLc1113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8379505003927404927120020956400071289170845704972341444623697570956102475621 : F), runs := [⟨(8222636974042191456093926116742032547305962112844880315099558006378415146841 : F), 4471, 5, 149⟩, ⟨(8222636974042191456093926116742032547305962112844880315099558006378415146841 : F), 5219, 8, 43⟩, ⟨(8379505003927404927120020956400071289170845704972341444623697570956102475621 : F), 4472, 5, 149⟩, ⟨(8379505003927404927120020956400071289170845704972341444623697570956102475621 : F), 5220, 8, 43⟩], residual := [((5425623735987271667172610899632063110025184545561162617297158795099787645232 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5733 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1113 rho) = ((1 : F) * rho 5559)

def relationRow5734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5560) * ((1 : F) + (1 : F) * rho 5558) = ((1 : F) * rho 5559)

def relationLc1114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (64956745500965497128803982381475242205053630181722383311535884961306763420 : F), runs := [⟨(221824775386178968154898822039513984069937222309183512835675449538994092200 : F), 4471, 5, 149⟩, ⟨(221824775386178968154898822039513984069937222309183512835675449538994092200 : F), 5219, 8, 43⟩, ⟨(64956745500965497128803982381475242205053630181722383311535884961306763420 : F), 4472, 5, 149⟩, ⟨(64956745500965497128803982381475242205053630181722383311535884961306763420 : F), 5220, 8, 43⟩], residual := [((3018838013441098757076214039149483421350714789592901210638074660817621593809 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5735 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1114 rho) = ((1 : F) * rho 5561)

def relationRow5736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5562) * ((1 : F) + (-1 : F) * rho 5558) = ((8157680228541225958965122134360557305100908482663157931788022121417108383421 : F) * rho 5557 + (1 : F) * rho 5561)

def relationLc1115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 43⟩], residual := [((1 : F), 5560), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4409) * (relationLc1115 rho) = ((1 : F) * rho 5563)

def relationLc1116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 43⟩], residual := [((1 : F), 5562), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4409) * (relationLc1116 rho) = ((1 : F) * rho 5564)

def relationLc1117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 44⟩, ⟨(1 : F), 5220, 8, 44⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5739 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1117 rho) = ((1 : F) * rho 5565)

def relationLc1118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1039943787173976848446334036992801681317072883333815334713679937305626686533 : F), 4471, 5, 149⟩, ⟨(1039943787173976848446334036992801681317072883333815334713679937305626686533 : F), 5219, 8, 44⟩], residual := [((7763323733134130071288516841185356454533071645192017275536901946325694198167 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6444490698300857073481181944246794033469722497984396226284135138276924131970 : F), runs := [⟨(6444490698300857073481181944246794033469722497984396226284135138276924131970 : F), 4472, 5, 149⟩, ⟨(6444490698300857073481181944246794033469722497984396226284135138276924131970 : F), 5220, 8, 44⟩], residual := [((5978637330494813918645192268005069037660298137679939836064151660217248578339 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5740 (rho : Nat -> F) : Prop :=
    (relationLc1118 rho) * (relationLc1119 rho) = ((1 : F) * rho 5566)

def relationLc1120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6444490698300857073481181944246794033469722497984396226284135138276924131970 : F), runs := [⟨(6444490698300857073481181944246794033469722497984396226284135138276924131970 : F), 4472, 5, 149⟩, ⟨(6444490698300857073481181944246794033469722497984396226284135138276924131970 : F), 5220, 8, 44⟩, ⟨(8198823652717836620711767586720711280439202192284079120380256009977844066466 : F), 4471, 5, 149⟩, ⟨(8198823652717836620711767586720711280439202192284079120380256009977844066466 : F), 5219, 8, 44⟩], residual := [((3745004071372151816914715129910381229435807440401535650340004072402749506166 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5741 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1120 rho) = ((1 : F) * rho 5567)

def relationRow5742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5568) * ((1 : F) + (1 : F) * rho 5566) = ((1 : F) * rho 5567)

def relationLc1121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1999971051127513350767642994534752497906176837169667601651098317640485107071 : F), runs := [⟨(1999971051127513350767642994534752497906176837169667601651098317640485107071 : F), 4472, 5, 149⟩, ⟨(1999971051127513350767642994534752497906176837169667601651098317640485107071 : F), 5220, 8, 44⟩, ⟨(245638096710533803537057352060835250936697142869984707554977445939565172575 : F), 4471, 5, 149⟩, ⟨(245638096710533803537057352060835250936697142869984707554977445939565172575 : F), 5219, 8, 44⟩], residual := [((4699457678056218607334109808871165301940091894752528177595229383514659732875 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5743 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1121 rho) = ((1 : F) * rho 5569)

def relationRow5744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5570) * ((1 : F) + (-1 : F) * rho 5566) = ((6198852601590323269944124592185958782533025355114411518729157692337358959395 : F) * rho 5565 + (1 : F) * rho 5569)

def relationLc1122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 44⟩], residual := [((1 : F), 5568), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4410) * (relationLc1122 rho) = ((1 : F) * rho 5571)

def relationLc1123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 44⟩], residual := [((1 : F), 5570), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4410) * (relationLc1123 rho) = ((1 : F) * rho 5572)

def relationLc1124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 45⟩, ⟨(1 : F), 5220, 8, 45⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5747 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1124 rho) = ((1 : F) * rho 5573)

def relationLc1125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4015764581459766636875627008318117948768454446883655766248935433332886612089 : F), 4471, 5, 149⟩, ⟨(4015764581459766636875627008318117948768454446883655766248935433332886612089 : F), 5219, 8, 45⟩], residual := [((3157768499214601969918244417310321822715768325365981343453183964039078504438 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (534543527702324573819012140335261053705566569841713933263725786904339161184 : F), runs := [⟨(534543527702324573819012140335261053705566569841713933263725786904339161184 : F), 4472, 5, 149⟩, ⟨(534543527702324573819012140335261053705566569841713933263725786904339161184 : F), 5220, 8, 45⟩], residual := [((6659275747808960082924259503299544426670642258395145597892705017474190829857 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5748 (rho : Nat -> F) : Prop :=
    (relationLc1125 rho) * (relationLc1126 rho) = ((1 : F) * rho 5574)

def relationLc1127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (534543527702324573819012140335261053705566569841713933263725786904339161184 : F), runs := [⟨(534543527702324573819012140335261053705566569841713933263725786904339161184 : F), 4472, 5, 149⟩, ⟨(534543527702324573819012140335261053705566569841713933263725786904339161184 : F), 5220, 8, 45⟩, ⟨(6217973748861355706774664776848221649695057456414935984473422092483830200013 : F), 4471, 5, 149⟩, ⟨(6217973748861355706774664776848221649695057456414935984473422092483830200013 : F), 5219, 8, 45⟩], residual := [((1704336021480828285432287185509947710912034594408787045894785211655744122702 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5749 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1127 rho) = ((1 : F) * rho 5575)

def relationRow5750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5576) * ((1 : F) + (1 : F) * rho 5574) = ((1 : F) * rho 5575)

def relationLc1128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7909918221726045850429812798446285477670332765312349894671507669013070077857 : F), runs := [⟨(2226488000567014717474160161933324881680841878739127843461811363433579039028 : F), 4471, 5, 149⟩, ⟨(2226488000567014717474160161933324881680841878739127843461811363433579039028 : F), 5219, 8, 45⟩, ⟨(7909918221726045850429812798446285477670332765312349894671507669013070077857 : F), 4472, 5, 149⟩, ⟨(7909918221726045850429812798446285477670332765312349894671507669013070077857 : F), 5220, 8, 45⟩], residual := [((6740125727947542138816537753271598820463864740745276782040448244261665116339 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5751 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1128 rho) = ((1 : F) * rho 5577)

def relationRow5752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5578) * ((1 : F) + (-1 : F) * rho 5574) = ((6752517276563680280593676917183482703400624026256649917737147879388169361197 : F) * rho 5573 + (1 : F) * rho 5577)

def relationLc1129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 45⟩], residual := [((1 : F), 5576), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4411) * (relationLc1129 rho) = ((1 : F) * rho 5579)

def relationLc1130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 45⟩], residual := [((1 : F), 5578), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4411) * (relationLc1130 rho) = ((1 : F) * rho 5580)

def relationLc1131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 46⟩, ⟨(1 : F), 5220, 8, 46⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5755 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1131 rho) = ((1 : F) * rho 5581)

def relationLc1132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(159972499471161683226141830651939820625937330801826475157833509385490017356 : F), 4471, 5, 149⟩, ⟨(159972499471161683226141830651939820625937330801826475157833509385490017356 : F), 5219, 8, 46⟩], residual := [((889344209890450458886721940910110142040239231044373030628454235548509460521 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7033226505414935809728453247699649254198983826468420616303541913858179390258 : F), runs := [⟨(7033226505414935809728453247699649254198983826468420616303541913858179390258 : F), 4472, 5, 149⟩, ⟨(7033226505414935809728453247699649254198983826468420616303541913858179390258 : F), 5220, 8, 46⟩], residual := [((1744946012703359804205378596564623655474306445177260178979160388767327552813 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5756 (rho : Nat -> F) : Prop :=
    (relationLc1132 rho) * (relationLc1133 rho) = ((1 : F) * rho 5582)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
