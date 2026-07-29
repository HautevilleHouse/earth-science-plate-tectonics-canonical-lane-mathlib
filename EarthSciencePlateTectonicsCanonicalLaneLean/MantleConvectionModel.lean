import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure MantleConvectionModelPackage where
  rayleighNumber : Prop
  viscosityStructure : Prop
  thermalBoundaryLayer : Prop
  plumeDynamics : Prop
  convectionCellPattern : Prop
  heatFluxConsistent : Prop

structure MantleConvectionModelEvidence (M : MantleConvectionModelPackage) where
  rayleighNumberClosed : M.rayleighNumber
  viscosityStructureClosed : M.viscosityStructure
  thermalBoundaryLayerClosed : M.thermalBoundaryLayer
  plumeDynamicsClosed : M.plumeDynamics
  convectionCellPatternClosed : M.convectionCellPattern
  heatFluxConsistentClosed : M.heatFluxConsistent

def MantleConvectionModelClosed (M : MantleConvectionModelPackage) : Prop :=
  M.rayleighNumber ∧ M.viscosityStructure ∧ M.thermalBoundaryLayer ∧ M.plumeDynamics ∧ M.convectionCellPattern ∧ M.heatFluxConsistent

theorem mantle_convection_model_closed_from_evidence (M : MantleConvectionModelPackage) (E : MantleConvectionModelEvidence M) : MantleConvectionModelClosed M := by
  exact And.intro E.rayleighNumberClosed (And.intro E.viscosityStructureClosed (And.intro E.thermalBoundaryLayerClosed (And.intro E.plumeDynamicsClosed (And.intro E.convectionCellPatternClosed E.heatFluxConsistentClosed))))

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse