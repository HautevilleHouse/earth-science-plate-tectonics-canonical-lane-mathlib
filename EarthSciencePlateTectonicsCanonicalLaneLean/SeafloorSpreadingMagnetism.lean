import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure SeafloorSpreadingPackage where
  magneticStripes : Prop
  ageProgression : Prop
  paleomagneticSymmetry : Prop
  spreadingRate : Prop

structure SeafloorSpreadingEvidence (S : SeafloorSpreadingPackage) where
  magneticStripesClosed : S.magneticStripes
  ageProgressionClosed : S.ageProgression
  paleomagneticSymmetryClosed : S.paleomagneticSymmetry
  spreadingRateClosed : S.spreadingRate

def SeafloorSpreadingClosed (S : SeafloorSpreadingPackage) : Prop :=
  S.magneticStripes ∧ S.ageProgression ∧ S.paleomagneticSymmetry ∧ S.spreadingRate

theorem seafloor_spreading_closed_from_evidence (S : SeafloorSpreadingPackage) (E : SeafloorSpreadingEvidence S) : SeafloorSpreadingClosed S := by
  exact And.intro E.magneticStripesClosed (And.intro E.ageProgressionClosed (And.intro E.paleomagneticSymmetryClosed E.spreadingRateClosed))

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse