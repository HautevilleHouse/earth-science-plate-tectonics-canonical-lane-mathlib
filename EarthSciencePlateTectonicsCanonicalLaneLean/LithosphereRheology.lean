import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure LithosphericLayer where
  depthRange : Nat × Nat
  composition : String
  effectiveViscosity : Float
  temperature : Float

definition lithosphereRheologyModel : List LithosphericLayer :=
  [{ depthRange := (0, 30), composition := "continental_crust", effectiveViscosity := 1e23, temperature := 0.0 },
   { depthRange := (30, 100), composition := "lithospheric_mantle", effectiveViscosity := 1e21, temperature := 200.0 },
   { depthRange := (100, 660), composition := "asthenosphere", effectiveViscosity := 1e19, temperature := 1300.0 }]

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse