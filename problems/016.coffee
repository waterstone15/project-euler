add       = require('lodash/add')
toInteger = require('lodash/toInteger')

(->
  big = 2n ** 1000n
  sum = big
    .toString()
    .split('')
    .map((n) -> toInteger(n))
    .reduce(add, 0)

  console.log sum
  return
)()

