//
//  MenuItem.swift
//  YallBeTippinApp
//
//  Created by Abdiraqiib Hassan on 03/09/2025.
//

import Foundation

struct MenuItem: Identifiable {
    let id = UUID().uuidString
    let name: String
    let price: Double
    let img: String
    var orderCount = 0
    
    var total: Double {
        return price * Double(orderCount)
    }
}
