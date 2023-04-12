//
//  MenuItemTests.swift
//  Coursera_AdvSwift_Week4Tests
//
//  Created by Robert Palmer on 4/10/23.
//

import XCTest

@testable import Coursera_AdvSwift_Week4

final class MenuItemTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the 
      
    }
    
    func testMenuItemTitle() throws{
        let sampleTitle = "Food Item 9"
        let sampleMenuItem:MenuItem = MenuItem(foodImage: "Little Lemon logo", foodName: "Food Item 9", foodPrice: 10.99, numOrdered: 5, foodIngredients: [Ingredient.Broccoli, Ingredient.Pasta])
        
        XCTAssertEqual(sampleTitle, sampleMenuItem.foodTitle)
    }
    
    func testMenuItemIngredients() throws {
        let sampleIngredient = ["Carrot", "Spinach", "Broccoli"]
        let sampleMenuItem : MenuItem = MenuItem(foodImage: "Little Lemon logo", foodName: "Food Item 9", foodPrice: 10.99, numOrdered: 5, foodIngredients: [.Carrot, .Spinach, .Broccoli])
        
        XCTAssertEqual(sampleIngredient, sampleMenuItem.foodIngredients.map({ Ingredient in
            Ingredient.rawValue
        }))
    }
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
