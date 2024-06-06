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
    
    @Published var showError = false
    @Published var errorMessage = ""
    
    @Published var offerArray: [ProductModel] = []
    @Published var bestArray: [ProductModel] = []
    @Published var listArray: [ProductModel] = []
    
    
    
    
    //MARK: Service call
    
    
    
}

