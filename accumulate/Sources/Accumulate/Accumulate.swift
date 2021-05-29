//Solution goes in Sources
extension Array {
    func accumulate<U>(_ operation: (Element) -> U) -> Array<U> {
        var collection = Array<U>()
        for index in self {
            collection.append(operation(index))
        }
        return collection
    }
}
