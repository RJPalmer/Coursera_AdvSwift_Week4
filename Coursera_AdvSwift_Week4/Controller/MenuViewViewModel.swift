//
//  MenuViewViewModel.swift
//  Coursera_AdvSwift_Week4
//
//  Created by Robert Palmer on 3/1/23.
//

import Foundation

class MenuViewViewModel : ObservableObject{
    internal init(foodMenuItems: [MenuItem], DrinkMenuItems: [MenuItem], desertMenuItems: [MenuItem], itemFilter: MenuCategory, itemSort: SortCategory) {
        self.foodMenuItems = foodMenuItems
        self.DrinkMenuItems = DrinkMenuItems
        self.desertMenuItems = desertMenuItems
        self.itemFilter = itemFilter
        self.itemSort = itemSort
    }
    

    init(){
        self.foodMenuItems = []
        self.DrinkMenuItems = []
        self.desertMenuItems = []
        self.itemSort = SortCategory.byAlphabet
        self.itemFilter = MenuCategory.Food
    }
    
    convenience init(numFoodItems:Int, numDrinkItems:Int, numDesertItems: Int){
        self.init()
        self.loadItems(numItems: numFoodItems, itemType: MenuCategory.Food)
        self.loadItems(numItems: numDrinkItems, itemType: MenuCategory.Drink)
        self.loadItems(numItems: numDesertItems, itemType: MenuCategory.Dessert)
        
    }
   @Published var foodMenuItems : [MenuItem]
    @Published var DrinkMenuItems : [MenuItem]
    @Published var desertMenuItems: [MenuItem]
    @Published var itemFilter:MenuCategory?
    @Published var itemSort:SortCategory
    
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
    
    func loadItems(numItems:Int, itemType:MenuCategory) -> (){
        var counter:Int = 0
        var newFoodItem:MenuItem
        while(counter < numItems){
            newFoodItem = MenuItem(menuItemType: itemType)
            switch(itemType){
            case MenuCategory.Food:
                foodMenuItems.append(newFoodItem)
            case MenuCategory.Drink:
                DrinkMenuItems.append(newFoodItem)
            case MenuCategory.Dessert:
                desertMenuItems.append(newFoodItem)
            }
            counter += 1;
        }
    }
}

