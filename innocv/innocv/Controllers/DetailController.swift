
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
        
    


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
