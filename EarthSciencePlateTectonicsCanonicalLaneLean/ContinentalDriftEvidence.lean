import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure ContinentalDriftPackage where
  matchingCoastlines : Prop
  fossilCorrelation : Prop
  rockTypeContinuity : Prop
  paleoclimaticEvidence : Prop

structure ContinentalDriftEvidence (C : ContinentalDriftPackage) where
  matchingCoastlinesClosed : C.matchingCoastlines
  fossilCorrelationClosed : C.fossilCorrelation
  rockTypeContinuityClosed : C.rockTypeContinuity
  paleoclimaticEvidenceClosed : C.paleoclimaticEvidence

def ContinentalDriftClosed (C : ContinentalDriftPackage) : Prop :=
  C.matchingCoastlines ∧ C.fossilCorrelation ∧ C.rockTypeContinuity ∧ C.paleoclimaticEvidence

theorem continental_drift_closed_from_evidence (C : ContinentalDriftPackage) (E : ContinentalDriftEvidence C) : ContinentalDriftClosed C := by
  exact And.intro E.matchingCoastlinesClosed (And.intro E.fossilCorrelationClosed (And.intro E.rockTypeContinuityClosed E.paleoclimaticEvidenceClosed))

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse