import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs63

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationRow2618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2110) * ((1 : F) + (-1 : F) * rho 1037) = ((1 : F) * rho 2111)

def relationRow2619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2111) * ((1 : F) + (-1 : F) * rho 1036) = ((1 : F) * rho 2112)

def relationLc146Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc146Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066 + (1 : F) * rho 2068 + (-1 : F) * rho 2069 + (1 : F) * rho 2071 + (-1 : F) * rho 2072 + (1 : F) * rho 2075 + (-1 : F) * rho 2076 + (1 : F) * rho 2079

def relationLc146Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2080 + (1 : F) * rho 2089 + (-1 : F) * rho 2090 + (1 : F) * rho 2092 + (-1 : F) * rho 2093 + (1 : F) * rho 2098 + (-1 : F) * rho 2099 + (1 : F) * rho 2103 + (-1 : F) * rho 2104 + (1 : F) * rho 2108 + (-1 : F) * rho 2109

def relationLc146 (rho : Nat -> F) : F :=
    relationLc146Part0 rho +
    relationLc146Part1 rho +
    relationLc146Part2 rho

def relationRow2620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2112) * (relationLc146 rho) = ((1 : F) * rho 2113)

def relationRow2621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2111) * ((1 : F) * rho 1036) = ((1 : F) * rho 2114)

def relationRow2622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2114) * ((1 : F) + (-1 : F) * rho 1035) = ((1 : F) * rho 2115)

def relationRow2623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2115) * ((1 : F) + (-1 : F) * rho 1034) = ((1 : F) * rho 2116)

def relationRow2624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2116) * ((1 : F) + (-1 : F) * rho 1033) = ((1 : F) * rho 2117)

def relationLc147Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc147Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066 + (1 : F) * rho 2068 + (-1 : F) * rho 2069 + (1 : F) * rho 2071 + (-1 : F) * rho 2072 + (1 : F) * rho 2075 + (-1 : F) * rho 2076 + (1 : F) * rho 2079

def relationLc147Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2080 + (1 : F) * rho 2089 + (-1 : F) * rho 2090 + (1 : F) * rho 2092 + (-1 : F) * rho 2093 + (1 : F) * rho 2098 + (-1 : F) * rho 2099 + (1 : F) * rho 2103 + (-1 : F) * rho 2104 + (1 : F) * rho 2108 + (-1 : F) * rho 2109 + (1 : F) * rho 2112 + (-1 : F) * rho 2113

def relationLc147 (rho : Nat -> F) : F :=
    relationLc147Part0 rho +
    relationLc147Part1 rho +
    relationLc147Part2 rho

def relationRow2625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2117) * (relationLc147 rho) = ((1 : F) * rho 2118)

def relationRow2626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2116) * ((1 : F) * rho 1033) = ((1 : F) * rho 2119)

def relationRow2627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2119) * ((1 : F) + (-1 : F) * rho 1032) = ((1 : F) * rho 2120)

def relationRow2628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2120) * ((1 : F) + (-1 : F) * rho 1031) = ((1 : F) * rho 2121)

def relationLc148Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc148Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066 + (1 : F) * rho 2068 + (-1 : F) * rho 2069 + (1 : F) * rho 2071 + (-1 : F) * rho 2072 + (1 : F) * rho 2075 + (-1 : F) * rho 2076 + (1 : F) * rho 2079

def relationLc148Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2080 + (1 : F) * rho 2089 + (-1 : F) * rho 2090 + (1 : F) * rho 2092 + (-1 : F) * rho 2093 + (1 : F) * rho 2098 + (-1 : F) * rho 2099 + (1 : F) * rho 2103 + (-1 : F) * rho 2104 + (1 : F) * rho 2108 + (-1 : F) * rho 2109 + (1 : F) * rho 2112 + (-1 : F) * rho 2113 + (1 : F) * rho 2117 + (-1 : F) * rho 2118

def relationLc148 (rho : Nat -> F) : F :=
    relationLc148Part0 rho +
    relationLc148Part1 rho +
    relationLc148Part2 rho

def relationRow2629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2121) * (relationLc148 rho) = ((1 : F) * rho 2122)

def relationRow2630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2120) * ((1 : F) * rho 1031) = ((1 : F) * rho 2123)

def relationRow2631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2123) * ((1 : F) + (-1 : F) * rho 1030) = ((1 : F) * rho 2124)

def relationLc149Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc149Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066 + (1 : F) * rho 2068 + (-1 : F) * rho 2069 + (1 : F) * rho 2071 + (-1 : F) * rho 2072 + (1 : F) * rho 2075 + (-1 : F) * rho 2076 + (1 : F) * rho 2079

def relationLc149Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2080 + (1 : F) * rho 2089 + (-1 : F) * rho 2090 + (1 : F) * rho 2092 + (-1 : F) * rho 2093 + (1 : F) * rho 2098 + (-1 : F) * rho 2099 + (1 : F) * rho 2103 + (-1 : F) * rho 2104 + (1 : F) * rho 2108 + (-1 : F) * rho 2109 + (1 : F) * rho 2112 + (-1 : F) * rho 2113 + (1 : F) * rho 2117 + (-1 : F) * rho 2118 + (1 : F) * rho 2121 + (-1 : F) * rho 2122

def relationLc149 (rho : Nat -> F) : F :=
    relationLc149Part0 rho +
    relationLc149Part1 rho +
    relationLc149Part2 rho

def relationRow2632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2124) * (relationLc149 rho) = ((1 : F) * rho 2125)

def relationRow2633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2123) * ((1 : F) * rho 1030) = ((1 : F) * rho 2126)

def relationRow2634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2126) * ((1 : F) + (-1 : F) * rho 1029) = ((1 : F) * rho 2127)

def relationLc150Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc150Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066 + (1 : F) * rho 2068 + (-1 : F) * rho 2069 + (1 : F) * rho 2071 + (-1 : F) * rho 2072 + (1 : F) * rho 2075 + (-1 : F) * rho 2076 + (1 : F) * rho 2079

def relationLc150Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2080 + (1 : F) * rho 2089 + (-1 : F) * rho 2090 + (1 : F) * rho 2092 + (-1 : F) * rho 2093 + (1 : F) * rho 2098 + (-1 : F) * rho 2099 + (1 : F) * rho 2103 + (-1 : F) * rho 2104 + (1 : F) * rho 2108 + (-1 : F) * rho 2109 + (1 : F) * rho 2112 + (-1 : F) * rho 2113 + (1 : F) * rho 2117 + (-1 : F) * rho 2118 + (1 : F) * rho 2121 + (-1 : F) * rho 2122 + (1 : F) * rho 2124 + (-1 : F) * rho 2125

def relationLc150 (rho : Nat -> F) : F :=
    relationLc150Part0 rho +
    relationLc150Part1 rho +
    relationLc150Part2 rho

def relationRow2635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2127) * (relationLc150 rho) = ((1 : F) * rho 2128)

def relationRow2636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2126) * ((1 : F) * rho 1029) = ((1 : F) * rho 2129)

def relationRow2637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2129) * ((1 : F) + (-1 : F) * rho 1028) = ((1 : F) * rho 2130)

def relationRow2638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2130) * ((1 : F) + (-1 : F) * rho 1027) = ((1 : F) * rho 2131)

def relationRow2639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2131) * ((1 : F) + (-1 : F) * rho 1026) = ((1 : F) * rho 2132)

def relationRow2640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2132) * ((1 : F) + (-1 : F) * rho 1025) = ((1 : F) * rho 2133)

def relationLc151Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc151Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066 + (1 : F) * rho 2068 + (-1 : F) * rho 2069 + (1 : F) * rho 2071 + (-1 : F) * rho 2072 + (1 : F) * rho 2075 + (-1 : F) * rho 2076 + (1 : F) * rho 2079

def relationLc151Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2080 + (1 : F) * rho 2089 + (-1 : F) * rho 2090 + (1 : F) * rho 2092 + (-1 : F) * rho 2093 + (1 : F) * rho 2098 + (-1 : F) * rho 2099 + (1 : F) * rho 2103 + (-1 : F) * rho 2104 + (1 : F) * rho 2108 + (-1 : F) * rho 2109 + (1 : F) * rho 2112 + (-1 : F) * rho 2113 + (1 : F) * rho 2117 + (-1 : F) * rho 2118 + (1 : F) * rho 2121 + (-1 : F) * rho 2122 + (1 : F) * rho 2124 + (-1 : F) * rho 2125 + (1 : F) * rho 2127 + (-1 : F) * rho 2128

def relationLc151 (rho : Nat -> F) : F :=
    relationLc151Part0 rho +
    relationLc151Part1 rho +
    relationLc151Part2 rho

def relationRow2641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2133) * (relationLc151 rho) = ((1 : F) * rho 2134)

def relationRow2642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2132) * ((1 : F) * rho 1025) = ((1 : F) * rho 2135)

def relationRow2643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2135) * ((1 : F) + (-1 : F) * rho 1024) = ((1 : F) * rho 2136)

def relationRow2644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2136) * ((1 : F) + (-1 : F) * rho 1023) = ((1 : F) * rho 2137)

def relationLc152Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
