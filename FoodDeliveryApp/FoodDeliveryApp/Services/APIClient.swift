//
//  APIClient.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/6/24.
//

import Foundation
import Combine

final class APIClient {
    static let shared = APIClient()
    
    private init() {}
    
    
    
    
    func login (phoneNumber: String) -> AnyPublisher<UserModel, Error> {
        let parameters = ["phone_number": phoneNumber]
        guard let body = try? JSONSerialization.data(withJSONObject: parameters) else{
            return Fail(error: URLError(.badURL)).eraseToAnyPublisher()
        }
        
        return sendRequest(endpoint: "", method: "POST", body: body)
    }
    
    
    func verifyCode (phoneNumber: String, code: String) -> AnyPublisher<UserModel, Error> {
        let parameters = ["phone_number": phoneNumber, "verification_code": code]
        guard let body = try? JSONSerialization.data(withJSONObject: parameters) else {
            return Fail(error: URLError(.badURL)).eraseToAnyPublisher()
        }
        
        return sendRequest(endpoint: "", method: "POST", body: body)
    }
    
    
    func fetchUserProfile(authToken: String) -> AnyPublisher<UserModel, Error> {
        var request = URLRequest(url: URL(string: "")!)
        request.addValue("Bearer \(authToken)", forHTTPHeaderField: "Authorization")
        
        return URLSession.shared.dataTaskPublisher(for: request)
            .tryMap{ output in
                guard let response = output.response as? HTTPURLResponse, response.statusCode == 200 else {
                    throw URLError(.badServerResponse)
                }
                return output.data
            }
            .decode(type: UserModel.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
    
    
    
    
 private func sendRequest(endpoint: String, method: String, body: Data?) -> AnyPublisher<UserModel, Error> {
        guard let url = URL(string: endpoint) else {
            return Fail(error: URLError(.badURL)).eraseToAnyPublisher()
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = method
        request.httpBody = body
        
        return URLSession.shared.dataTaskPublisher(for: request)
            .tryMap { output in
                guard let response = output.response as? HTTPURLResponse, response.statusCode == 200 else {
                    throw URLError(.badServerResponse)
                    
                }
                return output.data
            }
            .decode(type: UserModel.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
