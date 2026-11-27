import OMAReductions.R_OeisA67599_conjecture_R1

-- Step OeisA67599.conjecture.R1.H2: hypothesis H2 of reduction OeisA67599.conjecture.R1
-- Credit: @Drogobo
-- H2 := ∀ q : ℕ, 7 < q → q.Prime →     OeisA67599.a (2401 * q) = 740 * 10 ^ (Nat.digits 10 q).length + 10 * q + 1

lemma OMA.A67599_primeFactorsList (q : ℕ) (hq7 : 7 < q) (hq : q.Prime) :
    (2401 * q).primeFactorsList = [7, 7, 7, 7, q] := by
  have h7 : Nat.Prime 7 := by norm_num
  have hs : List.SortedLE [7, 7, 7, 7, q] := by
    rw [List.sortedLE_iff_pairwise]
    simp only [List.pairwise_cons, List.mem_cons, List.not_mem_nil, or_false,
      List.Pairwise.nil, forall_eq_or_imp, forall_eq]
    refine ⟨⟨le_rfl, le_rfl, le_rfl, by omega⟩, ⟨le_rfl, le_rfl, by omega⟩, ⟨le_rfl, by omega⟩, by omega, fun _ h => h.elim, trivial⟩
  refine List.Perm.eq_of_sortedLE (Nat.primeFactorsList_sorted _) hs ?_
  symm
  apply Nat.primeFactorsList_unique
  · simp; ring
  · intro p hp; simp at hp; rcases hp with rfl | rfl <;> assumption

theorem OMA.solution : OMA.R_OeisA67599_conjecture_R1.H2 := by
  intro q hq7 hq
  have hne : (7 : ℕ) ≠ q := by omega
  unfold OeisA67599.a
  rw [if_neg (by omega), OMA.A67599_primeFactorsList q hq7 hq]
  have hd : [7, 7, 7, 7, q].dedup = [7, q] := by
    rw [List.dedup_cons_of_mem (by simp), List.dedup_cons_of_mem (by simp),
      List.dedup_cons_of_mem (by simp), List.dedup_cons_of_notMem (by simpa using hne)]
    simp
  simp only [hd, List.flatMap_cons, List.flatMap_nil, List.count_cons, List.count_nil,
    beq_iff_eq, hne, hne.symm, if_true, if_false, List.cons_append, List.nil_append,
    List.append_nil, List.foldl_cons, List.foldl_nil, OeisA67599.concatenateNats]
  norm_num
  ring


