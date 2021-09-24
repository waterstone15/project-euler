# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

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

