//
//  Globals.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/6/24.
//

import Foundation

struct Globals {
    static let AppName = "Halal Product"
    
    static let BASE_URL = ""
    
    static let userPayload = "user_payload"
    static let userLogin = "user_login"
    
    static let SV_LOGIN = BASE_URL + "login"
    static let SV_SIGN_UP = BASE_URL + "sign_up"
    
    static let SV_PRODUCT_DETAIL = BASE_URL + "product_detail"
    static let SV_ADD_REMOVE_FAVORITE = BASE_URL + "add_remove_favorite"
    static let SV_FAVORITE_LIST = BASE_URL + "favorite_list"
    static let SV_EXPLORE_LIST = BASE_URL + "explore_category_list"
    static let SV_EXPLORE_ITEMS_LIST = BASE_URL + "explore_items_list"
    
    static let SV_ADD_TO_CART = BASE_URL + "add_to_cart"
    static let SV_UPDATE_CART = BASE_URL + "update_cart"
    static let SV_REMOVE_CART = BASE_URL + "remove_cart"
    static let SV_CART_LIST = BASE_URL + "cart_list"
    
    
}

struct KKey {
    static let status = "status"
    static let message = "message"
    static let payload = "payload"
}
