//
//  BackgroundViewGradient.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/17/24.
//

import SwiftUI

struct BackgroundViewGradient: View {
    var body: some View {
        LinearGradient(colors:
                        [Color.greenSecondary, Color.greenSecondary],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundViewGradient()
}
