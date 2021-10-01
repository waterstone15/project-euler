divisible = (num, divisors) ->
  for d in divisors
    if num % d != 0
      return false
  return true

(->
  range = [1..20]
  number = 1
  number++ while !divisible(number, range)

  console.log number
  return
)()