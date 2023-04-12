//
//  MenuItemsView.swift
//  Coursera_AdvSwift_Week4
//
//  Created by Robert Palmer on 3/1/23.
//

import SwiftUI

struct MenuItemsView: View {
    @EnvironmentObject var test:MenuViewViewModel
    
    var items : [MenuItem] = []
//    private var food:[MenuCategory : Int]
    internal init(test: MenuViewViewModel, items: [MenuItem] = [], food: [MenuCategory : Int]) {
        self.items = items
//        self.food = food
    }

    init(foodItems: [MenuItem]) {
        self.items = []
        self.items = foodItems
    }
    private var gridItemLayout = [GridItem(.adaptive(minimum: 50))]
    
    var body: some View {
//        var display = items.filter({$0.foodCategory == test.itemFilter})
        
       
//        List{
//            ForEach(MenuCategory.allCases, id: \.self){
//                value in Section(header: Text(value.rawValue)) {
//                    HStack{
//
//                        ForEach(display, id: \.id){
//                            foodItem in FoodItemView(item:foodItem).environmentObject(test)
//                        }
//                    }
//                }
//            }
//        }.environmentObject(test)
      
        List{
            Section {
                ScrollView {
                    LazyVGrid(columns: gridItemLayout, content: {
                        
                        ForEach(displayItems.sorted(by: {itemA,itemB in switch(test.itemSort){
                            
                        case .byMostPopular:
                            return itemA.numOrdered > itemB.numOrdered
                        case .byPrice:
                            return itemA.foodPrice < itemB.foodPrice
                        default:
                            return itemA.foodTitle < itemB.foodTitle
                            
                        }}), id: \.self){
                            displayItem in NavigationStack{
                                HStack{
                                    NavigationLink(value: displayItem){
                                        FoodItemView(item: displayItem)
                                    }
                                }.navigationDestination(for: MenuItem.self) { item in
                                    MenuItemsDetailView(item: item)
                                }
                            }
                        }
                    }) 
                }
            } header: {
                    Text("\(String(describing: test.itemFilter!.rawValue))")
                }

                
            
        }
    }
    
    var displayItems: [MenuItem] {
        switch (test.itemFilter){
        case .none:
            return items
            
        case .Food:
            return items.filter { MenuItem in
                MenuItem.foodCategory == MenuCategory.Food
            }
        case .Drink:
            return items.filter { MenuItem in
                MenuItem.foodCategory == MenuCategory.Drink
            }
        case .Dessert:
            return items.filter { MenuItem in
                MenuItem.foodCategory == MenuCategory.Dessert
            }
        }
    }
}
        
struct MenuItemsView_Previews: PreviewProvider {

    static let item:[MenuItem] = []
    static var previews: some View {
        MenuItemsView(foodItems: item).environmentObject(MenuViewViewModel())
    }
}
