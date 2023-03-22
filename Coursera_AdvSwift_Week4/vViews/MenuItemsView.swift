//
//  MenuItemsView.swift
//  Coursera_AdvSwift_Week4
//
//  Created by Robert Palmer on 3/1/23.
//

import SwiftUI

struct MenuItemsView: View {
    var foodItems : [MenuItem] = []
    
    init(foodItems: [MenuItem]) {
        self.foodItems = foodItems
    }
    var body: some View {
        List{
                ForEach(MenuCategory.allCases, id: \.self){
                    value in Section(header: Text(value.rawValue)){
                        HStack{
                            ForEach(foodItems,id: \.id){
                                foodItem in FoodItemView(item:foodItem)
                            }
                            
                                
                        }
                    }
                }
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static let items: [MenuItem] = []
    static var previews: some View {
        MenuItemsView(foodItems: items)
    }
}
