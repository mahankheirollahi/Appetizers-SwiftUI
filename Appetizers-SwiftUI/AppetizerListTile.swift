//
//  AppetizerListTile.swift
//  Appetizers-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/23/24.
//

import SwiftUI

struct AppetizerListTile: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack(){
            Image("asian-flank-steak")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 140,height: 110)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            VStack(alignment:.leading,spacing: 5){
                Text(appetizer.name)
                    .font(.title2)
                    .bold()
                    .scaledToFit()
                    .minimumScaleFactor(0.6)
                    .padding(.bottom,5)
                    
                Text("$\(appetizer.price,specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                    .bold()
                    .scaledToFit()
                    .minimumScaleFactor(0.6)
                    
            }.padding(.leading)
                
        }
    }
}

#Preview {
    AppetizerListTile(appetizer: MockData.sampleAppetizer)
}
