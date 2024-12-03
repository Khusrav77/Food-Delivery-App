//
//  SocialButtonView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/17/24.
//

import SwiftUI

struct SocialButtonView: View {
    // MARK: - Properties
    let image: String
    let width: CGFloat
    let height: CGFloat
    var action: () -> Void
    
    // MARK: - Body
    var body: some View {
        
        Button {
            action()
        }label: {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: width, height: height)
                .overlay {
                    RoundedRectangle(cornerRadius: 12).stroke(lineWidth: 1)
                        .frame(width: 50, height: 50)
                        .foregroundStyle(.blue)
                }
        }
        .tint(.primary)
    }
}

#Preview {
    SocialButtonView(image: "", width: 32, height: 32, action: {})
}
