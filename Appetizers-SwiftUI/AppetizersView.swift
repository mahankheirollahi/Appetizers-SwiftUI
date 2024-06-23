//
//  AppetizersView.swift
//  Appetizers-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/23/24.
//

import SwiftUI

struct AppetizersView: View {
    var body: some View {
        NavigationView{
            List(MockData.appetizers){ appetizer in
               AppetizerListTile(appetizer: appetizer)
            }.navigationTitle("Appetizers")
        }
    }
}

#Preview {
    AppetizersView()
}
