//
//  Appetizer.swift
//  Appetizers-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/23/24.
//

import Foundation

struct Appetizer: Decodable,Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData{
    static let sampleAppetizerOne = Appetizer(id: 0001,
                                      name: "Test 1",
                                      description: "Some Description for appetizer 1",
                                      price: 9.99,
                                      imageURL: "",
                                      calories: 99,
                                      protein: 99,
                                      carbs: 99)
    
    static let sampleAppetizerTwo = Appetizer(id: 0002,
                                      name: "Test 2",
                                      description: "Some Description for appetizer 2",
                                      price: 9.99,
                                      imageURL: "",
                                      calories: 99,
                                      protein: 99,
                                      carbs: 99)
    
    static let sampleAppetizerThree = Appetizer(id: 0003,
                                      name: "Test 3",
                                      description: "Some Description for appetizer 3",
                                      price: 9.99,
                                      imageURL: "",
                                      calories: 99,
                                      protein: 99,
                                      carbs: 99)
    
    static let appetizers = [sampleAppetizerOne,sampleAppetizerTwo,sampleAppetizerThree]
}
