//
//  Extention+Font.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/16/24.
//
import SwiftUI

enum Inter: String {
    case regular = "FiraSans-Regular"
    case medium = "FiraSans-Medium"
    case semibold = "FiraSans-SemiBold"
    case bold = "FiraSans-Bold"
    case alfaSlabOne = "AlfaSlabOne-Regular"
}

extension Font {
    static func customfont(_ font: Inter, fontSize: CGFloat) -> Font {
        custom(font.rawValue, size: fontSize)
    }
}
