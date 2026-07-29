import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthSciencePlateTectonicsCanonicalLaneLean.GlobalPlateReconstruction

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

def ConstrainedPlateTectonicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_plate_tectonics_endgame (A : AdmissibleClass) :
    ConstrainedPlateTectonicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse