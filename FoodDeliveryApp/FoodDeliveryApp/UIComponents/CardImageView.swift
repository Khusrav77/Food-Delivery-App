//
//  CardImageView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/19/24.
//

import SwiftUI

struct CardImageView: View {
    
    // MARK: - Properties
    let url: URL
    let width: CGFloat
    let height: CGFloat
    
    // MARK: - Body
    var body: some View {
        
        AsyncImage(url: url) { Image in
            Image
                .resizable()
                .scaledToFill()
                .frame(width: width, height: height)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
        } placeholder: {
           // ProgressView()
               // .frame(width: width, height: height)
        }
    }
}
