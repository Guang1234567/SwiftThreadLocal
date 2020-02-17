import Foundation

public class ThreadLocal<T>: NSObject {
    private let mCreate: () -> T

    public init(create: @escaping () -> T) {
        mCreate = create
    }

    public func get() -> T {
        let threadDictionary = Thread.current.threadDictionary
        if let cachedObject = threadDictionary[self] as? T {
            return cachedObject
        } else {
            let newObject = mCreate()
            threadDictionary.setObject(newObject, forKey: self)
            return newObject
        }
    }

    public func set(_ newObject: T) {
        let threadDictionary = Thread.current.threadDictionary
        threadDictionary.setObject(newObject, forKey: self)
    }

    public func remove() {
        let threadDictionary = Thread.current.threadDictionary
        threadDictionary.removeObject(forKey: self)
    }
}
