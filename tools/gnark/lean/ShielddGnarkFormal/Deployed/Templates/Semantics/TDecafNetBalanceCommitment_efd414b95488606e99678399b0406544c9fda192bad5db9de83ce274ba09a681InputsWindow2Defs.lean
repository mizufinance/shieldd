import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681NbSupportBase
import ShielddGnarkFormal.Deployed.PrimeOrder
import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Window2ScalarMulBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.NbSupport.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.NbSupport.F

theorem order_cast_zero : (Order : F) = 0 := by
  exact Shieldd.GnarkFormal.ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq
    Order Order 0 (by decide) (by decide)

def scalarBits (rho : Nat → F) : List.Vector F 129 :=
  List.Vector.ofFn (fun i : Fin 129 => rho (1120 + i.val))

theorem scalarBits_get (rho : Nat → F) (i : Nat) (hi : i < 129) :
    (scalarBits rho)[i]! = rho (1120 + i) := by
  rw [getElem!_pos (scalarBits rho) i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [scalarBits, List.Vector.toList_ofFn, List.getElem_ofFn]

theorem rho_bit_of_map (rho : Nat → F) (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (i : Nat) (hi : i < 129) :
    rho (1120 + i) = Bool.toZMod bits[i]! := by
  rw [← scalarBits_get rho i hi, hbits]
  rw [getElem!_pos (bits.map Bool.toZMod) i (by simpa using hi),
    getElem!_pos bits i (by simpa using hi), List.Vector.getElem_map]

theorem scalarBits_get_of_map (rho : Nat → F)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (i : Nat) (hi : i < 129) :
    (scalarBits rho)[i]! = Bool.toZMod bits[i]! := by
  rw [scalarBits_get rho i hi]
  exact rho_bit_of_map rho bits hbits i hi

def base (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 598, rho 600⟩
def twice (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1252, rho 1253⟩
def triple (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1258, rho 1259⟩
def initial (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1261 + rho 1262, (1 : F) + rho 1264 + rho 1265⟩
def shiftOnce0 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1269, rho 1270⟩
def shifted0 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1274, rho 1275⟩
def digit0 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1277 + rho 1278, (1 : F) + rho 1280 + rho 1281⟩
def acc1 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1286, rho 1287⟩
def shiftOnce1 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1291, rho 1292⟩
def shifted1 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1296, rho 1297⟩
def digit1 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1299 + rho 1300, (1 : F) + rho 1302 + rho 1303⟩
def acc2 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1308, rho 1309⟩
def shiftOnce2 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1313, rho 1314⟩
def shifted2 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1318, rho 1319⟩
def digit2 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1321 + rho 1322, (1 : F) + rho 1324 + rho 1325⟩
def acc3 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1330, rho 1331⟩
def shiftOnce3 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1335, rho 1336⟩
def shifted3 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1340, rho 1341⟩
def digit3 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1343 + rho 1344, (1 : F) + rho 1346 + rho 1347⟩
def acc4 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1352, rho 1353⟩
def shiftOnce4 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1357, rho 1358⟩
def shifted4 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1362, rho 1363⟩
def digit4 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1365 + rho 1366, (1 : F) + rho 1368 + rho 1369⟩
def acc5 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1374, rho 1375⟩
def shiftOnce5 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1379, rho 1380⟩
def shifted5 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1384, rho 1385⟩
def digit5 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1387 + rho 1388, (1 : F) + rho 1390 + rho 1391⟩
def acc6 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1396, rho 1397⟩
def shiftOnce6 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1401, rho 1402⟩
def shifted6 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1406, rho 1407⟩
def digit6 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1409 + rho 1410, (1 : F) + rho 1412 + rho 1413⟩
def acc7 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1418, rho 1419⟩
def shiftOnce7 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1423, rho 1424⟩
def shifted7 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1428, rho 1429⟩
def digit7 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1431 + rho 1432, (1 : F) + rho 1434 + rho 1435⟩
def acc8 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1440, rho 1441⟩
def shiftOnce8 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1445, rho 1446⟩
def shifted8 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1450, rho 1451⟩
def digit8 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1453 + rho 1454, (1 : F) + rho 1456 + rho 1457⟩
def acc9 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1462, rho 1463⟩
def shiftOnce9 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1467, rho 1468⟩
def shifted9 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1472, rho 1473⟩
def digit9 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1475 + rho 1476, (1 : F) + rho 1478 + rho 1479⟩
def acc10 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1484, rho 1485⟩
def shiftOnce10 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1489, rho 1490⟩
def shifted10 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1494, rho 1495⟩
def digit10 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1497 + rho 1498, (1 : F) + rho 1500 + rho 1501⟩
def acc11 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1506, rho 1507⟩
def shiftOnce11 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1511, rho 1512⟩
def shifted11 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1516, rho 1517⟩
def digit11 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1519 + rho 1520, (1 : F) + rho 1522 + rho 1523⟩
def acc12 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1528, rho 1529⟩
def shiftOnce12 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1533, rho 1534⟩
def shifted12 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1538, rho 1539⟩
def digit12 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1541 + rho 1542, (1 : F) + rho 1544 + rho 1545⟩
def acc13 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1550, rho 1551⟩
def shiftOnce13 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1555, rho 1556⟩
def shifted13 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1560, rho 1561⟩
def digit13 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1563 + rho 1564, (1 : F) + rho 1566 + rho 1567⟩
def acc14 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1572, rho 1573⟩
def shiftOnce14 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1577, rho 1578⟩
def shifted14 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1582, rho 1583⟩
def digit14 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1585 + rho 1586, (1 : F) + rho 1588 + rho 1589⟩
def acc15 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1594, rho 1595⟩
def shiftOnce15 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1599, rho 1600⟩
def shifted15 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1604, rho 1605⟩
def digit15 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1607 + rho 1608, (1 : F) + rho 1610 + rho 1611⟩
def acc16 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1616, rho 1617⟩
def shiftOnce16 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1621, rho 1622⟩
def shifted16 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1626, rho 1627⟩
def digit16 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1629 + rho 1630, (1 : F) + rho 1632 + rho 1633⟩
def acc17 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1638, rho 1639⟩
def shiftOnce17 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1643, rho 1644⟩
def shifted17 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1648, rho 1649⟩
def digit17 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1651 + rho 1652, (1 : F) + rho 1654 + rho 1655⟩
def acc18 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1660, rho 1661⟩
def shiftOnce18 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1665, rho 1666⟩
def shifted18 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1670, rho 1671⟩
def digit18 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1673 + rho 1674, (1 : F) + rho 1676 + rho 1677⟩
def acc19 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1682, rho 1683⟩
def shiftOnce19 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1687, rho 1688⟩
def shifted19 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1692, rho 1693⟩
def digit19 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1695 + rho 1696, (1 : F) + rho 1698 + rho 1699⟩
def acc20 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1704, rho 1705⟩
def shiftOnce20 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1709, rho 1710⟩
def shifted20 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1714, rho 1715⟩
def digit20 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1717 + rho 1718, (1 : F) + rho 1720 + rho 1721⟩
def acc21 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1726, rho 1727⟩
def shiftOnce21 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1731, rho 1732⟩
def shifted21 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1736, rho 1737⟩
def digit21 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1739 + rho 1740, (1 : F) + rho 1742 + rho 1743⟩
def acc22 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1748, rho 1749⟩
def shiftOnce22 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1753, rho 1754⟩
def shifted22 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1758, rho 1759⟩
def digit22 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1761 + rho 1762, (1 : F) + rho 1764 + rho 1765⟩
def acc23 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1770, rho 1771⟩
def shiftOnce23 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1775, rho 1776⟩
def shifted23 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1780, rho 1781⟩
def digit23 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1783 + rho 1784, (1 : F) + rho 1786 + rho 1787⟩
def acc24 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1792, rho 1793⟩
def shiftOnce24 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1797, rho 1798⟩
def shifted24 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1802, rho 1803⟩
def digit24 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1805 + rho 1806, (1 : F) + rho 1808 + rho 1809⟩
def acc25 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1814, rho 1815⟩
def shiftOnce25 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1819, rho 1820⟩
def shifted25 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1824, rho 1825⟩
def digit25 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1827 + rho 1828, (1 : F) + rho 1830 + rho 1831⟩
def acc26 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1836, rho 1837⟩
def shiftOnce26 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1841, rho 1842⟩
def shifted26 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1846, rho 1847⟩
def digit26 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1849 + rho 1850, (1 : F) + rho 1852 + rho 1853⟩
def acc27 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1858, rho 1859⟩
def shiftOnce27 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1863, rho 1864⟩
def shifted27 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1868, rho 1869⟩
def digit27 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1871 + rho 1872, (1 : F) + rho 1874 + rho 1875⟩
def acc28 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1880, rho 1881⟩
def shiftOnce28 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1885, rho 1886⟩
def shifted28 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1890, rho 1891⟩
def digit28 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1893 + rho 1894, (1 : F) + rho 1896 + rho 1897⟩
def acc29 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1902, rho 1903⟩
def shiftOnce29 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1907, rho 1908⟩
def shifted29 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1912, rho 1913⟩
def digit29 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1915 + rho 1916, (1 : F) + rho 1918 + rho 1919⟩
def acc30 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1924, rho 1925⟩
def shiftOnce30 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1929, rho 1930⟩
def shifted30 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1934, rho 1935⟩
def digit30 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1937 + rho 1938, (1 : F) + rho 1940 + rho 1941⟩
def acc31 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1946, rho 1947⟩
def shiftOnce31 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1951, rho 1952⟩
def shifted31 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1956, rho 1957⟩
def digit31 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1959 + rho 1960, (1 : F) + rho 1962 + rho 1963⟩
def acc32 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1968, rho 1969⟩
def shiftOnce32 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1973, rho 1974⟩
def shifted32 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1978, rho 1979⟩
def digit32 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1981 + rho 1982, (1 : F) + rho 1984 + rho 1985⟩
def acc33 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1990, rho 1991⟩
def shiftOnce33 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1995, rho 1996⟩
def shifted33 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2000, rho 2001⟩
def digit33 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2003 + rho 2004, (1 : F) + rho 2006 + rho 2007⟩
def acc34 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2012, rho 2013⟩
def shiftOnce34 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2017, rho 2018⟩
def shifted34 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2022, rho 2023⟩
def digit34 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2025 + rho 2026, (1 : F) + rho 2028 + rho 2029⟩
def acc35 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2034, rho 2035⟩
def shiftOnce35 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2039, rho 2040⟩
def shifted35 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2044, rho 2045⟩
def digit35 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2047 + rho 2048, (1 : F) + rho 2050 + rho 2051⟩
def acc36 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2056, rho 2057⟩
def shiftOnce36 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2061, rho 2062⟩
def shifted36 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2066, rho 2067⟩
def digit36 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2069 + rho 2070, (1 : F) + rho 2072 + rho 2073⟩
def acc37 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2078, rho 2079⟩
def shiftOnce37 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2083, rho 2084⟩
def shifted37 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2088, rho 2089⟩
def digit37 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2091 + rho 2092, (1 : F) + rho 2094 + rho 2095⟩
def acc38 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2100, rho 2101⟩
def shiftOnce38 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2105, rho 2106⟩
def shifted38 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2110, rho 2111⟩
def digit38 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2113 + rho 2114, (1 : F) + rho 2116 + rho 2117⟩
def acc39 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2122, rho 2123⟩
def shiftOnce39 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2127, rho 2128⟩
def shifted39 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2132, rho 2133⟩
def digit39 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2135 + rho 2136, (1 : F) + rho 2138 + rho 2139⟩
def acc40 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2144, rho 2145⟩
def shiftOnce40 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2149, rho 2150⟩
def shifted40 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2154, rho 2155⟩
def digit40 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2157 + rho 2158, (1 : F) + rho 2160 + rho 2161⟩
def acc41 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2166, rho 2167⟩
def shiftOnce41 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2171, rho 2172⟩
def shifted41 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2176, rho 2177⟩
def digit41 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2179 + rho 2180, (1 : F) + rho 2182 + rho 2183⟩
def acc42 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2188, rho 2189⟩
def shiftOnce42 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2193, rho 2194⟩
def shifted42 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2198, rho 2199⟩
def digit42 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2201 + rho 2202, (1 : F) + rho 2204 + rho 2205⟩
def acc43 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2210, rho 2211⟩
def shiftOnce43 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2215, rho 2216⟩
def shifted43 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2220, rho 2221⟩
def digit43 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2223 + rho 2224, (1 : F) + rho 2226 + rho 2227⟩
def acc44 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2232, rho 2233⟩
def shiftOnce44 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2237, rho 2238⟩
def shifted44 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2242, rho 2243⟩
def digit44 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2245 + rho 2246, (1 : F) + rho 2248 + rho 2249⟩
def acc45 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2254, rho 2255⟩
def shiftOnce45 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2259, rho 2260⟩
def shifted45 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2264, rho 2265⟩
def digit45 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2267 + rho 2268, (1 : F) + rho 2270 + rho 2271⟩
def acc46 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2276, rho 2277⟩
def shiftOnce46 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2281, rho 2282⟩
def shifted46 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2286, rho 2287⟩
def digit46 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2289 + rho 2290, (1 : F) + rho 2292 + rho 2293⟩
def acc47 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2298, rho 2299⟩
def shiftOnce47 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2303, rho 2304⟩
def shifted47 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2308, rho 2309⟩
def digit47 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2311 + rho 2312, (1 : F) + rho 2314 + rho 2315⟩
def acc48 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2320, rho 2321⟩
def shiftOnce48 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2325, rho 2326⟩
def shifted48 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2330, rho 2331⟩
def digit48 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2333 + rho 2334, (1 : F) + rho 2336 + rho 2337⟩
def acc49 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2342, rho 2343⟩
def shiftOnce49 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2347, rho 2348⟩
def shifted49 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2352, rho 2353⟩
def digit49 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2355 + rho 2356, (1 : F) + rho 2358 + rho 2359⟩
def acc50 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2364, rho 2365⟩
def shiftOnce50 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2369, rho 2370⟩
def shifted50 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2374, rho 2375⟩
def digit50 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2377 + rho 2378, (1 : F) + rho 2380 + rho 2381⟩
def acc51 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2386, rho 2387⟩
def shiftOnce51 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2391, rho 2392⟩
def shifted51 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2396, rho 2397⟩
def digit51 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2399 + rho 2400, (1 : F) + rho 2402 + rho 2403⟩
def acc52 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2408, rho 2409⟩
def shiftOnce52 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2413, rho 2414⟩
def shifted52 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2418, rho 2419⟩
def digit52 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2421 + rho 2422, (1 : F) + rho 2424 + rho 2425⟩
def acc53 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2430, rho 2431⟩
def shiftOnce53 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2435, rho 2436⟩
def shifted53 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2440, rho 2441⟩
def digit53 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2443 + rho 2444, (1 : F) + rho 2446 + rho 2447⟩
def acc54 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2452, rho 2453⟩
def shiftOnce54 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2457, rho 2458⟩
def shifted54 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2462, rho 2463⟩
def digit54 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2465 + rho 2466, (1 : F) + rho 2468 + rho 2469⟩
def acc55 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2474, rho 2475⟩
def shiftOnce55 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2479, rho 2480⟩
def shifted55 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2484, rho 2485⟩
def digit55 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2487 + rho 2488, (1 : F) + rho 2490 + rho 2491⟩
def acc56 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2496, rho 2497⟩
def shiftOnce56 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2501, rho 2502⟩
def shifted56 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2506, rho 2507⟩
def digit56 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2509 + rho 2510, (1 : F) + rho 2512 + rho 2513⟩
def acc57 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2518, rho 2519⟩
def shiftOnce57 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2523, rho 2524⟩
def shifted57 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2528, rho 2529⟩
def digit57 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2531 + rho 2532, (1 : F) + rho 2534 + rho 2535⟩
def acc58 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2540, rho 2541⟩
def shiftOnce58 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2545, rho 2546⟩
def shifted58 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2550, rho 2551⟩
def digit58 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2553 + rho 2554, (1 : F) + rho 2556 + rho 2557⟩
def acc59 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2562, rho 2563⟩
def shiftOnce59 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2567, rho 2568⟩
def shifted59 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2572, rho 2573⟩
def digit59 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2575 + rho 2576, (1 : F) + rho 2578 + rho 2579⟩
def acc60 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2584, rho 2585⟩
def shiftOnce60 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2589, rho 2590⟩
def shifted60 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2594, rho 2595⟩
def digit60 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2597 + rho 2598, (1 : F) + rho 2600 + rho 2601⟩
def acc61 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2606, rho 2607⟩
def shiftOnce61 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2611, rho 2612⟩
def shifted61 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2616, rho 2617⟩
def digit61 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2619 + rho 2620, (1 : F) + rho 2622 + rho 2623⟩
def acc62 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2628, rho 2629⟩
def shiftOnce62 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2633, rho 2634⟩
def shifted62 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2638, rho 2639⟩
def digit62 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2641 + rho 2642, (1 : F) + rho 2644 + rho 2645⟩
def acc63 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2650, rho 2651⟩
def acc0 (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 1261 + rho 1262, (1 : F) + rho 1264 + rho 1265⟩
def tailShift (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2655, rho 2656⟩
def tailSum (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2661, rho 2662⟩
def output (rho : Nat → F) : EdwardsBridge.Point := ⟨rho 2655 + rho 2663, rho 2656 + rho 2664⟩

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport
