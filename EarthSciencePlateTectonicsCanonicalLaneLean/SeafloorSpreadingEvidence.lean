import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure SeafloorSpreadingEvidence where
  magneticAnomaly : Type u
  ageProgression : Type v
  symmetricalPattern : Prop
  spreadingCenter : Prop
  crustalCreation : Prop

structure SeafloorSpreadingProof (S : SeafloorSpreadingEvidence) where
  anomalyRecorded : S.magneticAnomaly
  ageProgressionObserved : S.ageProgression
  symmetricalPatternClosed : S.symmetricalPattern
  spreadingCenterClosed : S.spreadingCenter
  crustalCreationClosed : S.crustalCreation

def SeafloorSpreadingClosed (S : SeafloorSpreadingEvidence) : Prop :=
  S.symmetricalPattern ∧ S.spreadingCenter ∧ S.crustalCreation

theorem seafloor_spreading_closed_from_evidence (S : SeafloorSpreadingEvidence) (P : SeafloorSpreadingProof S) :
    SeafloorSpreadingClosed S := by
  exact And.intro P.symmetricalPatternClosed
    (And.intro P.spreadingCenterClosed P.crustalCreationClosed)

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse