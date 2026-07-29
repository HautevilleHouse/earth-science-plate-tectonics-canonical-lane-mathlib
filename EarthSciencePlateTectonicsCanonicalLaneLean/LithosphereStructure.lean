import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure LithosphereStructure where
  crust : Type u
  mantle : Type v
  lithosphereBoundary : Prop
  asthenosphereBelow : Prop
  rigidLayer : Prop
  thermalGradient : Prop

structure LithosphereEvidence (L : LithosphereStructure) where
  crustDefined : L.crust
  mantleDefined : L.mantle
  boundaryClosed : L.lithosphereBoundary
  asthenosphereClosed : L.asthenosphereBelow
  rigidLayerClosed : L.rigidLayer
  thermalGradientClosed : L.thermalGradient

def LithosphereClosed (L : LithosphereStructure) : Prop :=
  L.lithosphereBoundary ∧ L.asthenosphereBelow ∧ L.rigidLayer ∧ L.thermalGradient

theorem lithosphere_closed_from_evidence (L : LithosphereStructure) (E : LithosphereEvidence L) :
    LithosphereClosed L := by
  exact And.intro E.boundaryClosed
    (And.intro E.asthenosphereClosed
      (And.intro E.rigidLayerClosed E.thermalGradientClosed))

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse