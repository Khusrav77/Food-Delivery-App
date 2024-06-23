//
//  ProductService.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/9/24.
//

import Foundation


final class ServiceCall {
   
        
    class func post(parameter: NSDictionary, path: String, isToken: Bool = false, withSuccess: @escaping (_ responseObj: AnyObject?) -> (), failure: @escaping (_ error: Error?) -> ()) {
        
        DispatchQueue.global(qos: .userInitiated).async {
            
            let parameterData = NSMutableData()
            let dictKeys = parameter.allKeys as? [String] ?? []
            
            for (i, key) in dictKeys.enumerated() {
                if let value = parameter.value(forKey: key) as? String {
                    if let encodedValue = value.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) {
                        parameterData.append(String(format: "%@%@=%@", i == 0 ? "" : "&", key, encodedValue).data(using: .utf8)!)
                    }
                } else if let value = parameter.value(forKey: key) {
                    parameterData.append(String(format: "%@%@=%@", i == 0 ? "" : "&", key, "\(value)").data(using: .utf8)!)
                }
            }
            
            guard let url = URL(string: path) else {
                DispatchQueue.main.async {
                    failure(NSError(domain: "Invalid URL", code: 400, userInfo: nil))
                }
                return
            }
            
            var request = URLRequest(url: url, timeoutInterval: 20)
            request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
            
            if isToken {
                request.addValue(UserAuthViewModel.shared.userObj?.authToken ?? "", forHTTPHeaderField: "access_token")
            }
            
            request.httpMethod = "POST"
            request.httpBody = parameterData as Data
            
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    DispatchQueue.main.async {
                        failure(error)
                    }
                    return
                }
                
                guard let data = data else {
                    DispatchQueue.main.async {
                        failure(NSError(domain: "No data returned", code: 500, userInfo: nil))
                    }
                    return
                }
                
                do {
                    if let jsonDictionary = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? NSDictionary {
                        debugPrint("response:", jsonDictionary)
                        DispatchQueue.main.async {
                            withSuccess(jsonDictionary)
                        }
                    } else {
                        DispatchQueue.main.async {
                            failure(NSError(domain: "Invalid response format", code: 500, userInfo: nil))
                        }
                    }
                } catch {
                    DispatchQueue.main.async {
                        failure(error)
                    }
                }
            }
            
            task.resume()
        }
    }
}
