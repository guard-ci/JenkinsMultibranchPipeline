public struct Basic {
    public var x: Int
    public var y: Int

    public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

func testHound() -> Int {
    var x: Int?
    x = 0
    return x!
}

