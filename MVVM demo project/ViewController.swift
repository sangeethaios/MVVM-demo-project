//
//  ViewController.swift
//  MVVM demo project
//
//  Created by Ardhas Dev on 16/02/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    let viewModel = UsersViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.getUsers {
            self.tableView.reloadData()
        }
        
        tableView.dataSource = self
        registerCell()
    }
    //MARK: Register cell
    func registerCell(){
        let cell = UINib(nibName: "UserTableViewCell", bundle: nil)
        tableView.register(cell, forCellReuseIdentifier: "UserTableViewCell")
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfUsers()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as! UserTableViewCell
        let user = viewModel.user(at: indexPath.row)
        cell.configure(with: user)
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        return cell
    }
   
}
