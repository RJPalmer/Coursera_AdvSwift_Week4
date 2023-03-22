//
//  MenuViewViewModel.swift
//  Coursera_AdvSwift_Week4
//
//  Created by Robert Palmer on 3/1/23.
//

import Foundation

class MenuViewViewModel{
    internal init(foodMenuItems: [MenuItem], DrinkMenuItems: [MenuItem], desertMenuItems: [MenuItem]) {
        self.foodMenuItems = foodMenuItems
        self.DrinkMenuItems = DrinkMenuItems
        self.desertMenuItems = desertMenuItems
    }
    
    init(){
        self.foodMenuItems = []
        self.DrinkMenuItems = []
        self.desertMenuItems = []
    }
    
    convenience init(numFoodItems:Int, numDrinkItems:Int, numDesertItems: Int){
        self.init()
        
    }
    var foodMenuItems : [MenuItem]
    var DrinkMenuItems : [MenuItem]
    var desertMenuItems: [MenuItem]
    
    func addNewMenuItem(newItem: MenuItem){
       let item = newItem
        switch item.foodCategory {
        case MenuCategory.Food:
            foodMenuItems.append(item)
        case MenuCategory.Drink:
            DrinkMenuItems.append(item)
        case MenuCategory.Dessert:
            desertMenuItems.append(item)
        }
        
    }
    
    func loadMenu(){
        
    }
}

