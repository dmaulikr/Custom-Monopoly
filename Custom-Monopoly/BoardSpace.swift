//
//  BoardSpace.swift
//  Custom-Monopoly
//
//  Created by David Mattia on 2/20/16.
//  Copyright © 2016 David Mattia. All rights reserved.
//

import UIKit

protocol BoardSpace {
    var space_name : String {get}
    var board_index : Int {get}
}

extension BoardSpace {
    func on_land() {
        print("landed on space: \(self.space_name)")
    }
    func on_leave() {
        print("leaving space: \(self.space_name)")
    }
}

protocol Ownable : BoardSpace {
    var space_name : String {get}
    var price : Int {get}
}

extension Ownable {
    func on_buy() {
        print("Bought property: \(self.space_name)")
    }
    func on_mortgage() {
        print("Mortgaged property: \(self.space_name)")
    }
}

class Property: Ownable {
    var board_index : Int
    var space_name : String
    var price : Int
    var color : UIColor
    
    init(name: String, cost: Int, index: Int, color: UIColor) {
        self.space_name = name
        self.price = cost
        self.board_index = index
        self.color = color
    }
}

class Railroad : Ownable {
    var board_index : Int
    var space_name : String
    var price : Int
    
    init(name: String, cost: Int, index: Int) {
        self.space_name = name
        self.price = cost
        self.board_index = index
    }
}