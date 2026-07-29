import EarthSciencePlateTectonicsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse
