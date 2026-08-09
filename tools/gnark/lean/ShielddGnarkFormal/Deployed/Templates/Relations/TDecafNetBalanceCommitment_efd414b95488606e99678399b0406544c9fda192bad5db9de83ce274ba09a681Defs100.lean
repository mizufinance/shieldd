import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs99

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow5673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4401) * (relationLc1059 rho) = ((1 : F) * rho 5499)

def relationLc1060 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 35⟩], residual := [((1 : F), 5498), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4401) * (relationLc1060 rho) = ((1 : F) * rho 5500)

def relationLc1061 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 36⟩, ⟨(1 : F), 5220, 8, 36⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5675 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1061 rho) = ((1 : F) * rho 5501)

def relationLc1062 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6028579224337606591443459905021778812168747518565097276810086992500255754658 : F), 4471, 5, 149⟩, ⟨(6028579224337606591443459905021778812168747518565097276810086992500255754658 : F), 5219, 8, 36⟩], residual := [((6381661940768385857326634826811761934878076726829780415823298289526390967490 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1063 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7787428424287560873464197071160094215955456615894628038324752536842263774777 : F), runs := [⟨(7787428424287560873464197071160094215955456615894628038324752536842263774777 : F), 4472, 5, 149⟩, ⟨(7787428424287560873464197071160094215955456615894628038324752536842263774777 : F), 5220, 8, 36⟩], residual := [((1452863053084963223896290692224473309609477121996708903053775524417059294317 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5676 (rho : Nat -> F) : Prop :=
    (relationLc1062 rho) * (relationLc1063 rho) = ((1 : F) * rho 5502)

def relationLc1064 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7787428424287560873464197071160094215955456615894628038324752536842263774777 : F), runs := [⟨(4985933094490275429668023278964753142752531367791546144483724375668070482941 : F), 4471, 5, 149⟩, ⟨(4985933094490275429668023278964753142752531367791546144483724375668070482941 : F), 5219, 8, 36⟩, ⟨(7787428424287560873464197071160094215955456615894628038324752536842263774777 : F), 4472, 5, 149⟩, ⟨(7787428424287560873464197071160094215955456615894628038324752536842263774777 : F), 5220, 8, 36⟩], residual := [((4784122770234899523511542971905252416131679765126573120030500563903044330618 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5677 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1064 rho) = ((1 : F) * rho 5503)

def relationRow5678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5504) * ((1 : F) + (1 : F) * rho 5502) = ((1 : F) * rho 5503)

def relationLc1065 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (657033325140809550784627867621452315420442719259435789610480919075145464264 : F), runs := [⟨(3458528654938094994580801659816793388623367967362517683451509080249338756100 : F), 4471, 5, 149⟩, ⟨(3458528654938094994580801659816793388623367967362517683451509080249338756100 : F), 5219, 8, 36⟩, ⟨(657033325140809550784627867621452315420442719259435789610480919075145464264 : F), 4472, 5, 149⟩, ⟨(657033325140809550784627867621452315420442719259435789610480919075145464264 : F), 5220, 8, 36⟩], residual := [((3660338979193470900737281966876294115244219570027490707904732892014364908423 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5679 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1065 rho) = ((1 : F) * rho 5505)

def relationRow5680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5506) * ((1 : F) + (-1 : F) * rho 5502) = ((4328899769349465878883395411343300827332088648532110354873243456592925018677 : F) * rho 5501 + (1 : F) * rho 5505)

def relationLc1066 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 36⟩], residual := [((1 : F), 5504), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4402) * (relationLc1066 rho) = ((1 : F) * rho 5507)

def relationLc1067 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 36⟩], residual := [((1 : F), 5506), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4402) * (relationLc1067 rho) = ((1 : F) * rho 5508)

def relationLc1068 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 37⟩, ⟨(1 : F), 5220, 8, 37⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5683 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1068 rho) = ((1 : F) * rho 5509)

def relationLc1069 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4596919794334890205495364398857343729149742954419236979109192546333741823495 : F), 4471, 5, 149⟩, ⟨(4596919794334890205495364398857343729149742954419236979109192546333741823495 : F), 5219, 8, 37⟩], residual := [((7826491336625565773713388100152299427331399470180970387061441917424441790953 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1070 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), runs := [⟨(5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), 4472, 5, 149⟩, ⟨(5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), 5220, 8, 37⟩], residual := [((5918976997624896128603067142306423185695956680637276924820692671152121793628 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5684 (rho : Nat -> F) : Prop :=
    (relationLc1069 rho) * (relationLc1070 rho) = ((1 : F) * rho 5510)

def relationLc1071 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), runs := [⟨(2587131426023031291835702890689105556190617884135030876471102330112524756020 : F), 4471, 5, 149⟩, ⟨(2587131426023031291835702890689105556190617884135030876471102330112524756020 : F), 5219, 8, 37⟩, ⟨(5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), 4472, 5, 149⟩, ⟨(5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), 5220, 8, 37⟩], residual := [((1625262592615038539626989504833041947927858077968751558005269837710336438244 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5685 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1071 rho) = ((1 : F) * rho 5511)

def relationRow5686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5512) * ((1 : F) + (1 : F) * rho 5510) = ((1 : F) * rho 5511)

def relationLc1072 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2780335827837733432131378289849803592677100462025226270565671679486408496448 : F), runs := [⟨(2780335827837733432131378289849803592677100462025226270565671679486408496448 : F), 4472, 5, 149⟩, ⟨(2780335827837733432131378289849803592677100462025226270565671679486408496448 : F), 5220, 8, 37⟩, ⟨(5857330323405339132413122048092440975185281451019032951464131125804884483021 : F), 4471, 5, 149⟩, ⟨(5857330323405339132413122048092440975185281451019032951464131125804884483021 : F), 5219, 8, 37⟩], residual := [((6819199156813331884621835433948504583448041257185312269929963618207072800797 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5687 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1072 rho) = ((1 : F) * rho 5513)

def relationRow5688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5514) * ((1 : F) + (-1 : F) * rho 5510) = ((8251257347613668283953149539620848494889416757263868433840664106543525498613 : F) * rho 5509 + (1 : F) * rho 5513)

def relationLc1073 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 37⟩], residual := [((1 : F), 5512), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4403) * (relationLc1073 rho) = ((1 : F) * rho 5515)

def relationLc1074 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 37⟩], residual := [((1 : F), 5514), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4403) * (relationLc1074 rho) = ((1 : F) * rho 5516)

def relationLc1075 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 38⟩, ⟨(1 : F), 5220, 8, 38⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5691 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1075 rho) = ((1 : F) * rho 5517)

def relationLc1076 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6922811000887993217579984030095195121464617178287420021988095849235860064564 : F), 4471, 5, 149⟩, ⟨(6922811000887993217579984030095195121464617178287420021988095849235860064564 : F), 5219, 8, 38⟩], residual := [((14303776005448437087817101055051617761828693284628317724679631503107821478 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1077 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4566659702402280241611209257404082758933800362364907704264911919510596352786 : F), runs := [⟨(4566659702402280241611209257404082758933800362364907704264911919510596352786 : F), 4472, 5, 149⟩, ⟨(4566659702402280241611209257404082758933800362364907704264911919510596352786 : F), 5220, 8, 38⟩], residual := [((566254701759488235120972677527957762407484274840097124827533952264695348694 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5692 (rho : Nat -> F) : Prop :=
    (relationLc1076 rho) * (relationLc1077 rho) = ((1 : F) * rho 5518)

def relationLc1078 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4566659702402280241611209257404082758933800362364907704264911919510596352786 : F), runs := [⟨(4566659702402280241611209257404082758933800362364907704264911919510596352786 : F), 4472, 5, 149⟩, ⟨(4566659702402280241611209257404082758933800362364907704264911919510596352786 : F), 5220, 8, 38⟩, ⟨(6087559099472509237605849677509937766940350039658617799879838242099118097801 : F), 4471, 5, 149⟩, ⟨(6087559099472509237605849677509937766940350039658617799879838242099118097801 : F), 5219, 8, 38⟩], residual := [((7663408851238017846377131014723390299574372802032898411634975999337123407531 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5693 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1078 rho) = ((1 : F) * rho 5519)

def relationRow5694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5520) * ((1 : F) + (1 : F) * rho 5518) = ((1 : F) * rho 5519)

def relationLc1079 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3877802047026090182637615681377463772442098972789156123670321536406812886255 : F), runs := [⟨(2356902649955861186642975261271608764435549295495446028055395213818291141240 : F), 4471, 5, 149⟩, ⟨(2356902649955861186642975261271608764435549295495446028055395213818291141240 : F), 5219, 8, 38⟩, ⟨(3877802047026090182637615681377463772442098972789156123670321536406812886255 : F), 4472, 5, 149⟩, ⟨(3877802047026090182637615681377463772442098972789156123670321536406812886255 : F), 5220, 8, 38⟩], residual := [((781052898190352577871693924058156231801526533121165416300257456580285831510 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5695 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1079 rho) = ((1 : F) * rho 5521)

def relationRow5696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5522) * ((1 : F) + (-1 : F) * rho 5518) = ((2209757052446419054968233996132473994498251066869461676209516705692305211546 : F) * rho 5517 + (1 : F) * rho 5521)

def relationLc1080 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 38⟩], residual := [((1 : F), 5520), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4404) * (relationLc1080 rho) = ((1 : F) * rho 5523)

def relationLc1081 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 38⟩], residual := [((1 : F), 5522), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4404) * (relationLc1081 rho) = ((1 : F) * rho 5524)

def relationLc1082 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 39⟩, ⟨(1 : F), 5220, 8, 39⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5699 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1082 rho) = ((1 : F) * rho 5525)

def relationLc1083 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6524314985460573496601737361348284694458658975715625217606691023570314861904 : F), 4471, 5, 149⟩, ⟨(6524314985460573496601737361348284694458658975715625217606691023570314861904 : F), 5219, 8, 39⟩], residual := [((3891133338582028720854362833555171518308555506521266766552101859987109084684 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1084 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3309409805907718488973225867968294079518603536308582507670435458888150009119 : F), runs := [⟨(3309409805907718488973225867968294079518603536308582507670435458888150009119 : F), 4472, 5, 149⟩, ⟨(3309409805907718488973225867968294079518603536308582507670435458888150009119 : F), 5220, 8, 39⟩], residual := [((1595464300149660764758530111730061010614402182284645456524319626499860751122 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5700 (rho : Nat -> F) : Prop :=
    (relationLc1083 rho) * (relationLc1084 rho) = ((1 : F) * rho 5526)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
