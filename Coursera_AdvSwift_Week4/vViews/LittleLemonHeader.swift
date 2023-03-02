//
//  LittleLemonHeader.swift
//  Coursera_AdvSwift_Week4
//
//  Created by Robert Palmer on 3/2/23.
//

import SwiftUI

struct LittleLemonHeader: View {
    var body: some View {
        Text("Menu")
            .font(.headline)
            .fontWeight(.bold)
            .foregroundColor(Color.yellow)
            .multilineTextAlignment(.leading)
            .lineLimit(nil)
            .padding(.trailing, 225.0)
            
            
            
            
    }
}

struct LittleLemonHeader_Previews: PreviewProvider {
    static var previews: some View {
        LittleLemonHeader()
    }
}
