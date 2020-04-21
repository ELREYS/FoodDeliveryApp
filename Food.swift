//
//  Food.swift
//  FoodApp
//
//  Created by Virtual Mac Catalina on 19.04.20.
//  Copyright © 2020 Virtual Mac Catalina. All rights reserved.
//

import Foundation
import SwiftUI

class Food:Identifiable {
    let title:String
    let price:Double
    let category:Categories
    let id: Int
    
    init(title:String,price:Double,category:Categories,id:Int) {
        self.title = title
        self.price  = price
        self.category = category
        self.id = id
    }
}
