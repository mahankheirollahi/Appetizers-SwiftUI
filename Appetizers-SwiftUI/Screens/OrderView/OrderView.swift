//
//  OrderView.swift
//  Appetizers-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/23/24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
            NavigationView{
                ZStack{
                    VStack{
                        List{
                            ForEach(order.items){ apetizers in
                                AppetizerListTile(appetizer: apetizers)
                           }
                            .onDelete(perform: { indexSet in
                                order.deleteItems(at: indexSet)
                            })
                        }
                        .listStyle(PlainListStyle())
                        
                        Button{
                            
                        }label: {
                            APButton(title: "$\(order.totalPrice,specifier: "%.2f") - Place Order")
                        }
                        .padding(.bottom,25)
                    }
                    if order.items.isEmpty{
                        EmptyState(imageName: "empty-order", message: "You have no Item in your basket")
                    }
                }
                
                .navigationTitle("Order")
            }
    }
 
}

#Preview {
    OrderView()
}
