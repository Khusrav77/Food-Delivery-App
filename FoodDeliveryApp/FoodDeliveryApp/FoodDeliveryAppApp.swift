//
//  FoodDeliveryAppApp.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/26/24.
//

import SwiftUI

@main
struct FoodDeliveryAppApp: App {
    //@StateObject var mainVM = MainViewModel.shared
    var body: some Scene {
        WindowGroup {
            
            NavigationView {
                WelcomeView()
            }
        }
    }
}
