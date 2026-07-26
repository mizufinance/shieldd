import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs54

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc1114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1999971051127513350767642994534752497906176837169667601651098317640485107071 : F), runs := [⟨(1999971051127513350767642994534752497906176837169667601651098317640485107071 : F), 644, 5, 149⟩, ⟨(1999971051127513350767642994534752497906176837169667601651098317640485107071 : F), 1392, 8, 44⟩, ⟨(245638096710533803537057352060835250936697142869984707554977445939565172575 : F), 643, 5, 149⟩, ⟨(245638096710533803537057352060835250936697142869984707554977445939565172575 : F), 1391, 8, 44⟩], residual := [((4699457678056218607334109808871165301940091894752528177595229383514659732875 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1741 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1114 rho) = ((1 : F) * rho 1741)

def relationRow1742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1742) * ((1 : F) + (-1 : F) * rho 1738) = ((6198852601590323269944124592185958782533025355114411518729157692337358959395 : F) * rho 1737 + (1 : F) * rho 1741)

def relationLc1115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 44⟩], residual := [((1 : F), 1740), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 582) * (relationLc1115 rho) = ((1 : F) * rho 1743)

def relationLc1116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 44⟩], residual := [((1 : F), 1742), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 582) * (relationLc1116 rho) = ((1 : F) * rho 1744)

def relationLc1117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 45⟩, ⟨(1 : F), 1392, 8, 45⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1745 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1117 rho) = ((1 : F) * rho 1745)

def relationLc1118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4015764581459766636875627008318117948768454446883655766248935433332886612089 : F), 643, 5, 149⟩, ⟨(4015764581459766636875627008318117948768454446883655766248935433332886612089 : F), 1391, 8, 45⟩], residual := [((3157768499214601969918244417310321822715768325365981343453183964039078504438 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (534543527702324573819012140335261053705566569841713933263725786904339161184 : F), runs := [⟨(534543527702324573819012140335261053705566569841713933263725786904339161184 : F), 644, 5, 149⟩, ⟨(534543527702324573819012140335261053705566569841713933263725786904339161184 : F), 1392, 8, 45⟩], residual := [((6659275747808960082924259503299544426670642258395145597892705017474190829857 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1746 (rho : Nat -> F) : Prop :=
    (relationLc1118 rho) * (relationLc1119 rho) = ((1 : F) * rho 1746)

def relationLc1120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (534543527702324573819012140335261053705566569841713933263725786904339161184 : F), runs := [⟨(534543527702324573819012140335261053705566569841713933263725786904339161184 : F), 644, 5, 149⟩, ⟨(534543527702324573819012140335261053705566569841713933263725786904339161184 : F), 1392, 8, 45⟩, ⟨(6217973748861355706774664776848221649695057456414935984473422092483830200013 : F), 643, 5, 149⟩, ⟨(6217973748861355706774664776848221649695057456414935984473422092483830200013 : F), 1391, 8, 45⟩], residual := [((1704336021480828285432287185509947710912034594408787045894785211655744122702 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1747 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1120 rho) = ((1 : F) * rho 1747)

def relationRow1748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1748) * ((1 : F) + (1 : F) * rho 1746) = ((1 : F) * rho 1747)

def relationLc1121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7909918221726045850429812798446285477670332765312349894671507669013070077857 : F), runs := [⟨(2226488000567014717474160161933324881680841878739127843461811363433579039028 : F), 643, 5, 149⟩, ⟨(2226488000567014717474160161933324881680841878739127843461811363433579039028 : F), 1391, 8, 45⟩, ⟨(7909918221726045850429812798446285477670332765312349894671507669013070077857 : F), 644, 5, 149⟩, ⟨(7909918221726045850429812798446285477670332765312349894671507669013070077857 : F), 1392, 8, 45⟩], residual := [((6740125727947542138816537753271598820463864740745276782040448244261665116339 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1749 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1121 rho) = ((1 : F) * rho 1749)

def relationRow1750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1750) * ((1 : F) + (-1 : F) * rho 1746) = ((6752517276563680280593676917183482703400624026256649917737147879388169361197 : F) * rho 1745 + (1 : F) * rho 1749)

def relationLc1122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 45⟩], residual := [((1 : F), 1748), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 583) * (relationLc1122 rho) = ((1 : F) * rho 1751)

def relationLc1123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 45⟩], residual := [((1 : F), 1750), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 583) * (relationLc1123 rho) = ((1 : F) * rho 1752)

def relationLc1124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 46⟩, ⟨(1 : F), 1392, 8, 46⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1753 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1124 rho) = ((1 : F) * rho 1753)

def relationLc1125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(159972499471161683226141830651939820625937330801826475157833509385490017356 : F), 643, 5, 149⟩, ⟨(159972499471161683226141830651939820625937330801826475157833509385490017356 : F), 1391, 8, 46⟩], residual := [((889344209890450458886721940910110142040239231044373030628454235548509460521 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7033226505414935809728453247699649254198983826468420616303541913858179390258 : F), runs := [⟨(7033226505414935809728453247699649254198983826468420616303541913858179390258 : F), 644, 5, 149⟩, ⟨(7033226505414935809728453247699649254198983826468420616303541913858179390258 : F), 1392, 8, 46⟩], residual := [((1744946012703359804205378596564623655474306445177260178979160388767327552813 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1754 (rho : Nat -> F) : Prop :=
    (relationLc1125 rho) * (relationLc1126 rho) = ((1 : F) * rho 1754)

def relationLc1127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7033226505414935809728453247699649254198983826468420616303541913858179390258 : F), runs := [⟨(2532552902178607999355399383107160906073217720946833384503303324915775657262 : F), 643, 5, 149⟩, ⟨(2532552902178607999355399383107160906073217720946833384503303324915775657262 : F), 1391, 8, 46⟩, ⟨(7033226505414935809728453247699649254198983826468420616303541913858179390258 : F), 644, 5, 149⟩, ⟨(7033226505414935809728453247699649254198983826468420616303541913858179390258 : F), 1392, 8, 46⟩], residual := [((4959782277533719432919392301145785066008674030300801316071562549820147524464 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1755 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1127 rho) = ((1 : F) * rho 1755)

def relationRow1756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1756) * ((1 : F) + (1 : F) * rho 1754) = ((1 : F) * rho 1755)

def relationLc1128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1411235244013434614520371691081897277176915508685643211631691542059229848783 : F), runs := [⟨(1411235244013434614520371691081897277176915508685643211631691542059229848783 : F), 644, 5, 149⟩, ⟨(1411235244013434614520371691081897277176915508685643211631691542059229848783 : F), 1392, 8, 46⟩, ⟨(5911908847249762424893425555674385625302681614207230443431930131001633581779 : F), 643, 5, 149⟩, ⟨(5911908847249762424893425555674385625302681614207230443431930131001633581779 : F), 1391, 8, 46⟩], residual := [((3484679471894650991329432637635761465367225304853262511863670906097261714577 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1757 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1128 rho) = ((1 : F) * rho 1757)

def relationRow1758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1758) * ((1 : F) + (-1 : F) * rho 1754) = ((1121317658165173384835027692025263628896302212261190172871611782856545808479 : F) * rho 1753 + (1 : F) * rho 1757)

def relationLc1129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 46⟩], residual := [((1 : F), 1756), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 584) * (relationLc1129 rho) = ((1 : F) * rho 1759)

def relationLc1130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 46⟩], residual := [((1 : F), 1758), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 584) * (relationLc1130 rho) = ((1 : F) * rho 1760)

def relationLc1131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 47⟩, ⟨(1 : F), 1392, 8, 47⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1761 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1131 rho) = ((1 : F) * rho 1761)

def relationLc1132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4834485914392842313339504760992383614814597087937390813360340066727465977894 : F), 643, 5, 149⟩, ⟨(4834485914392842313339504760992383614814597087937390813360340066727465977894 : F), 1391, 8, 47⟩], residual := [((4247903498688423199534134705096608045797863838610849994701913573296089218708 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1287811907937307797322206503857689576857462357949847351868008167510510354195 : F), runs := [⟨(1287811907937307797322206503857689576857462357949847351868008167510510354195 : F), 644, 5, 149⟩, ⟨(1287811907937307797322206503857689576857462357949847351868008167510510354195 : F), 1392, 8, 47⟩], residual := [((8422332758588264717161581845639255967478228743291154791017212862493824457737 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1762 (rho : Nat -> F) : Prop :=
    (relationLc1132 rho) * (relationLc1133 rho) = ((1 : F) * rho 1762)

def relationLc1134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1287811907937307797322206503857689576857462357949847351868008167510510354195 : F), runs := [⟨(1287811907937307797322206503857689576857462357949847351868008167510510354195 : F), 644, 5, 149⟩, ⟨(1287811907937307797322206503857689576857462357949847351868008167510510354195 : F), 1392, 8, 47⟩, ⟨(2939412043880705116914549657537370999037035682997305022831277955059888969285 : F), 643, 5, 149⟩, ⟨(2939412043880705116914549657537370999037035682997305022831277955059888969285 : F), 1391, 8, 47⟩], residual := [((8172166040961695728421806900328020423030021832888885709746286315834019511595 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1763 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1134 rho) = ((1 : F) * rho 1763)

def relationRow1764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1764) * ((1 : F) + (1 : F) * rho 1762) = ((1 : F) * rho 1763)

def relationLc1135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7156649841491062626926618434923856954518436977204216476067225288406898884846 : F), runs := [⟨(5505049705547665307334275281244175532338863652156758805103955500857520269756 : F), 643, 5, 149⟩, ⟨(5505049705547665307334275281244175532338863652156758805103955500857520269756 : F), 1391, 8, 47⟩, ⟨(7156649841491062626926618434923856954518436977204216476067225288406898884846 : F), 644, 5, 149⟩, ⟨(7156649841491062626926618434923856954518436977204216476067225288406898884846 : F), 1392, 8, 47⟩], residual := [((272295708466674695827018038453526108345877502265178118188947140083389727446 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1765 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1135 rho) = ((1 : F) * rho 1765)

def relationRow1766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1766) * ((1 : F) + (-1 : F) * rho 1762) = ((4227223951818012914236756161395060575894498040947152374699286122570399323480 : F) * rho 1761 + (1 : F) * rho 1765)

def relationLc1136 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 47⟩], residual := [((1 : F), 1764), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 585) * (relationLc1136 rho) = ((1 : F) * rho 1767)

def relationLc1137 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 47⟩], residual := [((1 : F), 1766), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 585) * (relationLc1137 rho) = ((1 : F) * rho 1768)

def relationLc1138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 48⟩, ⟨(1 : F), 1392, 8, 48⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1769 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1138 rho) = ((1 : F) * rho 1769)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
