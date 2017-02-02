var n = 2
while n < 100 {
  n *= 2
}
print(n)

var m = 100
repeat {
  m /= 2
} while m > 2
print(m)

var total = 0
for i in 0...4 {
  total += i
}
print(total)
