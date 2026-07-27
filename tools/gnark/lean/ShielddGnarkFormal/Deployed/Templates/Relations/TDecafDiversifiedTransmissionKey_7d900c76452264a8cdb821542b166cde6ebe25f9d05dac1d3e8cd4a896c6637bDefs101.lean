import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs100

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow5102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4596) * ((1 : F) + (1 : F) * rho 4595) = ((1 : F) * rho 4593 + (1 : F) * rho 4594)

def relationRow5103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4597) * ((1 : F) + (-1 : F) * rho 4595) = ((1 : F) * rho 4592 + (-1 : F) * rho 4593 + (-1 : F) * rho 4594)

def relationLc994 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 31⟩], residual := [((-1 : F), 2212), ((1 : F), 4596)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1164) * (relationLc994 rho) = ((1 : F) * rho 4598)

def relationLc995 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 31⟩], residual := [((1 : F), 4597)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1164) * (relationLc995 rho) = ((1 : F) * rho 4599)

def relationRow5106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4589) * ((1 : F) * rho 4590) = ((1 : F) * rho 4600)

def relationRow5107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4589) * ((1 : F) * rho 4589) = ((1 : F) * rho 4601)

def relationRow5108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4590) * ((1 : F) * rho 4590) = ((1 : F) * rho 4602)

def relationRow5109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4603) * ((-1 : F) * rho 4601 + (1 : F) * rho 4602) = ((2 : F) * rho 4600)

def relationRow5110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4604) * ((2 : F) + (1 : F) * rho 4601 + (-1 : F) * rho 4602) = ((1 : F) * rho 4601 + (1 : F) * rho 4602)

def relationLc996 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 32⟩, ⟨(1 : F), 4178, 14, 31⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5111 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc996 rho) = ((1 : F) * rho 4605)

def relationRow5112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4605) * ((1 : F) * rho 4603 + (1 : F) * rho 4604) = ((1 : F) * rho 4606)

def relationLc997 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 32⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4604) * (relationLc997 rho) = ((1 : F) * rho 4607)

def relationLc998 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4603) * (relationLc998 rho) = ((1 : F) * rho 4608)

def relationRow5115 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4607) * ((1 : F) * rho 4608) = ((1 : F) * rho 4609)

def relationRow5116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4610) * ((1 : F) + (1 : F) * rho 4609) = ((1 : F) * rho 4607 + (1 : F) * rho 4608)

def relationRow5117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4611) * ((1 : F) + (-1 : F) * rho 4609) = ((1 : F) * rho 4606 + (-1 : F) * rho 4607 + (-1 : F) * rho 4608)

def relationLc999 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 32⟩], residual := [((-1 : F), 2212), ((1 : F), 4610)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1165) * (relationLc999 rho) = ((1 : F) * rho 4612)

def relationLc1000 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 32⟩], residual := [((1 : F), 4611)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1165) * (relationLc1000 rho) = ((1 : F) * rho 4613)

def relationRow5120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4603) * ((1 : F) * rho 4604) = ((1 : F) * rho 4614)

def relationRow5121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4603) * ((1 : F) * rho 4603) = ((1 : F) * rho 4615)

def relationRow5122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4604) * ((1 : F) * rho 4604) = ((1 : F) * rho 4616)

def relationRow5123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4617) * ((-1 : F) * rho 4615 + (1 : F) * rho 4616) = ((2 : F) * rho 4614)

def relationRow5124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4618) * ((2 : F) + (1 : F) * rho 4615 + (-1 : F) * rho 4616) = ((1 : F) * rho 4615 + (1 : F) * rho 4616)

def relationLc1001 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 33⟩, ⟨(1 : F), 4178, 14, 32⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5125 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1001 rho) = ((1 : F) * rho 4619)

def relationRow5126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4619) * ((1 : F) * rho 4617 + (1 : F) * rho 4618) = ((1 : F) * rho 4620)

def relationLc1002 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 33⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4618) * (relationLc1002 rho) = ((1 : F) * rho 4621)

def relationLc1003 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4617) * (relationLc1003 rho) = ((1 : F) * rho 4622)

def relationRow5129 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4621) * ((1 : F) * rho 4622) = ((1 : F) * rho 4623)

def relationRow5130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4624) * ((1 : F) + (1 : F) * rho 4623) = ((1 : F) * rho 4621 + (1 : F) * rho 4622)

def relationRow5131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4625) * ((1 : F) + (-1 : F) * rho 4623) = ((1 : F) * rho 4620 + (-1 : F) * rho 4621 + (-1 : F) * rho 4622)

def relationLc1004 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 33⟩], residual := [((-1 : F), 2212), ((1 : F), 4624)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1166) * (relationLc1004 rho) = ((1 : F) * rho 4626)

def relationLc1005 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 33⟩], residual := [((1 : F), 4625)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1166) * (relationLc1005 rho) = ((1 : F) * rho 4627)

def relationRow5134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4617) * ((1 : F) * rho 4618) = ((1 : F) * rho 4628)

def relationRow5135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4617) * ((1 : F) * rho 4617) = ((1 : F) * rho 4629)

def relationRow5136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4618) * ((1 : F) * rho 4618) = ((1 : F) * rho 4630)

def relationRow5137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4631) * ((-1 : F) * rho 4629 + (1 : F) * rho 4630) = ((2 : F) * rho 4628)

def relationRow5138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4632) * ((2 : F) + (1 : F) * rho 4629 + (-1 : F) * rho 4630) = ((1 : F) * rho 4629 + (1 : F) * rho 4630)

def relationLc1006 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 34⟩, ⟨(1 : F), 4178, 14, 33⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5139 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1006 rho) = ((1 : F) * rho 4633)

def relationRow5140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4633) * ((1 : F) * rho 4631 + (1 : F) * rho 4632) = ((1 : F) * rho 4634)

def relationLc1007 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 34⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4632) * (relationLc1007 rho) = ((1 : F) * rho 4635)

def relationLc1008 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4631) * (relationLc1008 rho) = ((1 : F) * rho 4636)

def relationRow5143 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4635) * ((1 : F) * rho 4636) = ((1 : F) * rho 4637)

def relationRow5144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4638) * ((1 : F) + (1 : F) * rho 4637) = ((1 : F) * rho 4635 + (1 : F) * rho 4636)

def relationRow5145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4639) * ((1 : F) + (-1 : F) * rho 4637) = ((1 : F) * rho 4634 + (-1 : F) * rho 4635 + (-1 : F) * rho 4636)

def relationLc1009 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 34⟩], residual := [((-1 : F), 2212), ((1 : F), 4638)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1167) * (relationLc1009 rho) = ((1 : F) * rho 4640)

def relationLc1010 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 34⟩], residual := [((1 : F), 4639)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1167) * (relationLc1010 rho) = ((1 : F) * rho 4641)

def relationRow5148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4631) * ((1 : F) * rho 4632) = ((1 : F) * rho 4642)

def relationRow5149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4631) * ((1 : F) * rho 4631) = ((1 : F) * rho 4643)

def relationRow5150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4632) * ((1 : F) * rho 4632) = ((1 : F) * rho 4644)

def relationRow5151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4645) * ((-1 : F) * rho 4643 + (1 : F) * rho 4644) = ((2 : F) * rho 4642)

def relationRow5152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4646) * ((2 : F) + (1 : F) * rho 4643 + (-1 : F) * rho 4644) = ((1 : F) * rho 4643 + (1 : F) * rho 4644)

def relationLc1011 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 35⟩, ⟨(1 : F), 4178, 14, 34⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5153 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1011 rho) = ((1 : F) * rho 4647)

def relationRow5154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4647) * ((1 : F) * rho 4645 + (1 : F) * rho 4646) = ((1 : F) * rho 4648)

def relationLc1012 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 35⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4646) * (relationLc1012 rho) = ((1 : F) * rho 4649)

def relationLc1013 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4645) * (relationLc1013 rho) = ((1 : F) * rho 4650)

def relationRow5157 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4649) * ((1 : F) * rho 4650) = ((1 : F) * rho 4651)

def relationRow5158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4652) * ((1 : F) + (1 : F) * rho 4651) = ((1 : F) * rho 4649 + (1 : F) * rho 4650)

def relationRow5159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4653) * ((1 : F) + (-1 : F) * rho 4651) = ((1 : F) * rho 4648 + (-1 : F) * rho 4649 + (-1 : F) * rho 4650)

def relationLc1014 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2226, 13, 149⟩, ⟨(-1 : F), 4164, 14, 35⟩], residual := [((-1 : F), 2212), ((1 : F), 4652)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1168) * (relationLc1014 rho) = ((1 : F) * rho 4654)

def relationLc1015 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2214, 13, 150⟩, ⟨(-1 : F), 4165, 14, 35⟩], residual := [((1 : F), 4653)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1168) * (relationLc1015 rho) = ((1 : F) * rho 4655)

def relationRow5162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4645) * ((1 : F) * rho 4646) = ((1 : F) * rho 4656)

def relationRow5163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4645) * ((1 : F) * rho 4645) = ((1 : F) * rho 4657)

def relationRow5164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4646) * ((1 : F) * rho 4646) = ((1 : F) * rho 4658)

def relationRow5165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4659) * ((-1 : F) * rho 4657 + (1 : F) * rho 4658) = ((2 : F) * rho 4656)

def relationRow5166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4660) * ((2 : F) + (1 : F) * rho 4657 + (-1 : F) * rho 4658) = ((1 : F) * rho 4657 + (1 : F) * rho 4658)

def relationLc1016 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 151⟩, ⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4165, 14, 36⟩, ⟨(1 : F), 4178, 14, 35⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5167 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1016 rho) = ((1 : F) * rho 4661)

def relationRow5168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4661) * ((1 : F) * rho 4659 + (1 : F) * rho 4660) = ((1 : F) * rho 4662)

def relationLc1017 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 2226, 13, 149⟩, ⟨(1 : F), 4164, 14, 36⟩], residual := [((1 : F), 2212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4660) * (relationLc1017 rho) = ((1 : F) * rho 4663)

def relationLc1018 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2214, 13, 150⟩, ⟨(1 : F), 4165, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4659) * (relationLc1018 rho) = ((1 : F) * rho 4664)

def relationRow5171 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4663) * ((1 : F) * rho 4664) = ((1 : F) * rho 4665)

def relationRow5172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4666) * ((1 : F) + (1 : F) * rho 4665) = ((1 : F) * rho 4663 + (1 : F) * rho 4664)

def relationRow5173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4667) * ((1 : F) + (-1 : F) * rho 4665) = ((1 : F) * rho 4662 + (-1 : F) * rho 4663 + (-1 : F) * rho 4664)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
