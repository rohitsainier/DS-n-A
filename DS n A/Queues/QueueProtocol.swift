//
//  QueueProtocol.swift
//  DS n A
//
//  Created by Rohit Saini on 23/07/20.
//  Copyright © 2020 AccessDenied. All rights reserved.
//

import Foundation

public protocol Queue {
    associatedtype Element
    mutating func enqueue(_ element: Element) -> Bool
    mutating func dequeue() -> Element?
    var isEmpty:Bool {get}
    var peek: Element? {get}
}
