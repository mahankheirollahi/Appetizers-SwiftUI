//
//  Appetizers_SwiftUIApp.swift
//  Appetizers-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/23/24.
//

import SwiftUI

@main
struct Appetizers_SwiftUIApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizersTabView().environmentObject(order)
        }
    }
}
