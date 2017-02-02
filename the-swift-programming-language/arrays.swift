var shoppingList = [
  "catfish", "cucumbers",
  "almonds", "rice"
]
print(shoppingList[1])

var occupations = [
  "Spongebob": "Fry cook",
  "Squidward": "Cashier"
]

occupations["Mr. Krabs"] = "Owner"

for occupation in occupations {
  print(occupation.0 + " is the " + occupation.1)
}

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var evenSum = 0
var oddSum = 0

for number in numbers {
  if number % 2 == 0 {
    evenSum += number
  } else {
    oddSum += number
  }
}

print("Even sum: " + String(evenSum) + "\nOdd sum: " + String(oddSum))
