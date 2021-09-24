# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 55^2 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is .
# 3025 - 385 = 2640

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

add      = require('lodash/add')
map      = require('lodash/map')
reduce   = require('lodash/reduce')

square   = (a) -> a * a

(->
  range = [1..100]
  sum_of_squares = reduce(map(range, square), add)
  square_of_sum = square(reduce(range, add))

  console.log square_of_sum - sum_of_squares
  return
)()