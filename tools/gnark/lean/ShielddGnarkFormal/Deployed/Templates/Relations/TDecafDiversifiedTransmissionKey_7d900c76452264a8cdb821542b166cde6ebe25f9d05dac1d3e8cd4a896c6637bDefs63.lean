import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs62

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc139Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc139Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066 + (1 : F) * rho 2068 + (-1 : F) * rho 2069 + (1 : F) * rho 2071 + (-1 : F) * rho 2072

def relationLc139 (rho : Nat -> F) : F :=
    relationLc139Part0 rho +
    relationLc139Part1 rho

def relationRow2583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2075) * (relationLc139 rho) = ((1 : F) * rho 2076)

def relationRow2584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2074) * ((1 : F) * rho 1059) = ((1 : F) * rho 2077)

def relationRow2585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2077) * ((1 : F) + (-1 : F) * rho 1058) = ((1 : F) * rho 2078)

def relationRow2586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2078) * ((1 : F) + (-1 : F) * rho 1057) = ((1 : F) * rho 2079)

def relationLc140Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc140Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066 + (1 : F) * rho 2068 + (-1 : F) * rho 2069 + (1 : F) * rho 2071 + (-1 : F) * rho 2072 + (1 : F) * rho 2075 + (-1 : F) * rho 2076

def relationLc140 (rho : Nat -> F) : F :=
    relationLc140Part0 rho +
    relationLc140Part1 rho

def relationRow2587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2079) * (relationLc140 rho) = ((1 : F) * rho 2080)

def relationRow2588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2078) * ((1 : F) * rho 1057) = ((1 : F) * rho 2081)

def relationRow2589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2081) * ((1 : F) + (-1 : F) * rho 1056) = ((1 : F) * rho 2082)

def relationRow2590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2082) * ((1 : F) + (-1 : F) * rho 1055) = ((1 : F) * rho 2083)

def relationRow2591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2083) * ((1 : F) + (-1 : F) * rho 1054) = ((1 : F) * rho 2084)

def relationRow2592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2084) * ((1 : F) + (-1 : F) * rho 1053) = ((1 : F) * rho 2085)

def relationRow2593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2085) * ((1 : F) + (-1 : F) * rho 1052) = ((1 : F) * rho 2086)

def relationRow2594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2086) * ((1 : F) + (-1 : F) * rho 1051) = ((1 : F) * rho 2087)

def relationRow2595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2087) * ((1 : F) + (-1 : F) * rho 1050) = ((1 : F) * rho 2088)

def relationRow2596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2088) * ((1 : F) + (-1 : F) * rho 1049) = ((1 : F) * rho 2089)

def relationLc141Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc141Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066 + (1 : F) * rho 2068 + (-1 : F) * rho 2069 + (1 : F) * rho 2071 + (-1 : F) * rho 2072 + (1 : F) * rho 2075 + (-1 : F) * rho 2076 + (1 : F) * rho 2079

def relationLc141Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2080

def relationLc141 (rho : Nat -> F) : F :=
    relationLc141Part0 rho +
    relationLc141Part1 rho +
    relationLc141Part2 rho

def relationRow2597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2089) * (relationLc141 rho) = ((1 : F) * rho 2090)

def relationRow2598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2088) * ((1 : F) * rho 1049) = ((1 : F) * rho 2091)

def relationRow2599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2091) * ((1 : F) + (-1 : F) * rho 1048) = ((1 : F) * rho 2092)

def relationLc142Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc142Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066 + (1 : F) * rho 2068 + (-1 : F) * rho 2069 + (1 : F) * rho 2071 + (-1 : F) * rho 2072 + (1 : F) * rho 2075 + (-1 : F) * rho 2076 + (1 : F) * rho 2079

def relationLc142Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2080 + (1 : F) * rho 2089 + (-1 : F) * rho 2090

def relationLc142 (rho : Nat -> F) : F :=
    relationLc142Part0 rho +
    relationLc142Part1 rho +
    relationLc142Part2 rho

def relationRow2600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2092) * (relationLc142 rho) = ((1 : F) * rho 2093)

def relationRow2601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2091) * ((1 : F) * rho 1048) = ((1 : F) * rho 2094)

def relationRow2602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2094) * ((1 : F) + (-1 : F) * rho 1047) = ((1 : F) * rho 2095)

def relationRow2603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2095) * ((1 : F) + (-1 : F) * rho 1046) = ((1 : F) * rho 2096)

def relationRow2604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2096) * ((1 : F) + (-1 : F) * rho 1045) = ((1 : F) * rho 2097)

def relationRow2605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2097) * ((1 : F) + (-1 : F) * rho 1044) = ((1 : F) * rho 2098)

def relationLc143Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc143Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066 + (1 : F) * rho 2068 + (-1 : F) * rho 2069 + (1 : F) * rho 2071 + (-1 : F) * rho 2072 + (1 : F) * rho 2075 + (-1 : F) * rho 2076 + (1 : F) * rho 2079

def relationLc143Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2080 + (1 : F) * rho 2089 + (-1 : F) * rho 2090 + (1 : F) * rho 2092 + (-1 : F) * rho 2093

def relationLc143 (rho : Nat -> F) : F :=
    relationLc143Part0 rho +
    relationLc143Part1 rho +
    relationLc143Part2 rho

def relationRow2606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2098) * (relationLc143 rho) = ((1 : F) * rho 2099)

def relationRow2607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2097) * ((1 : F) * rho 1044) = ((1 : F) * rho 2100)

def relationRow2608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2100) * ((1 : F) + (-1 : F) * rho 1043) = ((1 : F) * rho 2101)

def relationRow2609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2101) * ((1 : F) + (-1 : F) * rho 1042) = ((1 : F) * rho 2102)

def relationRow2610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2102) * ((1 : F) + (-1 : F) * rho 1041) = ((1 : F) * rho 2103)

def relationLc144Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc144Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066 + (1 : F) * rho 2068 + (-1 : F) * rho 2069 + (1 : F) * rho 2071 + (-1 : F) * rho 2072 + (1 : F) * rho 2075 + (-1 : F) * rho 2076 + (1 : F) * rho 2079

def relationLc144Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2080 + (1 : F) * rho 2089 + (-1 : F) * rho 2090 + (1 : F) * rho 2092 + (-1 : F) * rho 2093 + (1 : F) * rho 2098 + (-1 : F) * rho 2099

def relationLc144 (rho : Nat -> F) : F :=
    relationLc144Part0 rho +
    relationLc144Part1 rho +
    relationLc144Part2 rho

def relationRow2611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2103) * (relationLc144 rho) = ((1 : F) * rho 2104)

def relationRow2612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2102) * ((1 : F) * rho 1041) = ((1 : F) * rho 2105)

def relationRow2613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2105) * ((1 : F) + (-1 : F) * rho 1040) = ((1 : F) * rho 2106)

def relationRow2614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2106) * ((1 : F) + (-1 : F) * rho 1039) = ((1 : F) * rho 2107)

def relationRow2615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2107) * ((1 : F) + (-1 : F) * rho 1038) = ((1 : F) * rho 2108)

def relationLc145Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc145Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066 + (1 : F) * rho 2068 + (-1 : F) * rho 2069 + (1 : F) * rho 2071 + (-1 : F) * rho 2072 + (1 : F) * rho 2075 + (-1 : F) * rho 2076 + (1 : F) * rho 2079

def relationLc145Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2080 + (1 : F) * rho 2089 + (-1 : F) * rho 2090 + (1 : F) * rho 2092 + (-1 : F) * rho 2093 + (1 : F) * rho 2098 + (-1 : F) * rho 2099 + (1 : F) * rho 2103 + (-1 : F) * rho 2104

def relationLc145 (rho : Nat -> F) : F :=
    relationLc145Part0 rho +
    relationLc145Part1 rho +
    relationLc145Part2 rho

def relationRow2616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2108) * (relationLc145 rho) = ((1 : F) * rho 2109)

def relationRow2617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2107) * ((1 : F) * rho 1038) = ((1 : F) * rho 2110)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
