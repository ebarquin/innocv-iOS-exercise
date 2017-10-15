
import UIKit

class ListOfUsersController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var users: Users = []
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.reloadData), name: NSNotification.Name(rawValue: UpdateNotification), object: nil)
        
        let getAllUsersFromAPI = GetAllUsersFromAPIManagerImpl()
        GetUsersInteractorImpl(getAllUsersFromAPIManager: getAllUsersFromAPI).execute { (users) in
            self.users = users
            self.tableView.reloadData()
            
        }
        
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - TableView
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let title = UILabel()
        title.textColor = UIColor.black
        
        let header = view as! UITableViewHeaderFooterView
        header.textLabel!.font = title.font
        header.textLabel!.textColor = title.textColor
        header.contentView.backgroundColor = UIColor(red:208/255, green:226/255, blue: 237/255, alpha: 1.0)
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let title = "Users"
        switch(section) {
        case 0: return title
        default: return ""
        }
    }
    
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
    
    //MARK: - Segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue" {
            if let indexPathSelected = tableView.indexPathsForSelectedRows?.last {
                let selectedUser = users[indexPathSelected.row]
                let detailVC = segue.destination as! DetailController
                detailVC.user = selectedUser
                
            }
        }
    }
    @objc func reloadData() {
        let getAllUsersFromAPI = GetAllUsersFromAPIManagerImpl()
        GetUsersInteractorImpl(getAllUsersFromAPIManager: getAllUsersFromAPI).execute { (users) in
            self.users = users
            self.tableView.reloadData()
            
        }
    }
    

}

