# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

join     = require('lodash/join')
reverse  = require('lodash/reverse')
sortBy   = require('lodash/sortBy')
split    = require('lodash/split')
toString = require('lodash/toString')
union    = require('lodash/union')

isPalindrome = (n) ->
  n   = toString(n)
  mid = Math.ceil(n.length / 2)
  front = n[...mid]
  back  = n[-mid..]
  return front == join(reverse(split(back, '')), '')

(->
  products = []

  for n1 in [999..1] by -1
    for n2 in [999..1] by -1
      product = n1 * n2
      if isPalindrome(product)
        products = union(products, [ product ])

  console.log sortBy(products)[products.length - 1]
  return
)()