import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs109

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow5953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4436) * (relationLc1304 rho) = ((1 : F) * rho 5779)

def relationLc1305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 70⟩], residual := [((1 : F), 5778), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4436) * (relationLc1305 rho) = ((1 : F) * rho 5780)

def relationLc1306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 71⟩, ⟨(1 : F), 5220, 8, 71⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5955 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1306 rho) = ((1 : F) * rho 5781)

def relationLc1307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4185009705009278583157337959757827265049367783660213600747228776622166843885 : F), 4471, 5, 149⟩, ⟨(4185009705009278583157337959757827265049367783660213600747228776622166843885 : F), 5219, 8, 71⟩], residual := [((383082562966876509052088454560345866870394795901995490069381434441366547319 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3582457232854017490679727548806619789199351417472999200107726731446390762695 : F), runs := [⟨(3582457232854017490679727548806619789199351417472999200107726731446390762695 : F), 4472, 5, 149⟩, ⟨(3582457232854017490679727548806619789199351417472999200107726731446390762695 : F), 5220, 8, 71⟩], residual := [((7058699996902104145726176427107042444173523936118927654194633626935732919530 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5956 (rho : Nat -> F) : Prop :=
    (relationLc1307 rho) * (relationLc1308 rho) = ((1 : F) * rho 5782)

def relationLc1309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3582457232854017490679727548806619789199351417472999200107726731446390762695 : F), runs := [⟨(3582457232854017490679727548806619789199351417472999200107726731446390762695 : F), 4472, 5, 149⟩, ⟨(3582457232854017490679727548806619789199351417472999200107726731446390762695 : F), 5220, 8, 71⟩, ⟨(8356398933712813133618965600787090502994906481482673616451228079613955108354 : F), 4471, 5, 149⟩, ⟨(8356398933712813133618965600787090502994906481482673616451228079613955108354 : F), 5219, 8, 71⟩], residual := [((6728986854277284273646630166159785858660288012003642140720191996229406231791 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5957 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1309 rho) = ((1 : F) * rho 5783)

def relationRow5958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5784) * ((1 : F) + (1 : F) * rho 5782) = ((1 : F) * rho 5783)

def relationLc1310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4862004516574352933569097389974926742176547917681064627827506724471018476346 : F), runs := [⟨(4862004516574352933569097389974926742176547917681064627827506724471018476346 : F), 4472, 5, 149⟩, ⟨(4862004516574352933569097389974926742176547917681064627827506724471018476346 : F), 5220, 8, 71⟩, ⟨(88062815715557290629859337994456028380992853671390211484005376303454130687 : F), 4471, 5, 149⟩, ⟨(88062815715557290629859337994456028380992853671390211484005376303454130687 : F), 5219, 8, 71⟩], residual := [((1715474895151086150602194772621760672715611323150421687215041459688003007250 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5959 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1310 rho) = ((1 : F) * rho 5785)

def relationRow5960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5786) * ((1 : F) + (-1 : F) * rho 5782) = ((3494394417138460200049868210812163760818358563801608988623721355142936632008 : F) * rho 5781 + (1 : F) * rho 5785)

def relationLc1311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 71⟩], residual := [((1 : F), 5784), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4437) * (relationLc1311 rho) = ((1 : F) * rho 5787)

def relationLc1312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 71⟩], residual := [((1 : F), 5786), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4437) * (relationLc1312 rho) = ((1 : F) * rho 5788)

def relationLc1313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 72⟩, ⟨(1 : F), 5220, 8, 72⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5963 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1313 rho) = ((1 : F) * rho 5789)

def relationLc1314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1041016696261873307340336047327981763298628938291660533116945156646556318662 : F), 4471, 5, 149⟩, ⟨(1041016696261873307340336047327981763298628938291660533116945156646556318662 : F), 5219, 8, 72⟩], residual := [((1950914135566194575319471229970379663738043476462169302070774594291170094184 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (587431020291212425077570287060209112092291997683260210283999568885891829628 : F), runs := [⟨(587431020291212425077570287060209112092291997683260210283999568885891829628 : F), 4472, 5, 149⟩, ⟨(587431020291212425077570287060209112092291997683260210283999568885891829628 : F), 5220, 8, 72⟩], residual := [((3892941673995227343189094966822599319633698296099933602780283735295161868150 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5964 (rho : Nat -> F) : Prop :=
    (relationLc1314 rho) * (relationLc1315 rho) = ((1 : F) * rho 5790)

def relationLc1316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (587431020291212425077570287060209112092291997683260210283999568885891829628 : F), runs := [⟨(3186933932818472081082754308592615368266078739163828012042132765608240016162 : F), 4471, 5, 149⟩, ⟨(3186933932818472081082754308592615368266078739163828012042132765608240016162 : F), 5219, 8, 72⟩, ⟨(587431020291212425077570287060209112092291997683260210283999568885891829628 : F), 4472, 5, 149⟩, ⟨(587431020291212425077570287060209112092291997683260210283999568885891829628 : F), 5220, 8, 72⟩], residual := [((8206664081642874400187193726097639596885188106632599162464539278848572535457 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5965 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1316 rho) = ((1 : F) * rho 5791)

def relationRow5966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5792) * ((1 : F) + (1 : F) * rho 5790) = ((1 : F) * rho 5791)

def relationLc1317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7857030729137157999171254651721337419283607337470803617651233887031517409413 : F), runs := [⟨(5257527816609898343166070630188931163109820595990235815893100690309169222879 : F), 4471, 5, 149⟩, ⟨(5257527816609898343166070630188931163109820595990235815893100690309169222879 : F), 5219, 8, 72⟩, ⟨(7857030729137157999171254651721337419283607337470803617651233887031517409413 : F), 4472, 5, 149⟩, ⟨(7857030729137157999171254651721337419283607337470803617651233887031517409413 : F), 5220, 8, 72⟩], residual := [((237797667785496024061631212683906934490711228521464665470694177068836703584 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5967 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1317 rho) = ((1 : F) * rho 5793)

def relationRow5968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5794) * ((1 : F) + (-1 : F) * rho 5790) = ((3774364953109684506160324595652824480358370736847088222326132334494131845790 : F) * rho 5789 + (1 : F) * rho 5793)

def relationLc1318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 72⟩], residual := [((1 : F), 5792), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4438) * (relationLc1318 rho) = ((1 : F) * rho 5795)

def relationLc1319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 72⟩], residual := [((1 : F), 5794), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4438) * (relationLc1319 rho) = ((1 : F) * rho 5796)

def relationLc1320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 73⟩, ⟨(1 : F), 5220, 8, 73⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5971 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1320 rho) = ((1 : F) * rho 5797)

def relationLc1321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3985374247453837473222794541343338310233095765846577436468927911938475780633 : F), 4471, 5, 149⟩, ⟨(3985374247453837473222794541343338310233095765846577436468927911938475780633 : F), 5219, 8, 73⟩], residual := [((7105142906426796296168390025664855125272204098034851028457940225008388755719 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6252774744021088771151931377995730287240547912466162259661321476502298112282 : F), runs := [⟨(6252774744021088771151931377995730287240547912466162259661321476502298112282 : F), 4472, 5, 149⟩, ⟨(6252774744021088771151931377995730287240547912466162259661321476502298112282 : F), 5220, 8, 73⟩], residual := [((6429624184377402250098413480349454538985920751972232079382271333906710152618 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5972 (rho : Nat -> F) : Prop :=
    (relationLc1321 rho) * (relationLc1322 rho) = ((1 : F) * rho 5798)

def relationLc1323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6252774744021088771151931377995730287240547912466162259661321476502298112282 : F), runs := [⟨(6252774744021088771151931377995730287240547912466162259661321476502298112282 : F), 4472, 5, 149⟩, ⟨(6252774744021088771151931377995730287240547912466162259661321476502298112282 : F), 5220, 8, 73⟩, ⟨(772809274111116873408109393460791188669308610482743526629127229971911097569 : F), 4471, 5, 149⟩, ⟨(772809274111116873408109393460791188669308610482743526629127229971911097569 : F), 5219, 8, 73⟩], residual := [((1487172118229649689952765374861572725388206842740353873295223984256631187008 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5973 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1323 rho) = ((1 : F) * rho 5799)

def relationRow5974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5800) * ((1 : F) + (1 : F) * rho 5798) = ((1 : F) * rho 5799)

def relationLc1324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2191687005407281653096893560785816244135351422687901568273911979415111126759 : F), runs := [⟨(2191687005407281653096893560785816244135351422687901568273911979415111126759 : F), 4472, 5, 149⟩, ⟨(2191687005407281653096893560785816244135351422687901568273911979415111126759 : F), 5220, 8, 73⟩, ⟨(7671652475317253550840715545320755342706590724671320301306106225945498141472 : F), 4471, 5, 149⟩, ⟨(7671652475317253550840715545320755342706590724671320301306106225945498141472 : F), 5219, 8, 73⟩], residual := [((6957289631198720734296059563919973805987692492413709954640009471660778052033 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5975 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1324 rho) = ((1 : F) * rho 5801)

def relationRow5976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5802) * ((1 : F) + (-1 : F) * rho 5798) = ((7025584018132205644560040771456521475909856522948905786290448706474209209851 : F) * rho 5797 + (1 : F) * rho 5801)

def relationLc1325 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 73⟩], residual := [((1 : F), 5800), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4439) * (relationLc1325 rho) = ((1 : F) * rho 5803)

def relationLc1326 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 73⟩], residual := [((1 : F), 5802), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4439) * (relationLc1326 rho) = ((1 : F) * rho 5804)

def relationLc1327 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 74⟩, ⟨(1 : F), 5220, 8, 74⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5979 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1327 rho) = ((1 : F) * rho 5805)

def relationLc1328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8121534017638747712901180734970758415438419734352178356186262260998119810492 : F), 4471, 5, 149⟩, ⟨(8121534017638747712901180734970758415438419734352178356186262260998119810492 : F), 5219, 8, 74⟩], residual := [((4772544478899057561087517555422350775831763930266204989794514715128854340322 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1329 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1150864079152338539263846845990030258145800544795680543046530314609120824927 : F), runs := [⟨(1150864079152338539263846845990030258145800544795680543046530314609120824927 : F), 4472, 5, 149⟩, ⟨(1150864079152338539263846845990030258145800544795680543046530314609120824927 : F), 5220, 8, 74⟩], residual := [((1727421586306472614272207993773771346151534926016096070848824142586155885468 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5980 (rho : Nat -> F) : Prop :=
    (relationLc1328 rho) * (relationLc1329 rho) = ((1 : F) * rho 5806)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
