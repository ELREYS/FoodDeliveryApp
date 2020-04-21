//
//  Helper.swift
//  FoodApp
//
//  Created by Virtual Mac Catalina on 19.04.20.
//  Copyright © 2020 Virtual Mac Catalina. All rights reserved.
//

import Foundation

enum Categories {
    case burger
    case pizza
    case pasta
    case dessert
}

func filterData(by category:Categories)-> [Food]{
    var filteredArray = [Food]()
    
    for food in foodData{
        if food.category == category
        {
            filteredArray.append(food)
        }
    }
    return filteredArray
}

func categoryString(for category: Categories) -> String{
    switch category{
    case .pizza:
        return "Pizza"
    case .burger:
        return "Burger"
    case .pasta:
        return "Pasta"
    case .dessert:
        return "Desserts"
    }
}
