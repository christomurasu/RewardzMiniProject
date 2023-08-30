//
//  TopTableViewCell.swift
//  RewardzMiniProject
//
//  Created by Christopher Sonny on 30/08/23.
//

import UIKit

class TopTableViewCell: UITableViewCell {
    
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var headerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    func setupView(_ name: String) {
        searchView.layer.cornerRadius = 10
        headerLabel.text = "Hello \(name), What fruit salad combo do you want today?"
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
