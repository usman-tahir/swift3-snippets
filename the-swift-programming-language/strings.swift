var optionalString: String? = nil
if let name = optionalString {
  print("Hello, " + name + "!")
} else {
  print("Hello, stranger.")
}

let vegetable = "red pepper"

switch vegetable {
case "celery":
  print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
  print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
  print("Is it a hot " + vegetable + "?")
default:
  print("Everything goes well in a soup.")
}
