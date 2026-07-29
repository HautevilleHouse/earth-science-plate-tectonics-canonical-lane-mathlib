import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure AdmissibleClass where
  object : PlateTectonicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PlateTectonicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse