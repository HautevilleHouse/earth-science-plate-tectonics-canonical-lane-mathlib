import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthSciencePlateTectonicsCanonicalLaneLean.MantleConvectionDriver

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure GlobalPlateReconstructionPackage {P : PlateMotionKinematicsPackage}
    {S : SeafloorSpreadingPackage P} {D : SubductionZoneDynamicsPackage P S}
    {M : MantleConvectionDriverPackage P S D} where
  platePolygons : Type
  geologicalTimeScale : Type
  apparentPolarWander : Type
  hotpotTrackConsistency : Prop
  closureOfOceanBasins : Prop
  continentalFit : Prop
  plateCircuitClosure : Prop

structure GlobalPlateReconstructionEvidence {P : PlateMotionKinematicsPackage}
    {S : SeafloorSpreadingPackage P} {D : SubductionZoneDynamicsPackage P S}
    {M : MantleConvectionDriverPackage P S D}
    (G : GlobalPlateReconstructionPackage P S D M) where
  hotpotTrackConsistencyClosed : G.hotpotTrackConsistency
  closureOfOceanBasinsClosed : G.closureOfOceanBasins
  continentalFitClosed : G.continentalFit
  plateCircuitClosureClosed : G.plateCircuitClosure

def GlobalPlateReconstructionClosed {P : PlateMotionKinematicsPackage}
    {S : SeafloorSpreadingPackage P} {D : SubductionZoneDynamicsPackage P S}
    {M : MantleConvectionDriverPackage P S D}
    (G : GlobalPlateReconstructionPackage P S D M) : Prop :=
  G.hotpotTrackConsistency ∧ G.closureOfOceanBasins ∧
  G.continentalFit ∧ G.plateCircuitClosure

theorem global_plate_reconstruction_closed_from_evidence
    {P : PlateMotionKinematicsPackage} {S : SeafloorSpreadingPackage P}
    {D : SubductionZoneDynamicsPackage P S} {M : MantleConvectionDriverPackage P S D}
    (G : GlobalPlateReconstructionPackage P S D M)
    (E : GlobalPlateReconstructionEvidence G) : GlobalPlateReconstructionClosed G := by
  exact And.intro E.hotpotTrackConsistencyClosed
    (And.intro E.closureOfOceanBasinsClosed
      (And.intro E.continentalFitClosed E.plateCircuitClosureClosed))

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse