import canonicalLaneMathlib.AdmissibleClass

/-!
# Earth Structure and Seismic Tomography Package
-/

namespace HautevilleHouse
namespace EarthSciencePlateTectonicsCanonicalLaneLean

structure EarthStructureSeismicTomographyPackage where
  velocityModel : Type u
  densityModel : Type v
  discontinuityDepths : Type w
  radialStructure : Prop
  lateralHeterogeneity : Prop
  anisotropy : Prop
  attenuation : Prop

structure EarthStructureSeismicTomographyEvidence (E : EarthStructureSeismicTomographyPackage) where
  radialStructureClosed : E.radialStructure
  lateralHeterogeneityClosed : E.lateralHeterogeneity
  anisotropyClosed : E.anisotropy
  attenuationClosed : E.attenuation

def EarthStructureSeismicTomographyClosed (E : EarthStructureSeismicTomographyPackage) : Prop :=
  E.radialStructure ∧ E.lateralHeterogeneity ∧ E.anisotropy ∧ E.attenuation

theorem earth_structure_seismic_tomography_closed_from_evidence (E : EarthStructureSeismicTomographyPackage)
    (Ev : EarthStructureSeismicTomographyEvidence E) : EarthStructureSeismicTomographyClosed E := by
  exact And.intro Ev.radialStructureClosed
    (And.intro Ev.lateralHeterogeneityClosed
      (And.intro Ev.anisotropyClosed Ev.attenuationClosed))

end EarthSciencePlateTectonicsCanonicalLaneLean
end HautevilleHouse