//
//  ContentCollectionViewCell.swift
//  RewardzMiniProject
//
//  Created by Christopher Sonny on 30/08/23.
//

import UIKit

class ContentCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var foodPrice: UILabel!
    @IBOutlet weak var foodName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupView(_ food: Food) {
        foodName.text = food.foodName
        foodPrice.text = "Rp\(food.foodPrice)"
    }

}
