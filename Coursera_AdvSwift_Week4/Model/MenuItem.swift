//
//  FoodItem.swift
//  Coursera_AdvSwift_Week4
//
//  Created by Robert Palmer on 3/4/23.
//

import Foundation


/// Describes information about a food item
protocol FoodItem: ObservableObject{
    var id: UUID {get}
    var foodImage: String {get set}
    var foodCategory: MenuCategory {get}
    var foodTitle : String {get}
    var foodPrice : Double {get}
    var numOrdered : Int {get set}
    var secondPrice: Int {get set}
    var foodIngredients : [Ingredient] {get set}
}


class MenuItem: FoodItem, Equatable, Hashable, Comparable{
    static func < (lhs: MenuItem, rhs: MenuItem) -> Bool {
        return lhs.foodTitle < rhs.foodTitle
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(foodImage)
        hasher.combine(foodCategory)
        hasher.combine(foodTitle)
        hasher.combine(foodPrice)
        hasher.combine(numOrdered)
        hasher.combine(secondPrice)
        hasher.combine(foodIngredients)
    }
    
    var id: UUID
    
    var foodImage: String
    
    var foodCategory: MenuCategory
    
    var foodTitle: String
    
    var foodPrice: Double
    
    var numOrdered: Int
    
    var secondPrice: Int
    
    var foodIngredients: [Ingredient]
    
    required init(foodImage: String, foodName: String, foodPrice: Double, numOrdered: Int, foodIngredients: [Ingredient]) {
        self.foodImage = foodImage
        self.foodTitle = foodName
        self.foodPrice = foodPrice
        self.numOrdered = numOrdered
        self.foodIngredients = foodIngredients
        self.foodCategory = MenuCategory()
        self.id = UUID()
        self.secondPrice = 0
    }
    
    required init() {
        self.id = UUID()
        self.foodImage = "Little Lemon logo"
        self.foodTitle = "Food Item 1"
        self.foodPrice = 0.00
        self.numOrdered = 0
        self.secondPrice = 0
        self.foodIngredients = []
        self.foodCategory = MenuCategory()
    }
    
    required init(menuItemType: MenuCategory){
        let ident:Int = Int.random(in: 1..<99)
        self.id = UUID()
        self.foodImage = "Little Lemon logo"
        self.foodTitle = "Food Item \(ident)"
        self.foodPrice = Double.random(in: 9.99..<30.00)
        self.numOrdered = Int.random(in: 1..<100)
        self.secondPrice = 0
        self.foodIngredients = []
        self.foodCategory = menuItemType
    }
    static func == (lhs: MenuItem, rhs: MenuItem) -> Bool {
        return lhs.id == rhs.id &&
        lhs.foodImage == rhs.foodImage &&
        lhs.foodCategory == rhs.foodCategory &&
        lhs.foodTitle == rhs.foodTitle &&
        lhs.foodPrice == rhs.foodPrice &&
        lhs.numOrdered == rhs.numOrdered &&
        lhs.secondPrice == rhs.secondPrice &&
        lhs.foodIngredients == rhs.foodIngredients
    }
}

