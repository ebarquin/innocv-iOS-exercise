
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
            let alertNoData = UIAlertController(title: alertCreateNoDataTitle, message: alertCreateNoDataMessage, preferredStyle: .alert)
            let cancel = UIAlertAction(title: alertOK, style: .cancel, handler: nil)
            alertNoData.addAction(cancel)
            self.present(alertNoData, animated: true, completion: nil)
        } else {
            
            
            let alertInsert = UIAlertController(title: alertInsertTitle, message: alertInsertMessage, preferredStyle: .alert)
            let cancel = UIAlertAction(title: alertCancel, style: .cancel, handler: nil)
            let ok = UIAlertAction(title: alertOK, style: .default, handler: { (ok) in
                let createUser = CreateUserManagerImpl()
                
                CreateUserInteractorImpl(createUserManager: createUser).execute(name: name!, birthdate: birthdate)
                self.navigationController?.popViewController(animated: true)
                })
            
                
            alertInsert.addAction(ok)
            alertInsert.addAction(cancel)
            self.present(alertInsert, animated: true, completion: nil)
            
        }

    }
    
    
}
