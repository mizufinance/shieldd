import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg108Defs8

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg108

def relationRow2148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108700) * ((1 : F) + (1 : F) * rho 108618 + (1 : F) * rho 108631 + (1 : F) * rho 108644 + (1 : F) * rho 108657 + (1 : F) * rho 108670 + (1 : F) * rho 108683 + (1 : F) * rho 108696) = ((1 : F) * rho 108704)

def relationRow2149 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108703) * ((1 : F) * rho 108704) = ((1 : F) * rho 108705)

def relationRow2150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108706) * ((1 : F) + (1 : F) * rho 108705) = ((1 : F) * rho 108703 + (1 : F) * rho 108704)

def relationRow2151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108707) * ((1 : F) + (-1 : F) * rho 108705) = ((1 : F) * rho 108702 + (-1 : F) * rho 108703 + (-1 : F) * rho 108704)

def relationRow2152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108372) * ((-1 : F) * rho 108617 + (-1 : F) * rho 108630 + (-1 : F) * rho 108643 + (-1 : F) * rho 108656 + (-1 : F) * rho 108669 + (-1 : F) * rho 108682 + (-1 : F) * rho 108695 + (1 : F) * rho 108706) = ((1 : F) * rho 108708)

def relationRow2153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108372) * ((-1 : F) + (-1 : F) * rho 108618 + (-1 : F) * rho 108631 + (-1 : F) * rho 108644 + (-1 : F) * rho 108657 + (-1 : F) * rho 108670 + (-1 : F) * rho 108683 + (-1 : F) * rho 108696 + (1 : F) * rho 108707) = ((1 : F) * rho 108709)

def relationRow2154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108700) * ((1 : F) * rho 108701) = ((1 : F) * rho 108710)

def relationRow2155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108700) * ((1 : F) * rho 108700) = ((1 : F) * rho 108711)

def relationRow2156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108701) * ((1 : F) * rho 108701) = ((1 : F) * rho 108712)

def relationRow2157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108713) * ((-1 : F) * rho 108711 + (1 : F) * rho 108712) = ((2 : F) * rho 108710)

def relationRow2158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108714) * ((2 : F) + (1 : F) * rho 108711 + (-1 : F) * rho 108712) = ((1 : F) * rho 108711 + (1 : F) * rho 108712)

def relationRow2159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108713 + (1 : F) * rho 108714) * ((1 : F) + (1 : F) * rho 108617 + (1 : F) * rho 108618 + (1 : F) * rho 108630 + (1 : F) * rho 108631 + (1 : F) * rho 108643 + (1 : F) * rho 108644 + (1 : F) * rho 108656 + (1 : F) * rho 108657 + (1 : F) * rho 108669 + (1 : F) * rho 108670 + (1 : F) * rho 108682 + (1 : F) * rho 108683 + (1 : F) * rho 108695 + (1 : F) * rho 108696 + (1 : F) * rho 108708 + (1 : F) * rho 108709) = ((1 : F) * rho 108715)

def relationRow2160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108714) * ((1 : F) * rho 108617 + (1 : F) * rho 108630 + (1 : F) * rho 108643 + (1 : F) * rho 108656 + (1 : F) * rho 108669 + (1 : F) * rho 108682 + (1 : F) * rho 108695 + (1 : F) * rho 108708) = ((1 : F) * rho 108716)

def relationRow2161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108713) * ((1 : F) + (1 : F) * rho 108618 + (1 : F) * rho 108631 + (1 : F) * rho 108644 + (1 : F) * rho 108657 + (1 : F) * rho 108670 + (1 : F) * rho 108683 + (1 : F) * rho 108696 + (1 : F) * rho 108709) = ((1 : F) * rho 108717)

def relationRow2162 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108716) * ((1 : F) * rho 108717) = ((1 : F) * rho 108718)

def relationRow2163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108719) * ((1 : F) + (1 : F) * rho 108718) = ((1 : F) * rho 108716 + (1 : F) * rho 108717)

def relationRow2164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108720) * ((1 : F) + (-1 : F) * rho 108718) = ((1 : F) * rho 108715 + (-1 : F) * rho 108716 + (-1 : F) * rho 108717)

def relationRow2165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108373) * ((-1 : F) * rho 108617 + (-1 : F) * rho 108630 + (-1 : F) * rho 108643 + (-1 : F) * rho 108656 + (-1 : F) * rho 108669 + (-1 : F) * rho 108682 + (-1 : F) * rho 108695 + (-1 : F) * rho 108708 + (1 : F) * rho 108719) = ((1 : F) * rho 108721)

def relationRow2166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108373) * ((-1 : F) + (-1 : F) * rho 108618 + (-1 : F) * rho 108631 + (-1 : F) * rho 108644 + (-1 : F) * rho 108657 + (-1 : F) * rho 108670 + (-1 : F) * rho 108683 + (-1 : F) * rho 108696 + (-1 : F) * rho 108709 + (1 : F) * rho 108720) = ((1 : F) * rho 108722)

def relationRow2167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108713) * ((1 : F) * rho 108714) = ((1 : F) * rho 108723)

def relationRow2168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108713) * ((1 : F) * rho 108713) = ((1 : F) * rho 108724)

def relationRow2169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108714) * ((1 : F) * rho 108714) = ((1 : F) * rho 108725)

def relationRow2170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108726) * ((-1 : F) * rho 108724 + (1 : F) * rho 108725) = ((2 : F) * rho 108723)

def relationRow2171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108727) * ((2 : F) + (1 : F) * rho 108724 + (-1 : F) * rho 108725) = ((1 : F) * rho 108724 + (1 : F) * rho 108725)

def relationRow2172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108726 + (1 : F) * rho 108727) * ((1 : F) + (1 : F) * rho 108617 + (1 : F) * rho 108618 + (1 : F) * rho 108630 + (1 : F) * rho 108631 + (1 : F) * rho 108643 + (1 : F) * rho 108644 + (1 : F) * rho 108656 + (1 : F) * rho 108657 + (1 : F) * rho 108669 + (1 : F) * rho 108670 + (1 : F) * rho 108682 + (1 : F) * rho 108683 + (1 : F) * rho 108695 + (1 : F) * rho 108696 + (1 : F) * rho 108708 + (1 : F) * rho 108709 + (1 : F) * rho 108721 + (1 : F) * rho 108722) = ((1 : F) * rho 108728)

def relationRow2173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108727) * ((1 : F) * rho 108617 + (1 : F) * rho 108630 + (1 : F) * rho 108643 + (1 : F) * rho 108656 + (1 : F) * rho 108669 + (1 : F) * rho 108682 + (1 : F) * rho 108695 + (1 : F) * rho 108708 + (1 : F) * rho 108721) = ((1 : F) * rho 108729)

def relationRow2174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108726) * ((1 : F) + (1 : F) * rho 108618 + (1 : F) * rho 108631 + (1 : F) * rho 108644 + (1 : F) * rho 108657 + (1 : F) * rho 108670 + (1 : F) * rho 108683 + (1 : F) * rho 108696 + (1 : F) * rho 108709 + (1 : F) * rho 108722) = ((1 : F) * rho 108730)

def relationRow2175 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108729) * ((1 : F) * rho 108730) = ((1 : F) * rho 108731)

def relationRow2176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108732) * ((1 : F) + (1 : F) * rho 108731) = ((1 : F) * rho 108729 + (1 : F) * rho 108730)

def relationRow2177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108733) * ((1 : F) + (-1 : F) * rho 108731) = ((1 : F) * rho 108728 + (-1 : F) * rho 108729 + (-1 : F) * rho 108730)

def relationRow2178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108374) * ((-1 : F) * rho 108617 + (-1 : F) * rho 108630 + (-1 : F) * rho 108643 + (-1 : F) * rho 108656 + (-1 : F) * rho 108669 + (-1 : F) * rho 108682 + (-1 : F) * rho 108695 + (-1 : F) * rho 108708 + (-1 : F) * rho 108721 + (1 : F) * rho 108732) = ((1 : F) * rho 108734)

def relationRow2179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108374) * ((-1 : F) + (-1 : F) * rho 108618 + (-1 : F) * rho 108631 + (-1 : F) * rho 108644 + (-1 : F) * rho 108657 + (-1 : F) * rho 108670 + (-1 : F) * rho 108683 + (-1 : F) * rho 108696 + (-1 : F) * rho 108709 + (-1 : F) * rho 108722 + (1 : F) * rho 108733) = ((1 : F) * rho 108735)

def relationRow2180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108726) * ((1 : F) * rho 108727) = ((1 : F) * rho 108736)

def relationRow2181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108726) * ((1 : F) * rho 108726) = ((1 : F) * rho 108737)

def relationRow2182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108727) * ((1 : F) * rho 108727) = ((1 : F) * rho 108738)

def relationRow2183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108739) * ((-1 : F) * rho 108737 + (1 : F) * rho 108738) = ((2 : F) * rho 108736)

def relationRow2184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108740) * ((2 : F) + (1 : F) * rho 108737 + (-1 : F) * rho 108738) = ((1 : F) * rho 108737 + (1 : F) * rho 108738)

def relationRow2185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108739 + (1 : F) * rho 108740) * ((1 : F) + (1 : F) * rho 108617 + (1 : F) * rho 108618 + (1 : F) * rho 108630 + (1 : F) * rho 108631 + (1 : F) * rho 108643 + (1 : F) * rho 108644 + (1 : F) * rho 108656 + (1 : F) * rho 108657 + (1 : F) * rho 108669 + (1 : F) * rho 108670 + (1 : F) * rho 108682 + (1 : F) * rho 108683 + (1 : F) * rho 108695 + (1 : F) * rho 108696 + (1 : F) * rho 108708 + (1 : F) * rho 108709 + (1 : F) * rho 108721 + (1 : F) * rho 108722 + (1 : F) * rho 108734 + (1 : F) * rho 108735) = ((1 : F) * rho 108741)

def relationRow2186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108740) * ((1 : F) * rho 108617 + (1 : F) * rho 108630 + (1 : F) * rho 108643 + (1 : F) * rho 108656 + (1 : F) * rho 108669 + (1 : F) * rho 108682 + (1 : F) * rho 108695 + (1 : F) * rho 108708 + (1 : F) * rho 108721 + (1 : F) * rho 108734) = ((1 : F) * rho 108742)

def relationRow2187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108739) * ((1 : F) + (1 : F) * rho 108618 + (1 : F) * rho 108631 + (1 : F) * rho 108644 + (1 : F) * rho 108657 + (1 : F) * rho 108670 + (1 : F) * rho 108683 + (1 : F) * rho 108696 + (1 : F) * rho 108709 + (1 : F) * rho 108722 + (1 : F) * rho 108735) = ((1 : F) * rho 108743)

def relationRow2188 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108742) * ((1 : F) * rho 108743) = ((1 : F) * rho 108744)

def relationRow2189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108745) * ((1 : F) + (1 : F) * rho 108744) = ((1 : F) * rho 108742 + (1 : F) * rho 108743)

def relationRow2190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108746) * ((1 : F) + (-1 : F) * rho 108744) = ((1 : F) * rho 108741 + (-1 : F) * rho 108742 + (-1 : F) * rho 108743)

def relationRow2191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108375) * ((-1 : F) * rho 108617 + (-1 : F) * rho 108630 + (-1 : F) * rho 108643 + (-1 : F) * rho 108656 + (-1 : F) * rho 108669 + (-1 : F) * rho 108682 + (-1 : F) * rho 108695 + (-1 : F) * rho 108708 + (-1 : F) * rho 108721 + (-1 : F) * rho 108734 + (1 : F) * rho 108745) = ((1 : F) * rho 108747)

def relationRow2192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108375) * ((-1 : F) + (-1 : F) * rho 108618 + (-1 : F) * rho 108631 + (-1 : F) * rho 108644 + (-1 : F) * rho 108657 + (-1 : F) * rho 108670 + (-1 : F) * rho 108683 + (-1 : F) * rho 108696 + (-1 : F) * rho 108709 + (-1 : F) * rho 108722 + (-1 : F) * rho 108735 + (1 : F) * rho 108746) = ((1 : F) * rho 108748)

def relationRow2193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108739) * ((1 : F) * rho 108740) = ((1 : F) * rho 108749)

def relationRow2194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108739) * ((1 : F) * rho 108739) = ((1 : F) * rho 108750)

def relationRow2195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108740) * ((1 : F) * rho 108740) = ((1 : F) * rho 108751)

def relationRow2196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108752) * ((-1 : F) * rho 108750 + (1 : F) * rho 108751) = ((2 : F) * rho 108749)

def relationRow2197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108753) * ((2 : F) + (1 : F) * rho 108750 + (-1 : F) * rho 108751) = ((1 : F) * rho 108750 + (1 : F) * rho 108751)

def relationRow2198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108752 + (1 : F) * rho 108753) * ((1 : F) + (1 : F) * rho 108617 + (1 : F) * rho 108618 + (1 : F) * rho 108630 + (1 : F) * rho 108631 + (1 : F) * rho 108643 + (1 : F) * rho 108644 + (1 : F) * rho 108656 + (1 : F) * rho 108657 + (1 : F) * rho 108669 + (1 : F) * rho 108670 + (1 : F) * rho 108682 + (1 : F) * rho 108683 + (1 : F) * rho 108695 + (1 : F) * rho 108696 + (1 : F) * rho 108708 + (1 : F) * rho 108709 + (1 : F) * rho 108721 + (1 : F) * rho 108722 + (1 : F) * rho 108734 + (1 : F) * rho 108735 + (1 : F) * rho 108747 + (1 : F) * rho 108748) = ((1 : F) * rho 108754)

def relationRow2199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108753) * ((1 : F) * rho 108617 + (1 : F) * rho 108630 + (1 : F) * rho 108643 + (1 : F) * rho 108656 + (1 : F) * rho 108669 + (1 : F) * rho 108682 + (1 : F) * rho 108695 + (1 : F) * rho 108708 + (1 : F) * rho 108721 + (1 : F) * rho 108734 + (1 : F) * rho 108747) = ((1 : F) * rho 108755)

def relationRow2200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108752) * ((1 : F) + (1 : F) * rho 108618 + (1 : F) * rho 108631 + (1 : F) * rho 108644 + (1 : F) * rho 108657 + (1 : F) * rho 108670 + (1 : F) * rho 108683 + (1 : F) * rho 108696 + (1 : F) * rho 108709 + (1 : F) * rho 108722 + (1 : F) * rho 108735 + (1 : F) * rho 108748) = ((1 : F) * rho 108756)

def relationRow2201 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108755) * ((1 : F) * rho 108756) = ((1 : F) * rho 108757)

def relationRow2202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108758) * ((1 : F) + (1 : F) * rho 108757) = ((1 : F) * rho 108755 + (1 : F) * rho 108756)

def relationRow2203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108759) * ((1 : F) + (-1 : F) * rho 108757) = ((1 : F) * rho 108754 + (-1 : F) * rho 108755 + (-1 : F) * rho 108756)

def relationRow2204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108376) * ((-1 : F) * rho 108617 + (-1 : F) * rho 108630 + (-1 : F) * rho 108643 + (-1 : F) * rho 108656 + (-1 : F) * rho 108669 + (-1 : F) * rho 108682 + (-1 : F) * rho 108695 + (-1 : F) * rho 108708 + (-1 : F) * rho 108721 + (-1 : F) * rho 108734 + (-1 : F) * rho 108747 + (1 : F) * rho 108758) = ((1 : F) * rho 108760)

def relationRow2205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108376) * ((-1 : F) + (-1 : F) * rho 108618 + (-1 : F) * rho 108631 + (-1 : F) * rho 108644 + (-1 : F) * rho 108657 + (-1 : F) * rho 108670 + (-1 : F) * rho 108683 + (-1 : F) * rho 108696 + (-1 : F) * rho 108709 + (-1 : F) * rho 108722 + (-1 : F) * rho 108735 + (-1 : F) * rho 108748 + (1 : F) * rho 108759) = ((1 : F) * rho 108761)

def relationRow2206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108752) * ((1 : F) * rho 108753) = ((1 : F) * rho 108762)

def relationRow2207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108752) * ((1 : F) * rho 108752) = ((1 : F) * rho 108763)

def relationRow2208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108753) * ((1 : F) * rho 108753) = ((1 : F) * rho 108764)

def relationRow2209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108765) * ((-1 : F) * rho 108763 + (1 : F) * rho 108764) = ((2 : F) * rho 108762)

def relationRow2210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108766) * ((2 : F) + (1 : F) * rho 108763 + (-1 : F) * rho 108764) = ((1 : F) * rho 108763 + (1 : F) * rho 108764)

def relationRow2211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108765 + (1 : F) * rho 108766) * ((1 : F) + (1 : F) * rho 108617 + (1 : F) * rho 108618 + (1 : F) * rho 108630 + (1 : F) * rho 108631 + (1 : F) * rho 108643 + (1 : F) * rho 108644 + (1 : F) * rho 108656 + (1 : F) * rho 108657 + (1 : F) * rho 108669 + (1 : F) * rho 108670 + (1 : F) * rho 108682 + (1 : F) * rho 108683 + (1 : F) * rho 108695 + (1 : F) * rho 108696 + (1 : F) * rho 108708 + (1 : F) * rho 108709 + (1 : F) * rho 108721 + (1 : F) * rho 108722 + (1 : F) * rho 108734 + (1 : F) * rho 108735 + (1 : F) * rho 108747 + (1 : F) * rho 108748 + (1 : F) * rho 108760 + (1 : F) * rho 108761) = ((1 : F) * rho 108767)

def relationRow2212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108766) * ((1 : F) * rho 108617 + (1 : F) * rho 108630 + (1 : F) * rho 108643 + (1 : F) * rho 108656 + (1 : F) * rho 108669 + (1 : F) * rho 108682 + (1 : F) * rho 108695 + (1 : F) * rho 108708 + (1 : F) * rho 108721 + (1 : F) * rho 108734 + (1 : F) * rho 108747 + (1 : F) * rho 108760) = ((1 : F) * rho 108768)

def relationRow2213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108765) * ((1 : F) + (1 : F) * rho 108618 + (1 : F) * rho 108631 + (1 : F) * rho 108644 + (1 : F) * rho 108657 + (1 : F) * rho 108670 + (1 : F) * rho 108683 + (1 : F) * rho 108696 + (1 : F) * rho 108709 + (1 : F) * rho 108722 + (1 : F) * rho 108735 + (1 : F) * rho 108748 + (1 : F) * rho 108761) = ((1 : F) * rho 108769)

def relationRow2214 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108768) * ((1 : F) * rho 108769) = ((1 : F) * rho 108770)

def relationRow2215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108771) * ((1 : F) + (1 : F) * rho 108770) = ((1 : F) * rho 108768 + (1 : F) * rho 108769)

def relationRow2216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108772) * ((1 : F) + (-1 : F) * rho 108770) = ((1 : F) * rho 108767 + (-1 : F) * rho 108768 + (-1 : F) * rho 108769)

def relationRow2217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108377) * ((-1 : F) * rho 108617 + (-1 : F) * rho 108630 + (-1 : F) * rho 108643 + (-1 : F) * rho 108656 + (-1 : F) * rho 108669 + (-1 : F) * rho 108682 + (-1 : F) * rho 108695 + (-1 : F) * rho 108708 + (-1 : F) * rho 108721 + (-1 : F) * rho 108734 + (-1 : F) * rho 108747 + (-1 : F) * rho 108760 + (1 : F) * rho 108771) = ((1 : F) * rho 108773)

def relationRow2218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108377) * ((-1 : F) + (-1 : F) * rho 108618 + (-1 : F) * rho 108631 + (-1 : F) * rho 108644 + (-1 : F) * rho 108657 + (-1 : F) * rho 108670 + (-1 : F) * rho 108683 + (-1 : F) * rho 108696 + (-1 : F) * rho 108709 + (-1 : F) * rho 108722 + (-1 : F) * rho 108735 + (-1 : F) * rho 108748 + (-1 : F) * rho 108761 + (1 : F) * rho 108772) = ((1 : F) * rho 108774)

def relationRow2219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108765) * ((1 : F) * rho 108766) = ((1 : F) * rho 108775)

def relationRow2220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108765) * ((1 : F) * rho 108765) = ((1 : F) * rho 108776)

def relationRow2221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108766) * ((1 : F) * rho 108766) = ((1 : F) * rho 108777)

def relationRow2222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108778) * ((-1 : F) * rho 108776 + (1 : F) * rho 108777) = ((2 : F) * rho 108775)

def relationRow2223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108779) * ((2 : F) + (1 : F) * rho 108776 + (-1 : F) * rho 108777) = ((1 : F) * rho 108776 + (1 : F) * rho 108777)

def relationRow2224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108778 + (1 : F) * rho 108779) * ((1 : F) + (1 : F) * rho 108617 + (1 : F) * rho 108618 + (1 : F) * rho 108630 + (1 : F) * rho 108631 + (1 : F) * rho 108643 + (1 : F) * rho 108644 + (1 : F) * rho 108656 + (1 : F) * rho 108657 + (1 : F) * rho 108669 + (1 : F) * rho 108670 + (1 : F) * rho 108682 + (1 : F) * rho 108683 + (1 : F) * rho 108695 + (1 : F) * rho 108696 + (1 : F) * rho 108708 + (1 : F) * rho 108709 + (1 : F) * rho 108721 + (1 : F) * rho 108722 + (1 : F) * rho 108734 + (1 : F) * rho 108735 + (1 : F) * rho 108747 + (1 : F) * rho 108748 + (1 : F) * rho 108760 + (1 : F) * rho 108761 + (1 : F) * rho 108773 + (1 : F) * rho 108774) = ((1 : F) * rho 108780)

def relationRow2225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108779) * ((1 : F) * rho 108617 + (1 : F) * rho 108630 + (1 : F) * rho 108643 + (1 : F) * rho 108656 + (1 : F) * rho 108669 + (1 : F) * rho 108682 + (1 : F) * rho 108695 + (1 : F) * rho 108708 + (1 : F) * rho 108721 + (1 : F) * rho 108734 + (1 : F) * rho 108747 + (1 : F) * rho 108760 + (1 : F) * rho 108773) = ((1 : F) * rho 108781)

def relationRow2226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108778) * ((1 : F) + (1 : F) * rho 108618 + (1 : F) * rho 108631 + (1 : F) * rho 108644 + (1 : F) * rho 108657 + (1 : F) * rho 108670 + (1 : F) * rho 108683 + (1 : F) * rho 108696 + (1 : F) * rho 108709 + (1 : F) * rho 108722 + (1 : F) * rho 108735 + (1 : F) * rho 108748 + (1 : F) * rho 108761 + (1 : F) * rho 108774) = ((1 : F) * rho 108782)

def relationRow2227 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108781) * ((1 : F) * rho 108782) = ((1 : F) * rho 108783)

def relationRow2228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108784) * ((1 : F) + (1 : F) * rho 108783) = ((1 : F) * rho 108781 + (1 : F) * rho 108782)

def relationRow2229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108785) * ((1 : F) + (-1 : F) * rho 108783) = ((1 : F) * rho 108780 + (-1 : F) * rho 108781 + (-1 : F) * rho 108782)

def relationRow2230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108378) * ((-1 : F) * rho 108617 + (-1 : F) * rho 108630 + (-1 : F) * rho 108643 + (-1 : F) * rho 108656 + (-1 : F) * rho 108669 + (-1 : F) * rho 108682 + (-1 : F) * rho 108695 + (-1 : F) * rho 108708 + (-1 : F) * rho 108721 + (-1 : F) * rho 108734 + (-1 : F) * rho 108747 + (-1 : F) * rho 108760 + (-1 : F) * rho 108773 + (1 : F) * rho 108784) = ((1 : F) * rho 108786)

def relationRow2231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108378) * ((-1 : F) + (-1 : F) * rho 108618 + (-1 : F) * rho 108631 + (-1 : F) * rho 108644 + (-1 : F) * rho 108657 + (-1 : F) * rho 108670 + (-1 : F) * rho 108683 + (-1 : F) * rho 108696 + (-1 : F) * rho 108709 + (-1 : F) * rho 108722 + (-1 : F) * rho 108735 + (-1 : F) * rho 108748 + (-1 : F) * rho 108761 + (-1 : F) * rho 108774 + (1 : F) * rho 108785) = ((1 : F) * rho 108787)

def relationRow2232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108778) * ((1 : F) * rho 108779) = ((1 : F) * rho 108788)

def relationRow2233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108778) * ((1 : F) * rho 108778) = ((1 : F) * rho 108789)

def relationRow2234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108779) * ((1 : F) * rho 108779) = ((1 : F) * rho 108790)

def relationRow2235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108791) * ((-1 : F) * rho 108789 + (1 : F) * rho 108790) = ((2 : F) * rho 108788)

def relationRow2236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108792) * ((2 : F) + (1 : F) * rho 108789 + (-1 : F) * rho 108790) = ((1 : F) * rho 108789 + (1 : F) * rho 108790)

def relationRow2237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108791 + (1 : F) * rho 108792) * ((1 : F) + (1 : F) * rho 108617 + (1 : F) * rho 108618 + (1 : F) * rho 108630 + (1 : F) * rho 108631 + (1 : F) * rho 108643 + (1 : F) * rho 108644 + (1 : F) * rho 108656 + (1 : F) * rho 108657 + (1 : F) * rho 108669 + (1 : F) * rho 108670 + (1 : F) * rho 108682 + (1 : F) * rho 108683 + (1 : F) * rho 108695 + (1 : F) * rho 108696 + (1 : F) * rho 108708 + (1 : F) * rho 108709 + (1 : F) * rho 108721 + (1 : F) * rho 108722 + (1 : F) * rho 108734 + (1 : F) * rho 108735 + (1 : F) * rho 108747 + (1 : F) * rho 108748 + (1 : F) * rho 108760 + (1 : F) * rho 108761 + (1 : F) * rho 108773 + (1 : F) * rho 108774 + (1 : F) * rho 108786 + (1 : F) * rho 108787) = ((1 : F) * rho 108793)

def relationRow2238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108792) * ((1 : F) * rho 108617 + (1 : F) * rho 108630 + (1 : F) * rho 108643 + (1 : F) * rho 108656 + (1 : F) * rho 108669 + (1 : F) * rho 108682 + (1 : F) * rho 108695 + (1 : F) * rho 108708 + (1 : F) * rho 108721 + (1 : F) * rho 108734 + (1 : F) * rho 108747 + (1 : F) * rho 108760 + (1 : F) * rho 108773 + (1 : F) * rho 108786) = ((1 : F) * rho 108794)

def relationRow2239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108791) * ((1 : F) + (1 : F) * rho 108618 + (1 : F) * rho 108631 + (1 : F) * rho 108644 + (1 : F) * rho 108657 + (1 : F) * rho 108670 + (1 : F) * rho 108683 + (1 : F) * rho 108696 + (1 : F) * rho 108709 + (1 : F) * rho 108722 + (1 : F) * rho 108735 + (1 : F) * rho 108748 + (1 : F) * rho 108761 + (1 : F) * rho 108774 + (1 : F) * rho 108787) = ((1 : F) * rho 108795)

def relationRow2240 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108794) * ((1 : F) * rho 108795) = ((1 : F) * rho 108796)

def relationRow2241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108797) * ((1 : F) + (1 : F) * rho 108796) = ((1 : F) * rho 108794 + (1 : F) * rho 108795)

def relationRow2242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108798) * ((1 : F) + (-1 : F) * rho 108796) = ((1 : F) * rho 108793 + (-1 : F) * rho 108794 + (-1 : F) * rho 108795)

def relationRow2243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108379) * ((-1 : F) * rho 108617 + (-1 : F) * rho 108630 + (-1 : F) * rho 108643 + (-1 : F) * rho 108656 + (-1 : F) * rho 108669 + (-1 : F) * rho 108682 + (-1 : F) * rho 108695 + (-1 : F) * rho 108708 + (-1 : F) * rho 108721 + (-1 : F) * rho 108734 + (-1 : F) * rho 108747 + (-1 : F) * rho 108760 + (-1 : F) * rho 108773 + (-1 : F) * rho 108786 + (1 : F) * rho 108797) = ((1 : F) * rho 108799)

def relationRow2244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108379) * ((-1 : F) + (-1 : F) * rho 108618 + (-1 : F) * rho 108631 + (-1 : F) * rho 108644 + (-1 : F) * rho 108657 + (-1 : F) * rho 108670 + (-1 : F) * rho 108683 + (-1 : F) * rho 108696 + (-1 : F) * rho 108709 + (-1 : F) * rho 108722 + (-1 : F) * rho 108735 + (-1 : F) * rho 108748 + (-1 : F) * rho 108761 + (-1 : F) * rho 108774 + (-1 : F) * rho 108787 + (1 : F) * rho 108798) = ((1 : F) * rho 108800)

def relationRow2245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108791) * ((1 : F) * rho 108792) = ((1 : F) * rho 108801)

def relationRow2246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108791) * ((1 : F) * rho 108791) = ((1 : F) * rho 108802)

def relationRow2247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108792) * ((1 : F) * rho 108792) = ((1 : F) * rho 108803)

def relationRow2248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108804) * ((-1 : F) * rho 108802 + (1 : F) * rho 108803) = ((2 : F) * rho 108801)

def relationRow2249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108805) * ((2 : F) + (1 : F) * rho 108802 + (-1 : F) * rho 108803) = ((1 : F) * rho 108802 + (1 : F) * rho 108803)

def relationRow2250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108804 + (1 : F) * rho 108805) * ((1 : F) + (1 : F) * rho 108617 + (1 : F) * rho 108618 + (1 : F) * rho 108630 + (1 : F) * rho 108631 + (1 : F) * rho 108643 + (1 : F) * rho 108644 + (1 : F) * rho 108656 + (1 : F) * rho 108657 + (1 : F) * rho 108669 + (1 : F) * rho 108670 + (1 : F) * rho 108682 + (1 : F) * rho 108683 + (1 : F) * rho 108695 + (1 : F) * rho 108696 + (1 : F) * rho 108708 + (1 : F) * rho 108709 + (1 : F) * rho 108721 + (1 : F) * rho 108722 + (1 : F) * rho 108734 + (1 : F) * rho 108735 + (1 : F) * rho 108747 + (1 : F) * rho 108748 + (1 : F) * rho 108760 + (1 : F) * rho 108761 + (1 : F) * rho 108773 + (1 : F) * rho 108774 + (1 : F) * rho 108786 + (1 : F) * rho 108787 + (1 : F) * rho 108799 + (1 : F) * rho 108800) = ((1 : F) * rho 108806)

def relationRow2251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108805) * ((1 : F) * rho 108617 + (1 : F) * rho 108630 + (1 : F) * rho 108643 + (1 : F) * rho 108656 + (1 : F) * rho 108669 + (1 : F) * rho 108682 + (1 : F) * rho 108695 + (1 : F) * rho 108708 + (1 : F) * rho 108721 + (1 : F) * rho 108734 + (1 : F) * rho 108747 + (1 : F) * rho 108760 + (1 : F) * rho 108773 + (1 : F) * rho 108786 + (1 : F) * rho 108799) = ((1 : F) * rho 108807)

def relationRow2252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108804) * ((1 : F) + (1 : F) * rho 108618 + (1 : F) * rho 108631 + (1 : F) * rho 108644 + (1 : F) * rho 108657 + (1 : F) * rho 108670 + (1 : F) * rho 108683 + (1 : F) * rho 108696 + (1 : F) * rho 108709 + (1 : F) * rho 108722 + (1 : F) * rho 108735 + (1 : F) * rho 108748 + (1 : F) * rho 108761 + (1 : F) * rho 108774 + (1 : F) * rho 108787 + (1 : F) * rho 108800) = ((1 : F) * rho 108808)

def relationRow2253 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108807) * ((1 : F) * rho 108808) = ((1 : F) * rho 108809)

def relationRow2254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108810) * ((1 : F) + (1 : F) * rho 108809) = ((1 : F) * rho 108807 + (1 : F) * rho 108808)

def relationRow2255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108811) * ((1 : F) + (-1 : F) * rho 108809) = ((1 : F) * rho 108806 + (-1 : F) * rho 108807 + (-1 : F) * rho 108808)

def relationRow2256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108380) * ((-1 : F) * rho 108617 + (-1 : F) * rho 108630 + (-1 : F) * rho 108643 + (-1 : F) * rho 108656 + (-1 : F) * rho 108669 + (-1 : F) * rho 108682 + (-1 : F) * rho 108695 + (-1 : F) * rho 108708 + (-1 : F) * rho 108721 + (-1 : F) * rho 108734 + (-1 : F) * rho 108747 + (-1 : F) * rho 108760 + (-1 : F) * rho 108773 + (-1 : F) * rho 108786 + (-1 : F) * rho 108799 + (1 : F) * rho 108810) = ((1 : F) * rho 108812)

def relationRow2257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108380) * ((-1 : F) + (-1 : F) * rho 108618 + (-1 : F) * rho 108631 + (-1 : F) * rho 108644 + (-1 : F) * rho 108657 + (-1 : F) * rho 108670 + (-1 : F) * rho 108683 + (-1 : F) * rho 108696 + (-1 : F) * rho 108709 + (-1 : F) * rho 108722 + (-1 : F) * rho 108735 + (-1 : F) * rho 108748 + (-1 : F) * rho 108761 + (-1 : F) * rho 108774 + (-1 : F) * rho 108787 + (-1 : F) * rho 108800 + (1 : F) * rho 108811) = ((1 : F) * rho 108813)

def relationRow2258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108804) * ((1 : F) * rho 108805) = ((1 : F) * rho 108814)

def relationRow2259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108804) * ((1 : F) * rho 108804) = ((1 : F) * rho 108815)

def relationRow2260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108805) * ((1 : F) * rho 108805) = ((1 : F) * rho 108816)

def relationRow2261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108817) * ((-1 : F) * rho 108815 + (1 : F) * rho 108816) = ((2 : F) * rho 108814)

def relationRow2262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108818) * ((2 : F) + (1 : F) * rho 108815 + (-1 : F) * rho 108816) = ((1 : F) * rho 108815 + (1 : F) * rho 108816)

def relationLc1513 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 16⟩, ⟨(1 : F), 108618, 13, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108817 + (1 : F) * rho 108818) * (relationLc1513 rho) = ((1 : F) * rho 108819)

def relationLc1514 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108818) * (relationLc1514 rho) = ((1 : F) * rho 108820)

def relationLc1515 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108817) * (relationLc1515 rho) = ((1 : F) * rho 108821)

def relationRow2266 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108820) * ((1 : F) * rho 108821) = ((1 : F) * rho 108822)

def relationRow2267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108823) * ((1 : F) + (1 : F) * rho 108822) = ((1 : F) * rho 108820 + (1 : F) * rho 108821)

def relationRow2268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108824) * ((1 : F) + (-1 : F) * rho 108822) = ((1 : F) * rho 108819 + (-1 : F) * rho 108820 + (-1 : F) * rho 108821)

def relationLc1516 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 16⟩], residual := [((1 : F), 108823)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108381) * (relationLc1516 rho) = ((1 : F) * rho 108825)

def relationLc1517 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 16⟩], residual := [((1 : F), 108824)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108381) * (relationLc1517 rho) = ((1 : F) * rho 108826)

def relationRow2271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108817) * ((1 : F) * rho 108818) = ((1 : F) * rho 108827)

def relationRow2272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108817) * ((1 : F) * rho 108817) = ((1 : F) * rho 108828)

def relationRow2273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108818) * ((1 : F) * rho 108818) = ((1 : F) * rho 108829)

def relationRow2274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108830) * ((-1 : F) * rho 108828 + (1 : F) * rho 108829) = ((2 : F) * rho 108827)

def relationRow2275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108831) * ((2 : F) + (1 : F) * rho 108828 + (-1 : F) * rho 108829) = ((1 : F) * rho 108828 + (1 : F) * rho 108829)

def relationLc1518 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 17⟩, ⟨(1 : F), 108618, 13, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108830 + (1 : F) * rho 108831) * (relationLc1518 rho) = ((1 : F) * rho 108832)

def relationLc1519 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108831) * (relationLc1519 rho) = ((1 : F) * rho 108833)

def relationLc1520 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108830) * (relationLc1520 rho) = ((1 : F) * rho 108834)

def relationRow2279 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108833) * ((1 : F) * rho 108834) = ((1 : F) * rho 108835)

def relationRow2280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108836) * ((1 : F) + (1 : F) * rho 108835) = ((1 : F) * rho 108833 + (1 : F) * rho 108834)

def relationRow2281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108837) * ((1 : F) + (-1 : F) * rho 108835) = ((1 : F) * rho 108832 + (-1 : F) * rho 108833 + (-1 : F) * rho 108834)

def relationLc1521 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 17⟩], residual := [((1 : F), 108836)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108382) * (relationLc1521 rho) = ((1 : F) * rho 108838)

def relationLc1522 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 17⟩], residual := [((1 : F), 108837)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108382) * (relationLc1522 rho) = ((1 : F) * rho 108839)

def relationRow2284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108830) * ((1 : F) * rho 108831) = ((1 : F) * rho 108840)

def relationRow2285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108830) * ((1 : F) * rho 108830) = ((1 : F) * rho 108841)

def relationRow2286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108831) * ((1 : F) * rho 108831) = ((1 : F) * rho 108842)

def relationRow2287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108843) * ((-1 : F) * rho 108841 + (1 : F) * rho 108842) = ((2 : F) * rho 108840)

def relationRow2288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108844) * ((2 : F) + (1 : F) * rho 108841 + (-1 : F) * rho 108842) = ((1 : F) * rho 108841 + (1 : F) * rho 108842)

def relationLc1523 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 18⟩, ⟨(1 : F), 108618, 13, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108843 + (1 : F) * rho 108844) * (relationLc1523 rho) = ((1 : F) * rho 108845)

def relationLc1524 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108844) * (relationLc1524 rho) = ((1 : F) * rho 108846)

def relationLc1525 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108843) * (relationLc1525 rho) = ((1 : F) * rho 108847)

def relationRow2292 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108846) * ((1 : F) * rho 108847) = ((1 : F) * rho 108848)

def relationRow2293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108849) * ((1 : F) + (1 : F) * rho 108848) = ((1 : F) * rho 108846 + (1 : F) * rho 108847)

def relationRow2294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108850) * ((1 : F) + (-1 : F) * rho 108848) = ((1 : F) * rho 108845 + (-1 : F) * rho 108846 + (-1 : F) * rho 108847)

def relationLc1526 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 18⟩], residual := [((1 : F), 108849)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108383) * (relationLc1526 rho) = ((1 : F) * rho 108851)

def relationLc1527 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 18⟩], residual := [((1 : F), 108850)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108383) * (relationLc1527 rho) = ((1 : F) * rho 108852)

def relationRow2297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108843) * ((1 : F) * rho 108844) = ((1 : F) * rho 108853)

def relationRow2298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108843) * ((1 : F) * rho 108843) = ((1 : F) * rho 108854)

def relationRow2299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108844) * ((1 : F) * rho 108844) = ((1 : F) * rho 108855)

def relationRow2300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108856) * ((-1 : F) * rho 108854 + (1 : F) * rho 108855) = ((2 : F) * rho 108853)

def relationRow2301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108857) * ((2 : F) + (1 : F) * rho 108854 + (-1 : F) * rho 108855) = ((1 : F) * rho 108854 + (1 : F) * rho 108855)

def relationLc1528 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 19⟩, ⟨(1 : F), 108618, 13, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108856 + (1 : F) * rho 108857) * (relationLc1528 rho) = ((1 : F) * rho 108858)

def relationLc1529 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108857) * (relationLc1529 rho) = ((1 : F) * rho 108859)

def relationLc1530 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108856) * (relationLc1530 rho) = ((1 : F) * rho 108860)

def relationRow2305 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108859) * ((1 : F) * rho 108860) = ((1 : F) * rho 108861)

def relationRow2306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108862) * ((1 : F) + (1 : F) * rho 108861) = ((1 : F) * rho 108859 + (1 : F) * rho 108860)

def relationRow2307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108863) * ((1 : F) + (-1 : F) * rho 108861) = ((1 : F) * rho 108858 + (-1 : F) * rho 108859 + (-1 : F) * rho 108860)

def relationLc1531 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 19⟩], residual := [((1 : F), 108862)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108384) * (relationLc1531 rho) = ((1 : F) * rho 108864)

def relationLc1532 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 19⟩], residual := [((1 : F), 108863)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108384) * (relationLc1532 rho) = ((1 : F) * rho 108865)

def relationRow2310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108856) * ((1 : F) * rho 108857) = ((1 : F) * rho 108866)

def relationRow2311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108856) * ((1 : F) * rho 108856) = ((1 : F) * rho 108867)

def relationRow2312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108857) * ((1 : F) * rho 108857) = ((1 : F) * rho 108868)

def relationRow2313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108869) * ((-1 : F) * rho 108867 + (1 : F) * rho 108868) = ((2 : F) * rho 108866)

def relationRow2314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108870) * ((2 : F) + (1 : F) * rho 108867 + (-1 : F) * rho 108868) = ((1 : F) * rho 108867 + (1 : F) * rho 108868)

def relationLc1533 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 20⟩, ⟨(1 : F), 108618, 13, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108869 + (1 : F) * rho 108870) * (relationLc1533 rho) = ((1 : F) * rho 108871)

def relationLc1534 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108870) * (relationLc1534 rho) = ((1 : F) * rho 108872)

def relationLc1535 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108869) * (relationLc1535 rho) = ((1 : F) * rho 108873)

def relationRow2318 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108872) * ((1 : F) * rho 108873) = ((1 : F) * rho 108874)

def relationRow2319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108875) * ((1 : F) + (1 : F) * rho 108874) = ((1 : F) * rho 108872 + (1 : F) * rho 108873)

def relationRow2320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108876) * ((1 : F) + (-1 : F) * rho 108874) = ((1 : F) * rho 108871 + (-1 : F) * rho 108872 + (-1 : F) * rho 108873)

def relationLc1536 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 20⟩], residual := [((1 : F), 108875)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108385) * (relationLc1536 rho) = ((1 : F) * rho 108877)

def relationLc1537 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 20⟩], residual := [((1 : F), 108876)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108385) * (relationLc1537 rho) = ((1 : F) * rho 108878)

def relationRow2323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108869) * ((1 : F) * rho 108870) = ((1 : F) * rho 108879)

def relationRow2324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108869) * ((1 : F) * rho 108869) = ((1 : F) * rho 108880)

def relationRow2325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108870) * ((1 : F) * rho 108870) = ((1 : F) * rho 108881)

def relationRow2326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108882) * ((-1 : F) * rho 108880 + (1 : F) * rho 108881) = ((2 : F) * rho 108879)

def relationRow2327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108883) * ((2 : F) + (1 : F) * rho 108880 + (-1 : F) * rho 108881) = ((1 : F) * rho 108880 + (1 : F) * rho 108881)

def relationLc1538 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 21⟩, ⟨(1 : F), 108618, 13, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108882 + (1 : F) * rho 108883) * (relationLc1538 rho) = ((1 : F) * rho 108884)

def relationLc1539 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108883) * (relationLc1539 rho) = ((1 : F) * rho 108885)

def relationLc1540 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108882) * (relationLc1540 rho) = ((1 : F) * rho 108886)

def relationRow2331 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108885) * ((1 : F) * rho 108886) = ((1 : F) * rho 108887)

def relationRow2332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108888) * ((1 : F) + (1 : F) * rho 108887) = ((1 : F) * rho 108885 + (1 : F) * rho 108886)

def relationRow2333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108889) * ((1 : F) + (-1 : F) * rho 108887) = ((1 : F) * rho 108884 + (-1 : F) * rho 108885 + (-1 : F) * rho 108886)

def relationLc1541 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 21⟩], residual := [((1 : F), 108888)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108386) * (relationLc1541 rho) = ((1 : F) * rho 108890)

def relationLc1542 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 21⟩], residual := [((1 : F), 108889)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108386) * (relationLc1542 rho) = ((1 : F) * rho 108891)

def relationRow2336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108882) * ((1 : F) * rho 108883) = ((1 : F) * rho 108892)

def relationRow2337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108882) * ((1 : F) * rho 108882) = ((1 : F) * rho 108893)

def relationRow2338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108883) * ((1 : F) * rho 108883) = ((1 : F) * rho 108894)

def relationRow2339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108895) * ((-1 : F) * rho 108893 + (1 : F) * rho 108894) = ((2 : F) * rho 108892)

def relationRow2340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108896) * ((2 : F) + (1 : F) * rho 108893 + (-1 : F) * rho 108894) = ((1 : F) * rho 108893 + (1 : F) * rho 108894)

def relationLc1543 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 22⟩, ⟨(1 : F), 108618, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108895 + (1 : F) * rho 108896) * (relationLc1543 rho) = ((1 : F) * rho 108897)

def relationLc1544 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108896) * (relationLc1544 rho) = ((1 : F) * rho 108898)

def relationLc1545 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108895) * (relationLc1545 rho) = ((1 : F) * rho 108899)

def relationRow2344 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108898) * ((1 : F) * rho 108899) = ((1 : F) * rho 108900)

def relationRow2345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108901) * ((1 : F) + (1 : F) * rho 108900) = ((1 : F) * rho 108898 + (1 : F) * rho 108899)

def relationRow2346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108902) * ((1 : F) + (-1 : F) * rho 108900) = ((1 : F) * rho 108897 + (-1 : F) * rho 108898 + (-1 : F) * rho 108899)

def relationLc1546 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 22⟩], residual := [((1 : F), 108901)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108387) * (relationLc1546 rho) = ((1 : F) * rho 108903)

def relationLc1547 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 22⟩], residual := [((1 : F), 108902)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108387) * (relationLc1547 rho) = ((1 : F) * rho 108904)

def relationRow2349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108895) * ((1 : F) * rho 108896) = ((1 : F) * rho 108905)

def relationRow2350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108895) * ((1 : F) * rho 108895) = ((1 : F) * rho 108906)

def relationRow2351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108896) * ((1 : F) * rho 108896) = ((1 : F) * rho 108907)

def relationRow2352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108908) * ((-1 : F) * rho 108906 + (1 : F) * rho 108907) = ((2 : F) * rho 108905)

def relationRow2353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108909) * ((2 : F) + (1 : F) * rho 108906 + (-1 : F) * rho 108907) = ((1 : F) * rho 108906 + (1 : F) * rho 108907)

def relationLc1548 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 23⟩, ⟨(1 : F), 108618, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108908 + (1 : F) * rho 108909) * (relationLc1548 rho) = ((1 : F) * rho 108910)

def relationLc1549 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108909) * (relationLc1549 rho) = ((1 : F) * rho 108911)

def relationLc1550 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108908) * (relationLc1550 rho) = ((1 : F) * rho 108912)

def relationRow2357 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108911) * ((1 : F) * rho 108912) = ((1 : F) * rho 108913)

def relationRow2358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108914) * ((1 : F) + (1 : F) * rho 108913) = ((1 : F) * rho 108911 + (1 : F) * rho 108912)

def relationRow2359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108915) * ((1 : F) + (-1 : F) * rho 108913) = ((1 : F) * rho 108910 + (-1 : F) * rho 108911 + (-1 : F) * rho 108912)

def relationLc1551 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 23⟩], residual := [((1 : F), 108914)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108388) * (relationLc1551 rho) = ((1 : F) * rho 108916)

def relationLc1552 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 23⟩], residual := [((1 : F), 108915)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108388) * (relationLc1552 rho) = ((1 : F) * rho 108917)

def relationRow2362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108908) * ((1 : F) * rho 108909) = ((1 : F) * rho 108918)

def relationRow2363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108908) * ((1 : F) * rho 108908) = ((1 : F) * rho 108919)

def relationRow2364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108909) * ((1 : F) * rho 108909) = ((1 : F) * rho 108920)

def relationRow2365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108921) * ((-1 : F) * rho 108919 + (1 : F) * rho 108920) = ((2 : F) * rho 108918)

def relationRow2366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108922) * ((2 : F) + (1 : F) * rho 108919 + (-1 : F) * rho 108920) = ((1 : F) * rho 108919 + (1 : F) * rho 108920)

def relationLc1553 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 24⟩, ⟨(1 : F), 108618, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108921 + (1 : F) * rho 108922) * (relationLc1553 rho) = ((1 : F) * rho 108923)

def relationLc1554 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108922) * (relationLc1554 rho) = ((1 : F) * rho 108924)

def relationLc1555 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108921) * (relationLc1555 rho) = ((1 : F) * rho 108925)

def relationRow2370 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108924) * ((1 : F) * rho 108925) = ((1 : F) * rho 108926)

def relationRow2371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108927) * ((1 : F) + (1 : F) * rho 108926) = ((1 : F) * rho 108924 + (1 : F) * rho 108925)

def relationRow2372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108928) * ((1 : F) + (-1 : F) * rho 108926) = ((1 : F) * rho 108923 + (-1 : F) * rho 108924 + (-1 : F) * rho 108925)

def relationLc1556 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 24⟩], residual := [((1 : F), 108927)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108389) * (relationLc1556 rho) = ((1 : F) * rho 108929)

def relationLc1557 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 24⟩], residual := [((1 : F), 108928)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108389) * (relationLc1557 rho) = ((1 : F) * rho 108930)

def relationRow2375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108921) * ((1 : F) * rho 108922) = ((1 : F) * rho 108931)

def relationRow2376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108921) * ((1 : F) * rho 108921) = ((1 : F) * rho 108932)

def relationRow2377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108922) * ((1 : F) * rho 108922) = ((1 : F) * rho 108933)

def relationRow2378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108934) * ((-1 : F) * rho 108932 + (1 : F) * rho 108933) = ((2 : F) * rho 108931)

def relationRow2379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108935) * ((2 : F) + (1 : F) * rho 108932 + (-1 : F) * rho 108933) = ((1 : F) * rho 108932 + (1 : F) * rho 108933)

def relationLc1558 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 25⟩, ⟨(1 : F), 108618, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108934 + (1 : F) * rho 108935) * (relationLc1558 rho) = ((1 : F) * rho 108936)

def relationLc1559 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108935) * (relationLc1559 rho) = ((1 : F) * rho 108937)

def relationLc1560 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108934) * (relationLc1560 rho) = ((1 : F) * rho 108938)

def relationRow2383 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108937) * ((1 : F) * rho 108938) = ((1 : F) * rho 108939)

def relationRow2384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108940) * ((1 : F) + (1 : F) * rho 108939) = ((1 : F) * rho 108937 + (1 : F) * rho 108938)

def relationRow2385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108941) * ((1 : F) + (-1 : F) * rho 108939) = ((1 : F) * rho 108936 + (-1 : F) * rho 108937 + (-1 : F) * rho 108938)

def relationLc1561 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 25⟩], residual := [((1 : F), 108940)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108390) * (relationLc1561 rho) = ((1 : F) * rho 108942)

def relationLc1562 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 25⟩], residual := [((1 : F), 108941)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108390) * (relationLc1562 rho) = ((1 : F) * rho 108943)

def relationRow2388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108934) * ((1 : F) * rho 108935) = ((1 : F) * rho 108944)

def relationRow2389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108934) * ((1 : F) * rho 108934) = ((1 : F) * rho 108945)

def relationRow2390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108935) * ((1 : F) * rho 108935) = ((1 : F) * rho 108946)

def relationRow2391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108947) * ((-1 : F) * rho 108945 + (1 : F) * rho 108946) = ((2 : F) * rho 108944)

def relationRow2392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108948) * ((2 : F) + (1 : F) * rho 108945 + (-1 : F) * rho 108946) = ((1 : F) * rho 108945 + (1 : F) * rho 108946)

def relationLc1563 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 26⟩, ⟨(1 : F), 108618, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108947 + (1 : F) * rho 108948) * (relationLc1563 rho) = ((1 : F) * rho 108949)

def relationLc1564 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108948) * (relationLc1564 rho) = ((1 : F) * rho 108950)

def relationLc1565 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108947) * (relationLc1565 rho) = ((1 : F) * rho 108951)

def relationRow2396 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108950) * ((1 : F) * rho 108951) = ((1 : F) * rho 108952)

def relationRow2397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108953) * ((1 : F) + (1 : F) * rho 108952) = ((1 : F) * rho 108950 + (1 : F) * rho 108951)

def relationRow2398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108954) * ((1 : F) + (-1 : F) * rho 108952) = ((1 : F) * rho 108949 + (-1 : F) * rho 108950 + (-1 : F) * rho 108951)

def relationLc1566 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 26⟩], residual := [((1 : F), 108953)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108391) * (relationLc1566 rho) = ((1 : F) * rho 108955)

def relationLc1567 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 26⟩], residual := [((1 : F), 108954)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108391) * (relationLc1567 rho) = ((1 : F) * rho 108956)

def relationRow2401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108947) * ((1 : F) * rho 108948) = ((1 : F) * rho 108957)

def relationRow2402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108947) * ((1 : F) * rho 108947) = ((1 : F) * rho 108958)

def relationRow2403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108948) * ((1 : F) * rho 108948) = ((1 : F) * rho 108959)

def relationRow2404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108960) * ((-1 : F) * rho 108958 + (1 : F) * rho 108959) = ((2 : F) * rho 108957)

def relationRow2405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108961) * ((2 : F) + (1 : F) * rho 108958 + (-1 : F) * rho 108959) = ((1 : F) * rho 108958 + (1 : F) * rho 108959)

def relationLc1568 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 27⟩, ⟨(1 : F), 108618, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108960 + (1 : F) * rho 108961) * (relationLc1568 rho) = ((1 : F) * rho 108962)

def relationLc1569 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108961) * (relationLc1569 rho) = ((1 : F) * rho 108963)

def relationLc1570 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108960) * (relationLc1570 rho) = ((1 : F) * rho 108964)

def relationRow2409 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108963) * ((1 : F) * rho 108964) = ((1 : F) * rho 108965)

def relationRow2410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108966) * ((1 : F) + (1 : F) * rho 108965) = ((1 : F) * rho 108963 + (1 : F) * rho 108964)

def relationRow2411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108967) * ((1 : F) + (-1 : F) * rho 108965) = ((1 : F) * rho 108962 + (-1 : F) * rho 108963 + (-1 : F) * rho 108964)

def relationLc1571 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 27⟩], residual := [((1 : F), 108966)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108392) * (relationLc1571 rho) = ((1 : F) * rho 108968)

def relationLc1572 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 27⟩], residual := [((1 : F), 108967)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108392) * (relationLc1572 rho) = ((1 : F) * rho 108969)

def relationRow2414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108960) * ((1 : F) * rho 108961) = ((1 : F) * rho 108970)

def relationRow2415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108960) * ((1 : F) * rho 108960) = ((1 : F) * rho 108971)

def relationRow2416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108961) * ((1 : F) * rho 108961) = ((1 : F) * rho 108972)

def relationRow2417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108973) * ((-1 : F) * rho 108971 + (1 : F) * rho 108972) = ((2 : F) * rho 108970)

def relationRow2418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108974) * ((2 : F) + (1 : F) * rho 108971 + (-1 : F) * rho 108972) = ((1 : F) * rho 108971 + (1 : F) * rho 108972)

def relationLc1573 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 28⟩, ⟨(1 : F), 108618, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108973 + (1 : F) * rho 108974) * (relationLc1573 rho) = ((1 : F) * rho 108975)

def relationLc1574 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108974) * (relationLc1574 rho) = ((1 : F) * rho 108976)

def relationLc1575 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108973) * (relationLc1575 rho) = ((1 : F) * rho 108977)

def relationRow2422 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108976) * ((1 : F) * rho 108977) = ((1 : F) * rho 108978)

def relationRow2423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108979) * ((1 : F) + (1 : F) * rho 108978) = ((1 : F) * rho 108976 + (1 : F) * rho 108977)

def relationRow2424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108980) * ((1 : F) + (-1 : F) * rho 108978) = ((1 : F) * rho 108975 + (-1 : F) * rho 108976 + (-1 : F) * rho 108977)

def relationLc1576 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 28⟩], residual := [((1 : F), 108979)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108393) * (relationLc1576 rho) = ((1 : F) * rho 108981)

def relationLc1577 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 28⟩], residual := [((1 : F), 108980)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108393) * (relationLc1577 rho) = ((1 : F) * rho 108982)

def relationRow2427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108973) * ((1 : F) * rho 108974) = ((1 : F) * rho 108983)

def relationRow2428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108973) * ((1 : F) * rho 108973) = ((1 : F) * rho 108984)

def relationRow2429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108974) * ((1 : F) * rho 108974) = ((1 : F) * rho 108985)

def relationRow2430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108986) * ((-1 : F) * rho 108984 + (1 : F) * rho 108985) = ((2 : F) * rho 108983)

def relationRow2431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108987) * ((2 : F) + (1 : F) * rho 108984 + (-1 : F) * rho 108985) = ((1 : F) * rho 108984 + (1 : F) * rho 108985)

def relationLc1578 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 29⟩, ⟨(1 : F), 108618, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108986 + (1 : F) * rho 108987) * (relationLc1578 rho) = ((1 : F) * rho 108988)

def relationLc1579 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108987) * (relationLc1579 rho) = ((1 : F) * rho 108989)

def relationLc1580 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108986) * (relationLc1580 rho) = ((1 : F) * rho 108990)

def relationRow2435 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 108989) * ((1 : F) * rho 108990) = ((1 : F) * rho 108991)

def relationRow2436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108992) * ((1 : F) + (1 : F) * rho 108991) = ((1 : F) * rho 108989 + (1 : F) * rho 108990)

def relationRow2437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108993) * ((1 : F) + (-1 : F) * rho 108991) = ((1 : F) * rho 108988 + (-1 : F) * rho 108989 + (-1 : F) * rho 108990)

def relationLc1581 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 29⟩], residual := [((1 : F), 108992)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108394) * (relationLc1581 rho) = ((1 : F) * rho 108994)

def relationLc1582 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 29⟩], residual := [((1 : F), 108993)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108394) * (relationLc1582 rho) = ((1 : F) * rho 108995)

def relationRow2440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108986) * ((1 : F) * rho 108987) = ((1 : F) * rho 108996)

def relationRow2441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108986) * ((1 : F) * rho 108986) = ((1 : F) * rho 108997)

def relationRow2442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108987) * ((1 : F) * rho 108987) = ((1 : F) * rho 108998)

def relationRow2443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108999) * ((-1 : F) * rho 108997 + (1 : F) * rho 108998) = ((2 : F) * rho 108996)

def relationRow2444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109000) * ((2 : F) + (1 : F) * rho 108997 + (-1 : F) * rho 108998) = ((1 : F) * rho 108997 + (1 : F) * rho 108998)

def relationLc1583 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 30⟩, ⟨(1 : F), 108618, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108999 + (1 : F) * rho 109000) * (relationLc1583 rho) = ((1 : F) * rho 109001)

def relationLc1584 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109000) * (relationLc1584 rho) = ((1 : F) * rho 109002)

def relationLc1585 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108999) * (relationLc1585 rho) = ((1 : F) * rho 109003)

def relationRow2448 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109002) * ((1 : F) * rho 109003) = ((1 : F) * rho 109004)

def relationRow2449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109005) * ((1 : F) + (1 : F) * rho 109004) = ((1 : F) * rho 109002 + (1 : F) * rho 109003)

def relationRow2450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109006) * ((1 : F) + (-1 : F) * rho 109004) = ((1 : F) * rho 109001 + (-1 : F) * rho 109002 + (-1 : F) * rho 109003)

def relationLc1586 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 30⟩], residual := [((1 : F), 109005)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108395) * (relationLc1586 rho) = ((1 : F) * rho 109007)

def relationLc1587 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 30⟩], residual := [((1 : F), 109006)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108395) * (relationLc1587 rho) = ((1 : F) * rho 109008)

def relationRow2453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108999) * ((1 : F) * rho 109000) = ((1 : F) * rho 109009)

def relationRow2454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108999) * ((1 : F) * rho 108999) = ((1 : F) * rho 109010)

def relationRow2455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109000) * ((1 : F) * rho 109000) = ((1 : F) * rho 109011)

def relationRow2456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109012) * ((-1 : F) * rho 109010 + (1 : F) * rho 109011) = ((2 : F) * rho 109009)

def relationRow2457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109013) * ((2 : F) + (1 : F) * rho 109010 + (-1 : F) * rho 109011) = ((1 : F) * rho 109010 + (1 : F) * rho 109011)

def relationLc1588 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 31⟩, ⟨(1 : F), 108618, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109012 + (1 : F) * rho 109013) * (relationLc1588 rho) = ((1 : F) * rho 109014)

def relationLc1589 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109013) * (relationLc1589 rho) = ((1 : F) * rho 109015)

def relationLc1590 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109012) * (relationLc1590 rho) = ((1 : F) * rho 109016)

def relationRow2461 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109015) * ((1 : F) * rho 109016) = ((1 : F) * rho 109017)

def relationRow2462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109018) * ((1 : F) + (1 : F) * rho 109017) = ((1 : F) * rho 109015 + (1 : F) * rho 109016)

def relationRow2463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109019) * ((1 : F) + (-1 : F) * rho 109017) = ((1 : F) * rho 109014 + (-1 : F) * rho 109015 + (-1 : F) * rho 109016)

def relationLc1591 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 31⟩], residual := [((1 : F), 109018)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108396) * (relationLc1591 rho) = ((1 : F) * rho 109020)

def relationLc1592 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 31⟩], residual := [((1 : F), 109019)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108396) * (relationLc1592 rho) = ((1 : F) * rho 109021)

def relationRow2466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109012) * ((1 : F) * rho 109013) = ((1 : F) * rho 109022)

def relationRow2467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109012) * ((1 : F) * rho 109012) = ((1 : F) * rho 109023)

def relationRow2468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109013) * ((1 : F) * rho 109013) = ((1 : F) * rho 109024)

def relationRow2469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109025) * ((-1 : F) * rho 109023 + (1 : F) * rho 109024) = ((2 : F) * rho 109022)

def relationRow2470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109026) * ((2 : F) + (1 : F) * rho 109023 + (-1 : F) * rho 109024) = ((1 : F) * rho 109023 + (1 : F) * rho 109024)

def relationLc1593 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 32⟩, ⟨(1 : F), 108618, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109025 + (1 : F) * rho 109026) * (relationLc1593 rho) = ((1 : F) * rho 109027)

def relationLc1594 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109026) * (relationLc1594 rho) = ((1 : F) * rho 109028)

def relationLc1595 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109025) * (relationLc1595 rho) = ((1 : F) * rho 109029)

def relationRow2474 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109028) * ((1 : F) * rho 109029) = ((1 : F) * rho 109030)

def relationRow2475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109031) * ((1 : F) + (1 : F) * rho 109030) = ((1 : F) * rho 109028 + (1 : F) * rho 109029)

def relationRow2476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109032) * ((1 : F) + (-1 : F) * rho 109030) = ((1 : F) * rho 109027 + (-1 : F) * rho 109028 + (-1 : F) * rho 109029)

def relationLc1596 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 32⟩], residual := [((1 : F), 109031)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108397) * (relationLc1596 rho) = ((1 : F) * rho 109033)

def relationLc1597 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 32⟩], residual := [((1 : F), 109032)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108397) * (relationLc1597 rho) = ((1 : F) * rho 109034)

def relationRow2479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109025) * ((1 : F) * rho 109026) = ((1 : F) * rho 109035)

def relationRow2480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109025) * ((1 : F) * rho 109025) = ((1 : F) * rho 109036)

def relationRow2481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109026) * ((1 : F) * rho 109026) = ((1 : F) * rho 109037)

def relationRow2482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109038) * ((-1 : F) * rho 109036 + (1 : F) * rho 109037) = ((2 : F) * rho 109035)

def relationRow2483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109039) * ((2 : F) + (1 : F) * rho 109036 + (-1 : F) * rho 109037) = ((1 : F) * rho 109036 + (1 : F) * rho 109037)

def relationLc1598 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 33⟩, ⟨(1 : F), 108618, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109038 + (1 : F) * rho 109039) * (relationLc1598 rho) = ((1 : F) * rho 109040)

def relationLc1599 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109039) * (relationLc1599 rho) = ((1 : F) * rho 109041)

def relationLc1600 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109038) * (relationLc1600 rho) = ((1 : F) * rho 109042)

def relationRow2487 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109041) * ((1 : F) * rho 109042) = ((1 : F) * rho 109043)

def relationRow2488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109044) * ((1 : F) + (1 : F) * rho 109043) = ((1 : F) * rho 109041 + (1 : F) * rho 109042)

def relationRow2489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109045) * ((1 : F) + (-1 : F) * rho 109043) = ((1 : F) * rho 109040 + (-1 : F) * rho 109041 + (-1 : F) * rho 109042)

def relationLc1601 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 33⟩], residual := [((1 : F), 109044)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108398) * (relationLc1601 rho) = ((1 : F) * rho 109046)

def relationLc1602 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 33⟩], residual := [((1 : F), 109045)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108398) * (relationLc1602 rho) = ((1 : F) * rho 109047)

def relationRow2492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109038) * ((1 : F) * rho 109039) = ((1 : F) * rho 109048)

def relationRow2493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109038) * ((1 : F) * rho 109038) = ((1 : F) * rho 109049)

def relationRow2494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109039) * ((1 : F) * rho 109039) = ((1 : F) * rho 109050)

def relationRow2495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109051) * ((-1 : F) * rho 109049 + (1 : F) * rho 109050) = ((2 : F) * rho 109048)

def relationRow2496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109052) * ((2 : F) + (1 : F) * rho 109049 + (-1 : F) * rho 109050) = ((1 : F) * rho 109049 + (1 : F) * rho 109050)

def relationLc1603 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 34⟩, ⟨(1 : F), 108618, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109051 + (1 : F) * rho 109052) * (relationLc1603 rho) = ((1 : F) * rho 109053)

def relationLc1604 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109052) * (relationLc1604 rho) = ((1 : F) * rho 109054)

def relationLc1605 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109051) * (relationLc1605 rho) = ((1 : F) * rho 109055)

def relationRow2500 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109054) * ((1 : F) * rho 109055) = ((1 : F) * rho 109056)

def relationRow2501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109057) * ((1 : F) + (1 : F) * rho 109056) = ((1 : F) * rho 109054 + (1 : F) * rho 109055)

def relationRow2502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109058) * ((1 : F) + (-1 : F) * rho 109056) = ((1 : F) * rho 109053 + (-1 : F) * rho 109054 + (-1 : F) * rho 109055)

def relationLc1606 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 34⟩], residual := [((1 : F), 109057)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108399) * (relationLc1606 rho) = ((1 : F) * rho 109059)

def relationLc1607 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 34⟩], residual := [((1 : F), 109058)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108399) * (relationLc1607 rho) = ((1 : F) * rho 109060)

def relationRow2505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109051) * ((1 : F) * rho 109052) = ((1 : F) * rho 109061)

def relationRow2506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109051) * ((1 : F) * rho 109051) = ((1 : F) * rho 109062)

def relationRow2507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109052) * ((1 : F) * rho 109052) = ((1 : F) * rho 109063)

def relationRow2508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109064) * ((-1 : F) * rho 109062 + (1 : F) * rho 109063) = ((2 : F) * rho 109061)

def relationRow2509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109065) * ((2 : F) + (1 : F) * rho 109062 + (-1 : F) * rho 109063) = ((1 : F) * rho 109062 + (1 : F) * rho 109063)

def relationLc1608 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 35⟩, ⟨(1 : F), 108618, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109064 + (1 : F) * rho 109065) * (relationLc1608 rho) = ((1 : F) * rho 109066)

def relationLc1609 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109065) * (relationLc1609 rho) = ((1 : F) * rho 109067)

def relationLc1610 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109064) * (relationLc1610 rho) = ((1 : F) * rho 109068)

def relationRow2513 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109067) * ((1 : F) * rho 109068) = ((1 : F) * rho 109069)

def relationRow2514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109070) * ((1 : F) + (1 : F) * rho 109069) = ((1 : F) * rho 109067 + (1 : F) * rho 109068)

def relationRow2515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109071) * ((1 : F) + (-1 : F) * rho 109069) = ((1 : F) * rho 109066 + (-1 : F) * rho 109067 + (-1 : F) * rho 109068)

def relationLc1611 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 35⟩], residual := [((1 : F), 109070)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108400) * (relationLc1611 rho) = ((1 : F) * rho 109072)

def relationLc1612 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 35⟩], residual := [((1 : F), 109071)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108400) * (relationLc1612 rho) = ((1 : F) * rho 109073)

def relationRow2518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109064) * ((1 : F) * rho 109065) = ((1 : F) * rho 109074)

def relationRow2519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109064) * ((1 : F) * rho 109064) = ((1 : F) * rho 109075)

def relationRow2520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109065) * ((1 : F) * rho 109065) = ((1 : F) * rho 109076)

def relationRow2521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109077) * ((-1 : F) * rho 109075 + (1 : F) * rho 109076) = ((2 : F) * rho 109074)

def relationRow2522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109078) * ((2 : F) + (1 : F) * rho 109075 + (-1 : F) * rho 109076) = ((1 : F) * rho 109075 + (1 : F) * rho 109076)

def relationLc1613 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 36⟩, ⟨(1 : F), 108618, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109077 + (1 : F) * rho 109078) * (relationLc1613 rho) = ((1 : F) * rho 109079)

def relationLc1614 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109078) * (relationLc1614 rho) = ((1 : F) * rho 109080)

def relationLc1615 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109077) * (relationLc1615 rho) = ((1 : F) * rho 109081)

def relationRow2526 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109080) * ((1 : F) * rho 109081) = ((1 : F) * rho 109082)

def relationRow2527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109083) * ((1 : F) + (1 : F) * rho 109082) = ((1 : F) * rho 109080 + (1 : F) * rho 109081)

def relationRow2528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109084) * ((1 : F) + (-1 : F) * rho 109082) = ((1 : F) * rho 109079 + (-1 : F) * rho 109080 + (-1 : F) * rho 109081)

def relationLc1616 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 36⟩], residual := [((1 : F), 109083)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108401) * (relationLc1616 rho) = ((1 : F) * rho 109085)

def relationLc1617 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 36⟩], residual := [((1 : F), 109084)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108401) * (relationLc1617 rho) = ((1 : F) * rho 109086)

def relationRow2531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109077) * ((1 : F) * rho 109078) = ((1 : F) * rho 109087)

def relationRow2532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109077) * ((1 : F) * rho 109077) = ((1 : F) * rho 109088)

def relationRow2533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109078) * ((1 : F) * rho 109078) = ((1 : F) * rho 109089)

def relationRow2534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109090) * ((-1 : F) * rho 109088 + (1 : F) * rho 109089) = ((2 : F) * rho 109087)

def relationRow2535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109091) * ((2 : F) + (1 : F) * rho 109088 + (-1 : F) * rho 109089) = ((1 : F) * rho 109088 + (1 : F) * rho 109089)

def relationLc1618 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 37⟩, ⟨(1 : F), 108618, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109090 + (1 : F) * rho 109091) * (relationLc1618 rho) = ((1 : F) * rho 109092)

def relationLc1619 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109091) * (relationLc1619 rho) = ((1 : F) * rho 109093)

def relationLc1620 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109090) * (relationLc1620 rho) = ((1 : F) * rho 109094)

def relationRow2539 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109093) * ((1 : F) * rho 109094) = ((1 : F) * rho 109095)

def relationRow2540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109096) * ((1 : F) + (1 : F) * rho 109095) = ((1 : F) * rho 109093 + (1 : F) * rho 109094)

def relationRow2541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109097) * ((1 : F) + (-1 : F) * rho 109095) = ((1 : F) * rho 109092 + (-1 : F) * rho 109093 + (-1 : F) * rho 109094)

def relationLc1621 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 37⟩], residual := [((1 : F), 109096)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108402) * (relationLc1621 rho) = ((1 : F) * rho 109098)

def relationLc1622 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 37⟩], residual := [((1 : F), 109097)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108402) * (relationLc1622 rho) = ((1 : F) * rho 109099)

def relationRow2544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109090) * ((1 : F) * rho 109091) = ((1 : F) * rho 109100)

def relationRow2545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109090) * ((1 : F) * rho 109090) = ((1 : F) * rho 109101)

def relationRow2546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109091) * ((1 : F) * rho 109091) = ((1 : F) * rho 109102)

def relationRow2547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109103) * ((-1 : F) * rho 109101 + (1 : F) * rho 109102) = ((2 : F) * rho 109100)

def relationRow2548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109104) * ((2 : F) + (1 : F) * rho 109101 + (-1 : F) * rho 109102) = ((1 : F) * rho 109101 + (1 : F) * rho 109102)

def relationLc1623 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 38⟩, ⟨(1 : F), 108618, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109103 + (1 : F) * rho 109104) * (relationLc1623 rho) = ((1 : F) * rho 109105)

def relationLc1624 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109104) * (relationLc1624 rho) = ((1 : F) * rho 109106)

def relationLc1625 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109103) * (relationLc1625 rho) = ((1 : F) * rho 109107)

def relationRow2552 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109106) * ((1 : F) * rho 109107) = ((1 : F) * rho 109108)

def relationRow2553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109109) * ((1 : F) + (1 : F) * rho 109108) = ((1 : F) * rho 109106 + (1 : F) * rho 109107)

def relationRow2554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109110) * ((1 : F) + (-1 : F) * rho 109108) = ((1 : F) * rho 109105 + (-1 : F) * rho 109106 + (-1 : F) * rho 109107)

def relationLc1626 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 38⟩], residual := [((1 : F), 109109)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108403) * (relationLc1626 rho) = ((1 : F) * rho 109111)

def relationLc1627 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 38⟩], residual := [((1 : F), 109110)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108403) * (relationLc1627 rho) = ((1 : F) * rho 109112)

def relationRow2557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109103) * ((1 : F) * rho 109104) = ((1 : F) * rho 109113)

def relationRow2558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109103) * ((1 : F) * rho 109103) = ((1 : F) * rho 109114)

def relationRow2559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109104) * ((1 : F) * rho 109104) = ((1 : F) * rho 109115)

def relationRow2560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109116) * ((-1 : F) * rho 109114 + (1 : F) * rho 109115) = ((2 : F) * rho 109113)

def relationRow2561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109117) * ((2 : F) + (1 : F) * rho 109114 + (-1 : F) * rho 109115) = ((1 : F) * rho 109114 + (1 : F) * rho 109115)

def relationLc1628 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 39⟩, ⟨(1 : F), 108618, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109116 + (1 : F) * rho 109117) * (relationLc1628 rho) = ((1 : F) * rho 109118)

def relationLc1629 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109117) * (relationLc1629 rho) = ((1 : F) * rho 109119)

def relationLc1630 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109116) * (relationLc1630 rho) = ((1 : F) * rho 109120)

def relationRow2565 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109119) * ((1 : F) * rho 109120) = ((1 : F) * rho 109121)

def relationRow2566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109122) * ((1 : F) + (1 : F) * rho 109121) = ((1 : F) * rho 109119 + (1 : F) * rho 109120)

def relationRow2567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109123) * ((1 : F) + (-1 : F) * rho 109121) = ((1 : F) * rho 109118 + (-1 : F) * rho 109119 + (-1 : F) * rho 109120)

def relationLc1631 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 39⟩], residual := [((1 : F), 109122)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108404) * (relationLc1631 rho) = ((1 : F) * rho 109124)

def relationLc1632 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 39⟩], residual := [((1 : F), 109123)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108404) * (relationLc1632 rho) = ((1 : F) * rho 109125)

def relationRow2570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109116) * ((1 : F) * rho 109117) = ((1 : F) * rho 109126)

def relationRow2571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109116) * ((1 : F) * rho 109116) = ((1 : F) * rho 109127)

def relationRow2572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109117) * ((1 : F) * rho 109117) = ((1 : F) * rho 109128)

def relationRow2573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109129) * ((-1 : F) * rho 109127 + (1 : F) * rho 109128) = ((2 : F) * rho 109126)

def relationRow2574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109130) * ((2 : F) + (1 : F) * rho 109127 + (-1 : F) * rho 109128) = ((1 : F) * rho 109127 + (1 : F) * rho 109128)

def relationLc1633 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 40⟩, ⟨(1 : F), 108618, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109129 + (1 : F) * rho 109130) * (relationLc1633 rho) = ((1 : F) * rho 109131)

def relationLc1634 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109130) * (relationLc1634 rho) = ((1 : F) * rho 109132)

def relationLc1635 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109129) * (relationLc1635 rho) = ((1 : F) * rho 109133)

def relationRow2578 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109132) * ((1 : F) * rho 109133) = ((1 : F) * rho 109134)

def relationRow2579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109135) * ((1 : F) + (1 : F) * rho 109134) = ((1 : F) * rho 109132 + (1 : F) * rho 109133)

def relationRow2580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109136) * ((1 : F) + (-1 : F) * rho 109134) = ((1 : F) * rho 109131 + (-1 : F) * rho 109132 + (-1 : F) * rho 109133)

def relationLc1636 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 40⟩], residual := [((1 : F), 109135)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108405) * (relationLc1636 rho) = ((1 : F) * rho 109137)

def relationLc1637 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 40⟩], residual := [((1 : F), 109136)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108405) * (relationLc1637 rho) = ((1 : F) * rho 109138)

def relationRow2583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109129) * ((1 : F) * rho 109130) = ((1 : F) * rho 109139)

def relationRow2584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109129) * ((1 : F) * rho 109129) = ((1 : F) * rho 109140)

def relationRow2585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109130) * ((1 : F) * rho 109130) = ((1 : F) * rho 109141)

def relationRow2586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109142) * ((-1 : F) * rho 109140 + (1 : F) * rho 109141) = ((2 : F) * rho 109139)

def relationRow2587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109143) * ((2 : F) + (1 : F) * rho 109140 + (-1 : F) * rho 109141) = ((1 : F) * rho 109140 + (1 : F) * rho 109141)

def relationLc1638 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 41⟩, ⟨(1 : F), 108618, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109142 + (1 : F) * rho 109143) * (relationLc1638 rho) = ((1 : F) * rho 109144)

def relationLc1639 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109143) * (relationLc1639 rho) = ((1 : F) * rho 109145)

def relationLc1640 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109142) * (relationLc1640 rho) = ((1 : F) * rho 109146)

def relationRow2591 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109145) * ((1 : F) * rho 109146) = ((1 : F) * rho 109147)

def relationRow2592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109148) * ((1 : F) + (1 : F) * rho 109147) = ((1 : F) * rho 109145 + (1 : F) * rho 109146)

def relationRow2593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109149) * ((1 : F) + (-1 : F) * rho 109147) = ((1 : F) * rho 109144 + (-1 : F) * rho 109145 + (-1 : F) * rho 109146)

def relationLc1641 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 41⟩], residual := [((1 : F), 109148)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108406) * (relationLc1641 rho) = ((1 : F) * rho 109150)

def relationLc1642 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 41⟩], residual := [((1 : F), 109149)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108406) * (relationLc1642 rho) = ((1 : F) * rho 109151)

def relationRow2596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109142) * ((1 : F) * rho 109143) = ((1 : F) * rho 109152)

def relationRow2597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109142) * ((1 : F) * rho 109142) = ((1 : F) * rho 109153)

def relationRow2598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109143) * ((1 : F) * rho 109143) = ((1 : F) * rho 109154)

def relationRow2599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109155) * ((-1 : F) * rho 109153 + (1 : F) * rho 109154) = ((2 : F) * rho 109152)

def relationRow2600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109156) * ((2 : F) + (1 : F) * rho 109153 + (-1 : F) * rho 109154) = ((1 : F) * rho 109153 + (1 : F) * rho 109154)

def relationLc1643 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 42⟩, ⟨(1 : F), 108618, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109155 + (1 : F) * rho 109156) * (relationLc1643 rho) = ((1 : F) * rho 109157)

def relationLc1644 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109156) * (relationLc1644 rho) = ((1 : F) * rho 109158)

def relationLc1645 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109155) * (relationLc1645 rho) = ((1 : F) * rho 109159)

def relationRow2604 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109158) * ((1 : F) * rho 109159) = ((1 : F) * rho 109160)

def relationRow2605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109161) * ((1 : F) + (1 : F) * rho 109160) = ((1 : F) * rho 109158 + (1 : F) * rho 109159)

def relationRow2606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109162) * ((1 : F) + (-1 : F) * rho 109160) = ((1 : F) * rho 109157 + (-1 : F) * rho 109158 + (-1 : F) * rho 109159)

def relationLc1646 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 42⟩], residual := [((1 : F), 109161)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108407) * (relationLc1646 rho) = ((1 : F) * rho 109163)

def relationLc1647 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 42⟩], residual := [((1 : F), 109162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108407) * (relationLc1647 rho) = ((1 : F) * rho 109164)

def relationRow2609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109155) * ((1 : F) * rho 109156) = ((1 : F) * rho 109165)

def relationRow2610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109155) * ((1 : F) * rho 109155) = ((1 : F) * rho 109166)

def relationRow2611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109156) * ((1 : F) * rho 109156) = ((1 : F) * rho 109167)

def relationRow2612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109168) * ((-1 : F) * rho 109166 + (1 : F) * rho 109167) = ((2 : F) * rho 109165)

def relationRow2613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109169) * ((2 : F) + (1 : F) * rho 109166 + (-1 : F) * rho 109167) = ((1 : F) * rho 109166 + (1 : F) * rho 109167)

def relationLc1648 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 43⟩, ⟨(1 : F), 108618, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109168 + (1 : F) * rho 109169) * (relationLc1648 rho) = ((1 : F) * rho 109170)

def relationLc1649 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109169) * (relationLc1649 rho) = ((1 : F) * rho 109171)

def relationLc1650 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109168) * (relationLc1650 rho) = ((1 : F) * rho 109172)

def relationRow2617 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109171) * ((1 : F) * rho 109172) = ((1 : F) * rho 109173)

def relationRow2618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109174) * ((1 : F) + (1 : F) * rho 109173) = ((1 : F) * rho 109171 + (1 : F) * rho 109172)

def relationRow2619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109175) * ((1 : F) + (-1 : F) * rho 109173) = ((1 : F) * rho 109170 + (-1 : F) * rho 109171 + (-1 : F) * rho 109172)

def relationLc1651 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 43⟩], residual := [((1 : F), 109174)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108408) * (relationLc1651 rho) = ((1 : F) * rho 109176)

def relationLc1652 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 43⟩], residual := [((1 : F), 109175)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108408) * (relationLc1652 rho) = ((1 : F) * rho 109177)

def relationRow2622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109168) * ((1 : F) * rho 109169) = ((1 : F) * rho 109178)

def relationRow2623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109168) * ((1 : F) * rho 109168) = ((1 : F) * rho 109179)

def relationRow2624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109169) * ((1 : F) * rho 109169) = ((1 : F) * rho 109180)

def relationRow2625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109181) * ((-1 : F) * rho 109179 + (1 : F) * rho 109180) = ((2 : F) * rho 109178)

def relationRow2626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109182) * ((2 : F) + (1 : F) * rho 109179 + (-1 : F) * rho 109180) = ((1 : F) * rho 109179 + (1 : F) * rho 109180)

def relationLc1653 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 44⟩, ⟨(1 : F), 108618, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109181 + (1 : F) * rho 109182) * (relationLc1653 rho) = ((1 : F) * rho 109183)

def relationLc1654 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109182) * (relationLc1654 rho) = ((1 : F) * rho 109184)

def relationLc1655 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109181) * (relationLc1655 rho) = ((1 : F) * rho 109185)

def relationRow2630 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109184) * ((1 : F) * rho 109185) = ((1 : F) * rho 109186)

def relationRow2631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109187) * ((1 : F) + (1 : F) * rho 109186) = ((1 : F) * rho 109184 + (1 : F) * rho 109185)

def relationRow2632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109188) * ((1 : F) + (-1 : F) * rho 109186) = ((1 : F) * rho 109183 + (-1 : F) * rho 109184 + (-1 : F) * rho 109185)

def relationLc1656 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 44⟩], residual := [((1 : F), 109187)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108409) * (relationLc1656 rho) = ((1 : F) * rho 109189)

def relationLc1657 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 44⟩], residual := [((1 : F), 109188)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108409) * (relationLc1657 rho) = ((1 : F) * rho 109190)

def relationRow2635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109181) * ((1 : F) * rho 109182) = ((1 : F) * rho 109191)

def relationRow2636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109181) * ((1 : F) * rho 109181) = ((1 : F) * rho 109192)

def relationRow2637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109182) * ((1 : F) * rho 109182) = ((1 : F) * rho 109193)

def relationRow2638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109194) * ((-1 : F) * rho 109192 + (1 : F) * rho 109193) = ((2 : F) * rho 109191)

def relationRow2639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109195) * ((2 : F) + (1 : F) * rho 109192 + (-1 : F) * rho 109193) = ((1 : F) * rho 109192 + (1 : F) * rho 109193)

def relationLc1658 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 45⟩, ⟨(1 : F), 108618, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109194 + (1 : F) * rho 109195) * (relationLc1658 rho) = ((1 : F) * rho 109196)

def relationLc1659 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109195) * (relationLc1659 rho) = ((1 : F) * rho 109197)

def relationLc1660 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109194) * (relationLc1660 rho) = ((1 : F) * rho 109198)

def relationRow2643 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109197) * ((1 : F) * rho 109198) = ((1 : F) * rho 109199)

def relationRow2644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109200) * ((1 : F) + (1 : F) * rho 109199) = ((1 : F) * rho 109197 + (1 : F) * rho 109198)

def relationRow2645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109201) * ((1 : F) + (-1 : F) * rho 109199) = ((1 : F) * rho 109196 + (-1 : F) * rho 109197 + (-1 : F) * rho 109198)

def relationLc1661 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 45⟩], residual := [((1 : F), 109200)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108410) * (relationLc1661 rho) = ((1 : F) * rho 109202)

def relationLc1662 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 45⟩], residual := [((1 : F), 109201)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108410) * (relationLc1662 rho) = ((1 : F) * rho 109203)

def relationRow2648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109194) * ((1 : F) * rho 109195) = ((1 : F) * rho 109204)

def relationRow2649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109194) * ((1 : F) * rho 109194) = ((1 : F) * rho 109205)

def relationRow2650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109195) * ((1 : F) * rho 109195) = ((1 : F) * rho 109206)

def relationRow2651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109207) * ((-1 : F) * rho 109205 + (1 : F) * rho 109206) = ((2 : F) * rho 109204)

def relationRow2652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109208) * ((2 : F) + (1 : F) * rho 109205 + (-1 : F) * rho 109206) = ((1 : F) * rho 109205 + (1 : F) * rho 109206)

def relationLc1663 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 46⟩, ⟨(1 : F), 108618, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109207 + (1 : F) * rho 109208) * (relationLc1663 rho) = ((1 : F) * rho 109209)

def relationLc1664 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109208) * (relationLc1664 rho) = ((1 : F) * rho 109210)

def relationLc1665 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109207) * (relationLc1665 rho) = ((1 : F) * rho 109211)

def relationRow2656 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109210) * ((1 : F) * rho 109211) = ((1 : F) * rho 109212)

def relationRow2657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109213) * ((1 : F) + (1 : F) * rho 109212) = ((1 : F) * rho 109210 + (1 : F) * rho 109211)

def relationRow2658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109214) * ((1 : F) + (-1 : F) * rho 109212) = ((1 : F) * rho 109209 + (-1 : F) * rho 109210 + (-1 : F) * rho 109211)

def relationLc1666 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 46⟩], residual := [((1 : F), 109213)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108411) * (relationLc1666 rho) = ((1 : F) * rho 109215)

def relationLc1667 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 46⟩], residual := [((1 : F), 109214)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108411) * (relationLc1667 rho) = ((1 : F) * rho 109216)

def relationRow2661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109207) * ((1 : F) * rho 109208) = ((1 : F) * rho 109217)

def relationRow2662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109207) * ((1 : F) * rho 109207) = ((1 : F) * rho 109218)

def relationRow2663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109208) * ((1 : F) * rho 109208) = ((1 : F) * rho 109219)

def relationRow2664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109220) * ((-1 : F) * rho 109218 + (1 : F) * rho 109219) = ((2 : F) * rho 109217)

def relationRow2665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109221) * ((2 : F) + (1 : F) * rho 109218 + (-1 : F) * rho 109219) = ((1 : F) * rho 109218 + (1 : F) * rho 109219)

def relationLc1668 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 47⟩, ⟨(1 : F), 108618, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109220 + (1 : F) * rho 109221) * (relationLc1668 rho) = ((1 : F) * rho 109222)

def relationLc1669 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109221) * (relationLc1669 rho) = ((1 : F) * rho 109223)

def relationLc1670 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109220) * (relationLc1670 rho) = ((1 : F) * rho 109224)

def relationRow2669 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109223) * ((1 : F) * rho 109224) = ((1 : F) * rho 109225)

def relationRow2670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109226) * ((1 : F) + (1 : F) * rho 109225) = ((1 : F) * rho 109223 + (1 : F) * rho 109224)

def relationRow2671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109227) * ((1 : F) + (-1 : F) * rho 109225) = ((1 : F) * rho 109222 + (-1 : F) * rho 109223 + (-1 : F) * rho 109224)

def relationLc1671 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 47⟩], residual := [((1 : F), 109226)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108412) * (relationLc1671 rho) = ((1 : F) * rho 109228)

def relationLc1672 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 47⟩], residual := [((1 : F), 109227)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108412) * (relationLc1672 rho) = ((1 : F) * rho 109229)

def relationRow2674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109220) * ((1 : F) * rho 109221) = ((1 : F) * rho 109230)

def relationRow2675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109220) * ((1 : F) * rho 109220) = ((1 : F) * rho 109231)

def relationRow2676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109221) * ((1 : F) * rho 109221) = ((1 : F) * rho 109232)

def relationRow2677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109233) * ((-1 : F) * rho 109231 + (1 : F) * rho 109232) = ((2 : F) * rho 109230)

def relationRow2678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109234) * ((2 : F) + (1 : F) * rho 109231 + (-1 : F) * rho 109232) = ((1 : F) * rho 109231 + (1 : F) * rho 109232)

def relationLc1673 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 48⟩, ⟨(1 : F), 108618, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109233 + (1 : F) * rho 109234) * (relationLc1673 rho) = ((1 : F) * rho 109235)

def relationLc1674 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109234) * (relationLc1674 rho) = ((1 : F) * rho 109236)

def relationLc1675 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109233) * (relationLc1675 rho) = ((1 : F) * rho 109237)

def relationRow2682 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109236) * ((1 : F) * rho 109237) = ((1 : F) * rho 109238)

def relationRow2683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109239) * ((1 : F) + (1 : F) * rho 109238) = ((1 : F) * rho 109236 + (1 : F) * rho 109237)

def relationRow2684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109240) * ((1 : F) + (-1 : F) * rho 109238) = ((1 : F) * rho 109235 + (-1 : F) * rho 109236 + (-1 : F) * rho 109237)

def relationLc1676 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 48⟩], residual := [((1 : F), 109239)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108413) * (relationLc1676 rho) = ((1 : F) * rho 109241)

def relationLc1677 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 48⟩], residual := [((1 : F), 109240)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108413) * (relationLc1677 rho) = ((1 : F) * rho 109242)

def relationRow2687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109233) * ((1 : F) * rho 109234) = ((1 : F) * rho 109243)

def relationRow2688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109233) * ((1 : F) * rho 109233) = ((1 : F) * rho 109244)

def relationRow2689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109234) * ((1 : F) * rho 109234) = ((1 : F) * rho 109245)

def relationRow2690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109246) * ((-1 : F) * rho 109244 + (1 : F) * rho 109245) = ((2 : F) * rho 109243)

def relationRow2691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109247) * ((2 : F) + (1 : F) * rho 109244 + (-1 : F) * rho 109245) = ((1 : F) * rho 109244 + (1 : F) * rho 109245)

def relationLc1678 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 49⟩, ⟨(1 : F), 108618, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109246 + (1 : F) * rho 109247) * (relationLc1678 rho) = ((1 : F) * rho 109248)

def relationLc1679 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109247) * (relationLc1679 rho) = ((1 : F) * rho 109249)

def relationLc1680 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109246) * (relationLc1680 rho) = ((1 : F) * rho 109250)

def relationRow2695 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109249) * ((1 : F) * rho 109250) = ((1 : F) * rho 109251)

def relationRow2696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109252) * ((1 : F) + (1 : F) * rho 109251) = ((1 : F) * rho 109249 + (1 : F) * rho 109250)

def relationRow2697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109253) * ((1 : F) + (-1 : F) * rho 109251) = ((1 : F) * rho 109248 + (-1 : F) * rho 109249 + (-1 : F) * rho 109250)

def relationLc1681 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 49⟩], residual := [((1 : F), 109252)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108414) * (relationLc1681 rho) = ((1 : F) * rho 109254)

def relationLc1682 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 49⟩], residual := [((1 : F), 109253)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108414) * (relationLc1682 rho) = ((1 : F) * rho 109255)

def relationRow2700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109246) * ((1 : F) * rho 109247) = ((1 : F) * rho 109256)

def relationRow2701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109246) * ((1 : F) * rho 109246) = ((1 : F) * rho 109257)

def relationRow2702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109247) * ((1 : F) * rho 109247) = ((1 : F) * rho 109258)

def relationRow2703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109259) * ((-1 : F) * rho 109257 + (1 : F) * rho 109258) = ((2 : F) * rho 109256)

def relationRow2704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109260) * ((2 : F) + (1 : F) * rho 109257 + (-1 : F) * rho 109258) = ((1 : F) * rho 109257 + (1 : F) * rho 109258)

def relationLc1683 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 50⟩, ⟨(1 : F), 108618, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109259 + (1 : F) * rho 109260) * (relationLc1683 rho) = ((1 : F) * rho 109261)

def relationLc1684 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109260) * (relationLc1684 rho) = ((1 : F) * rho 109262)

def relationLc1685 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109259) * (relationLc1685 rho) = ((1 : F) * rho 109263)

def relationRow2708 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109262) * ((1 : F) * rho 109263) = ((1 : F) * rho 109264)

def relationRow2709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109265) * ((1 : F) + (1 : F) * rho 109264) = ((1 : F) * rho 109262 + (1 : F) * rho 109263)

def relationRow2710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109266) * ((1 : F) + (-1 : F) * rho 109264) = ((1 : F) * rho 109261 + (-1 : F) * rho 109262 + (-1 : F) * rho 109263)

def relationLc1686 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 50⟩], residual := [((1 : F), 109265)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108415) * (relationLc1686 rho) = ((1 : F) * rho 109267)

def relationLc1687 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 50⟩], residual := [((1 : F), 109266)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108415) * (relationLc1687 rho) = ((1 : F) * rho 109268)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg108
