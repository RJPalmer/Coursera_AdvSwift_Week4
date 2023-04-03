//
//  ContentView.swift
//  Coursera_AdvSwift_Week4
//
//  Created by Robert Palmer on 3/1/23.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var test:MenuViewViewModel
    
       var body: some View {
        NavigationStack {
            VStack{
                LittleLemonHeader().environmentObject(test)
//                test.itemFilter = $currentFilter
                //display categories based on test.itemFilter
                switch(test.itemFilter){
                
                case MenuCategory.Dessert?:
                    MenuItemsView( foodItems: test.desertMenuItems).environmentObject(test)
                case MenuCategory.Drink?:
                    MenuItemsView( foodItems:test.DrinkMenuItems).environmentObject(test)
                case MenuCategory.Food?:
                    MenuItemsView( foodItems: test.foodMenuItems).environmentObject(test)
                default:
                    MenuItemsView(foodItems: test.foodMenuItems + test.DrinkMenuItems + test.desertMenuItems)
                        .environmentObject(test)
                        
                }
            }.environmentObject(test)
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View {
        ContentView().environmentObject(MenuViewViewModel())
    }
}

func initMenu() -> MenuViewViewModel {
    let menu: MenuViewViewModel = MenuViewViewModel()
    
    return menu
}
