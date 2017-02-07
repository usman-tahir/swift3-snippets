class Shape {
  var numberOfSides = 0
  func simpleDescription() -> String {
    return "A shape with \(numberOfSides) sides"
  }
}

class NamedShape {
  var numberOfSides: Int = 0
  var name: String

  init(name: String) {
    self.name = name
  }

  func simpleDescription() -> String {
    return "A shape with \(numberOfSides) sides."
  }
}

// Object 'Inheritance'
class Square: NamedShape {
  var sideLength: Double

  init(sideLength: Double, name: String) {
    self.sideLength = sideLength;
    super.init(name: name)
    numberOfSides = 4
  }

  func area() -> Double {
    return sideLength * sideLength
  }

  override func simpleDescription() -> String {
    return "A square with sides of length \(sideLength)."
  }
}

var square = Shape()
square.numberOfSides = 4
print(square.simpleDescription())

var triangle = NamedShape(name: "triangle")
triangle.numberOfSides = 3
print(triangle.name)
print(triangle.simpleDescription())

var newShape = Square(sideLength: 4, name: "square")
print(newShape.simpleDescription())
print(newShape.area())
