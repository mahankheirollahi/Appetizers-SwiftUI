//
//  APButton].swift
//  Appetizers-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/26/24.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260,height: 50)
            .foregroundStyle(.white)
            .background(Color.brandPrimary)
            .cornerRadius(12)
    }
}

#Preview {
    APButton(title: "Test Title")
}
