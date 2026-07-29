import canonicalLaneMathlib.AdmissibleClass

/-!
# Mantle Convection Dynamics Package
-/

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure MantleConvectionDynamicsPackage where
  temperatureField : Type u
  viscosityProfile : Type v
  rayleighNumber : Type w
  momentumEquation : Prop
  energyEquation : Prop
  continuityEquation : Prop
  rheologyModel : Prop

structure MantleConvectionDynamicsEvidence (M : MantleConvectionDynamicsPackage) where
  momentumEquationClosed : M.momentumEquation
  energyEquationClosed : M.energyEquation
  continuityEquationClosed : M.continuityEquation
  rheologyModelClosed : M.rheologyModel

def MantleConvectionDynamicsClosed (M : MantleConvectionDynamicsPackage) : Prop :=
  M.momentumEquation ∧ M.energyEquation ∧ M.continuityEquation ∧ M.rheologyModel

theorem mantle_convection_dynamics_closed_from_evidence (M : MantleConvectionDynamicsPackage)
    (E : MantleConvectionDynamicsEvidence M) : MantleConvectionDynamicsClosed M := by
  exact And.intro E.momentumEquationClosed
    (And.intro E.energyEquationClosed
      (And.intro E.continuityEquationClosed E.rheologyModelClosed))

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse