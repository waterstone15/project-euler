(->
  sum = 0
  for m in [1..999]
    (sum += m) if (m % 3 == 0 or m % 5 == 0)

  console.log sum
  return
)()