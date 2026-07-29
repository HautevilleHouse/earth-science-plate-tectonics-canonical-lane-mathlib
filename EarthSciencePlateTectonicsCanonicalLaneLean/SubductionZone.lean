import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure SubductionParameters where
  slabDip : Float
  convergenceRate : Float
  slabAge : Float
  volcanicArc : String

definition pacificSubduction : SubductionParameters :=
  { slabDip := 30.0, convergenceRate := 70.0, slabAge := 100.0, volcanicArc := "Ring of Fire" }

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse