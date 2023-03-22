//
//  ContentView.swift
//  Coursera_AdvSwift_Week4
//
//  Created by Robert Palmer on 3/1/23.
//

import SwiftUI

struct ContentView: View {
    var test:MenuViewViewModel = initMenu()
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("MENUKOOL")
            LittleLemonHeader()
            MenuItemsView(foodItems: test.foodMenuItems)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func initMenu() -> MenuViewViewModel {
    let menu: MenuViewViewModel = MenuViewViewModel()
    
    
    
    return menu
}
