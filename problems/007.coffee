isPrime = (number) ->
  if number == 1
    false
  else if number == 2
    true
  else
    dividend = 2
    while dividend < number
      if number % dividend == 0
        return false
      dividend++
    true

(->

  int = 0
  count = 0
  while count < 10001
    int++
    if isPrime(int)
      count++

  console.log int

)()