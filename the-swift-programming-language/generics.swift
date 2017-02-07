func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
  var result = [Item]()

  for _ in 0..<numberOfTimes {
    result.append(item)
  }
  return result
}

func anyCommonElements<T: Sequence, U: Sequence where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element>(_ lhs: T, _ rhs: U) -> Bool {
  for lhsItem in lhs {
    for rhsItem in rhs {
      if lhsItem == rhsItem {
        return true
      }
    }
  }
  return false
}

print(makeArray(repeating: "knock", numberOfTimes: 4))
print(anyCommonElements([1, 2, 3], [3]))
