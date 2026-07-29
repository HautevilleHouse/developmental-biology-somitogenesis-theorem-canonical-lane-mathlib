import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

struct SomiteBoundaryFormation (A : AdmissibleClass) where
  extracellularMatrix : Type
  cellAdhesionMolecules : Type
  boundarySpecification : Prop
  mesodermalCellRearrangement : Prop
  notchFGFInterplay : Prop
  epithelialization : Prop

struct SomiteBoundaryFormationEvidence (A : AdmissibleClass) (S : SomiteBoundaryFormation A) where
  boundarySpecificationClosed : S.boundarySpecification
  mesodermalCellRearrangementClosed : S.mesodermalCellRearrangement
  notchFGFInterplayClosed : S.notchFGFInterplay
  epithelializationClosed : S.epithelialization

def SomiteBoundaryFormationClosed (A : AdmissibleClass) (S : SomiteBoundaryFormation A) : Prop :=
  S.boundarySpecification ∧ S.mesodermalCellRearrangement ∧ S.notchFGFInterplay ∧ S.epithelialization

theorem somite_boundary_formation_closed_from_evidence (A : AdmissibleClass) (S : SomiteBoundaryFormation A)
    (E : SomiteBoundaryFormationEvidence A S) : SomiteBoundaryFormationClosed A S := by
  exact And.intro E.boundarySpecificationClosed (And.intro E.mesodermalCellRearrangementClosed
    (And.intro E.notchFGFInterplayClosed E.epithelializationClosed))

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse