//
//  Colors.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 10/11/23.
//

import Foundation
import SwiftUI


extension Color {
    init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
        let green = Double((rgb & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgb & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue)
    }
}
let darkGreen = Color(hex: "178f51")

let backgroundColor =  darkGreen
//Color(hex:"1e1e1e")
let whitesmoke = Color(hex:"eaebec")

