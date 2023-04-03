//
//  MenuItemsOptionView.swift
//  Coursera_AdvSwift_Week4
//
//  Created by Robert Palmer on 3/1/23.
//

import SwiftUI
import OSLog

struct MenuItemsOptionView: View {
    @EnvironmentObject var test:MenuViewViewModel
    let logfile = Logger()
    
    var body: some View {
        VStack{
            Section(content: {
                List(content: {
                    Picker("Selected Categories", selection: self.$test.itemFilter, content: {
                        ForEach(MenuCategory.allCases, id: \.self, content: {
                            value in Text(value.rawValue).tag(value as MenuCategory?)
                        })
                    })
                    .onChange(of: test.itemFilter) { newValue in
                        print("Current Value: \(String(describing: newValue?.rawValue))" )
                    }
                    .pickerStyle(.inline)

                    
                    Picker("Sort By", selection: self.$test.itemSort, content: {
                        ForEach(SortCategory.allCases, id: \.self, content: {
                            value in Text(value.rawValue).tag(value as SortCategory)
                        })
                    })
                    .pickerStyle(.inline)
                })
            })
        }
        
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    
    static var previews: some View {
        MenuItemsOptionView().environmentObject(MenuViewViewModel())
    }
}
