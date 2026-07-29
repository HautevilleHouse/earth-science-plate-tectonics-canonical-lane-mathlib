import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthSciencePlateTectonicsCanonicalLaneLean.SubductionZoneDynamics

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure MantleConvectionDriverPackage {P : PlateMotionKinematicsPackage}
    {S : SeafloorSpreadingPackage P} {D : SubductionZoneDynamicsPackage P S} where
  thermalGradient : Type
  viscosityStructure : Type
  convectionCell : Type
  rayleighNumberCritical : Prop
  plumeFormation : Prop
  wholeMantleCirculation : Prop

structure MantleConvectionDriverEvidence {P : PlateMotionKinematicsPackage}
    {S : SeafloorSpreadingPackage P} {D : SubductionZoneDynamicsPackage P S}
    (M : MantleConvectionDriverPackage P S D) where
  rayleighNumberCriticalClosed : M.rayleighNumberCritical
  plumeFormationClosed : M.plumeFormation
  wholeMantleCirculationClosed : M.wholeMantleCirculation

def MantleConvectionDriverClosed {P : PlateMotionKinematicsPackage}
    {S : SeafloorSpreadingPackage P} {D : SubductionZoneDynamicsPackage P S}
    (M : MantleConvectionDriverPackage P S D) : Prop :=
  M.rayleighNumberCritical ∧ M.plumeFormation ∧ M.wholeMantleCirculation

theorem mantle_convection_driver_closed_from_evidence
    {P : PlateMotionKinematicsPackage} {S : SeafloorSpreadingPackage P}
    {D : SubductionZoneDynamicsPackage P S} (M : MantleConvectionDriverPackage P S D)
    (E : MantleConvectionDriverEvidence M) : MantleConvectionDriverClosed M := by
  exact And.intro E.rayleighNumberCriticalClosed
    (And.intro E.plumeFormationClosed E.wholeMantleCirculationClosed)

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse