_            = require('lodash')
map          = require('lodash/map')
{ DateTime } = require('luxon')

(->
  start = DateTime.local().setZone('utc')

  max = 2000000
  max_factor = Math.ceil(Math.sqrt(max))

  sieve = map([0..max], -> true)
  sieve[0] = false
  sieve[1] = false

  for _p, p in sieve
    break if p > max_factor
    if sieve[p] == true
      for m in [p..max]
        break if p * m > max
        sieve[p * m] = false

  sum = _(sieve).reduce((acc, p, n) ->
    return if p then acc + n else acc
  , 0)

  console.log sum

  end = DateTime.local().setZone('utc')
  console.log end.diff(start).toObject()
  return
)()

