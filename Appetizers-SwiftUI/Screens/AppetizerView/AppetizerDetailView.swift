//
//  AppetizerDetailView.swift
//  Appetizers-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/26/24.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    
    @Binding var isShowingDetail : Bool
    
    var body: some View {
        VStack{
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300,height: 225)
            
            VStack{
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing:40){
                    NutritionInfo(title: "Calories", value: appetizer.carbs)
                    NutritionInfo(title: "Protein", value: appetizer.carbs)
                    NutritionInfo(title: "Carbs", value: appetizer.carbs)
                }
            }
            
            Spacer()
            
            Button{
                
            } label: {
              APButton(title: "$\(appetizer.price, specifier: "%.2f") -  Add to Order")
                
            }.padding(.bottom,30)
        }
        .frame(width: 300,height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button{
            isShowingDetail = false
        }label: {
           XDismissButton()
        },alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer,isShowingDetail: .constant(true))
}


struct NutritionInfo: View {
    
    let title: String
    let value: Int
    
    var body: some View{
        
        VStack{
            Text(title)
                .font(.caption)
                .fontWeight(.bold)
            Text("\(value)")
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}