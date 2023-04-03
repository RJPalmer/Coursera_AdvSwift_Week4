//
//  LittleLemonHeader.swift
//  Coursera_AdvSwift_Week4
//
//  Created by Robert Palmer on 3/2/23.
//

import SwiftUI

struct LittleLemonHeader: View {
    @EnvironmentObject var test:MenuViewViewModel
    
    var body: some View {
        
            HStack(spacing: 0.0) {
                Text("Menu")
                    .padding(.horizontal)
                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, alignment: .leading)
                Spacer()
                NavigationLink(destination: MenuItemsOptionView().environmentObject(test), label: {Image(systemName: "slider.horizontal.3")})
                    .environmentObject(test)
                    .padding(.trailing)
            }
    }
}

struct LittleLemonHeader_Previews: PreviewProvider {

    static var previews: some View {
        LittleLemonHeader()
            .frame(width: .infinity, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            .environmentObject(MenuViewViewModel())
    }
}
