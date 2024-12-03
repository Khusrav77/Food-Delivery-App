//
//  RememberStye.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/24/24.
//

import SwiftUI

@available(iOS 17.0, *)
struct RememberStye: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        }label: {
            HStack {
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                    .contentTransition(.symbolEffect)
                    .foregroundStyle(configuration.isOn ? .green : .gray)
                
                Text("Remember me")
            }
        }
        .tint(.gray)
    }
}

