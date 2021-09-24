# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

divisible = (num, divisors) ->
  for d in divisors
    if num % d != 0
      return false
  return true

(->
  range = [1..20]
  number = 1
  number++ while !divisible(number, range)

  console.log number
  return
)()