import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure SubductionZoneDynamicsPackage where
  slabPullForce : Prop
  plateAgeAtTrench : Prop
  slabDipAngle : Prop
  arcMagmatism : Prop
  dehydrationMetamorphism : Prop
  backArcSpreading : Prop

structure SubductionZoneDynamicsEvidence (Z : SubductionZoneDynamicsPackage) where
  slabPullForceClosed : Z.slabPullForce
  plateAgeAtTrenchClosed : Z.plateAgeAtTrench
  slabDipAngleClosed : Z.slabDipAngle
  arcMagmatismClosed : Z.arcMagmatism
  dehydrationMetamorphismClosed : Z.dehydrationMetamorphism
  backArcSpreadingClosed : Z.backArcSpreading

def SubductionZoneDynamicsClosed (Z : SubductionZoneDynamicsPackage) : Prop :=
  Z.slabPullForce ∧ Z.plateAgeAtTrench ∧ Z.slabDipAngle ∧ Z.arcMagmatism ∧ Z.dehydrationMetamorphism ∧ Z.backArcSpreading

theorem subduction_zone_dynamics_closed_from_evidence (Z : SubductionZoneDynamicsPackage) (E : SubductionZoneDynamicsEvidence Z) : SubductionZoneDynamicsClosed Z := by
  exact And.intro E.slabPullForceClosed (And.intro E.plateAgeAtTrenchClosed (And.intro E.slabDipAngleClosed (And.intro E.arcMagmatismClosed (And.intro E.dehydrationMetamorphismClosed E.backArcSpreadingClosed))))

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse