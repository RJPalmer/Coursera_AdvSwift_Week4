//
//  MenuItemView.swift
//  Coursera_AdvSwift_Week4
//
//  Created by Robert Palmer on 3/4/23.
//

import SwiftUI

struct FoodItemView: View {
    
    var item = MenuItem()
    var body: some View{
        VStack{
            Image(item.foodImage)
                .resizable()
                .padding(.bottom)
                .frame(width: 50, height: 100)
            Text(item.foodTitle)
                .multilineTextAlignment(.center)
        }
    }
}

struct FoodItemView_Previews: PreviewProvider {
    static var previews: some View {
        FoodItemView()
    }
}
