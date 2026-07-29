import canonicalLaneMathlib.AdmissibleClass

/-!
# Plate Driving Forces and Rheology Package
-/

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure PlateDrivingForcesRheologyPackage where
  ridgePushForce : Type u
  slabPullForce : Type v
  mantleDragForce : Type w
  collisionalResistance : Type x
  lithosphericStrength : Prop
  ductileDeformationLaw : Prop
  brittleFailureCriterion : Prop

structure PlateDrivingForcesRheologyEvidence (P : PlateDrivingForcesRheologyPackage) where
  lithosphericStrengthClosed : P.lithosphericStrength
  ductileDeformationLawClosed : P.ductileDeformationLaw
  brittleFailureCriterionClosed : P.brittleFailureCriterion

def PlateDrivingForcesRheologyClosed (P : PlateDrivingForcesRheologyPackage) : Prop :=
  P.lithosphericStrength ∧ P.ductileDeformationLaw ∧ P.brittleFailureCriterion

theorem plate_driving_forces_rheology_closed_from_evidence (P : PlateDrivingForcesRheologyPackage)
    (E : PlateDrivingForcesRheologyEvidence P) : PlateDrivingForcesRheologyClosed P := by
  exact And.intro E.lithosphericStrengthClosed
    (And.intro E.ductileDeformationLawClosed E.brittleFailureCriterionClosed)

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse