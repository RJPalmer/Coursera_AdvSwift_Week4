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
    
    var foodMenuItems : [MenuItem]
    var DrinkMenuItems : [MenuItem]
    var desertMenuItems: [MenuItem]
}
