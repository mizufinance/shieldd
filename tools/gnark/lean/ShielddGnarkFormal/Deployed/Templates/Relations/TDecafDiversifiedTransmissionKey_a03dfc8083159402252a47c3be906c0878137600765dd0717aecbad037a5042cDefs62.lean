import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDefs61

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c

variable {F : Type} [CommRing F]

def relationLc129 (rho : Nat -> F) : F :=
    relationLc129Part0 rho +
    relationLc129Part1 rho

def relationRow2547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2039) * (relationLc129 rho) = ((1 : F) * rho 2040)

def relationRow2548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2038) * ((1 : F) * rho 1075) = ((1 : F) * rho 2041)

def relationRow2549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2041) * ((1 : F) + (-1 : F) * rho 1074) = ((1 : F) * rho 2042)

def relationLc130Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc130Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040

def relationLc130 (rho : Nat -> F) : F :=
    relationLc130Part0 rho +
    relationLc130Part1 rho

def relationRow2550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2042) * (relationLc130 rho) = ((1 : F) * rho 2043)

def relationRow2551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2041) * ((1 : F) * rho 1074) = ((1 : F) * rho 2044)

def relationRow2552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2044) * ((1 : F) + (-1 : F) * rho 1073) = ((1 : F) * rho 2045)

def relationLc131Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc131Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043

def relationLc131 (rho : Nat -> F) : F :=
    relationLc131Part0 rho +
    relationLc131Part1 rho

def relationRow2553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2045) * (relationLc131 rho) = ((1 : F) * rho 2046)

def relationRow2554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2044) * ((1 : F) * rho 1073) = ((1 : F) * rho 2047)

def relationRow2555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2047) * ((1 : F) + (-1 : F) * rho 1072) = ((1 : F) * rho 2048)

def relationLc132Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc132Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046

def relationLc132 (rho : Nat -> F) : F :=
    relationLc132Part0 rho +
    relationLc132Part1 rho

def relationRow2556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2048) * (relationLc132 rho) = ((1 : F) * rho 2049)

def relationRow2557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2047) * ((1 : F) * rho 1072) = ((1 : F) * rho 2050)

def relationRow2558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2050) * ((1 : F) + (-1 : F) * rho 1071) = ((1 : F) * rho 2051)

def relationLc133Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc133Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049

def relationLc133 (rho : Nat -> F) : F :=
    relationLc133Part0 rho +
    relationLc133Part1 rho

def relationRow2559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2051) * (relationLc133 rho) = ((1 : F) * rho 2052)

def relationRow2560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2050) * ((1 : F) * rho 1071) = ((1 : F) * rho 2053)

def relationRow2561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2053) * ((1 : F) + (-1 : F) * rho 1070) = ((1 : F) * rho 2054)

def relationRow2562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2054) * ((1 : F) + (-1 : F) * rho 1069) = ((1 : F) * rho 2055)

def relationRow2563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2055) * ((1 : F) + (-1 : F) * rho 1068) = ((1 : F) * rho 2056)

def relationRow2564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2056) * ((1 : F) + (-1 : F) * rho 1067) = ((1 : F) * rho 2057)

def relationRow2565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2057) * ((1 : F) + (-1 : F) * rho 1066) = ((1 : F) * rho 2058)

def relationLc134Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc134Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052

def relationLc134 (rho : Nat -> F) : F :=
    relationLc134Part0 rho +
    relationLc134Part1 rho

def relationRow2566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2058) * (relationLc134 rho) = ((1 : F) * rho 2059)

def relationRow2567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2057) * ((1 : F) * rho 1066) = ((1 : F) * rho 2060)

def relationRow2568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2060) * ((1 : F) + (-1 : F) * rho 1065) = ((1 : F) * rho 2061)

def relationLc135Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc135Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059

def relationLc135 (rho : Nat -> F) : F :=
    relationLc135Part0 rho +
    relationLc135Part1 rho

def relationRow2569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2061) * (relationLc135 rho) = ((1 : F) * rho 2062)

def relationRow2570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2060) * ((1 : F) * rho 1065) = ((1 : F) * rho 2063)

def relationRow2571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2063) * ((1 : F) + (-1 : F) * rho 1064) = ((1 : F) * rho 2064)

def relationRow2572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2064) * ((1 : F) + (-1 : F) * rho 1063) = ((1 : F) * rho 2065)

def relationLc136Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc136Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062

def relationLc136 (rho : Nat -> F) : F :=
    relationLc136Part0 rho +
    relationLc136Part1 rho

def relationRow2573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2065) * (relationLc136 rho) = ((1 : F) * rho 2066)

def relationRow2574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2064) * ((1 : F) * rho 1063) = ((1 : F) * rho 2067)

def relationRow2575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2067) * ((1 : F) + (-1 : F) * rho 1062) = ((1 : F) * rho 2068)

def relationLc137Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc137Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066

def relationLc137 (rho : Nat -> F) : F :=
    relationLc137Part0 rho +
    relationLc137Part1 rho

def relationRow2576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2068) * (relationLc137 rho) = ((1 : F) * rho 2069)

def relationRow2577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2067) * ((1 : F) * rho 1062) = ((1 : F) * rho 2070)

def relationRow2578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2070) * ((1 : F) + (-1 : F) * rho 1061) = ((1 : F) * rho 2071)

def relationLc138Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1967 + (1 : F) * rho 1969 + (-1 : F) * rho 1970 + (1 : F) * rho 1972 + (-1 : F) * rho 1973 + (1 : F) * rho 1975 + (-1 : F) * rho 1976 + (1 : F) * rho 1979 + (-1 : F) * rho 1980 + (1 : F) * rho 1983 + (-1 : F) * rho 1984 + (1 : F) * rho 1986 + (-1 : F) * rho 1987 + (1 : F) * rho 1990 + (-1 : F) * rho 1991 + (1 : F) * rho 1993 + (-1 : F) * rho 1994 + (1 : F) * rho 1996 + (-1 : F) * rho 1997 + (1 : F) * rho 1999 + (-1 : F) * rho 2000 + (1 : F) * rho 2002 + (-1 : F) * rho 2003 + (1 : F) * rho 2006 + (-1 : F) * rho 2007 + (1 : F) * rho 2014 + (-1 : F) * rho 2015 + (1 : F) * rho 2017 + (-1 : F) * rho 2018 + (1 : F) * rho 2020 + (-1 : F) * rho 2021 + (1 : F) * rho 2023

def relationLc138Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 2024 + (1 : F) * rho 2026 + (-1 : F) * rho 2027 + (1 : F) * rho 2029 + (-1 : F) * rho 2030 + (1 : F) * rho 2032 + (-1 : F) * rho 2033 + (1 : F) * rho 2036 + (-1 : F) * rho 2037 + (1 : F) * rho 2039 + (-1 : F) * rho 2040 + (1 : F) * rho 2042 + (-1 : F) * rho 2043 + (1 : F) * rho 2045 + (-1 : F) * rho 2046 + (1 : F) * rho 2048 + (-1 : F) * rho 2049 + (1 : F) * rho 2051 + (-1 : F) * rho 2052 + (1 : F) * rho 2058 + (-1 : F) * rho 2059 + (1 : F) * rho 2061 + (-1 : F) * rho 2062 + (1 : F) * rho 2065 + (-1 : F) * rho 2066 + (1 : F) * rho 2068 + (-1 : F) * rho 2069

def relationLc138 (rho : Nat -> F) : F :=
    relationLc138Part0 rho +
    relationLc138Part1 rho

def relationRow2579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2071) * (relationLc138 rho) = ((1 : F) * rho 2072)

def relationRow2580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2070) * ((1 : F) * rho 1061) = ((1 : F) * rho 2073)

def relationRow2581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2073) * ((1 : F) + (-1 : F) * rho 1060) = ((1 : F) * rho 2074)

def relationRow2582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2074) * ((1 : F) + (-1 : F) * rho 1059) = ((1 : F) * rho 2075)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c
