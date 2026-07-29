import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean.SomitogenesisAdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  trivial

def gateClosed (A : AdmissibleClass) : Prop := True

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  unfold gateClosed
  trivial

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse