add       = require('lodash/add')
toInteger = require('lodash/toInteger')

fact = (n) -> if (n > 0n) then n * fact(n - 1n) else 1n

(->
  big = fact(100n)
  sum = big
    .toString()
    .split('')
    .map((n) -> toInteger(n))
    .reduce(add, 0)

  console.log sum
  return
)()

