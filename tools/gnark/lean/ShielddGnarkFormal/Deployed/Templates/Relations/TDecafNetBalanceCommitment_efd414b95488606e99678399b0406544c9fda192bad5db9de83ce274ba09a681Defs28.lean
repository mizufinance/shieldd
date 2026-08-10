import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs27

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow1829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1648 + (1 : F) * rho 1649) * ((1 : F) + (1 : F) * rho 1651 + (1 : F) * rho 1652 + (1 : F) * rho 1654 + (1 : F) * rho 1655) = ((1 : F) * rho 1656)

def relationRow1830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1648) * ((1 : F) + (1 : F) * rho 1654 + (1 : F) * rho 1655) = ((1 : F) * rho 1657)

def relationRow1831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1649) * ((1 : F) * rho 1651 + (1 : F) * rho 1652) = ((1 : F) * rho 1658)

def relationRow1832 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 1657) * ((1 : F) * rho 1658) = ((1 : F) * rho 1659)

def relationRow1833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1660) * ((1 : F) + (1 : F) * rho 1659) = ((1 : F) * rho 1657 + (1 : F) * rho 1658)

def relationRow1834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1661) * ((1 : F) + (-1 : F) * rho 1659) = ((1 : F) * rho 1656 + (-1 : F) * rho 1657 + (-1 : F) * rho 1658)

def relationRow1835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1660) * ((1 : F) * rho 1661) = ((1 : F) * rho 1662)

def relationRow1836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1660) * ((1 : F) * rho 1660) = ((1 : F) * rho 1663)

def relationRow1837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1661) * ((1 : F) * rho 1661) = ((1 : F) * rho 1664)

def relationRow1838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1665) * ((-1 : F) * rho 1663 + (1 : F) * rho 1664) = ((2 : F) * rho 1662)

def relationRow1839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1666) * ((2 : F) + (1 : F) * rho 1663 + (-1 : F) * rho 1664) = ((1 : F) * rho 1663 + (1 : F) * rho 1664)

def relationRow1840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1665) * ((1 : F) * rho 1666) = ((1 : F) * rho 1667)

def relationRow1841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1665) * ((1 : F) * rho 1665) = ((1 : F) * rho 1668)

def relationRow1842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1666) * ((1 : F) * rho 1666) = ((1 : F) * rho 1669)

def relationRow1843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1670) * ((-1 : F) * rho 1668 + (1 : F) * rho 1669) = ((2 : F) * rho 1667)

def relationRow1844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1671) * ((2 : F) + (1 : F) * rho 1668 + (-1 : F) * rho 1669) = ((1 : F) * rho 1668 + (1 : F) * rho 1669)

def relationRow1845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1209) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 1672)

def relationRow1846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1210) * ((1 : F) * rho 1252 + (1 : F) * rho 1672) = ((1 : F) * rho 1673)

def relationRow1847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1209) = ((1 : F) * rho 1674)

def relationRow1848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1209) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 1675)

def relationRow1849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1210) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 1675) = ((1 : F) * rho 1676)

def relationRow1850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1209) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 1677)

def relationRow1851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1670 + (1 : F) * rho 1671) * ((1 : F) + (1 : F) * rho 1673 + (1 : F) * rho 1674 + (1 : F) * rho 1676 + (1 : F) * rho 1677) = ((1 : F) * rho 1678)

def relationRow1852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1670) * ((1 : F) + (1 : F) * rho 1676 + (1 : F) * rho 1677) = ((1 : F) * rho 1679)

def relationRow1853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1671) * ((1 : F) * rho 1673 + (1 : F) * rho 1674) = ((1 : F) * rho 1680)

def relationRow1854 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 1679) * ((1 : F) * rho 1680) = ((1 : F) * rho 1681)

def relationRow1855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1682) * ((1 : F) + (1 : F) * rho 1681) = ((1 : F) * rho 1679 + (1 : F) * rho 1680)

def relationRow1856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1683) * ((1 : F) + (-1 : F) * rho 1681) = ((1 : F) * rho 1678 + (-1 : F) * rho 1679 + (-1 : F) * rho 1680)

def relationRow1857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1682) * ((1 : F) * rho 1683) = ((1 : F) * rho 1684)

def relationRow1858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1682) * ((1 : F) * rho 1682) = ((1 : F) * rho 1685)

def relationRow1859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1683) * ((1 : F) * rho 1683) = ((1 : F) * rho 1686)

def relationRow1860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1687) * ((-1 : F) * rho 1685 + (1 : F) * rho 1686) = ((2 : F) * rho 1684)

def relationRow1861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1688) * ((2 : F) + (1 : F) * rho 1685 + (-1 : F) * rho 1686) = ((1 : F) * rho 1685 + (1 : F) * rho 1686)

def relationRow1862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1687) * ((1 : F) * rho 1688) = ((1 : F) * rho 1689)

def relationRow1863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1687) * ((1 : F) * rho 1687) = ((1 : F) * rho 1690)

def relationRow1864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1688) * ((1 : F) * rho 1688) = ((1 : F) * rho 1691)

def relationRow1865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1692) * ((-1 : F) * rho 1690 + (1 : F) * rho 1691) = ((2 : F) * rho 1689)

def relationRow1866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1693) * ((2 : F) + (1 : F) * rho 1690 + (-1 : F) * rho 1691) = ((1 : F) * rho 1690 + (1 : F) * rho 1691)

def relationRow1867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1207) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 1694)

def relationRow1868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1208) * ((1 : F) * rho 1252 + (1 : F) * rho 1694) = ((1 : F) * rho 1695)

def relationRow1869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1207) = ((1 : F) * rho 1696)

def relationRow1870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1207) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 1697)

def relationRow1871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1208) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 1697) = ((1 : F) * rho 1698)

def relationRow1872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1207) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 1699)

def relationRow1873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1692 + (1 : F) * rho 1693) * ((1 : F) + (1 : F) * rho 1695 + (1 : F) * rho 1696 + (1 : F) * rho 1698 + (1 : F) * rho 1699) = ((1 : F) * rho 1700)

def relationRow1874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1692) * ((1 : F) + (1 : F) * rho 1698 + (1 : F) * rho 1699) = ((1 : F) * rho 1701)

def relationRow1875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1693) * ((1 : F) * rho 1695 + (1 : F) * rho 1696) = ((1 : F) * rho 1702)

def relationRow1876 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 1701) * ((1 : F) * rho 1702) = ((1 : F) * rho 1703)

def relationRow1877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1704) * ((1 : F) + (1 : F) * rho 1703) = ((1 : F) * rho 1701 + (1 : F) * rho 1702)

def relationRow1878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1705) * ((1 : F) + (-1 : F) * rho 1703) = ((1 : F) * rho 1700 + (-1 : F) * rho 1701 + (-1 : F) * rho 1702)

def relationRow1879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1704) * ((1 : F) * rho 1705) = ((1 : F) * rho 1706)

def relationRow1880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1704) * ((1 : F) * rho 1704) = ((1 : F) * rho 1707)

def relationRow1881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1705) * ((1 : F) * rho 1705) = ((1 : F) * rho 1708)

def relationRow1882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1709) * ((-1 : F) * rho 1707 + (1 : F) * rho 1708) = ((2 : F) * rho 1706)

def relationRow1883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1710) * ((2 : F) + (1 : F) * rho 1707 + (-1 : F) * rho 1708) = ((1 : F) * rho 1707 + (1 : F) * rho 1708)

def relationRow1884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1709) * ((1 : F) * rho 1710) = ((1 : F) * rho 1711)

def relationRow1885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1709) * ((1 : F) * rho 1709) = ((1 : F) * rho 1712)

def relationRow1886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1710) * ((1 : F) * rho 1710) = ((1 : F) * rho 1713)

def relationRow1887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1714) * ((-1 : F) * rho 1712 + (1 : F) * rho 1713) = ((2 : F) * rho 1711)

def relationRow1888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1715) * ((2 : F) + (1 : F) * rho 1712 + (-1 : F) * rho 1713) = ((1 : F) * rho 1712 + (1 : F) * rho 1713)

def relationRow1889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1205) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 1716)

def relationRow1890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1206) * ((1 : F) * rho 1252 + (1 : F) * rho 1716) = ((1 : F) * rho 1717)

def relationRow1891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1205) = ((1 : F) * rho 1718)

def relationRow1892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1205) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 1719)

def relationRow1893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1206) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 1719) = ((1 : F) * rho 1720)

def relationRow1894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1205) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 1721)

def relationRow1895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1714 + (1 : F) * rho 1715) * ((1 : F) + (1 : F) * rho 1717 + (1 : F) * rho 1718 + (1 : F) * rho 1720 + (1 : F) * rho 1721) = ((1 : F) * rho 1722)

def relationRow1896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1714) * ((1 : F) + (1 : F) * rho 1720 + (1 : F) * rho 1721) = ((1 : F) * rho 1723)

def relationRow1897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1715) * ((1 : F) * rho 1717 + (1 : F) * rho 1718) = ((1 : F) * rho 1724)

def relationRow1898 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 1723) * ((1 : F) * rho 1724) = ((1 : F) * rho 1725)

def relationRow1899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1726) * ((1 : F) + (1 : F) * rho 1725) = ((1 : F) * rho 1723 + (1 : F) * rho 1724)

def relationRow1900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1727) * ((1 : F) + (-1 : F) * rho 1725) = ((1 : F) * rho 1722 + (-1 : F) * rho 1723 + (-1 : F) * rho 1724)

def relationRow1901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1726) * ((1 : F) * rho 1727) = ((1 : F) * rho 1728)

def relationRow1902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1726) * ((1 : F) * rho 1726) = ((1 : F) * rho 1729)

def relationRow1903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1727) * ((1 : F) * rho 1727) = ((1 : F) * rho 1730)

def relationRow1904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1731) * ((-1 : F) * rho 1729 + (1 : F) * rho 1730) = ((2 : F) * rho 1728)

def relationRow1905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1732) * ((2 : F) + (1 : F) * rho 1729 + (-1 : F) * rho 1730) = ((1 : F) * rho 1729 + (1 : F) * rho 1730)

def relationRow1906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1731) * ((1 : F) * rho 1732) = ((1 : F) * rho 1733)

def relationRow1907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1731) * ((1 : F) * rho 1731) = ((1 : F) * rho 1734)

def relationRow1908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1732) * ((1 : F) * rho 1732) = ((1 : F) * rho 1735)

def relationRow1909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1736) * ((-1 : F) * rho 1734 + (1 : F) * rho 1735) = ((2 : F) * rho 1733)

def relationRow1910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1737) * ((2 : F) + (1 : F) * rho 1734 + (-1 : F) * rho 1735) = ((1 : F) * rho 1734 + (1 : F) * rho 1735)

def relationRow1911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1203) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 1738)

def relationRow1912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1204) * ((1 : F) * rho 1252 + (1 : F) * rho 1738) = ((1 : F) * rho 1739)

def relationRow1913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1203) = ((1 : F) * rho 1740)

def relationRow1914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1203) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 1741)

def relationRow1915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1204) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 1741) = ((1 : F) * rho 1742)

def relationRow1916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1203) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 1743)

def relationRow1917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1736 + (1 : F) * rho 1737) * ((1 : F) + (1 : F) * rho 1739 + (1 : F) * rho 1740 + (1 : F) * rho 1742 + (1 : F) * rho 1743) = ((1 : F) * rho 1744)

def relationRow1918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1736) * ((1 : F) + (1 : F) * rho 1742 + (1 : F) * rho 1743) = ((1 : F) * rho 1745)

def relationRow1919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1737) * ((1 : F) * rho 1739 + (1 : F) * rho 1740) = ((1 : F) * rho 1746)

def relationRow1920 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 1745) * ((1 : F) * rho 1746) = ((1 : F) * rho 1747)

def relationRow1921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1748) * ((1 : F) + (1 : F) * rho 1747) = ((1 : F) * rho 1745 + (1 : F) * rho 1746)

def relationRow1922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1749) * ((1 : F) + (-1 : F) * rho 1747) = ((1 : F) * rho 1744 + (-1 : F) * rho 1745 + (-1 : F) * rho 1746)

def relationRow1923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1748) * ((1 : F) * rho 1749) = ((1 : F) * rho 1750)

def relationRow1924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1748) * ((1 : F) * rho 1748) = ((1 : F) * rho 1751)

def relationRow1925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1749) * ((1 : F) * rho 1749) = ((1 : F) * rho 1752)

def relationRow1926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1753) * ((-1 : F) * rho 1751 + (1 : F) * rho 1752) = ((2 : F) * rho 1750)

def relationRow1927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1754) * ((2 : F) + (1 : F) * rho 1751 + (-1 : F) * rho 1752) = ((1 : F) * rho 1751 + (1 : F) * rho 1752)

def relationRow1928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1753) * ((1 : F) * rho 1754) = ((1 : F) * rho 1755)

def relationRow1929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1753) * ((1 : F) * rho 1753) = ((1 : F) * rho 1756)

def relationRow1930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1754) * ((1 : F) * rho 1754) = ((1 : F) * rho 1757)

def relationRow1931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1758) * ((-1 : F) * rho 1756 + (1 : F) * rho 1757) = ((2 : F) * rho 1755)

def relationRow1932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1759) * ((2 : F) + (1 : F) * rho 1756 + (-1 : F) * rho 1757) = ((1 : F) * rho 1756 + (1 : F) * rho 1757)

def relationRow1933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1201) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 1760)

def relationRow1934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1202) * ((1 : F) * rho 1252 + (1 : F) * rho 1760) = ((1 : F) * rho 1761)

def relationRow1935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1201) = ((1 : F) * rho 1762)

def relationRow1936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1201) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 1763)

def relationRow1937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1202) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 1763) = ((1 : F) * rho 1764)

def relationRow1938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1201) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 1765)

def relationRow1939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1758 + (1 : F) * rho 1759) * ((1 : F) + (1 : F) * rho 1761 + (1 : F) * rho 1762 + (1 : F) * rho 1764 + (1 : F) * rho 1765) = ((1 : F) * rho 1766)

def relationRow1940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1758) * ((1 : F) + (1 : F) * rho 1764 + (1 : F) * rho 1765) = ((1 : F) * rho 1767)

def relationRow1941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1759) * ((1 : F) * rho 1761 + (1 : F) * rho 1762) = ((1 : F) * rho 1768)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
