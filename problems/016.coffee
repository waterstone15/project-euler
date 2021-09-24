# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 21000?

toInteger    = require('lodash/toInteger')
add          = require('lodash/add')
{ DateTime } = require('luxon')

(->
  start_time = DateTime.local().setZone('utc')

  big = 2n ** 1000n
  sum = big
    .toString()
    .split('')
    .map((n) -> toInteger(n))
    .reduce(add, 0)

  console.log sum

  end_time = DateTime.local().setZone('utc')
  console.log end_time.diff(start_time).toObject()
  return
)()

