fact = (n) -> if (n > 0) then n * fact(n - 1) else 1

(->
  ds = 20
  rs = 20
  paths = fact(ds + rs) / (fact(ds) * fact(rs))
  console.log paths
  return
)()

