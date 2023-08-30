//
//  NameViewController.swift
//  RewardzMiniProject
//
//  Created by Christopher Sonny on 30/08/23.
//

import UIKit

class NameViewController: UIViewController {
    
    @IBOutlet weak var btnStart: UIButton!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var viewName: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        // Do any additional setup after loading the view.
    }
    
    private func setupView() {
        btnStart.layer.cornerRadius = 10
        viewName.layer.cornerRadius = 10
    }
    
    
    @IBAction func btnStartTouchUpInside(_ sender: UIButton) {
        guard let name = txtName.text else { return }
        self.moveToHome(name)
    }
    
    private func moveToHome(_ username: String) {
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController {
            viewController.username = username
            navigationController?.pushViewController(viewController, animated: true)
        } else {
            return
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
