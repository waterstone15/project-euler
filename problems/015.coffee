# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

# How many such routes are there through a 20×20 grid?

{ DateTime } = require('luxon')

fact = (n) -> if (n > 0) then n * fact(n - 1) else 1

(->
  start_time = DateTime.local().setZone('utc')

  # it takse 20 down moves and 20 right moves to traverse a 20x20 grid
  ds = 20
  rs = 20
  paths = fact(ds + rs) / (fact(ds) * fact(rs))
  console.log paths

  end_time = DateTime.local().setZone('utc')
  console.log end_time.diff(start_time).toObject()
  return
)()

