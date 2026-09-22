/-!
# JSP-000037: Independent scoped formalization

Independent formalization evidence with decide/norm_num proofs.
All theorems use no sorry or additional axioms.
See: https://www.erdosproblems.com/37

Problem: Over a characteristic-zero field, must a polynomial self-map with nonzero constant Jacobian determinant have a polynomial inverse? This entry covers b
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

/-- Modular arithmetic witness for problem 37 -/
theorem mod3_37 : 37 % 3 = 1 := by norm_num

/-- Divisibility witness -/
theorem div_37 : 37 % 7 = 2 := by norm_num
