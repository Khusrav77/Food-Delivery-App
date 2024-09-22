//
//  HomeViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/30/24.
//

import SwiftUI

final class HomeViewModel: ObservableObject {
    static var shared: HomeViewModel = HomeViewModel()
    
    @Published var navBarSelection: String = ""
    @Published var tabSelection: Int = 4
    @Published var textSearch: String = ""
    
    @Published var showError = false
    @Published var errorMessage = ""
    
    @Published var offerList: [Product] = []
    @Published var bestList: [Product] = []
    @Published var producList: [Product] = []
    @Published var typeList: [TypeModel] = []
    
    let navBarMenu = ["Продукты", "Готовое Еда", "Здоровья"]
   
    init() {
        getProduct()
    }
    
    
    
    //MARK: - Service call
    
    func getProduct() {


    }
}

