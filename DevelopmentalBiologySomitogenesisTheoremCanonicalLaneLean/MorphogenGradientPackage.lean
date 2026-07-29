import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

structure MorphogenGradientPackage where
  gradientType : Type u
  lengthScale : Type v
  productionRate : Prop
  diffusionCoefficient : Prop
  decayRate : Prop
  morphogenClosed : Prop

structure MorphogenGradientEvidence (P : MorphogenGradientPackage) where
  productionRateClosed : P.productionRate
  diffusionCoefficientClosed : P.diffusionCoefficient
  decayRateClosed : P.decayRate
  morphogenClosedTerm : P.morphogenClosed

def MorphogenGradientClosed (P : MorphogenGradientPackage) : Prop :=
  P.productionRate ∧ P.diffusionCoefficient ∧ P.decayRate ∧ P.morphogenClosed

theorem morphogen_gradient_closed_from_evidence (P : MorphogenGradientPackage)
    (E : MorphogenGradientEvidence P) : MorphogenGradientClosed P := by
  exact And.intro E.productionRateClosed
    (And.intro E.diffusionCoefficientClosed
      (And.intro E.decayRateClosed E.morphogenClosedTerm))

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse