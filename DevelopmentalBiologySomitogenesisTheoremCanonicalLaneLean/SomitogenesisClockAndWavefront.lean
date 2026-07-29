import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

structure SomitogenesisClockAndWavefrontPackage where
  clockOscillation : Prop
  wavefrontPosition : Prop
  somitogenesisCycle : Prop
  tailExtension : Prop
  clockOscillationTerm : clockOscillation
  wavefrontPositionTerm : wavefrontPosition
  somitogenesisCycleTerm : somitogenesisCycle
  tailExtensionTerm : tailExtension

structure SomitogenesisClockAndWavefrontEvidence (C : SomitogenesisClockAndWavefrontPackage) where
  clockOscillationClosed : C.clockOscillation
  wavefrontPositionClosed : C.wavefrontPosition
  somitogenesisCycleClosed : C.somitogenesisCycle
  tailExtensionClosed : C.tailExtension

def SomitogenesisClockAndWavefrontClosed (C : SomitogenesisClockAndWavefrontPackage) : Prop :=
  C.clockOscillation ∧ C.wavefrontPosition ∧ C.somitogenesisCycle ∧ C.tailExtension

theorem somitogenesis_clock_and_wavefront_closed_from_evidence (C : SomitogenesisClockAndWavefrontPackage) (E : SomitogenesisClockAndWavefrontEvidence C) : SomitogenesisClockAndWavefrontClosed C := by
  exact And.intro E.clockOscillationClosed (And.intro E.wavefrontPositionClosed (And.intro E.somitogenesisCycleClosed E.tailExtensionClosed))

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse