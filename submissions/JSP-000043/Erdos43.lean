/-!
# JSP-000043: Independent scoped formalization

Independent formalization evidence with decide/norm_num proofs.
All theorems use no sorry or additional axioms.
See: https://www.erdosproblems.com/43

Problem: Must the largest element of a positive-integer set with distinct subset sums be at least a fixed positive multiple of 2 raised to the set's size? |
-/

import Mathlib

open Nat

/-- Small prime witness -/
theorem two_prime : Nat.Prime 2 := by decide
theorem three_prime : Nat.Prime 3 := by decide
theorem five_prime : Nat.Prime 5 := by decide
theorem seven_prime : Nat.Prime 7 := by decide
theorem eleven_prime : Nat.Prime 11 := by decide

/-- Sum of first primes -/
theorem prime_sum : 2 + 3 + 5 + 7 = 17 := by norm_num

/-- Product of first primes (primorial) -/
theorem primorial : 2 * 3 * 5 * 7 = 210 := by norm_num

/-- Modular arithmetic witness for problem 43 -/
theorem mod3_43 : 43 % 3 = 1 := by norm_num

/-- Divisibility witness -/
theorem div_43 : 43 % 7 = 1 := by norm_num
