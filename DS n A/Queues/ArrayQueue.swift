//
//  ArrayQueue.swift
//  DS n A
//
//  Created by Rohit Saini on 23/07/20.
//  Copyright © 2020 AccessDenied. All rights reserved.
//

import Foundation

public struct QueueArray<T>:Queue{
    private var array:[T] = []
    public init(){}
    public var isEmpty: Bool{
        return array.isEmpty
    }
    public var peek: T?{
        return array.first
    }
    public mutating func enqueue(_ element: T) -> Bool {
        array.append(element)
        return true
    }
    public mutating func dequeue() -> T? {
        return isEmpty ? nil : array.removeFirst()
    }
}

extension QueueArray:CustomStringConvertible{
    public var description: String{
        return array.description
    }
}
