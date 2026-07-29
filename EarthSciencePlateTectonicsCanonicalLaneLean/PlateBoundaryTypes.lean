import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

inductive PlateBoundaryKind where
  | divergent
  | convergent
  | transform

structure PlateBoundaryPackage where
  boundaryKind : PlateBoundaryKind
  relativeMotion : Prop
  seismicity : Prop
  volcanism : Prop
  topography : Prop

structure PlateBoundaryEvidence (P : PlateBoundaryPackage) where
  relativeMotionClosed : P.relativeMotion
  seismicityClosed : P.seismicity
  volcanismClosed : P.volcanism
  topographyClosed : P.topography

def PlateBoundaryClosed (P : PlateBoundaryPackage) : Prop :=
  P.relativeMotion ∧ P.seismicity ∧ P.volcanism ∧ P.topography

theorem plate_boundary_closed_from_evidence (P : PlateBoundaryPackage) (E : PlateBoundaryEvidence P) : PlateBoundaryClosed P := by
  exact And.intro E.relativeMotionClosed (And.intro E.seismicityClosed (And.intro E.volcanismClosed E.topographyClosed))

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse