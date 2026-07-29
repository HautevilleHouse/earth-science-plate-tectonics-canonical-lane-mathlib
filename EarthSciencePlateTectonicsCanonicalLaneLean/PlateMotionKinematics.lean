import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure PlateMotionKinematicsPackage where
  rotationPole : Type u
  angularVelocity : Type v
  plateVelocity : Type w
  rigidPlateAssumption : Prop
  eulerRotationConsistent : Prop
  noInternalDeformation : Prop

structure PlateMotionKinematicsEvidence (K : PlateMotionKinematicsPackage) where
  rigidPlateAssumptionClosed : K.rigidPlateAssumption
  eulerRotationConsistentClosed : K.eulerRotationConsistent
  noInternalDeformationClosed : K.noInternalDeformation

def PlateMotionKinematicsClosed (K : PlateMotionKinematicsPackage) : Prop :=
  K.rigidPlateAssumption ∧ K.eulerRotationConsistent ∧ K.noInternalDeformation

theorem plate_motion_kinematics_closed_from_evidence (K : PlateMotionKinematicsPackage) (E : PlateMotionKinematicsEvidence K) : PlateMotionKinematicsClosed K := by
  exact And.intro E.rigidPlateAssumptionClosed (And.intro E.eulerRotationConsistentClosed E.noInternalDeformationClosed)

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse