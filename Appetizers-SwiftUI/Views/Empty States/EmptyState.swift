//
//  EmptyState.swift
//  Appetizers-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/26/24.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(edges: .all)
            
            VStack{
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            }
            .offset(y:-50)
        }
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "Test Message")
}
