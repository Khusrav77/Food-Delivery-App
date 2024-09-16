//
//  Extention+Date.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/16/24.
//

import Foundation

extension Date {
    func displayDate(currentFormat: String, addMinTime: Int = 0) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = currentFormat
        
        // Добавляем указанное количество минут к текущей дате
        let modifieDate = self.addingTimeInterval(TimeInterval(60 * addMinTime))
        
        // Преобразуем дату в строку в указанном формате
        return dateFormatter.string(from: modifieDate)
    }
}
