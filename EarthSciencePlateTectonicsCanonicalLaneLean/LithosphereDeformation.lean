import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure LithosphereDeformationPackage where
  plateBoundaryTypes : Type u
  stressField : Type v
  strainRate : Type w
  brittleDeformation : Prop
  ductileDeformation : Prop
  plasticDeformation : Prop
  deformationCompatibility : Prop

structure LithosphereDeformationEvidence (L : LithosphereDeformationPackage) where
  brittleDeformationClosed : L.brittleDeformation
  ductileDeformationClosed : L.ductileDeformation
  plasticDeformationClosed : L.plasticDeformation
  deformationCompatibilityClosed : L.deformationCompatibility

def LithosphereDeformationClosed (L : LithosphereDeformationPackage) : Prop :=
  L.brittleDeformation ∧ L.ductileDeformation ∧ L.plasticDeformation ∧ L.deformationCompatibility

theorem lithosphere_deformation_closed_from_evidence (L : LithosphereDeformationPackage) (E : LithosphereDeformationEvidence L) : LithosphereDeformationClosed L := by
  exact And.intro E.brittleDeformationClosed (And.intro E.ductileDeformationClosed (And.intro E.plasticDeformationClosed E.deformationCompatibilityClosed))

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse