import Mathlib

/-!
# Are there infinitely many Cullen primes?

Source: https://en.wikipedia.org/wiki/Cullen_number
Credit: @Drogobo

A Cullen number is a number of the form `C_n = n * 2 ^ n + 1` with `n` a natural number, and a
Cullen prime is a Cullen number that is prime. Only sixteen Cullen primes are known (OEIS A005849
lists the indices `n`), and the source states that it is conjectured that there are infinitely
many of them.

The map `n ↦ n * 2 ^ n + 1` is strictly increasing, so there are infinitely many Cullen primes
exactly when there are infinitely many indices `n` with `C_n` prime. We state the conjecture
directly as: the set of primes that are Cullen numbers is infinite.
-/

namespace OMA.S_wp_are_there_infinitely_many_cullen_primes

/-- The `n`-th Cullen number `C_n = n * 2 ^ n + 1`. -/
def cullen (n : ℕ) : ℕ := n * 2 ^ n + 1

/-- There are infinitely many Cullen primes: primes of the form `n * 2 ^ n + 1`. -/
theorem main : {p : ℕ | p.Prime ∧ ∃ n : ℕ, p = cullen n}.Infinite := by
  sorry

end OMA.S_wp_are_there_infinitely_many_cullen_primes
