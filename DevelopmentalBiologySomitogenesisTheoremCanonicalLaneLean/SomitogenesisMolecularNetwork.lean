import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

structure SomitogenesisMolecularNetworkPackage where
  notchDeltaPathway : Prop
  fgfSignaling : Prop
  wntSignaling : Prop
  mespGeneExpression : Prop
  notchDeltaPathwayTerm : notchDeltaPathway
  fgfSignalingTerm : fgfSignaling
  wntSignalingTerm : wntSignaling
  mespGeneExpressionTerm : mespGeneExpression

structure SomitogenesisMolecularNetworkEvidence (M : SomitogenesisMolecularNetworkPackage) where
  notchDeltaPathwayClosed : M.notchDeltaPathway
  fgfSignalingClosed : M.fgfSignaling
  wntSignalingClosed : M.wntSignaling
  mespGeneExpressionClosed : M.mespGeneExpression

def SomitogenesisMolecularNetworkClosed (M : SomitogenesisMolecularNetworkPackage) : Prop :=
  M.notchDeltaPathway ∧ M.fgfSignaling ∧ M.wntSignaling ∧ M.mespGeneExpression

theorem somitogenesis_molecular_network_closed_from_evidence (M : SomitogenesisMolecularNetworkPackage) (E : SomitogenesisMolecularNetworkEvidence M) : SomitogenesisMolecularNetworkClosed M := by
  exact And.intro E.notchDeltaPathwayClosed (And.intro E.fgfSignalingClosed (And.intro E.wntSignalingClosed E.mespGeneExpressionClosed))

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse