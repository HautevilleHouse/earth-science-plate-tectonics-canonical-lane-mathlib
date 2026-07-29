import canonicalLaneMathlib.AdmissibleClass

/-!
# Seafloor Spreading and Paleomagnetism Package
-/

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure SeafloorSpreadingPaleomagnetismPackage where
  magneticAnomalyPattern : Type u
  reversalChronology : Type v
  spreadingRate : Type w
  seafloorAge : Type x
  symmetricAnomalies : Prop
  ageProgressionWithDistance : Prop

structure SeafloorSpreadingPaleomagnetismEvidence (S : SeafloorSpreadingPaleomagnetismPackage) where
  symmetricAnomaliesClosed : S.symmetricAnomalies
  ageProgressionWithDistanceClosed : S.ageProgressionWithDistance

def SeafloorSpreadingPaleomagnetismClosed (S : SeafloorSpreadingPaleomagnetismPackage) : Prop :=
  S.symmetricAnomalies ∧ S.ageProgressionWithDistance

theorem seafloor_spreading_paleomagnetism_closed_from_evidence (S : SeafloorSpreadingPaleomagnetismPackage)
    (E : SeafloorSpreadingPaleomagnetismEvidence S) : SeafloorSpreadingPaleomagnetismClosed S := by
  exact And.intro E.symmetricAnomaliesClosed E.ageProgressionWithDistanceClosed

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse