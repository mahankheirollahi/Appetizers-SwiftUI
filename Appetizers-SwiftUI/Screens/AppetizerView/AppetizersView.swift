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
        ZStack{
            NavigationView{
                List(viewModel.appetizers){ appetizer in
                    AppetizerListTile(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                            viewModel.isShowingDetail = true
                            
                        }
                }.navigationTitle("Appetizers")
                    .disabled(viewModel.isShowingDetail)
            }
            .onAppear{
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if(viewModel.isShowingDetail){
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer!,isShowingDetail: $viewModel.isShowingDetail)
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
