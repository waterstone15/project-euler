# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

isInteger = require('lodash/isInteger')

(->

  target = 1000

  for a in [1..target]
    for b in [1..target]
      c_sqr = (a * a) + (b * b)
      c = Math.sqrt(c_sqr)
      if isInteger(Math.sqrt(c_sqr)) && (a + b + c) == target
        console.log a, b, c, (a * b * c)
        return

  return
)()

