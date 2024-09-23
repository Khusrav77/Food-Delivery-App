//
//  NotificationModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/11/24.
//

import Foundation


struct Notification: Identifiable, Equatable {
    var id: Int
    var refId: Int
    var isRead: Int
    var notificationType: Int
    var title: String
    var message: String
    var createdDate: Date = Date()
   
    static func == (lhs: Notification, rhs: Notification) -> Bool {
        return lhs.id == rhs.id
    }
}
