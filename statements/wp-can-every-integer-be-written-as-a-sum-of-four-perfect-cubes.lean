import Mathlib

/-!
# Can every integer be written as a sum of four perfect cubes?

Source: https://en.wikipedia.org/wiki/Sum_of_four_cubes_problem
Credit: @Drogobo

The sum of four cubes problem asks whether every integer is the sum of four cubes of integers.
Some of the cubes may be negative (in contrast to Waring's problem, where they must be
nonnegative). The answer is conjectured to be affirmative; it is known, for example, for all
integers not congruent to `±4` modulo `9`.

We state the conjectured affirmative answer: every `n : ℤ` is `a ^ 3 + b ^ 3 + c ^ 3 + d ^ 3`
for some integers `a, b, c, d` (not necessarily distinct, possibly zero or negative).
-/

namespace OMA.S_wp_can_every_integer_be_written_as_a_sum_of_four_perfect_cubes

/-- Every integer is the sum of four cubes of integers. -/
theorem main : ∀ n : ℤ, ∃ a b c d : ℤ, n = a ^ 3 + b ^ 3 + c ^ 3 + d ^ 3 := by
  sorry

end OMA.S_wp_can_every_integer_be_written_as_a_sum_of_four_perfect_cubes
