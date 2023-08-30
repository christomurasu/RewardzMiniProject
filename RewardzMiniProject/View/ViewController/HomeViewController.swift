//
//  HomeViewController.swift
//  RewardzMiniProject
//
//  Created by Christopher Sonny on 30/08/23.
//

import UIKit

enum ContentType {
    case header
    case recommendedHeader
    case contentHeader
    case contentCombo
    case contentHottest
    case contentPopular
    case contentNewCombo
    case contentTop
}

class HomeViewController: UIViewController {

    var username: String = ""
    let viewModel = HomeViewModel()
    var contents: [ContentType] = [.header, .recommendedHeader, .contentCombo, .contentHeader, .contentHottest]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        // Do any additional setup after loading the view.
    }
    
    private func setupView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorColor = .clear
        tableView.register(UINib(nibName: "TopTableViewCell", bundle: nil), forCellReuseIdentifier: "topCell")
        tableView.register(UINib(nibName: "RecommendedComboTableViewCell", bundle: nil), forCellReuseIdentifier: "recHeader")
        tableView.register(UINib(nibName: "RecommendedContentTableViewCell", bundle: nil), forCellReuseIdentifier: "recContent")
        tableView.register(UINib(nibName: "ContentHeaderTableViewCell", bundle: nil), forCellReuseIdentifier: "contentHeader")
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

extension HomeViewController: UITableViewDelegate, UITableViewDataSource, SegmentedControlGetValue {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if contents[indexPath.row] == .header {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "topCell") as? TopTableViewCell {
                cell.setupView(self.username)
                return cell
            }
        } else if contents[indexPath.row] == .recommendedHeader {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "recHeader") as? RecommendedComboTableViewCell {
                return cell
            }
        } else if contents[indexPath.row] == .contentHeader {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "contentHeader") as? ContentHeaderTableViewCell {
                cell.delegate = self
                return cell
            }
        } else {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "recContent") as? RecommendedContentTableViewCell {
                cell.arrFood = viewModel.fetchFood(contentType: contents[indexPath.row])
                cell.setupView()
                return cell
            }
        }
        
        return UITableViewCell()
    }
    
    func getValueSegmentedControl(selectedIndex: Int) {
        switch selectedIndex {
        case 0:
            contents[4] = .contentHottest
        case 1:
            contents[4] = .contentPopular
        case 2:
            contents[4] = .contentNewCombo
        case 3:
            contents[4] = .contentTop
        default:
            break
        }
        let indexPath = IndexPath(item: 4, section: 0)
        tableView.reloadRows(at: [indexPath], with: .top)
    }
}
