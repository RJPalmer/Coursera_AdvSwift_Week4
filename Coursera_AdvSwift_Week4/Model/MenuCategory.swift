//
//  MenuCategory.swift
//  Coursera_AdvSwift_Week4
//
//  Created by Robert Palmer on 3/1/23.
//

import Foundation

enum MenuCategory : String, CaseIterable{
    case Food = "Food"
    case Drink = "Drink"
    case Dessert = "Dessert"
}

extension MenuCategory{
    init() {
        self = MenuCategory.allCases.randomElement()!
    }
}
