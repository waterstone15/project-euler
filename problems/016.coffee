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

