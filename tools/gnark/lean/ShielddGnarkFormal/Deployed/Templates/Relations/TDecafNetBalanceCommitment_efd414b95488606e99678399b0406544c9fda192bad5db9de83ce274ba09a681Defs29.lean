import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs28

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow1942 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 1767) * ((1 : F) * rho 1768) = ((1 : F) * rho 1769)

def relationRow1943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1770) * ((1 : F) + (1 : F) * rho 1769) = ((1 : F) * rho 1767 + (1 : F) * rho 1768)

def relationRow1944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1771) * ((1 : F) + (-1 : F) * rho 1769) = ((1 : F) * rho 1766 + (-1 : F) * rho 1767 + (-1 : F) * rho 1768)

def relationRow1945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1770) * ((1 : F) * rho 1771) = ((1 : F) * rho 1772)

def relationRow1946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1770) * ((1 : F) * rho 1770) = ((1 : F) * rho 1773)

def relationRow1947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1771) * ((1 : F) * rho 1771) = ((1 : F) * rho 1774)

def relationRow1948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1775) * ((-1 : F) * rho 1773 + (1 : F) * rho 1774) = ((2 : F) * rho 1772)

def relationRow1949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1776) * ((2 : F) + (1 : F) * rho 1773 + (-1 : F) * rho 1774) = ((1 : F) * rho 1773 + (1 : F) * rho 1774)

def relationRow1950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1775) * ((1 : F) * rho 1776) = ((1 : F) * rho 1777)

def relationRow1951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1775) * ((1 : F) * rho 1775) = ((1 : F) * rho 1778)

def relationRow1952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1776) * ((1 : F) * rho 1776) = ((1 : F) * rho 1779)

def relationRow1953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1780) * ((-1 : F) * rho 1778 + (1 : F) * rho 1779) = ((2 : F) * rho 1777)

def relationRow1954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1781) * ((2 : F) + (1 : F) * rho 1778 + (-1 : F) * rho 1779) = ((1 : F) * rho 1778 + (1 : F) * rho 1779)

def relationRow1955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1199) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 1782)

def relationRow1956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1200) * ((1 : F) * rho 1252 + (1 : F) * rho 1782) = ((1 : F) * rho 1783)

def relationRow1957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1199) = ((1 : F) * rho 1784)

def relationRow1958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1199) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 1785)

def relationRow1959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1200) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 1785) = ((1 : F) * rho 1786)

def relationRow1960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1199) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 1787)

def relationRow1961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1780 + (1 : F) * rho 1781) * ((1 : F) + (1 : F) * rho 1783 + (1 : F) * rho 1784 + (1 : F) * rho 1786 + (1 : F) * rho 1787) = ((1 : F) * rho 1788)

def relationRow1962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1780) * ((1 : F) + (1 : F) * rho 1786 + (1 : F) * rho 1787) = ((1 : F) * rho 1789)

def relationRow1963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1781) * ((1 : F) * rho 1783 + (1 : F) * rho 1784) = ((1 : F) * rho 1790)

def relationRow1964 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 1789) * ((1 : F) * rho 1790) = ((1 : F) * rho 1791)

def relationRow1965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1792) * ((1 : F) + (1 : F) * rho 1791) = ((1 : F) * rho 1789 + (1 : F) * rho 1790)

def relationRow1966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1793) * ((1 : F) + (-1 : F) * rho 1791) = ((1 : F) * rho 1788 + (-1 : F) * rho 1789 + (-1 : F) * rho 1790)

def relationRow1967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1792) * ((1 : F) * rho 1793) = ((1 : F) * rho 1794)

def relationRow1968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1792) * ((1 : F) * rho 1792) = ((1 : F) * rho 1795)

def relationRow1969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1793) * ((1 : F) * rho 1793) = ((1 : F) * rho 1796)

def relationRow1970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1797) * ((-1 : F) * rho 1795 + (1 : F) * rho 1796) = ((2 : F) * rho 1794)

def relationRow1971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1798) * ((2 : F) + (1 : F) * rho 1795 + (-1 : F) * rho 1796) = ((1 : F) * rho 1795 + (1 : F) * rho 1796)

def relationRow1972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1797) * ((1 : F) * rho 1798) = ((1 : F) * rho 1799)

def relationRow1973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1797) * ((1 : F) * rho 1797) = ((1 : F) * rho 1800)

def relationRow1974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1798) * ((1 : F) * rho 1798) = ((1 : F) * rho 1801)

def relationRow1975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1802) * ((-1 : F) * rho 1800 + (1 : F) * rho 1801) = ((2 : F) * rho 1799)

def relationRow1976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1803) * ((2 : F) + (1 : F) * rho 1800 + (-1 : F) * rho 1801) = ((1 : F) * rho 1800 + (1 : F) * rho 1801)

def relationRow1977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1197) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 1804)

def relationRow1978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1198) * ((1 : F) * rho 1252 + (1 : F) * rho 1804) = ((1 : F) * rho 1805)

def relationRow1979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1197) = ((1 : F) * rho 1806)

def relationRow1980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1197) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 1807)

def relationRow1981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1198) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 1807) = ((1 : F) * rho 1808)

def relationRow1982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1197) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 1809)

def relationRow1983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1802 + (1 : F) * rho 1803) * ((1 : F) + (1 : F) * rho 1805 + (1 : F) * rho 1806 + (1 : F) * rho 1808 + (1 : F) * rho 1809) = ((1 : F) * rho 1810)

def relationRow1984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1802) * ((1 : F) + (1 : F) * rho 1808 + (1 : F) * rho 1809) = ((1 : F) * rho 1811)

def relationRow1985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1803) * ((1 : F) * rho 1805 + (1 : F) * rho 1806) = ((1 : F) * rho 1812)

def relationRow1986 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 1811) * ((1 : F) * rho 1812) = ((1 : F) * rho 1813)

def relationRow1987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1814) * ((1 : F) + (1 : F) * rho 1813) = ((1 : F) * rho 1811 + (1 : F) * rho 1812)

def relationRow1988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1815) * ((1 : F) + (-1 : F) * rho 1813) = ((1 : F) * rho 1810 + (-1 : F) * rho 1811 + (-1 : F) * rho 1812)

def relationRow1989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1814) * ((1 : F) * rho 1815) = ((1 : F) * rho 1816)

def relationRow1990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1814) * ((1 : F) * rho 1814) = ((1 : F) * rho 1817)

def relationRow1991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1815) * ((1 : F) * rho 1815) = ((1 : F) * rho 1818)

def relationRow1992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1819) * ((-1 : F) * rho 1817 + (1 : F) * rho 1818) = ((2 : F) * rho 1816)

def relationRow1993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1820) * ((2 : F) + (1 : F) * rho 1817 + (-1 : F) * rho 1818) = ((1 : F) * rho 1817 + (1 : F) * rho 1818)

def relationRow1994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1819) * ((1 : F) * rho 1820) = ((1 : F) * rho 1821)

def relationRow1995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1819) * ((1 : F) * rho 1819) = ((1 : F) * rho 1822)

def relationRow1996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1820) * ((1 : F) * rho 1820) = ((1 : F) * rho 1823)

def relationRow1997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1824) * ((-1 : F) * rho 1822 + (1 : F) * rho 1823) = ((2 : F) * rho 1821)

def relationRow1998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1825) * ((2 : F) + (1 : F) * rho 1822 + (-1 : F) * rho 1823) = ((1 : F) * rho 1822 + (1 : F) * rho 1823)

def relationRow1999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1195) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 1826)

def relationRow2000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1196) * ((1 : F) * rho 1252 + (1 : F) * rho 1826) = ((1 : F) * rho 1827)

def relationRow2001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1195) = ((1 : F) * rho 1828)

def relationRow2002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1195) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 1829)

def relationRow2003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1196) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 1829) = ((1 : F) * rho 1830)

def relationRow2004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1195) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 1831)

def relationRow2005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1824 + (1 : F) * rho 1825) * ((1 : F) + (1 : F) * rho 1827 + (1 : F) * rho 1828 + (1 : F) * rho 1830 + (1 : F) * rho 1831) = ((1 : F) * rho 1832)

def relationRow2006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1824) * ((1 : F) + (1 : F) * rho 1830 + (1 : F) * rho 1831) = ((1 : F) * rho 1833)

def relationRow2007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1825) * ((1 : F) * rho 1827 + (1 : F) * rho 1828) = ((1 : F) * rho 1834)

def relationRow2008 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 1833) * ((1 : F) * rho 1834) = ((1 : F) * rho 1835)

def relationRow2009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1836) * ((1 : F) + (1 : F) * rho 1835) = ((1 : F) * rho 1833 + (1 : F) * rho 1834)

def relationRow2010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1837) * ((1 : F) + (-1 : F) * rho 1835) = ((1 : F) * rho 1832 + (-1 : F) * rho 1833 + (-1 : F) * rho 1834)

def relationRow2011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1836) * ((1 : F) * rho 1837) = ((1 : F) * rho 1838)

def relationRow2012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1836) * ((1 : F) * rho 1836) = ((1 : F) * rho 1839)

def relationRow2013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1837) * ((1 : F) * rho 1837) = ((1 : F) * rho 1840)

def relationRow2014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1841) * ((-1 : F) * rho 1839 + (1 : F) * rho 1840) = ((2 : F) * rho 1838)

def relationRow2015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1842) * ((2 : F) + (1 : F) * rho 1839 + (-1 : F) * rho 1840) = ((1 : F) * rho 1839 + (1 : F) * rho 1840)

def relationRow2016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1841) * ((1 : F) * rho 1842) = ((1 : F) * rho 1843)

def relationRow2017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1841) * ((1 : F) * rho 1841) = ((1 : F) * rho 1844)

def relationRow2018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1842) * ((1 : F) * rho 1842) = ((1 : F) * rho 1845)

def relationRow2019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1846) * ((-1 : F) * rho 1844 + (1 : F) * rho 1845) = ((2 : F) * rho 1843)

def relationRow2020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1847) * ((2 : F) + (1 : F) * rho 1844 + (-1 : F) * rho 1845) = ((1 : F) * rho 1844 + (1 : F) * rho 1845)

def relationRow2021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1193) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 1848)

def relationRow2022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1194) * ((1 : F) * rho 1252 + (1 : F) * rho 1848) = ((1 : F) * rho 1849)

def relationRow2023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1193) = ((1 : F) * rho 1850)

def relationRow2024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1193) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 1851)

def relationRow2025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1194) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 1851) = ((1 : F) * rho 1852)

def relationRow2026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1193) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 1853)

def relationRow2027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1846 + (1 : F) * rho 1847) * ((1 : F) + (1 : F) * rho 1849 + (1 : F) * rho 1850 + (1 : F) * rho 1852 + (1 : F) * rho 1853) = ((1 : F) * rho 1854)

def relationRow2028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1846) * ((1 : F) + (1 : F) * rho 1852 + (1 : F) * rho 1853) = ((1 : F) * rho 1855)

def relationRow2029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1847) * ((1 : F) * rho 1849 + (1 : F) * rho 1850) = ((1 : F) * rho 1856)

def relationRow2030 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 1855) * ((1 : F) * rho 1856) = ((1 : F) * rho 1857)

def relationRow2031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1858) * ((1 : F) + (1 : F) * rho 1857) = ((1 : F) * rho 1855 + (1 : F) * rho 1856)

def relationRow2032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1859) * ((1 : F) + (-1 : F) * rho 1857) = ((1 : F) * rho 1854 + (-1 : F) * rho 1855 + (-1 : F) * rho 1856)

def relationRow2033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1858) * ((1 : F) * rho 1859) = ((1 : F) * rho 1860)

def relationRow2034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1858) * ((1 : F) * rho 1858) = ((1 : F) * rho 1861)

def relationRow2035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1859) * ((1 : F) * rho 1859) = ((1 : F) * rho 1862)

def relationRow2036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1863) * ((-1 : F) * rho 1861 + (1 : F) * rho 1862) = ((2 : F) * rho 1860)

def relationRow2037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1864) * ((2 : F) + (1 : F) * rho 1861 + (-1 : F) * rho 1862) = ((1 : F) * rho 1861 + (1 : F) * rho 1862)

def relationRow2038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1863) * ((1 : F) * rho 1864) = ((1 : F) * rho 1865)

def relationRow2039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1863) * ((1 : F) * rho 1863) = ((1 : F) * rho 1866)

def relationRow2040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1864) * ((1 : F) * rho 1864) = ((1 : F) * rho 1867)

def relationRow2041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1868) * ((-1 : F) * rho 1866 + (1 : F) * rho 1867) = ((2 : F) * rho 1865)

def relationRow2042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1869) * ((2 : F) + (1 : F) * rho 1866 + (-1 : F) * rho 1867) = ((1 : F) * rho 1866 + (1 : F) * rho 1867)

def relationRow2043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1191) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 1870)

def relationRow2044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1192) * ((1 : F) * rho 1252 + (1 : F) * rho 1870) = ((1 : F) * rho 1871)

def relationRow2045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1191) = ((1 : F) * rho 1872)

def relationRow2046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1191) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 1873)

def relationRow2047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1192) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 1873) = ((1 : F) * rho 1874)

def relationRow2048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1191) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 1875)

def relationRow2049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1868 + (1 : F) * rho 1869) * ((1 : F) + (1 : F) * rho 1871 + (1 : F) * rho 1872 + (1 : F) * rho 1874 + (1 : F) * rho 1875) = ((1 : F) * rho 1876)

def relationRow2050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1868) * ((1 : F) + (1 : F) * rho 1874 + (1 : F) * rho 1875) = ((1 : F) * rho 1877)

def relationRow2051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1869) * ((1 : F) * rho 1871 + (1 : F) * rho 1872) = ((1 : F) * rho 1878)

def relationRow2052 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 1877) * ((1 : F) * rho 1878) = ((1 : F) * rho 1879)

def relationRow2053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1880) * ((1 : F) + (1 : F) * rho 1879) = ((1 : F) * rho 1877 + (1 : F) * rho 1878)

def relationRow2054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1881) * ((1 : F) + (-1 : F) * rho 1879) = ((1 : F) * rho 1876 + (-1 : F) * rho 1877 + (-1 : F) * rho 1878)

def relationRow2055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1880) * ((1 : F) * rho 1881) = ((1 : F) * rho 1882)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
