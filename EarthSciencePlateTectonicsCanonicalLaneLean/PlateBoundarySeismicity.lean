import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure PlateBoundarySeismicityPackage where
  thrustFaults : Prop
  normalFaults : Prop
  strikeSlipFaults : Prop
  depthDistribution : Prop
  momentTensorConsistent : Prop
  gutenbergRichterRelation : Prop

structure PlateBoundarySeismicityEvidence (B : PlateBoundarySeismicityPackage) where
  thrustFaultsClosed : B.thrustFaults
  normalFaultsClosed : B.normalFaults
  strikeSlipFaultsClosed : B.strikeSlipFaults
  depthDistributionClosed : B.depthDistribution
  momentTensorConsistentClosed : B.momentTensorConsistent
  gutenbergRichterRelationClosed : B.gutenbergRichterRelation

def PlateBoundarySeismicityClosed (B : PlateBoundarySeismicityPackage) : Prop :=
  B.thrustFaults ∧ B.normalFaults ∧ B.strikeSlipFaults ∧ B.depthDistribution ∧ B.momentTensorConsistent ∧ B.gutenbergRichterRelation

theorem plate_boundary_seismicity_closed_from_evidence (B : PlateBoundarySeismicityPackage) (E : PlateBoundarySeismicityEvidence B) : PlateBoundarySeismicityClosed B := by
  exact And.intro E.thrustFaultsClosed (And.intro E.normalFaultsClosed (And.intro E.strikeSlipFaultsClosed (And.intro E.depthDistributionClosed (And.intro E.momentTensorConsistentClosed E.gutenbergRichterRelationClosed))))

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse