//
//  MenuItemsView.swift
//  Coursera_AdvSwift_Week4
//
//  Created by Robert Palmer on 3/1/23.
//

import SwiftUI

struct MenuItemsView: View {
    var body: some View {
        List{
            ForEach(MenuCategory.allCases, id: \.self){
                value in Text(value.rawValue)
            }
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
