//
//  ContentHeaderTableViewCell.swift
//  RewardzMiniProject
//
//  Created by Christopher Sonny on 30/08/23.
//

import UIKit

protocol SegmentedControlGetValue {
    func getValueSegmentedControl(selectedIndex: Int)
}

class ContentHeaderTableViewCell: UITableViewCell {

    var segmentedControl: UISegmentedControl?
    var delegate: SegmentedControlGetValue?
    var contents: [String] = ["Hottest", "Popular", "New Combo", "Top"]
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupView() {
        segmentedControl = UISegmentedControl(items: contents)
        segmentedControl?.frame = CGRect(x: 16, y: 0, width: self.frame.width, height: self.frame.height)
        segmentedControl?.tintColor = .clear
        segmentedControl?.setTitleTextAttributes([.font : UIFont.boldSystemFont(ofSize: 16)], for: .selected)
        segmentedControl?.setTitleTextAttributes([.font : UIFont.systemFont(ofSize: 14)], for: .normal)
        segmentedControl?.selectedSegmentIndex = 0
        segmentedControl?.addTarget(self, action: #selector(segmentedControlValueChanged), for: .valueChanged)
        segmentedControl?.tintColor = .clear
        segmentedControl?.backgroundColor = .clear
        segmentedControl?.setBackgroundImage(UIImage(), for: .normal, barMetrics: .default)
        segmentedControl?.setWidth(100.0, forSegmentAt: 2)
        segmentedControl?.setWidth(80.0, forSegmentAt: 0)
        segmentedControl?.setDividerImage(UIImage(), forLeftSegmentState: .disabled, rightSegmentState: .disabled, barMetrics: .default)
        guard let segment = segmentedControl else { return }
        self.addSubview(segment)
    }
    
    @objc func segmentedControlValueChanged() {
        self.delegate?.getValueSegmentedControl(selectedIndex: segmentedControl?.selectedSegmentIndex ?? 0)
    }
}
