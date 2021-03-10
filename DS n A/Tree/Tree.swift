//
//  Tree.swift
//  DS n A
//
//  Created by Rohit Saini on 30/07/20.
//  Copyright © 2020 AccessDenied. All rights reserved.
//

import Foundation

public class TreeNode<T>{
    public var value: T
    public var childreen: [TreeNode] = []
    public init(_ value: T){
        self.value = value
    }
    
    public func add(_ child: TreeNode){
        self.childreen.append(child)
    }
}

extension TreeNode{
    public func forEachDepthFirst(visit: (TreeNode) -> Void){
        visit(self)
        childreen.forEach {
            $0.forEachDepthFirst(visit: visit)
        }
        
    }
}

