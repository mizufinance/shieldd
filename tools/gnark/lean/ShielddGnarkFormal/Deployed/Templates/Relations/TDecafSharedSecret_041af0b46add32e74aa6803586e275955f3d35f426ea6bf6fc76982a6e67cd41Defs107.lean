import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41Defs106

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41

variable {F : Type} [CommRing F]

def relationRow6081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6086) * ((1 : F) * rho 6086) = ((1 : F) * rho 6089)

def relationRow6082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6090) * ((-1 : F) * rho 6088 + (1 : F) * rho 6089) = ((2 : F) * rho 6087)

def relationRow6083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6091) * ((2 : F) + (1 : F) * rho 6088 + (-1 : F) * rho 6089) = ((1 : F) * rho 6088 + (1 : F) * rho 6089)

def relationRow6084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6090) * ((1 : F) * rho 6091) = ((1 : F) * rho 6092)

def relationRow6085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6090) * ((1 : F) * rho 6090) = ((1 : F) * rho 6093)

def relationRow6086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6091) * ((1 : F) * rho 6091) = ((1 : F) * rho 6094)

def relationRow6087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6095) * ((-1 : F) * rho 6093 + (1 : F) * rho 6094) = ((2 : F) * rho 6092)

def relationRow6088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6096) * ((2 : F) + (1 : F) * rho 6093 + (-1 : F) * rho 6094) = ((1 : F) * rho 6093 + (1 : F) * rho 6094)

def relationRow6089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 6097)

def relationRow6090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113) * ((1 : F) * rho 4577 + (1 : F) * rho 6097) = ((1 : F) * rho 6098)

def relationRow6091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 6099)

def relationRow6092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 6100)

def relationRow6093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 6100) = ((1 : F) * rho 6101)

def relationRow6094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 6102)

def relationRow6095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6095 + (1 : F) * rho 6096) * ((1 : F) + (1 : F) * rho 6098 + (1 : F) * rho 6099 + (1 : F) * rho 6101 + (1 : F) * rho 6102) = ((1 : F) * rho 6103)

def relationRow6096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6095) * ((1 : F) + (1 : F) * rho 6101 + (1 : F) * rho 6102) = ((1 : F) * rho 6104)

def relationRow6097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6096) * ((1 : F) * rho 6098 + (1 : F) * rho 6099) = ((1 : F) * rho 6105)

def relationRow6098 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6104) * ((1 : F) * rho 6105) = ((1 : F) * rho 6106)

def relationRow6099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6107) * ((1 : F) + (1 : F) * rho 6106) = ((1 : F) * rho 6104 + (1 : F) * rho 6105)

def relationRow6100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6108) * ((1 : F) + (-1 : F) * rho 6106) = ((1 : F) * rho 6103 + (-1 : F) * rho 6104 + (-1 : F) * rho 6105)

def relationRow6101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6107) * ((1 : F) * rho 6108) = ((1 : F) * rho 6109)

def relationRow6102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6107) * ((1 : F) * rho 6107) = ((1 : F) * rho 6110)

def relationRow6103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6108) * ((1 : F) * rho 6108) = ((1 : F) * rho 6111)

def relationRow6104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6112) * ((-1 : F) * rho 6110 + (1 : F) * rho 6111) = ((2 : F) * rho 6109)

def relationRow6105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6113) * ((2 : F) + (1 : F) * rho 6110 + (-1 : F) * rho 6111) = ((1 : F) * rho 6110 + (1 : F) * rho 6111)

def relationRow6106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6112) * ((1 : F) * rho 6113) = ((1 : F) * rho 6114)

def relationRow6107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6112) * ((1 : F) * rho 6112) = ((1 : F) * rho 6115)

def relationRow6108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6113) * ((1 : F) * rho 6113) = ((1 : F) * rho 6116)

def relationRow6109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6117) * ((-1 : F) * rho 6115 + (1 : F) * rho 6116) = ((2 : F) * rho 6114)

def relationRow6110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6118) * ((2 : F) + (1 : F) * rho 6115 + (-1 : F) * rho 6116) = ((1 : F) * rho 6115 + (1 : F) * rho 6116)

def relationRow6111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 6119)

def relationRow6112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 111) * ((1 : F) * rho 4577 + (1 : F) * rho 6119) = ((1 : F) * rho 6120)

def relationRow6113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 6121)

def relationRow6114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 6122)

def relationRow6115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 111) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 6122) = ((1 : F) * rho 6123)

def relationRow6116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 6124)

def relationRow6117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6117 + (1 : F) * rho 6118) * ((1 : F) + (1 : F) * rho 6120 + (1 : F) * rho 6121 + (1 : F) * rho 6123 + (1 : F) * rho 6124) = ((1 : F) * rho 6125)

def relationRow6118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6117) * ((1 : F) + (1 : F) * rho 6123 + (1 : F) * rho 6124) = ((1 : F) * rho 6126)

def relationRow6119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6118) * ((1 : F) * rho 6120 + (1 : F) * rho 6121) = ((1 : F) * rho 6127)

def relationRow6120 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6126) * ((1 : F) * rho 6127) = ((1 : F) * rho 6128)

def relationRow6121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6129) * ((1 : F) + (1 : F) * rho 6128) = ((1 : F) * rho 6126 + (1 : F) * rho 6127)

def relationRow6122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6130) * ((1 : F) + (-1 : F) * rho 6128) = ((1 : F) * rho 6125 + (-1 : F) * rho 6126 + (-1 : F) * rho 6127)

def relationRow6123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6129) * ((1 : F) * rho 6130) = ((1 : F) * rho 6131)

def relationRow6124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6129) * ((1 : F) * rho 6129) = ((1 : F) * rho 6132)

def relationRow6125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6130) * ((1 : F) * rho 6130) = ((1 : F) * rho 6133)

def relationRow6126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6134) * ((-1 : F) * rho 6132 + (1 : F) * rho 6133) = ((2 : F) * rho 6131)

def relationRow6127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6135) * ((2 : F) + (1 : F) * rho 6132 + (-1 : F) * rho 6133) = ((1 : F) * rho 6132 + (1 : F) * rho 6133)

def relationRow6128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6134) * ((1 : F) * rho 6135) = ((1 : F) * rho 6136)

def relationRow6129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6134) * ((1 : F) * rho 6134) = ((1 : F) * rho 6137)

def relationRow6130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6135) * ((1 : F) * rho 6135) = ((1 : F) * rho 6138)

def relationRow6131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6139) * ((-1 : F) * rho 6137 + (1 : F) * rho 6138) = ((2 : F) * rho 6136)

def relationRow6132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6140) * ((2 : F) + (1 : F) * rho 6137 + (-1 : F) * rho 6138) = ((1 : F) * rho 6137 + (1 : F) * rho 6138)

def relationRow6133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 6141)

def relationRow6134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109) * ((1 : F) * rho 4577 + (1 : F) * rho 6141) = ((1 : F) * rho 6142)

def relationRow6135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 6143)

def relationRow6136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 6144)

def relationRow6137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 6144) = ((1 : F) * rho 6145)

def relationRow6138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 6146)

def relationRow6139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6139 + (1 : F) * rho 6140) * ((1 : F) + (1 : F) * rho 6142 + (1 : F) * rho 6143 + (1 : F) * rho 6145 + (1 : F) * rho 6146) = ((1 : F) * rho 6147)

def relationRow6140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6139) * ((1 : F) + (1 : F) * rho 6145 + (1 : F) * rho 6146) = ((1 : F) * rho 6148)

def relationRow6141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6140) * ((1 : F) * rho 6142 + (1 : F) * rho 6143) = ((1 : F) * rho 6149)

def relationRow6142 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6148) * ((1 : F) * rho 6149) = ((1 : F) * rho 6150)

def relationRow6143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6151) * ((1 : F) + (1 : F) * rho 6150) = ((1 : F) * rho 6148 + (1 : F) * rho 6149)

def relationRow6144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6152) * ((1 : F) + (-1 : F) * rho 6150) = ((1 : F) * rho 6147 + (-1 : F) * rho 6148 + (-1 : F) * rho 6149)

def relationRow6145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6151) * ((1 : F) * rho 6152) = ((1 : F) * rho 6153)

def relationRow6146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6151) * ((1 : F) * rho 6151) = ((1 : F) * rho 6154)

def relationRow6147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6152) * ((1 : F) * rho 6152) = ((1 : F) * rho 6155)

def relationRow6148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6156) * ((-1 : F) * rho 6154 + (1 : F) * rho 6155) = ((2 : F) * rho 6153)

def relationRow6149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6157) * ((2 : F) + (1 : F) * rho 6154 + (-1 : F) * rho 6155) = ((1 : F) * rho 6154 + (1 : F) * rho 6155)

def relationRow6150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6156) * ((1 : F) * rho 6157) = ((1 : F) * rho 6158)

def relationRow6151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6156) * ((1 : F) * rho 6156) = ((1 : F) * rho 6159)

def relationRow6152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6157) * ((1 : F) * rho 6157) = ((1 : F) * rho 6160)

def relationRow6153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6161) * ((-1 : F) * rho 6159 + (1 : F) * rho 6160) = ((2 : F) * rho 6158)

def relationRow6154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6162) * ((2 : F) + (1 : F) * rho 6159 + (-1 : F) * rho 6160) = ((1 : F) * rho 6159 + (1 : F) * rho 6160)

def relationRow6155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 6163)

def relationRow6156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107) * ((1 : F) * rho 4577 + (1 : F) * rho 6163) = ((1 : F) * rho 6164)

def relationRow6157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 6165)

def relationRow6158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 6166)

def relationRow6159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 6166) = ((1 : F) * rho 6167)

def relationRow6160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 6168)

def relationRow6161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6161 + (1 : F) * rho 6162) * ((1 : F) + (1 : F) * rho 6164 + (1 : F) * rho 6165 + (1 : F) * rho 6167 + (1 : F) * rho 6168) = ((1 : F) * rho 6169)

def relationRow6162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6161) * ((1 : F) + (1 : F) * rho 6167 + (1 : F) * rho 6168) = ((1 : F) * rho 6170)

def relationRow6163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6162) * ((1 : F) * rho 6164 + (1 : F) * rho 6165) = ((1 : F) * rho 6171)

def relationRow6164 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6170) * ((1 : F) * rho 6171) = ((1 : F) * rho 6172)

def relationRow6165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6173) * ((1 : F) + (1 : F) * rho 6172) = ((1 : F) * rho 6170 + (1 : F) * rho 6171)

def relationRow6166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6174) * ((1 : F) + (-1 : F) * rho 6172) = ((1 : F) * rho 6169 + (-1 : F) * rho 6170 + (-1 : F) * rho 6171)

def relationRow6167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6173) * ((1 : F) * rho 6174) = ((1 : F) * rho 6175)

def relationRow6168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6173) * ((1 : F) * rho 6173) = ((1 : F) * rho 6176)

def relationRow6169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6174) * ((1 : F) * rho 6174) = ((1 : F) * rho 6177)

def relationRow6170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6178) * ((-1 : F) * rho 6176 + (1 : F) * rho 6177) = ((2 : F) * rho 6175)

def relationRow6171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6179) * ((2 : F) + (1 : F) * rho 6176 + (-1 : F) * rho 6177) = ((1 : F) * rho 6176 + (1 : F) * rho 6177)

def relationRow6172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6178) * ((1 : F) * rho 6179) = ((1 : F) * rho 6180)

def relationRow6173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6178) * ((1 : F) * rho 6178) = ((1 : F) * rho 6181)

def relationRow6174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6179) * ((1 : F) * rho 6179) = ((1 : F) * rho 6182)

def relationRow6175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6183) * ((-1 : F) * rho 6181 + (1 : F) * rho 6182) = ((2 : F) * rho 6180)

def relationRow6176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6184) * ((2 : F) + (1 : F) * rho 6181 + (-1 : F) * rho 6182) = ((1 : F) * rho 6181 + (1 : F) * rho 6182)

def relationRow6177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 6185)

def relationRow6178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105) * ((1 : F) * rho 4577 + (1 : F) * rho 6185) = ((1 : F) * rho 6186)

def relationRow6179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 6187)

def relationRow6180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 6188)

def relationRow6181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 6188) = ((1 : F) * rho 6189)

def relationRow6182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 6190)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41
