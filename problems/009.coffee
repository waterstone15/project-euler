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

