//
//  ListOfUsersController.swift
//  innocv
//
//  Created by Eugenio Barquín on 11/10/17.
//  Copyright © 2017 Eugenio Barquín. All rights reserved.
//

import UIKit

class ListOfUsersController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var users: Users = []
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let getAllUsersFromAPI = GetAllUsersFromAPIManagerImpl()
        GetUsersInteractorImpl(getAllUsersFromAPIManager: getAllUsersFromAPI).execute { (users) in
            self.users = users
            self.tableView.reloadData()
        }
        getAllUsersFromAPI.downloadAllUsers { (users) in
            print(users.count)
            
        }
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - TableView
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! UserCell
        let user = users[indexPath.row]
        self.configureCell(cell, withUser: user)
        
        return cell
        
    }
    
    func configureCell(_ cell: UserCell, withUser user: User) {
        cell.userName.text = user.name
    }
    

}

