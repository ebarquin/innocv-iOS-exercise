
import UIKit

class NewUserController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userBirthdate: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()    
        
    }

    @IBAction func createUser(_ sender: Any) {
        
        let name = userName.text
        let birthdate = userBirthdate.date
        if userName.text == "" {
            let alertNoData = UIAlertController(title: "Error", message: "Enter a valid name", preferredStyle: .alert)
            let cancel = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alertNoData.addAction(cancel)
            self.present(alertNoData, animated: true, completion: nil)
        } else {
            
            
            let alertInsert = UIAlertController(title: "Save user", message: "Do you want to create the user?", preferredStyle: .alert)
            let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            let ok = UIAlertAction(title: "Ok", style: .default, handler: { (ok) in
                let createUser = CreateUserManagerImpl()
                
                CreateUserInteractorImpl(createUserManager: createUser).execute(name: name!, birthdate: birthdate, completion: { (message) in
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
