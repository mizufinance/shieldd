import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs64

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc152Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066 + (1 : F) * rho 2068 + (-1 : F) * rho 2069 + (1 : F) * rho 2071 + (-1 : F) * rho 2072 + (1 : F) * rho 2075 + (-1 : F) * rho 2076 + (1 : F) * rho 2079

def relationLc152Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2080 + (1 : F) * rho 2089 + (-1 : F) * rho 2090 + (1 : F) * rho 2092 + (-1 : F) * rho 2093 + (1 : F) * rho 2098 + (-1 : F) * rho 2099 + (1 : F) * rho 2103 + (-1 : F) * rho 2104 + (1 : F) * rho 2108 + (-1 : F) * rho 2109 + (1 : F) * rho 2112 + (-1 : F) * rho 2113 + (1 : F) * rho 2117 + (-1 : F) * rho 2118 + (1 : F) * rho 2121 + (-1 : F) * rho 2122 + (1 : F) * rho 2124 + (-1 : F) * rho 2125 + (1 : F) * rho 2127 + (-1 : F) * rho 2128 + (1 : F) * rho 2133 + (-1 : F) * rho 2134

def relationLc152 (rho : Nat -> F) : F :=
    relationLc152Part0 rho +
    relationLc152Part1 rho +
    relationLc152Part2 rho

def relationRow2645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2137) * (relationLc152 rho) = ((1 : F) * rho 2138)

def relationRow2646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2136) * ((1 : F) * rho 1023) = ((1 : F) * rho 2139)

def relationRow2647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2139) * ((1 : F) + (-1 : F) * rho 1022) = ((1 : F) * rho 2140)

def relationLc153Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc153Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066 + (1 : F) * rho 2068 + (-1 : F) * rho 2069 + (1 : F) * rho 2071 + (-1 : F) * rho 2072 + (1 : F) * rho 2075 + (-1 : F) * rho 2076 + (1 : F) * rho 2079

def relationLc153Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2080 + (1 : F) * rho 2089 + (-1 : F) * rho 2090 + (1 : F) * rho 2092 + (-1 : F) * rho 2093 + (1 : F) * rho 2098 + (-1 : F) * rho 2099 + (1 : F) * rho 2103 + (-1 : F) * rho 2104 + (1 : F) * rho 2108 + (-1 : F) * rho 2109 + (1 : F) * rho 2112 + (-1 : F) * rho 2113 + (1 : F) * rho 2117 + (-1 : F) * rho 2118 + (1 : F) * rho 2121 + (-1 : F) * rho 2122 + (1 : F) * rho 2124 + (-1 : F) * rho 2125 + (1 : F) * rho 2127 + (-1 : F) * rho 2128 + (1 : F) * rho 2133 + (-1 : F) * rho 2134 + (1 : F) * rho 2137 + (-1 : F) * rho 2138

def relationLc153 (rho : Nat -> F) : F :=
    relationLc153Part0 rho +
    relationLc153Part1 rho +
    relationLc153Part2 rho

def relationRow2648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2140) * (relationLc153 rho) = ((1 : F) * rho 2141)

def relationRow2649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2139) * ((1 : F) * rho 1022) = ((1 : F) * rho 2142)

def relationRow2650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2142) * ((1 : F) + (-1 : F) * rho 1021) = ((1 : F) * rho 2143)

def relationRow2651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2143) * ((1 : F) + (-1 : F) * rho 1020) = ((1 : F) * rho 2144)

def relationRow2652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2144) * ((1 : F) + (-1 : F) * rho 1019) = ((1 : F) * rho 2145)

def relationLc154Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc154Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066 + (1 : F) * rho 2068 + (-1 : F) * rho 2069 + (1 : F) * rho 2071 + (-1 : F) * rho 2072 + (1 : F) * rho 2075 + (-1 : F) * rho 2076 + (1 : F) * rho 2079

def relationLc154Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2080 + (1 : F) * rho 2089 + (-1 : F) * rho 2090 + (1 : F) * rho 2092 + (-1 : F) * rho 2093 + (1 : F) * rho 2098 + (-1 : F) * rho 2099 + (1 : F) * rho 2103 + (-1 : F) * rho 2104 + (1 : F) * rho 2108 + (-1 : F) * rho 2109 + (1 : F) * rho 2112 + (-1 : F) * rho 2113 + (1 : F) * rho 2117 + (-1 : F) * rho 2118 + (1 : F) * rho 2121 + (-1 : F) * rho 2122 + (1 : F) * rho 2124 + (-1 : F) * rho 2125 + (1 : F) * rho 2127 + (-1 : F) * rho 2128 + (1 : F) * rho 2133 + (-1 : F) * rho 2134 + (1 : F) * rho 2137 + (-1 : F) * rho 2138 + (1 : F) * rho 2140 + (-1 : F) * rho 2141

def relationLc154 (rho : Nat -> F) : F :=
    relationLc154Part0 rho +
    relationLc154Part1 rho +
    relationLc154Part2 rho

def relationRow2653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2145) * (relationLc154 rho) = ((1 : F) * rho 2146)

def relationRow2654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2144) * ((1 : F) * rho 1019) = ((1 : F) * rho 2147)

def relationRow2655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2147) * ((1 : F) + (-1 : F) * rho 1018) = ((1 : F) * rho 2148)

def relationRow2656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2148) * ((1 : F) + (-1 : F) * rho 1017) = ((1 : F) * rho 2149)

def relationLc155Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc155Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066 + (1 : F) * rho 2068 + (-1 : F) * rho 2069 + (1 : F) * rho 2071 + (-1 : F) * rho 2072 + (1 : F) * rho 2075 + (-1 : F) * rho 2076 + (1 : F) * rho 2079

def relationLc155Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2080 + (1 : F) * rho 2089 + (-1 : F) * rho 2090 + (1 : F) * rho 2092 + (-1 : F) * rho 2093 + (1 : F) * rho 2098 + (-1 : F) * rho 2099 + (1 : F) * rho 2103 + (-1 : F) * rho 2104 + (1 : F) * rho 2108 + (-1 : F) * rho 2109 + (1 : F) * rho 2112 + (-1 : F) * rho 2113 + (1 : F) * rho 2117 + (-1 : F) * rho 2118 + (1 : F) * rho 2121 + (-1 : F) * rho 2122 + (1 : F) * rho 2124 + (-1 : F) * rho 2125 + (1 : F) * rho 2127 + (-1 : F) * rho 2128 + (1 : F) * rho 2133 + (-1 : F) * rho 2134 + (1 : F) * rho 2137 + (-1 : F) * rho 2138 + (1 : F) * rho 2140 + (-1 : F) * rho 2141 + (1 : F) * rho 2145 + (-1 : F) * rho 2146

def relationLc155 (rho : Nat -> F) : F :=
    relationLc155Part0 rho +
    relationLc155Part1 rho +
    relationLc155Part2 rho

def relationRow2657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2149) * (relationLc155 rho) = ((1 : F) * rho 2150)

def relationRow2658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2148) * ((1 : F) * rho 1017) = ((1 : F) * rho 2151)

def relationRow2659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2151) * ((1 : F) + (-1 : F) * rho 1016) = ((1 : F) * rho 2152)

def relationRow2660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2152) * ((1 : F) + (-1 : F) * rho 1015) = ((1 : F) * rho 2153)

def relationRow2661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2153) * ((1 : F) + (-1 : F) * rho 1014) = ((1 : F) * rho 2154)

def relationLc156Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc156Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066 + (1 : F) * rho 2068 + (-1 : F) * rho 2069 + (1 : F) * rho 2071 + (-1 : F) * rho 2072 + (1 : F) * rho 2075 + (-1 : F) * rho 2076 + (1 : F) * rho 2079

def relationLc156Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2080 + (1 : F) * rho 2089 + (-1 : F) * rho 2090 + (1 : F) * rho 2092 + (-1 : F) * rho 2093 + (1 : F) * rho 2098 + (-1 : F) * rho 2099 + (1 : F) * rho 2103 + (-1 : F) * rho 2104 + (1 : F) * rho 2108 + (-1 : F) * rho 2109 + (1 : F) * rho 2112 + (-1 : F) * rho 2113 + (1 : F) * rho 2117 + (-1 : F) * rho 2118 + (1 : F) * rho 2121 + (-1 : F) * rho 2122 + (1 : F) * rho 2124 + (-1 : F) * rho 2125 + (1 : F) * rho 2127 + (-1 : F) * rho 2128 + (1 : F) * rho 2133 + (-1 : F) * rho 2134 + (1 : F) * rho 2137 + (-1 : F) * rho 2138 + (1 : F) * rho 2140 + (-1 : F) * rho 2141 + (1 : F) * rho 2145 + (-1 : F) * rho 2146 + (1 : F) * rho 2149 + (-1 : F) * rho 2150

def relationLc156 (rho : Nat -> F) : F :=
    relationLc156Part0 rho +
    relationLc156Part1 rho +
    relationLc156Part2 rho

def relationRow2662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2154) * (relationLc156 rho) = ((1 : F) * rho 2155)

def relationRow2663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2153) * ((1 : F) * rho 1014) = ((1 : F) * rho 2156)

def relationRow2664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2156) * ((1 : F) + (-1 : F) * rho 1013) = ((1 : F) * rho 2157)

def relationLc157Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc157Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066 + (1 : F) * rho 2068 + (-1 : F) * rho 2069 + (1 : F) * rho 2071 + (-1 : F) * rho 2072 + (1 : F) * rho 2075 + (-1 : F) * rho 2076 + (1 : F) * rho 2079

def relationLc157Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2080 + (1 : F) * rho 2089 + (-1 : F) * rho 2090 + (1 : F) * rho 2092 + (-1 : F) * rho 2093 + (1 : F) * rho 2098 + (-1 : F) * rho 2099 + (1 : F) * rho 2103 + (-1 : F) * rho 2104 + (1 : F) * rho 2108 + (-1 : F) * rho 2109 + (1 : F) * rho 2112 + (-1 : F) * rho 2113 + (1 : F) * rho 2117 + (-1 : F) * rho 2118 + (1 : F) * rho 2121 + (-1 : F) * rho 2122 + (1 : F) * rho 2124 + (-1 : F) * rho 2125 + (1 : F) * rho 2127 + (-1 : F) * rho 2128 + (1 : F) * rho 2133 + (-1 : F) * rho 2134 + (1 : F) * rho 2137 + (-1 : F) * rho 2138 + (1 : F) * rho 2140 + (-1 : F) * rho 2141 + (1 : F) * rho 2145 + (-1 : F) * rho 2146 + (1 : F) * rho 2149 + (-1 : F) * rho 2150 + (1 : F) * rho 2154

def relationLc157Part3 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2155

def relationLc157 (rho : Nat -> F) : F :=
    relationLc157Part0 rho +
    relationLc157Part1 rho +
    relationLc157Part2 rho +
    relationLc157Part3 rho

def relationRow2665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2157) * (relationLc157 rho) = ((1 : F) * rho 2158)

def relationRow2666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2156) * ((1 : F) * rho 1013) = ((1 : F) * rho 2159)

def relationRow2667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2159) * ((1 : F) + (-1 : F) * rho 1012) = ((1 : F) * rho 2160)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
