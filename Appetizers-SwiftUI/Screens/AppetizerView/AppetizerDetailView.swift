//
//  AppetizerDetailView.swift
//  Appetizers-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/26/24.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        VStack{
            Image("asian-flank-steak")
                .resizable()
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
                    VStack{
                        Text("Calories")
                            .font(.caption)
                            .fontWeight(.bold)
                        Text("\(appetizer.calories)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack{
                        Text("Carbs")
                            .font(.caption)
                            .fontWeight(.bold)
                        Text("\(appetizer.carbs)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack{
                        Text("Protein")
                            .font(.caption)
                            .fontWeight(.bold)
                        Text("\(appetizer.protein)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                }
            }
            Spacer()
            
            Button{
                
            } label: {
                Text("$\(appetizer.price, specifier: "%.2f") -  Add to Order")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260,height: 50)
                    .foregroundStyle(.white)
                    .background(Color.brandPrimary)
                    .cornerRadius(12)
                
            }.padding(.bottom,30)
        }
        .frame(width: 300,height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button{
            
        }label: {
            ZStack{
                Circle()
                    .frame(width: 30,height: 30)
                    .foregroundStyle(.white)
                    .opacity(0.6)
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .frame(width: 44,height: 44)
                    .foregroundStyle(.black)
            }
        },alignment: .topTrailing)
        
        
        
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer)
}
