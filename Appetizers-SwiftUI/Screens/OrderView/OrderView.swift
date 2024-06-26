//
//  OrderView.swift
//  Appetizers-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/23/24.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.appetizers
    
    var body: some View {
            NavigationView{
                ZStack{
                    VStack{
                        List{
                            ForEach(orderItems){ apetizers in
                                AppetizerListTile(appetizer: apetizers)
                           }
                            .onDelete(perform: { indexSet in
                                deleteItems(at: indexSet)
                            })
                        }
                        .listStyle(PlainListStyle())
                        
                        Button{
                            
                        }label: {
                            APButton(title: "Order")
                        }
                        .padding(.bottom,25)
                    }
                    if orderItems.isEmpty{
                        EmptyState(imageName: "empty-order", message: "You have no Item in your basket")
                    }
                }
                
                .navigationTitle("Order")
            }
    }
    
    func deleteItems(at offesets: IndexSet){
        orderItems.remove(atOffsets: offesets)
    }
}

#Preview {
    OrderView()
}
