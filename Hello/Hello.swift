public func hello(people: [String]) -> String {
  if people.isEmpty {
    return "Hello World"
  } else if people.count < 3 {
    return "Hello " + people.joinWithSeparator(" and ")
  }

  let commaSeparatedPeople = people[0..<people.endIndex - 1].joinWithSeparator(", ")
  return "Hello \(commaSeparatedPeople) and \(people.last!)"
}
