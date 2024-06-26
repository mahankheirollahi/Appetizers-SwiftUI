//
//  AppetizersView.swift
//  Appetizers-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/23/24.
//

import SwiftUI

struct AppetizersView: View {
    
    @StateObject var viewModel = AppetizerViewModel()
    @State private var isShowingDetail = false
    @State private var selectedAppetizer: Appetizer?
 
    
    var body: some View {
        ZStack{
            NavigationView{
                List(viewModel.appetizers){ appetizer in
                    AppetizerListTile(appetizer: appetizer)
                        .onTapGesture {
                            selectedAppetizer = appetizer
                            isShowingDetail = true
                            
                        }
                }.navigationTitle("Appetizers")
                    .disabled(isShowingDetail)
            }
            .onAppear{
                viewModel.getAppetizers()
            }
            .blur(radius: isShowingDetail ? 20 : 0)
            
            if(isShowingDetail){
                AppetizerDetailView(appetizer: selectedAppetizer!,isShowingDetail: $isShowingDetail)
            }
            
            if viewModel.isLoading{
                LoadingView()
            }
           
            }
        .alert(item: $viewModel.alertItem){alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizersView()
}
