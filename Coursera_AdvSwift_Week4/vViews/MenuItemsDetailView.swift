//
//  MenuItemsDetailView.swift
//  Coursera_AdvSwift_Week4
//
//  Created by Robert Palmer on 3/1/23.
//

import SwiftUI

struct MenuItemsDetailView: View {
    @StateObject var item = MenuItem()
    var body: some View {
       
        VStack{
            Image(item.foodImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Rectangle()
                .padding(.all)
                .frame(width: 300.0, height: 40.0)
                
            
            Text(item.foodTitle)
                .font(.title)
                .fontWeight(.bold)
                .padding(.top)
                
        }
        .frame(width: 500.0, height: 500.0)
    }
}

struct MenuItemsDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        MenuItemsDetailView()
    }
}
