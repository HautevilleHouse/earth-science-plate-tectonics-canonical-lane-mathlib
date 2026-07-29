import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure IslandArcFormationPackage where
  oceanicPlateSubduction : Prop
  mantleMelting : Prop
  magmaGeneration : Prop
  arcCrustGrowth : Prop

structure IslandArcFormationEvidence (I : IslandArcFormationPackage) where
  oceanicPlateSubductionClosed : I.oceanicPlateSubduction
  mantleMeltingClosed : I.mantleMelting
  magmaGenerationClosed : I.magmaGeneration
  arcCrustGrowthClosed : I.arcCrustGrowth

def IslandArcFormationClosed (I : IslandArcFormationPackage) : Prop :=
  I.oceanicPlateSubduction ∧ I.mantleMelting ∧ I.magmaGeneration ∧ I.arcCrustGrowth

theorem island_arc_formation_closed_from_evidence (I : IslandArcFormationPackage) (E : IslandArcFormationEvidence I) : IslandArcFormationClosed I := by
  exact And.intro E.oceanicPlateSubductionClosed (And.intro E.mantleMeltingClosed (And.intro E.magmaGenerationClosed E.arcCrustGrowthClosed))

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse