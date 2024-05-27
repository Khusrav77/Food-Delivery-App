//
//  RoundButton.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/26/24.
//

import SwiftUI

struct RoundButton: View {
    @State var title: String = "Title"
    var didTap: (()->())?
    
    var body: some View {
        
            Button {
              didTap?()
            } label: {
                Text(title)
                    .font(.customfont(.semibold, fontSize: 20))
                    .foregroundStyle(.green)
                    .multilineTextAlignment(.center)
            }
            .frame(minWidth: 0,maxWidth: .infinity, minHeight: 60, maxHeight: 60)
            .background(Color.white)
            .cornerRadius(25)
        }
    }


#Preview {
    RoundButton()
        .padding(20)
        .background(Color.blue)
}
