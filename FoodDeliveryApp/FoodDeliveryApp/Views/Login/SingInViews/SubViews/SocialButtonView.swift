//
//  SocialButtonView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/17/24.
//

import SwiftUI

struct SocialButtonView: View {
    
    // MARK: - Properties
    let action: () -> Void
    let imageName: String
    let buttonText: String
    
    // MARK: - Body
    var body: some View {
        
        Button {
            action()
        }label: {
            HStack {
                Spacer().padding()
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                
                Text(buttonText)
                    .font(.customfont(.semibold, fontSize: 20))
                    .foregroundColor(.black.opacity(0.7))
                    .padding()
                Spacer().padding()
            }
            .frame(maxWidth: .infinity)
            .background(.background)
            .clipShape(RoundedRectangle(cornerRadius: 24))
            .shadow(color: .black.opacity(0.1), radius: 8, x: 0, y: 8)
            .padding(.horizontal)
        }
    }
}

#Preview {
    SocialButtonView(action: {}, imageName: "google_logo", buttonText: "Google")
}
