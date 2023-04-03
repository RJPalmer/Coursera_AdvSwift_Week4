//
//  SortCategory.swift
//  Coursera_AdvSwift_Week4
//
//  Created by Robert Palmer on 3/24/23.
//

import Foundation

enum SortCategory:String, CaseIterable {
    case byMostPopular = "Most Popular"
    case byPrice = "Price $-$$$"
    case byAlphabet = "A-Z"
    
}

extension SortCategory{
    init() {
        self = SortCategory.allCases.randomElement() ?? SortCategory.byAlphabet
    }
}
