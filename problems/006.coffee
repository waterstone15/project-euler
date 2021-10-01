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