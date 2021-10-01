(->
  fib = [ 1, 2 ]
  sum = 2

  next = 0
  while next <= 4000000
    next = fib[0] + fib[1]
    sum += next if next % 2 == 0
    fib = [fib[1], next]

  console.log sum
  return
)()