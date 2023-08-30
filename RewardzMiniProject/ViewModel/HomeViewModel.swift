//
//  HomeViewModel.swift
//  RewardzMiniProject
//
//  Created by Christopher Sonny on 30/08/23.
//

import Foundation

public class HomeViewModel {
    
    private lazy var arrRecommendedFood: [Food] = {
        var arrFood: [Food] = [Food.init(foodName: "Pecel", foodPrice: "10.000"),
                               Food.init(foodName: "Ayam", foodPrice: "8.000"),
                               Food.init(foodName: "Ikan", foodPrice: "9.000"),
                               Food.init(foodName: "Bakso", foodPrice: "15.000"),
                               Food.init(foodName: "Tahu Tempe", foodPrice: "20.000")]
        return arrFood
    }()
    
    private lazy var arrHottestFood: [Food] = {
        var arrFood: [Food] = [Food.init(foodName: "Pizza", foodPrice: "150.000"),
                               Food.init(foodName: "Spagetthi", foodPrice: "88.000"),
                               Food.init(foodName: "Fetuccini", foodPrice: "78.000"),
                               Food.init(foodName: "Steak", foodPrice: "350.000"),
                               Food.init(foodName: "Tahu Tempe", foodPrice: "20.000")]
        return arrFood
    }()
    
    private lazy var arrPopularFood: [Food] = {
        var arrFood: [Food] = [Food.init(foodName: "Nasi Padang", foodPrice: "28.000"),
                               Food.init(foodName: "Nasi Goreng", foodPrice: "30.000"),
                               Food.init(foodName: "Gudeg", foodPrice: "25.000"),
                               Food.init(foodName: "Pempek", foodPrice: "16.000"),
                               Food.init(foodName: "Bakso", foodPrice: "20.000")]
        return arrFood
    }()
    
    private lazy var arrNewComboFood: [Food] = {
        var arrFood: [Food] = [Food.init(foodName: "Honey Lime Combo", foodPrice: "15.000"),
                               Food.init(foodName: "Berry Mango Combo", foodPrice: "90.000"),
                               Food.init(foodName: "Mix Fruit Combo", foodPrice: "150.000"),
                               Food.init(foodName: "Strawberry Melon Combo", foodPrice: "250.000"),
                               Food.init(foodName: "Honey Starfruit Combo", foodPrice: "79.000")]
        return arrFood
    }()
    
    private lazy var arrTopFood: [Food] = {
        var arrFood: [Food] = [Food.init(foodName: "Kwetiauw", foodPrice: "35.000"),
                               Food.init(foodName: "Mie", foodPrice: "32.500"),
                               Food.init(foodName: "Burger", foodPrice: "59.000"),
                               Food.init(foodName: "Kebab", foodPrice: "49.000"),
                               Food.init(foodName: "Sandwich", foodPrice: "49.000")]
        return arrFood
    }()
    
    func fetchFood(contentType: ContentType) -> [Food] {
        switch contentType {
        case .contentCombo:
            return arrRecommendedFood
        case .contentTop:
            return arrTopFood
        case .contentPopular:
            return arrPopularFood
        case .contentHottest:
            return arrHottestFood
        case .contentNewCombo:
            return arrNewComboFood
        default:
            return []
        }
    }
}
