//
//  NotificationModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/11/24.
//

import Foundation


struct Notification: Identifiable, Equatable {
    let id: Int
    let refId: Int
    let isRead: Int
    let notificationType: Int
    let title: String
    let message: String
    var createdDate: Date = Date()
   
    static func == (lhs: Notification, rhs: Notification) -> Bool {
        return lhs.id == rhs.id
    }
}
