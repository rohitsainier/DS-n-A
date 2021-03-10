//
//  ContentView.swift
//  DS n A
//
//  Created by Rohit Saini on 16/07/20.
//  Copyright © 2020 AccessDenied. All rights reserved.
//

import UIKit
import Foundation
import SwiftUI

class ContentView: UIViewController {
    override func viewDidLoad() {
        var tree:BinaryNode<Int>{
            let zero = BinaryNode(value:0)
            let five = BinaryNode(value:5)
            let seven = BinaryNode(value:7)
            let two = BinaryNode(value:2)
            let one = BinaryNode(value:1)
            
            seven.leftChild = one
            seven.rightChild = two
            one.leftChild = five
            five.leftChild = zero
            return seven
        }
        print(tree)
        
    }
} 


