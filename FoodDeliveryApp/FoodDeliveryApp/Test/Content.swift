//
//  Content.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/5/24.
//

import SwiftUI

struct Content: View {
    
        @State private var counter = 0
        
        var body: some View {
            VStack {
                CartButtontest(counter: $counter, title: "В корзину", isSelect: false, width: 300, height: 40)
                
                
                
                // Другие элементы интерфейса
            }
        }
    }

    struct Content_Previews: PreviewProvider {
        static var previews: some View {
            Content()
        }
    }

