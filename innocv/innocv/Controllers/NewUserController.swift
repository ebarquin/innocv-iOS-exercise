
import UIKit

class NewUserController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userBirthdate: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()    
        
    }

    @IBAction func createUser(_ sender: Any) {
        if userName.text == "" {
            //TODO: Implement warning
        } else {
            //TODO: Create Interactor
        }

    }
    
    
}
