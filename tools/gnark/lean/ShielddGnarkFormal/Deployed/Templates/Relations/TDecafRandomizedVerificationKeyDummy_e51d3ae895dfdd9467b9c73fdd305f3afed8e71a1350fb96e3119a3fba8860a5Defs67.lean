import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs66

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc1503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6459751142202280606228099361447137445159765925717836639409838896624378993578 : F), runs := [⟨(6459751142202280606228099361447137445159765925717836639409838896624378993578 : F), 257, 5, 149⟩, ⟨(6459751142202280606228099361447137445159765925717836639409838896624378993578 : F), 1005, 8, 100⟩, ⟨(7621311588082126414957430653499469869207073586199830152050198359747679243019 : F), 256, 5, 149⟩, ⟨(7621311588082126414957430653499469869207073586199830152050198359747679243019 : F), 1004, 8, 100⟩], residual := [((730906058754487008210184976461016464493450111945241353601998739401416699163 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1801 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1503 rho) = ((1 : F) * rho 1802)

def relationRow1802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1803) * ((1 : F) + (-1 : F) * rho 1799) = ((2807860768572333827312119862616485748384959158390460864410429655462760241485 : F) * rho 1798 + (1 : F) * rho 1802)

def relationLc1504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 100⟩], residual := [((1 : F), 1801), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 251) * (relationLc1504 rho) = ((1 : F) * rho 1804)

def relationLc1505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 100⟩], residual := [((1 : F), 1803), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 251) * (relationLc1505 rho) = ((1 : F) * rho 1805)

def relationRow1805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1806) * ((1 : F) + (-1 : F) * rho 1806) = ((0 : F))

def relationRow1806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1807) * ((1 : F) + (-1 : F) * rho 1807) = ((0 : F))

def relationRow1807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1808) * ((1 : F) + (-1 : F) * rho 1808) = ((0 : F))

def relationRow1808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1809) * ((1 : F) + (-1 : F) * rho 1809) = ((0 : F))

def relationRow1809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1810) * ((1 : F) + (-1 : F) * rho 1810) = ((0 : F))

def relationRow1810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1811) * ((1 : F) + (-1 : F) * rho 1811) = ((0 : F))

def relationRow1811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1812) * ((1 : F) + (-1 : F) * rho 1812) = ((0 : F))

def relationRow1812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1813) * ((1 : F) + (-1 : F) * rho 1813) = ((0 : F))

def relationRow1813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1814) * ((1 : F) + (-1 : F) * rho 1814) = ((0 : F))

def relationRow1814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1815) * ((1 : F) + (-1 : F) * rho 1815) = ((0 : F))

def relationRow1815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1816) * ((1 : F) + (-1 : F) * rho 1816) = ((0 : F))

def relationRow1816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1817) * ((1 : F) + (-1 : F) * rho 1817) = ((0 : F))

def relationRow1817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1818) * ((1 : F) + (-1 : F) * rho 1818) = ((0 : F))

def relationRow1818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1819) * ((1 : F) + (-1 : F) * rho 1819) = ((0 : F))

def relationRow1819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1820) * ((1 : F) + (-1 : F) * rho 1820) = ((0 : F))

def relationRow1820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1821) * ((1 : F) + (-1 : F) * rho 1821) = ((0 : F))

def relationRow1821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1822) * ((1 : F) + (-1 : F) * rho 1822) = ((0 : F))

def relationRow1822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1823) * ((1 : F) + (-1 : F) * rho 1823) = ((0 : F))

def relationRow1823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1824) * ((1 : F) + (-1 : F) * rho 1824) = ((0 : F))

def relationRow1824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1825) * ((1 : F) + (-1 : F) * rho 1825) = ((0 : F))

def relationRow1825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1826) * ((1 : F) + (-1 : F) * rho 1826) = ((0 : F))

def relationRow1826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1827) * ((1 : F) + (-1 : F) * rho 1827) = ((0 : F))

def relationRow1827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1828) * ((1 : F) + (-1 : F) * rho 1828) = ((0 : F))

def relationRow1828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1829) * ((1 : F) + (-1 : F) * rho 1829) = ((0 : F))

def relationRow1829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1830) * ((1 : F) + (-1 : F) * rho 1830) = ((0 : F))

def relationRow1830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1831) * ((1 : F) + (-1 : F) * rho 1831) = ((0 : F))

def relationRow1831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1832) * ((1 : F) + (-1 : F) * rho 1832) = ((0 : F))

def relationRow1832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1833) * ((1 : F) + (-1 : F) * rho 1833) = ((0 : F))

def relationRow1833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1834) * ((1 : F) + (-1 : F) * rho 1834) = ((0 : F))

def relationRow1834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1835) * ((1 : F) + (-1 : F) * rho 1835) = ((0 : F))

def relationRow1835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1836) * ((1 : F) + (-1 : F) * rho 1836) = ((0 : F))

def relationRow1836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1837) * ((1 : F) + (-1 : F) * rho 1837) = ((0 : F))

def relationRow1837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1838) * ((1 : F) + (-1 : F) * rho 1838) = ((0 : F))

def relationRow1838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1839) * ((1 : F) + (-1 : F) * rho 1839) = ((0 : F))

def relationRow1839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1840) * ((1 : F) + (-1 : F) * rho 1840) = ((0 : F))

def relationRow1840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1841) * ((1 : F) + (-1 : F) * rho 1841) = ((0 : F))

def relationRow1841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1842) * ((1 : F) + (-1 : F) * rho 1842) = ((0 : F))

def relationRow1842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1843) * ((1 : F) + (-1 : F) * rho 1843) = ((0 : F))

def relationRow1843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1844) * ((1 : F) + (-1 : F) * rho 1844) = ((0 : F))

def relationRow1844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1845) * ((1 : F) + (-1 : F) * rho 1845) = ((0 : F))

def relationRow1845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1846) * ((1 : F) + (-1 : F) * rho 1846) = ((0 : F))

def relationRow1846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1847) * ((1 : F) + (-1 : F) * rho 1847) = ((0 : F))

def relationRow1847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1848) * ((1 : F) + (-1 : F) * rho 1848) = ((0 : F))

def relationRow1848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1849) * ((1 : F) + (-1 : F) * rho 1849) = ((0 : F))

def relationRow1849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1850) * ((1 : F) + (-1 : F) * rho 1850) = ((0 : F))

def relationRow1850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1851) * ((1 : F) + (-1 : F) * rho 1851) = ((0 : F))

def relationRow1851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1852) * ((1 : F) + (-1 : F) * rho 1852) = ((0 : F))

def relationRow1852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1853) * ((1 : F) + (-1 : F) * rho 1853) = ((0 : F))

def relationRow1853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1854) * ((1 : F) + (-1 : F) * rho 1854) = ((0 : F))

def relationRow1854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1855) * ((1 : F) + (-1 : F) * rho 1855) = ((0 : F))

def relationRow1855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1856) * ((1 : F) + (-1 : F) * rho 1856) = ((0 : F))

def relationRow1856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1857) * ((1 : F) + (-1 : F) * rho 1857) = ((0 : F))

def relationRow1857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1858) * ((1 : F) + (-1 : F) * rho 1858) = ((0 : F))

def relationRow1858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1859) * ((1 : F) + (-1 : F) * rho 1859) = ((0 : F))

def relationRow1859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1860) * ((1 : F) + (-1 : F) * rho 1860) = ((0 : F))

def relationRow1860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1861) * ((1 : F) + (-1 : F) * rho 1861) = ((0 : F))

def relationRow1861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1862) * ((1 : F) + (-1 : F) * rho 1862) = ((0 : F))

def relationRow1862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1863) * ((1 : F) + (-1 : F) * rho 1863) = ((0 : F))

def relationRow1863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1864) * ((1 : F) + (-1 : F) * rho 1864) = ((0 : F))

def relationRow1864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1865) * ((1 : F) + (-1 : F) * rho 1865) = ((0 : F))

def relationRow1865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1866) * ((1 : F) + (-1 : F) * rho 1866) = ((0 : F))

def relationRow1866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1867) * ((1 : F) + (-1 : F) * rho 1867) = ((0 : F))

def relationRow1867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1868) * ((1 : F) + (-1 : F) * rho 1868) = ((0 : F))

def relationRow1868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1869) * ((1 : F) + (-1 : F) * rho 1869) = ((0 : F))

def relationRow1869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1870) * ((1 : F) + (-1 : F) * rho 1870) = ((0 : F))

def relationRow1870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1871) * ((1 : F) + (-1 : F) * rho 1871) = ((0 : F))

def relationRow1871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1872) * ((1 : F) + (-1 : F) * rho 1872) = ((0 : F))

def relationRow1872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1873) * ((1 : F) + (-1 : F) * rho 1873) = ((0 : F))

def relationRow1873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1874) * ((1 : F) + (-1 : F) * rho 1874) = ((0 : F))

def relationRow1874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1875) * ((1 : F) + (-1 : F) * rho 1875) = ((0 : F))

def relationRow1875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1876) * ((1 : F) + (-1 : F) * rho 1876) = ((0 : F))

def relationRow1876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1877) * ((1 : F) + (-1 : F) * rho 1877) = ((0 : F))

def relationRow1877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1878) * ((1 : F) + (-1 : F) * rho 1878) = ((0 : F))

def relationRow1878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1879) * ((1 : F) + (-1 : F) * rho 1879) = ((0 : F))

def relationRow1879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1880) * ((1 : F) + (-1 : F) * rho 1880) = ((0 : F))

def relationRow1880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1881) * ((1 : F) + (-1 : F) * rho 1881) = ((0 : F))

def relationRow1881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1882) * ((1 : F) + (-1 : F) * rho 1882) = ((0 : F))

def relationRow1882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1883) * ((1 : F) + (-1 : F) * rho 1883) = ((0 : F))

def relationRow1883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1884) * ((1 : F) + (-1 : F) * rho 1884) = ((0 : F))

def relationRow1884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1885) * ((1 : F) + (-1 : F) * rho 1885) = ((0 : F))

def relationRow1885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1886) * ((1 : F) + (-1 : F) * rho 1886) = ((0 : F))

def relationRow1886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1887) * ((1 : F) + (-1 : F) * rho 1887) = ((0 : F))

def relationRow1887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1888) * ((1 : F) + (-1 : F) * rho 1888) = ((0 : F))

def relationRow1888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1889) * ((1 : F) + (-1 : F) * rho 1889) = ((0 : F))

def relationRow1889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1890) * ((1 : F) + (-1 : F) * rho 1890) = ((0 : F))

def relationRow1890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1891) * ((1 : F) + (-1 : F) * rho 1891) = ((0 : F))

def relationRow1891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1892) * ((1 : F) + (-1 : F) * rho 1892) = ((0 : F))

def relationRow1892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1893) * ((1 : F) + (-1 : F) * rho 1893) = ((0 : F))

def relationRow1893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1894) * ((1 : F) + (-1 : F) * rho 1894) = ((0 : F))

def relationRow1894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1895) * ((1 : F) + (-1 : F) * rho 1895) = ((0 : F))

def relationRow1895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1896) * ((1 : F) + (-1 : F) * rho 1896) = ((0 : F))

def relationRow1896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1897) * ((1 : F) + (-1 : F) * rho 1897) = ((0 : F))

def relationRow1897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1898) * ((1 : F) + (-1 : F) * rho 1898) = ((0 : F))

def relationRow1898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1899) * ((1 : F) + (-1 : F) * rho 1899) = ((0 : F))

def relationRow1899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1900) * ((1 : F) + (-1 : F) * rho 1900) = ((0 : F))

def relationRow1900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1901) * ((1 : F) + (-1 : F) * rho 1901) = ((0 : F))

def relationRow1901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1902) * ((1 : F) + (-1 : F) * rho 1902) = ((0 : F))

def relationRow1902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1903) * ((1 : F) + (-1 : F) * rho 1903) = ((0 : F))

def relationRow1903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1904) * ((1 : F) + (-1 : F) * rho 1904) = ((0 : F))

def relationRow1904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1905) * ((1 : F) + (-1 : F) * rho 1905) = ((0 : F))

def relationRow1905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1906) * ((1 : F) + (-1 : F) * rho 1906) = ((0 : F))

def relationRow1906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1907) * ((1 : F) + (-1 : F) * rho 1907) = ((0 : F))

def relationRow1907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1908) * ((1 : F) + (-1 : F) * rho 1908) = ((0 : F))

def relationRow1908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1909) * ((1 : F) + (-1 : F) * rho 1909) = ((0 : F))

def relationRow1909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1910) * ((1 : F) + (-1 : F) * rho 1910) = ((0 : F))

def relationRow1910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1911) * ((1 : F) + (-1 : F) * rho 1911) = ((0 : F))

def relationRow1911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1912) * ((1 : F) + (-1 : F) * rho 1912) = ((0 : F))

def relationRow1912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1913) * ((1 : F) + (-1 : F) * rho 1913) = ((0 : F))

def relationRow1913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1914) * ((1 : F) + (-1 : F) * rho 1914) = ((0 : F))

def relationRow1914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1915) * ((1 : F) + (-1 : F) * rho 1915) = ((0 : F))

def relationRow1915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1916) * ((1 : F) + (-1 : F) * rho 1916) = ((0 : F))

def relationRow1916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1917) * ((1 : F) + (-1 : F) * rho 1917) = ((0 : F))

def relationRow1917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1918) * ((1 : F) + (-1 : F) * rho 1918) = ((0 : F))

def relationRow1918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1919) * ((1 : F) + (-1 : F) * rho 1919) = ((0 : F))

def relationRow1919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1920) * ((1 : F) + (-1 : F) * rho 1920) = ((0 : F))

def relationRow1920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1921) * ((1 : F) + (-1 : F) * rho 1921) = ((0 : F))

def relationRow1921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1922) * ((1 : F) + (-1 : F) * rho 1922) = ((0 : F))

def relationRow1922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1923) * ((1 : F) + (-1 : F) * rho 1923) = ((0 : F))

def relationRow1923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1924) * ((1 : F) + (-1 : F) * rho 1924) = ((0 : F))

def relationRow1924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1925) * ((1 : F) + (-1 : F) * rho 1925) = ((0 : F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
