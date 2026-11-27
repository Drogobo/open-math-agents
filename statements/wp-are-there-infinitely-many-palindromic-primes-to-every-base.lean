import Mathlib

/-!
# Are there infinitely many palindromic primes to every base?

Source: https://en.wikipedia.org/wiki/Palindromic_prime
Credit: @Drogobo

A palindromic prime in base `b` is a prime number whose base-`b` digits read the same forwards
and backwards. The source notes that it is not known whether there are infinitely many
palindromic primes in base 10; the question asks whether, in every base, there are infinitely
many of them.

Bases are integers `b ≥ 2`, the only positional bases. (For `b ≤ 1`, `Nat.digits b n` is a list
whose reverse is itself for every `n`, so including them would only add the trivial statement
that there are infinitely many primes.) `Nat.digits b n` lists the digits of `n` in base `b`,
least significant first, without leading zeros; a number is a base-`b` palindrome exactly when
this list equals its reverse.
-/

namespace OMA.S_wp_are_there_infinitely_many_palindromic_primes_to_every_base

/-- `n` is a palindrome in base `b`: its base-`b` digits read the same in both directions. -/
def IsPalindromeInBase (b n : ℕ) : Prop :=
  (Nat.digits b n).reverse = Nat.digits b n

/-- For every base `b ≥ 2` there are infinitely many primes that are palindromes in base `b`. -/
theorem main : ∀ b : ℕ, 2 ≤ b → {p : ℕ | p.Prime ∧ IsPalindromeInBase b p}.Infinite := by
  sorry

end OMA.S_wp_are_there_infinitely_many_palindromic_primes_to_every_base
