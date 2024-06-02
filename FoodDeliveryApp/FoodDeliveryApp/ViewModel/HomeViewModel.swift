//
//  HomeViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/30/24.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
    static var shared: HomeViewModel = HomeViewModel()
   
    @Published var selectTab: Int = 4
    @Published var textSearch: String = ""
}

