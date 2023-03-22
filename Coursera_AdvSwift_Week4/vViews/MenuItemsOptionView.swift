//
//  MenuItemsOptionView.swift
//  Coursera_AdvSwift_Week4
//
//  Created by Robert Palmer on 3/1/23.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @State var filterSelection: MenuCategory = .Food
    
    var body: some View {
        VStack{
            Section(content: {
                List(content: {
                    Picker("Filter", selection: $filterSelection, content: {
                        Text("Dessert").tag(MenuCategory.Dessert)
                    })
                    .pickerStyle(.inline)
                })
            })
        }
        
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
