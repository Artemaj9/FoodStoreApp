//
//  DishModel.swift
//  FoodStoreApp
//
//  Created by Artem on 28.06.2023.
//

import Foundation


struct DishModel: Identifiable, Codable {
    let id : Int
    let name: String
    let price: Int
    let weght: Int
    let description: String
    let tegs: [String]
   // var quantity = 1
}
