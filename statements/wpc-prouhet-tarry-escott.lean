import Mathlib

/-!
# Ideal solutions of the Prouhet–Tarry–Escott problem

Source: https://en.wikipedia.org/wiki/Prouhet%E2%80%93Tarry%E2%80%93Escott_problem
Credit: @Drogobo

The Prouhet–Tarry–Escott problem asks for two disjoint multisets `A` and `B` of `n` integers
each whose first `k` power sums agree: `∑_{a ∈ A} a ^ i = ∑_{b ∈ B} b ^ i` for every integer
`i` from `1` to `k`. One must have `n > k`; solutions with `k = n - 1` are called ideal.
Ideal solutions are known only for some `n` (the source lists `3 ≤ n ≤ 10` and `n = 12`), and
the open question is whether one exists for every `n`.

We state the conjectured affirmative answer: for every `n ≥ 1` there are disjoint multisets of
`n` integers each whose `i`-th power sums agree for `1 ≤ i ≤ n - 1`. Multisets are Mathlib's
`Multiset ℤ`; `Disjoint A B` means that no integer occurs in both (repetitions inside one
multiset are allowed). For `n = 1` and `n = 2` the condition is easily met, e.g. `{0}, {1}` and
`{0, 3}, {1, 2}`; including them does not change the question.
-/

namespace OMA.S_wpc_prouhet_tarry_escott

/-- `A` and `B` form an ideal Prouhet–Tarry–Escott solution of size `n`: disjoint multisets of
`n` integers each, with equal `i`-th power sums for `1 ≤ i ≤ n - 1`. -/
def IsIdealSolution (n : ℕ) (A B : Multiset ℤ) : Prop :=
  Multiset.card A = n ∧ Multiset.card B = n ∧ Disjoint A B ∧
    ∀ i ∈ Finset.Icc 1 (n - 1), (A.map (· ^ i)).sum = (B.map (· ^ i)).sum

/-- For every `n ≥ 1` there is an ideal solution of the Prouhet–Tarry–Escott problem of
size `n`. -/
theorem main : ∀ n : ℕ, 1 ≤ n → ∃ A B : Multiset ℤ, IsIdealSolution n A B := by
  sorry

end OMA.S_wpc_prouhet_tarry_escott
