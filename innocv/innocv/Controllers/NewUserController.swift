
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
            //TODO: Implement warning
        } else {
            //TODO: Create Interactor
            let createUser = CreateUserManagerImpl()
            CreateUserInteractorImpl(createUserManager: createUser).execute(name: name!, birthdate: birthdate)
        }

    }
    
    
}
