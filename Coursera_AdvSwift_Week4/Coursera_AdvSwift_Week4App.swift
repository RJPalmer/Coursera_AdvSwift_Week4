//
//  Coursera_AdvSwift_Week4App.swift
//  Coursera_AdvSwift_Week4
//
//  Created by Robert Palmer on 3/1/23.
//

import SwiftUI

@main
struct Coursera_AdvSwift_Week4App: App {
    @StateObject var logic:MenuViewViewModel = MenuViewViewModel(numFoodItems: 12, numDrinkItems: 8, numDesertItems: 4)
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(logic)
        }
    }
}
