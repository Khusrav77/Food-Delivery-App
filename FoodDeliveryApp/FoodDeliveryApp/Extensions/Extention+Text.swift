//
//  Extention+Text.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/19/24.
//

import SwiftUI

extension Text {
   
    func titleFont() -> some View {
           self
               .foregroundStyle(.primary)
               .font(.system(size: 14, weight: .bold, design: .rounded))
               .opacity(0.8)
       }
       
       func subtitle() -> some View {
           self
               .foregroundStyle(.primary)
               .font(.system(size: 12, weight: .regular, design: .rounded))
               .opacity(0.8)
       }
       
       func newBadgeStyle() -> some View {
           self
               .font(.system(size: 12))
               .foregroundStyle(.white)
               .padding(.vertical, 2)
               .padding(.horizontal, 6)
               .background(.purple.opacity(0.8))
               .clipShape(RoundedRectangle(cornerRadius: 6))
               .padding(10)
       }
}
