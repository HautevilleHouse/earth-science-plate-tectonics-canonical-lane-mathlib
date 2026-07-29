import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure MantleConvectionParameters where
  rayleighNumber : Float
  prandtlNumber : Float
  heatSource : String
  boundaryConditions : String

definition upperMantleConvection : MantleConvectionParameters :=
  { rayleighNumber := 1e6, prandtlNumber := 1e23, heatSource := "internal_radiogenic", boundaryConditions := "isothermal_top_free_slip_bottom" }

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse