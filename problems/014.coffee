_            = require('lodash')
{ DateTime } = require('luxon')

cache = {}

collatz = (start) ->
  seq = [start]
  while seq[-1..][0] != 1
    n = seq[-1..][0]

    if cache["#{n}"]
      seq = [...seq, ...cache["#{n}"]]
    else if n % 2 == 0
      seq.push(n/2)
    else
      seq.push((3 * n) + 1)

  cache["#{start}"] = seq
  return seq

(->
  start_time = DateTime.local().setZone('utc')

  longest = _.reduce([1..1000000], (acc, num) ->
    res = collatz(num)
    if res.length > acc.length then { start: num, length: res.length } else acc
  , { start: 1, length: 1 })

  console.log longest

  end_time = DateTime.local().setZone('utc')
  console.log end_time.diff(start_time).toObject()
  return
)()

