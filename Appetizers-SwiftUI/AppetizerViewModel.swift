//
//  AppetizerViewModel.swift
//  Appetizers-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/24/24.
//

import SwiftUI


final class AppetizerViewModel: ObservableObject{
    
    @Published var appetizers: [Appetizer] = []
    
    func getAppetizers (){
        NetworkManager.shared.getAppetizers{ result in
            DispatchQueue.main.async{
                switch result{
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                    
                }
            }
           
        }
    }
}
