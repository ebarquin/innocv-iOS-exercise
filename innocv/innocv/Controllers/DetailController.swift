
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
            let updateUser = UpdateUserManagerImpl()
            UpdateUserInteractorImpl(updateUserManager: updateUser).execute(id: user.id!, name: user.name!, birthdate: datePicker.date)
        }
        
        
    }
    
}
