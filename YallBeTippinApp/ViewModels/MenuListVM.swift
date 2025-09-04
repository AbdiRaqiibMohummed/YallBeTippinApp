//
//  MenuListVM.swift
//  YallBeTippinApp
//
//  Created by Abdiraqiib Hassan on 04/09/2025.
//
// final keyword means that no other classes cant inherit from it

import Foundation

final class MenuListVM: ObservableObject {
    @Published var items: [MenuItem] = [
        MenuItem(name: "Burger", price: 12.5, img: "burger"),
        MenuItem(name: "Chow mein", price: 13, img: "chowMein"),
        MenuItem(name: "Dumplings", price: 7, img: "dumplings"),
        MenuItem(name: "Fried chicken", price: 14.5, img: "friedChicken"),
        MenuItem(name: "Pizza", price: 6, img: "pizza"),
        MenuItem(name: "Spaghetti", price: 13.5, img: "spaghetti"),
        MenuItem(name: "Steak", price: 16, img: "steak"),
        MenuItem(name: "Sushi", price: 8, img: "sushi")
        
    ]
}
