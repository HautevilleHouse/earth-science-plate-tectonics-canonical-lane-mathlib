import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure SubductionZonePackage where
  slabPull : Prop
  metamorphicReactions : Prop
  volcanicArc : Prop
  backArcExtension : Prop

structure SubductionZoneEvidence (S : SubductionZonePackage) where
  slabPullClosed : S.slabPull
  metamorphicReactionsClosed : S.metamorphicReactions
  volcanicArcClosed : S.volcanicArc
  backArcExtensionClosed : S.backArcExtension

def SubductionZoneClosed (S : SubductionZonePackage) : Prop :=
  S.slabPull ∧ S.metamorphicReactions ∧ S.volcanicArc ∧ S.backArcExtension

theorem subduction_zone_closed_from_evidence (S : SubductionZonePackage) (E : SubductionZoneEvidence S) : SubductionZoneClosed S := by
  exact And.intro E.slabPullClosed (And.intro E.metamorphicReactionsClosed (And.intro E.volcanicArcClosed E.backArcExtensionClosed))

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse