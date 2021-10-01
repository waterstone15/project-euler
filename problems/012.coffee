_            = require('lodash')
map          = require('lodash/map')
{ DateTime } = require('luxon')

divisors = (number) ->
  ds = []
  for dividend in [Math.floor(Math.sqrt(number))..1]
    ds.push(dividend) if number % dividend == 0
  return ds


(->
  start = DateTime.local().setZone('utc')

  triangle = 0
  natural = 1

  while true
    triangle += natural
    natural++
    ds = divisors(triangle)
    if ds.length > 250
      console.log natural, triangle, ds.length
      break

  end = DateTime.local().setZone('utc')
  console.log end.diff(start).toObject()
  return
)()

