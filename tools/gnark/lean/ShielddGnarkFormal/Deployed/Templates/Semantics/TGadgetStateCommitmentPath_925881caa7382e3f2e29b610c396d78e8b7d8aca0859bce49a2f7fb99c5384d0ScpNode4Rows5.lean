import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node4_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1999 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1999 rho)
    (r2000 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2000 rho)
    (r2001 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2001 rho)
    (r2002 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2002 rho)
    (r2003 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2003 rho)
    (tail : next (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) (rho 1876) (rho 1881) (rho 1886) (rho 1891) (rho 1896) (rho 1901) (rho 1906) (rho 1911) (rho 1916) (rho 1921) (rho 1926) (rho 1931) (rho 1936) (rho 1941) (rho 1946) (rho 1951) (rho 1956) (rho 1961) (rho 1966) (rho 1971) (rho 1976) (rho 1981) (rho 1986) (rho 1991) (rho 1996) (rho 2001) (rho 2006)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg50 (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) (rho 1876) (rho 1881) (rho 1886) (rho 1891) (rho 1896) (rho 1901) (rho 1906) (rho 1911) (rho 1916) (rho 1921) (rho 1926) (rho 1931) (rho 1936) (rho 1941) (rho 1946) (rho 1951) (rho 1956) (rho 1961) (rho 1966) (rho 1971) (rho 1976) (rho 1981) (rho 1986) (rho 1991) (rho 1996) (rho 2001) next := by
  exact ⟨rho 2002, rho 2003, rho 2004, rho 2005, rho 2006, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1999 at r1999; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc44, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc44Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc44Part1] at r1999; linear_combination r1999), r2000, r2001, r2002, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2003 at r2003; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc44, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc44Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc44Part1] at r2003; linear_combination r2003), tail⟩

theorem template_scp_node4_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2004 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2004 rho)
    (r2005 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2005 rho)
    (r2006 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2006 rho)
    (r2007 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2007 rho)
    (r2008 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2008 rho)
    (tail : next (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) (rho 1876) (rho 1881) (rho 1886) (rho 1891) (rho 1896) (rho 1901) (rho 1906) (rho 1911) (rho 1916) (rho 1921) (rho 1926) (rho 1931) (rho 1936) (rho 1941) (rho 1946) (rho 1951) (rho 1956) (rho 1961) (rho 1966) (rho 1971) (rho 1976) (rho 1981) (rho 1986) (rho 1991) (rho 1996) (rho 2001) (rho 2006) (rho 2011)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg51 (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) (rho 1876) (rho 1881) (rho 1886) (rho 1891) (rho 1896) (rho 1901) (rho 1906) (rho 1911) (rho 1916) (rho 1921) (rho 1926) (rho 1931) (rho 1936) (rho 1941) (rho 1946) (rho 1951) (rho 1956) (rho 1961) (rho 1966) (rho 1971) (rho 1976) (rho 1981) (rho 1986) (rho 1991) (rho 1996) (rho 2001) (rho 2006) next := by
  exact ⟨rho 2007, rho 2008, rho 2009, rho 2010, rho 2011, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2004 at r2004; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc45, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc45Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc45Part1] at r2004; linear_combination r2004), r2005, r2006, r2007, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2008 at r2008; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc45, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc45Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc45Part1] at r2008; linear_combination r2008), tail⟩

theorem template_scp_node4_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2009 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2009 rho)
    (r2010 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2010 rho)
    (r2011 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2011 rho)
    (r2012 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2012 rho)
    (r2013 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2013 rho)
    (tail : next (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) (rho 1876) (rho 1881) (rho 1886) (rho 1891) (rho 1896) (rho 1901) (rho 1906) (rho 1911) (rho 1916) (rho 1921) (rho 1926) (rho 1931) (rho 1936) (rho 1941) (rho 1946) (rho 1951) (rho 1956) (rho 1961) (rho 1966) (rho 1971) (rho 1976) (rho 1981) (rho 1986) (rho 1991) (rho 1996) (rho 2001) (rho 2006) (rho 2011) (rho 2016)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg52 (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) (rho 1876) (rho 1881) (rho 1886) (rho 1891) (rho 1896) (rho 1901) (rho 1906) (rho 1911) (rho 1916) (rho 1921) (rho 1926) (rho 1931) (rho 1936) (rho 1941) (rho 1946) (rho 1951) (rho 1956) (rho 1961) (rho 1966) (rho 1971) (rho 1976) (rho 1981) (rho 1986) (rho 1991) (rho 1996) (rho 2001) (rho 2006) (rho 2011) next := by
  exact ⟨rho 2012, rho 2013, rho 2014, rho 2015, rho 2016, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2009 at r2009; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc46, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc46Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc46Part1] at r2009; linear_combination r2009), r2010, r2011, r2012, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2013 at r2013; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc46, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc46Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc46Part1] at r2013; linear_combination r2013), tail⟩

theorem template_scp_node4_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2014 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2014 rho)
    (r2015 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2015 rho)
    (r2016 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2016 rho)
    (r2017 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2017 rho)
    (r2018 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2018 rho)
    (tail : next (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) (rho 1876) (rho 1881) (rho 1886) (rho 1891) (rho 1896) (rho 1901) (rho 1906) (rho 1911) (rho 1916) (rho 1921) (rho 1926) (rho 1931) (rho 1936) (rho 1941) (rho 1946) (rho 1951) (rho 1956) (rho 1961) (rho 1966) (rho 1971) (rho 1976) (rho 1981) (rho 1986) (rho 1991) (rho 1996) (rho 2001) (rho 2006) (rho 2011) (rho 2016) (rho 2021)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg53 (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) (rho 1876) (rho 1881) (rho 1886) (rho 1891) (rho 1896) (rho 1901) (rho 1906) (rho 1911) (rho 1916) (rho 1921) (rho 1926) (rho 1931) (rho 1936) (rho 1941) (rho 1946) (rho 1951) (rho 1956) (rho 1961) (rho 1966) (rho 1971) (rho 1976) (rho 1981) (rho 1986) (rho 1991) (rho 1996) (rho 2001) (rho 2006) (rho 2011) (rho 2016) next := by
  exact ⟨rho 2017, rho 2018, rho 2019, rho 2020, rho 2021, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2014 at r2014; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc47, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc47Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc47Part1] at r2014; linear_combination r2014), r2015, r2016, r2017, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2018 at r2018; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc47, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc47Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc47Part1] at r2018; linear_combination r2018), tail⟩

theorem template_scp_node4_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2019 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2019 rho)
    (r2020 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2020 rho)
    (r2021 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2021 rho)
    (r2022 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2022 rho)
    (r2023 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2023 rho)
    (tail : next (rho 2006) (rho 2011) (rho 2016) (rho 2021) (rho 2026)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg54 (rho 1826) (rho 1831) (rho 1836) (rho 1841) (rho 1846) (rho 1851) (rho 1856) (rho 1861) (rho 1866) (rho 1871) (rho 1876) (rho 1881) (rho 1886) (rho 1891) (rho 1896) (rho 1901) (rho 1906) (rho 1911) (rho 1916) (rho 1921) (rho 1926) (rho 1931) (rho 1936) (rho 1941) (rho 1946) (rho 1951) (rho 1956) (rho 1961) (rho 1966) (rho 1971) (rho 1976) (rho 1981) (rho 1986) (rho 1991) (rho 1996) (rho 2001) (rho 2006) (rho 2011) (rho 2016) (rho 2021) next := by
  exact ⟨rho 2022, rho 2023, rho 2024, rho 2025, rho 2026, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2019 at r2019; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc48, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc48Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc48Part1] at r2019; linear_combination r2019), r2020, r2021, r2022, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2023 at r2023; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc48, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc48Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc48Part1] at r2023; linear_combination r2023), tail⟩

theorem template_scp_node4_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r2024 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2024 rho)
    (r2025 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2025 rho)
    (r2026 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2026 rho)
    (r2027 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2027 rho)
    (r2028 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2028 rho)
    (tail : next (rho 2006) (rho 2011) (rho 2016) (rho 2021) (rho 2026) (rho 2031)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg55 (rho 2006) (rho 2011) (rho 2016) (rho 2021) (rho 2026) next := by
  exact ⟨rho 2027, rho 2028, rho 2029, rho 2030, rho 2031, r2024, r2025, r2026, r2027, r2028, tail⟩

theorem template_scp_node4_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2029 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2029 rho)
    (r2030 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2030 rho)
    (r2031 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2031 rho)
    (r2032 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2032 rho)
    (r2033 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2033 rho)
    (tail : next (rho 2006) (rho 2011) (rho 2016) (rho 2021) (rho 2026) (rho 2031) (rho 2036)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg56 (rho 2006) (rho 2011) (rho 2016) (rho 2021) (rho 2026) (rho 2031) next := by
  exact ⟨rho 2032, rho 2033, rho 2034, rho 2035, rho 2036, r2029, r2030, r2031, r2032, r2033, tail⟩

theorem template_scp_node4_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2034 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2034 rho)
    (r2035 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2035 rho)
    (r2036 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2036 rho)
    (r2037 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2037 rho)
    (r2038 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2038 rho)
    (tail : next (rho 2006) (rho 2011) (rho 2016) (rho 2021) (rho 2026) (rho 2031) (rho 2036) (rho 2041)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg57 (rho 2006) (rho 2011) (rho 2016) (rho 2021) (rho 2026) (rho 2031) (rho 2036) next := by
  exact ⟨rho 2037, rho 2038, rho 2039, rho 2040, rho 2041, r2034, r2035, r2036, r2037, r2038, tail⟩

theorem template_scp_node4_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2039 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2039 rho)
    (r2040 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2040 rho)
    (r2041 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2041 rho)
    (r2042 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2042 rho)
    (r2043 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2043 rho)
    (tail : next (rho 2006) (rho 2011) (rho 2016) (rho 2021) (rho 2026) (rho 2031) (rho 2036) (rho 2041) (rho 2046)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg58 (rho 2006) (rho 2011) (rho 2016) (rho 2021) (rho 2026) (rho 2031) (rho 2036) (rho 2041) next := by
  exact ⟨rho 2042, rho 2043, rho 2044, rho 2045, rho 2046, r2039, r2040, r2041, r2042, r2043, tail⟩

theorem template_scp_node4_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2044 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2044 rho)
    (r2045 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2045 rho)
    (r2046 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2046 rho)
    (r2047 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2047 rho)
    (r2048 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2048 rho)
    (tail : next (rho 2031) (rho 2036) (rho 2041) (rho 2046) (rho 2051)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg59 (rho 2006) (rho 2011) (rho 2016) (rho 2021) (rho 2026) (rho 2031) (rho 2036) (rho 2041) (rho 2046) next := by
  exact ⟨rho 2047, rho 2048, rho 2049, rho 2050, rho 2051, r2044, r2045, r2046, r2047, r2048, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
