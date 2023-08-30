//
//  ViewController.swift
//  RewardzMiniProject
//
//  Created by Christopher Sonny on 30/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnContinue: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setupView()
    }
    
    private func setupView() {
        self.navigationController?.navigationBar.isHidden = true
        btnContinue.layer.cornerRadius = 10
    }


}

