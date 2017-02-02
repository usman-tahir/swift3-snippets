func greet(person: String, day: String?) -> String {
  var result = "Hello, \(person)! "
  if let currentDay = day {
    result += "Today is: \(currentDay)"
  }
  return result
}

func revisedGreet(_ person: String, on day: String?) -> String {
  var result = "Hello, \(person)! "
  if let currentDay = day {
    result += "Today is: \(currentDay)"
  }
  return result
}

print(greet(person: "Usman", day: nil))
print(greet(person: "Usman", day: "Wednesday"))
print(revisedGreet("Usman", on: nil))

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
  var min = scores[0]
  var max = scores[0]
  var sum = 0

  for score in scores {
    sum += score
    if score > max {
      max = score
    } else if score < min {
      min = score
    }
  }
  return (min, max, sum)
}

let statistics = calculateStatistics(scores: [1, 2, 3, 4, 5])
print(statistics.min, terminator: " ")
print(statistics.max, terminator: " ")
print(statistics.sum)

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
  for item in list {
    if condition(item) {
      return true
    }
  }
  return false
}

func lessThan10(number: Int) -> Bool {
  return number < 10
}

var elements = [1, 2, 3, 4, 5, 6]
print(hasAnyMatches(list: elements, condition: lessThan10))

elements = elements.map({
  (number: Int) -> Int in
  let result = 3 * number
  return result
})

print(elements)
