
divisors = (number) ->
  ds = []
  for dividend in [Math.floor(Math.sqrt(number))..1]
    ds.push(dividend) if number % dividend == 0
  return ds


(->
  triangle = 0
  natural = 1

  while true
    triangle += natural
    natural++
    ds = divisors(triangle)
    if ds.length > 250
      console.log natural, triangle, ds.length
      break

  return
)()

