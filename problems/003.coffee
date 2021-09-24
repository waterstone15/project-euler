# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

sortBy = require('lodash/sortBy')
union  = require('lodash/union')

isPrime = (number) ->
  if number == 1
    false
  else if number == 2
    true
  else
    dividend = 2
    while dividend < number
      if number % dividend == 0
        return false
      dividend++
    true

(->
  number = 600851475143
  factors = []
  for dividend in [1..Math.sqrt(number)]
    if (number % dividend != 0)
      continue

    if isPrime(dividend)
      factors = union(factors, [dividend])

    if number != Math.sqrt(number) && isPrime(number / dividend)
      factors = union(factors, [number / dividend ])

  console.log sortBy(factors)[factors.length - 1]
  return
)()