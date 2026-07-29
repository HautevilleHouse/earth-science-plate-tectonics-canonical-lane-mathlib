import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthSciencePlateTectonicsCanonicalLaneLean.PlateMotionKinematics

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure SeafloorSpreadingPackage {P : PlateMotionKinematicsPackage} where
  midOceanRidge : Type
  magneticAnomalies : Type
  spreadingRate : Type
  symmetricSpreading : Prop
  magneticStripePattern : Prop
  ageProgression : Prop

structure SeafloorSpreadingEvidence {P : PlateMotionKinematicsPackage}
    (S : SeafloorSpreadingPackage P) where
  symmetricSpreadingClosed : S.symmetricSpreading
  magneticStripePatternClosed : S.magneticStripePattern
  ageProgressionClosed : S.ageProgression

def SeafloorSpreadingClosed {P : PlateMotionKinematicsPackage}
    (S : SeafloorSpreadingPackage P) : Prop :=
  S.symmetricSpreading ∧ S.magneticStripePattern ∧ S.ageProgression

theorem seafloor_spreading_closed_from_evidence
    {P : PlateMotionKinematicsPackage} (S : SeafloorSpreadingPackage P)
    (E : SeafloorSpreadingEvidence S) : SeafloorSpreadingClosed S := by
  exact And.intro E.symmetricSpreadingClosed
    (And.intro E.magneticStripePatternClosed E.ageProgressionClosed)

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse