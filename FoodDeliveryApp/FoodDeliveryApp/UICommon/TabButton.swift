//
//  TabButton.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/31/24.
//

import SwiftUI

struct TabButton: View {
    
    @State var title: String = "Title"
    @State var icon: String = "store"
    var isSelect: Bool = false
    var action: (() -> Void)?
    
    
   
    
    var body: some View {
        Button {
           debugPrint("Tab Button Tap")
            action?()
        } label: {
            VStack {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                Text(title)
                    .font(.customfont(.semibold, fontSize: 14))
            }
        }
        .foregroundColor(isSelect ? .orangePrimary : .gray30)
        .frame(minWidth: 0, maxWidth: .infinity)
    }
}

#Preview {
    TabButton()
}
