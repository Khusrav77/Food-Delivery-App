//
//  FavoriteView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/9/24.
//

import SwiftUI

struct FavoriteView: View {
    
    // MARK: -Properties
    @StateObject var vm = FavoriteViewModel()
    @Environment(\.dismiss) var dismiss
    var columns = Array(repeating: GridItem(), count: 2)
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: columns) {
                    
                }
            }
            .padding(.horizontal, 8)
            .navigationTitle("Favorites")
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    
        FavoriteView()
    
}
