import Spectre
import Hello

describe("hello") {
  $0.it("should return 'Hello World' when no names were supplied") {
    try expect(hello([])) == "Hello World"
  }

  $0.context("when given a single name") {
    $0.it("should return 'Hello' and the given name") {
      try expect(hello(["Kyle"])) == "Hello Kyle"
    }
  }

  $0.context("when given two names") {
    $0.it("should return 'Hello' and the given names separated by 'and'") {
      try expect(hello(["Kyle", "Katie"])) == "Hello Kyle and Katie"
    }
  }

  $0.context("when given three or more names") {
    $0.it("should return 'Hello' and the names separated by comma and 'and'") {
      try expect(hello(["Kyle", "Conche", "Katie"])) == "Hello Kyle, Conche and Katie"
    }
  }
}
