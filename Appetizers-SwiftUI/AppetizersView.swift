//
//  AppetizersView.swift
//  Appetizers-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/23/24.
//

import SwiftUI

struct AppetizersView: View {
    
    @StateObject var viewModel = AppetizerViewModel()
 
    
    var body: some View {
        NavigationView{
            List(viewModel.appetizers){ appetizer in
                AppetizerListTile(appetizer: appetizer)
            }.navigationTitle("Appetizers")
        }
        .onAppear{
            viewModel.getAppetizers()
    }
    }
  
}

#Preview {
    AppetizersView()
}
