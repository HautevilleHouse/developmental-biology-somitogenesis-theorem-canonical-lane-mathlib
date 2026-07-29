import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean.SomitogenesisGateLemmas

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

def ConstrainedSomitogenesisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_somitogenesis_endgame (A : AdmissibleClass) : ConstrainedSomitogenesisClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse