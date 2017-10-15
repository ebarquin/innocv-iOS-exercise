
import UIKit

class DetailController: UIViewController {
    
    @IBOutlet weak var userId: UILabel!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var user: User?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let user = user {
            userId.text = "" + "\(user.id ?? 0)"
            userName.text = user.name
            datePicker.setValue(UIColor.white, forKey: "textColor")
            datePicker.date = user.birthdate!
            
        }

    }

    @IBAction func saveUser(_ sender: Any) {
        if let user = user {
            
            let alertInsert = UIAlertController(title: "Save user", message: "Do you want to save the user?", preferredStyle: .alert)
            let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            let ok = UIAlertAction(title: "Ok", style: .default, handler: { (ok) in
                
                let updateUser = UpdateUserManagerImpl()
                UpdateUserInteractorImpl(updateUserManager: updateUser).execute(id: user.id!, name: user.name!, birthdate: self.datePicker.date)
                self.navigationController?.popViewController(animated: true)
            })
            
            alertInsert.addAction(ok)
            alertInsert.addAction(cancel)
            self.present(alertInsert, animated: true, completion: nil)
            
            
        }
        
        
    }
    

    @IBAction func deleteUser(_ sender: Any) {
        if let user = user {
        
            let alertInsert = UIAlertController(title: "Delete user", message: "Do you want to delete the user?", preferredStyle: .alert)
            
            let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            let ok = UIAlertAction(title: "Ok", style: .default, handler: { (ok) in
                
                let deleteUser = DeleteUserManagerImpl()
                
                DeleteUserInteractorImpl(deleteUserManager: deleteUser).execute(id: user.id!, completion: {
                    (message) in
                    print(message)
                    self.navigationController?.popViewController(animated: true)
                })
                
                
                
                
            })
            
            alertInsert.addAction(ok)
            alertInsert.addAction(cancel)
           
            self.present(alertInsert, animated: true, completion: nil)
            
            
            }
            
        }
    }

