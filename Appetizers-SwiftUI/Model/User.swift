//
//  User.swift
//  Appetizers-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/26/24.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
