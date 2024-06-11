//
//  ProductService.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/9/24.
//

import Foundation


final class ProductService {
    static let shared = ProductService()
    
    private init() {}
    
    
    
    
    func encodeToJSON(from dictionary: [[String: Any]]) -> Data? {
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: dictionary, options: .prettyPrinted)
            return jsonData
        } catch {
            print("Error encoding JSON: \(error.localizedDescription)")
            return nil
        }
    }
    
    
    
//    func decodeFromJSON(_ jsonData: Data) -> [ProductModel]? {
//        let decoder = JSONDecoder()
//        decoder.dateDecodingStrategy = .iso8601
//        
//        do {
//            let products = try decoder.decode([ProductModel].self, from: jsonData)
//            return products
//        } catch {
//            print("Error decoding JSON: \(error.localizedDescription)")
//            return nil
//        }
//    }
    
}
