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

class MenuItem: FoodItem{
    
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
        self.foodCategory = MenuCategory.Food
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
}

