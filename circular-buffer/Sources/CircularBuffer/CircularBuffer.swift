//Solution goes in Sources
class CircularBuffer<T> {
    let capacity: Int
    var buffer = [T]()
    
    init(capacity: Int) {
        self.capacity = capacity
    }
    
    func write(_ element: T) throws {
        guard buffer.count < capacity else {
            throw CircularBufferError.bufferFull
        }
        
        buffer.append(element)
    }
    
    func read() throws -> T {
        guard !buffer.isEmpty else {
            throw CircularBufferError.bufferEmpty
        }
        
        return buffer.removeFirst()
    }
    
    func clear() {
        buffer = [T]()
    }
    
    func overwrite(_ element: T) {
        if buffer.count < capacity {
            try? write(element)
        } else {
            buffer.removeFirst()
            buffer.append(element)
        }
    }
}

enum CircularBufferError: Error {
    case bufferEmpty
    case bufferFull
}
