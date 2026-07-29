import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure PlateMotionModel where
  plateVelocity : Type u
  angularVelocity : Type v
  eulerPoleDefined : Prop
  motionConsistent : Prop
  relativeMotion : Prop

structure PlateMotionEvidence (M : PlateMotionModel) where
  velocityDefined : M.plateVelocity
  eulerPoleDefinedClosed : M.eulerPoleDefined
  motionConsistentClosed : M.motionConsistent
  relativeMotionClosed : M.relativeMotion

def PlateMotionClosed (M : PlateMotionModel) : Prop :=
  M.eulerPoleDefined ∧ M.motionConsistent ∧ M.relativeMotion

theorem plate_motion_closed_from_evidence (M : PlateMotionModel) (E : PlateMotionEvidence M) :
    PlateMotionClosed M := by
  exact And.intro E.eulerPoleDefinedClosed
    (And.intro E.motionConsistentClosed E.relativeMotionClosed)

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse